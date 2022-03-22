object Frm_COM02: TFrm_COM02
  Left = 0
  Top = 363
  Caption = 'COM02'
  ClientHeight = 496
  ClientWidth = 712
  Color = clBtnFace
  Constraints.MinHeight = 523
  Constraints.MinWidth = 728
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  Position = poMainFormCenter
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnHide = FormHide
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 712
    Height = 496
    Align = alClient
    BevelOuter = bvNone
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 0
    DesignSize = (
      712
      496)
    object cxButton7: TcxButton
      Left = 656
      Top = 0
      Width = 58
      Height = 23
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #45803#44592
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = True
      TabOrder = 0
      OnClick = cxButton7Click
    end
    object pnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 712
      Height = 33
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  '#44592#49324' : '#54861#44600#46041'(222*W122212) [010-0000-0000]'
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
        712
        33)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 712
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = False
      end
      object btnClose: TcxButton
        Left = 676
        Top = 6
        Width = 32
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
        OnClick = btnCloseClick
      end
      object cxLabel11: TcxLabel
        Left = 610
        Top = 5
        Caption = #44592#49324#49324#48264
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Visible = False
      end
      object cxLabel12: TcxLabel
        Left = 554
        Top = 5
        Caption = #51648#49324#53076#46300
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Visible = False
      end
      object cxLabel13: TcxLabel
        Left = 462
        Top = 5
        Caption = #44592#49324#55092#45824#54256#48264#54840
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Visible = False
      end
      object cxLabel14: TcxLabel
        Left = 409
        Top = 5
        Caption = #51217#49688#48264#54840
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Visible = False
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 33
      Width = 712
      Height = 157
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        712
        157)
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 3
        Anchors = [akLeft, akTop, akRight]
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 59
        Width = 712
        object cb_Status: TcxComboBox
          Left = 104
          Top = 29
          AutoSize = False
          Properties.Alignment.Vert = taBottomJustify
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51221#49345
            #51221#49345'('#49324#50857#47308#51648#49324#45824#45225')'
            #49688#49688#47308#48120#45225
            #48372#54744#47308#48120#45225
            #49324#50857#47308#48120#45225
            #48372#54744#47308'+'#49324#50857#47308#48120#45225
            #48708#51064#51613
            #44592#53440#51221#51648
            #48376#49324#51221#51648
            #53084#47560#45320#51221#51648)
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
          Text = #51221#49345'('#49324#50857#47308#51648#49324#45824#45225')'
          OnClick = cb_StatusClick
          Height = 23
          Width = 156
        end
        object chk_Attend: TcxCheckBox
          Left = 292
          Top = 6
          Caption = #44592#49324#52636#44540' '#52376#47532
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 1
          Transparent = True
          OnClick = chk_AttendClick
        end
        object chk_Status: TcxCheckBox
          Left = 27
          Top = 32
          Caption = #49345#53468#48320#44221
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 2
          Transparent = True
          OnClick = chk_StatusClick
        end
        object cxButton3: TcxButton
          Left = 469
          Top = 7
          Width = 75
          Height = 46
          Cursor = crHandPoint
          Caption = #51200#51109
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 3
          OnClick = cxButton3Click
        end
        object cxButton4: TcxButton
          Left = 621
          Top = 7
          Width = 75
          Height = 46
          Cursor = crHandPoint
          Caption = #44592#49324#44288#47532
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 4
          OnClick = cxButton4Click
        end
        object cxButton5: TcxButton
          Left = 545
          Top = 7
          Width = 75
          Height = 46
          Cursor = crHandPoint
          Caption = 'SMS'#48156#49569
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 5
          OnClick = cxButton5Click
        end
        object cxLabel9: TcxLabel
          Left = 10
          Top = 8
          AutoSize = False
          Caption = #9758' '#44592#49324#51032' '#51221#49345','#51221#51648#46321#51032' '#49345#53468#47484' '#44288#47532'. '
          ParentColor = False
          ParentFont = False
          Style.Color = 16706522
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = 16744576
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 17
          Width = 276
        end
        object edtMvMemo: TcxTextEdit
          Left = 261
          Top = 29
          AutoSize = False
          Properties.Alignment.Vert = taBottomJustify
          Properties.ImeMode = imSHanguel
          Properties.ReadOnly = True
          Style.Color = cl3DLight
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          Visible = False
          Height = 23
          Width = 201
        end
      end
      object cxGroupBox4: TcxGroupBox
        Left = 0
        Top = 65
        Anchors = [akLeft, akTop, akRight]
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Height = 89
        Width = 712
        object cxButton2: TcxButton
          Left = 555
          Top = 30
          Width = 141
          Height = 51
          Cursor = crHandPoint
          Caption = #52649#51204#54616#44592
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          OnClick = cxButton2Click
        end
        object cxChkPubCashOut: TcxCheckBox
          Left = 198
          Top = 6
          Caption = #44277#50857#52880#49884#52636#44552
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 1
          Transparent = True
          OnClick = cxChkPubCashOutClick
        end
        object cxGroupBox2: TcxGroupBox
          Left = 13
          Top = 58
          Alignment = alLeftCenter
          ParentBackground = False
          ParentColor = False
          Style.Color = 8453888
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Transparent = True
          Height = 23
          Width = 203
          object cxRadioButton3: TcxRadioButton
            Left = 69
            Top = 3
            Width = 65
            Height = 17
            Caption = #47924#53685#51109
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = cxRadioButton3Click
            LookAndFeel.SkinName = 'Sharp'
            Transparent = True
          end
          object cxRadioButton4: TcxRadioButton
            Left = 8
            Top = 3
            Width = 48
            Height = 17
            Caption = #54788#44552
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = True
            OnClick = cxRadioButton3Click
            LookAndFeel.SkinName = 'Sharp'
            Transparent = True
          end
          object cxRadioButton5: TcxRadioButton
            Left = 134
            Top = 3
            Width = 65
            Height = 17
            Caption = #44592#53440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = cxRadioButton3Click
            LookAndFeel.SkinName = 'Sharp'
            Transparent = True
          end
        end
        object cxGroupBox3: TcxGroupBox
          Left = 13
          Top = 31
          Alignment = alLeftCenter
          ParentBackground = False
          ParentColor = False
          Style.Color = 8453888
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.BorderColor = 8679672
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Transparent = True
          Height = 23
          Width = 203
          object cxRadioButton1: TcxRadioButton
            Left = 8
            Top = 3
            Width = 49
            Height = 17
            Caption = #51077#44552
            Checked = True
            Color = 13623806
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            TabStop = True
            OnClick = cxRadioButton1Click
            LookAndFeel.SkinName = 'Sharp'
            Transparent = True
          end
          object cxRadioButton2: TcxRadioButton
            Left = 69
            Top = 3
            Width = 49
            Height = 17
            Caption = #52636#44552
            Color = 13623806
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 1
            OnClick = cxRadioButton2Click
            LookAndFeel.SkinName = 'Sharp'
            Transparent = True
          end
          object cxRadioButton6: TcxRadioButton
            Left = 134
            Top = 2
            Width = 64
            Height = 17
            Hint = 
              #49440#51077#44552' '#44592#45733#51060#46976'?'#13#10#13#10#50808#49345#44284' '#44057#51008' '#44592#45733#51004#47196' '#44592#51316#50640#45716' '#44592#49324#50640#44172' '#49440#52649#51204#49884' '#46384#47196' '#47700#47784#54980' '#52264#44048#54664#45912' '#51089#50629#51012#13#10#51088#46041#51004#47196' '#45796#51020 +
              #45216' 10'#49884#50640' '#44592#49324' '#52880#49772#50640#49436' '#49440#52649#51204' '#44552#50529#47564#53372' '#52264#44048#54616#45716' '#44592#45733#51077#45768#45796'.'
            Caption = #49440#51077#44552
            Color = 13623806
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = cxRadioButton6Click
            LookAndFeel.SkinName = 'Sharp'
            Transparent = True
          end
        end
        object cxLabel19: TcxLabel
          Left = 468
          Top = 8
          Hint = 'Color'
          AutoSize = False
          Caption = #9660' '#47560#50864#49828#49828#53356#47204#49884' 1'#47564#50896#45800#50948#47196' '#51613#44032', '#44048#49548
          ParentColor = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = 16744576
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.TextColor = clBlue
          Style.IsFontAssigned = True
          Transparent = True
          Height = 17
          Width = 232
        end
        object cxLabel7: TcxLabel
          Left = 10
          Top = 8
          Caption = #9758' '#44592#49324#52880#49884' '#51077'/'#52636#44552' '#44288#47532'.'
          ParentColor = False
          ParentFont = False
          Style.Color = 13623806
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = 3233192
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object ed_Cash: TcxCurrencyEdit
          Left = 285
          Top = 30
          TabStop = False
          AutoSize = False
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taBottomJustify
          Properties.AutoSelect = False
          Properties.DisplayFormat = ',0;-,0'
          Properties.ReadOnly = True
          Style.Color = 13623806
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 6
          Height = 24
          Width = 100
        end
        object ed_ChargeCash: TcxSpinEdit
          Left = 453
          Top = 30
          AutoSize = False
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taBottomJustify
          Properties.AssignedValues.MinValue = True
          Properties.DisplayFormat = ',0'
          Properties.Increment = 10000.000000000000000000
          Properties.LargeIncrement = 10000.000000000000000000
          Properties.ValueType = vtInt
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = [fsBold]
          Style.HotTrack = True
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          Style.Shadow = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 7
          OnKeyDown = ed_ChargeCashKeyDown
          OnKeyUp = ed_ChargeCashKeyUp
          Height = 24
          Width = 97
        end
        object ed_memo: TcxTextEdit
          Left = 298
          Top = 58
          AutoSize = False
          ParentFont = False
          Properties.Alignment.Vert = taBottomJustify
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 8
          OnKeyUp = ed_memoKeyUp
          Height = 24
          Width = 252
        end
        object cxLabel4: TcxLabel
          Left = 218
          Top = 30
          Hint = 'Color'
          AutoSize = False
          Caption = #52880#49884#51092#50529
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
          Style.TextColor = 4227327
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          Height = 24
          Width = 70
          AnchorX = 253
          AnchorY = 42
        end
        object cxLabel1: TcxLabel
          Left = 217
          Top = 58
          Hint = 'Color'
          AutoSize = False
          Caption = #47700'     '#47784
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Color = clBtnFace
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = 4227327
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          Height = 24
          Width = 84
          AnchorX = 259
          AnchorY = 70
        end
        object cxLabel3: TcxLabel
          Left = 389
          Top = 30
          Hint = 'Color'
          AutoSize = False
          Caption = #51077#52636#44552#50529
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
          Style.TextColor = 4227327
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          Height = 24
          Width = 67
          AnchorX = 423
          AnchorY = 42
        end
        object cb_Gubun: TcxComboBox
          Left = 217
          Top = 58
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #48372#54744#47308#52264#44048
            #52636#44540#48708#52264#44048
            #44284#53468#47308#52264#44048
            #54532'/'#49324#52264#44048)
          Properties.OnChange = cb_GubunPropertiesChange
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 12
          Text = #48372#54744#47308#52264#44048
          Visible = False
          OnClick = cb_StatusClick
          Height = 24
          Width = 84
        end
        object cxChkMinusZero: TcxCheckBox
          Left = 304
          Top = 6
          Caption = '(-)'#52880#49884' 0'#50896#52488#44592#54868
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 13
          Transparent = True
          OnClick = cxChkMinusZeroClick
        end
        object btnMinusZeroSet: TcxButton
          Left = 437
          Top = 4
          Width = 24
          Height = 22
          Cursor = crHandPoint
          Hint = '(-)'#52880#49772' 0'#50896#52488#44592#54868' '#47700#47784' '#49444#51221
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E0000000000000000000000000000000000000000
            0000000000002B1D084088571ADF905B1DFF23170637231706378F5B1DFE955D
            1DFF37240A520000000000000000000000000000000000000000000000000000
            0000000000007A4D17D3DF9E51FFDE9C4BFF774B16FF754916FFDE9B4BFFDF9E
            51FF7C4E18D70000000000000000000000000000000000000000211605375435
            0DC23F2909AE5A370FFDE0A255FFE0A255FFDC9949FFDB9746FFE1A357FFE0A0
            52FF58360FFF3F2809A753340DBF2116053800000000030201066F4714E1E9AF
            68FFDE9C4BFFDA9543FFF3C382FFFFDEAAFFFFEFC0FFFFEFC2FFFFE0ADFFF5C5
            86FFDA9544FFDE9B4BFFE9AF68FF6F4714E103020106120C03228A571BFFFAD1
            97FFFAD197FFFED79DFFFFE6B4FFF6C688FFE4A85FFFE4A85FFFF7CA8DFFFFE9
            BAFFFFD8A2FFFCD298FFFAD197FF8A571BFF120C0322000000001D130445CB81
            2AFFFED79EFFFFD8A2FFDF9E50FF643D11FF9B611EFF9B611EFF684112FFE0A2
            55FFFFDEAAFFFFD8A2FFCB812AFF1D130445000000004A310D8350320DCCE2A6
            5AFFFCD298FFE7AD64FF673F12FFA46720FF0000000000000000A46720FF7549
            16FFE8AE67FFFCD399FFE2A65AFF50320DCC4A310D83D1842CFFFFDEABFFFFDA
            A4FFF1BE7BFFD28730FF905B1DFF00000000000000000000000000000000A467
            20FFD1852DFFEEB975FFFFD9A3FFFFDEABFFD1842CFFD58D39FFFFE4B1FFFFE2
            AEFFE8AE67FFD0842BFFAB6C23FF00000000000000000000000000000000AD6E
            23FFC07A27FFE6AB61FFFFE0ADFFFFE4B1FFD58D39FF583A1083784C16CCF3C3
            84FFEDB671FFD58D37FFA56820FF9B611EFF00000000000000009B611EFF9B61
            1EFFCB812AFFE9B26AFFF5C586FF784C16CC583A10830000000031210945E6AB
            61FFFFDEA7FFD0842BFFC47D28FFC47D28FF9B611EFF9B611EFFB77525FFB472
            25FFC07A27FFFFDEA7FFE6AB61FF31210945000000001D140622DC9949FFFFEF
            C2FFFFF9D0FFF7CA8DFFB27024FFA66921FFA2661FFF9E631FFF9D631FFFA76A
            21FFF6C98AFFFFF9D0FFFFEFC2FFDC9949FF1D14062205040106C0853AE0FFE4
            B4FFFDD49CFFFFE0ACFFFFE2AFFFD58D37FFC67E2AFFC47D28FFD48C35FFFFE2
            AEFFFFE0ACFFFDD49CFFFFE4B4FFC0853AE0050401060000000032230D37A76E
            28C45D3D1272A96F27C8FFF9D0FFFFF9D0FFFFF3C6FFFFF3C6FFFFF9D0FFFFF9
            D0FFA96F27C85D3D1272A76E28C432230D370000000000000000000000000000
            000000000000A2763BB4FFF9D0FFFFF9CFFFC9914AE4C9914AE4FFF9CFFFFFF9
            D0FFA2763BB40000000000000000000000000000000000000000000000000000
            00000000000049371B4FD5A25EE9E9AF68FF150F0617140E0616E9AF68FFCD9B
            5ADF48351A4D00000000000000000000000000000000}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 14
          OnClick = btnMinusZeroSetClick
        end
        object grpSetMinusZeroSet: TcxGroupBox
          Left = 642
          Top = 39
          Caption = '0'#50896' '#52488#44592#54868' '#52404#53356#49884' '#51648#51221#54620' '#47700#47784#47196' '#51088#46041' '#51077#47141' '
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 15
          Visible = False
          Height = 52
          Width = 310
          object Shape11: TShape
            Left = 3
            Top = 17
            Width = 304
            Height = 26
            Align = alClient
            Brush.Color = 13285815
            Pen.Color = 13285815
            ExplicitLeft = 6
            ExplicitTop = 20
            ExplicitHeight = 25
          end
          object cxEdtMinusZero: TcxTextEdit
            Left = 3
            Top = 19
            AutoSize = False
            ParentFont = False
            Properties.Alignment.Vert = taBottomJustify
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #47569#51008' '#44256#46357
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnKeyUp = ed_memoKeyUp
            Height = 24
            Width = 227
          end
          object cxButton10: TcxButton
            Left = 231
            Top = 19
            Width = 37
            Height = 24
            Cursor = crHandPoint
            Caption = #51200#51109
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 1
            OnClick = cxButton10Click
          end
          object cxButton11: TcxButton
            Left = 270
            Top = 19
            Width = 37
            Height = 24
            Cursor = crHandPoint
            Caption = #45803#44592
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 2
            OnClick = cxButton11Click
          end
        end
      end
    end
    object cxGroupBox5: TcxGroupBox
      Left = 0
      Top = 190
      Align = alClient
      Caption = ' '#9758' '#44592#49324#51032' '#50868#54665#45236#50669', '#52649#51204#45236#50669', '#52712#49548#48268#44552#50868#54665#45236#50669' '#46321#51032' '#54788#54889' '#51312#54924'.'
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Height = 306
      Width = 712
      object cxPageControl1: TcxPageControl
        Left = 3
        Top = 17
        Width = 706
        Height = 282
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Properties.ActivePage = cxTabSheet2
        Properties.CustomButtons.Buttons = <>
        Properties.Style = 11
        Properties.TabHeight = 25
        Properties.TabSlants.Positions = [spRight]
        LookAndFeel.SkinName = 'Office2010Silver'
        OnChange = cxPageControl1Change
        ClientRectBottom = 276
        ClientRectLeft = 2
        ClientRectRight = 700
        ClientRectTop = 34
        object cxTabSheet1: TcxTabSheet
          Caption = #50868#54665#45236#50669
          ImageIndex = 0
          object Shape5: TShape
            Left = 0
            Top = 34
            Width = 698
            Height = 2
            Align = alTop
            Brush.Style = bsClear
            Pen.Style = psClear
            ExplicitLeft = -6
            ExplicitTop = 23
            ExplicitWidth = 305
          end
          object cxGridWkConnect: TcxGrid
            Left = 0
            Top = 36
            Width = 698
            Height = 206
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            Constraints.MinHeight = 20
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            PopupMenu = PopupMenu1
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            object twWkOrderList: TcxGridDBTableView
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
              FilterBox.CustomizeDialog = False
              ScrollbarAnnotations.CustomAnnotations = <>
              OnCellDblClick = twWkOrderListCellDblClick
              DataController.DataModeController.SmartRefresh = True
              DataController.Filter.Options = [fcoShowOperatorDescription, fcoSoftNull]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,'
                  Kind = skCount
                  Column = twWkOrderListColumn2
                end
                item
                  Format = '#,'
                  Kind = skSum
                  Column = twWkOrderListColumn7
                end>
              DataController.Summary.SummaryGroups = <
                item
                  Links = <>
                  SummaryItems = <
                    item
                    end>
                end>
              Filtering.MRUItemsList = False
              Filtering.ColumnMRUItemsList = False
              Filtering.ColumnMRUItemsListCount = 0
              OptionsBehavior.CellHints = True
              OptionsBehavior.CopyCaptionsToClipboard = False
              OptionsBehavior.CopyPreviewToClipboard = False
              OptionsBehavior.ExpandMasterRowOnDblClick = False
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnMoving = False
              OptionsSelection.CellSelect = False
              OptionsView.NoDataToDisplayInfoText = '  '
              OptionsView.DataRowHeight = 22
              OptionsView.Footer = True
              OptionsView.FooterAutoHeight = True
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 23
              Styles.Background = Frm_Main.cxStyleGridBackColor
              object twWkOrderListColumn1: TcxGridDBColumn
                DataBinding.FieldName = #44256#44061#48264#54840
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 79
              end
              object twWkOrderListColumn2: TcxGridDBColumn
                DataBinding.FieldName = #49345#53468
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Images = Frm_Main.cximgOrderStatus
                Properties.Items = <
                  item
                    Description = #48176#52264
                    ImageIndex = 1
                    Value = '1'
                  end
                  item
                    Description = #44053#51228
                    ImageIndex = 3
                    Value = '3'
                  end
                  item
                    Description = #50756#47308
                    ImageIndex = 2
                    Value = '2'
                  end
                  item
                    Description = #52712#49548
                    ImageIndex = 7
                    Value = '8'
                  end
                  item
                    Description = #48176#52264
                    ImageIndex = 1
                    Value = 'B'
                  end
                  item
                    Description = #50868#54665
                    ImageIndex = 19
                    Value = 'D'
                  end>
                FooterAlignmentHorz = taRightJustify
                HeaderAlignmentHorz = taCenter
                Width = 42
              end
              object twWkOrderListColumn3: TcxGridDBColumn
                DataBinding.FieldName = #48176#52264
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 100
              end
              object twWkOrderListColumn4: TcxGridDBColumn
                DataBinding.FieldName = #50756#47308
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 100
              end
              object twWkOrderListColumn5: TcxGridDBColumn
                DataBinding.FieldName = #52636#48156#51648
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 73
              end
              object twWkOrderListColumn6: TcxGridDBColumn
                DataBinding.FieldName = #46020#52265#51648
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 65
              end
              object twWkOrderListColumn7: TcxGridDBColumn
                DataBinding.FieldName = #50836#44552
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = '\,0;-\,0'
                Properties.ReadOnly = True
                FooterAlignmentHorz = taRightJustify
                HeaderAlignmentHorz = taCenter
                Width = 59
              end
              object twWkOrderListColumn8: TcxGridDBColumn
                DataBinding.FieldName = #45824#54364#48264#54840
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 65
              end
              object twWkOrderListColumn9: TcxGridDBColumn
                DataBinding.FieldName = #48156#51452#51648#49324
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 116
              end
              object twWkOrderListColumn10: TcxGridDBColumn
                DataBinding.FieldName = #44256#44061#47749
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 79
              end
              object twWkOrderListColumn11: TcxGridDBColumn
                DataBinding.FieldName = #44256#44061#44396#48516
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 54
              end
              object twWkOrderListColumn12: TcxGridDBColumn
                DataBinding.FieldName = #44208#51116
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 43
              end
              object twWkOrderListColumn13: TcxGridDBColumn
                DataBinding.FieldName = #51201#50836
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 105
              end
              object twWkOrderListColumn14: TcxGridDBColumn
                DataBinding.FieldName = #49345#45812#50896
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 87
              end
              object twWkOrderListColumn15: TcxGridDBColumn
                DataBinding.FieldName = #48277#51064#47749
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 76
              end
              object twWkOrderListColumn20: TcxGridDBColumn
                DataBinding.FieldName = #48277#51064#48512#49436#47749
                HeaderAlignmentHorz = taCenter
                Width = 65
              end
              object twWkOrderListColumn16: TcxGridDBColumn
                DataBinding.FieldName = #51217#49688#48264#54840
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
              end
              object twWkOrderListColumn17: TcxGridDBColumn
                DataBinding.FieldName = #51217#49688#49884#44036
                Visible = False
                HeaderAlignmentHorz = taCenter
              end
              object twWkOrderListColumn18: TcxGridDBColumn
                DataBinding.FieldName = #53084#49468#53552#53076#46300
                Visible = False
                HeaderAlignmentHorz = taCenter
              end
              object twWkOrderListColumn19: TcxGridDBColumn
                DataBinding.FieldName = #51648#49324#53076#46300
                Visible = False
                HeaderAlignmentHorz = taCenter
              end
            end
            object cxGridLevel4: TcxGridLevel
              GridView = twWkOrderList
            end
          end
          object cxGroupBox6: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            Style.BorderStyle = ebsNone
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Height = 34
            Width = 698
            object Shape3: TShape
              Left = 20
              Top = 6
              Width = 316
              Height = 22
              Pen.Color = 13353605
              Shape = stRoundRect
            end
            object btnRunXls: TcxButton
              Left = 558
              Top = 5
              Width = 66
              Height = 24
              Cursor = crHandPoint
              Caption = #50641#49472#45796#50868
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              TabOrder = 0
              OnClick = btnRunXlsClick
            end
            object chk_before: TcxCheckBox
              Left = 340
              Top = 9
              Caption = #44284#44144#45236#50669
              ParentBackground = False
              ParentColor = False
              Style.Color = 16444898
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 1
              Transparent = True
              OnClick = chk_beforeClick
            end
            object cxButton6: TcxButton
              Left = 494
              Top = 5
              Width = 60
              Height = 24
              Cursor = crHandPoint
              Caption = #51312#54924
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              TabOrder = 2
              OnClick = cxButton6Click
            end
            object cxLabel10: TcxLabel
              Left = 184
              Top = 8
              AutoSize = False
              Caption = '~'
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsNone
              Style.Color = 10932991
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = #44404#47548
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              Height = 19
              Width = 17
              AnchorX = 193
              AnchorY = 18
            end
            object de_edDate: TcxDateEdit
              Left = 202
              Top = 5
              AutoSize = False
              Enabled = False
              ParentShowHint = False
              PopupMenu = pop_date2
              Properties.Alignment.Vert = taBottomJustify
              Properties.DateButtons = [btnToday]
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
              TabOrder = 4
              OnExit = de_stDateExit
              Height = 24
              Width = 110
            end
            object de_stDate: TcxDateEdit
              Left = 72
              Top = 5
              AutoSize = False
              Enabled = False
              ParentShowHint = False
              PopupMenu = pop_date2
              Properties.Alignment.Vert = taBottomJustify
              Properties.DateButtons = [btnToday]
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
              TabOrder = 5
              OnExit = de_stDateExit
              Height = 24
              Width = 110
            end
            object RbButton1: TcxButton
              Left = 313
              Top = 6
              Width = 23
              Height = 22
              Cursor = crHandPoint
              Enabled = False
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
              TabOrder = 6
              OnMouseDown = RbButton1MouseDown
            end
            object cxLabel2: TcxLabel
              Left = 25
              Top = 7
              Caption = #44592'    '#44036
              ParentColor = False
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #47569#51008' '#44256#46357
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = False
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              AnchorX = 47
              AnchorY = 17
            end
            object cbStatesView: TcxComboBox
              Left = 431
              Top = 7
              AutoSize = False
              ParentFont = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                #51204#52404
                #50756#47308
                #52712#49548)
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #47569#51008' '#44256#46357
              Style.Font.Style = []
              Style.LookAndFeel.SkinName = 'Sharp'
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 8
              Text = #51204#52404
              Height = 21
              Width = 49
            end
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = #52649#51204#45236#50669
          ImageIndex = 1
          object Shape4: TShape
            Left = 0
            Top = 34
            Width = 698
            Height = 2
            Align = alTop
            Brush.Style = bsClear
            Pen.Style = psClear
            ExplicitLeft = -6
            ExplicitTop = 23
            ExplicitWidth = 305
          end
          object cxGrid1: TcxGrid
            Left = 0
            Top = 36
            Width = 698
            Height = 206
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            Constraints.MinHeight = 20
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            object tvwkCashList: TcxGridDBTableView
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
              FilterBox.CustomizeDialog = False
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.DataModeController.SmartRefresh = True
              DataController.Filter.Options = [fcoShowOperatorDescription, fcoSoftNull]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <
                item
                  Links = <>
                  SummaryItems = <
                    item
                    end>
                end>
              Filtering.MRUItemsList = False
              Filtering.ColumnMRUItemsList = False
              Filtering.ColumnMRUItemsListCount = 0
              OptionsBehavior.CellHints = True
              OptionsBehavior.CopyCaptionsToClipboard = False
              OptionsBehavior.CopyPreviewToClipboard = False
              OptionsBehavior.ExpandMasterRowOnDblClick = False
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnMoving = False
              OptionsSelection.CellSelect = False
              OptionsView.NoDataToDisplayInfoText = '  '
              OptionsView.DataRowHeight = 22
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 23
              Styles.Background = Frm_Main.cxStyleGridBackColor
              object cxGridDBColumn1: TcxGridDBColumn
                DataBinding.FieldName = 'No'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 29
              end
              object cxGridDBColumn2: TcxGridDBColumn
                DataBinding.FieldName = #45216#51676
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 113
              end
              object cxGridDBColumn3: TcxGridDBColumn
                DataBinding.FieldName = #51217#49688#48264#54840'('#51008#54665#51216')'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 99
              end
              object cxGridDBColumn4: TcxGridDBColumn
                DataBinding.FieldName = #44396#48516
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 76
              end
              object cxGridDBColumn5: TcxGridDBColumn
                Caption = #51077#52636#44552'('#44277#50857')'
                DataBinding.FieldName = #51077#52636#44552#50529'('#44277#50857')'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                Properties.PasswordChar = '*'
                Properties.ReadOnly = True
                HeaderAlignmentHorz = taCenter
                Width = 80
              end
              object cxGridDBColumn6: TcxGridDBColumn
                Caption = #51077#52636#44552'('#51088#52404')'
                DataBinding.FieldName = #51077#52636#44552#50529'('#51088#52404')'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                Properties.PasswordChar = '*'
                Properties.ReadOnly = True
                HeaderAlignmentHorz = taCenter
                Width = 75
              end
              object cxGridDBColumn7: TcxGridDBColumn
                DataBinding.FieldName = #51092#50529
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                Properties.PasswordChar = '*'
                Properties.ReadOnly = True
                HeaderAlignmentHorz = taCenter
                Width = 62
              end
              object cxGridDBColumn8: TcxGridDBColumn
                DataBinding.FieldName = #51077#47141#51088
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 58
              end
              object cxGridDBColumn9: TcxGridDBColumn
                DataBinding.FieldName = #47700#47784
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 119
              end
              object tvwkCashListColumn1: TcxGridDBColumn
                DataBinding.FieldName = #52880#49772#49692#49436
                Visible = False
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = tvwkCashList
            end
          end
          object cxGroupBox7: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            Style.BorderStyle = ebsNone
            TabOrder = 1
            Height = 34
            Width = 698
            object Shape6: TShape
              Left = 20
              Top = 6
              Width = 316
              Height = 22
              Pen.Color = 13353605
              Shape = stRoundRect
            end
            object cxLabel5: TcxLabel
              Left = 25
              Top = 7
              Caption = #44592'    '#44036
              ParentColor = False
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #47569#51008' '#44256#46357
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = False
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              AnchorX = 47
              AnchorY = 17
            end
            object btnFillXls: TcxButton
              Left = 417
              Top = 4
              Width = 66
              Height = 25
              Cursor = crHandPoint
              Caption = #50641#49472#45796#50868
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              TabOrder = 1
              OnClick = btnFillXlsClick
            end
            object cxButton1: TcxButton
              Left = 313
              Top = 6
              Width = 23
              Height = 22
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
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #44404#47548
              Font.Style = []
              ParentFont = False
              OnMouseDown = RbButton1MouseDown
            end
            object cxButton8: TcxButton
              Left = 348
              Top = 5
              Width = 63
              Height = 25
              Cursor = crHandPoint
              Caption = #51312#54924
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              TabOrder = 3
              OnClick = cxButton6Click
            end
            object cxLabel17: TcxLabel
              Left = 184
              Top = 8
              AutoSize = False
              Caption = '~'
              ParentColor = False
              Style.BorderStyle = ebsNone
              Style.Color = 10932991
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              Height = 19
              Width = 17
              AnchorX = 193
              AnchorY = 18
            end
            object dtedCash: TcxDateEdit
              Left = 202
              Top = 5
              AutoSize = False
              ParentShowHint = False
              PopupMenu = pop_date2
              Properties.Alignment.Vert = taBottomJustify
              Properties.DateButtons = [btnToday]
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
              TabOrder = 5
              OnExit = de_stDateExit
              Height = 24
              Width = 110
            end
            object dtstCash: TcxDateEdit
              Left = 72
              Top = 5
              AutoSize = False
              ParentShowHint = False
              PopupMenu = pop_date2
              Properties.Alignment.Vert = taBottomJustify
              Properties.DateButtons = [btnToday]
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
              TabOrder = 6
              OnExit = de_stDateExit
              Height = 24
              Width = 110
            end
          end
        end
        object cxTabSheet3: TcxTabSheet
          Caption = #52712#49548#48268#44552#50868#54665#45236#50669
          ImageIndex = 2
          object Shape9: TShape
            Left = 0
            Top = 34
            Width = 698
            Height = 2
            Align = alTop
            Brush.Style = bsClear
            Pen.Style = psClear
            ExplicitTop = 42
            ExplicitWidth = 706
          end
          object cxGridCancel: TcxGrid
            Left = 0
            Top = 36
            Width = 698
            Height = 206
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            Constraints.MinHeight = 20
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            PopupMenu = PopupMenu1
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            object cxViewCancel: TcxGridDBTableView
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
              FilterBox.CustomizeDialog = False
              ScrollbarAnnotations.CustomAnnotations = <>
              OnCellDblClick = twWkOrderListCellDblClick
              DataController.DataModeController.SmartRefresh = True
              DataController.Filter.Options = [fcoShowOperatorDescription, fcoSoftNull]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <
                item
                  Links = <>
                  SummaryItems = <
                    item
                    end>
                end>
              Filtering.MRUItemsList = False
              Filtering.ColumnMRUItemsList = False
              Filtering.ColumnMRUItemsListCount = 0
              OptionsBehavior.CellHints = True
              OptionsBehavior.CopyCaptionsToClipboard = False
              OptionsBehavior.CopyPreviewToClipboard = False
              OptionsBehavior.ExpandMasterRowOnDblClick = False
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnMoving = False
              OptionsSelection.CellSelect = False
              OptionsView.NoDataToDisplayInfoText = '  '
              OptionsView.DataRowHeight = 22
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 23
              Styles.Background = Frm_Main.cxStyleGridBackColor
              object cxGridDBColumn10: TcxGridDBColumn
                DataBinding.FieldName = #48156#49373#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 100
              end
              object cxGridDBColumn11: TcxGridDBColumn
                DataBinding.FieldName = #52712#49548#48268#44552
                PropertiesClassName = 'TcxCurrencyEditProperties'
                HeaderAlignmentHorz = taCenter
                Width = 67
              end
              object cxGridDBColumn12: TcxGridDBColumn
                DataBinding.FieldName = #51217#49688#48264#54840
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 74
              end
              object cxGridDBColumn13: TcxGridDBColumn
                DataBinding.FieldName = #49345#53468
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 61
              end
              object cxGridDBColumn14: TcxGridDBColumn
                DataBinding.FieldName = #51217#49688#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 100
              end
              object cxGridDBColumn15: TcxGridDBColumn
                DataBinding.FieldName = #52636#48156#51648
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 65
              end
              object cxGridDBColumn16: TcxGridDBColumn
                DataBinding.FieldName = #46020#52265#51648
                PropertiesClassName = 'TcxLabelProperties'
                HeaderAlignmentHorz = taCenter
                Width = 59
              end
              object cxGridDBColumn17: TcxGridDBColumn
                DataBinding.FieldName = #50836#44552
                PropertiesClassName = 'TcxCurrencyEditProperties'
                HeaderAlignmentHorz = taCenter
                Width = 65
              end
              object cxGridDBColumn18: TcxGridDBColumn
                DataBinding.FieldName = #45824#54364#48264#54840
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 79
              end
              object cxGridDBColumn19: TcxGridDBColumn
                DataBinding.FieldName = #48156#51452#51648#49324
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 58
              end
              object cxGridDBColumn20: TcxGridDBColumn
                DataBinding.FieldName = #49345#54889#49892#48264#54840
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 72
              end
              object cxGridDBColumn23: TcxGridDBColumn
                DataBinding.FieldName = #44208#51116
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 41
              end
              object cxGridDBColumn24: TcxGridDBColumn
                DataBinding.FieldName = #49345#45812#50896
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 76
              end
              object cxGridDBColumn25: TcxGridDBColumn
                DataBinding.FieldName = #48277#51064#47749
                PropertiesClassName = 'TcxLabelProperties'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBColumn26: TcxGridDBColumn
                DataBinding.FieldName = #48277#51064#48512#49436
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
              end
              object cxViewCancelColumn1: TcxGridDBColumn
                DataBinding.FieldName = #51648#49324#53076#46300
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
              end
              object cxViewCancelColumn2: TcxGridDBColumn
                DataBinding.FieldName = #53084#49468#53552#53076#46300
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
              end
            end
            object cxLevelCancel: TcxGridLevel
              GridView = cxViewCancel
            end
          end
          object cxGroupBox8: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            Style.BorderStyle = ebsNone
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Height = 34
            Width = 698
            object Shape7: TShape
              Left = 20
              Top = 6
              Width = 316
              Height = 22
              Pen.Color = 13353605
              Shape = stRoundRect
            end
            object cxLabel6: TcxLabel
              Left = 25
              Top = 7
              Caption = #44592'    '#44036
              ParentColor = False
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #47569#51008' '#44256#46357
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = False
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              AnchorX = 47
              AnchorY = 17
            end
            object btnCancelDate: TcxButton
              Left = 313
              Top = 6
              Width = 23
              Height = 22
              Cursor = crHandPoint
              Enabled = False
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
              TabOrder = 1
              OnMouseDown = RbButton1MouseDown
            end
            object btnCancelSearch: TcxButton
              Left = 427
              Top = 5
              Width = 60
              Height = 24
              Cursor = crHandPoint
              Caption = #51312#54924
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              TabOrder = 2
              OnClick = cxButton6Click
            end
            object btnCancelXls: TcxButton
              Left = 491
              Top = 5
              Width = 66
              Height = 24
              Cursor = crHandPoint
              Caption = #50641#49472#45796#50868
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              TabOrder = 3
              OnClick = btnCancelXlsClick
            end
            object chkCancelBefore: TcxCheckBox
              Left = 346
              Top = 9
              Caption = #44284#44144#45236#50669
              ParentBackground = False
              ParentColor = False
              Style.Color = 16444898
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 4
              Transparent = True
              OnClick = chkCancelBeforeClick
            end
            object cxLabel22: TcxLabel
              Left = 184
              Top = 9
              AutoSize = False
              Caption = '~'
              ParentColor = False
              Style.BorderStyle = ebsNone
              Style.Color = 10932991
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              Height = 19
              Width = 17
              AnchorX = 193
              AnchorY = 19
            end
            object dtCancelFrom: TcxDateEdit
              Left = 75
              Top = 5
              AutoSize = False
              Enabled = False
              ParentShowHint = False
              PopupMenu = pop_date2
              Properties.Alignment.Vert = taBottomJustify
              Properties.DateButtons = [btnToday]
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
              TabOrder = 6
              Height = 24
              Width = 110
            end
            object dtCancelTo: TcxDateEdit
              Left = 202
              Top = 5
              AutoSize = False
              Enabled = False
              ParentShowHint = False
              PopupMenu = pop_date2
              Properties.Alignment.Vert = taBottomJustify
              Properties.DateButtons = [btnToday]
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
              TabOrder = 7
              Height = 24
              Width = 110
            end
          end
        end
        object cxTabSheet4: TcxTabSheet
          Caption = 'M'#52880#49884#52649#51204#45236#50669
          ImageIndex = 3
          object cxGroupBox9: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            Style.BorderStyle = ebsNone
            TabOrder = 0
            Height = 34
            Width = 698
            object Shape10: TShape
              Left = 20
              Top = 6
              Width = 316
              Height = 22
              Pen.Color = 13353605
              Shape = stRoundRect
            end
            object cxLabel8: TcxLabel
              Left = 25
              Top = 7
              Caption = #44592'    '#44036
              ParentColor = False
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #47569#51008' '#44256#46357
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = False
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              AnchorX = 47
              AnchorY = 17
            end
            object cxButton9: TcxButton
              Left = 417
              Top = 4
              Width = 66
              Height = 25
              Cursor = crHandPoint
              Caption = #50641#49472#45796#50868
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              TabOrder = 1
              OnClick = btnFillXlsClick
            end
            object cxButton12: TcxButton
              Left = 313
              Top = 6
              Width = 23
              Height = 22
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
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #44404#47548
              Font.Style = []
              ParentFont = False
              OnMouseDown = RbButton1MouseDown
            end
            object btn_MCashSchSearch: TcxButton
              Left = 351
              Top = 4
              Width = 63
              Height = 25
              Cursor = crHandPoint
              Caption = #51312#54924
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              TabOrder = 3
              OnClick = btn_MCashSchSearchClick
            end
            object cxLabel15: TcxLabel
              Left = 184
              Top = 8
              AutoSize = False
              Caption = '~'
              ParentColor = False
              Style.BorderStyle = ebsNone
              Style.Color = 10932991
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              Height = 19
              Width = 17
              AnchorX = 193
              AnchorY = 18
            end
            object dt_MCashEnd: TcxDateEdit
              Left = 202
              Top = 5
              AutoSize = False
              ParentShowHint = False
              PopupMenu = pop_date2
              Properties.Alignment.Vert = taBottomJustify
              Properties.DateButtons = [btnToday]
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
              TabOrder = 5
              OnExit = dt_MCashFromExit
              Height = 24
              Width = 110
            end
            object dt_MCashFrom: TcxDateEdit
              Left = 72
              Top = 5
              AutoSize = False
              ParentShowHint = False
              PopupMenu = pop_date2
              Properties.Alignment.Vert = taBottomJustify
              Properties.DateButtons = [btnToday]
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
              TabOrder = 6
              OnExit = dt_MCashFromExit
              Height = 24
              Width = 110
            end
          end
          object cxGrid2: TcxGrid
            Left = 0
            Top = 34
            Width = 698
            Height = 208
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            Constraints.MinHeight = 20
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            LookAndFeel.NativeStyle = False
            object cxGridMCashList: TcxGridDBTableView
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
              FilterBox.CustomizeDialog = False
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.DataModeController.SmartRefresh = True
              DataController.Filter.Options = [fcoShowOperatorDescription, fcoSoftNull]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <
                item
                  Links = <>
                  SummaryItems = <
                    item
                    end>
                end>
              Filtering.MRUItemsList = False
              Filtering.ColumnMRUItemsList = False
              Filtering.ColumnMRUItemsListCount = 0
              OptionsBehavior.CellHints = True
              OptionsBehavior.CopyCaptionsToClipboard = False
              OptionsBehavior.CopyPreviewToClipboard = False
              OptionsBehavior.ExpandMasterRowOnDblClick = False
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnMoving = False
              OptionsSelection.CellSelect = False
              OptionsView.NoDataToDisplayInfoText = '  '
              OptionsView.DataRowHeight = 22
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 23
              Styles.Background = Frm_Main.cxStyleGridBackColor
              object cxGridDBColumn21: TcxGridDBColumn
                DataBinding.FieldName = 'No'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 29
              end
              object cxGridDBColumn22: TcxGridDBColumn
                DataBinding.FieldName = #45216#51676
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 110
              end
              object cxGridDBColumn28: TcxGridDBColumn
                DataBinding.FieldName = #44396#48516
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 62
              end
              object cxGridDBColumn29: TcxGridDBColumn
                DataBinding.FieldName = #51077#52636#44552#50529
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                Properties.PasswordChar = '*'
                Properties.ReadOnly = True
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 80
              end
              object cxGridDBColumn31: TcxGridDBColumn
                DataBinding.FieldName = #51092#50529
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                Properties.PasswordChar = '*'
                Properties.ReadOnly = True
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 62
              end
              object cxGridDBColumn32: TcxGridDBColumn
                DataBinding.FieldName = #51077#47141#51088
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 58
              end
              object cxGridDBColumn33: TcxGridDBColumn
                DataBinding.FieldName = #47700#47784
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 119
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxGridMCashList
            end
          end
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = PopupMenu1Popup
    Left = 244
    Top = 337
    object N1: TMenuItem
      Caption = #53084#51221#48372#49688#51221
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #53084#49345#49464#51060#47141
      OnClick = N2Click
    end
  end
  object pop_date: TPopupMenu
    AutoHotkeys = maManual
    AutoPopup = False
    Left = 172
    Top = 340
    object MenuItem6: TMenuItem
      Caption = #50724#45720
      OnClick = MenuItem1Click
    end
    object MenuItem7: TMenuItem
      Caption = #50612#51228
      OnClick = MenuItem2Click
    end
    object N6: TMenuItem
      Caption = #52572#44540#51068#51452#51068
      OnClick = MenuItem3Click
    end
    object N7: TMenuItem
      Caption = #52572#44540#54620#45804
      OnClick = MenuItem4Click
    end
    object N11: TMenuItem
      Caption = '1'#51068'~'#47568#51068
      OnClick = MenuItem5Click
    end
  end
  object pop_date2: TPopupMenu
    AutoHotkeys = maManual
    Left = 168
    Top = 384
    object MenuItem1: TMenuItem
      Caption = #50724#45720
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = #50612#51228
      OnClick = MenuItem2Click
    end
    object MenuItem3: TMenuItem
      Caption = #52572#44540#51068#51452#51068
      OnClick = MenuItem3Click
    end
    object MenuItem4: TMenuItem
      Caption = #52572#44540#54620#45804
      OnClick = MenuItem4Click
    end
    object MenuItem5: TMenuItem
      Caption = '1'#51068'~'#47568#51068
      OnClick = MenuItem5Click
    end
  end
end

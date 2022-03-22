object Frm_JON01: TFrm_JON01
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Frm_JON01'
  ClientHeight = 684
  ClientWidth = 943
  Color = clBtnFace
  Constraints.MinWidth = 410
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 943
    Height = 684
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    object LblBottom: TLabel
      Left = 0
      Top = 677
      Width = 939
      Height = 3
      Align = alBottom
      AutoSize = False
      Color = 14740970
      ParentColor = False
      Transparent = False
      ExplicitTop = 8
      ExplicitWidth = 677
    end
    object LblLeft: TLabel
      Left = 0
      Top = 3
      Width = 3
      Height = 674
      Align = alLeft
      AutoSize = False
      Color = 14740970
      ParentColor = False
      Transparent = False
      ExplicitTop = 601
      ExplicitHeight = 677
    end
    object LblRigth: TLabel
      Left = 936
      Top = 3
      Width = 3
      Height = 674
      Align = alRight
      AutoSize = False
      Color = 14740970
      ParentColor = False
      Transparent = False
      ExplicitLeft = 8
      ExplicitTop = 6
      ExplicitHeight = 598
    end
    object LblTop: TLabel
      Left = 0
      Top = 0
      Width = 939
      Height = 3
      Align = alTop
      AutoSize = False
      Color = clBtnFace
      ParentColor = False
      Transparent = False
      ExplicitWidth = 677
    end
    object pnlJonMain: TPanel
      Left = 3
      Top = 3
      Width = 933
      Height = 674
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Shape1: TShape
        Left = 0
        Top = 84
        Width = 933
        Height = 3
        Align = alTop
        Pen.Style = psClear
        ExplicitLeft = -5
        ExplicitTop = 63
        ExplicitWidth = 600
      end
      object Shape2: TShape
        Left = 0
        Top = 320
        Width = 933
        Height = 2
        Align = alTop
        Pen.Style = psClear
        ExplicitLeft = -6
        ExplicitTop = 281
        ExplicitWidth = 1090
      end
      object Shape10: TShape
        Left = 0
        Top = 234
        Width = 933
        Height = 3
        Align = alTop
        Pen.Style = psClear
        ExplicitLeft = 6
        ExplicitTop = 62
        ExplicitWidth = 994
      end
      object Shape12: TShape
        Left = 0
        Top = 29
        Width = 933
        Height = 2
        Align = alTop
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitTop = 8
        ExplicitWidth = 1090
      end
      object PnlTitle: TPanel
        Left = 0
        Top = 0
        Width = 933
        Height = 29
        Cursor = crSizeAll
        Align = alTop
        BevelOuter = bvNone
        Color = 14740970
        ParentBackground = False
        PopupMenu = Pop01Setup
        TabOrder = 0
        OnMouseDown = PnlTitleMouseDown
        OnMouseMove = PnlTitleMouseMove
        object lblCuBubinName: TLabel
          Left = 182
          Top = 11
          Width = 267
          Height = 12
          Cursor = crSizeAll
          AutoSize = False
          Caption = #48277#51064#44256#44061' [ LG'#50672#44396#49548' / '#47784#48148#51068#44592#44592#49444#44228#49324#50629#48512' ]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          OnMouseDown = PnlTitleMouseDown
        end
        object cxLblActive: TcxLabel
          Left = 0
          Top = 0
          Align = alTop
          AutoSize = False
          ParentColor = False
          Style.Color = 33023
          Style.Edges = []
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Height = 5
          Width = 933
        end
        object cxCallTitle: TcxLabel
          Left = 8
          Top = 7
          Cursor = crSizeAll
          Caption = '('#53084#47553') 010-2222-7777'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          OnMouseDown = PnlTitleMouseDown
          OnMouseMove = PnlTitleMouseMove
        end
        object btnNew: TcxButton
          Left = 519
          Top = 1
          Width = 41
          Height = 26
          Cursor = crHandPoint
          Caption = #49888#44508
          LookAndFeel.NativeStyle = False
          TabOrder = 1
          OnClick = btnNewClick
        end
        object BtnClose: TcxButton
          Left = 562
          Top = 1
          Width = 29
          Height = 26
          LookAndFeel.NativeStyle = False
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
          TabOrder = 2
          OnClick = BtnCloseClick
        end
        object ChkMini: TcxCheckBox
          Left = 454
          Top = 7
          Caption = #48120#45768#52285
          TabOrder = 4
          OnClick = ChkMiniClick
          Width = 58
        end
      end
      object GBTop1: TcxGroupBox
        Left = 0
        Top = 31
        Align = alTop
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Height = 53
        Width = 933
        object cboBrOnly: TcxComboBox
          Left = 3
          Top = 1
          TabStop = False
          AutoSize = False
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51648#49324#51221#48372)
          Properties.OnChange = cboBrOnlyPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Text = #51648#49324#51221#48372
          TextHint = #51648#49324#51221#48372
          OnClick = cboBrOnlyClick
          OnEnter = cboBrOnlyEnter
          OnMouseDown = cxtCuTelMouseDown
          OnMouseUp = cboBranchMouseUp
          Height = 24
          Width = 93
        end
        object cboBranch: TcxComboBox
          Left = 96
          Top = 1
          TabStop = False
          AutoSize = False
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 10
          Properties.ImeMode = imSHanguel
          Properties.ImmediateDropDownWhenActivated = True
          Properties.Items.Strings = (
            #51648#49324'+'#45824#54364#48264#54840)
          Properties.OnChange = cboBranchPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #44404#47548
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Text = #51648#49324'+'#45824#54364#48264#54840
          OnClick = cboBranchClick
          OnMouseDown = cboBranchMouseDown
          OnMouseUp = cboBranchMouseUp
          Height = 24
          Width = 209
        end
        object cxButton1: TcxButton
          Left = 4
          Top = 25
          Width = 31
          Height = 22
          Cursor = crHandPoint
          Caption = #44284#44144
          LookAndFeel.NativeStyle = False
          TabOrder = 2
          OnClick = cxButton1Click
        end
        object cxTSearchMainTel: TcxTextEdit
          Left = 305
          Top = 1
          TabStop = False
          OnFocusChanged = cxTSearchMainTelFocusChanged
          AutoSize = False
          ParentFont = False
          Properties.ImeMode = imSHanguel
          Properties.OnChange = cxTSearchMainTelPropertiesChange
          Style.Color = clWindow
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          OnEnter = cxTSearchMainTelEnter
          OnExit = cxTSearchMainTelExit
          OnKeyDown = cxTSearchMainTelKeyDown
          OnKeyUp = cxTSearchMainTelKeyUp
          OnMouseDown = cxTSearchMainTelMouseDown
          OnMouseUp = cboBranchMouseUp
          Height = 24
          Width = 91
        end
        object cxtCuTel: TcxTextEdit
          Left = 35
          Top = 24
          OnFocusChanged = cxtCuTelFocusChanged
          AutoSize = False
          ParentFont = False
          Properties.ImeMode = imSHanguel
          Properties.MaxLength = 12
          Properties.OnChange = cxtCuTelPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #44404#47548
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          OnEnter = cxtCuTelEnter
          OnExit = cxtCuTelExit
          OnKeyPress = cxtCuTelKeyPress
          OnMouseDown = cxtCuTelMouseDown
          Height = 24
          Width = 130
        end
        object BtnCall: TcxButton
          Left = 165
          Top = 25
          Width = 22
          Height = 22
          Cursor = crHandPoint
          LookAndFeel.NativeStyle = False
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E0000000000000000000000000000000003050300
            87C11208D2FF00005C8C00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000304120FA6E1100C
            D2FF1F15F9FF1910E7FF00005788000000000000000000000000000000000000
            00000000000000000000000000000000000000000000070351723434F6FF2425
            FFFF0906C0FF211DF6FF1C17E7FF00003E610000000000000000000000000000
            000000000000000000000000000000000000000000002423B8E2464FFFFF2127
            FBFF292DFDFF0905BBFF2224F7FF1E1CE8FF02002C4000000000000000000000
            000000000000000000000000000000000000000000004546DFF94255FFFF2430
            F6FF2E3AFEFF2932F7FF0806BDFF1D21E6FF06025D7C00000000000000000000
            000000000000000000000000000000000000000000004D4FE1F84962FFFF2539
            F8FF2C3FF8FF3248FFFF2930E9FF060088BC0000070A00000000000000000000
            000000000000000000000000000000000000000000003A37C7E36380FFFF243F
            F8FF3551FCFF2635EFFF09026C88000000000000000000000000000000000000
            00000000000000000000000000000000000000000000110B788A7B90FDFF2E4D
            FBFF3A58FEFF2631EAFF02001D24000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000002B327175F3FF5C7D
            FFFF3251FBFF3B5BFBFF160CC7E3000000000000000000000000000000000000
            00000401303901000708000000000000000000000000000000001209B1C496AE
            FFFF395DFCFF3D61FDFF3C56F8FF10069BB00000000000000000000000000800
            7B962831EBFF1814C6DE01000D0F00000000000000000000000000000303463F
            F0FF92B2FFFF345AFCFF4870FEFF3D57F7FF0E039DAF000000000D0385932F39
            E1FF121BC4FF3753F5FF1C17CFE4000006070000000000000000000000000300
            575E6060F6FF8BB0FFFF365EFCFF4870FEFF405EF9FF201FD6E63442F4FF4E7A
            FFFF344BECFF0804B6FF3F62F8FF1F1CD4E40100090A00000000000000000000
            00000100686E6B6BF9FF91B4FFFF3F67FCFF486FFEFF4E76FEFF4C75FEFF466B
            FAFF5079FFFF3852EAFF0603B5FF4264F7FF1F1EC2CD00000000000000000000
            0000000000000100656A5D5AF9FFA6C5FFFF618BFDFF466FFCFF4166FCFF4469
            FCFF4468FCFF4C74FFFF3754EEFF131EB6FF2527EDFF00000000000000000000
            0000000000000000000001002A2C261DCBD28A95FDFF8CA8FFFF7DA6FFFF6C95
            FDFF6892FDFF6D97FEFF719BFFFF3B42F1FF05013C4100000000000000000000
            00000000000000000000000000000000000001003A3C1D178D92443DE7EE575A
            EFF3585BEFF34244ECF120179FA50200222300000000}
          TabOrder = 5
          TabStop = False
          OnClick = BtnCallClick
        end
        object cxtCuTel2: TcxTextEdit
          Left = 187
          Top = 24
          TabStop = False
          OnFocusChanged = cxtCuTel2FocusChanged
          AutoSize = False
          ParentFont = False
          Properties.ImeMode = imSHanguel
          Properties.OnChange = cxtCuTel2PropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          OnEnter = cxtCuTel2Enter
          OnExit = cxtCuTel2Exit
          OnMouseDown = cxtCuTelMouseDown
          Height = 24
          Width = 130
        end
        object BtnCall2: TcxButton
          Left = 317
          Top = 25
          Width = 21
          Height = 22
          Cursor = crHandPoint
          LookAndFeel.NativeStyle = False
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E0000000000000000000000000000000003050300
            87C11208D2FF00005C8C00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000304120FA6E1100C
            D2FF1F15F9FF1910E7FF00005788000000000000000000000000000000000000
            00000000000000000000000000000000000000000000070351723434F6FF2425
            FFFF0906C0FF211DF6FF1C17E7FF00003E610000000000000000000000000000
            000000000000000000000000000000000000000000002423B8E2464FFFFF2127
            FBFF292DFDFF0905BBFF2224F7FF1E1CE8FF02002C4000000000000000000000
            000000000000000000000000000000000000000000004546DFF94255FFFF2430
            F6FF2E3AFEFF2932F7FF0806BDFF1D21E6FF06025D7C00000000000000000000
            000000000000000000000000000000000000000000004D4FE1F84962FFFF2539
            F8FF2C3FF8FF3248FFFF2930E9FF060088BC0000070A00000000000000000000
            000000000000000000000000000000000000000000003A37C7E36380FFFF243F
            F8FF3551FCFF2635EFFF09026C88000000000000000000000000000000000000
            00000000000000000000000000000000000000000000110B788A7B90FDFF2E4D
            FBFF3A58FEFF2631EAFF02001D24000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000002B327175F3FF5C7D
            FFFF3251FBFF3B5BFBFF160CC7E3000000000000000000000000000000000000
            00000401303901000708000000000000000000000000000000001209B1C496AE
            FFFF395DFCFF3D61FDFF3C56F8FF10069BB00000000000000000000000000800
            7B962831EBFF1814C6DE01000D0F00000000000000000000000000000303463F
            F0FF92B2FFFF345AFCFF4870FEFF3D57F7FF0E039DAF000000000D0385932F39
            E1FF121BC4FF3753F5FF1C17CFE4000006070000000000000000000000000300
            575E6060F6FF8BB0FFFF365EFCFF4870FEFF405EF9FF201FD6E63442F4FF4E7A
            FFFF344BECFF0804B6FF3F62F8FF1F1CD4E40100090A00000000000000000000
            00000100686E6B6BF9FF91B4FFFF3F67FCFF486FFEFF4E76FEFF4C75FEFF466B
            FAFF5079FFFF3852EAFF0603B5FF4264F7FF1F1EC2CD00000000000000000000
            0000000000000100656A5D5AF9FFA6C5FFFF618BFDFF466FFCFF4166FCFF4469
            FCFF4468FCFF4C74FFFF3754EEFF131EB6FF2527EDFF00000000000000000000
            0000000000000000000001002A2C261DCBD28A95FDFF8CA8FFFF7DA6FFFF6C95
            FDFF6892FDFF6D97FEFF719BFFFF3B42F1FF05013C4100000000000000000000
            00000000000000000000000000000000000001003A3C1D178D92443DE7EE575A
            EFF3585BEFF34244ECF120179FA50200222300000000}
          TabOrder = 7
          TabStop = False
          OnClick = BtnCall2Click
        end
        object cxLblBar1: TcxLabel
          Left = 5
          Top = 47
          AutoSize = False
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 5815460
          Height = 5
          Width = 389
        end
        object cxLSearchMainTelFlg: TcxLabel
          Left = 312
          Top = 5
          Cursor = crIBeam
          Caption = #44160'  '#49353
          Style.TextColor = 10329501
          Transparent = True
          OnClick = cxLSearchMainTelFlgClick
          OnMouseDown = cxTSearchMainTelMouseDown
        end
        object cxLCuTel2Flg: TcxLabel
          Left = 193
          Top = 28
          Cursor = crIBeam
          Caption = #44256#44061#51204#54868'2'
          Style.TextColor = 10329501
          Transparent = True
          OnClick = cxLCuTel2FlgClick
        end
        object cxLCuTelFlg: TcxLabel
          Left = 40
          Top = 28
          Cursor = crIBeam
          Caption = #44256#44061#44160#49353
          Style.TextColor = 10329501
          Transparent = True
          OnClick = cxLCuTelFlgClick
        end
        object cxTxtBrNameCaption: TcxTextEdit
          Left = 426
          Top = 2
          TabStop = False
          AutoSize = False
          ParentFont = False
          Properties.AutoSelect = False
          Properties.ImeMode = imSHanguel
          Properties.ReadOnly = True
          Style.Color = clBlack
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #44404#47548
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = 8454143
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = clWhite
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.TextColor = 4934475
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          Text = 'NS'#45824#47532#50629#52404#47749' / '#45824#54364#48264#54840
          Visible = False
          OnMouseEnter = cxTxtBrNameCaptionMouseEnter
          Height = 24
          Width = 394
        end
        object cxImage1: TcxImage
          Left = 151
          Top = 27
          Cursor = crHandPoint
          TabStop = False
          Picture.Data = {
            055449636F6E0000010001000707000001002000080100001600000028000000
            070000000E0000000100200000000000E0000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000004B79FFFF
            00000000000000000000000000000000000000004B79FFFF4B79FFFF00000000
            0000000000000000000000004B79FFFF4B79FFFF4B79FFFF0000000000000000
            000000004B79FFFF4B79FFFF4B79FFFF4B79FFFF00000000000000004B79FFFF
            4B79FFFF4B79FFFF4B79FFFF4B79FFFF000000004B79FFFF4B79FFFF4B79FFFF
            4B79FFFF4B79FFFF4B79FFFF4B79FFFF4B79FFFF4B79FFFF4B79FFFF4B79FFFF
            4B79FFFF4B79FFFFFC000000F8000000F0000000E0000000C000000080000000
            00000000}
          Style.BorderStyle = ebsNone
          TabOrder = 13
          OnClick = cxImage1Click
          Height = 12
          Width = 12
        end
        object cbTelView: TcxComboBox
          Left = 338
          Top = 24
          TabStop = False
          AutoSize = False
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#54868'1'
            #51204#54868'2'
            #49345#54889#49892)
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 14
          Text = #51204#54868'1'
          TextHint = #51648#49324#51221#48372
          Height = 24
          Width = 58
        end
      end
      object GBTop2: TPanel
        Left = 0
        Top = 87
        Width = 933
        Height = 147
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        object Panel3: TPanel
          Left = 315
          Top = 0
          Width = 82
          Height = 147
          BevelOuter = bvNone
          TabOrder = 2
          OnMouseMove = Panel3MouseMove
          object shpModifyTitle: TShape
            Left = 0
            Top = 30
            Width = 82
            Height = 2
            Align = alTop
            Brush.Style = bsClear
            Pen.Style = psClear
            ExplicitLeft = -6
            ExplicitTop = 23
            ExplicitWidth = 305
          end
          object PnlModifyTitle: TPanel
            Left = 0
            Top = 0
            Width = 82
            Height = 30
            Align = alTop
            BevelOuter = bvNone
            Color = clWindow
            ParentBackground = False
            TabOrder = 0
            object Image2: TImage
              Left = 0
              Top = 0
              Width = 82
              Height = 30
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Align = alClient
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000005
                0000001F0802000000A040904F000000017352474200AECE1CE9000000046741
                4D410000B18F0BFC610500000071494441542853B5C7390E82400086D1FFFEA7
                F0061C82DA0B18E90804A2B2CDB0CC6AE997D0D098BCE6C985488A29938E9049
                D66592393269D91369DA1369DC12E9B346D2DB46D2CB0452BF0452377B523B79
                52333AD2B331F4875B3ABFB574E12BA9EA36523D78D2FDD1936E45F953945FF4
                F0AEABB33042A00000000049454E44AE426082}
              Stretch = True
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 669
              ExplicitHeight = 24
            end
            object cxLblOrderUpInfo: TcxLabel
              Left = 0
              Top = 0
              Hint = #49688#51221#49884' '#47560#50864#49828' '#50732#47532#47732' '#51328#45908' '#47566#51008' '#51221#48372#47484' '#48380#49688' '#51080#51020'.'
              Align = alClient
              AutoSize = False
              Caption = #51217#49688' '#49888#44508' '#54868#47732
              ParentColor = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              Style.BorderColor = clWindow
              Style.BorderStyle = ebsUltraFlat
              Style.Color = 14733539
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              OnClick = cxLblOrderUpInfoClick
              OnMouseLeave = cxLblOrderUpInfoMouseLeave
              OnMouseMove = cxLblOrderUpInfoMouseMove
              Height = 30
              Width = 82
              AnchorX = 41
              AnchorY = 15
            end
          end
          object PnlMemo: TPanel
            Left = 0
            Top = 32
            Width = 82
            Height = 115
            Align = alClient
            BevelKind = bkFlat
            BevelOuter = bvNone
            Color = 15790320
            ParentBackground = False
            TabOrder = 1
            OnMouseMove = cxGroupBox7MouseMove
            OnResize = PnlMemoResize
            DesignSize = (
              78
              111)
            object meoCuWorMemo: TcxMemo
              Left = 1
              Top = 60
              OnFocusChanged = meoCuWorMemoFocusChanged
              Anchors = [akLeft, akTop, akRight]
              Properties.ImeMode = imSHanguel
              Properties.MaxLength = 0
              Properties.ScrollBars = ssVertical
              Properties.OnChange = meoCuWorMemoPropertiesChange
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 4
              OnEnter = meoCuWorMemoEnter
              OnExit = meoCuWorMemoExit
              OnKeyUp = meoCuWorMemoKeyUp
              OnMouseDown = cxtCuTelMouseDown
              Height = 50
              Width = 76
            end
            object meoCuCCMemo: TcxMemo
              Left = 1
              Top = 1
              OnFocusChanged = meoCuCCMemoFocusChanged
              Anchors = [akLeft, akTop, akRight]
              Lines.Strings = (
                '')
              Properties.ImeMode = imSHanguel
              Properties.MaxLength = 0
              Properties.ScrollBars = ssVertical
              Properties.OnChange = meoCuCCMemoPropertiesChange
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              OnEnter = meoCuCCMemoEnter
              OnExit = meoCuCCMemoExit
              OnKeyUp = meoCuCCMemoKeyUp
              OnMouseDown = cxtCuTelMouseDown
              Height = 58
              Width = 38
            end
            object BtnViewMemo: TcxButton
              Left = 60
              Top = 93
              Width = 16
              Height = 16
              Cursor = crHandPoint
              Anchors = [akRight, akBottom]
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                424DC60100000000000036000000280000000A0000000A000000010020000000
                000000000000C40E0000C40E00000000000000000000BB731AF0C37914F4C373
                14F86F3A0D9D02010003020100037040149CC47E23F7C37712F4B26513ECD799
                2EF8E6A525FFBD791AE42915063B0000000000000000301A0844C78727ECE6A5
                23FFCB801DF6D09239F5CC933AEDDFA945F986531AA71309031A170903249D66
                1FBFDC9D30F8C28833E4D09039F8633C157E361F0B47A47A3DBDE6B452FC915E
                20B1A36E28C2E3AB42FB8A581CA72E19083D7C4D1C9D0000000000000000190C
                0524AB8241C4ECBE5AFFEAB850FF916325AB1715131900000000010100020000
                0000000000001B0C0424AD8039C4F0C667FFEFC76FFF946A2CAB181513190000
                0000020100026D4D1D7E3C270C47AA823DBDEEC86EFC9D7532B1B19055C2EFCF
                81FB946D2DA733210A3D875F239DE4BC6BF5DDB763EDEDCB75F9977435A7160E
                041A1E100524B2935ABFEDD185F8D4AD5BE4E4B659F8EED38EF8F9E29BFFD7B5
                64E436270D3D00000000000000003E2D1145E1C176ECF9E296FFE8C16AF5E8C9
                7FF3EFD693F8E9C879F5765C28800201000202010002755A267FE9C776F5EFD5
                8DF8E3BC67F0}
              TabOrder = 0
              OnClick = BtnViewMemoClick
              OnMouseDown = cxtCuTelMouseDown
            end
            object cxLCuCCMemoFlg: TcxLabel
              Left = 3
              Top = 5
              Cursor = crIBeam
              Caption = #49345#45812#47700#47784' ( '#45236#48512#47700#47784' )'
              Style.TextColor = 10329501
              Transparent = True
              OnClick = cxLCuCCMemoFlgClick
            end
            object cxLCuWorMemoFlg: TcxLabel
              Left = 6
              Top = 65
              Cursor = crIBeam
              Caption = #44592#49324#47700#47784' ( '#48176#52264#49884' '#44592#49324#50640#44172' '#48372#51076' )'
              Style.TextColor = 10329501
              Transparent = True
              OnClick = cxLCuWorMemoFlgClick
            end
            object mmoCbMemo: TcxMemo
              Left = 38
              Top = 1
              Anchors = [akLeft, akTop, akRight]
              Lines.Strings = (
                #48277
                #51064
                #47700
                #47784)
              Properties.ImeMode = imSHanguel
              Properties.MaxLength = 0
              Properties.ScrollBars = ssVertical
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 5
              Visible = False
              OnKeyUp = mmoCbMemoKeyUp
              OnMouseDown = cxtCuTelMouseDown
              Height = 58
              Width = 40
            end
          end
        end
        object PnlCustom: TPanel
          Left = 0
          Top = 0
          Width = 312
          Height = 147
          Align = alLeft
          BevelKind = bkFlat
          BevelOuter = bvNone
          Color = 15790320
          ParentBackground = False
          TabOrder = 4
          OnMouseMove = cxGroupBox7MouseMove
          object btnBubinSch: TcxButton
            Left = 269
            Top = 53
            Width = 35
            Height = 22
            Cursor = crHandPoint
            Hint = #48277#51064#51312#54924
            Enabled = False
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              424D360400000000000036000000280000001000000010000000010020000000
              000000000000C40E0000C40E0000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000265EB219376EF52C130E6700000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000033571C2008EECFF009AF4FF1F4B80FF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              010108468AD82BA7F5FF16C0FFFF00A0F3FF01356EAA00000000000000000000
              0000000000000000000000000000000000000000000000000000000001010C57
              9EE268C4F8FF6BD4FFFF279CE6FF0434679E0000000000000000000000000000
              0000000000000000000000000000000000000000000000000000186AB1DBA4E3
              FEFFB5EEFFFF4CAAE7FF01386C9A000000000000000000000000000000000100
              0002270F0F86482727BD65443FD1482728C12C10107B57464F9D359EE8FFBDF5
              FFFF77C4EFFF003E779C000000000000000000000000000000001207073A7B55
              54FCDFD3CBFFFFFFF7FFFFFFE7FFFFFEDBFFD6BB9EFF90584DFF817B8EFF1794
              E4FF014B7F95000000000000000000000000000000000904041B886565FFFFFF
              FFFFFFFFFFFFFDF8E8FFFAF2DCFFF8EDCFFFFFF1CFFFF6DEBAFF9F5945FF1A21
              305A00000000000000000000000000000000000000003F24249BF6EFEAFFFFFF
              FFFFFEFBF5FFFBF7E8FFF9F4DAFFF5EBCCFFE6CEACFFF3DAB8FFE2BD99FF5131
              34A60000000000000000000000000000000000000000886A68F4FFFFFFFFFDFB
              F1FFFCF8EEFFFAF3E1FFFCF5E3FFF7F0D7FFF0DFC1FFE7C9A9FFF0D1ABFF946A
              61EC0806060F00000000000000000000000000000000907471F7FFFFFCFFF9F2
              E1FFFAF3DEFFFAF7E5FFFAF1DCFFF1DFC0FFEDD9BAFFECD8B9FFEDCAA5FFAF86
              79FF1510122800000000000000000000000000000000957974F9FFFFEBFFF9EE
              D5FFFAF1D7FFF9F2DAFFF2E3C6FFFEFBF9FFFFFFF0FFEFDFC0FFE9C69EFFA57A
              70F40F0C0D1A00000000000000000000000000000000604646B0F7EAC8FFF9EB
              CCFFEFDCBEFFF4E4C7FFF0E1C5FFFDFCECFFFAF5DDFFEFDCBCFFDFB087FF8165
              65CB000000000000000000000000000000000000000021181A43BA998CFFFDEC
              C4FFEDD4B0FFE5CAA8FFEFDBBFFFF2E3C4FFF2DEBCFFEABF93FFBB8E7DFF2E27
              29470000000000000000000000000000000000000000000000003A2A316BBE9A
              8DFFE6C7A5FFEFCBA3FFECC8A2FFE8BE94FFDCAA86FFBE9585FF433A3C640000
              000000000000000000000000000000000000000000000000000000000000201A
              1C366D5758A3B3958DF9B7948AF3B6968DF7776563AB1F1C1E2E000000000000
              00000000000000000000000000000000000000000000}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TabStop = False
            OnClick = btnBubinSchClick
            OnMouseDown = cxtCuTelMouseDown
          end
          object BtnCuSmsNo: TAdvGlowButton
            Left = 100
            Top = 29
            Width = 57
            Height = 21
            Cursor = crHandPoint
            AntiAlias = aaNone
            Caption = 'SMS'#44144#48512
            ImageIndex = 18
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 1
            OnClick = BtnCuSmsNoClick
            OnMouseDown = cxtCuTelMouseDown
            Appearance.BorderColorHot = 16761412
            Appearance.BorderColorDown = 16761412
            Appearance.BorderColorChecked = 33023
            Appearance.ColorChecked = 4105706
            Appearance.ColorCheckedTo = 4105706
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
            Appearance.ColorMirrorChecked = 4105706
            Appearance.ColorMirrorCheckedTo = 4105706
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Style = bsCheck
          end
          object BtnCustAdd: TcxButton
            Left = 269
            Top = 5
            Width = 35
            Height = 20
            Cursor = crHandPoint
            Hint = #44256#44061#54633#52824#44592
            LookAndFeel.NativeStyle = False
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              424D360400000000000036000000280000001000000010000000010020000000
              000000000000C40E0000C40E0000000000000000000000000000000000000000
              000000000000000000000A0A0B165254609B8F7F78F68C7050EF423E3A9B0606
              0719000000000000000000000000000000000000000000000000000000000000
              0000000000000B0A0C189F9AA1F8C18D50FFD38519FFBD650AFFA9672CFF7463
              57FB0707081A0000000000000000000000000000000000000000000000000000
              00000A0A0B19A29898F3CE8935FFD78B0FFFD48D1FFFBF6D10FFC16907FFB766
              18FF77614DF709080A1F00000000000000000000000000000000000000000606
              070F8E8589EBD5923EFFDA9727FFD99E37FFD4912EFFC0711AFFC4761CFFC672
              11FFB96519FF6E5B4CF5060506110000000000000000000000000404040A7071
              7FD7D7A060FFDE9A2FFFDDA245FFDEA23FFFDA9933FFC7771BFFC77A20FFC579
              20FFCB7412FFB16928FF534B48CF03030309000000000000000035363F78B99F
              8DFFE29D37FFE2AB4DFFDFA648FFCA934AFFCA9147FFBA7228FFBE7221FFCA7C
              24FFCA7D25FFCB7418FF8D6440FF2A26287400000000000000007C7981E3E8C1
              89FFE4A949FFE3AF58FFE0A645FFD8A76CFFFDFFFFFFFAF0D2FFCD914DFFC778
              1DFFCA812AFFD07E22FFB77836FF776853E40000000000000000A19696DFD699
              45FFECBE63FFE5B259FFE0A33DFFDBAA64FFFDFFFFFFF6EBCCFFCC8C44FFC772
              11FFCB812AFFD2882DFFBF7022FF77604AE10000000000000000ADA5A3E1DB9C
              41FFEBB960FFE1C8A9FFE7D3BCFFEDDDCBFFFEFDFBFFF6EACAFFDDBA88FFD7AD
              79FFD1A26BFFD28A2FFFC97925FF7A6147E10000000000000000B7B2B1E1EAC5
              87FFEFC67EFFECDAC5FFFFFFFFFFFFFFFFFFFDFAF5FFF6EACAFFF6EACAFFF6EA
              CAFFDEBA86FFD08320FFC87923FF776046E10000000000000000B8B4B2E1F0D1
              9FFFF5DBACFFEDD1B1FFF9EEDEFFF9F0E2FFFDFAF9FFF6EACAFFF6EACAFFF6EA
              CAFFD9AD6EFFDA9A48FFD59449FF8B755EE10000000000000000B9B4B2E1F1D0
              9BFFF7E0B2FFF2D4A0FFEDCA8BFFEFD1A1FFFFFEFFFFF6EBD7FFE4BE86FFDDAB
              67FFE1B679FFEBC996FFE6BF89FF9E8E7CE10000000000000000BCB6B4E1F2D3
              9EFFF8E1B4FFF8DFB4FFF5DEADFFF5DFBAFFFDFFFFFFF3E7D2FFEAC998FFE9C4
              88FFEAC58EFFEAC489FFE5BB7DFF9C8C76E10000000000000000BEB8B6E1F4D5
              A0FFFAE4B8FFF8E1B5FFF7DFB2FFF3DAACFFF3DDB4FFE8C590FFE7C187FFEAC5
              8CFFEBC58CFFEDC78DFFEABE81FF9F8E78E10000000000000000C0BAB8E1F9DB
              A1FFFDE4B3FFFBE2B0FFFBE0AFFFFBE1B0FFF9DAA3FFEDC485FFEEC88BFFEEC8
              8DFFEEC78CFFF0C98EFFEFC181FFA39079E10000000000000000B7B4B8D6E1D7
              D0FFD2C9C2F2D1C8C1F3CFC6C0F3CEC5BFF3CAC0B7F3BEA789F3BEA88CF3BCA6
              89F3BAA487F3B7A187F2C1AA8CFF988A78D600000000}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = BtnCustAddClick
            OnMouseDown = cxtCuTelMouseDown
          end
          object btnCustAppinfo: TcxButton
            Left = 271
            Top = 111
            Width = 33
            Height = 27
            Cursor = crHandPoint
            Caption = #50612#54540
            LookAndFeel.NativeStyle = False
            TabOrder = 3
            TabStop = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = btnCustAppinfoClick
            OnMouseDown = cxtCuTelMouseDown
          end
          object btnMileOut: TcxButton
            Left = 271
            Top = 79
            Width = 33
            Height = 28
            Cursor = crHandPoint
            Caption = #47560#51068
            LookAndFeel.NativeStyle = False
            TabOrder = 4
            TabStop = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = btnMileOutClick
            OnMouseDown = cxtCuTelMouseDown
          end
          object CbCuGb: TcxComboBox
            Left = 3
            Top = 53
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSHanguel
            Properties.Items.Strings = (
              #44060#51064
              #50629#49548
              #48277#51064)
            Properties.OnChange = CbCuGbPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 5
            Text = #44060#51064
            OnClick = CbCuGbPropertiesChange
            OnMouseDown = cxtCuTelMouseDown
            Width = 61
          end
          object cboCuLevel: TcxComboBox
            Left = 3
            Top = 29
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSHanguel
            Properties.Items.Strings = (
              '0.'#48520#47049':'#48744#44053
              '1.'#51452#51032':'#51452#54889
              '2.'#51068#48152':'#54616#45720
              '3.'#50864#49688':'#46041#49353
              '4.'#52572#50864#49688':'#51008#49353
              '5.VIP:'#54889#44552#49353)
            Properties.OnChange = cboCuLevelPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 6
            Text = '0.'#48520#47049':'#48744#44053
            OnMouseDown = cxtCuTelMouseDown
            Width = 96
          end
          object cxBtnCuDel: TcxButton
            Left = 269
            Top = 29
            Width = 35
            Height = 22
            Cursor = crHandPoint
            Caption = #49325#51228
            LookAndFeel.NativeStyle = False
            TabOrder = 7
            TabStop = False
            OnClick = cxBtnCuDelClick
            OnMouseDown = cxtCuTelMouseDown
          end
          object cxBtnCuNew: TcxButton
            Left = 231
            Top = 29
            Width = 35
            Height = 22
            Cursor = crHandPoint
            Caption = #49888#44508
            LookAndFeel.NativeStyle = False
            TabOrder = 8
            TabStop = False
            OnClick = cxBtnCuNewClick
            OnMouseDown = cxtCuTelMouseDown
          end
          object cxBtnCuUpdate: TcxButton
            Left = 195
            Top = 29
            Width = 35
            Height = 22
            Cursor = crHandPoint
            Caption = #49688#51221
            LookAndFeel.NativeStyle = False
            TabOrder = 9
            TabStop = False
            OnClick = cxBtnCuUpdateClick
            OnMouseDown = cxtCuTelMouseDown
          end
          object cxBtnSpSave: TcxButton
            Left = 159
            Top = 29
            Width = 35
            Height = 22
            Cursor = crHandPoint
            Caption = #51200#51109
            LookAndFeel.NativeStyle = False
            TabOrder = 10
            TabStop = False
            OnClick = cxBtnSpSaveClick
            OnMouseDown = cxtCuTelMouseDown
          end
          object cxLblCuLevel: TPanel
            Left = 199
            Top = 79
            Width = 69
            Height = 28
            BevelKind = bkFlat
            BevelOuter = bvNone
            Caption = #52572#50864#49688#44256#44061
            Color = 12704475
            ParentBackground = False
            TabOrder = 11
          end
          object cxLBuNmFlg: TcxLabel
            Left = 71
            Top = 57
            Cursor = crIBeam
            Caption = #48277#51064#47749'/'#48512#49436#47749
            Style.TextColor = 10329501
            Transparent = True
            OnClick = cxLBuNmFlgClick
          end
          object cxLCuNmFlg: TcxLabel
            Left = 8
            Top = 8
            Cursor = crIBeam
            Caption = #44256#44061#47749
            Style.TextColor = 10329501
            Transparent = True
            OnClick = cxLCuNmFlgClick
          end
          object cxtCuBubin: TcxTextEdit
            Left = 65
            Top = 53
            OnFocusChanged = cxtCuBubinFocusChanged
            AutoSize = False
            ParentFont = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.AutoSelect = False
            Properties.IncrementalSearch = False
            Properties.OnChange = cxtCuBubinPropertiesChange
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 14
            OnEnter = cxtCuBubinEnter
            OnExit = cxtCuBubinExit
            OnMouseDown = cxtCuTelMouseDown
            Height = 22
            Width = 202
          end
          object edtCuName: TcxTextEdit
            Left = 3
            Top = 4
            OnFocusChanged = edtCuNameFocusChanged
            ParentFont = False
            Properties.ImeMode = imSHanguel
            Properties.OnChange = edtCuNamePropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 15
            OnEnter = edtCuNameEnter
            OnExit = edtCuNameExit
            OnMouseDown = cxtCuTelMouseDown
            Width = 264
          end
          object pnlMileage: TPanel
            Left = 3
            Top = 79
            Width = 195
            Height = 28
            BevelKind = bkFlat
            BevelOuter = bvNone
            Color = 12704475
            ParentBackground = False
            TabOrder = 16
            object lblCuMile: TLabel
              Left = 2
              Top = 6
              Width = 41
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              Caption = '100,000'
              Transparent = True
            end
            object lblCuMileUnit: TLabel
              Left = 61
              Top = 6
              Width = 34
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              Caption = '10,000'
              Transparent = True
            end
            object Label5: TLabel
              Left = 44
              Top = 6
              Width = 12
              Height = 13
              AutoSize = False
              Caption = #50896
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label1: TLabel
              Left = 99
              Top = 6
              Width = 88
              Height = 12
              Caption = #45800#50948' '#51648#44553'      '#54924
              Transparent = True
            end
            object lblCuMileCnt: TLabel
              Left = 155
              Top = 6
              Width = 18
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = '999'
              Transparent = True
            end
          end
          object PnlOCC: TPanel
            Left = 3
            Top = 111
            Width = 265
            Height = 27
            BevelKind = bkFlat
            BevelOuter = bvNone
            Color = 12704475
            ParentBackground = False
            TabOrder = 17
            object Label6: TLabel
              Left = 2
              Top = 6
              Width = 28
              Height = 12
              Caption = #51217#49688':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object lblCuCntTotal: TLabel
              Left = 32
              Top = 6
              Width = 27
              Height = 15
              AutoSize = False
              Caption = '256'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label8: TLabel
              Left = 118
              Top = 6
              Width = 40
              Height = 12
              Caption = #52712#49548#50984':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object lblCuCancelR: TLabel
              Left = 159
              Top = 6
              Width = 31
              Height = 15
              AutoSize = False
              Caption = '100%'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object LblCenterMng: TLabel
              Left = 195
              Top = 6
              Width = 63
              Height = 12
              Caption = #49345#54889#49892' OFF'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label10: TLabel
              Left = 61
              Top = 6
              Width = 28
              Height = 12
              Caption = #50756#47308':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object lblCoCntTotal: TLabel
              Left = 90
              Top = 6
              Width = 27
              Height = 15
              AutoSize = False
              Caption = '272'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
          end
        end
        object pnlBrNoMent: TPanel
          Left = 442
          Top = 61
          Width = 391
          Height = 24
          BevelKind = bkFlat
          BevelOuter = bvNone
          BorderWidth = 2
          Color = clWindow
          ParentBackground = False
          TabOrder = 0
          Visible = False
          object lblBrNoMent: TLabel
            Left = 2
            Top = 2
            Width = 383
            Height = 16
            Align = alClient
            Alignment = taCenter
            Caption = #52572#49440#51012' '#45796#54616#44192#49845#45768#45796'.  '#44415#49436#48708#49828' '#9675#9675#9675#51077#45768#45796'.'
            Color = 16766935
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4210816
            Font.Height = -15
            Font.Name = #44404#47548
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            Layout = tlCenter
            ExplicitWidth = 337
            ExplicitHeight = 15
          end
        end
        object pnlNewCustYN: TPanel
          Left = 435
          Top = 29
          Width = 391
          Height = 24
          BevelKind = bkFlat
          BevelOuter = bvNone
          BorderWidth = 2
          ParentBackground = False
          ParentColor = True
          TabOrder = 1
          Visible = False
          object Label3: TLabel
            Left = 449
            Top = 2
            Width = 16
            Height = 13
            AutoSize = False
            Caption = 'lbl2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lblNewCustYN: TLabel
            Left = 2
            Top = 2
            Width = 383
            Height = 16
            Cursor = crHandPoint
            Align = alClient
            Alignment = taCenter
            Caption = #9675#9675#9675#9675#9675' / 000000000 '#51032' '#49888#44508#44256#44061' '#51077#45768#45796'.'
            Color = 12510951
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clOlive
            Font.Height = -15
            Font.Name = #44404#47548
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            Layout = tlCenter
            OnClick = lblNewCustYNClick
            ExplicitWidth = 327
            ExplicitHeight = 15
          end
        end
        object pnlTelNESearch: TPanel
          Left = 6
          Top = 117
          Width = 306
          Height = 30
          BevelKind = bkFlat
          BevelOuter = bvNone
          BorderWidth = 1
          Color = 4227327
          TabOrder = 3
          Visible = False
          DesignSize = (
            302
            26)
          object cxLabel23: TcxLabel
            Left = 2
            Top = 2
            Hint = #51020#49885#51216','#50629#49548' '#51204#54868#48264#54840#47564' '#44160#49353#44032#45733'!(KT114 '#46321#47197'Data'#47564#51312#54924#46120')'
            AutoSize = False
            Caption = #51068#48152#51204#54868#48264#54840#51077#47141
            ParentColor = False
            Style.BorderColor = 10865582
            Style.BorderStyle = ebsSingle
            Style.Color = 15003616
            Style.TextColor = 13719147
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 22
            Width = 110
            AnchorX = 57
            AnchorY = 13
          end
          object cxTxtTelNESelect: TcxTextEdit
            Left = 112
            Top = 2
            Hint = #51204#54868#48264#54840' '#46244' 4'#51088#47532' '#44160#49353' '#48143' '#51204#54868#48264#54840' '#51204#52404' '#44160#49353'!'
            Anchors = [akLeft, akTop, akRight]
            AutoSize = False
            ParentFont = False
            ParentShowHint = False
            Properties.AutoSelect = False
            Properties.ReadOnly = False
            ShowHint = True
            Style.Color = clWindow
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            StyleFocused.Color = clWhite
            StyleFocused.TextColor = clBlue
            TabOrder = 3
            Text = '017-7520-1720'
            Height = 22
            Width = 104
          end
          object btnBtnTelNEClose: TcxButton
            Left = 260
            Top = 2
            Width = 40
            Height = 23
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #45803#44592
            Colors.Default = 16635384
            Colors.Normal = 16773362
            Colors.Hot = 16360076
            Colors.Pressed = 16644080
            Colors.Disabled = 4227327
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnClick = btnBtnTelNECloseClick
          end
          object btnBtnTelNESelect: TcxButton
            Left = 218
            Top = 2
            Width = 40
            Height = 23
            Cursor = crHandPoint
            Hint = #51020#49885#51216','#50629#49548' '#47564' '#44160#49353#44032#45733'!(KT114 '#46321#47197'Data'#47564#51312#54924#46120')'
            Anchors = [akTop, akRight]
            Caption = #51312#54924
            Colors.Default = 16635384
            Colors.Normal = 16773362
            Colors.Hot = 16360076
            Colors.Pressed = 16644080
            Colors.Disabled = 4227327
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = btnBtnTelNESelectClick
          end
        end
      end
      object GBTop3: TPanel
        Left = 0
        Top = 237
        Width = 933
        Height = 83
        Align = alTop
        BevelKind = bkFlat
        BevelOuter = bvNone
        Color = 9432062
        ParentBackground = False
        TabOrder = 3
        object lblStartAreaName: TcxRichEdit
          Left = 5
          Top = 52
          TabStop = False
          Enabled = False
          ParentFont = False
          Properties.ReadOnly = True
          Lines.Strings = (
            #49436#50872' '#50689#46321#54252#44396' '#50689#46321#54252#46041)
          Style.Color = clBtnFace
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = 7171437
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          Height = 22
          Width = 176
        end
        object cxtStartAreaDetail: TcxRichEdit
          Left = 181
          Top = 52
          TabStop = False
          ParentFont = False
          Properties.ReadOnly = False
          Lines.Strings = (
            #50689#46321#54252#50669)
          Style.Color = 12316900
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = 7171437
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          OnMouseDown = cxtCuTelMouseDown
          Height = 22
          Width = 124
        end
        object btnStartLocalSave: TcxButton
          Left = 306
          Top = 53
          Width = 24
          Height = 21
          Cursor = crHandPoint
          Hint = #52636#48156#51648' '#51221#48372#47484' '#51200#51109' '#54633#45768#45796'. '#45796#51020#48264' '#51060#50857#49884' '#51088#46041#51004#47196' '#48520#47084#50741#45768#45796'.'
          LookAndFeel.NativeStyle = False
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E00000000000000000000C1761BFFC27519FFBD6B
            13FFB96504FFB96504FFB96504FFBA6504FFBA6504FFBA6504FFBA6504FFBA65
            04FFBA6504FFBA6504FFBC690AFFB96A15FFC3791FFFD5933DFFEFB736FFCDC6
            C0FFE9F8FFFFDBE5F6FFDBE8F8FFDBE8F8FFDBE8F9FFDBE8F8FFDAE7F8FFDBE7
            F8FFD8E4F5FFE9F6FFFFCDC6C0FFEAA714FFC0761DFFCD9551FFE8AE3CFFDCD7
            D4FFECE8E9FFADA0A2FFA79B9EFF9E9395FF94898CFF8A8185FF83797CFF7B72
            76FF685F64FFECE8E9FFDCD7D4FFE59E20FFC77B25FFD09653FFEAB447FFDCD7
            D4FFEFF0EFFFDFDEDCFFE1E0DFFFE0DFDEFFDFE0DDFFE0DFDDFFDFDEDDFFDFE0
            DEFFDBD9D9FFEDEDEDFFDCD7D4FFE7A62BFFC9802BFFD49B58FFEBB950FFDCD7
            D4FFECE8E9FFA99D9FFFA4999EFF9A9194FF92888BFF897F85FF82797CFF7A71
            77FF655C62FFECE8E9FFDCD7D4FFE8AC37FFCC8531FFD69E5BFFEDBD5AFFDCD7
            D4FFFFFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFDCD7D4FFEAB340FFD08B34FFD9A45EFFF0C263FFDCD7
            D4FFECE8E9FFA99D9FFFA4999EFF9A9194FF92888BFF897F85FF82797CFF7A71
            77FF655C62FFECE8E9FFDCD7D4FFEDB749FFD2903AFFD8A35CFFF0C66DFFDCD7
            D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFDCD7D4FFEEBD54FFD7963EFFDEAC69FFF9D281FFC197
            5CFF9A7B60FF95775EFF97795DFF97795DFF97795DFF97795DFF97795CFF9779
            5CFF95775EFF9A7A5EFFC19A64FFF7CA6BFFD99B44FFDDAB67FFF6D58BFFFFD0
            56FFC0A887FFC8C5C9FFCEC6BFFFCDC6C0FFCDC6C0FFCDC6BFFFD6D0CAFFD6D3
            D0FFCFCED4FFC0A888FFFFD25DFFF3CC75FFDCA148FFDCA966FFF6D993FFFBC8
            5DFFC2B4A2FFD7DEEBFFDDDDDDFFDCDDDEFFDCDBDDFFE7E8EAFFC8BAA7FFA296
            92FFC2B4A2FFC6BCA9FFFBCB63FFF3D07EFFE0A74CFFE5B973FFF6DA97FFFBCC
            62FFC8BAA7FFDDE0E9FFE1DFDDFFE0DFDEFFDFDDDCFFEFF3F9FF9F886FFFE5AF
            47FF9E9189FFC7BDB2FFFDCF6AFFF5D484FFE3AC51FFE9BC75FFF8DD9EFFFDCF
            69FFCEC0AFFFE3E7EFFFE7E5E3FFE6E5E4FFE5E4E2FFF1F6FFFFBAA386FFFFE8
            73FFB5AB9EFFCAC0B8FFFFD26EFFF9DA8EFFE7B25BFFEAC079FFF8E09BFFFBD1
            65FFD3C4AFFFEAEEF6FFECEBE8FFECEBE9FFEBE9E6FFFBFFFFFFA28E78FFDEAF
            4FFFA89C95FFD1C7B9FFFFDA78FFF5D889FFE2A442FFECC47EFFFEF4D5FFFFE2
            90FFDCD7D4FFF5FFFFFFF6FEFFFFF6FEFFFFF6FDFFFFFFFFFFFFDFDDDCFFC8BA
            A7FFDFDDDCFFE5E4E2FFFFDE88FFE4AA45FF160F0519ECC681FFF0CA82FFF4CA
            7DFFE8C788FFEFCF94FFE1C68AF1EDCF92FFEED092FFEED093FFF2D396FFF7D7
            9BFFF6D69BFFE6C48AFFEBB552FF0F0B041100000000}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          TabStop = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnStartLocalSaveClick
        end
        object meoStartArea: TcxMemo
          Left = 5
          Top = 5
          OnFocusChanged = meoStartAreaFocusChanged
          Lines.Strings = (
            #50689#46321#54252#49884#51109#50669
            #50689#46321#54252)
          ParentFont = False
          Properties.ImeMode = imSHanguel
          Properties.WantReturns = False
          Properties.OnChange = meoStartAreaPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = #44404#47548
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          OnEnter = meoStartAreaEnter
          OnExit = meoStartAreaExit
          OnKeyDown = meoStartAreaKeyDown
          OnKeyUp = meoStartAreaKeyUp
          OnMouseDown = meoStartAreaMouseDown
          OnMouseEnter = AutoSelectMouseEnter
          OnMouseLeave = AutoSelectMouseMouseLeave
          Height = 46
          Width = 300
        end
        object btnSBigo1: TcxButton
          Left = 369
          Top = 29
          Width = 24
          Height = 22
          Cursor = crHandPoint
          Hint = #49444#51221
          LookAndFeel.NativeStyle = False
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
          PopupMenu = pmSpop
          ShowHint = True
          TabOrder = 0
          TabStop = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnSBigo1Click
        end
        object BtnViaAdd: TcxButton
          Left = 332
          Top = 53
          Width = 61
          Height = 22
          Cursor = crHandPoint
          Hint = #52628#44032'(F5)'
          Caption = #44221#50976#51648
          Colors.Default = 11658431
          LookAndFeel.NativeStyle = False
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E0000000000000000000000000000000000000000
            000000000000032C0A4809671D9810A130E912AE35F412AE35F410A130E90967
            1D98032C0A480000000000000000000000000000000000000000000000000004
            010609731CBA19C140FF1FCE4CFF24DC58FF27DD5CFF27DD5CFF24DC58FF1FCE
            4CFF19C140FF09731CBA00040106000000000000000000000000000301050C94
            25EA1ED04EFF22D555FF21D355FF03B82CFF00A712FF00A712FF03B82CFF21D3
            55FF22D555FF1ED04EFF0C9425EA000301050000000000000000086C15BA1ECE
            4DFF21D354FF1FCC4DFF0FCC45FF00AD13FFFFFFFFFFFFFFFFFF00AD13FF0FCC
            45FF1FCC4DFF21D354FF1ECE4DFF086C15BA000000000325054617BA3FFF21DA
            5AFF1ECC51FF20D053FF0DC742FF00BE25FFFFFFFFFFFFFFFFFF00BE25FF0DC7
            42FF20D053FF1ECC51FF21DA5AFF17BA3FFF0325054605560E9A17D151FF20D4
            5FFF0BCC4AFF04CA43FF00C133FF00BC22FFFFFFFFFFFFFFFFFF00BD27FF00C2
            3BFF10CA4BFF0ECC4CFF20D45FFF17D151FF05560E9A1A8A28E933E67AFF00B6
            2DFF00AD13FF00AD13FF00AD13FF00AD13FFFFFFFFFFFFFFFFFF00AD13FF00BD
            27FF00BD23FF00AD13FF00B62DFF33E67AFF1A8B2AE9289B3AF781FCC3FF00AF
            21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF00AF21FF81FCC4FF289839F71A8C2EF785FDCCFF2AC2
            62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF2AC262FF85FDCCFF1A8C2DF71C7C26E97BFAC3FF3CD0
            7DFF71C780FF1EBF59FF21C05BFF0ABA4DFFFFFFFFFFFFFFFFFF10BC51FF22C0
            5CFF1EBF59FF71C780FF3CD07DFF7BFAC3FF1C7C26E90245019A8AE5B9FF65EA
            B0FF50DF97FF56DF9CFF41DB8DFF22C05CFFFFFFFFFFFFFFFFFF22C05CFF49DC
            93FF56DF9CFF50DF97FF65EAB0FF8AE5B9FF0245019A001A00464EB068FFAFFF
            EAFF5EE0A1FF56E19FFF45DE97FF66D589FFFFFFFFFFFFFFFFFF23C05BFF50E0
            9EFF56E19FFF5EE0A1FFAFFFEAFF4EB068FF001A004600000000004300BA7BDC
            A8FFB6FFEFFF76E5B5FF51DFA3FF66D589FFFFFFFFFFFFFFFFFF24BF59FF56E2
            A8FF76E5B5FFB6FFEFFF7BDCA8FF004300BA000000000000000000020005005D
            00EA6DD6A3FFB7FFF5FFAAF7E3FF70E0B0FF22C05CFF22C05CFF74E2B3FFABF7
            E4FFB7FFF5FF6DD6A3FF005D00EA000200050000000000000000000000000002
            0006004000BA38A75EFF7FE1B8FFA9FFECFFB9FFFBFFB9FFFBFFA9FFECFF7FE1
            B8FF38A75EFF004000BA00020006000000000000000000000000000000000000
            00000000000000160048003E00980E661CE91D7B2CF41D7B2CF40E661CE9003E
            00980016004800000000000000000000000000000000}
          OptionsImage.Layout = blGlyphRight
          OptionsImage.Spacing = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          TabStop = False
          OnClick = BtnViaAddClick
          OnMouseDown = cxtCuTelMouseDown
        end
        object GBStartXYView: TcxGroupBox
          Left = 69
          Top = 26
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Visible = False
          Height = 24
          Width = 235
          object cxLabel7: TcxLabel
            Left = 0
            Top = 4
            Caption = '[Lon] '
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 12
          end
          object cxLabel8: TcxLabel
            Left = 99
            Top = 4
            Caption = '[Lat] '
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 12
          end
          object btnSClose: TcxButton
            Left = 199
            Top = 2
            Width = 34
            Height = 20
            Cursor = crHandPoint
            Caption = #45803#44592
            Colors.Default = 16635384
            Colors.Normal = 16773362
            Colors.Hot = 16360076
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 2
            TabStop = False
            OnClick = btnSCloseClick
          end
          object cxtStartYval: TcxTextEdit
            Left = 136
            Top = 1
            TabStop = False
            AutoSize = False
            ParentFont = False
            Properties.ReadOnly = True
            Properties.OnChange = cxtStartYvalPropertiesChange
            Style.Color = clWindow
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 3
            Text = '99999'
            Height = 22
            Width = 63
          end
          object cxtStartXval: TcxTextEdit
            Left = 37
            Top = 1
            TabStop = False
            AutoSize = False
            ParentFont = False
            Properties.ReadOnly = True
            Properties.OnChange = cxtStartYvalPropertiesChange
            Style.Color = clWindow
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 4
            Text = '99999'
            Height = 22
            Width = 63
          end
        end
        object cb_00: TAdvGlowButton
          Left = 306
          Top = 6
          Width = 19
          Height = 19
          Cursor = crHandPoint
          Hint = #53441#49569
          AntiAlias = aaNone
          Caption = #53441
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ImageIndex = 18
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = cb_00Click
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
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
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Style = bsCheck
        end
        object cb_01: TAdvGlowButton
          Left = 327
          Top = 6
          Width = 19
          Height = 19
          Cursor = crHandPoint
          Hint = #51221#51109
          AntiAlias = aaNone
          Caption = #51221
          ImageIndex = 18
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnClick = cb_00Click
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
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
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Style = bsCheck
        end
        object cb_03: TAdvGlowButton
          Left = 306
          Top = 28
          Width = 19
          Height = 19
          Cursor = crHandPoint
          Hint = #51201#50836
          AntiAlias = aaNone
          Caption = #51201
          ImageIndex = 18
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnClick = cb_00Click
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
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
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Style = bsCheck
        end
        object cb_02: TAdvGlowButton
          Left = 348
          Top = 6
          Width = 19
          Height = 19
          Cursor = crHandPoint
          Hint = #44221#50976
          AntiAlias = aaNone
          Caption = #44221
          ImageIndex = 18
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnClick = cb_00Click
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
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
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Style = bsCheck
        end
        object cb_04: TAdvGlowButton
          Left = 327
          Top = 28
          Width = 19
          Height = 19
          Cursor = crHandPoint
          Hint = #49828#54001
          AntiAlias = aaNone
          Caption = #49828
          ImageIndex = 18
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          OnClick = cb_00Click
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
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
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Style = bsCheck
        end
        object cxLStartAreaFlag: TcxLabel
          Left = 17
          Top = 18
          Cursor = crIBeam
          Caption = #52636#48156#51648
          Style.TextColor = 10329501
          Transparent = True
          OnClick = cxLStartAreaFlagClick
        end
        object BtnStLock: TcxButton
          Left = 369
          Top = 4
          Width = 24
          Height = 24
          Cursor = crHandPoint
          Hint = 'F4)'#49688#51221
          LookAndFeel.NativeStyle = False
          OptionsImage.ImageIndex = 0
          OptionsImage.Images = cxImgLock
          ParentShowHint = False
          ShowHint = True
          SpeedButtonOptions.GroupIndex = 1
          SpeedButtonOptions.AllowAllUp = True
          TabOrder = 13
          TabStop = False
          OnClick = BtnStLockClick
        end
      end
      object GBTop5: TPanel
        Left = 0
        Top = 329
        Width = 933
        Height = 275
        Align = alBottom
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 4
        object Shape9: TShape
          Left = 0
          Top = 81
          Width = 933
          Height = 3
          Align = alBottom
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = 6
          ExplicitTop = 360
          ExplicitWidth = 994
        end
        object Shape7: TShape
          Left = 0
          Top = 0
          Width = 933
          Height = 4
          Align = alTop
          Pen.Style = psClear
          ExplicitWidth = 397
        end
        object GB4: TPanel
          Left = 0
          Top = 84
          Width = 933
          Height = 191
          Align = alBottom
          BevelOuter = bvNone
          Color = clWindow
          ParentBackground = False
          TabOrder = 1
          object Shape6: TShape
            Left = 0
            Top = 103
            Width = 933
            Height = 3
            Align = alBottom
            Pen.Style = psClear
            ExplicitTop = 124
            ExplicitWidth = 363
          end
          object PnlWorkMemo: TPanel
            Left = 0
            Top = 106
            Width = 933
            Height = 85
            Align = alBottom
            BevelKind = bkFlat
            BevelOuter = bvNone
            Color = 15790320
            ParentBackground = False
            TabOrder = 0
            OnMouseMove = cxGroupBox7MouseMove
            object meoBigo2: TcxMemo
              Left = 4
              Top = 40
              OnFocusChanged = meoBigo2FocusChanged
              Lines.Strings = (
                #52265#54620#44256#44061#51076'.')
              ParentFont = False
              Properties.ImeMode = imSHanguel
              Properties.MaxLength = 296
              Properties.ScrollBars = ssVertical
              Properties.WantReturns = False
              Properties.OnChange = meoBigo2PropertiesChange
              Style.BorderStyle = ebsOffice11
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = #44404#47548
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = False
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 6
              OnEnter = meoBigoEnter
              OnExit = meoBigo2Exit
              OnKeyDown = meoBigoKeyDown
              OnKeyUp = meoBigo2KeyUp
              OnMouseDown = cxtCuTelMouseDown
              Height = 37
              Width = 358
            end
            object meoBigo: TcxMemo
              Left = 4
              Top = 4
              OnFocusChanged = meoBigoFocusChanged
              Lines.Strings = (
                'VIP'
                #44256
                #44061
                #51076'.')
              ParentFont = False
              Properties.ImeMode = imSHanguel
              Properties.MaxLength = 0
              Properties.ScrollBars = ssVertical
              Properties.WantReturns = False
              Properties.OnChange = meoBigoPropertiesChange
              Style.BorderStyle = ebsOffice11
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = #44404#47548
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = False
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 3
              OnEnter = meoBigoEnter
              OnExit = meoBigoExit
              OnKeyDown = meoBigoKeyDown
              OnKeyUp = meoBigoKeyUp
              OnMouseDown = cxtCuTelMouseDown
              Height = 37
              Width = 358
            end
            object btnAddBigo: TcxButton
              Left = 363
              Top = 4
              Width = 28
              Height = 37
              Cursor = crHandPoint
              Caption = #49345#13#10#50857#13#10#44396
              LookAndFeel.NativeStyle = False
              PopupMenu = pmBigo
              TabOrder = 0
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = btnAddBigoClick
              OnMouseDown = cxtCuTelMouseDown
            end
            object BtnResvView: TcxButton
              Left = 363
              Top = 40
              Width = 28
              Height = 37
              Cursor = crHandPoint
              Caption = #50696#13#10#13#10#50557
              LookAndFeel.NativeStyle = False
              OptionsImage.Layout = blGlyphTop
              TabOrder = 1
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = BtnResvViewClick
              OnMouseDown = cxtCuTelMouseDown
            end
            object LbmeoBigo: TcxLabel
              Left = 11
              Top = 13
              Cursor = crIBeam
              Caption = #51201#50836#9312' ( '#44592#49324#50640#44172' '#48372#51076' )'
              Style.TextColor = 10329501
              Transparent = True
              OnClick = LbmeoBigoClick
            end
            object LbmeoBigo2: TcxLabel
              Left = 11
              Top = 51
              Cursor = crIBeam
              Caption = #51201#50836#9313' ( '#44592#49324#50640#44172' '#50504#48372#51076' )'
              Style.TextColor = 10329501
              Transparent = True
              OnClick = LbmeoBigo2Click
            end
            object cxGbReserv: TcxGroupBox
              Left = -81
              Top = 68
              Alignment = alTopCenter
              Caption = #50724#45908' '#51217#49688' '#50696#50557#51012' '#49444#51221#54633#45768#45796'.'
              ParentBackground = False
              ParentColor = False
              ParentFont = False
              Style.Color = clWindow
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = False
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              TabOrder = 2
              Visible = False
              Height = 73
              Width = 391
              object Shape16: TShape
                Left = 3
                Top = 14
                Width = 385
                Height = 52
                Align = alClient
                Brush.Color = 11914751
                Pen.Style = psClear
                ExplicitWidth = 556
                ExplicitHeight = 100
              end
              object cxLabel15: TcxLabel
                Left = 8
                Top = 22
                Caption = #50696#50557#51068#49884
                ParentFont = False
                Transparent = True
              end
              object dtpResvDate: TcxDateEdit
                Left = 60
                Top = 20
                EditValue = 42004d
                ParentFont = False
                Properties.OnChange = dtpResvDatePropertiesChange
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 1
                Width = 79
              end
              object dtpResvTime: TcxTimeEdit
                Left = 139
                Top = 20
                ParentFont = False
                Properties.TimeFormat = tfHourMin
                Properties.OnChange = dtpResvDatePropertiesChange
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 2
                Width = 53
              end
              object BtnResJ: TcxButton
                Left = 260
                Top = 16
                Width = 30
                Height = 22
                Caption = #51217#49688
                LookAndFeel.NativeStyle = False
                SpeedButtonOptions.GroupIndex = 1
                SpeedButtonOptions.Down = True
                TabOrder = 3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = BtnResJClick
              end
              object BtnResD: TcxButton
                Left = 260
                Top = 39
                Width = 30
                Height = 22
                Caption = #45824#44592
                LookAndFeel.NativeStyle = False
                SpeedButtonOptions.GroupIndex = 1
                TabOrder = 4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = BtnResJClick
              end
              object BtnResv: TcxButton
                Left = 293
                Top = 18
                Width = 30
                Height = 41
                Caption = #50696#50557#54616#44592
                LookAndFeel.NativeStyle = False
                TabOrder = 5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = BtnResvClick
              end
              object cxButton45: TcxButton
                Left = 355
                Top = 18
                Width = 30
                Height = 41
                Caption = #45803'  '#44592
                LookAndFeel.NativeStyle = False
                TabOrder = 6
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = cxButton45Click
              end
              object cxlblState: TcxLabel
                Left = 10
                Top = 43
                AutoSize = False
                Caption = '3'#49884#44036' 30'#48516' '#54980#50640' '#51217#49688' '#49345#53468#47196' '#50696#50557#46121#45768#45796'.'
                ParentFont = False
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Transparent = True
                Height = 17
                Width = 247
                AnchorX = 134
                AnchorY = 52
              end
              object BtnResvCsl: TcxButton
                Left = 324
                Top = 18
                Width = 30
                Height = 41
                Caption = #50696#50557#52712#49548
                LookAndFeel.NativeStyle = False
                TabOrder = 8
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = BtnResvCslClick
              end
              object CbSecond: TcxComboBox
                Left = 192
                Top = 20
                AutoSize = False
                Properties.DropDownListStyle = lsFixedList
                Properties.Items.Strings = (
                  '0'
                  '5'
                  '10'
                  '15'
                  '20'
                  '25'
                  '30'
                  '35'
                  '40'
                  '45'
                  '50'
                  '55')
                Properties.OnChange = CbSecondPropertiesChange
                TabOrder = 9
                Text = '0'
                Height = 21
                Width = 37
              end
              object cxLabel3: TcxLabel
                Left = 229
                Top = 22
                Caption = #48516#51204
                ParentFont = False
                Transparent = True
              end
            end
          end
          object PnlBox4: TPanel
            Left = 0
            Top = 0
            Width = 933
            Height = 103
            Align = alClient
            BevelKind = bkFlat
            BevelOuter = bvNone
            Color = 15790320
            Ctl3D = True
            ParentBackground = False
            ParentCtl3D = False
            TabOrder = 1
            OnMouseMove = cxGroupBox7MouseMove
            object cxLabel13: TcxLabel
              Left = 52
              Top = 28
              AutoSize = False
              ParentColor = False
              Style.BorderStyle = ebsOffice11
              Style.Color = 15263954
              Height = 22
              Width = 261
            end
            object cxLblRate2: TcxLabel
              Left = 227
              Top = 32
              AutoSize = False
              Caption = '2'#50948' \20,000'
              Style.TextColor = 8404992
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              Height = 16
              Width = 81
              AnchorX = 268
              AnchorY = 40
            end
            object cxLblRate1: TcxLabel
              Left = 149
              Top = 32
              AutoSize = False
              Caption = '1'#50948' \20,000'
              Style.TextColor = 4210816
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              Height = 16
              Width = 77
              AnchorX = 188
              AnchorY = 40
            end
            object btn_ChargeSave: TcxButton
              Left = 6
              Top = 2
              Width = 21
              Height = 22
              Cursor = crHandPoint
              Hint = #50836#44552#51200#51109
              LookAndFeel.NativeStyle = False
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                424D360400000000000036000000280000001000000010000000010020000000
                000000000000C40E0000C40E0000000000000000000000000000000000000814
                07321C4517BA23531FCE235820CF266026DA0E220C53000000001D451B9E225B
                21D4255A21D020501DCA0B1A0945000000000000000000000000000000001A3D
                1799286A25FF2D8233FF34943FFF35A247FF20531FBE0205020F438946FF3EAD
                54FF329E43FF2E7E32FF214E1DCA000000000000000000000000000000003E78
                3DEF57CC75FF35BF58FF3CC561FF38B453FF15341384000000002B5A29C872DA
                8DFF2FBD53FF3FC963FF32953FFF000000000000000000000000000000000F26
                0D625ABC72FF3ABE5DFF3ABF5DFF35A14AFF162F0F8B091608371C4315B94BB7
                63FF35B758FF3BC560FF2F8135FF000000000000000000000000000000000510
                032E63B676FF3DC464FF38B95BFF3ABE5FFF37AC50FF34A048FF36AD51FF37BE
                5CFF3BBD5EFF39BA5BFF1B471B9A00000000000000001639147E184017921434
                0F8A51A55EFF3CC364FF38BA5DFF39BB5EFF3BC061FF3BC263FF3BC061FF39BA
                5DFF3BC162FF37AF54FF122E0F721C4A1AA81B441A9B38873AFF3BC165FF2A99
                3FFF35AD55FF37C265FF38BD62FF38BD62FF38BD62FF38BD62FF38BD62FF38BD
                62FF3AC165FF36B35AFF2E8938FF30C05EFF2C8636FF5AA065F371E1A2FF3DC9
                71FF2DC061FF31BD62FF32BD61FF32BC60FF31BD60FF31BD5FFF32BC60FF33BD
                60FF32BD61FF31BF64FF39CB71FF5DDB92FF4A9F5BF362AA6FFFA1F6D2FF86E1
                B1FF83DBA9FF62CF8EFF55CC85FF4FCA81FF4AC87CFF47C679FF50CA82FF52C9
                83FF5FCF8EFF6DD49AFF87E0B0FF7DE7B2FF4A9F59FC2E6E34C269B97BFF4595
                4AFF90D1A8FF74DCA8FF73D8A2FF72D7A2FF74DAA7FF75DAA7FF6ED79FFF73D7
                A1FF73DCA6FF62C98BFF6FB77BFF9FE7C2FF358240D80000000000000000071F
                074277CC99FF73DEABFF6AD69FFF78E1B3FF73D6A1FF76D8A5FF8CE5BFFF67D5
                9DFF6EDAA6FF6AD198FF1D6122B61D5D20B2081A0A310000000000000000163F
                1B6A79D8A5FF6BDDA9FF6EDDABFF56B66EFF2C6F32BA2A6C30B777BF88FF85E3
                BAFF67D8A2FF74E1AFFF2E7C3BC5000000000000000000000000000000004592
                54D694EFCEFF64DEABFF67E0AEFF2B7D37CC00000000000000002B7F39CE77E4
                B8FF5FDAA4FF75EBC3FF5EC080FF000000000000000000000000000000003187
                42CA7CD09CFF90E1BAFFA0F1D9FF73CF99FF061408200C2C11468ADDB3FF8DED
                CFFF88E3BFFF7BD4A2FF4EB769FF000000000000000000000000000000000206
                030A12411A6430833FC448A45AE7358D46CE00000000091E0D2D44A95AF145A1
                57E33C9E4FE5287F37C50C27113D000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              TabStop = False
              OnClick = btn_ChargeSaveClick
              OnMouseDown = cxtCuTelMouseDown
            end
            object BtnCenterMng: TAdvGlowButton
              Left = 298
              Top = 2
              Width = 39
              Height = 22
              Cursor = crHandPoint
              AntiAlias = aaNone
              Caption = #49345#54889#49892
              ImageIndex = 18
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              TabOrder = 1
              OnMouseDown = cxtCuTelMouseDown
              Appearance.BorderColorHot = 16761412
              Appearance.BorderColorDown = 16761412
              Appearance.BorderColorChecked = 33023
              Appearance.ColorChecked = 4105706
              Appearance.ColorCheckedTo = 4105706
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
              Appearance.ColorMirrorChecked = 4105706
              Appearance.ColorMirrorCheckedTo = 4105706
              Appearance.ColorMirrorDisabled = 11974326
              Appearance.ColorMirrorDisabledTo = 15921906
              Style = bsCheck
            end
            object BtnOptionSexF: TAdvGlowButton
              Left = 157
              Top = 2
              Width = 23
              Height = 22
              Cursor = crHandPoint
              Hint = #50668#44592#49324
              AntiAlias = aaNone
              Caption = #63873
              ImageIndex = 18
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnClick = BtnOptionSexFClick
              OnMouseDown = cxtCuTelMouseDown
              Appearance.BorderColorHot = 16761412
              Appearance.BorderColorDown = 16761412
              Appearance.BorderColorChecked = 33023
              Appearance.ColorChecked = 4105706
              Appearance.ColorCheckedTo = 4105706
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
              Appearance.ColorMirrorChecked = 4105706
              Appearance.ColorMirrorCheckedTo = 4105706
              Appearance.ColorMirrorDisabled = 11974326
              Appearance.ColorMirrorDisabledTo = 15921906
              Style = bsCheck
            end
            object BtnOptionSexM: TAdvGlowButton
              Left = 132
              Top = 2
              Width = 23
              Height = 22
              Cursor = crHandPoint
              Hint = #45224#44592#49324
              AntiAlias = aaNone
              Caption = #30007
              ImageIndex = 18
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnClick = BtnOptionSexMClick
              OnMouseDown = cxtCuTelMouseDown
              Appearance.BorderColorHot = 16761412
              Appearance.BorderColorDown = 16761412
              Appearance.BorderColorChecked = 33023
              Appearance.ColorChecked = 4105706
              Appearance.ColorCheckedTo = 4105706
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
              Appearance.ColorMirrorChecked = 4105706
              Appearance.ColorMirrorCheckedTo = 4105706
              Appearance.ColorMirrorDisabled = 11974326
              Appearance.ColorMirrorDisabledTo = 15921906
              Style = bsCheck
            end
            object BtnPlusYN: TAdvGlowButton
              Left = 257
              Top = 2
              Width = 39
              Height = 22
              Cursor = crHandPoint
              AntiAlias = aaNone
              Caption = #48277#51064
              ImageIndex = 18
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              TabOrder = 4
              OnMouseDown = cxtCuTelMouseDown
              Appearance.BorderColorHot = 16761412
              Appearance.BorderColorDown = 16761412
              Appearance.BorderColorChecked = 33023
              Appearance.ColorChecked = 4105706
              Appearance.ColorCheckedTo = 4105706
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
              Appearance.ColorMirrorChecked = 4105706
              Appearance.ColorMirrorCheckedTo = 4105706
              Appearance.ColorMirrorDisabled = 11974326
              Appearance.ColorMirrorDisabledTo = 15921906
              Style = bsCheck
            end
            object BtnSmartRate: TcxButton
              Left = 29
              Top = 29
              Width = 23
              Height = 20
              Cursor = crHandPoint
              Hint = #49828#47560#53944#50836#44552#54364
              LookAndFeel.NativeStyle = False
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                424D360400000000000036000000280000001000000010000000010020000000
                000000000000C40E0000C40E0000000000000000000000000000000000000000
                000000000000000000000000000010370A672F9D33FE309F38FA1C5D15A70000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000001A57149E288228D72CA53DFF34B856FF3ABD5FFF35AC49FF298A
                2CE11A58149E0000000000000000000000000000000000000000000000000104
                010733902FEB37B452FF37BF61FF53C572FF46BC63FF34B352FF37B453FF3ABF
                62FF37B656FF2B8B26F10207020C000000000000000000000000000000002A6C
                24B147C268FF2DB959FF34AA44FF366F2AB65AC26FFF34B959FF257E1FDC2F9D
                35FF39C062FF37B657FF1F6819BA0000000000000000000000000000000055B6
                5DFF5DD48CFF4CC36BFF0B2807480000000050C06CFF36BD5DFF1851178B0309
                021136B14EFD3AC56BFF2E9F35FF00000000000000000000000000000000368E
                33E8419541E73E993BF60206010A000000004CBE68FF35BE62FF1852178D0205
                010A32B04EFC3AC46BFF2FA53DFF000000000000000000000000000000000000
                0000000000000000000000000000102A0B4A54C373FF35BF64FF257E22DC2D98
                30F837BF63FF38C66DFF2C9830FC000000000000000000000000000000000000
                0000000000000B2407431C6113B1288F2EE538BC61FF36BE62FF37BE60FF38C8
                71FF38C56FFF31A841FF0F310A59000000000000000000000000000000000000
                00001D6415B32FAC46FF35C56CFF3FCA7DFF3BC26DFF34C066FF35B75CFF30A7
                43FF23741EC90D2B084F0000000000000000000000000000000000000000133B
                0E6A76D08DFF39CD7EFF32BE63FF5EB45AFF55C87BFF34C76FFF216E1BC20000
                0000000000000000000000000000000000000000000000000000000000003172
                2FB3A7EDCEFF80DFB0FF226F21BD0000000041C26EFF29C66FFF1A5A1C940000
                0000257B24D1227021BE257A24CF000000000000000000000000000000003673
                32B4A2EDCDFF81E0B2FF1D601BA50000000079D69DFF53D794FF154D128A196F
                13CB2CBB5FFF3BBF6AFF227322C3000000000000000000000000000000000E35
                0960A0E0B7FF98F0D7FF58C47AFF227F19E089D9AAFF8EE9C5FF349B34FA61C4
                7CFFA0FAE4FF74D89EFF0B2B0650000000000000000000000000000000000001
                00012C7725C7A0DFB5FFABF6E4FF86E7BFFF76DBAAFF7DDDB0FF84E4B9FF98F4
                DAFF6FD397FF217619D300020003000000000000000000000000000000000000
                0000000000000E3E0874387E33C27EC187F4A0EDD2FF8FF0D3FF5BC47AFF277A
                27C8104707890000000000000000000000000000000000000000000000000000
                00000000000000000000000000000428005366BC6BFF76C584FA1C5A179D0000
                00000000000000000000000000000000000000000000}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = BtnSmartRateClick
              OnMouseDown = cxtCuTelMouseDown
            end
            object cbbPayMethod: TcxComboBox
              Left = 224
              Top = 51
              AutoSize = False
              ParentFont = False
              Properties.DropDownListStyle = lsFixedList
              Properties.ImeMode = imSHanguel
              Properties.Items.Strings = (
                #54788#44552)
              Properties.OnChange = cbbPayMethodPropertiesChange
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = False
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 6
              Text = #54788#44552
              OnMouseDown = cxtCuTelMouseDown
              Height = 24
              Width = 84
            end
            object cbbPostTime: TcxComboBox
              Left = 307
              Top = 51
              AutoSize = False
              ParentFont = False
              Properties.DropDownListStyle = lsFixedList
              Properties.ImeMode = imSHanguel
              Properties.Items.Strings = (
                #51077#44552#50630#51020)
              Properties.OnChange = cbbPostTimePropertiesChange
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = False
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 7
              Text = #51077#44552#50630#51020
              OnMouseDown = cxtCuTelMouseDown
              Height = 24
              Width = 86
            end
            object cbCardSanction: TcxButton
              Left = 340
              Top = 3
              Width = 53
              Height = 20
              Cursor = crHandPoint
              Caption = #54788#44552#50689#49688
              LookAndFeel.NativeStyle = False
              TabOrder = 8
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = cbCardSanctionClick
              OnMouseDown = cxtCuTelMouseDown
            end
            object chkNoSet: TcxButton
              Left = 28
              Top = 2
              Width = 42
              Height = 22
              Cursor = crHandPoint
              Caption = #48120#51648#51221
              LookAndFeel.NativeStyle = False
              SpeedButtonOptions.GroupIndex = 1
              SpeedButtonOptions.AllowAllUp = True
              TabOrder = 9
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnMouseDown = cxtCuTelMouseDown
            end
            object chkRangeRate: TcxButton
              Left = 71
              Top = 2
              Width = 30
              Height = 22
              Cursor = crHandPoint
              Caption = #44144#47532
              LookAndFeel.NativeStyle = False
              SpeedButtonOptions.GroupIndex = 2
              TabOrder = 10
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnMouseDown = cxtCuTelMouseDown
            end
            object curKm: TcxTextEdit
              Left = 110
              Top = 51
              TabStop = False
              AutoSize = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taBottomJustify
              Properties.ImeMode = imSHanguel
              Properties.ReadOnly = True
              Style.Color = clWindow
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = False
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 11
              Text = '137.0Km'
              OnEnter = curKmEnter
              OnExit = curKmExit
              OnMouseDown = cxtCuTelMouseDown
              Height = 24
              Width = 59
            end
            object curRate: TcxSpinEdit
              Left = 5
              Top = 51
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
              Properties.MaxValue = 1000000.000000000000000000
              Properties.ValidateOnEnter = False
              Properties.OnChange = curRatePropertiesChange
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #44404#47548
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = False
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 12
              Value = 700000
              OnEnter = curRateEnter
              OnExit = curRateExit
              OnKeyDown = curRateKeyDown
              OnKeyPress = curRateKeyPress
              OnKeyUp = curRateKeyUp
              OnMouseDown = cxtCuTelMouseDown
              OnMouseEnter = AutoSelectMouseEnter
              OnMouseLeave = AutoSelectMouseMouseLeave
              Height = 24
              Width = 82
            end
            object cxDriverCharge: TcxCurrencyEdit
              Left = 169
              Top = 51
              TabStop = False
              OnFocusChanged = cxDriverChargeFocusChanged
              AutoSize = False
              EditValue = 99000.000000000000000000
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taBottomJustify
              Properties.DisplayFormat = ',0.;-,0.'
              Properties.ImeMode = imSHanguel
              Properties.OnChange = cxDriverChargePropertiesChange
              Style.BorderStyle = ebsOffice11
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #44404#47548
              Style.Font.Style = []
              Style.IsFontAssigned = True
              StyleFocused.Color = 11796479
              TabOrder = 13
              OnEnter = cxDriverChargeEnter
              OnExit = cxDriverChargeExit
              OnMouseDown = cxtCuTelMouseDown
              Height = 24
              Width = 56
            end
            object cxLblSmartRate: TcxLabel
              Left = 52
              Top = 32
              AutoSize = False
              Caption = #49828#47560#53944' \15,000'
              Style.TextColor = clFuchsia
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              Height = 16
              Width = 96
              AnchorX = 100
              AnchorY = 40
            end
            object edtPostPay: TcxSpinEdit
              Left = 312
              Top = 27
              OnFocusChanged = edtPostPayFocusChanged
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
              Properties.MaxValue = 1000000.000000000000000000
              Properties.UseLeftAlignmentOnEditing = False
              Properties.ValidateOnEnter = False
              Properties.OnChange = edtPostPayPropertiesChange
              Style.BorderStyle = ebsOffice11
              Style.Color = clWindow
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = False
              Style.TextColor = clRed
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 18
              Value = 30000
              OnEnter = edtPostPayEnter
              OnExit = edtPostPayExit
              OnKeyDown = edtPostPayKeyDown
              OnKeyPress = edtPostPayKeyPress
              OnMouseDown = cxtCuTelMouseDown
              Height = 23
              Width = 81
            end
            object LbDriverCharge: TcxLabel
              Left = 172
              Top = 54
              Cursor = crIBeam
              AutoSize = False
              Caption = #49688#49688#47308
              ParentColor = False
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = False
              Style.TextColor = clGrayText
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              OnClick = LbDriverChargeClick
              Height = 19
              Width = 37
              AnchorX = 191
              AnchorY = 64
            end
            object LblPostPay: TcxLabel
              Left = 315
              Top = 31
              Cursor = crIBeam
              Caption = #44592#49324#49569#44552
              ParentColor = False
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = False
              Style.TextColor = clGrayText
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              OnClick = LblPostPayClick
              AnchorX = 341
              AnchorY = 39
            end
            object Pnl_BubinV: TPanel
              Left = -2
              Top = 75
              Width = 399
              Height = 24
              BevelOuter = bvNone
              TabOrder = 21
              Visible = False
              object cxCurPathRate: TcxCurrencyEdit
                Left = 8
                Top = 1
                TabStop = False
                OnFocusChanged = cxCurPathRateFocusChanged
                AutoSize = False
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = '#,'
                Properties.ImeMode = imSHanguel
                Properties.UseLeftAlignmentOnEditing = False
                Properties.UseNullString = True
                Properties.OnChange = cxCurPathRatePropertiesChange
                Style.BorderStyle = ebsOffice11
                Style.Color = 16375788
                StyleFocused.Color = 11796479
                TabOrder = 0
                OnEnter = cxCurPathRateEnter
                OnExit = cxCurPathRateExit
                OnKeyDown = cxCurPathRateKeyDown
                OnMouseDown = cxtCuTelMouseDown
                Height = 21
                Width = 79
              end
              object cxTmWaitTime: TcxTimeEdit
                Left = 87
                Top = 1
                Hint = #45824#44592#49884#44036
                TabStop = False
                Constraints.MinHeight = 21
                ParentFont = False
                Properties.Alignment.Vert = taBottomJustify
                Properties.AutoSelect = False
                Properties.ImeMode = imSHanguel
                Properties.ShowDate = True
                Properties.TimeFormat = tfHourMin
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                StyleDisabled.Color = 16773362
                StyleFocused.Color = 11796479
                StyleFocused.TextColor = clBlack
                TabOrder = 1
                OnKeyDown = cxTmWaitTimeKeyDown
                OnMouseDown = cxtCuTelMouseDown
                Width = 54
              end
              object cxBtnWaitTmRate: TcxButton
                Left = 142
                Top = 2
                Width = 27
                Height = 18
                Cursor = crHandPoint
                LookAndFeel.NativeStyle = False
                OptionsImage.Glyph.SourceDPI = 96
                OptionsImage.Glyph.Data = {
                  424D360800000000000036000000280000002000000010000000010020000000
                  000000000000C40E0000C40E0000000000000000000080008000800080008000
                  8000800080008000800080008000800080008000800080008000800080008000
                  8000800080008000800080008000800080008000800080008000800080008000
                  8000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFF80008000800080008000800080008000800080008000
                  8000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                  00FF000000FF000000FF80008000800080008000800080008000800080007F7F
                  7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
                  7FFF7F7F7FFFFFFFFFFF80008000800080008000800080008000800080008000
                  8000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF000000FF80008000800080008000800080008000800080007F7F
                  7FFFFFFFFFFF80008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800080008000
                  80007F7F7FFFFFFFFFFF80008000800080008000800080008000800080008000
                  8000000000FFFFFFFFFF000000FF000000FF000000FF000000FFFFFFFFFFFFFF
                  FFFFFFFFFFFF000000FF80008000800080008000800080008000800080007F7F
                  7FFFFFFFFFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF80008000800080008000
                  80007F7F7FFFFFFFFFFF80008000800080008000800080008000800080008000
                  8000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF000000FF80008000800080008000800080008000800080007F7F
                  7FFFFFFFFFFF80008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF7F7F7FFFFFFFFFFF80008000800080008000800080008000800080008000
                  8000000000FFFFFFFFFF000000FF000000FF000000FF000000FF000000FF0000
                  00FFFFFFFFFF000000FF80008000800080008000800080008000800080007F7F
                  7FFFFFFFFFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF8000
                  80007F7F7FFFFFFFFFFF80008000800080008000800080008000800080008000
                  8000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF000000FF80008000800080008000800080008000800080007F7F
                  7FFFFFFFFFFF80008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF7F7F7FFFFFFFFFFF80008000800080008000800080008000800080008000
                  8000000000FFFFFFFFFF000000FF000000FF000000FF000000FF000000FF0000
                  00FFFFFFFFFF000000FF80008000800080008000800080008000800080007F7F
                  7FFFFFFFFFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF8000
                  80007F7F7FFFFFFFFFFF80008000800080008000800080008000800080008000
                  8000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF000000FF80008000800080008000800080008000800080007F7F
                  7FFFFFFFFFFF80008000FFFFFFFFFFFFFFFFFFFFFFFF80008000800080008000
                  80007F7F7FFFFFFFFFFF80008000800080008000800080008000800080008000
                  8000000000FFFFFFFFFF000000FF000000FF000000FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF000000FF80008000800080008000800080008000800080007F7F
                  7FFFFFFFFFFF7F7F7FFF7F7F7FFF7F7F7FFF8000800080008000FFFFFFFFFFFF
                  FFFF7F7F7FFFFFFFFFFF80008000800080008000800080008000800080008000
                  8000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
                  00FF000000FF000000FF80008000800080008000800080008000800080007F7F
                  7FFFFFFFFFFF80008000FFFFFFFFFFFFFFFF800080007F7F7FFF7F7F7FFF7F7F
                  7FFF7F7F7FFF8000800080008000800080008000800080008000800080008000
                  8000000000FFFFFFFFFF000000FF000000FFFFFFFFFFFFFFFFFF000000FFFFFF
                  FFFF000000FF8000800080008000800080008000800080008000800080007F7F
                  7FFFFFFFFFFF7F7F7FFF7F7F7FFF80008000800080007F7F7FFFFFFFFFFF7F7F
                  7FFF800080008000800080008000800080008000800080008000800080008000
                  8000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
                  00FF800080008000800080008000800080008000800080008000800080007F7F
                  7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFF7F7F7FFF8000
                  8000800080008000800080008000800080008000800080008000800080008000
                  8000000000FF000000FF000000FF000000FF000000FF000000FF000000FF8000
                  8000800080008000800080008000800080008000800080008000800080007F7F
                  7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF800080008000
                  8000800080008000800080008000800080008000800080008000800080008000
                  8000800080008000800080008000800080008000800080008000800080008000
                  8000800080008000800080008000800080008000800080008000800080008000
                  8000800080008000800080008000800080008000800080008000800080008000
                  8000800080008000800080008000800080008000800080008000800080008000
                  8000800080008000800080008000800080008000800080008000800080008000
                  8000800080008000800080008000800080008000800080008000800080008000
                  8000800080008000800080008000800080008000800080008000800080008000
                  80008000800080008000800080008000800080008000}
                OptionsImage.NumGlyphs = 2
                TabOrder = 2
                TabStop = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = cxBtnWaitTmRateClick
              end
              object cxCurWaitTmRate: TcxCurrencyEdit
                Left = 170
                Top = 1
                TabStop = False
                AutoSize = False
                EditValue = 100000.000000000000000000
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taBottomJustify
                Properties.DisplayFormat = '#,'
                Properties.ImeMode = imSHanguel
                Style.Color = 16375788
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.LookAndFeel.NativeStyle = False
                Style.IsFontAssigned = True
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.Color = 11796479
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 3
                OnKeyDown = cxCurWaitTmRateKeyDown
                OnMouseDown = cxtCuTelMouseDown
                Height = 21
                Width = 48
              end
              object cxCurRevisionRate: TcxCurrencyEdit
                Left = 218
                Top = 1
                TabStop = False
                OnFocusChanged = cxCurRevisionRateFocusChanged
                AutoSize = False
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = '#,'
                Properties.ImeMode = imSHanguel
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = cxCurRevisionRatePropertiesChange
                Style.BorderStyle = ebsOffice11
                Style.Color = 16375788
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.Color = 11796479
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 4
                OnEnter = cxCurRevisionRateEnter
                OnExit = cxCurRevisionRateExit
                OnKeyDown = cxCurRevisionRateKeyDown
                OnMouseDown = cxtCuTelMouseDown
                Height = 21
                Width = 86
              end
              object cxTBubinMemo: TcxTextEdit
                Left = 304
                Top = 1
                TabStop = False
                OnFocusChanged = cxTBubinMemoFocusChanged
                AutoSize = False
                ParentFont = False
                Properties.ImeMode = imSHanguel
                Properties.OnChange = cxTBubinMemoPropertiesChange
                Style.Color = 16375788
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.LookAndFeel.NativeStyle = False
                Style.IsFontAssigned = True
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.Color = 11796479
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 5
                OnEnter = cxTBubinMemoEnter
                OnExit = cxTBubinMemoExit
                OnMouseDown = cxtCuTelMouseDown
                Height = 21
                Width = 91
              end
              object lblCurPathRate: TcxLabel
                Left = 10
                Top = 4
                Cursor = crIBeam
                Caption = #44221#50976#50836#44552
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
                AnchorX = 36
                AnchorY = 12
              end
              object lblCurRevisionRate: TcxLabel
                Left = 226
                Top = 4
                Cursor = crIBeam
                Caption = #48372#51221#44552#50529
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
                StyleFocused.Color = 11796479
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Transparent = True
                OnClick = lblCurRevisionRateClick
                AnchorX = 252
                AnchorY = 12
              end
              object cxLBubinMemoFlag: TcxLabel
                Left = 308
                Top = 4
                Cursor = crIBeam
                Caption = #48277#51064' '#54620#51460' '#47700#47784
                Style.TextColor = 10329501
                Transparent = True
                OnClick = cxLBubinMemoFlagClick
              end
            end
            object BtnOptionCallMu: TAdvGlowButton
              Left = 102
              Top = 2
              Width = 28
              Height = 22
              Cursor = crHandPoint
              Hint = #45224#44592#49324
              AntiAlias = aaNone
              Caption = #53084#28961
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = #44404#47548
              Font.Style = []
              ImageIndex = 18
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 22
              OnClick = BtnOptionCallMuClick
              OnMouseDown = cxtCuTelMouseDown
              Appearance.BorderColorHot = 16761412
              Appearance.BorderColorDown = 16761412
              Appearance.BorderColorChecked = 33023
              Appearance.ColorChecked = 4105706
              Appearance.ColorCheckedTo = 4105706
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
              Appearance.ColorMirrorChecked = 4105706
              Appearance.ColorMirrorCheckedTo = 4105706
              Appearance.ColorMirrorDisabled = 11974326
              Appearance.ColorMirrorDisabledTo = 15921906
              Style = bsCheck
            end
            object BtnWkAge: TAdvGlowButton
              Left = 182
              Top = 2
              Width = 30
              Height = 22
              Cursor = crHandPoint
              Hint = #44592#49324#45208#51060
              AntiAlias = aaNone
              Caption = #45208#51060
              ImageIndex = 18
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentShowHint = False
              ShowHint = True
              TabOrder = 23
              OnMouseDown = cxtCuTelMouseDown
              Appearance.BorderColorHot = 16761412
              Appearance.BorderColorDown = 16761412
              Appearance.BorderColorChecked = 33023
              Appearance.ColorChecked = 4105706
              Appearance.ColorCheckedTo = 4105706
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
              Appearance.ColorMirrorChecked = 4105706
              Appearance.ColorMirrorCheckedTo = 4105706
              Appearance.ColorMirrorDisabled = 11974326
              Appearance.ColorMirrorDisabledTo = 15921906
              Style = bsCheck
            end
            object BtnWKJAmt: TAdvGlowButton
              Left = 214
              Top = 2
              Width = 41
              Height = 22
              Cursor = crHandPoint
              Hint = #44592#49324#45208#51060
              AntiAlias = aaNone
              Caption = #51648#50896#44552
              ImageIndex = 18
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentShowHint = False
              ShowHint = True
              TabOrder = 24
              OnMouseDown = cxtCuTelMouseDown
              Appearance.BorderColorHot = 16761412
              Appearance.BorderColorDown = 16761412
              Appearance.BorderColorChecked = 33023
              Appearance.ColorChecked = 4105706
              Appearance.ColorCheckedTo = 4105706
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
              Appearance.ColorMirrorChecked = 4105706
              Appearance.ColorMirrorCheckedTo = 4105706
              Appearance.ColorMirrorDisabled = 11974326
              Appearance.ColorMirrorDisabledTo = 15921906
              Style = bsCheck
            end
            object BtnQRate: TAdvGlowButton
              Left = 5
              Top = 29
              Width = 23
              Height = 21
              Cursor = crHandPoint
              Hint = #50836#44552#47928#51032
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentFont = False
              Picture.Data = {
                89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
                61000001DC4944415478DA6364C001E2B77D9A2020CA9E8F2CF6FCD987D655FE
                E235C8628CD834476CFED49A60C45DC4CECCC8F18D09A8E4FF7F06D67F0C0C47
                EE7D7CB5EDE2A7C63359F2D3701A10BBF55349AF076FF7C9770C0C3FFE3230FC
                FECFC0F01D8859802AA5F91918D69F79FFE5EEE31F0B77444BE560352078FDBB
                7BC5DE828AB73F30309CFD0051A0C7CBC0F0E1DB7F060E364686AF5F7F33DC7C
                FCF5FD5C574121AC06B8AE7CFDDD509E8FE3DAF38FE7B6048A1983C4D2563CFC
                AF6F2BC7F0E31703C3A7CF7F185E7DFAF665BA0D3F2FCE304007A9AB1FFDD730
                956560027AE53DD00537EE7CF8B72A408C9928030C7B6EFE5F92A5C630EBEA2F
                063E2936862BC75EBC7CFEF07DFD8912AD99040D00699E9CA9C6D074F11FC347
                A0D227D73E313C9DB4478FE152C865BCD10806E6DBCD0C43954E8A5AA980B98F
                1F7C62B8DEB7CB8AE14CF87182E90004F8FA9EE78AAB0A4D82F15FDE7EB7EF53
                91A433BA3A7C06240029504A7C0BC43C40BC0268C004A20D2016E035C0BCEEF4
                23210345D99BC76FBFBEB7ED8234C3D5CCDF441B605D77FEA645B681DAEAD30C
                0C8FAEBF62603C78FAC5FF2D3E92441B603AF3FEFFA7ECE20CCF9E7E616078F6
                9981E1F38B4F0C8BACF949F282E4C2CF8F9E3F7A25CBF0E9D753866E4D196C6A
                00F6A7C011391086490000000049454E44AE426082}
              Spacing = 4
              ParentShowHint = False
              ShowHint = True
              TabOrder = 25
              OnMouseDown = cxtCuTelMouseDown
              Appearance.BorderColorHot = 16761412
              Appearance.BorderColorDown = 16761412
              Appearance.BorderColorChecked = 33023
              Appearance.ColorChecked = 4105706
              Appearance.ColorCheckedTo = 4105706
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
              Appearance.ColorMirrorChecked = 4105706
              Appearance.ColorMirrorCheckedTo = 4105706
              Appearance.ColorMirrorDisabled = 11974326
              Appearance.ColorMirrorDisabledTo = 15921906
            end
            object BtnRaLock: TAdvGlowButton
              Left = 87
              Top = 51
              Width = 23
              Height = 22
              Cursor = crHandPoint
              Hint = 'F4)'#49688#51221
              ImageIndex = 0
              Images = cxImgLock
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              WordWrap = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 26
              Appearance.BorderColorHot = 16761412
              Appearance.BorderColorDown = 16761412
              Appearance.BorderColorChecked = 33023
              Appearance.ColorChecked = 4105706
              Appearance.ColorCheckedTo = 4105706
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
              Appearance.ColorMirrorChecked = 4105706
              Appearance.ColorMirrorCheckedTo = 4105706
              Appearance.ColorMirrorDisabled = 11974326
              Appearance.ColorMirrorDisabledTo = 15921906
              Style = bsCheck
            end
          end
        end
        object GB3: TPanel
          Left = 0
          Top = 2
          Width = 933
          Height = 79
          Align = alBottom
          BevelKind = bkFlat
          BevelOuter = bvNone
          Color = 11271851
          ParentBackground = False
          TabOrder = 0
          OnMouseMove = GB3MouseMove
          object cxReEndArea: TcxRichEdit
            Left = 5
            Top = 52
            TabStop = False
            Enabled = False
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = 7171437
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 6
            Height = 22
            Width = 309
          end
          object meoEndArea: TcxMemo
            Left = 5
            Top = 5
            OnFocusChanged = meoEndAreaFocusChanged
            Lines.Strings = (
              #49688#49436#50669'3'#48264#52636#44396)
            ParentFont = False
            Properties.ImeMode = imSHanguel
            Properties.WantReturns = False
            Properties.OnChange = meoEndAreaPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            OnEnter = meoEndAreaEnter
            OnExit = meoEndAreaExit
            OnKeyDown = meoEndAreaKeyDown
            OnKeyUp = meoEndAreaKeyUp
            OnMouseDown = meoStartAreaMouseDown
            OnMouseEnter = AutoSelectMouseEnter
            OnMouseLeave = AutoSelectMouseMouseLeave
            Height = 46
            Width = 363
          end
          object btnEpop: TcxButton
            Left = 369
            Top = 29
            Width = 24
            Height = 21
            Cursor = crHandPoint
            Hint = #49444#51221
            LookAndFeel.NativeStyle = False
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
            PopupMenu = pmEpop
            ShowHint = True
            TabOrder = 0
            TabStop = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = btnEpopClick
            OnMouseDown = cxtCuTelMouseDown
          end
          object cxButton43: TcxButton
            Left = 342
            Top = 52
            Width = 24
            Height = 22
            Cursor = crHandPoint
            Hint = #51648#46020
            LookAndFeel.NativeStyle = False
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              424D360400000000000036000000280000001000000010000000010020000000
              000000000000C40E0000C40E0000000000000000000000000000000000000000
              0000000000010000000700000001000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000002020327626A6FC90506063B000000040000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00023235378FE1E8EDFF96A2A9EA070808500000001300000005000000010000
              0000000000000000000000000000000000000000000000000000000000000000
              00119DADB4EBE1E9EDFFBCD9EFFF7795ACEF0A0A0B79000000470303033E0A0B
              0C50090A0B4E0000000C00000001000000000000000000000000000000011719
              1A6865D6F3FF9CDDF0FF5AADEEFF4AA5EEFFA9B8BEF98EADB9FAAEBFC8FFAFBF
              C9FFC1CED5FF676F74CE0D0E0F5A0000000C000000010000000000000007767D
              81CDD1E5EDFF4FCBF6FF2496F0FF9CCBF0FFB1C9D5FF86BED1FFB5C4CEFFC7D3
              DAFFE1E8ECFFD9E1E6FFC5D1D8FF6A7277CE050506360000000007080840C7DA
              E8FFD3E5F3FF4EA9F0FF44A4F0FFCBD8E0FF81BDD1FF7EBBD1FF80BDD4FF40CC
              F6FF97D7EDFFDAE2E8FFDEE5E9FFD4DDE2FF1315155700000003474D51A84DA8
              F1FF3CA0F1FF2897F0FFACD5F4FFB0CAD5FF87BED1FFB1C4CFFFBFCCD2FFA4BE
              C2FF64CEEEFF4ACEF6FFADD7E7FF555B5DAD000000020101011FC8CDD1F7F2F4
              F5FF7EBEF1FF4BA7F1FFE2E8EBFF88C0D3FFB0C4CEFFB5C3C9FFAEB6B3FFA0A9
              A3FFACB6B5FFACCCD6FF71A1B0E4010101150000000020232474E4E8EBFFD0DC
              E6FF2D99F0FFABCFECFFAFCAD5FF96C4D4FFB0BDC7FFD0D5D3FFD8D7CCFFD1D2
              C9FFC3CAC9FFBEC7CAFD0D0E0E4600000000000000000405052692989BD87BB7
              E6FF4AA3EAFFC8D2D8FF87BFD2FFBBCAD3FF9297C1FF655CC7FF6557C1FFCCBE
              A7FFD9D9CCFF373B3C8D00000001000000000000000000000000010101104558
              66B1A2C2DBFFA5C0CCFF9DC3D1FF9DA5CAFD2D2DDEFF1C1FCBFF2013BAFFBEB0
              AAFF80827BCF0000000900000000000000000000000000000000000000000000
              0003202223631F21225E0809092E010104182421A5CA2927C8FF1F12B9FFAFAC
              ADF50506062C0000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000010105092218AFE2270FBCFF2C1E
              93DE010003100000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000231BBDE22118DBFF1F16
              C3E902010C130000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000B083B4F0D09516A0201
              0D150000000000000000000000000000000000000000}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            TabStop = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = cxButton43Click
            OnMouseDown = cxtCuTelMouseDown
          end
          object GBEndXYView: TcxGroupBox
            Left = 132
            Top = 26
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Visible = False
            Height = 24
            Width = 235
            object cxLabel10: TcxLabel
              Left = 0
              Top = 4
              Caption = '[Lon] '
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              AnchorY = 12
            end
            object cxLabel11: TcxLabel
              Left = 99
              Top = 4
              Caption = '[Lat] '
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              AnchorY = 12
            end
            object cxButton5: TcxButton
              Left = 199
              Top = 2
              Width = 34
              Height = 20
              Cursor = crHandPoint
              Caption = #45803#44592
              Colors.Default = 16635384
              Colors.Normal = 16773362
              Colors.Hot = 16360076
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              ParentShowHint = False
              ShowHint = False
              TabOrder = 2
              TabStop = False
              OnClick = cxButton5Click
            end
            object cxtEndYval: TcxTextEdit
              Left = 136
              Top = 1
              TabStop = False
              AutoSize = False
              ParentFont = False
              Properties.ReadOnly = True
              Properties.OnChange = cxtEndYvalPropertiesChange
              Style.Color = clWindow
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = False
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 3
              Text = '99999'
              Height = 22
              Width = 63
            end
            object cxtEndXval: TcxTextEdit
              Left = 37
              Top = 1
              TabStop = False
              AutoSize = False
              ParentFont = False
              Properties.ReadOnly = True
              Properties.OnChange = cxtEndYvalPropertiesChange
              Style.Color = clWindow
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = False
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 4
              Text = '99999999'
              Height = 22
              Width = 63
            end
          end
          object cxtEndAreaDetail: TcxLabel
            Left = 702
            Top = 4
            AutoSize = False
            Caption = #49688#49436#50669
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsUltraFlat
            Style.Color = 12313840
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 7171437
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Vert = taVCenter
            Visible = False
            Height = 22
            Width = 119
            AnchorY = 15
          end
          object lblEndAreaName: TcxLabel
            Left = 595
            Top = 4
            AutoSize = False
            Caption = #49436#50872' '#44053#45224#44396' '#49688#49436#46041
            ParentFont = False
            Style.BorderStyle = ebsUltraFlat
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 7171437
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Vert = taVCenter
            Visible = False
            Height = 22
            Width = 107
            AnchorY = 15
          end
          object cxLEndAreaFlag: TcxLabel
            Left = 17
            Top = 21
            Cursor = crIBeam
            Caption = #46020#52265#51648
            Style.TextColor = 10329501
            Transparent = True
            OnClick = cxLEndAreaFlagClick
          end
          object BtnEdLock: TcxButton
            Left = 369
            Top = 7
            Width = 24
            Height = 21
            Cursor = crHandPoint
            Hint = 'F4)'#49688#51221
            LookAndFeel.NativeStyle = False
            OptionsImage.ImageIndex = 0
            OptionsImage.Images = cxImgLock
            ParentShowHint = False
            ShowHint = True
            SpeedButtonOptions.GroupIndex = 1
            SpeedButtonOptions.AllowAllUp = True
            TabOrder = 8
            TabStop = False
            OnClick = BtnEdLockClick
          end
          object BtnSR: TcxButton
            Left = 368
            Top = 52
            Width = 24
            Height = 22
            Cursor = crHandPoint
            Hint = #44221#47196#48372#44592
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              424D360400000000000036000000280000001000000010000000010020000000
              000000000000C40E0000C40E000000000000000000007E7E7EFF7E7E7EFF7E7E
              7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E
              7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFFE0E2E4FFE0E2
              E4FFE0E2E4FF77BFD2FF8BFDFFFF8BFDFFFF77BFD2FFE0E2E4FFE0E2E4FFE0E2
              E4FFE0E2E4FFE0E2E4FFE0E2E4FFE0E2E4FF7E7E7EFF7E7E7EFFE0E2E4FFE0E2
              E4FFE0E2E4FF77BFD2FF8BFDFFFF8BFDFFFF77BFD2FFE0E2E4FFE0E2E4FFE0E2
              E4FFE0E2E4FFE0E2E4FFE0E2E4FFE0E2E4FF7E7E7EFF7E7E7EFF77BFD2FF77BF
              D2FF77BFD2FF77BFD2FF8BFDFFFF8BFDFFFF77BFD2FF77BFD2FF77BFD2FF77BF
              D2FF77BFD2FF77BFD2FF77BFD2FF77BFD2FF7E7E7EFF7E7E7EFF8BFDFFFF8BFD
              FFFF8BFDFFFF8BFDFFFF8BFDFFFF8BFDFFFF8BFDFFFF8BFDFFFF8BFDFFFF8BFD
              FFFF8BFDFFFF8BFDFFFF8BFDFFFF8BFDFFFF7E7E7EFF7E7E7EFF8BFDFFFF8BFD
              FFFF8BFDFFFF8BFDFFFF8BFDFFFF8BFDFFFF8BFDFFFF8BFDFFFF8BFDFFFF8BFD
              FFFF8BFDFFFF8BFDFFFF8BFDFFFF8BFDFFFF7E7E7EFF7E7E7EFF77BFD2FF77BF
              D2FF77BFD2FF77BFD2FF8BFDFFFF8BFDFFFF77BFD2FF77BFD2FF77BFD2FF77BF
              D2FF333333FF77BFD2FF77BFD2FF77BFD2FF7E7E7EFF7E7E7EFFE0E2E4FFE0E2
              E4FFE0E2E4FF77BFD2FF8BFDFFFF8BFDFFFF77BFD2FFE0E2E4FFE0E2E4FFE0E2
              E4FF333333FFE0E2E4FFE0E2E4FFE0E2E4FF7E7E7EFF7E7E7EFFE0E2E4FFE0E2
              E4FFE0E2E4FF77BFD2FF8BFDFFFF8BFDFFFF77BFD2FFE0E2E4FFEFF0F1FFF9F9
              FAFF333333FFF9F9FAFFEFF0F1FFE0E2E4FF7E7E7EFF7E7E7EFFE0E2E4FFE0E2
              E4FFE0E2E4FF77BFD2FF8BFDFFFF8BFDFFFF77BFD2FFEFF0F1FFDADBF4FF0101
              ABFF0101ABFF0101ABFFDADBF4FFEFF0F1FF7E7E7EFF7E7E7EFFE0E2E4FFE0E2
              E4FFE0E2E4FF77BFD2FF8BFDFFFF8BFDFFFF77BFD2FFF9F9FAFF0101ABFF0202
              FFFF0101DDFF0101DDFF0101ABFFF9F9FAFF7E7E7EFF7E7E7EFFE0E2E4FFE0E2
              E4FFE0E2E4FF77BFD2FF8BFDFFFF8BFDFFFF77BFD2FFF9F9FAFF0101ABFF0202
              FFFF0101E8FF0101E8FF0101ABFFF9F9FAFF7E7E7EFF7E7E7EFFE0E2E4FFE0E2
              E4FFE0E2E4FF77BFD2FF8BFDFFFF8BFDFFFF77BFD2FFF9F9FAFF0101ABFF0000
              FFFF0000FFFF0000FFFF0101ABFFF9F9FAFF7E7E7EFF7E7E7EFFE0E2E4FFE0E2
              E4FFE0E2E4FF77BFD2FF8BFDFFFF8BFDFFFF77BFD2FFEFF0F1FFD9DAFAFF0101
              ABFF0101ABFF0101ABFFD9DAFAFFEFF0F1FF7E7E7EFF7E7E7EFFE0E2E4FFE0E2
              E4FFE0E2E4FF77BFD2FF8BFDFFFF8BFDFFFF77BFD2FFE0E2E4FFEFF0F1FFF9F9
              FAFFF9F9FAFFF9F9FAFFEFF0F1FFE0E2E4FF7E7E7EFF7E7E7EFF7E7E7EFF7E7E
              7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E
              7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 9
            OnEnter = BtnSREnter
            OnExit = BtnSRExit
            OnClick = BtnSRClick
          end
          object cxButton3: TcxButton
            Left = 316
            Top = 52
            Width = 24
            Height = 22
            Cursor = crHandPoint
            Hint = #44144#47532#44228#49328
            LookAndFeel.NativeStyle = False
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              424D360400000000000036000000280000001000000010000000010020000000
              000000000000C40E0000C40E0000000000000000000000000000000000000000
              0000000000000000000001013F681621BCE10202314800000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000D128FC1384EF5FF0C1087B700000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000033512C34F5FF5A66FFFF3C45F8FF00003557000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000040391BF1C1EFFFF3431F4FF302FFFFF0B09AFD9000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000100131C0B09EDFF0D09F4FF110BF3FF150FF7FF130DF1FF020038520000
              0000000000000000000000000000000000000000000000000000000000000000
              0000030188AD0E0AF8FF0803F0FF0603F2FF0A06F0FF110DFAFF0906BAE30000
              0000000000000000000000000000000000000000000000000000000000000B09
              272F0000E8FF0202F3FF2B29F7FF3936F5FF1818F5FF0506F2FF0E0FF5FF0301
              425800000000000000000000000000000000000000000000000000000000433E
              C4D73338F9FF2D31F8FF2928C1DA0B0B6A824142F0FF1718F5FF0403F5FF0705
              D4EE0000020300000000000000000000000000000000000000002722626B4951
              F6FF8D96FEFF7F7EE6F200000B0E0000000002013C494A4EF0FF2930F6FF1219
              F5FF121192AB000000000000000000000000000000000D0C2326545FF5FF8197
              FDFF888AF4FE0A091D20000000000000000000000000110F434DA4ACFAFF6B81
              FDFF5E6EFBFF292665700000000000000000000000006F74F3FF9CB3FCFF797D
              DFE90D0C222500000000000000000000000000000000000000002A29616997A5
              F9FF6A85FBFF5466F6FF1B18535A00000000000000002827676D252362680202
              0707000000000000000000000000000000000000000000000000000000002B27
              6B739DA9F9FF7E9AFBFF5769F4FF120F383C0000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000027246369A3B0F9FF94B4FCFF5564EAF504030D0E00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000110F383C888DE9EFB2CEFCFF6267D5DE00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000060516176365BEC36D72E1E800000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 10
            TabStop = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = cxButton3Click
            OnMouseDown = cxtCuTelMouseDown
          end
        end
        object pnl_charge: TPanel
          Left = 3
          Top = 161
          Width = 392
          Height = 23
          Alignment = taLeftJustify
          BevelKind = bkFlat
          BevelOuter = bvNone
          Caption = 'pnl_charge'
          Color = 8388863
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 2
          Visible = False
          OnClick = pnl_chargeClick
          DesignSize = (
            388
            19)
          object Lbl_Distance: TcxLabel
            Left = 309
            Top = 3
            Anchors = [akRight, akBottom]
            Caption = 'Lbl_Distance'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.TextColor = clWhite
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taRightJustify
            AnchorX = 385
          end
        end
        object PnlWkJi: TPanel
          Left = 313
          Top = 152
          Width = 110
          Height = 21
          Alignment = taLeftJustify
          BevelKind = bkFlat
          BevelOuter = bvNone
          Caption = ' '#44592#49324#51648#50896#44552
          Color = 16744448
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 3
          Visible = False
          DesignSize = (
            106
            17)
          object cxLblWkJAmt: TcxLabel
            Left = 70
            Top = 1
            Anchors = [akTop, akRight]
            Caption = '5,000'
            Style.TextColor = clWhite
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
            AnchorX = 102
            AnchorY = 9
          end
        end
        object gbRQAList: TcxGroupBox
          Left = 6
          Top = 161
          ParentBackground = False
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = 5815460
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Visible = False
          DesignSize = (
            391
            109)
          Height = 109
          Width = 391
          object grdRQAList: TcxGrid
            Left = 23
            Top = 2
            Width = 365
            Height = 104
            Anchors = [akLeft, akTop, akRight]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = False
            LookAndFeel.NativeStyle = True
            object RQAListView: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.CellHints = True
              OptionsBehavior.ColumnHeaderHints = False
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsCustomize.ColumnHidingOnGrouping = False
              OptionsCustomize.ColumnMoving = False
              OptionsData.Appending = True
              OptionsSelection.InvertSelect = False
              OptionsView.NoDataToDisplayInfoText = '  '
              OptionsView.DataRowHeight = 21
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 19
              object cxGridDBColumn6: TcxGridDBColumn
                DataBinding.FieldName = #49692#50948
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.GroupFooters = False
                Options.Grouping = False
                Options.Moving = False
                Options.Sorting = False
                Width = 30
              end
              object cxGridDBColumn8: TcxGridDBColumn
                DataBinding.FieldName = #45813#48320#50836#44552
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.GroupFooters = False
                Options.Grouping = False
                Options.Moving = False
              end
              object cxGridDBColumn7: TcxGridDBColumn
                DataBinding.FieldName = #45813#48320#51088'('#50500#51060#46356')'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.GroupFooters = False
                Options.Grouping = False
                Options.Moving = False
                Width = 120
              end
              object cxGridDBColumn9: TcxGridDBColumn
                DataBinding.FieldName = #50836#44552#49444#47749
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.GroupFooters = False
                Options.Grouping = False
                Options.Moving = False
                Width = 215
              end
              object RQAListViewColumn9: TcxGridDBColumn
                DataBinding.FieldName = #45813#48320#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 55
              end
              object RQAListViewColumn10: TcxGridDBColumn
                DataBinding.FieldName = #49436#48260
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Buttons = <
                  item
                    Caption = #49325#51228
                    Default = True
                    Kind = bkText
                  end>
                Properties.ViewStyle = vsButtonsAutoWidth
                HeaderAlignmentHorz = taCenter
                Options.ShowEditButtons = isebAlways
                Width = 40
              end
              object cxGridDBColumn10: TcxGridDBColumn
                DataBinding.FieldName = 'rKey'
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.GroupFooters = False
                Options.Grouping = False
                Options.Moving = False
                Width = 50
              end
              object cxGridDBColumn11: TcxGridDBColumn
                DataBinding.FieldName = 'uid'
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
              end
              object cxGridDBColumn12: TcxGridDBColumn
                DataBinding.FieldName = 'unm'
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
              end
              object cxGridDBColumn13: TcxGridDBColumn
                DataBinding.FieldName = 'sta'
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
              end
              object RQAListViewColumn1: TcxGridDBColumn
                DataBinding.FieldName = 'staddr'
                Visible = False
              end
              object RQAListViewColumn2: TcxGridDBColumn
                DataBinding.FieldName = 'via'
                Visible = False
              end
              object RQAListViewColumn3: TcxGridDBColumn
                DataBinding.FieldName = 'eda'
                Visible = False
              end
              object RQAListViewColumn4: TcxGridDBColumn
                DataBinding.FieldName = 'edaddr'
                Visible = False
              end
              object RQAListViewColumn5: TcxGridDBColumn
                DataBinding.FieldName = 'qtm'
                Visible = False
              end
              object RQAListViewColumn6: TcxGridDBColumn
                DataBinding.FieldName = 'aid'
                Visible = False
              end
              object RQAListViewColumn7: TcxGridDBColumn
                DataBinding.FieldName = 'anm'
                Visible = False
              end
              object RQAListViewColumn8: TcxGridDBColumn
                DataBinding.FieldName = 'atm'
                Visible = False
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = RQAListView
            end
          end
          object btnRQALExit: TcxButton
            Left = 2
            Top = 2
            Width = 20
            Height = 104
            Cursor = crHandPoint
            Caption = #45803#13#10#13#10#44592
            TabOrder = 1
          end
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 659
        Top = 130
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 5
        Height = 51
        Width = 305
        object mmoCuAppInfo: TcxRichEdit
          Left = 2
          Top = 1
          ParentFont = False
          Properties.ReadOnly = True
          Lines.Strings = (
            #52636#48156#51648':'
            #46020#52265#51648':'
            'E-Mail :')
          Style.Color = 12704475
          Style.Edges = []
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 49
          Width = 300
        end
      end
      object GbViaArea: TcxGroupBox
        Left = 0
        Top = 322
        Align = alClient
        ParentBackground = False
        ParentColor = False
        Style.Color = 5815460
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 11
        Height = 7
        Width = 933
        object cxLblBar2: TcxLabel
          Left = 8
          Top = 1
          AutoSize = False
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 5815460
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Height = 5
          Width = 383
        end
        object meoViaArea1: TcxTextEdit
          Tag = 1
          Left = 8
          Top = 5
          TabStop = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Text = #49340#49457#50669#51064#44540
          OnEnter = meoViaArea1Enter
          OnExit = meoViaArea1Exit
          OnKeyDown = meoViaArea1KeyDown
          OnKeyUp = meoViaArea1KeyUp
          OnMouseDown = meoStartAreaMouseDown
          OnMouseEnter = AutoSelectMouseEnter
          OnMouseLeave = AutoSelectMouseMouseLeave
          Width = 150
        end
        object cxViaAreaName1: TcxLabel
          Left = 159
          Top = 5
          AutoSize = False
          Caption = #49436#50872' '#44053#45224#44396' '#49340#49457#46041
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsUltraFlat
          Style.Color = clBtnFace
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = 12961221
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.Shadow = False
          Style.TextColor = 7171437
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Height = 22
          Width = 200
          AnchorY = 16
        end
        object BtnViaMinus1: TcxButton
          Tag = 1
          Left = 361
          Top = 6
          Width = 33
          Height = 20
          Hint = #49325#51228'(F6)'
          LookAndFeel.NativeStyle = False
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            424D760600000000000036000000280000001400000014000000010020000000
            000000000000C40E0000C40E0000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000104C3FF0104C3FF0105C6FF0208CDFF020AD1FF020BD4FF020B
            D4FF020BD4FF020AD4FF020AD4FF020BD4FF020BD4FF020BD4FF020BD4FF020B
            D4FF030BD6FF030CD9FF1018DCFF1922DEFF141CDCFF0308CDFF1B20D5FF191D
            D4FF1F24D6FF2C30DBFF3439DEFF3439DEFF3439DEFF3439DEFF3439DEFF3439
            DEFF3439DEFF3439DEFF3439DEFF3439DEFF3B3FE0FF494FE6FF575DEBFF656A
            EEFF2C35E5FF0811DBFF3F44DFFF2F34DAFF2328D7FF1F24D5FF2126D5FF2025
            D5FF1E23D2FF1E23D3FF1E23D2FF1E23D2FF1E23D2FF1F23D3FF1F24D4FF1F24
            D3FF2429D5FF353ADBFF4C51E2FF656AEBFF1825E8FF111DECFF8B8FF0FF8084
            EDFF6B6EE7FF4F54E1FF4044DCFF383DD8FF3134D4FF2D30D2FF2C2FD1FF2D31
            D2FF2F33D2FF3134D4FF3135D4FF3134D3FF292CD2FF2024D0FF2C30D4FF4B4F
            DEFF0D18E7FF4F5AF7FFC6C8F6FFC2C4F7FFB6B8F4FF989BEEFF8286EBFF7E82
            E9FF787BE8FF6D70E4FF6266E2FF5F63DFFF6266E2FF6367E2FF6165DFFF5F62
            DFFF5155DDFF3337D4FF2125CEFF2A2FD3FF0B13E1FF707BFDFFD8DAF9FFD3D4
            F8FFC8CAF6FFB1B3F2FF9FA1EFFF9FA1EFFF9EA0EFFF9B9EEEFF979AEDFF9395
            ECFF8C8FEAFF898BEAFF8689E9FF898BEAFF7A7EE7FF5C61E0FF3F44DBFF2F35
            D7FF090FE3FF737EFFFF6470FFFF4654FFFF2132FFFF1929FBFF1726F8FF1725
            F8FF1725F8FF1725F8FF1725F8FF1724F8FF1624F8FF1523F7FF1623F8FF1724
            F8FF1521F5FF111CF0FF0D15EAFF0910E6FF070DE3FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          TabStop = False
          OnClick = BtnViaMinus1Click
        end
      end
      object PnlBottom: TPanel
        Left = 0
        Top = 604
        Width = 933
        Height = 70
        Align = alBottom
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 12
        object Shape3: TShape
          Left = 0
          Top = 0
          Width = 933
          Height = 3
          Align = alTop
          Pen.Style = psClear
          ExplicitWidth = 597
        end
        object PnlBtm: TPanel
          Left = 0
          Top = 3
          Width = 933
          Height = 67
          Align = alBottom
          BevelKind = bkFlat
          BevelOuter = bvNone
          Color = 15790320
          ParentBackground = False
          TabOrder = 0
          OnMouseMove = PnlBtmMouseMove
          object btnCmdExit: TcxButton
            Left = 475
            Top = 2
            Width = 115
            Height = 58
            Cursor = crHandPoint
            Caption = #51333#47308'(F8)'
            LookAndFeel.NativeStyle = False
            TabOrder = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnCmdExitClick
          end
          object btnCmdJoin: TcxButton
            Left = 3
            Top = 2
            Width = 115
            Height = 32
            Cursor = crHandPoint
            Caption = #51217#49688'(F9)'
            LookAndFeel.NativeStyle = False
            TabOrder = 1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnCmdJoinClick
          end
          object btnCmdJoinCopy: TcxButton
            Left = 3
            Top = 36
            Width = 115
            Height = 24
            Cursor = crHandPoint
            Caption = #51217#49688#54980#48373#49324'(Z)'
            LookAndFeel.NativeStyle = False
            TabOrder = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = btnCmdJoinCopyClick
          end
          object btnCmdMultiCall: TcxButton
            Left = 239
            Top = 36
            Width = 115
            Height = 24
            Cursor = crHandPoint
            Caption = #48373#49688#53084'(T)'
            LookAndFeel.NativeStyle = False
            TabOrder = 3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnCmdMultiCallClick
          end
          object btnCmdNoSMS: TcxButton
            Left = 357
            Top = 2
            Width = 115
            Height = 32
            Cursor = crHandPoint
            Caption = 'SMS'#44144#48512'(R)'
            LookAndFeel.NativeStyle = False
            TabOrder = 4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = btnCmdNoSMSClick
          end
          object btnCmdQuestion: TcxButton
            Left = 239
            Top = 2
            Width = 115
            Height = 32
            Cursor = crHandPoint
            Caption = #47928#51032'(F12)'
            LookAndFeel.NativeStyle = False
            TabOrder = 5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnCmdQuestionClick
          end
          object btnCmdUpdSave: TcxButton
            Left = 248
            Top = 7
            Width = 115
            Height = 58
            Cursor = crHandPoint
            Caption = #49688#51221'(F7)'
            Colors.Default = 16635384
            Colors.Normal = 8454016
            Colors.Hot = 16360076
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 6
            TabStop = False
            Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnCmdUpdSaveClick
          end
          object btnCmdWait: TcxButton
            Left = 121
            Top = 2
            Width = 115
            Height = 32
            Cursor = crHandPoint
            Caption = #45824#44592'(F10)'
            LookAndFeel.NativeStyle = False
            TabOrder = 7
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnCmdWaitClick
          end
          object btnCmdWaitCopy: TcxButton
            Left = 121
            Top = 36
            Width = 115
            Height = 24
            Cursor = crHandPoint
            Caption = #45824#44592#54980#48373#49324'(S)'
            LookAndFeel.NativeStyle = False
            TabOrder = 8
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = btnCmdWaitCopyClick
          end
          object btnPickupInsert: TcxButton
            Left = 357
            Top = 36
            Width = 115
            Height = 24
            Cursor = crHandPoint
            Caption = #54589#50629#46321#47197'(P)'
            LookAndFeel.NativeStyle = False
            TabOrder = 9
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = btnPickupInsertClick
          end
        end
      end
      object pnlOrderInfoView: TPanel
        Left = 494
        Top = 82
        Width = 279
        Height = 234
        BevelKind = bkFlat
        BevelOuter = bvNone
        TabOrder = 9
        Visible = False
        DesignSize = (
          275
          230)
        object grpOrderInfoView: TcxGroupBox
          Left = 0
          Top = 63
          Alignment = alTopCenter
          Caption = #49345#49464' '#51221#48372
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 167
          Width = 274
          object cxMeoOrderUpInfo: TcxRichEdit
            Left = 3
            Top = 14
            Align = alClient
            Properties.ReadOnly = True
            Lines.Strings = (
              'cxMeoOrderUpInfo')
            Style.Color = 13893371
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Height = 146
            Width = 268
          end
        end
        object GrpCReason: TcxGroupBox
          Left = 0
          Top = 0
          Caption = #50724#45908#49345#53468' : '#51217#49688
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Height = 62
          Width = 274
          object lblCReason: TcxLabel
            Left = 5
            Top = 16
            AutoSize = False
            Caption = #44256#44061#47785#47197#50640' '#54364#49884#46120'('#49688#51221#50724#45908#50640' '#54620#54644', '#52712#49548#49324#50976#51080#51012#44221#50864')'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Vert = taVCenter
            Properties.WordWrap = True
            Transparent = True
            Height = 31
            Width = 265
            AnchorY = 32
          end
        end
        object cxButton2: TcxButton
          Left = 254
          Top = -1
          Width = 20
          Height = 20
          Anchors = [akTop, akRight]
          LookAndFeel.NativeStyle = False
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
          TabOrder = 2
          OnClick = cxButton2Click
        end
      end
      object pnlCustAppinfo: TcxGroupBox
        Left = -284
        Top = 556
        Caption = #50612#54540#51221#48372
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 8
        Visible = False
        DesignSize = (
          303
          141)
        Height = 145
        Width = 303
        object mmoCuInfo: TcxMemo
          Left = 3
          Top = 14
          Align = alClient
          Lines.Strings = (
            #44256
            #44061
            #50857
            #50612
            #54540
            #53076
            #46300' '
            ': '
            '%'
            '0'
            ':'
            's'
            #44256
            #44061
            #50612
            #54540
            #49444
            #52824
            #51068' '
            ': '
            '%'
            '1'
            ':'
            's'
            #44256
            #44061
            #50612
            #54540
            #49325
            #51228
            #51068' '
            ': '
            '%'
            '2'
            ':'
            's'
            #44256
            #44061
            #50612
            #54540
            #47560
            #51648
            #47561
            #51060
            #50857
            #51068' '
            ': '
            '%'
            '3'
            ':'
            's'
            #44256
            #44061
            #50612
            #54540
            #51648
            #50669' '
            '  '
            ': '
            '%'
            '4'
            ':'
            's'
            #45800
            #47568
            #47784
            #45944' '
            '  '
            '  '
            '  '
            ': '
            '%'
            '5'
            ':'
            's'
            #45800
            #47568
            'O'
            'S'
            #48260
            #51204' '
            '  '
            '  '
            ': '
            '%'
            '6'
            ':'
            's'
            #49324
            #50857
            #50668
            #48512' '
            '  '
            '  '
            '  '
            ': '
            '%'
            '7'
            ':'
            's')
          ParentFont = False
          Properties.AutoSelect = True
          Properties.MaxLength = 0
          Properties.ReadOnly = True
          Style.Color = clWindow
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #46027#50880#52404
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.BorderColor = clWindowFrame
          StyleFocused.Color = clWindow
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.TextColor = clWindowText
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 124
          Width = 297
        end
        object btn2: TcxButton
          Left = 270
          Top = 14
          Width = 30
          Height = 0
          Cursor = crHandPoint
          Anchors = [akTop, akRight, akBottom]
          Caption = #45803#13#10#13#10#13#10#44592
          Colors.Default = 16635384
          Colors.Normal = 16773362
          Colors.Hot = 16360076
          Colors.Pressed = 16644080
          Colors.Disabled = 4227327
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          OnClick = btn2Click
        end
      end
      object GrpHelp: TcxGroupBox
        Left = 618
        Top = 539
        Alignment = alTopCenter
        Caption = '*** '#44160#49353' '#50741#49496' '#50504#45236' ***'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 6
        Visible = False
        DesignSize = (
          347
          262)
        Height = 266
        Width = 347
        object cxLabel1: TcxLabel
          Left = 3
          Top = 14
          Align = alClient
          Caption = 
            #50500#47000#50752' '#44057#51060' '#45796#50577#54620' '#48169#48277#51004#47196' '#44256#44061#51312#54924' '#44032#45733' '#54633#45768#45796'.'#13#10#13#10'1. ['#51204#54868#48264#54840'] ['#50644#53552'] '#13#10'   --> '#44592#48376' '#51204#54868#48264#54840' ' +
            #51312#54924'('#44256#44061' or '#44592#49324')'#13#10#13#10'2. ['#51204#54868#48264#54840'] "+" ['#50644#53552'] '#13#10'   --> '#44256#44061#47532#49828#53944' '#50640#49436#47564' '#51312#54924'('#44592#49324#52404#53356' '#50504#54632 +
            ')'#13#10#13#10'3. ['#51204#54868#48264#54840'] "*" [DNIS] ['#50644#53552']'#13#10'   --> DNIS'#47196' '#45824#54364#48264#54840'/'#51648#49324' '#52286#50500#49436' '#44256#44061#51312#54924#13#10' ' +
            '      CID'#49436#48260' '#45796#50868#49884' '#53412#54256#51032' CID + DNIS '#51221#48372#47196' '#13#10'       '#51648#49324#52286#50500' '#51217#49688#44032#45733#13#10#13#10'4. ['#51204#54868#48264 +
            #54840'] "+*" [DNIS] ['#50644#53552']'#13#10'   --> DNIS'#47196' '#45824#54364#48264#54840'/'#51648#49324' '#52286#50500#49436' '#44256#44061#47532#49828#53944' '#50640#49436' '#51312#54924#13#10#13#10#54017'!.' +
            ' '#13#10' DNIS '#51312#54924' '#44592#45733#51012' '#49324#50857#54616#47140#47732' "'#49444#51221'>CID'#45824#54364#48264#54840'DNIS'#44288#47532'" '#13#10' '#47700#45684#50640#49436' DNIS '#51221#48372#47484' '#51077#47141#54644#51480#50556' ' +
            #49324#50857' '#44032#45733' '#54633#45768#45796'.'
          ParentColor = False
          ParentFont = False
          Style.Color = 15269887
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object cxButton7: TcxButton
          Left = 322
          Top = 15
          Width = 22
          Height = 22
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          LookAndFeel.NativeStyle = False
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
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = cxButton7Click
        end
      end
      object lst_BRList: TcxListBox
        Left = 426
        Top = 76
        Width = 314
        Height = 92
        ImeName = 'Microsoft Office IME 2007'
        ItemHeight = 15
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = #44404#47548
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        StyleFocused.Color = 11796479
        TabOrder = 13
        Visible = False
        OnDblClick = lst_BRListDblClick
        OnExit = lst_BRListExit
        OnKeyDown = lst_BRListKeyDown
      end
      object shrDNIS_DSP: TcxGroupBox
        Left = 599
        Top = 365
        Alignment = alTopCenter
        Caption = '***** DNIS '#45824#54364#48264#54840' / '#51648#49324' '#52286#44592' *****'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 10
        Visible = False
        Height = 67
        Width = 352
        object lblDNISInfo: TcxLabel
          Left = 3
          Top = 15
          AutoSize = False
          Caption = 
            'DNIS      : 1010'#13#10#45824#54364#48264#54840' : 15883333 (B100.'#53084#47560#45320#45824#47532#50868#51204')'#13#10#44256#44061#51204#54868' : 0102344' +
            '5566'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.WordWrap = True
          Transparent = True
          Height = 40
          Width = 272
        end
        object cxButton6: TcxButton
          Left = 303
          Top = 13
          Width = 45
          Height = 45
          Caption = #45803'  '#44592
          LookAndFeel.NativeStyle = False
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
      object PnlSuggest: TPanel
        Left = 436
        Top = 408
        Width = 305
        Height = 105
        BevelOuter = bvNone
        TabOrder = 14
        Visible = False
        object AdvGridSj: TAdvStringGrid
          Left = 0
          Top = 0
          Width = 305
          Height = 105
          Cursor = crDefault
          Align = alClient
          ColCount = 1
          DefaultRowHeight = 20
          DrawingStyle = gdsClassic
          FixedCols = 0
          RowCount = 5
          FixedRows = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goRowSelect]
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
          OnEnter = AdvGridSjEnter
          OnKeyDown = AdvGridSjKeyDown
          OnKeyPress = AdvGridSjKeyPress
          OnKeyUp = AdvGridSjKeyUp
          HoverRowCells = [hcNormal, hcSelected]
          OnClickCell = AdvGridSjClickCell
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ControlLook.FixedGradientHoverFrom = clGray
          ControlLook.FixedGradientHoverTo = clWhite
          ControlLook.FixedGradientDownFrom = clGray
          ControlLook.FixedGradientDownTo = clSilver
          ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
          ControlLook.DropDownHeader.Font.Color = clWindowText
          ControlLook.DropDownHeader.Font.Height = -11
          ControlLook.DropDownHeader.Font.Name = 'Tahoma'
          ControlLook.DropDownHeader.Font.Style = []
          ControlLook.DropDownHeader.Visible = True
          ControlLook.DropDownHeader.Buttons = <>
          ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
          ControlLook.DropDownFooter.Font.Color = clWindowText
          ControlLook.DropDownFooter.Font.Height = -11
          ControlLook.DropDownFooter.Font.Name = 'Tahoma'
          ControlLook.DropDownFooter.Font.Style = []
          ControlLook.DropDownFooter.Visible = True
          ControlLook.DropDownFooter.Buttons = <>
          Filter = <>
          FilterDropDown.Font.Charset = DEFAULT_CHARSET
          FilterDropDown.Font.Color = clWindowText
          FilterDropDown.Font.Height = -11
          FilterDropDown.Font.Name = 'Tahoma'
          FilterDropDown.Font.Style = []
          FilterDropDown.TextChecked = 'Checked'
          FilterDropDown.TextUnChecked = 'Unchecked'
          FilterDropDownClear = '(All)'
          FilterEdit.TypeNames.Strings = (
            'Starts with'
            'Ends with'
            'Contains'
            'Not contains'
            'Equal'
            'Not equal'
            'Clear')
          FixedColWidth = 257
          FixedRowHeight = 20
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = [fsBold]
          FloatFormat = '%.2f'
          HoverButtons.Buttons = <>
          HoverButtons.Position = hbLeftFromColumnLeft
          HTMLSettings.ImageFolder = 'images'
          HTMLSettings.ImageBaseName = 'img'
          PrintSettings.DateFormat = 'dd/mm/yyyy'
          PrintSettings.Font.Charset = DEFAULT_CHARSET
          PrintSettings.Font.Color = clWindowText
          PrintSettings.Font.Height = -11
          PrintSettings.Font.Name = 'Tahoma'
          PrintSettings.Font.Style = []
          PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
          PrintSettings.FixedFont.Color = clWindowText
          PrintSettings.FixedFont.Height = -11
          PrintSettings.FixedFont.Name = 'Tahoma'
          PrintSettings.FixedFont.Style = []
          PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
          PrintSettings.HeaderFont.Color = clWindowText
          PrintSettings.HeaderFont.Height = -11
          PrintSettings.HeaderFont.Name = 'Tahoma'
          PrintSettings.HeaderFont.Style = []
          PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
          PrintSettings.FooterFont.Color = clWindowText
          PrintSettings.FooterFont.Height = -11
          PrintSettings.FooterFont.Name = 'Tahoma'
          PrintSettings.FooterFont.Style = []
          PrintSettings.PageNumSep = '/'
          ScrollSynch = True
          ScrollType = ssFlat
          SearchFooter.FindNextCaption = 'Find &next'
          SearchFooter.FindPrevCaption = 'Find &previous'
          SearchFooter.Font.Charset = DEFAULT_CHARSET
          SearchFooter.Font.Color = clWindowText
          SearchFooter.Font.Height = -11
          SearchFooter.Font.Name = 'Tahoma'
          SearchFooter.Font.Style = []
          SearchFooter.HighLightCaption = 'Highlight'
          SearchFooter.HintClose = 'Close'
          SearchFooter.HintFindNext = 'Find next occurrence'
          SearchFooter.HintFindPrev = 'Find previous occurrence'
          SearchFooter.HintHighlight = 'Highlight occurrences'
          SearchFooter.MatchCaseCaption = 'Match case'
          SearchFooter.ResultFormat = '(%d of %d)'
          ShowSelection = False
          ShowDesignHelper = False
          SortSettings.DefaultFormat = ssAutomatic
          VAlignment = vtaCenter
          Version = '8.3.1.2'
          ExplicitWidth = 297
          ExplicitHeight = 99
          ColWidths = (
            257)
        end
      end
      object PnlPOISch: TPanel
        Left = 0
        Top = 219
        Width = 6
        Height = 6
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 15
        Visible = False
      end
      object pnlBubin: TcxGroupBox
        Left = -301
        Top = 177
        Caption = #48277#51064#47749'/'#48512#49436#47749' '#51312#54924
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 7
        Visible = False
        Height = 134
        Width = 305
        object cxtBubinSearchName: TcxTextEdit
          Left = 2
          Top = 13
          AutoSize = False
          ParentColor = True
          ParentFont = False
          Properties.ImeMode = imSHanguel
          Properties.OnChange = cxtBubinSearchNamePropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Text = 'cxtBubinSearchName'
          OnKeyPress = cxtBubinSearchNameKeyPress
          OnKeyUp = cxtBubinSearchNameKeyUp
          Height = 23
          Width = 163
        end
        object cxBtnSelect: TcxButton
          Left = 166
          Top = 14
          Width = 45
          Height = 21
          Cursor = crHandPoint
          Caption = #51312#54924
          Colors.Default = 16635384
          Colors.Normal = 16773362
          Colors.Hot = 16360076
          Colors.Pressed = 16644080
          Colors.Disabled = 4227327
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          OnClick = cxBtnSelectClick
        end
        object cxBtnChoice: TcxButton
          Left = 212
          Top = 14
          Width = 45
          Height = 21
          Cursor = crHandPoint
          Caption = #49440#53469
          Colors.Default = 16635384
          Colors.Normal = 16773362
          Colors.Hot = 16360076
          Colors.Pressed = 16644080
          Colors.Disabled = 4227327
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          TabOrder = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          OnClick = cxBtnChoiceClick
        end
        object cxBtnClose: TcxButton
          Left = 258
          Top = 14
          Width = 45
          Height = 21
          Cursor = crHandPoint
          Caption = #45803#44592
          Colors.Default = 16635384
          Colors.Normal = 16773362
          Colors.Hot = 16360076
          Colors.Pressed = 16644080
          Colors.Disabled = 4227327
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          TabOrder = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          OnClick = cxBtnCloseClick
        end
        object cxGrdBubin: TcxGrid
          Left = 3
          Top = 38
          Width = 299
          Height = 88
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          object cxBubinView: TcxGridDBTableView
            OnKeyUp = cxBubinViewKeyUp
            Navigator.Buttons.CustomButtons = <>
            OnCellDblClick = cxBubinViewCellDblClick
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.ColumnHeaderHints = False
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnMoving = False
            OptionsData.Appending = True
            OptionsData.Editing = False
            OptionsView.ScrollBars = ssVertical
            OptionsView.DataRowHeight = 16
            OptionsView.GridLineColor = 16635384
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 16
            OptionsView.Indicator = True
            object cxGrdCol1: TcxGridDBColumn
              DataBinding.FieldName = #48277#51064#47749
              PropertiesClassName = 'TcxLabelProperties'
              Options.Editing = False
              Options.Filtering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Width = 98
            end
            object cxGrdCol2: TcxGridDBColumn
              DataBinding.FieldName = #48277#51064#48512#49436#47749
              PropertiesClassName = 'TcxLabelProperties'
              Options.Editing = False
              Options.Filtering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Options.Moving = False
              Width = 69
            end
            object cxGrdCol3: TcxGridDBColumn
              DataBinding.FieldName = #45800#52629#48277#51064#47749
              PropertiesClassName = 'TcxLabelProperties'
              Options.Editing = False
              Options.Filtering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Options.Moving = False
              Width = 65
            end
            object cxGrdCol4: TcxGridDBColumn
              DataBinding.FieldName = #45800#52629#48512#49436#47749
              PropertiesClassName = 'TcxLabelProperties'
              Options.Editing = False
              Options.Filtering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Options.Moving = False
            end
            object cxGrdCol5: TcxGridDBColumn
              DataBinding.FieldName = #48277#51064#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Options.Editing = False
              Options.Filtering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Options.Moving = False
            end
          end
          object cxGrdBubinLevel1: TcxGridLevel
            GridView = cxBubinView
          end
        end
      end
      object PnlCtrlV: TPanel
        Left = 6
        Top = 243
        Width = 389
        Height = 46
        Alignment = taLeftJustify
        BevelKind = bkFlat
        BevelOuter = bvNone
        Caption = '  '#48537#50668#45347#44592' '#44160#49353' '#51473' ..'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 16
        Visible = False
        DesignSize = (
          385
          42)
        object btnCtrlVCancel: TcxButton
          Left = 307
          Top = 0
          Width = 65
          Height = 18
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #44160#49353#52712#49548
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744448
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
        end
      end
      object lblCuTel: TcxLabel
        Left = 188
        Top = 51
        AutoSize = False
        ParentColor = False
        Style.Color = 4227327
        Style.Edges = []
        Height = 5
        Width = 107
      end
    end
    object cxGBSearch: TcxGroupBox
      Left = -384
      Top = 93
      ParentBackground = False
      ParentColor = False
      Style.Color = 5815460
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Visible = False
      DesignSize = (
        393
        84)
      Height = 84
      Width = 393
      object cxButton46: TcxButton
        Left = 367
        Top = 2
        Width = 23
        Height = 79
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #45803#13#10#13#10#44592
        LookAndFeel.NativeStyle = False
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = cxButton46Click
      end
      object cxGrdCuList: TcxGrid
        Left = 2
        Top = 2
        Width = 364
        Height = 79
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = False
        LookAndFeel.NativeStyle = False
        object cxCustView: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxCustViewCellDblClick
          OnEditKeyPress = cxCustViewEditKeyPress
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.ColumnHeaderHints = False
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnMoving = False
          OptionsData.Appending = True
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = '  '
          OptionsView.ScrollBars = ssVertical
          OptionsView.DataRowHeight = 16
          OptionsView.GridLineColor = 16635384
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 16
          OptionsView.Indicator = True
          object cxGridDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#51068#47144#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.Moving = False
            Options.Sorting = False
          end
          object cxGridDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = #51204#54868#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Options.Editing = False
            Options.Filtering = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.Moving = False
            Width = 82
          end
          object cxGridDBColumn3: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#47749
            PropertiesClassName = 'TcxLabelProperties'
            Options.Editing = False
            Options.Filtering = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.Moving = False
          end
          object cxGridDBColumn4: TcxGridDBColumn
            DataBinding.FieldName = #48277#51064#47749
            PropertiesClassName = 'TcxLabelProperties'
            Options.Editing = False
            Options.Filtering = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.Moving = False
          end
          object cxGridDBColumn5: TcxGridDBColumn
            DataBinding.FieldName = #48277#51064#48512#49436
            PropertiesClassName = 'TcxLabelProperties'
            Options.Editing = False
            Options.Filtering = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.Moving = False
          end
          object cxGrdCol6: TcxGridDBColumn
            DataBinding.FieldName = #48277#51064#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol7: TcxGridDBColumn
            DataBinding.FieldName = #49345#45812#47700#47784
            PropertiesClassName = 'TcxLabelProperties'
          end
          object cxGrdCol8: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#50857#47700#47784
            PropertiesClassName = 'TcxLabelProperties'
          end
          object cxGrdCol9: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#44396#48516
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol10: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#46321#44553
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol11: TcxGridDBColumn
            DataBinding.FieldName = #50756#47308#44148#49688
            PropertiesClassName = 'TcxLabelProperties'
          end
          object cxGrdCol12: TcxGridDBColumn
            DataBinding.FieldName = #52712#49548#44148#49688
            PropertiesClassName = 'TcxLabelProperties'
          end
          object cxGrdCol13: TcxGridDBColumn
            DataBinding.FieldName = #54788#51116#47560#51068#47532#51648
            PropertiesClassName = 'TcxLabelProperties'
          end
          object cxGrdCol14: TcxGridDBColumn
            DataBinding.FieldName = #47560#51068#51648#44553#54943#49688
            PropertiesClassName = 'TcxLabelProperties'
          end
          object cxGrdCol15: TcxGridDBColumn
            DataBinding.FieldName = #47560#51068#51648#44553#45800#50948
            PropertiesClassName = 'TcxLabelProperties'
          end
          object cxGrdCol16: TcxGridDBColumn
            DataBinding.FieldName = #51648#44553#49345#54408#47749
            PropertiesClassName = 'TcxLabelProperties'
          end
          object cxGrdCol17: TcxGridDBColumn
            DataBinding.FieldName = #52636#48156#51648#47749
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol18: TcxGridDBColumn
            DataBinding.FieldName = #52636'1'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol19: TcxGridDBColumn
            DataBinding.FieldName = #52636'2'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol20: TcxGridDBColumn
            DataBinding.FieldName = #52636'3'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol21: TcxGridDBColumn
            DataBinding.FieldName = #52636'X'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol22: TcxGridDBColumn
            DataBinding.FieldName = #52636'Y'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol23: TcxGridDBColumn
            DataBinding.FieldName = #46020#52265#51648#47749
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol24: TcxGridDBColumn
            DataBinding.FieldName = #46020'1'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol25: TcxGridDBColumn
            DataBinding.FieldName = #46020'2'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol26: TcxGridDBColumn
            DataBinding.FieldName = #46020'3'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol27: TcxGridDBColumn
            DataBinding.FieldName = #46020'X'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol28: TcxGridDBColumn
            DataBinding.FieldName = #46020'Y'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol29: TcxGridDBColumn
            DataBinding.FieldName = 'SMS'#49688#49888#44144#48512
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
        end
        object cxGrdCuListLevel1: TcxGridLevel
          GridView = cxCustView
        end
      end
    end
    object cxLblCIDUseFlg: TcxLabel
      Left = 132
      Top = -8
      AutoSize = False
      Caption = #48156#49888#9742
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Style.BorderColor = 15076287
      Style.BorderStyle = ebsSingle
      Style.Color = 16441805
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 159988
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = [fsBold]
      Style.TextColor = 13719147
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Visible = False
      Height = 21
      Width = 50
      AnchorX = 157
      AnchorY = 3
    end
    object cxLblConfSlipUseFlg: TcxLabel
      Left = 278
      Top = -7
      AutoSize = False
      Caption = #51217#49688'No'
      ParentFont = False
      Style.BorderColor = 15076287
      Style.BorderStyle = ebsUltraFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Visible = False
      Height = 20
      Width = 57
      AnchorX = 307
      AnchorY = 3
    end
    object cxtCallTelNum: TcxTextEdit
      Left = 182
      Top = -8
      TabStop = False
      Enabled = False
      ParentColor = True
      ParentFont = False
      Properties.AutoSelect = False
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.Color = 16773362
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.TextColor = 16441805
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      Text = '0177521720'
      Visible = False
      Width = 37
    end
    object cxtJoinNum: TcxTextEdit
      Left = 335
      Top = -7
      TabStop = False
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clOlive
      StyleFocused.Color = 12615935
      StyleFocused.TextColor = clWhite
      TabOrder = 6
      Text = '99999988'
      Visible = False
      Width = 55
    end
    object cxtWorkerNm: TcxTextEdit
      Left = 219
      Top = -7
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderColor = clOlive
      Style.Color = 16773362
      StyleFocused.Color = 12615935
      StyleFocused.TextColor = clWhite
      TabOrder = 7
      Text = 'cxtWorkerNm'
      Visible = False
      Width = 58
    end
    object shaPrcMsg: TcxGroupBox
      Left = 522
      Top = 450
      Caption = #49436#48260#50640' '#50836#52397' '#52376#47532' '#51473' '#51077#45768#45796'.'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Visible = False
      Height = 73
      Width = 297
      object lblCapItem: TLabel
        Left = 46
        Top = 29
        Width = 87
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = #45224#51008#49884#44036' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblRltCnt: TLabel
        Left = 129
        Top = 29
        Width = 43
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Caption = '99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 168
        Top = 29
        Width = 23
        Height = 15
        AutoSize = False
        Caption = #52488
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object pnlServerDisconn: TPanel
        Left = 274
        Top = 14
        Width = 294
        Height = 52
        ParentBackground = False
        TabOrder = 0
        Visible = False
        object Label2: TLabel
          Left = -10
          Top = 2
          Width = 251
          Height = 36
          Alignment = taCenter
          Caption = #49436#48260#47196' '#48512#53552' '#50836#52397#50640' '#45824#54620' '#51025#45813#51060' '#50630#49845#45768#45796'.'#13#10#13#10#51116#50836#52397' '#54616#49464#50836'!!'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxButton4: TcxButton
          Left = 247
          Top = 26
          Width = 40
          Height = 21
          Cursor = crHandPoint
          Caption = #54869#51064
          Colors.Default = 16644080
          Colors.Normal = 16773362
          Colors.Hot = 16635384
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          TabOrder = 0
        end
      end
    end
  end
  object APnlViewMemo: TAdvPanel
    Left = 851
    Top = 276
    Width = 357
    Height = 327
    BevelOuter = bvNone
    Constraints.MinHeight = 150
    Constraints.MinWidth = 300
    TabOrder = 1
    UseDockManager = True
    Visible = False
    Version = '2.5.6.2'
    BorderColor = 11848145
    BorderWidth = 1
    Buffered = False
    CanMove = True
    CanSize = True
    Caption.Color = 13818344
    Caption.ColorTo = clNone
    Caption.CloseButtonColor = 16744448
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -12
    Caption.Font.Name = #44404#47548
    Caption.Font.Style = []
    Caption.Height = 26
    Caption.Indent = 0
    Caption.Visible = True
    DoubleBuffered = True
    ShowMoveCursor = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    TextVAlign = tvaCenter
    DesignSize = (
      357
      327)
    FullHeight = 200
    object APnlViewMemoClose: TcxButton
      Left = 333
      Top = 1
      Width = 22
      Height = 22
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      LookAndFeel.NativeStyle = False
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
      TabOrder = 0
    end
    object cxLabel2: TcxLabel
      Left = 8
      Top = 5
      Caption = #47700#47784' '#54869#51109
      Transparent = True
    end
  end
  object cxtStartGUIDEXval: TcxTextEdit
    Left = 370
    Top = 210
    TabStop = False
    AutoSize = False
    ParentFont = False
    Properties.ReadOnly = True
    Style.Color = clWindow
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 2
    Text = '99999'
    Visible = False
    Height = 22
    Width = 63
  end
  object cxtStartGUIDEYval: TcxTextEdit
    Left = 469
    Top = 210
    TabStop = False
    AutoSize = False
    ParentFont = False
    Properties.ReadOnly = True
    Style.Color = clWindow
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    Text = '99999'
    Visible = False
    Height = 22
    Width = 63
  end
  object cxtEndGUIDEXval: TcxTextEdit
    Left = 186
    Top = 339
    TabStop = False
    AutoSize = False
    ParentFont = False
    Properties.ReadOnly = True
    Style.Color = clWindow
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 4
    Text = '99999'
    Visible = False
    Height = 22
    Width = 63
  end
  object cxtEndGUIDEYval: TcxTextEdit
    Left = 281
    Top = 342
    TabStop = False
    AutoSize = False
    ParentFont = False
    Properties.ReadOnly = True
    Style.Color = clWindow
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 5
    Text = '99999'
    Visible = False
    Height = 22
    Width = 63
  end
  object pmBigo: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    Left = 840
    Top = 8
    object N1: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Caption = #49444#51221
      OnClick = N3Click
    end
  end
  object pmSpop: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    Left = 800
    Top = 8
    object MenuItem1: TMenuItem
      Caption = '-'
    end
    object N3: TMenuItem
      Caption = #49444#51221
      OnClick = N3Click
    end
  end
  object pmEpop: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    Left = 768
    Top = 8
    object MenuItem2: TMenuItem
      Caption = '-'
    end
    object N4: TMenuItem
      Caption = #49444#51221
      OnClick = N3Click
    end
  end
  object advPMnuWTR: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    Left = 736
    Top = 8
    object MenuItem3: TMenuItem
      Caption = #45824#44592#49884#44036'/'#45824#44592#50836#44552' '#52488#44592#54868
      OnClick = MenuItem3Click
    end
    object MenuItem4: TMenuItem
      Caption = '-'
    end
  end
  object tmMent: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = tmMentTimer
    Left = 652
    Top = 241
  end
  object tmFormClose: TTimer
    Enabled = False
    Interval = 80
    OnTimer = tmFormCloseTimer
    Left = 626
    Top = 136
  end
  object tmrDisAc: TTimer
    Enabled = False
    Interval = 30
    OnTimer = tmrDisAcTimer
    Left = 684
    Top = 136
  end
  object tmrStartPos: TTimer
    Enabled = False
    Interval = 30
    OnTimer = tmrStartPosTimer
    Left = 740
    Top = 136
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <>
    StorageName = 'cxPropertiesStore1'
    Left = 800
    Top = 136
  end
  object TT4: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TT4Timer
    Left = 403
    Top = 513
  end
  object cxImgLock: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 11010576
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000085CA0FF1066
          A0FF1066A0FF1066A0FF1066A0FF1066A0FF1066A0FF1066A0FF1066A0FF1066
          A0FF084C8AFF000000000000000000000000000000000000000034A4D6FF4D9F
          C7FF3B8EBBFF3B8EBBFF3B8EBBFF3488B6FF3B8EBBFF3B8EBBFF3B8EBBFF4D9F
          C7FF3388B8FF000000000000000000000000000000000000000032A9DBFF65BC
          DBFF65BCDBFF4BA2C9FF4596BBFF194864FF4596BBFF4BA2C9FF65BCDBFF65BC
          DBFF318CBCFF000000000000000000000000000000000000000031ADE0FF51B1
          D5FF51B1D5FF409DC7FF2B7194FF14405CFF2B7194FF409DC7FF51B1D5FF51B1
          D5FF3090C0FF00000000000000000000000000000000000000002FB2E5FF5FC6
          E5FF5FC6E5FF51B5D9FF37819FFF184761FF37819FFF51B5D9FF5FC6E5FF5FC6
          E5FF2E93C5FF00000000000000000000000000000000000000006DCCF0FF82CF
          E8FF82CFE8FF82CFE8FF74BAD4FF2B566EFF74BAD4FF82CFE8FF82CFE8FF82CF
          E8FF6CB6D9FF00000000000000000000000000000000000000006CD0F3FF8BDE
          F3FF8BDEF3FF8BDEF3FF8BDEF3FF84D7EEFF8BDEF3FF8BDEF3FF8BDEF3FF8BDE
          F3FF6BB9DBFF0000000000000000000000000000000000000000D3F1FCFF6BBA
          DCFF6BBADCFF6BBADCFF6BBADCFF6BBADCFF6BBADCFF6BBADCFF6BBADCFF6BBA
          DCFFD3EAF5FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001C7DB2FF155E85BF000000000000
          000000000000000000000000000000000000155E85BF1C7DB2FF000000000000
          0000000000000000000000000000000000001469A2FF0F4F79BF000000000000
          0000000000000000000000000000000000000F4F79BF1469A2FF000000000000
          0000000000000000000000000000000000000C5692FF09406DBF000000000000
          00000000000000000000000000000000000009406DBF0C5692FF000000000000
          000000000000000000000000000000000000084C8AFF063967BF000000000000
          000000000000000000000000000000000000063967BF084C8AFF000000000000
          000000000000000000000000000000000000446D93DB4E7BA5F405090D140000
          000000000000000000000000000005090D144E7BA5F4446D93DB000000000000
          0000000000000000000000000000000000001F364A715382ADFF345676B10509
          0D14000000000000000005090D14345676B15382ADFF1F364A71000000000000
          00000000000000000000000000000000000000000000345676B15382ADFF4E7B
          A5F4395E80C0395E80C04E7BA5F45382ADFF345676B100000000000000000000
          00000000000000000000000000000000000000000000000000001A2D3F603E66
          8ACE5382ADFF5382ADFF3E668ACE1A2D3F600000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000085CA0FF1066A0FF1066A0FF1066A0FF1066A0FF1066A0FF1066A0FF1066
          A0FF1066A0FF1066A0FF084C8AFF000000000000000000000000000000000000
          000034A4D6FF4D9FC7FF3B8EBBFF3B8EBBFF3B8EBBFF3488B6FF3B8EBBFF3B8E
          BBFF3B8EBBFF4D9FC7FF3388B8FF000000000000000000000000000000000000
          000032A9DBFF65BCDBFF65BCDBFF4BA2C9FF4596BBFF194864FF4596BBFF4BA2
          C9FF65BCDBFF65BCDBFF318CBCFF000000000000000000000000000000000000
          000031ADE0FF51B1D5FF51B1D5FF409DC7FF2B7194FF14405CFF2B7194FF409D
          C7FF51B1D5FF51B1D5FF3090C0FF000000000000000000000000000000000000
          00002FB2E5FF5FC6E5FF5FC6E5FF51B5D9FF37819FFF184761FF37819FFF51B5
          D9FF5FC6E5FF5FC6E5FF2E93C5FF000000000000000000000000000000000000
          00006DCCF0FF82CFE8FF82CFE8FF82CFE8FF74BAD4FF2B566EFF74BAD4FF82CF
          E8FF82CFE8FF82CFE8FF6CB6D9FF000000000000000000000000000000000000
          00006CD0F3FF8BDEF3FF8BDEF3FF8BDEF3FF8BDEF3FF84D7EEFF8BDEF3FF8BDE
          F3FF8BDEF3FF8BDEF3FF6BB9DBFF000000000000000000000000000000000000
          0000D3F1FCFF6BBADCFF6BBADCFF6BBADCFF6BBADCFF6BBADCFF6BBADCFF6BBA
          DCFF6BBADCFF6BBADCFFD3EAF5FF000000000000000000000000000000000000
          0000000000001B7BB0FF0D3D587F000000000000000000000000000000000000
          00000D3D587F1B7BB0FF00000000000000000000000000000000000000000000
          00000000000012649EFF09324F7F000000000000000000000000000000000000
          000009324F7F12649EFF00000000000000000000000000000000000000000000
          000000000000094E8BFF0427457F000000000000000000000000000000000000
          00000427457F094E8BFF00000000000000000000000000000000000000000000
          000000000000285F92F1214769AA000000000000000000000000000000000000
          0000214769AA285F92F100000000000000000000000000000000000000000000
          000000000000345676B14E7BA5F40F1B263A0000000000000000000000000F1B
          263A4E7BA5F4345676B100000000000000000000000000000000000000000000
          000000000000050A0E15446D93DB5382ADFF2E4E6BA2294660922E4E6BA25382
          ADFF446D93DB050A0E1500000000000000000000000000000000000000000000
          00000000000000000000050A0E152A47619348739BE75382ADFF48739BE72A47
          6193050A0E150000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object tmrKeyDown: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tmrKeyDownTimer
    Left = 267
    Top = 537
  end
  object tmrXYChange: TTimer
    Enabled = False
    Interval = 5
    OnTimer = tmrXYChangeTimer
    Left = 149
    Top = 529
  end
  object tmrDistance: TTimer
    Enabled = False
    Interval = 5
    OnTimer = tmrDistanceTimer
    Left = 61
    Top = 537
  end
  object tmrResponse: TTimer
    Enabled = False
    Interval = 5
    OnTimer = tmrResponseTimer
    Left = 435
    Top = 513
  end
  object IdHTTPResp: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 339
    Top = 544
  end
  object Pop01Setup: TPopupMenu
    Left = 502
    Top = 118
    object N5: TMenuItem
      Caption = #54788#50948#52824' '#51217#49688#52285' '#49884#51089' '#50948#52824#47196' '#49444#51221
      OnClick = N5Click
    end
  end
  object tmrWKSearch: TTimer
    Enabled = False
    Interval = 10
    OnTimer = tmrWKSearchTimer
    Left = 191
    Top = 540
  end
  object tmrThRealDis: TTimer
    Enabled = False
    OnTimer = tmrThRealDisTimer
    Left = 147
    Top = 561
  end
  object tmrCharge: TTimer
    Enabled = False
    Interval = 10
    OnTimer = tmrChargeTimer
    Left = 211
    Top = 561
  end
  object tmrViaKm: TTimer
    Enabled = False
    Interval = 10
    OnTimer = tmrViaKmTimer
    Left = 265
    Top = 564
  end
end

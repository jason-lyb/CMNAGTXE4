object frm_VerCheck: Tfrm_VerCheck
  Left = 469
  Top = 387
  BorderStyle = bsSingle
  Caption = 'frm_VerCheck'
  ClientHeight = 188
  ClientWidth = 349
  Color = clWindow
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesigned
  Scaled = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 25
    Width = 349
    Height = 163
    Align = alClient
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 12
      Top = 14
      AutoSize = False
      Caption = #50724#47448#47700#49464#51648' '#54364#49884#50689#50669
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Color = 16774371
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = [fsBold]
      Style.TextColor = clRed
      Style.IsFontAssigned = True
      Height = 59
      Width = 325
    end
    object cxLabel3: TcxLabel
      Left = 12
      Top = 81
      AutoSize = False
      Caption = ' '#54532#47196#44536#47016#51012' '#45796#49884' '#49444#52824#54616#49884#47140#47732' '#50500#47000#51032' '#47553#53356#47484' '#53364#47533#54616#49464#50836' '
      Style.TextColor = clBlack
      Style.TextStyle = []
      Style.TransparentBorder = False
      Transparent = True
      Height = 19
      Width = 325
    end
    object cxButton2: TcxButton
      Left = 100
      Top = 126
      Width = 161
      Height = 27
      Cursor = crHandPoint
      Caption = #53084#47560#45320' '#49444#52824#54168#51060#51648
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 2
      TabStop = False
      OnClick = cxButton2Click
    end
    object cxLabel4: TcxLabel
      Left = 12
      Top = 100
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.TextColor = clBlack
      Style.TextStyle = []
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Transparent = True
      Height = 20
      Width = 325
    end
  end
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 349
    Height = 25
    Cursor = crSizeAll
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '  '#53084#47560#45320' '#48260#51204#50504#45236
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
      349
      25)
    object btnClose: TcxButton
      Left = 313
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
    object clbCuSeq: TcxLabel
      Left = 521
      Top = 4
      Caption = #44256#44061#49692#48264
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
end

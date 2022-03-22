object Frm_WOR13: TFrm_WOR13
  Left = 400
  Top = 218
  Caption = 'Frm_WOR13'
  ClientHeight = 385
  ClientWidth = 637
  Color = 16774371
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 25
    Width = 637
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      637
      33)
    object cxGroupBox1: TcxGroupBox
      Left = 2
      Top = 2
      Anchors = [akLeft, akTop, akRight, akBottom]
      Style.BorderStyle = ebsFlat
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Height = 29
      Width = 633
      object lb_bad_score: TLabel
        Left = 336
        Top = 8
        Width = 131
        Height = 15
        AutoSize = False
        Caption = #54168#45328#54000#51216#49688'[ 0 ]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lb_good_score: TLabel
        Left = 492
        Top = 8
        Width = 131
        Height = 15
        AutoSize = False
        Caption = #54540#47084#49828#51216#49688'[ 0 ]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lb_wk_info: TLabel
        Left = 14
        Top = 8
        Width = 299
        Height = 15
        AutoSize = False
        Caption = #44592#49324#51221#48372'[ '#53084#47560#45320#49324#48264' '#51088#52404#49324#48264'+'#51060#47492' ]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
    end
  end
  object cxPlusLog: TcxGrid
    Left = 0
    Top = 58
    Width = 637
    Height = 327
    Align = alClient
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    object cxPlusLog_List: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Filter.Options = [fcoShowOperatorDescription, fcoSoftNull]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnSorting = False
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = ' '
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 23
      Styles.Selection = Frm_Main.cxStyle8
      object cxPlusLog_ListColumn1: TcxGridDBColumn
        DataBinding.FieldName = #51068#49884
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 90
      end
      object cxPlusLog_ListColumn2: TcxGridDBColumn
        DataBinding.FieldName = #50629#52404#47749'('#48376#49324'/'#51648#49324#47749')'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Grouping = False
        Options.Moving = False
        Options.Sorting = False
        Width = 220
      end
      object cxPlusLog_ListColumn3: TcxGridDBColumn
        DataBinding.FieldName = #54540#47084#49828' '#51216#49688
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Grouping = False
        Options.Moving = False
        Options.Sorting = False
        Width = 70
      end
      object cxPlusLog_ListColumn4: TcxGridDBColumn
        DataBinding.FieldName = #53440#51077
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Grouping = False
        Options.Moving = False
        Options.Sorting = False
        Width = 100
      end
      object cxPlusLog_ListColumn5: TcxGridDBColumn
        DataBinding.FieldName = #54540#47084#49828' '#45236#50857
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Moving = False
        Width = 160
      end
    end
    object cxPlusLog_Level: TcxGridLevel
      GridView = cxPlusLog_List
    end
  end
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 637
    Height = 25
    Cursor = crSizeAll
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '   '#54540#47084#49828' '#47196#44536' '#54788#54889
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
      637
      25)
    object Label2: TLabel
      Left = 434
      Top = 8
      Width = 9
      Height = 12
      Anchors = [akTop, akRight]
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExplicitLeft = 460
    end
    object cxLblActive: TLabel
      Left = 0
      Top = 0
      Width = 637
      Height = 5
      Align = alTop
      AutoSize = False
      Color = 33023
      ParentColor = False
      Transparent = False
    end
    object btnClose: TcxButton
      Left = 601
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
    object btnSearch: TcxButton
      Left = 551
      Top = 2
      Width = 49
      Height = 22
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #51312#54924
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 1
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      OnClick = btnSearchClick
    end
    object dtEdDate: TcxDateEdit
      Left = 448
      Top = 3
      TabStop = False
      Anchors = [akTop, akRight]
      EditValue = 39717d
      ParentFont = False
      ParentShowHint = False
      Properties.DateButtons = [btnToday]
      Properties.SaveTime = False
      Properties.ShowTime = False
      ShowHint = True
      Style.BorderStyle = ebsOffice11
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = []
      Style.LookAndFeel.SkinName = 'Sharp'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      StyleFocused.Color = 11796479
      StyleFocused.LookAndFeel.SkinName = 'Sharp'
      StyleHot.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 2
      Width = 86
    end
    object dtStDate: TcxDateEdit
      Left = 339
      Top = 3
      TabStop = False
      Anchors = [akTop, akRight]
      EditValue = 39717d
      ParentFont = False
      ParentShowHint = False
      Properties.DateButtons = [btnToday]
      Properties.SaveTime = False
      Properties.ShowTime = False
      ShowHint = True
      Style.BorderStyle = ebsOffice11
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = []
      Style.LookAndFeel.SkinName = 'Sharp'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      StyleFocused.Color = 11796479
      StyleFocused.LookAndFeel.SkinName = 'Sharp'
      StyleHot.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 3
      Width = 90
    end
  end
end

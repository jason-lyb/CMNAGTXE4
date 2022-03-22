object Frm_JON31: TFrm_JON31
  Left = 40
  Top = 50
  Caption = #49345#45812' '#51648#46020
  ClientHeight = 701
  ClientWidth = 874
  Color = clBtnFace
  Constraints.MinHeight = 380
  Constraints.MinWidth = 595
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesigned
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 15
  object Shape1: TShape
    Left = 0
    Top = 33
    Width = 874
    Height = 2
    Align = alTop
    Brush.Style = bsClear
    Pen.Style = psClear
    ExplicitTop = 78
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 35
    Width = 874
    Height = 666
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object pnlList: TPanel
      Left = 0
      Top = 0
      Width = 241
      Height = 666
      Align = alLeft
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object cxGridName: TcxGrid
        Left = 0
        Top = 33
        Width = 241
        Height = 633
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object cxViewName: TcxGridTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellClick = cxViewNameCellClick
          OnSelectionChanged = cxViewNameSelectionChanged
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 23
          Styles.Background = Frm_Main.cxStyleGridBackColor
          object cxColName: TcxGridColumn
            Caption = #47749#52845
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 100
          end
          object cxColNameAddr: TcxGridColumn
            Caption = #51452#49548
            PropertiesClassName = 'TcxLabelProperties'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 133
          end
          object cxColNameTel: TcxGridColumn
            Caption = #51204#54868#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 121
          end
          object cxColNameX: TcxGridColumn
            Caption = 'X'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxColNameY: TcxGridColumn
            Caption = 'Y'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxColNameSido: TcxGridColumn
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxColNameGugun: TcxGridColumn
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxColNameDong: TcxGridColumn
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
        end
        object cxLevelName: TcxGridLevel
          GridView = cxViewName
        end
      end
      object pnlLargeMenu: TPanel
        Left = 0
        Top = 0
        Width = 241
        Height = 33
        Align = alTop
        BevelKind = bkFlat
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 1
        DesignSize = (
          237
          29)
        object btnSearch: TcxButton
          Left = 160
          Top = 2
          Width = 63
          Height = 23
          Anchors = []
          Caption = #44160#49353
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 0
          OnClick = btnSearchClick
        end
        object edtName: TcxTextEdit
          Left = 3
          Top = 4
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          OnKeyPress = edtNameKeyPress
          Width = 125
        end
      end
    end
    object pnlWeb: TPanel
      Left = 241
      Top = 0
      Width = 633
      Height = 666
      Align = alClient
      BevelKind = bkFlat
      BevelOuter = bvNone
      TabOrder = 1
      object WebBrowser1: TWebBrowser
        Left = 0
        Top = 0
        Width = 629
        Height = 662
        Align = alClient
        TabOrder = 0
        OnNavigateComplete2 = WebBrowser1NavigateComplete2
        OnDocumentComplete = WebBrowser1DocumentComplete
        ExplicitLeft = 392
        ExplicitTop = 112
        ExplicitWidth = 300
        ExplicitHeight = 150
        ControlData = {
          4C000000024100006B4400000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
  end
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 874
    Height = 33
    Cursor = crSizeAll
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '  '#49345#45812#51648#46020
    Color = 12566463
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4227072
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    OnMouseDown = pnlTitleMouseDown
    DesignSize = (
      874
      33)
    object cxLblActive: TLabel
      Left = 0
      Top = 0
      Width = 874
      Height = 5
      Align = alTop
      AutoSize = False
      Color = 33023
      ParentColor = False
      Transparent = False
      OnMouseDown = pnlTitleMouseDown
    end
    object cxButton1: TcxButton
      Left = 838
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
      OnClick = btnCloseClick
    end
  end
  object pnlHelp: TcxGroupBox
    Left = 192
    Top = 151
    Alignment = alTopCenter
    Caption = #49345#45812#51648#46020' '#49324#50857#48169#48277
    TabOrder = 2
    Visible = False
    OnMouseDown = pnlHelpMouseDown
    DesignSize = (
      549
      334)
    Height = 338
    Width = 549
    object cxLabel2: TcxLabel
      Left = 3
      Top = 17
      Align = alClient
      Caption = 
        #10'* '#51648#46020#49324#50857'('#44592#48376')'#10' - '#51648#46020#47484' '#46300#47000#44536'('#50812#51901' '#47560#50864#49828' '#53364#47533' '#54980' '#47560#50864#49828' '#51060#46041')'#54616#50668' '#51648#46020#51060#46041' '#44032#45733#54633#45768#45796'.'#10' - '#47749#52845#44160#49353 +
        #51004#47196' '#49345#51216' '#48143' '#44592#44288' '#46321#51012' '#49789#44172' '#52286#51012' '#49688' '#51080#49845#45768#45796'.'#10' - '#44256#44061#51060' '#51452#49548'('#48264#51648')'#47196' '#50836#52397' '#49884' '#54644#45817' '#51452#49548#47196' '#51221#54869#54620' '#50948#52824#47484' '#52286 +
        #51012' '#49688' '#51080#49845#45768#45796'.'#10#10'* '#47749#52845#44160#49353#10' - '#54665#51221#46041' + '#47749#52845' '#44160#49353#51060' '#44032#45733#54633#45768#45796'.'#10' - '#54665#51221#46041#51008' '#49440#53469'('#49884#46020', '#49884#44400#44396') '#48143' '#51077 +
        #47141'('#44160#49353#50612' '#48516#49437')'#51060' '#44032#45733#54633#45768#45796'.'#10' - '#54665#51221#46041' '#49440#53469#51008' ['#49884#46020'] '#49440#53469' '#54980' ['#49884#44400#44396'] '#49440#53469' '#44032#45733#54633#45768#45796'.'#10' - '#54665#51221#46041' '#51077#47141 +
        #51008' ['#47749#52845' + '#45800#50948']'#47196' '#51077#47141#54616#49492#50556' '#54633#45768#45796'.<'#49569#54028#44396'(O), '#44032#46973#46041'(O), '#49569#54028'(X), '#44032#46973'(X)>'#10' - '#50696'> '#54665#51221#46041' ' +
        #51077#47141' '#44160#49353'('#44396': '#49569#54028#44396', '#46041': '#44032#46973#46041', '#47749#52845': '#49472#47088' '#51077#47141' '#49884')'#10'    1, '#49569#54028#44396' '#49472#47088#10'    2, '#49569#54028#44396' '#44032#46973#46041' ' +
        #49472#47088#10'    3, '#44032#46973#46041' '#49472#47088#10' - '#54665#51221#46041' '#49440#53469' '#54980' '#54665#51221#46041' '#51077#47141' '#49884' '#51077#47141#46108' '#54665#51221#46041#51012' '#50864#49440#51004#47196' '#44160#49353#54633#45768#45796'.'#10' - ['#51648 +
        #46020#45236' '#44160#49353']'#51008' '#54788#51228' '#51648#46020#50640' '#54364#49884#46108' '#51648#50669#50640' '#54620#54644' '#47749#52845#51004#47196' '#44160#49353#54633#45768#45796'.'#10#10'* '#51452#49548#44160#49353#10' - '#54665#51221#46041' '#49440#53469' '#48143' '#48264#51648' '#51077#47141#54616 +
        #50668' '#44160#49353#51060' '#44032#45733#54633#45768#45796'.'#10#10'* '#47749#52845#44160#49353#44208#44284#10' - '#47749#52845#44160#49353#51004#47196' '#51312#54924#46108' '#44208#44284#45716' '#53364#47533#44284' '#45908#48660#53364#47533#51060' '#44032#45733#54633#45768#45796'.'#10' - '#53364#47533' ' +
        ': '#49440#53469#54620' '#51648#50669#51004#47196' '#51648#46020' '#51060#46041'.'#10
      ParentColor = False
      Style.Color = 15269887
    end
    object btnHelpClose: TcxButton
      Left = 524
      Top = 14
      Width = 22
      Height = 22
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      LookAndFeel.NativeStyle = False
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btnHelpCloseClick
    end
  end
  object TT3: TTimer
    Enabled = False
    Interval = 10
    OnTimer = TT3Timer
    Left = 199
    Top = 65532
  end
  object TT3_1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = TT3_1Timer
    Left = 247
    Top = 65535
  end
end

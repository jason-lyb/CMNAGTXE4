object Frm_WOR12: TFrm_WOR12
  Left = 291
  Top = 142
  BorderStyle = bsNone
  Caption = 'Frm_WOR12'
  ClientHeight = 586
  ClientWidth = 776
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 776
    Height = 586
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 1
    object pnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 772
      Height = 25
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '   '#44592#49324#52880#49772' '#51068#44292#52376#47532
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
        772
        25)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 772
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = False
      end
      object btnClose: TcxButton
        Left = 737
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
    object cxGroupBox1: TcxGroupBox
      Left = 4
      Top = 30
      Caption = '1. '#54028#51068#51456#48708', '#45824#49345#44592#49324' '#46321#47197
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Height = 107
      Width = 763
      object btnRegist: TcxButton
        Left = 632
        Top = 22
        Width = 113
        Height = 41
        Cursor = crHandPoint
        Caption = #45824#49345#44592#49324' '#46321#47197
        Colors.Default = 16635384
        Colors.Normal = 12189690
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        OnClick = btnRegistClick
      end
      object cxLabel97: TcxLabel
        Left = 35
        Top = 18
        Caption = '1, '#50641#49472#54028#51068'('#48143' '#53581#49828#53944#54028#51068')'#50640' '#51088#52404#49324#48264' '#48324' '#51077#44552#44552#50529#51012' '#51221#47532#54616#49464#50836'.('#52636#44552#51008' '#47560#51060#45320#49828'(-)'#47484' '#48537#50668#51452#49464#50836')'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object lb_HdSel: TcxLabel
        Left = 35
        Top = 84
        Caption = #8251#48376#49324#51204#52404' '#49440#53469#49884' '#51648#49324#53076#46300' '#54596#49688#51077#45768#45796'. '#51648#49324#53076#46300#44032' '#50630#45716' '#44592#49324#45716' '#47532#49828#53944#50640#49436' '#51088#46041#51004#47196' '#51228#50808#46121#45768#45796
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = #44404#47548
        Style.Font.Style = [fsBold]
        Style.TextColor = clRed
        Style.IsFontAssigned = True
        Transparent = True
        Visible = False
      end
      object Label3: TcxLabel
        Left = 36
        Top = 64
        Caption = '3, '#50641#49472#54028#51068'('#48143' '#53599#53944#49828#54028#51068') '#47700#47784'(3'#48264#54665') '#54637#47785#46244#50640' '#51648#49324#53076#46300'(4'#48264#54665')'#47484' '#44845' '#45347#50612#51452#49464#50836'.'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        Visible = False
      end
      object cxLabel1: TcxLabel
        Left = 35
        Top = 40
        Caption = '2, '#50864#52769#51032' ['#45824#49345#44592#49324' '#46321#47197'] '#48260#53948#51012' '#53364#47533#54616#50668' '#54028#51068' '#48143' '#48537#50668#45347#44592' '#46321#51004#47196' '#44592#49324#47484' '#46321#47197#54616#49464#50836'.'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 4
      Top = 141
      Caption = '2. '#45824#49345#44592#49324' '#54869#51064' '#48143' '#52649#51204
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Height = 332
      Width = 763
      object pgbImport: TAdvProgressBar
        Left = 10
        Top = 270
        Width = 740
        Height = 20
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
        Visible = False
      end
      object btnAddMemo: TcxButton
        Left = 547
        Top = 294
        Width = 73
        Height = 25
        Cursor = crHandPoint
        Caption = #47700#47784#46321#47197
        Colors.Default = 16635384
        Colors.Normal = clWhite
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        OnClick = btnAddMemoClick
      end
      object btnExec: TcxButton
        Left = 623
        Top = 294
        Width = 113
        Height = 25
        Cursor = crHandPoint
        Caption = #51068#44292#52649#51204#54616#44592
        Colors.Default = 16635384
        Colors.Normal = 12189690
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
        OnClick = btnExecClick
      end
      object btnSelectedRowDelete: TcxButton
        Left = 632
        Top = 17
        Width = 113
        Height = 25
        Cursor = crHandPoint
        Caption = #49440#53469#54665#49325#51228
        Colors.Default = 16635384
        Colors.Normal = clWhite
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
        OnClick = btnSelectedRowDeleteClick
      end
      object cbbMemoType: TcxComboBox
        Left = 403
        Top = 299
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #49440#53469#46108#54665#51032' '#47700#47784#48320#44221
          #51204#52404#47700#47784' '#47700#47784#48320#44221
          #44592#51316#47700#47784#46244#50640' '#47700#47784#52628#44032
          #47700#47784#44032' '#50630#45716' '#54637#47785#50640#47564' '#47700#47784#52628#44032)
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
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
        TabOrder = 3
        Text = #49440#53469#46108#54665#51032' '#47700#47784#48320#44221
        Width = 141
      end
      object cxGridWkCash: TcxGrid
        Left = 10
        Top = 46
        Width = 740
        Height = 219
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        PopupMenu = pmGrid
        TabOrder = 4
        LookAndFeel.NativeStyle = False
        object cxGridBandedTableView2: TcxGridBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Bands = <
            item
            end>
        end
        object cxViewWkCash: TcxGridTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxViewWkCashCellDblClick
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.InvertSelect = False
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 23
          object cxColSabun: TcxGridColumn
            Caption = #51088#52404#49324#48264
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 54
          end
          object cxColWkSabun: TcxGridColumn
            Caption = #49324#48264
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.Moving = False
            Width = 54
          end
          object cxColName: TcxGridColumn
            Caption = #49457#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 70
          end
          object cxColStatus: TcxGridColumn
            Caption = #49345#53468
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 40
          end
          object cxColCurrCash: TcxGridColumn
            Caption = #44592#51316#52880#49772
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 54
          end
          object cxColInOut: TcxGridColumn
            Caption = #44396#48516
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 33
          end
          object cxColCash: TcxGridColumn
            Caption = #51077#44552#50529
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.GroupFooters = False
            Options.Grouping = False
          end
          object cxColResult: TcxGridColumn
            Caption = #52649#51204#54980#52880#49772
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 65
          end
          object cxColMemo: TcxGridColumn
            Caption = #47700#47784
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 133
          end
          object cxColCode: TcxGridColumn
            Caption = #53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxColDesc: TcxGridColumn
            Caption = #48708#44256
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 153
          end
          object cxColBrNo: TcxGridColumn
            Caption = #51648#49324#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            HeaderGlyphAlignmentHorz = taCenter
          end
        end
        object cxLevelWkCash: TcxGridLevel
          GridView = cxViewWkCash
        end
      end
      object cxLabel126: TcxLabel
        Left = 73
        Top = 301
        Caption = #47700'   '#47784
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.LookAndFeel.Kind = lfFlat
        Style.Shadow = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 93
        AnchorY = 309
      end
      object edtMemo: TcxTextEdit
        Left = 123
        Top = 299
        ParentFont = False
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
        TabOrder = 6
        OnKeyUp = edtMemoKeyUp
        Width = 277
      end
      object lblBranch: TcxLabel
        Left = 35
        Top = 17
        AutoSize = False
        Caption = 'lblBranch'
        ParentFont = False
        Style.BorderStyle = ebsFlat
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
        Properties.Alignment.Vert = taVCenter
        Height = 25
        Width = 534
        AnchorY = 30
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 4
      Top = 477
      Caption = '3. '#44208#44284' '#54869#51064' '#48143' '#45796#50868#47196#46300
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Height = 102
      Width = 763
      object btn1: TcxButton
        Left = 622
        Top = 27
        Width = 113
        Height = 51
        Cursor = crHandPoint
        Caption = #44208#44284#45796#50868#47196#46300
        Colors.Default = 16635384
        Colors.Normal = 12189690
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        OnClick = btn1Click
      end
      object grp3: TcxGroupBox
        Left = 35
        Top = 27
        TabOrder = 1
        Height = 52
        Width = 581
        object lblResult: TLabel
          Left = 8
          Top = 11
          Width = 292
          Height = 12
          Caption = #45824#49345#44592#49324' '#46321#47197' '#54980' '#51068#44292#52649#51204#54616#44592' '#48260#53948#51012' '#53364#47533#54644' '#51452#49464#50836'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label1: TLabel
          Left = 8
          Top = 31
          Width = 336
          Height = 12
          Caption = '['#44208#44284#45796#50868#47196#46300'] '#48260#53948#51012' '#53364#47533#54616#50668' '#50641#49472#47196' '#45796#50868#47196#46300' '#44032#45733#54633#45768#45796'.'
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
  end
  object pnlDuplicate: TPanel
    Left = 49
    Top = 236
    Width = 261
    Height = 173
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = 16774371
    TabOrder = 0
    Visible = False
    OnMouseMove = pnlDuplicateMouseMove
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 224
      Height = 12
      Caption = #51088#52404#49324#48264' '#51473#48373#51004#47196' '#44592#49324#47484' '#49440#53469#54644' '#51452#49464#50836'.'
      OnMouseMove = pnlDuplicateMouseMove
    end
    object grdDuplicate: TAdvStringGrid
      Left = 0
      Top = 29
      Width = 257
      Height = 140
      Cursor = crDefault
      Align = alBottom
      ColCount = 4
      DrawingStyle = gdsClassic
      FixedCols = 0
      RowCount = 2
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
      HoverRowCells = [hcNormal, hcSelected]
      OnDblClickCell = grdDuplicateDblClickCell
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
      FilterDropDown.Font.Name = 'MS Sans Serif'
      FilterDropDown.Font.Style = []
      FilterDropDownClear = '(All)'
      FilterEdit.TypeNames.Strings = (
        'Starts with'
        'Ends with'
        'Contains'
        'Not contains'
        'Equal'
        'Not equal'
        'Clear')
      FixedColWidth = 36
      FixedRowHeight = 22
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
      PrintSettings.Font.Name = 'MS Sans Serif'
      PrintSettings.Font.Style = []
      PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
      PrintSettings.FixedFont.Color = clWindowText
      PrintSettings.FixedFont.Height = -11
      PrintSettings.FixedFont.Name = 'MS Sans Serif'
      PrintSettings.FixedFont.Style = []
      PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
      PrintSettings.HeaderFont.Color = clWindowText
      PrintSettings.HeaderFont.Height = -11
      PrintSettings.HeaderFont.Name = 'MS Sans Serif'
      PrintSettings.HeaderFont.Style = []
      PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
      PrintSettings.FooterFont.Color = clWindowText
      PrintSettings.FooterFont.Height = -11
      PrintSettings.FooterFont.Name = 'MS Sans Serif'
      PrintSettings.FooterFont.Style = []
      PrintSettings.PageNumSep = '/'
      SearchFooter.FindNextCaption = 'Find &next'
      SearchFooter.FindPrevCaption = 'Find &previous'
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -11
      SearchFooter.Font.Name = 'MS Sans Serif'
      SearchFooter.Font.Style = []
      SearchFooter.HighLightCaption = 'Highlight'
      SearchFooter.HintClose = 'Close'
      SearchFooter.HintFindNext = 'Find next occurence'
      SearchFooter.HintFindPrev = 'Find previous occurence'
      SearchFooter.HintHighlight = 'Highlight occurences'
      SearchFooter.MatchCaseCaption = 'Match case'
      SearchFooter.ResultFormat = '(%d of %d)'
      SortSettings.DefaultFormat = ssAutomatic
      Version = '8.4.7.0'
      ColWidths = (
        36
        72
        69
        69)
    end
  end
  object pmGrid: TPopupMenu
    AutoHotkeys = maManual
    Left = 524
    Top = 267
    object mniRegist: TMenuItem
      Caption = #45824#49345#44592#49324' '#46321#47197
      OnClick = mniRegistClick
    end
    object mniGridSep: TMenuItem
      Caption = '-'
    end
    object mniDelete: TMenuItem
      Caption = #49440#53469#54665' '#49325#51228
      OnClick = mniDeleteClick
    end
    object mniClear: TMenuItem
      Caption = #52488#44592#54868
      OnClick = mniClearClick
    end
  end
end

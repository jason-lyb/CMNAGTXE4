object frm_RoadAddr: Tfrm_RoadAddr
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_RoadAddr'
  ClientHeight = 480
  ClientWidth = 506
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object pnl_Main: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 0
    Height = 480
    Width = 506
    object Pnl_Title: TPanel
      Left = 3
      Top = 3
      Width = 500
      Height = 38
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '   '#46020#47196#47749#51452#49548#44160#49353
      Color = 12566463
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnMouseDown = Pnl_TitleMouseDown
      DesignSize = (
        500
        38)
      object BtnClose: TcxButton
        Left = 471
        Top = 11
        Width = 20
        Height = 19
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
        OnClick = BtnCloseClick
      end
    end
    object pnl_Bottom: TcxGroupBox
      Left = 3
      Top = 369
      Align = alBottom
      PanelStyle.Active = True
      TabOrder = 1
      Height = 108
      Width = 500
      object btnSetAddr: TcxButton
        Left = 419
        Top = 58
        Width = 78
        Height = 42
        Cursor = crHandPoint
        Caption = #51452#49548#49440#53469
        Colors.Normal = 16773362
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
        WordWrap = True
        OnClick = btnSetAddrClick
      end
      object cxLabel4: TcxLabel
        Left = 7
        Top = 6
        AutoSize = False
        ParentColor = False
        Style.BorderStyle = ebsFlat
        Style.Color = clWhite
        Style.TextColor = clBlack
        Style.TransparentBorder = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 49
        Width = 490
        AnchorY = 31
      end
      object cxLabel2: TcxLabel
        Left = 7
        Top = 7
        AutoSize = False
        Caption = #46020#47196#47749#51452#49548
        ParentColor = False
        Style.BorderStyle = ebsFlat
        Style.Color = 15790320
        Style.Edges = []
        Style.TextColor = clBlack
        Style.TransparentBorder = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 49
        Width = 74
        AnchorX = 44
        AnchorY = 32
      end
      object lb_RoadAddr1: TcxLabel
        Left = 85
        Top = 16
        AutoSize = False
        Caption = #46020#47196#47749#51452#49548
        ParentColor = False
        Style.BorderStyle = ebsFlat
        Style.Color = clWhite
        Style.Edges = []
        Style.TextColor = clBlack
        Style.TransparentBorder = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 33
        Width = 408
        AnchorY = 33
      end
      object cxLabel5: TcxLabel
        Left = 7
        Top = 54
        AutoSize = False
        ParentColor = False
        Style.BorderStyle = ebsFlat
        Style.Color = clWhite
        Style.TextColor = clBlack
        Style.TransparentBorder = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 51
        Width = 410
        AnchorY = 80
      end
      object cxLabel3: TcxLabel
        Left = 7
        Top = 55
        AutoSize = False
        Caption = #49345#49464#51452#49548#51077#47141
        ParentColor = False
        Style.BorderStyle = ebsFlat
        Style.Color = 15790320
        Style.Edges = []
        Style.TextColor = clBlack
        Style.TransparentBorder = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 49
        Width = 74
        AnchorX = 44
        AnchorY = 80
      end
      object edt_RoadAddr2: TcxTextEdit
        Left = 82
        Top = 61
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.MaxLength = 13
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        OnKeyDown = edt_RoadAddr2KeyDown
        Height = 35
        Width = 332
      end
    end
    object pnl_Top: TcxGroupBox
      Left = 3
      Top = 41
      Align = alTop
      PanelStyle.Active = True
      TabOrder = 2
      Height = 48
      Width = 500
      object btn_Addr: TcxButton
        Left = 419
        Top = 8
        Width = 75
        Height = 31
        Cursor = crHandPoint
        Caption = #44160#49353
        Colors.Normal = 16773362
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
        OnClick = btn_AddrClick
      end
      object edt_Addr: TcxTextEdit
        Left = 103
        Top = 6
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.MaxLength = 13
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnKeyDown = edt_AddrKeyDown
        Height = 35
        Width = 314
      end
      object cxLabel1: TcxLabel
        Left = 9
        Top = 7
        AutoSize = False
        Caption = #51452#49548#51077#47141
        ParentColor = False
        Style.BorderStyle = ebsFlat
        Style.Color = clWhite
        Style.TextColor = clBlack
        Style.TransparentBorder = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 33
        Width = 96
        AnchorX = 57
        AnchorY = 24
      end
    end
    object pnl_Grid: TcxGroupBox
      Left = 3
      Top = 89
      Align = alClient
      PanelStyle.Active = True
      TabOrder = 3
      Height = 280
      Width = 500
      object cxGridKeyPhone: TcxGrid
        Left = 3
        Top = 3
        Width = 494
        Height = 274
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object cxGridRoadAddr: TcxGridDBTableView
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
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCellClick = cxGridRoadAddrCellClick
          DataController.DataModeController.SmartRefresh = True
          DataController.Filter.Options = [fcoShowOperatorDescription, fcoSoftNull]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Filtering.MRUItemsList = False
          Filtering.ColumnMRUItemsList = False
          Filtering.ColumnMRUItemsListCount = 0
          OptionsBehavior.CopyCaptionsToClipboard = False
          OptionsBehavior.ColumnHeaderHints = False
          OptionsBehavior.ColumnMergedGrouping = True
          OptionsBehavior.CopyPreviewToClipboard = False
          OptionsBehavior.ExpandMasterRowOnDblClick = False
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.ColumnSorting = False
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsView.FocusRect = False
          OptionsView.NoDataToDisplayInfoText = '  '
          OptionsView.DataRowHeight = 40
          OptionsView.ExpandButtonsForEmptyDetails = False
          OptionsView.GridLineColor = clSilver
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 23
          Styles.Selection = Frm_Main.cxStyle11
          object cxColView1Column1: TcxGridDBColumn
            DataBinding.FieldName = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.CellMerging = True
            Width = 37
          end
          object cxColView1Column2: TcxGridDBColumn
            DataBinding.FieldName = #46020#47196#47749#51452#49548
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 377
          end
          object cxColView1Column3: TcxGridDBColumn
            DataBinding.FieldName = #50864#54200#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 66
          end
        end
        object cxLevelKeyPhone: TcxGridLevel
          GridView = cxGridRoadAddr
        end
      end
    end
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    ReuseSocket = rsTrue
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 128
    Top = 8
  end
end

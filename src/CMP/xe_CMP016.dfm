object Frm_CMP016: TFrm_CMP016
  Left = 946
  Top = 435
  BorderStyle = bsNone
  Caption = 'Frm_CMP016'
  ClientHeight = 374
  ClientWidth = 778
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
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
    Width = 778
    Height = 374
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = 16444898
    TabOrder = 0
    object cxGroupBox1: TcxGroupBox
      Left = 0
      Top = 25
      Align = alTop
      ParentBackground = False
      ParentColor = False
      Style.BorderStyle = ebsFlat
      Style.Color = clBtnFace
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      TabOrder = 0
      DesignSize = (
        774
        40)
      Height = 40
      Width = 774
      object Shape1: TShape
        Left = 16
        Top = 7
        Width = 124
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object lbl65: TcxLabel
        Left = 31
        Top = 12
        Caption = #51648'     '#49324
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 60
        AnchorY = 20
      end
      object lblBrSosok: TcxLabel
        Left = 98
        Top = 6
        AutoSize = False
        Caption = #49548#49549
        ParentColor = False
        Style.BorderStyle = ebsSingle
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 26
        Width = 423
        AnchorX = 310
        AnchorY = 19
      end
      object btn1: TcxButton
        Left = 595
        Top = 6
        Width = 86
        Height = 26
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #51312#54924
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 2
        OnClick = btn1Click
      end
      object btnUpdate: TcxButton
        Left = 684
        Top = 6
        Width = 86
        Height = 26
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #51200#51109
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 3
        OnClick = btnUpdateClick
      end
    end
    object PnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 774
      Height = 25
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '   '#48277#51064#50724#45908' '#44592#49324#50896#52380#51669#49688' '#49444#51221
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
        774
        25)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 774
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = False
        ExplicitWidth = 768
      end
      object btnClose: TcxButton
        Left = 744
        Top = 1
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
    object cxGrid9: TcxGrid
      Left = 0
      Top = 67
      Width = 774
      Height = 303
      Align = alBottom
      BevelInner = bvNone
      BevelOuter = bvNone
      TabOrder = 2
      LookAndFeel.NativeStyle = False
      object cxViewKeyPhone: TcxGridBandedTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.CopyCaptionsToClipboard = False
        OptionsBehavior.CopyPreviewToClipboard = False
        OptionsBehavior.ExpandMasterRowOnDblClick = False
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnHorzSizing = False
        OptionsCustomize.ColumnSorting = False
        OptionsCustomize.BandMoving = False
        OptionsCustomize.ColumnVertSizing = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CellMultiSelect = True
        OptionsSelection.InvertSelect = False
        OptionsView.FocusRect = False
        OptionsView.NoDataToDisplayInfoText = '  '
        OptionsView.CellAutoHeight = True
        OptionsView.DataRowHeight = 22
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        OptionsView.HeaderHeight = 23
        OptionsView.BandHeaderHeight = 23
        Styles.Selection = Frm_Main.cxStyle11
        Bands = <
          item
            Caption = #45824#54364#48264#54840
            Width = 114
          end
          item
            Caption = #53440#49324#44592#49324' '#51088#49324#53084' '#54980#48520' '#44277#50976#50724#45908' '#52376#47532#49884' 3.3%'#50896#52380#51669#49688' '#52264#44048
            Width = 330
          end
          item
            Caption = #51088#49324#44592#49324' '#51088#49324#53084' '#54980#48520' '#50724#45908' '#52376#47532#49884' 3.3%'#50896#52380#51669#49688' '#52264#44048
            Width = 306
          end
          item
            Caption = #48277#51064#44592#49324'('#53440#49324')'
            Position.BandIndex = 1
            Position.ColIndex = 0
            Width = 90
          end
          item
            Caption = #51068#48152#44592#49324'('#53440#49324')'
            Position.BandIndex = 1
            Position.ColIndex = 1
            Width = 90
          end
          item
            Caption = #48277#51064#44592#49324'('#51088#49324')'
            Position.BandIndex = 2
            Position.ColIndex = 0
            Width = 90
          end
          item
            Caption = #51068#48152#44592#49324'('#51088#49324')'
            Position.BandIndex = 2
            Position.ColIndex = 1
            Width = 90
          end>
        object cxGridBandedColumn1: TcxGridBandedColumn
          Caption = #45824#54364#48264#54840
          DataBinding.ValueType = 'Integer'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Options.Moving = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn6: TcxGridBandedColumn
          Caption = #49884#46020
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridBandedColumn7: TcxGridBandedColumn
          Caption = #49884#44400#44396
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGridBandedColumn2: TcxGridBandedColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.ReadOnly = False
          Properties.OnEditValueChanged = cxGridBandedColumn2PropertiesEditValueChanged
          MinWidth = 64
          Options.Moving = False
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
          IsCaptionAssigned = True
        end
        object cxGridBandedColumn3: TcxGridBandedColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.ReadOnly = False
          Properties.OnEditValueChanged = cxGridBandedColumn3PropertiesEditValueChanged
          Options.Moving = False
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
          IsCaptionAssigned = True
        end
        object cxGridBandedColumn4: TcxGridBandedColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.ReadOnly = False
          Properties.OnEditValueChanged = cxGridBandedColumn4PropertiesEditValueChanged
          Options.Moving = False
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
          IsCaptionAssigned = True
        end
        object cxGridBandedColumn5: TcxGridBandedColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.ReadOnly = False
          Properties.OnEditValueChanged = cxGridBandedColumn5PropertiesEditValueChanged
          Options.Moving = False
          Position.BandIndex = 6
          Position.ColIndex = 0
          Position.RowIndex = 0
          IsCaptionAssigned = True
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxViewKeyPhone
      end
    end
  end
end

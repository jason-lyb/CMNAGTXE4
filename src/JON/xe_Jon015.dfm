object Frm_JON015: TFrm_JON015
  Tag = -1
  Left = 635
  Top = 379
  Caption = 'Frm_JON015'
  ClientHeight = 280
  ClientWidth = 639
  Color = 16444898
  Constraints.MinHeight = 200
  Constraints.MinWidth = 650
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  FormStyle = fsStayOnTop
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object cxGridMultiCall: TcxGrid
    Left = 0
    Top = 33
    Width = 639
    Height = 247
    Align = alClient
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    object cxViewMultiCall: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.CustomizeDialog = False
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCellDblClick = cxViewMultiCallCellDblClick
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      OptionsBehavior.CellHints = True
      OptionsBehavior.DragHighlighting = False
      OptionsBehavior.DragOpening = False
      OptionsBehavior.DragScrolling = False
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.ExpandMasterRowOnDblClick = False
      OptionsBehavior.ImmediateEditor = False
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsData.Editing = False
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = ' '
      OptionsView.ExpandButtonsForEmptyDetails = False
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 23
      Preview.RightIndent = 10
      object cxViewMultiCallColumn1: TcxGridDBColumn
        DataBinding.FieldName = #49692#48264
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 32
      end
      object cxViewMultiCallColumn2: TcxGridDBColumn
        Caption = #49884#46020
        DataBinding.FieldName = #52636#49884#46020
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentVert = vaTop
        Width = 20
      end
      object cxViewMultiCallColumn3: TcxGridDBColumn
        Caption = #49884#44400#44396
        DataBinding.FieldName = #52636#49884#44400#44396
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 41
      end
      object cxViewMultiCallColumn4: TcxGridDBColumn
        Caption = #51021#47732#46041
        DataBinding.FieldName = #52636#51021#47732#46041
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 54
      end
      object cxViewMultiCallColumn5: TcxGridDBColumn
        Caption = #51648#47749
        DataBinding.FieldName = #52636#51648#47749
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 50
      end
      object cxViewMultiCallColumn6: TcxGridDBColumn
        Caption = #49464#48512#49444#47749
        DataBinding.FieldName = #52636#49464#48512#49444#47749
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 57
      end
      object cxViewMultiCallColumn7: TcxGridDBColumn
        DataBinding.FieldName = '->'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 20
      end
      object cxViewMultiCallColumn8: TcxGridDBColumn
        Caption = #49884#46020
        DataBinding.FieldName = #46020#49884#46020
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 20
      end
      object cxViewMultiCallColumn9: TcxGridDBColumn
        Caption = #49884#44400#44396
        DataBinding.FieldName = #46020#49884#44400#44396
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 41
      end
      object cxViewMultiCallColumn10: TcxGridDBColumn
        Caption = #51021#47732#46041
        DataBinding.FieldName = #46020#51021#47732#46041
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 69
      end
      object cxViewMultiCallColumn11: TcxGridDBColumn
        Caption = #51648#47749
        DataBinding.FieldName = #46020#51648#47749
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 50
      end
      object cxViewMultiCallColumn12: TcxGridDBColumn
        Caption = #49464#48512#49444#47749
        DataBinding.FieldName = #46020#49464#48512#49444#47749
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 56
      end
      object cxViewMultiCallColumn20: TcxGridDBColumn
        DataBinding.FieldName = #44144#47532
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object cxViewMultiCallColumn13: TcxGridDBColumn
        DataBinding.FieldName = #50836#44552
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0;-,0'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 50
      end
      object cxViewMultiCallColumn14: TcxGridDBColumn
        DataBinding.FieldName = #51201#50836
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 60
      end
      object cxViewMultiCallColumn15: TcxGridDBColumn
        DataBinding.FieldName = #44208#51116
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 35
      end
      object cxViewMultiCallColumn16: TcxGridDBColumn
        DataBinding.FieldName = #51340#54364'1'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 20
      end
      object cxViewMultiCallColumn17: TcxGridDBColumn
        DataBinding.FieldName = #51340#54364'2'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 20
      end
      object cxViewMultiCallColumn18: TcxGridDBColumn
        DataBinding.FieldName = #48277#51064#51064#51613
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 64
      end
      object cxViewMultiCallColumn19: TcxGridDBColumn
        DataBinding.FieldName = #50836#44552#48120#51648#51221
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Visible = False
      end
      object cxViewMultiCallColumn21: TcxGridDBColumn
        DataBinding.FieldName = #50696#49345#49884#44036
        Visible = False
      end
      object cxViewMultiCallColumn22: TcxGridDBColumn
        DataBinding.FieldName = #53084#47560#45320'2'
        Visible = False
      end
      object cxViewMultiCallColumn23: TcxGridDBColumn
        DataBinding.FieldName = #44592#49324#49688#49688#47308
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 65
      end
    end
    object cxLevelMultiCall: TcxGridLevel
      GridView = cxViewMultiCall
    end
  end
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 639
    Height = 33
    Cursor = crSizeAll
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '  '#48373#49688#53084' '#51217#49688
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
      639
      33)
    object cxLblActive: TLabel
      Left = 0
      Top = 0
      Width = 639
      Height = 5
      Align = alTop
      AutoSize = False
      Color = 33023
      ParentColor = False
      Transparent = False
    end
    object cxButton1: TcxButton
      Left = 603
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
    object Label1: TcxLabel
      Left = 244
      Top = 11
      Hint = 'Color'
      Anchors = [akLeft, akTop, akRight]
      Caption = '['#49325#51228'] '#45908#48660#53364#47533#54616#49464#50836'.'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #47569#51008#44256#46357
      Style.Font.Style = [fsBold]
      Style.TextColor = 16744448
      Style.IsFontAssigned = True
      Transparent = True
      OnMouseDown = pnlTitleMouseDown
    end
  end
end

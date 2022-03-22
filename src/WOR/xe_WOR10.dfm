object Frm_WOR10: TFrm_WOR10
  Left = 513
  Top = 200
  Caption = 'Frm_WOR10'
  ClientHeight = 682
  ClientWidth = 984
  Color = clBtnFace
  Constraints.MinHeight = 682
  Constraints.MinWidth = 984
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Shape3: TShape
    Left = 0
    Top = 88
    Width = 984
    Height = 2
    Align = alTop
    Brush.Style = bsClear
    Pen.Style = psClear
    ExplicitLeft = -6
    ExplicitTop = 23
    ExplicitWidth = 305
  end
  object cxGridPickup: TcxGrid
    Left = 0
    Top = 90
    Width = 984
    Height = 592
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    PopupMenu = pmPickup
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    object cxViewPickup: TcxGridDBTableView
      PopupMenu = pmPickup
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
      OnCellDblClick = cxViewPickupCellDblClick
      DataController.DataModeController.SmartRefresh = True
      DataController.Filter.Options = [fcoShowOperatorDescription, fcoSoftNull]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = cxColViewWkHistoryColumn1
        end>
      DataController.Summary.SummaryGroups = <>
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
      OptionsView.FocusRect = False
      OptionsView.NoDataToDisplayInfoText = '  '
      OptionsView.DataRowHeight = 22
      OptionsView.ExpandButtonsForEmptyDetails = False
      OptionsView.Footer = True
      OptionsView.GridLineColor = clSilver
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 23
      Styles.OnGetContentStyle = cxViewPickupStylesGetContentStyle
      Styles.Selection = Frm_Main.cxStyle11
      object cxColViewWkHistoryColumn1: TcxGridDBColumn
        DataBinding.FieldName = #46321#47197#48264#54840
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object cxColViewWkHistoryColumn2: TcxGridDBColumn
        DataBinding.FieldName = #49345#53468
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 32
      end
      object cxColViewWkHistoryColumn3: TcxGridDBColumn
        DataBinding.FieldName = #48376#49324#44592#54840
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 54
      end
      object cxColViewWkHistoryColumn4: TcxGridDBColumn
        DataBinding.FieldName = #46321#47197#44592#49324
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 58
      end
      object cxColViewPickupColumn15: TcxGridDBColumn
        DataBinding.FieldName = #46321#47197#44592#49324#47749
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 66
      end
      object cxColViewPickupColumn14: TcxGridDBColumn
        DataBinding.FieldName = #51204#54868#48264#54840
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 91
      end
      object cxColViewWkHistoryColumn5: TcxGridDBColumn
        DataBinding.FieldName = #51648#49324#47749
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 117
      end
      object cxColViewWkHistoryColumn6: TcxGridDBColumn
        DataBinding.FieldName = #46321#47197#49884#44036
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 127
      end
      object cxColViewWkHistoryColumn7: TcxGridDBColumn
        DataBinding.FieldName = #52636#48156#51648
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 154
      end
      object cxColViewWkHistoryColumn8: TcxGridDBColumn
        DataBinding.FieldName = #46020#52265#51648
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 20
      end
      object cxColViewWkHistoryColumn9: TcxGridDBColumn
        DataBinding.FieldName = #48176#52264#44592#49324
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 54
      end
      object cxColViewPickupColumn16: TcxGridDBColumn
        DataBinding.FieldName = #48176#52264#44592#49324#47749
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 66
      end
      object cxColViewWkHistoryColumn10: TcxGridDBColumn
        DataBinding.FieldName = #48176#52264#44592#49324#51204#54868#48264#54840
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 110
      end
      object cxColViewWkHistoryColumn11: TcxGridDBColumn
        DataBinding.FieldName = #48176#52264#49884#44036
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 130
      end
      object cxColViewPickupColumn1: TcxGridDBColumn
        DataBinding.FieldName = #46321#47197#44592#49324#49324#48264
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object cxColViewPickupColumn2: TcxGridDBColumn
        DataBinding.FieldName = #52636#48156#51648'1'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object cxColViewPickupColumn3: TcxGridDBColumn
        DataBinding.FieldName = #52636#48156#51648'2'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object cxColViewPickupColumn4: TcxGridDBColumn
        DataBinding.FieldName = #52636#48156#51648'3'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object cxColViewPickupColumn5: TcxGridDBColumn
        DataBinding.FieldName = #52636#48156#51648'4'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object cxColViewPickupColumn6: TcxGridDBColumn
        DataBinding.FieldName = #46020#52265#51648'1'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object cxColViewPickupColumn7: TcxGridDBColumn
        DataBinding.FieldName = #46020#52265#51648'2'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object cxColViewPickupColumn8: TcxGridDBColumn
        DataBinding.FieldName = #46020#52265#51648'3'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object cxColViewPickupColumn9: TcxGridDBColumn
        DataBinding.FieldName = #46020#52265#51648'4'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object cxColViewPickupColumn10: TcxGridDBColumn
        DataBinding.FieldName = #49345#53468#53076#46300
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object cxColViewPickupColumn11: TcxGridDBColumn
        DataBinding.FieldName = #48176#52264#44592#49324#49324#48264
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object cxColViewPickupColumn12: TcxGridDBColumn
        DataBinding.FieldName = #46321#47197#44592#49324#53076#46300
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object cxColViewPickupColumn13: TcxGridDBColumn
        DataBinding.FieldName = #48176#52264#44592#49324#53076#46300
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object cxViewPickupColumn1: TcxGridDBColumn
        Caption = #52636'X'
        DataBinding.FieldName = #52636#48156#51648'X'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
      end
      object cxViewPickupColumn2: TcxGridDBColumn
        DataBinding.FieldName = #52636#48156#51648'Y'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
      end
      object cxViewPickupColumn3: TcxGridDBColumn
        DataBinding.FieldName = #46020#52265#51648'X'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
      end
      object cxViewPickupColumn4: TcxGridDBColumn
        DataBinding.FieldName = #46020#52265#51648'Y'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
      end
      object cxViewPickupColumn5: TcxGridDBColumn
        DataBinding.FieldName = #48176#52264#44592#49324#51648#49324#47749
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 90
      end
    end
    object cxLevelPickup: TcxGridLevel
      GridView = cxViewPickup
    end
  end
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 25
    Cursor = crSizeAll
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '   '#44592#49324' '#54589#50629' '#54788#54889
    Color = 12566463
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #44404#47548
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    OnMouseDown = pnlTitleMouseDown
    DesignSize = (
      984
      25)
    object cxLblActive: TLabel
      Left = 0
      Top = 0
      Width = 984
      Height = 5
      Align = alTop
      AutoSize = False
      Color = 33023
      ParentColor = False
      Transparent = False
      ExplicitWidth = 1007
    end
    object btnClose: TcxButton
      Left = 948
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
      TabOrder = 0
      TabStop = False
      OnClick = btnCloseClick
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 25
    Align = alTop
    Style.BorderStyle = ebsFlat
    TabOrder = 2
    Height = 63
    Width = 984
    object Shape1: TShape
      Left = 10
      Top = 7
      Width = 447
      Height = 24
      Pen.Color = 12566402
      Shape = stRoundRect
    end
    object Shape2: TShape
      Left = 459
      Top = 7
      Width = 82
      Height = 24
      Pen.Color = 12566402
      Shape = stRoundRect
    end
    object Shape4: TShape
      Left = 10
      Top = 33
      Width = 183
      Height = 24
      Pen.Color = 12566402
      Shape = stRoundRect
    end
    object Shape5: TShape
      Left = 312
      Top = 33
      Width = 183
      Height = 24
      Pen.Color = 12566402
      Shape = stRoundRect
    end
    object btnDate: TcxButton
      Tag = 2
      Left = 432
      Top = 7
      Width = 25
      Height = 24
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
      PopupMenu = pmDate
      TabOrder = 0
      OnMouseDown = btnDateMouseDown
    end
    object btnExcel: TcxButton
      Left = 667
      Top = 7
      Width = 69
      Height = 50
      Cursor = crHandPoint
      Caption = #50641#49472#45796#50868
      Colors.Default = 16773362
      Colors.Normal = 16773362
      Colors.Pressed = 16644080
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 1
      OnClick = btnExcelClick
    end
    object btnSearch: TcxButton
      Left = 597
      Top = 7
      Width = 67
      Height = 50
      Cursor = crHandPoint
      Caption = #44160#49353
      Colors.Default = 16773362
      Colors.Normal = 16773362
      Colors.Pressed = 16644080
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 2
      OnClick = btnSearchClick
    end
    object cb_UpDate: TcxComboBox
      Left = 462
      Top = 32
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        #49688#46041#44081#49888
        ' 1 '#52488
        ' 2 '#52488
        ' 3 '#52488
        ' 5 '#52488
        ' 8 '#52488
        '10 '#52488
        '20 '#52488
        '30 '#52488
        '45 '#52488
        '60 '#52488)
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Sharp'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Sharp'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 3
      Text = ' 1 '#52488
      OnClick = cb_UpDateClick
      Height = 26
      Width = 75
    end
    object cbbStatus: TcxComboBox
      Left = 508
      Top = 6
      AutoSize = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        #51204#52404
        #46321#47197
        #48176#52264
        #52712#49548)
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
      Text = #51204#52404
      Height = 26
      Width = 84
    end
    object cbbWkSabunOption: TcxComboBox
      Left = 83
      Top = 32
      AutoSize = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        #46321#47197#44592#49324
        #48176#52264#44592#49324)
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
      Text = #46321#47197#44592#49324
      Height = 26
      Width = 84
    end
    object cxCEdt: TcxCurrencyEdit
      Left = 461
      Top = 32
      TabStop = False
      AutoSize = False
      BeepOnEnter = False
      EditValue = 60.000000000000000000
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taBottomJustify
      Properties.AutoSelect = False
      Properties.DisplayFormat = ',0.;-,0.'
      Properties.ReadOnly = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.ValidateOnEnter = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.Color = 11796479
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      Visible = False
      Height = 26
      Width = 42
    end
    object dtEdDate: TcxDateEdit
      Left = 312
      Top = 6
      TabStop = False
      AutoSize = False
      EditValue = 39717d
      Enabled = False
      ParentShowHint = False
      Properties.DateButtons = [btnToday]
      Properties.SaveTime = False
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
      TabOrder = 7
      Height = 26
      Width = 86
    end
    object dtStDate: TcxDateEdit
      Left = 172
      Top = 6
      TabStop = False
      AutoSize = False
      EditValue = 39717d
      Enabled = False
      ParentShowHint = False
      Properties.DateButtons = [btnToday]
      Properties.SaveTime = False
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
      TabOrder = 8
      Height = 26
      Width = 90
    end
    object edtSabun: TcxTextEdit
      Left = 167
      Top = 32
      AutoSize = False
      Properties.ImeMode = imSHanguel
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.Color = 11796479
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 9
      OnKeyUp = edtSabunKeyUp
      Height = 26
      Width = 144
    end
    object edtStArea: TcxTextEdit
      Left = 365
      Top = 32
      AutoSize = False
      Properties.ImeMode = imSHanguel
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.Color = 11796479
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 10
      OnKeyUp = edtSabunKeyUp
      Height = 26
      Width = 96
    end
    object lbl1: TcxLabel
      Left = 261
      Top = 11
      Caption = '09:00 ~ '
      Transparent = True
    end
    object lbl2: TcxLabel
      Left = 397
      Top = 11
      Caption = '09:00'
      Transparent = True
    end
    object lbl3: TcxLabel
      Left = 22
      Top = 11
      Caption = #44592'  '#44036
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = []
      Style.TextColor = 13719147
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 40
      AnchorY = 19
    end
    object lbl4: TcxLabel
      Left = 466
      Top = 11
      Caption = #49345'  '#53468
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = []
      Style.TextColor = 13719147
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 484
      AnchorY = 19
    end
    object lbl5: TcxLabel
      Left = 23
      Top = 38
      Caption = #51088#52404#49324#48264
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = []
      Style.TextColor = 13719147
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 49
      AnchorY = 46
    end
    object lbl6: TcxLabel
      Left = 320
      Top = 38
      Caption = #52636#48156#51648
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = []
      Style.TextColor = 13719147
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 340
      AnchorY = 46
    end
    object rbBefore: TcxRadioButton
      Left = 120
      Top = 11
      Width = 48
      Height = 17
      Caption = #51060#51204
      Color = clBtnFace
      ParentColor = False
      TabOrder = 17
      OnClick = rbTodayClick
      LookAndFeel.SkinName = 'Sharp'
      ParentBackground = False
      Transparent = True
    end
    object rbToday: TcxRadioButton
      Left = 68
      Top = 11
      Width = 48
      Height = 17
      Caption = #50724#45720
      Checked = True
      Color = clBtnFace
      ParentColor = False
      TabOrder = 18
      TabStop = True
      OnClick = rbTodayClick
      LookAndFeel.SkinName = 'Sharp'
      ParentBackground = False
      Transparent = True
    end
  end
  object pnlColorSet: TPanel
    Left = 3
    Top = 178
    Width = 235
    Height = 45
    BevelOuter = bvNone
    BorderWidth = 3
    Color = 16763594
    TabOrder = 3
    Visible = False
    object GradientLabel3: TGradientLabel
      Left = 3
      Top = 3
      Width = 229
      Height = 39
      Align = alClient
      AutoSize = False
      Color = 14668485
      ParentColor = False
      Visible = False
      EllipsType = etNone
      GradientType = gtFullVertical
      GradientDirection = gdLeftToRight
      Indent = 0
      Orientation = goHorizontal
      TransparentText = False
      VAlignment = vaTop
      Version = '1.2.1.0'
      ExplicitWidth = 206
    end
    object lb_Common0: TLabel
      Left = 6
      Top = 6
      Width = 36
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = #51217#49688
      Color = 16765183
      ParentColor = False
      Transparent = False
      Layout = tlCenter
    end
    object lb_Common4: TLabel
      Tag = 4
      Left = 119
      Top = 24
      Width = 36
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = #47928#51032
      Color = 16777153
      ParentColor = False
      Transparent = False
      Layout = tlCenter
    end
    object lb_Common5: TLabel
      Tag = 5
      Left = 44
      Top = 24
      Width = 36
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = #45824#44592
      Color = 14540287
      ParentColor = False
      Transparent = False
      Layout = tlCenter
    end
    object lb_Common1: TLabel
      Tag = 1
      Left = 119
      Top = 6
      Width = 36
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = #48176#52264
      Color = 11796479
      ParentColor = False
      Transparent = False
      Layout = tlCenter
    end
    object lb_Common2: TLabel
      Tag = 2
      Left = 196
      Top = 6
      Width = 36
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = #50756#47308
      Color = 16762052
      ParentColor = False
      Transparent = False
      Layout = tlCenter
    end
    object lb_Common7: TLabel
      Tag = 7
      Left = 81
      Top = 24
      Width = 36
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = #50696#50557
      Color = clWhite
      ParentColor = False
      Transparent = False
      Layout = tlCenter
    end
    object lb_Common8: TLabel
      Tag = 8
      Left = 157
      Top = 24
      Width = 36
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = #52712#49548
      Color = 11777023
      ParentColor = False
      Transparent = False
      Layout = tlCenter
    end
    object lb_Common3: TLabel
      Tag = 3
      Left = 6
      Top = 24
      Width = 36
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = #44053#51228
      Color = 13565902
      ParentColor = False
      Transparent = False
      Layout = tlCenter
    end
    object lb_Common9: TLabel
      Tag = 9
      Left = 44
      Top = 6
      Width = 36
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = #44540#48176
      Color = 8709115
      ParentColor = False
      Transparent = False
      Layout = tlCenter
    end
    object lb_Common10: TLabel
      Tag = 10
      Left = 81
      Top = 6
      Width = 36
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = #48176#52264#51473
      Color = 55769
      ParentColor = False
      Transparent = False
      Layout = tlCenter
    end
    object lb_Common11: TLabel
      Tag = 2
      Left = 157
      Top = 6
      Width = 36
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = #50868#54665
      Color = 16762766
      ParentColor = False
      Transparent = False
      Layout = tlCenter
    end
  end
  object pmPickup: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = pmPickupPopup
    Left = 608
    Top = 280
    object mniEdit: TMenuItem
      Caption = #49688#51221
      OnClick = mniEditClick
    end
    object mniCancel: TMenuItem
      Caption = #52712#49548
      OnClick = mniCancelClick
    end
    object mniRegist: TMenuItem
      Caption = #51116#46321#47197
      OnClick = mniRegistClick
    end
    object mniN4: TMenuItem
      Caption = '-'
    end
    object mniExcel: TMenuItem
      Caption = #50641#49472#45796#50868
      OnClick = mniExcelClick
    end
    object mniRWor: TMenuItem
      Caption = #46321#47197#44592#49324#47928#51088
      OnClick = mniRWorClick
    end
    object mniEWor: TMenuItem
      Caption = #48176#52264#44592#49324#47928#51088
      OnClick = mniEWorClick
    end
  end
  object pmDate: TPopupMenu
    AutoHotkeys = maManual
    Left = 428
    Top = 128
    object mni6: TMenuItem
      Tag = 1
      Caption = #50612#51228
      OnClick = pmDateMenuClick
    end
    object mni7: TMenuItem
      Tag = 2
      Caption = #52572#44540#51068#51452#51068
      OnClick = pmDateMenuClick
    end
    object mni8: TMenuItem
      Tag = 3
      Caption = #52572#44540#54620#45804
      OnClick = pmDateMenuClick
    end
    object mni9: TMenuItem
      Tag = 4
      Caption = '1'#51068'~'#47568#51068
      OnClick = pmDateMenuClick
    end
  end
  object dlgSave: TSaveDialog
    Filter = #50641#49472#54028#51068'(*.xls)|*.xls'
    Left = 812
    Top = 280
  end
  object tmr_dis: TTimer
    Enabled = False
    Interval = 1300
    OnTimer = tmr_disTimer
    Left = 884
    Top = 276
  end
  object tmr_search: TTimer
    Enabled = False
    Interval = 300
    OnTimer = tmr_searchTimer
    Left = 924
    Top = 276
  end
end

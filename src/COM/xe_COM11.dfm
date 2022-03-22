object Frm_COM11: TFrm_COM11
  Left = 462
  Top = 245
  Caption = 'Frm_COM11'
  ClientHeight = 469
  ClientWidth = 884
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  FormStyle = fsStayOnTop
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
  TextHeight = 15
  object pnl_WkList_Condition: TPanel
    Left = 0
    Top = 33
    Width = 884
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 15658732
    TabOrder = 0
    object cb_Condition: TcxComboBox
      Left = 11
      Top = 4
      AutoSize = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        #45800#47568#44592#48264#54840
        #44592#49324#47749
        #51088#52404#49324#48264)
      Style.LookAndFeel.SkinName = 'Sharp'
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      StyleFocused.LookAndFeel.SkinName = 'Sharp'
      StyleHot.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 1
      Text = #45800#47568#44592#48264#54840
      Height = 23
      Width = 96
    end
    object btn_wkSearch: TcxButton
      Left = 229
      Top = 3
      Width = 66
      Height = 25
      Cursor = crHandPoint
      Caption = #44160#49353
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Sharp'
      OptionsImage.Layout = blGlyphBottom
      TabOrder = 0
      OnClick = btn_wkSearchClick
    end
    object edtKeyWord: TcxTextEdit
      Left = 106
      Top = 4
      AutoSize = False
      TabOrder = 2
      OnKeyDown = edtKeyWordKeyDown
      Height = 23
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 308
      Top = 4
      AutoSize = False
      Caption = #44160#49353#48152#44221
      ParentColor = False
      Style.BorderStyle = ebsFlat
      Style.Color = clWhite
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 24
      Width = 63
      AnchorX = 340
      AnchorY = 16
    end
    object cb_Radius: TcxComboBox
      Left = 368
      Top = 4
      AutoSize = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        '1Km'
        '2Km'
        '3Km'
        '4Km'
        '5Km')
      Properties.OnChange = cb_RadiusPropertiesChange
      Style.LookAndFeel.SkinName = 'Sharp'
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      StyleFocused.LookAndFeel.SkinName = 'Sharp'
      StyleHot.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 4
      Text = '2Km'
      Height = 24
      Width = 56
    end
    object cxLabel3: TcxLabel
      Left = 686
      Top = 8
      Caption = #51064#44540#44592#49324' : '
      Transparent = True
    end
    object lbNearWKCnt: TcxLabel
      Left = 749
      Top = 8
      Caption = #51064#44540#44592#49324' : '
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 65
    Width = 884
    Height = 329
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    Constraints.MinHeight = 20
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    object stg_WkList_View: TcxGridDBTableView
      PopupMenu = pm_WKmenu
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
      OnCellClick = stg_WkList_ViewCellClick
      OnCellDblClick = stg_WkList_ViewCellDblClick
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
      OptionsCustomize.ColumnMoving = False
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = ' '
      OptionsView.GridLineColor = clSilver
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 23
      Styles.Background = Frm_Main.cxStyleGridBackColor
      Styles.Selection = Frm_Main.cxStyle11
      object cxgrdbclmn_WkList_ViewColumn0: TcxGridDBColumn
        DataBinding.FieldName = 'No'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 26
      end
      object cxgrdbclmn_WkList_ViewColumn1: TcxGridDBColumn
        DataBinding.FieldName = #49324#48264
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 51
      end
      object cxgrdbclmn_WkList_ViewColumn2: TcxGridDBColumn
        DataBinding.FieldName = #51088#52404#49324#48264
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 54
      end
      object cxgrdbclmn_WkList_ViewColumn3: TcxGridDBColumn
        DataBinding.FieldName = #44592#49324#47749
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 108
      end
      object cxgrdbclmn_WkList_ViewColumn4: TcxGridDBColumn
        DataBinding.FieldName = #51217#49549
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
      end
      object cxgrdbclmn_WkList_ViewColumn5: TcxGridDBColumn
        DataBinding.FieldName = #49345#53468
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
      end
      object cxgrdbclmn_WkList_ViewColumn6: TcxGridDBColumn
        DataBinding.FieldName = #45800#47568#44592
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 93
      end
      object cxgrdbclmn_WkList_ViewColumn7: TcxGridDBColumn
        DataBinding.FieldName = #50948#52824
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 193
      end
      object cxgrdbclmn_WkList_ViewColumn8: TcxGridDBColumn
        DataBinding.FieldName = #44144#47532
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
      end
      object cxgrdbclmn_WkList_ViewColumn9: TcxGridDBColumn
        DataBinding.FieldName = #51648#49324#53076#46300
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
      end
      object cxgrdbclmn_WkList_ViewColumn10: TcxGridDBColumn
        DataBinding.FieldName = #51648#49324#47749
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 171
      end
      object cxgrdbclmn_WkList_ViewColumn11: TcxGridDBColumn
        DataBinding.FieldName = #48376#49324#53076#46300
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
      end
      object cxgrdbclmn_WkList_ViewColumn12: TcxGridDBColumn
        DataBinding.FieldName = #48376#49324#47749
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
      end
      object cxgrdbclmn_WkList_ViewColumn13: TcxGridDBColumn
        DataBinding.FieldName = 'Lon'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
      end
      object cxgrdbclmn_WkList_ViewColumn14: TcxGridDBColumn
        DataBinding.FieldName = 'Lat'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = stg_WkList_View
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 394
    Width = 884
    Height = 75
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      884
      75)
    object cxButton1: TcxButton
      Left = 650
      Top = 2
      Width = 145
      Height = 69
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #51064#44540#44592#49324#48176#52264#54616#44592
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Sharp'
      OptionsImage.Layout = blGlyphBottom
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 799
      Top = 2
      Width = 83
      Height = 69
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = #52712#49548
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Sharp'
      OptionsImage.Layout = blGlyphBottom
      TabOrder = 1
      OnClick = cxButton2Click
    end
  end
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 884
    Height = 33
    Cursor = crSizeAll
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '  '#51064#44540#44592#49324#51312#54924' '#48176#52264
    Color = 12566463
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    OnMouseDown = pnlTitleMouseDown
    DesignSize = (
      884
      33)
    object cxLblActive: TLabel
      Left = 0
      Top = 0
      Width = 884
      Height = 5
      Align = alTop
      AutoSize = False
      Color = 33023
      ParentColor = False
      Transparent = False
      ExplicitWidth = 715
    end
    object cxLabel1: TcxLabel
      Left = 173
      Top = 9
      Cursor = crSizeAll
      AutoSize = False
      Caption = #44592#49324#47749'['#49324#48264']'#55092#45824#54256' '#50948#52824
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Transparent = True
      OnMouseDown = pnlTitleMouseDown
      Height = 17
      Width = 585
      AnchorX = 466
    end
    object btnClose: TcxButton
      Left = 855
      Top = 6
      Width = 26
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
      TabOrder = 1
      TabStop = False
      OnClick = btnCloseClick
    end
  end
  object pm_WKmenu: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = pm_WKmenuPopup
    Left = 138
    Top = 157
    object mniWORCallingPDA: TMenuItem
      Caption = #51204#54868#44152#44592
      OnClick = mniWORCallingPDAClick
    end
  end
end

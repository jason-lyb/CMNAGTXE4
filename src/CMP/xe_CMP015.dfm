object Frm_CMP015: TFrm_CMP015
  Left = 483
  Top = 359
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Frm_CMP015'
  ClientHeight = 427
  ClientWidth = 582
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
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
    Width = 582
    Height = 427
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    OnMouseMove = PnlMainMouseMove
    object cxGroupBox1: TcxGroupBox
      Left = 0
      Top = 25
      Align = alTop
      Style.BorderStyle = ebsFlat
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Height = 117
      Width = 578
      object Shape6: TShape
        Left = 40
        Top = 88
        Width = 207
        Height = 29
        Pen.Color = 12566402
      end
      object Shape1: TShape
        Left = 40
        Top = 5
        Width = 124
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape2: TShape
        Left = 40
        Top = 31
        Width = 124
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape3: TShape
        Left = 40
        Top = 57
        Width = 124
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape4: TShape
        Left = 302
        Top = 31
        Width = 124
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape5: TShape
        Left = 302
        Top = 57
        Width = 124
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object btnDelete: TcxButton
        Left = 461
        Top = 86
        Width = 70
        Height = 26
        Cursor = crHandPoint
        Caption = #49325#51228
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 0
        OnClick = btnDeleteClick
      end
      object btnInsert: TcxButton
        Left = 317
        Top = 86
        Width = 70
        Height = 26
        Cursor = crHandPoint
        Caption = #51200#51109
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 1
        OnClick = btnInsertClick
      end
      object btnUpdate: TcxButton
        Left = 389
        Top = 86
        Width = 70
        Height = 26
        Cursor = crHandPoint
        Caption = #49688#51221
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 2
        OnClick = btnUpdateClick
      end
      object lbl2: TcxLabel
        Left = 44
        Top = 36
        Caption = #49688#49688#47308#44536#47353#47749
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 82
        AnchorY = 44
      end
      object lbl3: TcxLabel
        Left = 309
        Top = 36
        Caption = #49324#45225#44552#49440'/'#54980#45225
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 350
        AnchorY = 44
      end
      object lbl4: TcxLabel
        Left = 312
        Top = 62
        Caption = #44228'   '#49328'   '#44050
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 350
        AnchorY = 70
      end
      object lbl5: TcxLabel
        Left = 68
        Top = 62
        Caption = #44228#49328#48169#48277
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 94
        AnchorY = 70
      end
      object lbl65: TcxLabel
        Left = 56
        Top = 11
        Caption = #51648'      '#49324
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 88
        AnchorY = 19
      end
      object lblBrSosok: TcxLabel
        Left = 126
        Top = 4
        AutoSize = False
        Caption = #49548#49549
        ParentColor = False
        Style.BorderStyle = ebsSingle
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 13719147
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 26
        Width = 407
        AnchorX = 330
        AnchorY = 17
      end
      object edtName: TcxTextEdit
        Left = 126
        Top = 30
        AutoSize = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 9
        OnKeyUp = edtNameKeyUp
        Height = 26
        Width = 165
      end
      object cbbType: TcxComboBox
        Left = 126
        Top = 56
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.ImeMode = imSAlpha
        Properties.Items.Strings = (
          #49440#53469
          '1'#51068#51221#50529
          #51077#44552#54364#49324#50857
          #51221#50529'('#50896')'
          #51221#47456'(%)'
          #51452#44036#51221#50529
          #51452#44553#54540#47084#49828'(5%)'
          #51452#44553#54540#47084#49828'(10%)'
          #51452#44553#54540#47084#49828'(15%)'
          #51452#44553#54540#47084#49828'(20%)'
          #51088#49324#51077#44552#54364'-'#53440#49324#50672#54633#49444#51221
          #51088#49324#51221#50529'-'#53440#49324#50672#54633#49444#51221
          #51088#49324#51221#47456'-'#53440#49324#50672#54633#49444#51221)
        Properties.OnChange = cbbTypeChange
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 10
        Height = 26
        Width = 165
      end
      object cbbPrepay: TcxComboBox
        Left = 397
        Top = 30
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.ImeMode = imSAlpha
        Properties.Items.Strings = (
          '::'#49324#45225#44552' '#49440'/'#54980#45225
          #49440#45225
          #54980#45225)
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 11
        Height = 26
        Width = 136
      end
      object cbbValue: TcxComboBox
        Left = 397
        Top = 56
        AutoSize = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 12
        Height = 26
        Width = 136
      end
      object cxLabel1: TcxLabel
        Left = 75
        Top = 95
        Caption = #44592#49324#49688#49688#47308' '#44536#47353#47532#49828#53944
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 140
        AnchorY = 103
      end
    end
    object PnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 578
      Height = 25
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '   '#44592#49324#49688#49688#47308' '#44536#47353' '#44288#47532
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
        578
        25)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 578
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = False
      end
      object btnClose: TcxButton
        Left = 552
        Top = 2
        Width = 26
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
    object cxGrid: TcxGrid
      Left = 0
      Top = 144
      Width = 578
      Height = 279
      Align = alBottom
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      LookAndFeel.NativeStyle = False
      object cxView: TcxGridDBTableView
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
        OnCellClick = cxViewCellClick
        DataController.DataModeController.SmartRefresh = True
        DataController.Filter.Options = [fcoShowOperatorDescription, fcoSoftNull]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
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
        OptionsCustomize.ColumnSorting = False
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.FocusRect = False
        OptionsView.NoDataToDisplayInfoText = '  '
        OptionsView.DataRowHeight = 22
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.GridLineColor = clSilver
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 23
        Styles.Selection = Frm_Main.cxStyle11
        object cxColView1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'No.'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 39
        end
        object cxColView1Column2: TcxGridDBColumn
          DataBinding.FieldName = #49688#49688#47308#44536#47353#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 96
        end
        object cxColView1Column3: TcxGridDBColumn
          DataBinding.FieldName = #49324#45225#44552
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 86
        end
        object cxColView1Column4: TcxGridDBColumn
          DataBinding.FieldName = #44228#49328#48169#48277
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 146
        end
        object cxColView1Column5: TcxGridDBColumn
          DataBinding.FieldName = #44228#49328#44050
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxColView1Column6: TcxGridDBColumn
          DataBinding.FieldName = #49688#49688#47308#53076#46300
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 87
        end
      end
      object cxLevel: TcxGridLevel
        GridView = cxView
      end
    end
  end
end

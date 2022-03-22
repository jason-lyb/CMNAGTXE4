object Frm_JON56: TFrm_JON56
  Left = 0
  Top = 0
  Caption = 'Frm_JON56'
  ClientHeight = 725
  ClientWidth = 844
  Color = clBtnFace
  Constraints.MinHeight = 620
  Constraints.MinWidth = 860
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  DesignSize = (
    844
    725)
  TextHeight = 15
  object BtnClose: TcxButton
    Left = 822
    Top = 2
    Width = 17
    Height = 17
    Anchors = [akTop, akRight]
    LookAndFeel.NativeStyle = False
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
    TabOrder = 0
    OnClick = BtnCloseClick
  end
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 844
    Height = 33
    Cursor = crSizeAll
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '   POI '#50836#52397'/'#50724#47448#49888#44256
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
      844
      33)
    object cxLblActive: TLabel
      Left = 0
      Top = 0
      Width = 844
      Height = 5
      Align = alTop
      AutoSize = False
      Color = 33023
      ParentColor = False
      Transparent = False
      ExplicitTop = 4
    end
    object cxButton1: TcxButton
      Left = 815
      Top = 6
      Width = 25
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
      OnClick = BtnCloseClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 844
    Height = 204
    Align = alTop
    TabOrder = 2
    object Panel2: TPanel
      Left = 368
      Top = 1
      Width = 475
      Height = 202
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvNone
      TabOrder = 0
      object pnlPoiSearch: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'POI'#44160#49353
        TabOrder = 0
        Visible = False
        OnExit = pnlPoiSearchExit
        Height = 200
        Width = 475
        object pnlSearch: TPanel
          Left = 3
          Top = 17
          Width = 469
          Height = 54
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object edtPoi: TcxTextEdit
            Left = 71
            Top = 24
            TabStop = False
            AutoSize = False
            ParentFont = False
            Properties.Alignment.Vert = taBottomJustify
            Properties.ImeMode = imSHanguel
            Style.Color = clWindow
            Style.Font.Charset = HANGEUL_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #47569#51008' '#44256#46357
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnKeyDown = edtPoiKeyDown
            Height = 24
            Width = 132
          end
          object cxLabel1: TcxLabel
            Left = 3
            Top = 24
            AutoSize = False
            Caption = 'POI'#44160#49353
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 16773360
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #47569#51008' '#44256#46357
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 16744448
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 69
            AnchorX = 38
            AnchorY = 36
          end
          object btnPOISearch: TcxButton
            Left = 209
            Top = 25
            Width = 108
            Height = 24
            Cursor = crHandPoint
            Caption = #44160#49353
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 2
            OnClick = btnPOISearchClick
          end
          object cbbSido: TcxComboBox
            Left = 71
            Top = 0
            Properties.DropDownListStyle = lsFixedList
            Properties.OnChange = cbbSidoPropertiesChange
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 3
            OnClick = cbbSidoClick
            Width = 69
          end
          object cbbDong: TcxComboBox
            Left = 219
            Top = 0
            Properties.DropDownListStyle = lsFixedList
            Properties.OnChange = cbbDongPropertiesChange
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
            Width = 94
          end
          object cbbGugun: TcxComboBox
            Left = 143
            Top = 0
            Properties.DropDownListStyle = lsFixedList
            Properties.OnChange = cbbGugunPropertiesChange
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
            Width = 73
          end
          object cxLabel3: TcxLabel
            Left = 316
            Top = 3
            Caption = #48264#51648
            Transparent = True
          end
          object edtBunji: TcxTextEdit
            Left = 346
            Top = 0
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 7
            OnKeyPress = edtBunjiKeyPress
            Width = 83
          end
          object cxLabel4: TcxLabel
            Left = 3
            Top = 0
            AutoSize = False
            Caption = #51648#46020#51060#46041
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 16773360
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #47569#51008' '#44256#46357
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 16744448
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 23
            Width = 69
            AnchorX = 38
            AnchorY = 12
          end
          object btnSearch: TcxButton
            Left = 430
            Top = 0
            Width = 35
            Height = 21
            Cursor = crHandPoint
            Caption = #51060#46041
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 9
            OnClick = btnSearchClick
          end
        end
        object pnlList: TPanel
          Left = 3
          Top = 71
          Width = 469
          Height = 122
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object cxGrid3: TcxGrid
            Left = 0
            Top = 0
            Width = 469
            Height = 122
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            object cxViewPOI: TcxGridDBTableView
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
              FilterBox.CustomizeDialog = False
              ScrollbarAnnotations.CustomAnnotations = <>
              OnCellClick = cxViewPOICellClick
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
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnMoving = False
              OptionsCustomize.ColumnSorting = False
              OptionsSelection.CellSelect = False
              OptionsView.NoDataToDisplayInfoText = ' '
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 23
              object cxViewPOIColumn1: TcxGridDBColumn
                DataBinding.FieldName = #49884#46020
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 47
              end
              object cxViewPOIColumn2: TcxGridDBColumn
                DataBinding.FieldName = #49884#44400#44396
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 93
              end
              object cxViewPOIColumn3: TcxGridDBColumn
                DataBinding.FieldName = #51021#47732#46041
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 97
              end
              object cxViewPOIColumn4: TcxGridDBColumn
                DataBinding.FieldName = 'POI'
                PropertiesClassName = 'TcxLabelProperties'
                HeaderAlignmentHorz = taCenter
                Width = 214
              end
              object cxViewPOIColumn5: TcxGridDBColumn
                DataBinding.FieldName = 'X'#51340#54364
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                Width = 60
              end
              object cxViewPOIColumn6: TcxGridDBColumn
                DataBinding.FieldName = 'Y'#51340#54364
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
                HeaderAlignmentHorz = taCenter
              end
              object cxViewPOIColumn7: TcxGridDBColumn
                DataBinding.FieldName = 'DOCID'
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxViewPOI
            end
          end
        end
      end
    end
    object cxGbCTI: TcxGroupBox
      Left = 1
      Top = 1
      Align = alLeft
      TabOrder = 1
      Height = 202
      Width = 365
      object cxLabel17: TcxLabel
        Left = 8
        Top = 52
        AutoSize = False
        Caption = #50976#54805
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Color = 16773360
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 16744448
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        Height = 29
        Width = 64
        AnchorX = 40
        AnchorY = 67
      end
      object cb_POITYPE: TcxComboBox
        Left = 164
        Top = 41
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'POI'#52628#44032#50836#52397
          'POI'#50724#47448#49888#44256)
        Properties.OnChange = cb_POITYPEPropertiesChange
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Text = 'POI'#52628#44032#50836#52397
        Visible = False
        Height = 19
        Width = 96
      end
      object cxLabel2: TcxLabel
        Left = 3
        Top = 3
        AutoSize = False
        Caption = #51452#49548'('#48277#51221#46041')'
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Style.Color = 16773360
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 16744448
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 22
        Width = 91
        AnchorX = 49
        AnchorY = 14
      end
      object lb_Addr_B: TcxLabel
        Left = 93
        Top = 3
        AutoSize = False
        Caption = #49436#50872#53945#48324#49884' '#50857#51064#49884#52376#51064#44396' '#50517#44396#51221'1'#46041
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Style.Color = 16773360
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 16744448
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Height = 22
        Width = 269
        AnchorY = 14
      end
      object lb_Addr_H: TcxLabel
        Left = 93
        Top = 26
        AutoSize = False
        Caption = #49436#50872#53945#48324#49884' '#50857#51064#49884#52376#51064#44396' '#50517#44396#51221'1'#46041
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Style.Color = 16773360
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 16744448
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Height = 22
        Width = 269
        AnchorY = 37
      end
      object cxLabel5: TcxLabel
        Left = 3
        Top = 26
        AutoSize = False
        Caption = #51452#49548'('#54665#51221#46041')'
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Style.Color = 16773360
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 16744448
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 22
        Width = 91
        AnchorX = 49
        AnchorY = 37
      end
      object cxGroupBox1: TcxGroupBox
        Left = 3
        Top = 109
        Caption = #50836#52397#45236#50857'('#51088#49464#54616#44172' '#44592#49696#54644' '#51452#49901#49884#50724'-'#52572#45824'450'#51088#44620#51648#51077#47141' '#44032#45733')'
        TabOrder = 6
        Height = 91
        Width = 355
        object cxMemo1: TcxMemo
          Left = 3
          Top = 17
          Align = alClient
          Properties.ScrollBars = ssVertical
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 0
          OnKeyUp = cxMemo1KeyUp
          Height = 67
          Width = 349
        end
      end
      object edt_ADDPOI_X: TcxTextEdit
        Left = 310
        Top = -3
        TabStop = False
        AutoSize = False
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 7
        Text = '99999'
        Visible = False
        Height = 22
        Width = 63
      end
      object edt_ADDPOI_Y: TcxTextEdit
        Left = 310
        Top = 18
        TabStop = False
        AutoSize = False
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 8
        Text = '99999'
        Visible = False
        Height = 22
        Width = 63
      end
      object cxLabel22: TcxLabel
        Left = 8
        Top = 83
        AutoSize = False
        Caption = 'POI'#47749
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Color = 16773360
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 16744448
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        Height = 24
        Width = 64
        AnchorX = 40
        AnchorY = 95
      end
      object cb_00: TAdvGlowButton
        Left = 22
        Top = 149
        Width = 33
        Height = 27
        Cursor = crHandPoint
        AntiAlias = aaNone
        Caption = #50948#52824#51648#51221#54616#44592
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ImageIndex = 18
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Rounded = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        Visible = False
        OnClick = cb_00Click
        Appearance.BorderColorHot = 16761412
        Appearance.BorderColorDown = 16761412
        Appearance.BorderColorChecked = 33023
        Appearance.Color = clWhite
        Appearance.ColorTo = clWhite
        Appearance.ColorChecked = 4105706
        Appearance.ColorCheckedTo = 4105706
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 15243853
        Appearance.ColorDownTo = 15243853
        Appearance.ColorHot = 7716789
        Appearance.ColorHotTo = 7716789
        Appearance.ColorMirror = clSilver
        Appearance.ColorMirrorTo = clWhite
        Appearance.ColorMirrorHot = 7716789
        Appearance.ColorMirrorHotTo = 7716789
        Appearance.ColorMirrorDown = 15243853
        Appearance.ColorMirrorDownTo = 15243853
        Appearance.ColorMirrorChecked = 4105706
        Appearance.ColorMirrorCheckedTo = 4105706
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Style = bsCheck
      end
      object lb_DocID: TcxTextEdit
        Left = 229
        Top = 100
        TabStop = False
        AutoSize = False
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 11
        Visible = False
        Height = 22
        Width = 63
      end
      object lb_MapGubun: TcxTextEdit
        Left = 298
        Top = 203
        TabStop = False
        AutoSize = False
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 12
        Text = 'MapGubun'
        Visible = False
        Height = 22
        Width = 63
      end
      object lb_DONG_B: TcxTextEdit
        Left = 141
        Top = 203
        TabStop = False
        AutoSize = False
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 13
        Text = 'DONG'
        Visible = False
        Height = 22
        Width = 63
      end
      object lb_GU_B: TcxTextEdit
        Left = 72
        Top = 203
        TabStop = False
        AutoSize = False
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 14
        Text = 'GU'
        Visible = False
        Height = 22
        Width = 63
      end
      object lb_SIDO_B: TcxTextEdit
        Left = 3
        Top = 203
        TabStop = False
        AutoSize = False
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 15
        Text = 'SIDO'
        Visible = False
        Height = 22
        Width = 63
      end
      object lb_SIDO_H: TcxTextEdit
        Left = 3
        Top = 231
        TabStop = False
        AutoSize = False
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 16
        Text = 'SIDO'
        Visible = False
        Height = 22
        Width = 63
      end
      object lb_GU_H: TcxTextEdit
        Left = 72
        Top = 224
        TabStop = False
        AutoSize = False
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 17
        Text = 'GU'
        Visible = False
        Height = 22
        Width = 63
      end
      object lb_DONG_H: TcxTextEdit
        Left = 141
        Top = 224
        TabStop = False
        AutoSize = False
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 18
        Text = 'DONG'
        Visible = False
        Height = 22
        Width = 63
      end
      object lb_POITYPE: TcxLabel
        Left = 69
        Top = 52
        AutoSize = False
        Caption = 'POI'#47749
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Color = 16773360
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 16744448
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        Height = 29
        Width = 101
        AnchorX = 120
        AnchorY = 67
      end
      object btn_POISAVE: TcxButton
        Left = 190
        Top = 51
        Width = 77
        Height = 29
        Cursor = crHandPoint
        Caption = #50836#52397#54616#44592
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 20
        OnClick = btn_POISAVEClick
      end
      object pnl_POINAME: TPanel
        Left = 69
        Top = 83
        Width = 292
        Height = 24
        BevelOuter = bvNone
        TabOrder = 21
        object edt_POINAME: TcxTextEdit
          Left = 0
          Top = 0
          TabStop = False
          AutoSize = False
          ParentFont = False
          Properties.Alignment.Vert = taBottomJustify
          Properties.ImeMode = imSHanguel
          Style.Color = clWindow
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 24
          Width = 292
        end
      end
      object btnPcSave: TcxButton
        Left = 281
        Top = 51
        Width = 77
        Height = 29
        Cursor = crHandPoint
        Caption = 'PC'#51200#51109
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        ParentShowHint = False
        ShowHint = True
        TabOrder = 22
        Visible = False
        OnClick = btnPcSaveClick
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 237
    Width = 844
    Height = 282
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    object mMap: TTalMapXCtrl
      Left = 0
      Top = 0
      Width = 844
      Height = 282
      Align = alClient
      PopupMenu = pmMark
      TabOrder = 0
      OnCreate = mMapCreate
      OnMouseDown = mMapMouseDown
      OnMouseUp = mMapMouseUp
      OnMouseMove = mMapMouseMove
      OnStateChange = mMapStateChange
      OnClickNotify = mMapClickNotify
      ExplicitLeft = 2
      ExplicitTop = 203
      ExplicitWidth = 605
      ExplicitHeight = 50
      ControlData = {00090000}
    end
  end
  object Pnl_List: TPanel
    Left = 0
    Top = 525
    Width = 844
    Height = 200
    Align = alBottom
    Constraints.MinHeight = 25
    TabOrder = 4
    object Panel5: TPanel
      Left = 1
      Top = 72
      Width = 842
      Height = 127
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 842
        Height = 127
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object cxViewPOI2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = True
          Navigator.Buttons.SaveBookmark.Visible = True
          Navigator.Buttons.GotoBookmark.Visible = True
          Navigator.Buttons.Filter.Visible = True
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCellDblClick = cxViewPOI2CellDblClick
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnMoving = False
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 22
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 23
          object cxViewPOI2Column1: TcxGridDBColumn
            DataBinding.FieldName = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 32
          end
          object cxViewPOI2Column2: TcxGridDBColumn
            DataBinding.FieldName = #50836#52397#51068#51088
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 113
          end
          object cxViewPOI2Column3: TcxGridDBColumn
            DataBinding.FieldName = #50836#52397#51088
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 64
          end
          object cxViewPOI2Column4: TcxGridDBColumn
            DataBinding.FieldName = #51217#49688#44396#48516
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 82
          end
          object cxViewPOI2Column5: TcxGridDBColumn
            DataBinding.FieldName = #49345#53468
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 65
          end
          object cxViewPOI2Column6: TcxGridDBColumn
            DataBinding.FieldName = #49884#46020'('#48277')'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 51
          end
          object cxViewPOI2Column7: TcxGridDBColumn
            DataBinding.FieldName = #49884#44400#44396'('#48277')'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 63
          end
          object cxViewPOI2Column8: TcxGridDBColumn
            DataBinding.FieldName = #51021#47732#46041'('#48277')'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 63
          end
          object cxViewPOI2Column9: TcxGridDBColumn
            DataBinding.FieldName = #49884#46020'('#54665')'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 51
          end
          object cxViewPOI2Column10: TcxGridDBColumn
            DataBinding.FieldName = #49884#44400#44396'('#54665')'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 63
          end
          object cxViewPOI2Column11: TcxGridDBColumn
            DataBinding.FieldName = #51021#47732#46041'('#54665')'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 63
          end
          object cxViewPOI2Column12: TcxGridDBColumn
            DataBinding.FieldName = 'POI'#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 116
          end
          object cxViewPOI2Column13: TcxGridDBColumn
            DataBinding.FieldName = #51340#54364'X'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 75
          end
          object cxViewPOI2Column14: TcxGridDBColumn
            DataBinding.FieldName = #51340#54364'Y'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 54
          end
          object cxViewPOI2Column15: TcxGridDBColumn
            DataBinding.FieldName = #47700#47784
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 54
          end
          object cxViewPOI2Column16: TcxGridDBColumn
            DataBinding.FieldName = 'POI'#53440#51077
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
          object cxViewPOI2Column17: TcxGridDBColumn
            DataBinding.FieldName = #48376#49324#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
          object cxViewPOI2Column18: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 95
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxViewPOI2
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 41
      Width = 842
      Height = 31
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Shape3: TShape
        Left = 73
        Top = 3
        Width = 175
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object cxLabel6: TcxLabel
        Left = 439
        Top = 3
        AutoSize = False
        Caption = #51217#49688#49345#53468
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Style.Color = 16773360
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 16744448
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 24
        Width = 69
        AnchorX = 474
        AnchorY = 15
      end
      object btnPOIListSearch: TcxButton
        Left = 606
        Top = 3
        Width = 108
        Height = 24
        Cursor = crHandPoint
        Caption = #44160#49353
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 4
        OnClick = btnPOIListSearchClick
      end
      object cb_State: TcxComboBox
        Left = 508
        Top = 3
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #51204#52404
          #51217#49688
          #44160#49688#51473
          #51201#50857#50836#52397
          #48372#47448
          #49325#51228
          #51201#50857#50756#47308)
        Properties.OnChange = cbbSidoPropertiesChange
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 3
        Text = #51204#52404
        OnClick = cbbSidoClick
        OnKeyDown = cb_StateKeyDown
        Height = 24
        Width = 98
      end
      object cxLabel8: TcxLabel
        Left = 3
        Top = 3
        AutoSize = False
        Caption = #51312#54924#44592#44036
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Style.Color = 16773360
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 16744448
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 24
        Width = 69
        AnchorX = 38
        AnchorY = 15
      end
      object cxDtStartA1: TcxDateEdit
        Left = 72
        Top = 2
        AutoSize = False
        EditValue = 39777d
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 0
        OnKeyDown = cxDtStartA1KeyDown
        Height = 26
        Width = 89
      end
      object cxLabel75: TcxLabel
        Left = 158
        Top = 6
        Caption = '~'
        Transparent = True
      end
      object cxDtEndA1: TcxDateEdit
        Left = 168
        Top = 2
        AutoSize = False
        EditValue = 39777d
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 1
        OnKeyDown = cxDtEndA1KeyDown
        Height = 26
        Width = 89
      end
      object cxLabel7: TcxLabel
        Left = 263
        Top = 3
        AutoSize = False
        Caption = #51217#49688#44396#48516
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Style.Color = 16773360
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 16744448
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 24
        Width = 69
        AnchorX = 298
        AnchorY = 15
      end
      object cb_Gubun: TcxComboBox
        Left = 332
        Top = 3
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #51204#52404
          'POI'#52628#44032#50836#52397
          'POI'#50724#47448#49888#44256)
        Properties.OnChange = cbbSidoPropertiesChange
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 2
        Text = #51204#52404
        OnClick = cbbSidoClick
        OnKeyDown = cb_GubunKeyDown
        Height = 24
        Width = 98
      end
    end
    object btn_List: TcxButton
      Left = 1
      Top = 1
      Width = 842
      Height = 40
      Align = alTop
      Caption = 'POI '#52628#44032#49888#52397'/'#50724#47448#49888#44256' '#47532#49828#53944' '#48372#44592
      LookAndFeel.SkinName = 'Sharp'
      OptionsImage.Layout = blGlyphTop
      OptionsImage.Spacing = 2
      TabOrder = 2
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      OnClick = btn_ListClick
    end
  end
  object splAcceptMap: TcxSplitter
    Left = 0
    Top = 519
    Width = 844
    Height = 6
    AlignSplitter = salBottom
    MinSize = 1
    Control = pnlList
    Visible = False
  end
  object CSMsn: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    OnConnect = CSMsnConnect
    OnRead = CSMsnRead
    OnError = CSMsnError
    Left = 385
    Top = 247
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
    Left = 65527
    Top = 65527
  end
  object pmMark: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = pmMarkPopup
    Left = 198
    Top = 282
    object N1: TMenuItem
      Caption = #50948#52824#51648#51221#54616#44592
      OnClick = N1Click
    end
  end
end

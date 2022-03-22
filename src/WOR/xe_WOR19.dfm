object Frm_WOR19: TFrm_WOR19
  Left = 754
  Top = 309
  Caption = 'Frm_WOR19'
  ClientHeight = 662
  ClientWidth = 924
  Color = clBtnFace
  Constraints.MinHeight = 700
  Constraints.MinWidth = 940
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsStayOnTop
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
    Width = 924
    Height = 662
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    object PnlBtm: TPanel
      Left = 0
      Top = 31
      Width = 920
      Height = 627
      Align = alClient
      BevelKind = bkFlat
      BevelOuter = bvNone
      TabOrder = 0
      Visible = False
      object mMap_WKAccident: TTalMapXCtrl
        Left = 0
        Top = 0
        Width = 916
        Height = 623
        Align = alClient
        TabOrder = 0
        Visible = False
        OnCreate = mMap_WKAccidentCreate
        OnStateChange = mMap_WKAccidentStateChange
        OnPOI_Click = mMap_WKAccidentPOI_Click
        ExplicitWidth = 930
        ExplicitHeight = 233
        ControlData = {00090000}
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 0
      Top = 25
      Width = 920
      Height = 6
      AlignSplitter = salTop
      Control = PnlTop
      Visible = False
    end
    object pnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 920
      Height = 25
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
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
        920
        25)
      object Label1: TLabel
        Left = 3
        Top = 11
        Width = 140
        Height = 12
        Caption = '  '#53084#45817#48372#54744#49324#44256#51217#49688#54788#54889
        Transparent = True
        OnMouseDown = pnlTitleMouseDown
      end
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 920
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = False
        ExplicitWidth = 934
      end
      object BtnClose: TcxButton
        Left = 882
        Top = 1
        Width = 35
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
        OnClick = BtnCloseClick
      end
    end
    object PnlTop: TPanel
      Left = 0
      Top = 31
      Width = 920
      Height = 627
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 3
      object cxGrdWKAccidentList: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 62
        Width = 914
        Height = 562
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object cxGrdWKAccidentList_List: TcxGridDBTableView
          PopupMenu = pm_WorkderAccident
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCellClick = cxGrdWKAccidentList_ListCellClick
          OnCellDblClick = cxGrdWKAccidentList_ListCellDblClick
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsSelection.CellSelect = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 20
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 23
          object cxGrdWKAccidentList_ListColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 35
          end
          object cxGrdWKAccidentList_ListColumn2: TcxGridDBColumn
            DataBinding.FieldName = #49324#44256#51217#49688#51068#49884
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 127
          end
          object cxGrdWKAccidentList_ListColumn3: TcxGridDBColumn
            DataBinding.FieldName = #48372#54744#49324#51217#49688#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 90
          end
          object cxGrdWKAccidentList_ListColumn4: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#49324#48264
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 54
          end
          object cxGrdWKAccidentList_ListColumn5: TcxGridDBColumn
            DataBinding.FieldName = #51088#52404#49324#48264
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 54
          end
          object cxGrdWKAccidentList_ListColumn6: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 73
          end
          object cxGrdWKAccidentList_ListColumn7: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#50672#46973#52376
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 85
          end
          object cxGrdWKAccidentList_ListColumn8: TcxGridDBColumn
            DataBinding.FieldName = #51217#49688#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 83
          end
          object cxGrdWKAccidentList_ListColumn9: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#50672#46973#52376
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 87
          end
          object cxGrdWKAccidentList_ListColumn10: TcxGridDBColumn
            DataBinding.FieldName = #49548#49549#51648#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 122
          end
          object cxGrdWKAccidentList_ListColumn11: TcxGridDBColumn
            DataBinding.FieldName = #49548#49549#51648#49324#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 78
          end
          object cxGrdWKAccidentList_ListColumn12: TcxGridDBColumn
            DataBinding.FieldName = #48156#51452#51648#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 91
          end
          object cxGrdWKAccidentList_ListColumn13: TcxGridDBColumn
            DataBinding.FieldName = #48156#51452#51648#49324#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 78
          end
          object cxGrdWKAccidentList_ListColumn14: TcxGridDBColumn
            DataBinding.FieldName = #48156#51452#49324#50672#46973#52376
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 78
          end
          object cxGrdWKAccidentList_ListColumn15: TcxGridDBColumn
            DataBinding.FieldName = #52636#48156#51648
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 200
          end
          object cxGrdWKAccidentList_ListColumn16: TcxGridDBColumn
            DataBinding.FieldName = #52636#48156#51648#51340#54364
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 66
          end
          object cxGrdWKAccidentList_ListColumn17: TcxGridDBColumn
            DataBinding.FieldName = #46020#52265#51648
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 200
          end
          object cxGrdWKAccidentList_ListColumn18: TcxGridDBColumn
            DataBinding.FieldName = #46020#52265#51648#51340#54364
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 66
          end
          object cxGrdWKAccidentList_ListColumn19: TcxGridDBColumn
            DataBinding.FieldName = #49324#44256#50948#52824
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 134
          end
          object cxGrdWKAccidentList_ListColumn20: TcxGridDBColumn
            DataBinding.FieldName = #49324#44256#51340#54364
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 54
          end
          object cxGrdWKAccidentList_ListColumn21: TcxGridDBColumn
            DataBinding.FieldName = #49324#51652
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 70
          end
          object cxGrdWKAccidentList_ListColumn22: TcxGridDBColumn
            DataBinding.FieldName = #49324#44256#51652#54665#49345#53468
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 78
          end
          object cxGrdWKAccidentList_ListColumn23: TcxGridDBColumn
            Caption = #45812#48372#44396#48516
            DataBinding.FieldName = #45812#48512#44396#48516
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGrdWKAccidentList_ListColumn24: TcxGridDBColumn
            DataBinding.FieldName = #51648#44553#48372#54744#44552
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 66
          end
          object cxGrdWKAccidentList_ListColumn25: TcxGridDBColumn
            DataBinding.FieldName = #51088#44592#48512#45812#44552
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 66
          end
          object cxGrdWKAccidentList_ListColumn26: TcxGridDBColumn
            DataBinding.FieldName = #49324#44256#52376#47532#51088#51221#48372
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 274
          end
          object cxGrdWKAccidentList_ListColumn27: TcxGridDBColumn
            DataBinding.FieldName = #45812#45817#51088#50672#46973#52376
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            VisibleForEditForm = bFalse
            Width = 78
          end
        end
        object cxGrdWKAccidentList_Level: TcxGridLevel
          GridView = cxGrdWKAccidentList_List
        end
      end
      object cxGB_WK_Status: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        ParentBackground = False
        ParentColor = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsNone
        Style.Color = 13226993
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Height = 59
        Width = 920
        object Shape11: TShape
          Left = 10
          Top = 5
          Width = 584
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape12: TShape
          Left = 10
          Top = 31
          Width = 259
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape13: TShape
          Left = 271
          Top = 31
          Width = 351
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object btnAccidentList: TcxButton
          Left = 628
          Top = 31
          Width = 93
          Height = 24
          Cursor = crHandPoint
          Caption = #44160' '#49353
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 0
          TabStop = False
          OnClick = btnAccidentListClick
        end
        object cxLabel2: TcxLabel
          Left = 22
          Top = 10
          Caption = #49548'       '#49549
          ParentColor = False
          ParentFont = False
          Style.Color = 16575968
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 50
          AnchorY = 18
        end
        object lblSosokNameA3: TcxLabel
          Left = 88
          Top = 4
          AutoSize = False
          Caption = #49548#49549
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = clBtnFace
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 26
          Width = 511
          AnchorX = 344
          AnchorY = 17
        end
        object cxLabel3: TcxLabel
          Left = 599
          Top = 9
          Caption = #8251' '#51217#49688#48264#54840#47484' '#53364#47533#54616#49884#47732' '#50724#45908#51217#49688#52285#51012' '#48372#49892' '#49688' '#51080#49845#45768#45796'.'
          Transparent = True
        end
        object cxLabel4: TcxLabel
          Left = 25
          Top = 36
          Caption = #49324#44256#44160#49353
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 51
          AnchorY = 44
        end
        object cxDtStart: TcxDateEdit
          Left = 341
          Top = 30
          TabStop = False
          AutoSize = False
          ParentShowHint = False
          Properties.DateButtons = [btnToday]
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
          TabOrder = 5
          Height = 26
          Width = 90
        end
        object cxLabel5: TcxLabel
          Left = 431
          Top = 36
          Caption = '09:00 ~ '
          Transparent = True
        end
        object cxDtEnd: TcxDateEdit
          Left = 475
          Top = 30
          TabStop = False
          AutoSize = False
          ParentShowHint = False
          Properties.DateButtons = [btnToday]
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
          Width = 90
        end
        object cxLabel6: TcxLabel
          Left = 565
          Top = 36
          Caption = '09:00'
          Transparent = True
        end
        object cbSelList: TcxComboBox
          Left = 88
          Top = 30
          TabStop = False
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #44592#49324#49324#48264
            #44592#49324#47749)
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 9
          Text = #44592#49324#49324#48264
          Height = 26
          Width = 78
        end
        object cxEdtSelText: TcxTextEdit
          Left = 166
          Top = 30
          TabStop = False
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
          TabOrder = 10
          OnKeyUp = cxEdtSelTextKeyUp
          Height = 26
          Width = 104
        end
        object cxLabel7: TcxLabel
          Left = 282
          Top = 36
          Caption = #44592#44036#44160#49353
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 308
          AnchorY = 44
        end
        object RbButton1: TcxButton
          Left = 600
          Top = 31
          Width = 25
          Height = 24
          Cursor = crHandPoint
          DropDownMenu = pop_date
          Kind = cxbkDropDown
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
          TabOrder = 12
        end
        object btnExcelA3: TcxButton
          Left = 723
          Top = 31
          Width = 93
          Height = 24
          Cursor = crHandPoint
          Caption = #50641#49472#45796#50868
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 13
          TabStop = False
          OnClick = btnExcelA3Click
        end
      end
    end
  end
  object pm_WorkderAccident: TPopupMenu
    AutoHotkeys = maManual
    Left = 121
    Top = 192
    object N1: TMenuItem
      Caption = #51217#49688#52285#46916#50864#44592
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #44592#49324#51221#48372#48372#44592
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #49324#44256#50948#52824' '#47196#46300#48624#48372#44592
      Visible = False
      OnClick = N3Click
    end
    object N21: TMenuItem
      Caption = '-'
    end
    object N4: TMenuItem
      Tag = 10
      Caption = #48156#51452#49324#50640' '#51204#54868#44152#44592
      OnClick = N4Click
    end
    object N5: TMenuItem
      Tag = 21
      Caption = #44592#49324#50640#44172' '#51204#54868#44152#44592
      OnClick = N5Click
    end
    object N6: TMenuItem
      Tag = 22
      Caption = #44256#44061#50640#44172' '#51204#54868#44152#44592
      OnClick = N6Click
    end
    object N7: TMenuItem
      Tag = 23
      Caption = #49324#44256#45812#45817#51088#50640#44172' '#51204#54868#44152#44592
      OnClick = N7Click
    end
  end
  object pop_date: TPopupMenu
    AutoHotkeys = maManual
    Left = 124
    Top = 256
    object MiToday: TMenuItem
      Caption = #50724#45720
      OnClick = MiTodayClick
    end
    object MiYesterday: TMenuItem
      Caption = #50612#51228
      OnClick = MiYesterdayClick
    end
    object MiOneWeek: TMenuItem
      Caption = #52572#44540#51068#51452#51068
      OnClick = MiOneWeekClick
    end
    object MiOneMonth: TMenuItem
      Caption = #52572#44540#54620#45804
      OnClick = MiOneMonthClick
    end
    object MiStartMonth: TMenuItem
      Caption = '1'#51068'~'#47568#51068
      OnClick = MiStartMonthClick
    end
  end
end

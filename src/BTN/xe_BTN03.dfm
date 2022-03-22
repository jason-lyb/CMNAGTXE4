object frm_BTN03: Tfrm_BTN03
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_BTN03'
  ClientHeight = 386
  ClientWidth = 714
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
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
    Width = 714
    Height = 386
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 0
    object pnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 710
      Height = 25
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  '#50689#50629#49324#50896' : '#54861#44600#46041'(222*W122212) [010-0000-0000]'
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
        710
        25)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 710
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = False
        ExplicitWidth = 712
      end
      object btnClose: TcxButton
        Left = 674
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
      object lbWkID: TcxLabel
        Left = 330
        Top = 9
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Visible = False
      end
      object cxLabel12: TcxLabel
        Left = 554
        Top = 5
        Caption = #51648#49324#53076#46300
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Visible = False
      end
      object cxLabel13: TcxLabel
        Left = 462
        Top = 5
        Caption = #44592#49324#55092#45824#54256#48264#54840
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Visible = False
      end
      object cxLabel14: TcxLabel
        Left = 409
        Top = 5
        Caption = #51217#49688#48264#54840
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Visible = False
      end
    end
    object Panel1: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 28
      Width = 704
      Height = 61
      Align = alTop
      BevelKind = bkFlat
      BevelOuter = bvNone
      TabOrder = 1
      object Shape8: TShape
        Left = 207
        Top = 7
        Width = 96
        Height = 22
        Pen.Color = 13353605
        Shape = stRoundRect
      end
      object Shape1: TShape
        Left = 207
        Top = 32
        Width = 96
        Height = 22
        Pen.Color = 13353605
        Shape = stRoundRect
      end
      object Shape2: TShape
        Left = 393
        Top = 7
        Width = 102
        Height = 22
        Pen.Color = 13353605
        Shape = stRoundRect
      end
      object cxButton2: TcxButton
        Left = 582
        Top = 6
        Width = 115
        Height = 48
        Cursor = crHandPoint
        Caption = #52649#51204#54616#44592
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        OnClick = cxButton2Click
      end
      object cxGroupBox3: TcxGroupBox
        Left = 145
        Top = 7
        Alignment = alLeftCenter
        ParentBackground = False
        ParentColor = False
        Style.Color = 8453888
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.BorderColor = 8679672
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Transparent = True
        Height = 48
        Width = 60
        object cxRadioButton1: TcxRadioButton
          Left = 4
          Top = 3
          Width = 49
          Height = 17
          Caption = #52649#51204
          Checked = True
          Color = 13623806
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          TabStop = True
          OnClick = cxRadioButton1Click
          LookAndFeel.SkinName = 'Sharp'
          Transparent = True
        end
        object cxRadioButton2: TcxRadioButton
          Left = 4
          Top = 26
          Width = 49
          Height = 17
          Caption = #52264#44048
          Color = 13623806
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          OnClick = cxRadioButton1Click
          LookAndFeel.SkinName = 'Sharp'
          Transparent = True
        end
      end
      object cxLabel7: TcxLabel
        Left = 11
        Top = 9
        Caption = #9758' '#50689#50629#49324#50896' '#47560#51068#47532#51648
        ParentColor = False
        ParentFont = False
        Style.Color = 13623806
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = 3233192
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object ed_Cash: TcxCurrencyEdit
        Left = 292
        Top = 6
        TabStop = False
        AutoSize = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taBottomJustify
        Properties.AutoSelect = False
        Properties.DisplayFormat = ',0;-,0'
        Properties.ReadOnly = True
        Style.Color = 13623806
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        Height = 24
        Width = 100
      end
      object ed_ChargeCash: TcxSpinEdit
        Left = 481
        Top = 6
        Hint = #9660' '#47560#50864#49828#49828#53356#47204#49884' 1'#47564#50896#45800#50948#47196' '#51613#44032', '#44048#49548
        AutoSize = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taBottomJustify
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = ',0'
        Properties.Increment = 10000.000000000000000000
        Properties.LargeIncrement = 10000.000000000000000000
        Properties.ValueType = vtInt
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = [fsBold]
        Style.HotTrack = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Sharp'
        Style.Shadow = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 1
        Height = 24
        Width = 97
      end
      object ed_memo: TcxTextEdit
        Left = 292
        Top = 31
        AutoSize = False
        ParentFont = False
        Properties.Alignment.Vert = taBottomJustify
        Properties.ImeMode = imSHanguel
        Style.Font.Charset = HANGEUL_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548#52404
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        OnKeyUp = ed_memoKeyUp
        Height = 24
        Width = 286
      end
      object cxLabel4: TcxLabel
        Left = 210
        Top = 11
        Caption = #47560#51068#47532#51648#51092#50529
        ParentColor = False
        ParentFont = False
        Style.Color = clBtnFace
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 4227327
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 251
        AnchorY = 19
      end
      object cxLabel1: TcxLabel
        Left = 215
        Top = 36
        Caption = #47700'        '#47784
        ParentColor = False
        ParentFont = False
        Style.Color = clBtnFace
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 4227327
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 250
        AnchorY = 44
      end
      object cxLabel3: TcxLabel
        Left = 392
        Top = 10
        Caption = #52649#51204'/'#52264#44048#44552#50529
        ParentColor = False
        ParentFont = False
        Style.Color = clBtnFace
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 4227327
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 437
        AnchorY = 18
      end
      object cxLabel5: TcxLabel
        Left = 28
        Top = 34
        Caption = #52649#51204'/'#52264#44048' '#44288#47532
        ParentColor = False
        ParentFont = False
        Style.Color = 13623806
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = 3233192
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 92
      Width = 710
      Height = 290
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object cxGridWkConnect: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 50
        Width = 704
        Height = 237
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        Constraints.MinHeight = 20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object cxCallBellWkCashList: TcxGridDBTableView
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
          DataController.DataModeController.SmartRefresh = True
          DataController.Filter.Options = [fcoShowOperatorDescription, fcoSoftNull]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,'
              Kind = skSum
              Column = cxCallBellWkCashListColumn3
            end
            item
              Format = '#,'
              Kind = skSum
              Column = cxCallBellWkCashListColumn4
            end
            item
              Format = '#,'
              Kind = skSum
              Column = cxCallBellWkCashListColumn5
            end>
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
          OptionsSelection.CellSelect = False
          OptionsView.NoDataToDisplayInfoText = '  '
          OptionsView.DataRowHeight = 22
          OptionsView.Footer = True
          OptionsView.GridLineColor = clSilver
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 23
          object cxCallBellWkCashListColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'No.'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 26
          end
          object cxCallBellWkCashListColumn2: TcxGridDBColumn
            DataBinding.FieldName = #45216#51676
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 113
          end
          object cxCallBellWkCashListColumn3: TcxGridDBColumn
            DataBinding.FieldName = #52649#51204#44552#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            HeaderAlignmentHorz = taCenter
            Width = 66
          end
          object cxCallBellWkCashListColumn4: TcxGridDBColumn
            DataBinding.FieldName = #52264#44048#44552#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            HeaderAlignmentHorz = taCenter
            Width = 62
          end
          object cxCallBellWkCashListColumn5: TcxGridDBColumn
            DataBinding.FieldName = #51092#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            HeaderAlignmentHorz = taCenter
            Width = 79
          end
          object cxCallBellWkCashListColumn6: TcxGridDBColumn
            DataBinding.FieldName = #51077#47141#51088
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 79
          end
          object cxCallBellWkCashListColumn7: TcxGridDBColumn
            DataBinding.FieldName = #47700#47784
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 271
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxCallBellWkCashList
        end
      end
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 704
        Height = 41
        Align = alTop
        BevelKind = bkFlat
        BevelOuter = bvNone
        TabOrder = 1
        object Shape3: TShape
          Left = 7
          Top = 6
          Width = 314
          Height = 22
          Pen.Color = 13353605
          Shape = stRoundRect
        end
        object btnRunXls: TcxButton
          Left = 545
          Top = 5
          Width = 66
          Height = 24
          Cursor = crHandPoint
          Caption = #50641#49472#45796#50868
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 4
          OnClick = btnRunXlsClick
        end
        object chk_before: TcxCheckBox
          Left = 324
          Top = 8
          Caption = #44284#44144#45236#50669
          ParentBackground = False
          ParentColor = False
          Style.Color = 16444898
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 0
          Transparent = True
          OnClick = chk_beforeClick
        end
        object BtnSearch: TcxButton
          Left = 481
          Top = 5
          Width = 60
          Height = 24
          Cursor = crHandPoint
          Caption = #51312#54924
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 2
          OnClick = BtnSearchClick
        end
        object cxLabel10: TcxLabel
          Left = 171
          Top = 8
          AutoSize = False
          Caption = '~'
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsNone
          Style.Color = 10932991
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #44404#47548
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 19
          Width = 17
          AnchorX = 180
          AnchorY = 18
        end
        object de_edDate: TcxDateEdit
          Left = 189
          Top = 5
          AutoSize = False
          Enabled = False
          ParentShowHint = False
          Properties.Alignment.Vert = taBottomJustify
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
          Height = 24
          Width = 110
        end
        object de_stDate: TcxDateEdit
          Left = 59
          Top = 5
          AutoSize = False
          Enabled = False
          ParentShowHint = False
          Properties.Alignment.Vert = taBottomJustify
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
          TabOrder = 6
          Height = 24
          Width = 110
        end
        object RbButton1: TcxButton
          Left = 300
          Top = 6
          Width = 23
          Height = 22
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
          PopupMenu = pop_date
          TabOrder = 7
          OnMouseDown = RbButton1MouseDown
        end
        object cxLabel2: TcxLabel
          Left = 12
          Top = 9
          Caption = #44592'    '#44036
          ParentColor = False
          ParentFont = False
          Style.Color = clBtnFace
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 34
          AnchorY = 17
        end
        object cbStatesView: TcxComboBox
          Left = 403
          Top = 5
          AutoSize = False
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404
            #52649#51204
            #52264#44048)
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.SkinName = 'Sharp'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 1
          Text = #51204#52404
          Height = 24
          Width = 64
        end
      end
    end
  end
  object pop_date: TPopupMenu
    AutoHotkeys = maManual
    AutoPopup = False
    Left = 204
    Top = 204
    object MenuItem6: TMenuItem
      Caption = #50724#45720
      OnClick = MenuItem6Click
    end
    object MenuItem7: TMenuItem
      Caption = #50612#51228
      OnClick = MenuItem7Click
    end
    object N6: TMenuItem
      Caption = #52572#44540#51068#51452#51068
      OnClick = N6Click
    end
    object N7: TMenuItem
      Caption = #52572#44540#54620#45804
      OnClick = N7Click
    end
    object N11: TMenuItem
      Caption = '1'#51068'~'#47568#51068
      OnClick = N11Click
    end
  end
end

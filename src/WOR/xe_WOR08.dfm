object Frm_WOR08: TFrm_WOR08
  Left = 815
  Top = 170
  BorderStyle = bsNone
  Caption = 'WOR08'
  ClientHeight = 605
  ClientWidth = 691
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
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 691
    Height = 605
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    object cxGridWkConnect: TcxGrid
      Left = 0
      Top = 323
      Width = 687
      Height = 278
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      object cxgWkIncentive: TcxGridDBTableView
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
        OnCellClick = cxgWkIncentiveCellClick
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
        OptionsSelection.CellSelect = False
        OptionsView.FocusRect = False
        OptionsView.NoDataToDisplayInfoText = '  '
        OptionsView.DataRowHeight = 22
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.GridLineColor = clSilver
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 23
        Styles.Selection = Frm_Main.cxStyle11
        object cxgWkIncentiveColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'No'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 36
        end
        object cxgWkIncentiveColumn2: TcxGridDBColumn
          DataBinding.FieldName = #50900#51648#44553#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          HeaderAlignmentHorz = taCenter
          Width = 71
        end
        object cxgWkIncentiveColumn3: TcxGridDBColumn
          DataBinding.FieldName = #44592#49324#49345#53468
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 66
        end
        object cxgWkIncentiveColumn4: TcxGridDBColumn
          DataBinding.FieldName = #44592#49324#48324#51077#44552#48169#49885
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 97
        end
        object cxgWkIncentiveColumn5: TcxGridDBColumn
          DataBinding.FieldName = #44592#49324#44540#47924#44592#44036
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 84
        end
        object cxgWkIncentiveColumn6: TcxGridDBColumn
          DataBinding.FieldName = #51204#45804#50868#54665#51068#49688
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 84
        end
        object cxgWkIncentiveColumn7: TcxGridDBColumn
          DataBinding.FieldName = #51648#44553#51068#51088
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 73
        end
        object cxgWkIncentiveColumn8: TcxGridDBColumn
          DataBinding.FieldName = #51333#47308#51068#51088
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
        end
        object cxgWkIncentiveColumn9: TcxGridDBColumn
          DataBinding.FieldName = #49569#44552#47700#47784
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxgWkIncentiveColumn10: TcxGridDBColumn
          DataBinding.FieldName = 'SEQ'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object cxgWkIncentiveColumn11: TcxGridDBColumn
          DataBinding.FieldName = 'SMS1'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
        end
        object cxgWkIncentiveColumn12: TcxGridDBColumn
          DataBinding.FieldName = 'SMS2'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
        end
        object cxgWkIncentiveColumn13: TcxGridDBColumn
          DataBinding.FieldName = 'SMS3'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
        end
        object cxgWkIncentiveColumn14: TcxGridDBColumn
          DataBinding.FieldName = #51204#51068'SMS'#49324#50857
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
      end
      object cxGridLevel4: TcxGridLevel
        GridView = cxgWkIncentive
      end
    end
    object pnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 687
      Height = 25
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '   '#44592#49324' '#51064#49468#54000#48652' '#51648#44553' '#49828#52992#51460
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
        687
        25)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 687
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = False
      end
      object BtnClose: TcxButton
        Left = 651
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
        OnClick = BtnCloseClick
      end
      object cxbDel: TcxButton
        Left = 590
        Top = 2
        Width = 60
        Height = 22
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #49325#51228
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 1
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        OnClick = cxbDelClick
      end
      object cxbInit: TcxButton
        Left = 468
        Top = 2
        Width = 60
        Height = 22
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #52488#44592#54868
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 2
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        OnClick = cxbInitClick
      end
      object cxbSave: TcxButton
        Left = 529
        Top = 2
        Width = 60
        Height = 22
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #49888#44508#51200#51109
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 3
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        OnClick = cxbSaveClick
      end
    end
    object PnlTop: TPanel
      Left = 0
      Top = 25
      Width = 687
      Height = 298
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object cxGroupBox1: TcxGroupBox
        Left = 4
        Top = 4
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 112
        Width = 680
        object Shape1: TShape
          Left = 10
          Top = 5
          Width = 213
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape2: TShape
          Left = 10
          Top = 31
          Width = 213
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape3: TShape
          Left = 10
          Top = 83
          Width = 213
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape4: TShape
          Left = 10
          Top = 57
          Width = 213
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxcbWkAttend: TcxComboBox
          Left = 103
          Top = 82
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 20
          Properties.ItemHeight = 16
          Properties.Items.Strings = (
            #47924#49884
            '30'#51068#48120#47564
            '90'#51068#48120#47564
            '90 ~ 180'#51068#44620#51648
            '180 ~ 270'#51068#44620#51648
            '270 ~ 365'#51068#44620#51648
            '365 ~ 730'#51068#44620#51648
            '730'#51068' '#51060#49345)
          Properties.ReadOnly = False
          Properties.UseLeftAlignmentOnEditing = False
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          Style.TransparentBorder = True
          StyleDisabled.Color = 16773362
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.TextColor = clBtnShadow
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.TextColor = clBlack
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 0
          Text = #47924#49884
          Height = 26
          Width = 121
        end
        object cxcbWkComm: TcxComboBox
          Left = 103
          Top = 56
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 20
          Properties.ItemHeight = 16
          Properties.ReadOnly = False
          Properties.UseLeftAlignmentOnEditing = False
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          Style.TransparentBorder = True
          StyleDisabled.Color = 16773362
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.TextColor = clBtnShadow
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.TextColor = clBlack
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 1
          Height = 26
          Width = 121
        end
        object cxcbWkCommcd: TcxComboBox
          Left = 230
          Top = 55
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 20
          Properties.ItemHeight = 16
          Properties.ReadOnly = False
          Properties.UseLeftAlignmentOnEditing = False
          Style.LookAndFeel.NativeStyle = False
          Style.TransparentBorder = True
          StyleDisabled.Color = 16773362
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.TextColor = clBtnShadow
          StyleFocused.Color = clWhite
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.TextColor = clBlack
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Visible = False
          Height = 21
          Width = 98
        end
        object cxcbWkStatus: TcxComboBox
          Left = 103
          Top = 30
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 20
          Properties.ItemHeight = 16
          Properties.Items.Strings = (
            #51204#52404'('#53748#51649#51228#50808')'
            #51221#49345
            #51221#49345'('#51648#49324#45824#45225')'
            #49688#49688#47308#48120#45225
            #48372#54744#47308#48120#45225
            #49324#50857#47308#48120#45225
            #48372#54744#47308'+'#49324#50857#47308#48120#45225
            #48708#51064#51613
            #44592#53440#51221#51648
            #53748#51649
            #48376#51088#51221#51648)
          Properties.ReadOnly = False
          Properties.UseLeftAlignmentOnEditing = False
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          Style.TransparentBorder = True
          StyleDisabled.Color = 16773362
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.TextColor = clBtnShadow
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.TextColor = clBlack
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 3
          Text = #51204#52404'('#53748#51649#51228#50808')'
          Height = 26
          Width = 121
        end
        object cxLabel1: TcxLabel
          Left = 19
          Top = 36
          Caption = #44592'  '#49324'  '#49345'  '#53468
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
          AnchorX = 57
          AnchorY = 44
        end
        object cxLabel17: TcxLabel
          Left = 196
          Top = 10
          Caption = '('#50896')'
          ParentColor = False
          Style.Color = 13623806
          Transparent = True
        end
        object cxLabel3: TcxLabel
          Left = 16
          Top = 62
          Caption = #44592#49324#51077#44552#48169#49885
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
          AnchorX = 54
          AnchorY = 70
        end
        object cxLabel4: TcxLabel
          Left = 21
          Top = 11
          Caption = #50900' '#51648#44553' '#44552#50529
          ParentColor = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.SkinName = 'Office2010Silver'
          Style.TextColor = 13719147
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
          StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
          StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 57
          AnchorY = 19
        end
        object cxLabel5: TcxLabel
          Left = 16
          Top = 87
          Caption = #44592#49324#44540#47924#49884#44036
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
          AnchorX = 54
          AnchorY = 95
        end
        object cxlbBrNo: TcxLabel
          Left = 230
          Top = 7
          AutoSize = False
          Caption = #51648#49324#53076#46300
          ParentColor = False
          ParentFont = False
          Style.BorderColor = 16494830
          Style.BorderStyle = ebsSingle
          Style.Color = 12189690
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = 33023
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = [fsBold]
          Style.TextColor = 13719147
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          Height = 21
          Width = 99
          AnchorX = 280
          AnchorY = 18
        end
        object cxlbSeq: TcxLabel
          Left = 230
          Top = 31
          AutoSize = False
          Caption = 'SEQ'
          ParentColor = False
          ParentFont = False
          Style.BorderColor = 16494830
          Style.BorderStyle = ebsSingle
          Style.Color = 12189690
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = 33023
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = [fsBold]
          Style.TextColor = 13719147
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          Height = 21
          Width = 99
          AnchorX = 280
          AnchorY = 42
        end
        object cxedCash: TcxSpinEdit
          Left = 104
          Top = 6
          AutoSize = False
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taBottomJustify
          Properties.AssignedValues.EditFormat = True
          Properties.AssignedValues.MaxValue = True
          Properties.AssignedValues.MinValue = True
          Properties.DisplayFormat = '#,##0'
          Properties.ImeMode = imSHanguel
          Properties.Increment = 10000.000000000000000000
          Properties.ValidateOnEnter = False
          Properties.ZeroLargeIncrement = True
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
          TabOrder = 11
          Height = 22
          Width = 93
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 4
        Top = 120
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Height = 82
        Width = 680
        object Shape8: TShape
          Left = 383
          Top = 8
          Width = 127
          Height = 68
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object btn1: TcxButton
          Tag = 1
          Left = 511
          Top = 8
          Width = 36
          Height = 33
          Cursor = crHandPoint
          Caption = #9654
          Enabled = False
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 0
          OnClick = btn1Click
          OnKeyDown = btn1KeyDown
        end
        object btn2: TcxButton
          Tag = 6
          Left = 511
          Top = 43
          Width = 36
          Height = 33
          Cursor = crHandPoint
          Caption = 'DEL'
          Enabled = False
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btn2Click
        end
        object chk1DaySMS: TcxCheckBox
          Left = 16
          Top = 57
          Caption = #51064#49468#54000#48652' '#51648#44553' 1~2'#51068#51204#50640' '#51648#49324#52880#49772' '#51092#50529' SMS'#48372#44256' '#48155#44592
          ParentBackground = False
          ParentColor = False
          Style.BorderColor = clBlack
          Style.BorderStyle = ebsNone
          Style.Color = 16706522
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          Style.TextColor = 13719147
          Style.TextStyle = [fsBold]
          Style.TransparentBorder = False
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 2
          Transparent = True
          OnClick = chk1DaySMSClick
        end
        object cxckBefore: TcxCheckBox
          Left = 16
          Top = 7
          Caption = #51204#45804' '#50868#54665' '#51068#49688' '#49444#51221
          ParentBackground = False
          ParentColor = False
          Style.BorderColor = clBlack
          Style.BorderStyle = ebsNone
          Style.Color = 16706522
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          Style.TextColor = 13719147
          Style.TextStyle = [fsBold]
          Style.TransparentBorder = False
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 3
          Transparent = True
          OnClick = cxckBeforeClick
        end
        object cxLabel15: TcxLabel
          Left = 384
          Top = 18
          Caption = #51204#49569#46112' SMS'#48264#54840#13#10'('#52509' 3'#44060#44620#51648' '#46321#47197#44032#45733')'
          ParentColor = False
          Style.Color = 16706522
          Properties.Alignment.Horz = taCenter
          Transparent = True
          AnchorX = 446
        end
        object cxLabel7: TcxLabel
          Left = 152
          Top = 7
          AutoSize = False
          Caption = '('#51064#49468#54000#48652' '#51648#44553' '#44592#51456')'
          ParentColor = False
          Style.Color = 16706522
          Transparent = True
          Height = 17
          Width = 123
        end
        object cxLabel8: TcxLabel
          Left = 104
          Top = 31
          AutoSize = False
          Caption = #51068' ('#44592#51456' : 1'#51068' 1'#44148' '#51060#49345' '#50868#54665#54620' '#44221#50864')'
          ParentColor = False
          Style.Color = 16706522
          Transparent = True
          Height = 17
          Width = 209
        end
        object cxListBox2: TcxListBox
          Left = 548
          Top = 7
          Width = 106
          Height = 69
          DragMode = dmAutomatic
          Enabled = False
          ImeName = 'Microsoft Office IME 2007'
          ItemHeight = 12
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
        end
        object cxTextEdit1: TcxTextEdit
          Left = 382
          Top = 53
          AutoSize = False
          Enabled = False
          Properties.ImeMode = imSHanguel
          Properties.MaxLength = 50
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 8
          OnKeyDown = cxTextEdit1KeyDown
          Height = 24
          Width = 129
        end
        object cxedDay: TcxCurrencyEdit
          Left = 39
          Top = 29
          BeepOnEnter = False
          Constraints.MaxHeight = 21
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '0'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          Width = 63
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 4
        Top = 206
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 2
        DesignSize = (
          680
          89)
        Height = 89
        Width = 680
        object Shape5: TShape
          Left = 10
          Top = 59
          Width = 213
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape6: TShape
          Left = 11
          Top = 33
          Width = 213
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape7: TShape
          Left = 11
          Top = 7
          Width = 213
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxbExcel: TcxButton
          Left = 546
          Top = 5
          Width = 106
          Height = 74
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #50641#49472#51200#51109
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 0
          TabStop = False
          OnClick = cxbExcelClick
        end
        object cxdtEndDate: TcxDateEdit
          Left = 106
          Top = 32
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
          TabOrder = 1
          Height = 26
          Width = 121
        end
        object cxdtSendDate: TcxDateEdit
          Left = 106
          Top = 6
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
          TabOrder = 2
          Height = 26
          Width = 121
        end
        object cxedMemo: TcxTextEdit
          Left = 106
          Top = 58
          AutoSize = False
          Properties.ImeMode = imSHanguel
          Properties.MaxLength = 50
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Height = 26
          Width = 121
        end
        object cxLabel10: TcxLabel
          Left = 34
          Top = 11
          Caption = #51648#44553#51068#51088
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
          AnchorX = 60
          AnchorY = 19
        end
        object cxLabel11: TcxLabel
          Left = 34
          Top = 38
          Caption = #51333#47308#51068#51088
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
          AnchorX = 60
          AnchorY = 46
        end
        object cxLabel12: TcxLabel
          Left = 34
          Top = 64
          Caption = #49569#44552#47700#47784
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
          AnchorX = 60
          AnchorY = 72
        end
        object cxLabel13: TcxLabel
          Left = 230
          Top = 13
          Caption = '('#54644#45817#51068#51088#50640' '#47588#50900#51648#44553')'
          ParentColor = False
          Style.Color = 16771327
          Transparent = True
        end
        object cxLabel14: TcxLabel
          Left = 229
          Top = 63
          Caption = #50696') '#51109#44592#44540#47924' '#51064#49468#54000#48652'('#52572#45824' 15'#51088#44620#51648#51077#47141')'
          ParentColor = False
          Style.Color = 16771327
          Transparent = True
        end
      end
    end
  end
end

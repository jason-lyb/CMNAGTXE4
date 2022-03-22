object Frm_WOR07: TFrm_WOR07
  Left = 490
  Top = 260
  Caption = #44592#49324#51060#47141#49324#54637
  ClientHeight = 465
  ClientWidth = 810
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
  object Shape6: TShape
    Left = 0
    Top = 58
    Width = 810
    Height = 1
    Align = alTop
    Brush.Style = bsClear
    Pen.Color = 12566402
    Pen.Style = psClear
    ExplicitLeft = -206
    ExplicitTop = 94
    ExplicitWidth = 1016
  end
  object cxGridWkConnect: TcxGrid
    Left = 0
    Top = 59
    Width = 810
    Height = 406
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    object cxgWkHistory: TcxGridDBTableView
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
      object cxgWkHistoryColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'No'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 34
      end
      object cxgWkHistoryColumn2: TcxGridDBColumn
        DataBinding.FieldName = #48376#49324#47749
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 91
      end
      object cxgWkHistoryColumn3: TcxGridDBColumn
        DataBinding.FieldName = #51648#49324#47749
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 91
      end
      object cxgWkHistoryColumn4: TcxGridDBColumn
        DataBinding.FieldName = #51116#51649#50668#48512
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 58
      end
      object cxgWkHistoryColumn5: TcxGridDBColumn
        DataBinding.FieldName = #51077#49324#51068
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 76
      end
      object cxgWkHistoryColumn6: TcxGridDBColumn
        DataBinding.FieldName = #53748#49324#51068
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 68
      end
      object cxgWkHistoryColumn7: TcxGridDBColumn
        DataBinding.FieldName = #44592#49324#47749
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 63
      end
      object cxgWkHistoryColumn8: TcxGridDBColumn
        DataBinding.FieldName = #45800#47568#44592
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 88
      end
      object cxgWkHistoryColumn9: TcxGridDBColumn
        DataBinding.FieldName = #55092#45824#54256
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 85
      end
      object cxgWkHistoryColumn10: TcxGridDBColumn
        DataBinding.FieldName = #51452#48124#46321#47197#48264#54840
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 84
      end
      object cxgWkHistoryColumn11: TcxGridDBColumn
        DataBinding.FieldName = #44592#49324#47700#47784
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 68
      end
    end
    object cxGridLevel4: TcxGridLevel
      GridView = cxgWkHistory
    end
  end
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 810
    Height = 25
    Cursor = crSizeAll
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '   '#44592#49324' '#51060#47141' '#49324#54637
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
      810
      25)
    object cxLblActive: TLabel
      Left = 0
      Top = 0
      Width = 810
      Height = 5
      Align = alTop
      AutoSize = False
      Color = 33023
      ParentColor = False
      Transparent = False
    end
    object BtnClose: TcxButton
      Left = 781
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
    object cxButton20: TcxButton
      Left = 715
      Top = 2
      Width = 63
      Height = 22
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #50641#49472#45796#50868
      Colors.Default = 16773362
      Colors.Normal = 16773362
      Colors.Pressed = 16644080
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      OnClick = cxButton20Click
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 25
    Align = alTop
    Style.BorderStyle = ebsFlat
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    TabOrder = 2
    Height = 33
    Width = 810
    object Shape1: TShape
      Left = 40
      Top = 5
      Width = 69
      Height = 24
      Pen.Color = 12566402
      Shape = stRoundRect
    end
    object Shape2: TShape
      Left = 211
      Top = 5
      Width = 95
      Height = 24
      Pen.Color = 12566402
      Shape = stRoundRect
    end
    object cxButton1: TcxButton
      Left = 419
      Top = 5
      Width = 62
      Height = 24
      Cursor = crHandPoint
      Caption = #51312#54924
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 0
      TabStop = False
      OnClick = cxButton1Click
    end
    object cxedSNum: TcxTextEdit
      Left = 296
      Top = 4
      AutoSize = False
      Properties.MaxLength = 14
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
      OnKeyPress = cxedTelNoKeyPress
      OnKeyUp = cxedTelNoKeyUp
      Height = 26
      Width = 119
    end
    object cxedTelNo: TcxTextEdit
      Left = 100
      Top = 4
      AutoSize = False
      Properties.MaxLength = 14
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
      OnKeyPress = cxedTelNoKeyPress
      OnKeyUp = cxedTelNoKeyUp
      Height = 26
      Width = 106
    end
    object cxLabel1: TcxLabel
      Left = 216
      Top = 9
      Cursor = crHandPoint
      Caption = #51452#48124#46321#47197#48264#54840
      ParentColor = False
      Style.TextColor = clBlack
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 254
      AnchorY = 17
    end
    object cxLabel4: TcxLabel
      Left = 48
      Top = 9
      Cursor = crHandPoint
      Caption = #50672' '#46973' '#52376
      ParentColor = False
      Style.TextColor = clBlack
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 72
      AnchorY = 17
    end
    object cxlbCnt: TcxLabel
      Left = 500
      Top = 5
      Cursor = crHandPoint
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Color = 12189690
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 33023
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 24
      Width = 117
      AnchorX = 559
      AnchorY = 17
    end
  end
end

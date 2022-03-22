object Frm_CMP013: TFrm_CMP013
  Left = 311
  Top = 308
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Frm_CMP013'
  ClientHeight = 468
  ClientWidth = 609
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
    Width = 609
    Height = 468
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object Shape5: TShape
      Left = 0
      Top = 164
      Width = 605
      Height = 2
      Align = alTop
      Brush.Style = bsClear
      Pen.Style = psClear
      ExplicitLeft = -6
      ExplicitTop = 23
      ExplicitWidth = 305
    end
    object cxGroupBox1: TcxGroupBox
      Left = 0
      Top = 25
      Align = alTop
      Style.BorderStyle = ebsFlat
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      TabOrder = 0
      DesignSize = (
        605
        139)
      Height = 139
      Width = 605
      object Shape1: TShape
        Left = 8
        Top = 7
        Width = 150
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape2: TShape
        Left = 8
        Top = 33
        Width = 150
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape3: TShape
        Left = 8
        Top = 59
        Width = 150
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape6: TShape
        Left = 412
        Top = 33
        Width = 150
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape7: TShape
        Left = 218
        Top = 33
        Width = 150
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape4: TShape
        Left = 412
        Top = 7
        Width = 150
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object cbbSido: TcxComboBox
        Left = 320
        Top = -14
        Properties.DropDownListStyle = lsFixedList
        Properties.OnChange = cbbSidoPropertiesChange
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 8
        Visible = False
        Width = 111
      end
      object btnClear: TcxButton
        Left = 390
        Top = 87
        Width = 66
        Height = 34
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #49352#47196#51077#47141
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        Enabled = False
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 4
        OnClick = btnClearClick
      end
      object btnDelete: TcxButton
        Left = 526
        Top = 87
        Width = 66
        Height = 34
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #49325#51228
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        Enabled = False
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 5
        OnClick = btnDeleteClick
      end
      object btnUpdate: TcxButton
        Left = 458
        Top = 87
        Width = 66
        Height = 34
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #51200#51109
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 6
        OnClick = btnUpdateClick
      end
      object cbbGugun: TcxComboBox
        Left = 487
        Top = -7
        Properties.DropDownListStyle = lsFixedList
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 7
        Visible = False
        Width = 111
      end
      object edtMessage: TcxTextEdit
        Left = 89
        Top = 58
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        OnKeyUp = edtMessageKeyUp
        Height = 26
        Width = 504
      end
      object edtOrder: TcxTextEdit
        Left = 489
        Top = 6
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnKeyUp = edtMessageKeyUp
        Height = 26
        Width = 104
      end
      object edtPhone: TcxTextEdit
        Left = 89
        Top = 32
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 9
        OnExit = edtPhoneExit
        OnKeyUp = edtMessageKeyUp
        Height = 26
        Width = 128
      end
      object edtPrice: TcxTextEdit
        Left = 489
        Top = 32
        AutoSize = False
        Properties.Alignment.Horz = taRightJustify
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        OnKeyUp = edtMessageKeyUp
        Height = 26
        Width = 104
      end
      object lbl2: TcxLabel
        Left = 20
        Top = 38
        Caption = #45824#54364#48264#54840
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 46
        AnchorY = 46
      end
      object lbl3: TcxLabel
        Left = 422
        Top = 12
        Caption = #50724#45908#53440#51077
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 448
        AnchorY = 20
      end
      object lbl4: TcxLabel
        Left = 420
        Top = 38
        Caption = #53084#44592#48376#50836#44552
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 452
        AnchorY = 46
      end
      object lbl5: TcxLabel
        Left = 20
        Top = 64
        Caption = #47700' '#49464' '#51648
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 46
        AnchorY = 72
      end
      object lbl65: TcxLabel
        Left = 20
        Top = 12
        Caption = #51648'    '#49324
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 46
        AnchorY = 20
      end
      object lblBrSosok: TcxLabel
        Left = 90
        Top = 6
        AutoSize = False
        Caption = #49548#49549
        ParentColor = False
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 13719147
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 26
        Width = 203
        AnchorX = 192
        AnchorY = 19
      end
      object edtRealPhone: TcxTextEdit
        Left = 290
        Top = 32
        AutoSize = False
        Properties.ImeMode = imSAlpha
        Properties.MaxLength = 14
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        OnExit = edtPhoneExit
        OnKeyPress = edtRealPhoneKeyPress
        OnKeyUp = edtMessageKeyUp
        Height = 26
        Width = 122
      end
      object cxLabel1: TcxLabel
        Left = 224
        Top = 38
        Caption = #49892#52265#49888#48264#54840
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 256
        AnchorY = 46
      end
      object lbl25: TcxLabel
        Left = 8
        Top = 88
        Caption = #8251' '#47700#49464#51648' '#49444#51221#51012' '#54616#49884#47732' '#47784#46304' '#52980#54504#53552#47484' '#51116#47196#44536#51064#54616#49492#50556'  '#51201#50857#46121#45768#45796'.'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object Label1: TcxLabel
        Left = 8
        Top = 105
        Caption = #8251' '#45824#54364#48264#54840#48156#44553#51008' '#53084#47560#45320'(1688-6618)'#47196' '#50836#52397#54616#49884#44600' '#48148#46989#45768#45796'.'
        Transparent = True
      end
      object Label2: TcxLabel
        Left = 8
        Top = 121
        Caption = #8251' '#49892#52265#49888#48264#54840' - '#46321#47197#50629#49548#44032' '#47564#44148' '#51060#49345#51060#47732' '#51088#46041#48320#44221' '#48520#44032#54633#45768#45796'.'
        Transparent = True
      end
    end
    object PnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 605
      Height = 25
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '   '#45824#54364#48264#54840' '#44288#47532
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
        605
        25)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 605
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = False
      end
      object btnClose: TcxButton
        Left = 576
        Top = 1
        Width = 29
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
    object cxGridKeyPhone: TcxGrid
      Left = 0
      Top = 166
      Width = 605
      Height = 298
      Align = alClient
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
      object cxViewKeyPhone: TcxGridDBTableView
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
        OnCellClick = cxViewKeyPhoneCellClick
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
          DataBinding.FieldName = #45824#54364#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 97
        end
        object cxColView1Column2: TcxGridDBColumn
          DataBinding.FieldName = #50724#45908#49457#44201
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 77
        end
        object cxColView1Column3: TcxGridDBColumn
          DataBinding.FieldName = #53084#44592#48376#50836#44552
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 66
        end
        object cxColView1Column4: TcxGridDBColumn
          Caption = #46972#50864#54021#49884'/'#46020
          DataBinding.FieldName = #46972#50864#54021#49884#46020
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 72
        end
        object cxColView1Column5: TcxGridDBColumn
          Caption = #46972#50864#54021#49884'/'#44400'/'#44396
          DataBinding.FieldName = #46972#50864#54021#49884#44400#44396
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxColView1Column6: TcxGridDBColumn
          DataBinding.FieldName = #45824#54364#48264#54840#48324#47700#49464#51648
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 259
        end
        object cxColView1Column7: TcxGridDBColumn
          DataBinding.FieldName = #49892#52265#49888#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 79
        end
      end
      object cxLevelKeyPhone: TcxGridLevel
        GridView = cxViewKeyPhone
      end
    end
  end
end

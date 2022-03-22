object Frm_CMP014: TFrm_CMP014
  Left = 531
  Top = 346
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Frm_CMP014'
  ClientHeight = 426
  ClientWidth = 602
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
    Width = 602
    Height = 426
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object PnlBottom: TPanel
      Left = 0
      Top = 64
      Width = 598
      Height = 358
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object PnlLeft: TPanel
        Left = 0
        Top = 0
        Width = 185
        Height = 358
        Align = alLeft
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object cxTreeView: TcxTreeView
          Left = 0
          Top = 0
          Width = 185
          Height = 358
          Align = alClient
          TabOrder = 0
          OnChange = cxTreeViewChange
        end
      end
      object PnlClient: TPanel
        Left = 185
        Top = 0
        Width = 413
        Height = 358
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 1
        ParentColor = True
        TabOrder = 1
        object pnl4: TPanel
          Left = 1
          Top = 305
          Width = 411
          Height = 52
          Align = alBottom
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 1
          Visible = False
          object cxGroupBox2: TcxGroupBox
            Left = 0
            Top = 1
            Align = alBottom
            TabOrder = 0
            Height = 51
            Width = 411
            object Shape2: TShape
              Left = 4
              Top = 4
              Width = 134
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object Shape3: TShape
              Left = 140
              Top = 4
              Width = 134
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object Shape4: TShape
              Left = 276
              Top = 4
              Width = 131
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object edt1: TcxTextEdit
              Left = 139
              Top = 24
              AutoSize = False
              Properties.ImeMode = imSHanguel
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 0
              Height = 25
              Width = 136
            end
            object edt2: TcxTextEdit
              Left = 275
              Top = 24
              AutoSize = False
              Properties.ImeMode = imSHanguel
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              Height = 25
              Width = 133
            end
            object edtBaseMID: TcxTextEdit
              Left = 3
              Top = 24
              AutoSize = False
              Properties.ImeMode = imSHanguel
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 2
              Height = 25
              Width = 136
            end
            object lbl2: TcxLabel
              Left = 42
              Top = 7
              Caption = #51077#44552#54364#47749
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 68
              AnchorY = 15
            end
            object lbl3: TcxLabel
              Left = 179
              Top = 7
              Caption = #50868#54665#50836#44552
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 205
              AnchorY = 15
            end
            object lbl4: TcxLabel
              Left = 316
              Top = 7
              Caption = #49688' '#49688' '#47308
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 342
              AnchorY = 15
            end
          end
        end
        object cxGrid: TcxGrid
          Left = 1
          Top = 1
          Width = 411
          Height = 304
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 0
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
              Caption = 'No.'
              DataBinding.FieldName = #45824#54364#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 41
            end
            object cxColView1Column2: TcxGridDBColumn
              Caption = #51077#44552#54364#47749
              DataBinding.FieldName = #50724#45908#49457#44201
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 82
            end
            object cxColView1Column3: TcxGridDBColumn
              Caption = #50868#54665#50836#44552'('#51060#49345')'
              DataBinding.FieldName = #53084#44592#48376#50836#44552
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 108
            end
            object cxColView1Column4: TcxGridDBColumn
              Caption = #49688#49688#47308'(100%'#51060#54616#45716' '#51221#47456'%)'
              DataBinding.FieldName = #46972#50864#54021#49884#46020
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 154
            end
          end
          object cxLevel: TcxGridLevel
            GridView = cxView
          end
        end
      end
    end
    object pnl1: TPanel
      Left = 0
      Top = 25
      Width = 598
      Height = 39
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 0
        DesignSize = (
          598
          38)
        Height = 38
        Width = 598
        object Shape1: TShape
          Left = 12
          Top = 7
          Width = 150
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object lblBrSosok: TcxLabel
          Left = 95
          Top = 6
          AutoSize = False
          Caption = #49548#49549
          ParentColor = False
          Style.BorderStyle = ebsSingle
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 26
          Width = 325
          AnchorX = 258
          AnchorY = 19
        end
        object lbl65: TcxLabel
          Left = 26
          Top = 12
          Caption = #51648'     '#49324
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 55
          AnchorY = 20
        end
        object btn1: TcxButton
          Left = 11
          Top = 40
          Width = 101
          Height = 26
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #51077#44552#54364#47785#47197#52628#44032
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 2
        end
        object btn2: TcxButton
          Left = 115
          Top = 40
          Width = 101
          Height = 26
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #51077#44552#54364#47785#47197#49688#51221
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 3
        end
        object btn4: TcxButton
          Left = 219
          Top = 40
          Width = 101
          Height = 26
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #51077#44552#54364#47785#47197#49325#51228
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 4
        end
        object edt3: TcxTextEdit
          Left = 325
          Top = 40
          AutoSize = False
          Properties.ImeMode = imSHanguel
          TabOrder = 5
          Height = 26
          Width = 176
        end
      end
    end
    object PnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 598
      Height = 25
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '   '#51077#44552#54364' '#44288#47532
      Color = 12566463
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      OnMouseDown = PnlTitleMouseDown
      DesignSize = (
        598
        25)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 598
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = False
      end
      object btnClose: TcxButton
        Left = 568
        Top = 1
        Width = 30
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
  end
end

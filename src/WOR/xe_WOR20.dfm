object Frm_WOR20: TFrm_WOR20
  Left = 0
  Top = 0
  Caption = 'Frm_WOR20'
  ClientHeight = 686
  ClientWidth = 455
  Color = clBtnFace
  Constraints.MaxHeight = 725
  Constraints.MaxWidth = 471
  Constraints.MinHeight = 725
  Constraints.MinWidth = 471
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
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
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 455
    Height = 686
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 455
      Height = 30
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  '#48260#49828'('#54633#47448#52264')'#46321#47197' / '#45432#49440#49345#49464' '#47700#47784
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
        455
        30)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 455
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = False
        OnMouseDown = cxLblActiveMouseDown
        ExplicitTop = 8
        ExplicitWidth = 857
      end
      object BtnClose: TcxButton
        Left = 429
        Top = 6
        Width = 22
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
        OnClick = BtnCloseClick
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 30
      Width = 455
      Height = 656
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object cxPageControl2: TcxPageControl
        Left = 0
        Top = 0
        Width = 455
        Height = 656
        Align = alClient
        Color = clBtnFace
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        Properties.CustomButtons.Buttons = <>
        Properties.Style = 9
        ClientRectBottom = 656
        ClientRectRight = 455
        ClientRectTop = 0
      end
    end
    object cxPageControl1: TcxPageControl
      Left = 0
      Top = 30
      Width = 455
      Height = 656
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Properties.ActivePage = cxTabSheet4
      Properties.CustomButtons.Buttons = <>
      LookAndFeel.NativeStyle = True
      ClientRectBottom = 652
      ClientRectLeft = 4
      ClientRectRight = 451
      ClientRectTop = 24
      object cxTabSheet3: TcxTabSheet
        Caption = #45432#49440#50504#45236
        ImageIndex = 0
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 447
          Height = 628
          Align = alClient
          TabOrder = 0
          object cxGroupBox1: TcxGroupBox
            Left = 1
            Top = 1
            Align = alTop
            Style.BorderStyle = ebsFlat
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Height = 35
            Width = 445
            object Shape1: TShape
              Left = 3
              Top = 5
              Width = 182
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object cbLine: TcxComboBox
              Left = 77
              Top = 4
              AutoSize = False
              Properties.DropDownListStyle = lsFixedList
              Properties.OnChange = cbLinePropertiesChange
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
              Height = 26
              Width = 148
            end
            object cxLabel54: TcxLabel
              Left = 19
              Top = 10
              Caption = #45432'       '#49440
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
              AnchorX = 47
              AnchorY = 18
            end
            object btnLineInfo: TcxButton
              Left = 226
              Top = 4
              Width = 63
              Height = 26
              Cursor = crHandPoint
              Caption = #51312#54924
              Colors.Default = 16773362
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              TabOrder = 2
              OnClick = btnLineInfoClick
            end
            object btnBusInfoSave: TcxButton
              Left = 291
              Top = 4
              Width = 63
              Height = 26
              Cursor = crHandPoint
              Caption = #51200' '#51109
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 3
              OnClick = btnBusInfoSaveClick
            end
            object btnLineNameUpdate: TcxButton
              Left = 360
              Top = 4
              Width = 81
              Height = 26
              Cursor = crHandPoint
              Caption = #45432#49440#47749#49688#51221
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 4
              OnClick = btnLineNameUpdateClick
            end
          end
          object mmo_LineNotice: TcxMemo
            Left = 1
            Top = 36
            Align = alClient
            Properties.ScrollBars = ssVertical
            TabOrder = 1
            Height = 591
            Width = 445
          end
          object pnl_LineNameUpdate: TcxGroupBox
            Left = 116
            Top = 42
            Caption = '   '#45432#49440#47749' '#49688#51221
            ParentBackground = False
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clBtnFace
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Visible = False
            Height = 127
            Width = 269
            object Shape27: TShape
              Left = 6
              Top = 16
              Width = 173
              Height = 23
              Pen.Color = 12042188
              Shape = stRoundRect
            end
            object btn_AddLineSave: TcxButton
              Left = 7
              Top = 45
              Width = 120
              Height = 26
              Cursor = crHandPoint
              Caption = #49688#51221
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 0
              OnClick = btn_AddLineSaveClick
            end
            object btn_AddLineClose: TcxButton
              Left = 142
              Top = 45
              Width = 120
              Height = 26
              Cursor = crHandPoint
              Caption = #45803#44592
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 1
              OnClick = btn_AddLineCloseClick
            end
            object cxLabel21: TcxLabel
              Left = 27
              Top = 20
              Caption = #45432#49440#47749
              ParentColor = False
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = []
              Style.TextColor = 13719147
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              AnchorX = 47
              AnchorY = 28
            end
            object edt_LineName: TcxTextEdit
              Left = 85
              Top = 15
              AutoSize = False
              Properties.ImeMode = imSHanguel
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
              Height = 25
              Width = 181
            end
            object lb_LineNotice: TcxLabel
              Left = 6
              Top = 77
              Caption = #49888#44508#45432#49440#51012' '#46321#47197#54616#50668' '#51452#49901#49884#50724'.'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object cxLabel6: TcxLabel
              Left = 3
              Top = 100
              Caption = #45432#49440#47749' '#49688#51221' '#54980' '#49492#53952#44288#51228#47484' '#51116' '#49884#51089#54616#49901#49884#50724
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlue
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = True
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              Transparent = True
            end
          end
        end
      end
      object cxTabSheet4: TcxTabSheet
        Caption = #48260#49828#44592#49324#49444#51221
        ImageIndex = 1
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 447
          Height = 177
          Align = alTop
          Caption = 'Panel4'
          TabOrder = 0
          object Panel5: TPanel
            Left = 1
            Top = 34
            Width = 445
            Height = 142
            Align = alClient
            BevelOuter = bvNone
            Caption = 'Panel5'
            ParentBackground = False
            TabOrder = 0
            object cxGrid1: TcxGrid
              Left = 0
              Top = 0
              Width = 445
              Height = 142
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              TabOrder = 0
              LookAndFeel.NativeStyle = False
              object cxgDriverIn: TcxGridDBTableView
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
                OnCellDblClick = cxgDriverInCellDblClick
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
                OptionsData.Editing = False
                OptionsSelection.CellSelect = False
                OptionsSelection.HideFocusRectOnExit = False
                OptionsSelection.InvertSelect = False
                OptionsView.FocusRect = False
                OptionsView.NoDataToDisplayInfoText = '  '
                OptionsView.DataRowHeight = 22
                OptionsView.ExpandButtonsForEmptyDetails = False
                OptionsView.GridLineColor = clSilver
                OptionsView.GroupByBox = False
                OptionsView.HeaderHeight = 23
                object cxgDriverInColumn0: TcxGridDBColumn
                  DataBinding.FieldName = 'No'
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Width = 32
                end
                object cxgDriverInColumn1: TcxGridDBColumn
                  DataBinding.FieldName = #45432#49440#53076#46300
                  PropertiesClassName = 'TcxLabelProperties'
                  Visible = False
                  Width = 54
                end
                object cxgDriverInColumn2: TcxGridDBColumn
                  DataBinding.FieldName = #50868#54665#45432#49440
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Width = 122
                end
                object cxgDriverInColumn3: TcxGridDBColumn
                  DataBinding.FieldName = #51088#52404#49324#48264
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Width = 70
                end
                object cxgDriverInColumn4: TcxGridDBColumn
                  DataBinding.FieldName = #44592#49324#47749
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Width = 99
                end
                object cxgDriverInColumn5: TcxGridDBColumn
                  DataBinding.FieldName = #45800#47568#44592
                  PropertiesClassName = 'TcxLabelProperties'
                  HeaderAlignmentHorz = taCenter
                  Width = 96
                end
                object cxgDriverInColumn7: TcxGridDBColumn
                  DataBinding.FieldName = #44592#49324#49324#48264
                  PropertiesClassName = 'TcxLabelProperties'
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Width = 58
                end
              end
              object cxGridLevel1: TcxGridLevel
                GridView = cxgDriverIn
              end
            end
          end
          object Panel6: TPanel
            Left = 1
            Top = 1
            Width = 445
            Height = 33
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Panel6'
            ParentBackground = False
            TabOrder = 1
            object Shape2: TShape
              Left = 3
              Top = 5
              Width = 167
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object btn_Sel1: TcxButton
              Left = 369
              Top = 4
              Width = 71
              Height = 26
              Cursor = crHandPoint
              Caption = #51204#52404#51312#54924
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 0
              OnClick = btn_Sel1Click
            end
            object edt_Sel1: TcxTextEdit
              Left = 265
              Top = 5
              AutoSize = False
              Properties.ImeMode = imSHanguel
              Properties.OnChange = edt_Sel1PropertiesChange
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
              OnKeyDown = edt_Sel1KeyDown
              Height = 24
              Width = 98
            end
            object cb_Sel1: TcxComboBox
              Left = 187
              Top = 5
              TabStop = False
              AutoSize = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                #51088#52404#49324#48264
                #44592#49324#47749
                #45800#47568#44592)
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
              Text = #51088#52404#49324#48264
              Height = 24
              Width = 76
            end
            object cxLabel1: TcxLabel
              Left = 6
              Top = 9
              Caption = #45432'       '#49440
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
              AnchorX = 34
              AnchorY = 17
            end
            object cbLine2: TcxComboBox
              Left = 62
              Top = 4
              AutoSize = False
              Properties.DropDownListStyle = lsFixedList
              Properties.OnChange = cbLine2PropertiesChange
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
              Height = 26
              Width = 123
            end
          end
        end
        object Panel7: TPanel
          Left = 0
          Top = 431
          Width = 447
          Height = 197
          Align = alBottom
          Caption = 'Panel4'
          TabOrder = 1
          object Panel8: TPanel
            Left = 1
            Top = 34
            Width = 445
            Height = 162
            Align = alClient
            BevelOuter = bvNone
            Caption = 'Panel5'
            ParentBackground = False
            TabOrder = 0
            object cxGrid3: TcxGrid
              Left = 0
              Top = 0
              Width = 445
              Height = 162
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              TabOrder = 0
              LookAndFeel.NativeStyle = False
              object cxAnotherDriver: TcxGridDBTableView
                Tag = 2
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
                OnCellDblClick = cxgDriverInCellDblClick
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
                OptionsData.Editing = False
                OptionsSelection.CellSelect = False
                OptionsSelection.HideFocusRectOnExit = False
                OptionsSelection.InvertSelect = False
                OptionsView.FocusRect = False
                OptionsView.NoDataToDisplayInfoText = '  '
                OptionsView.DataRowHeight = 22
                OptionsView.ExpandButtonsForEmptyDetails = False
                OptionsView.GridLineColor = clSilver
                OptionsView.GroupByBox = False
                OptionsView.HeaderHeight = 23
                object cxGridDBColumn7: TcxGridDBColumn
                  DataBinding.FieldName = 'No'
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Width = 32
                end
                object cxGridDBColumn9: TcxGridDBColumn
                  DataBinding.FieldName = #45432#49440#53076#46300
                  PropertiesClassName = 'TcxLabelProperties'
                  Visible = False
                  Width = 54
                end
                object cxGridDBColumn10: TcxGridDBColumn
                  DataBinding.FieldName = #50868#54665#45432#49440
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Width = 122
                end
                object cxGridDBColumn11: TcxGridDBColumn
                  DataBinding.FieldName = #51088#52404#49324#48264
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Width = 70
                end
                object cxGridDBColumn12: TcxGridDBColumn
                  DataBinding.FieldName = #44592#49324#47749
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Width = 99
                end
                object cxGridDBColumn13: TcxGridDBColumn
                  DataBinding.FieldName = #45800#47568#44592
                  PropertiesClassName = 'TcxLabelProperties'
                  HeaderAlignmentHorz = taCenter
                  Width = 96
                end
                object cxGridDBColumn14: TcxGridDBColumn
                  DataBinding.FieldName = #44592#49324#49324#48264
                  PropertiesClassName = 'TcxLabelProperties'
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Width = 58
                end
              end
              object cxGridLevel3: TcxGridLevel
                GridView = cxAnotherDriver
              end
            end
          end
          object Panel9: TPanel
            Left = 1
            Top = 1
            Width = 445
            Height = 33
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Panel6'
            ParentBackground = False
            TabOrder = 1
            object Shape3: TShape
              Left = 3
              Top = 5
              Width = 167
              Height = 24
              Brush.Color = 15720672
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object btn_Sel3: TcxButton
              Tag = 2
              Left = 369
              Top = 4
              Width = 71
              Height = 26
              Cursor = crHandPoint
              Caption = #51312#54924
              Enabled = False
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 0
              OnClick = btn_Sel2Click
            end
            object edt_Sel3: TcxTextEdit
              Tag = 2
              Left = 265
              Top = 5
              AutoSize = False
              Properties.ImeMode = imSHanguel
              Properties.OnChange = edt_Sel2PropertiesChange
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
              OnKeyDown = edt_Sel3KeyDown
              Height = 24
              Width = 98
            end
            object cb_Sel3: TcxComboBox
              Tag = 2
              Left = 187
              Top = 5
              TabStop = False
              AutoSize = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                #51088#52404#49324#48264
                #44592#49324#47749
                #45800#47568#44592)
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
              Text = #51088#52404#49324#48264
              Height = 24
              Width = 76
            end
            object cxLabel2: TcxLabel
              Left = 26
              Top = 9
              Caption = #45796#47480#45432#49440' '#44592#49324#47532#49828#53944
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
              AnchorX = 84
              AnchorY = 17
            end
          end
        end
        object Panel10: TPanel
          Left = 0
          Top = 229
          Width = 447
          Height = 202
          Align = alClient
          Caption = 'Panel4'
          TabOrder = 2
          object Panel11: TPanel
            Left = 1
            Top = 34
            Width = 445
            Height = 167
            Align = alClient
            BevelOuter = bvNone
            Caption = 'Panel5'
            ParentBackground = False
            TabOrder = 0
            object cxGrid2: TcxGrid
              Left = 0
              Top = 0
              Width = 445
              Height = 167
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              TabOrder = 0
              LookAndFeel.NativeStyle = False
              object cxgDriverOut: TcxGridDBTableView
                Tag = 1
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
                OnCellDblClick = cxgDriverInCellDblClick
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
                OptionsData.Editing = False
                OptionsSelection.CellSelect = False
                OptionsSelection.HideFocusRectOnExit = False
                OptionsSelection.InvertSelect = False
                OptionsView.FocusRect = False
                OptionsView.NoDataToDisplayInfoText = '  '
                OptionsView.DataRowHeight = 22
                OptionsView.ExpandButtonsForEmptyDetails = False
                OptionsView.GridLineColor = clSilver
                OptionsView.GroupByBox = False
                OptionsView.HeaderHeight = 23
                object cxGridDBColumn1: TcxGridDBColumn
                  DataBinding.FieldName = 'No'
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Width = 32
                end
                object cxGridDBColumn2: TcxGridDBColumn
                  DataBinding.FieldName = #45432#49440#53076#46300
                  PropertiesClassName = 'TcxLabelProperties'
                  Visible = False
                  Width = 54
                end
                object cxGridDBColumn3: TcxGridDBColumn
                  DataBinding.FieldName = #50868#54665#45432#49440
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Width = 122
                end
                object cxGridDBColumn4: TcxGridDBColumn
                  DataBinding.FieldName = #51088#52404#49324#48264
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Width = 70
                end
                object cxGridDBColumn5: TcxGridDBColumn
                  DataBinding.FieldName = #44592#49324#47749
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Width = 99
                end
                object cxGridDBColumn6: TcxGridDBColumn
                  DataBinding.FieldName = #45800#47568#44592
                  PropertiesClassName = 'TcxLabelProperties'
                  HeaderAlignmentHorz = taCenter
                  Width = 96
                end
                object cxGridDBColumn8: TcxGridDBColumn
                  DataBinding.FieldName = #44592#49324#49324#48264
                  PropertiesClassName = 'TcxLabelProperties'
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Width = 58
                end
              end
              object cxGridLevel2: TcxGridLevel
                GridView = cxgDriverOut
              end
            end
          end
          object Panel12: TPanel
            Left = 1
            Top = 1
            Width = 445
            Height = 33
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Panel6'
            ParentBackground = False
            TabOrder = 1
            object Shape4: TShape
              Left = 3
              Top = 5
              Width = 167
              Height = 24
              Brush.Color = 13696976
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object btn_Sel2: TcxButton
              Tag = 1
              Left = 369
              Top = 4
              Width = 71
              Height = 26
              Cursor = crHandPoint
              Caption = #51312#54924
              Enabled = False
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 0
              OnClick = btn_Sel2Click
            end
            object edt_Sel2: TcxTextEdit
              Tag = 1
              Left = 265
              Top = 5
              AutoSize = False
              Properties.ImeMode = imSHanguel
              Properties.OnChange = edt_Sel2PropertiesChange
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
              OnKeyDown = edt_Sel2KeyDown
              Height = 24
              Width = 98
            end
            object cb_Sel2: TcxComboBox
              Tag = 1
              Left = 187
              Top = 5
              TabStop = False
              AutoSize = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                #51088#52404#49324#48264
                #44592#49324#47749
                #45800#47568#44592)
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
              Text = #51088#52404#49324#48264
              Height = 24
              Width = 76
            end
            object cxLabel3: TcxLabel
              Left = 34
              Top = 9
              Caption = #48120#51648#51221#44592#49324#47532#49828#53944
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
              AnchorX = 84
              AnchorY = 17
            end
          end
        end
        object cxLabel44: TcxLabel
          Left = 0
          Top = 177
          Align = alTop
          AutoSize = False
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = clBackground
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = clWhite
          Style.TextStyle = [fsBold]
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 52
          Width = 447
          AnchorX = 224
          AnchorY = 203
        end
        object cxLabel4: TcxLabel
          Left = 7
          Top = 185
          Caption = ' '#8251' '#50500#47000#51032' '#48260#49828#44592#49324#47484' '#45908#48660#53364#47533#54616#49884#47732' '#54644#45817#45432#49440#51032' '#44592#49324#47196' '#46321#47197#46121#45768#45796'.'
          ParentColor = False
          Style.Color = clBtnText
          Style.TextColor = clWindow
          Style.TextStyle = [fsBold]
        end
        object cxLabel5: TcxLabel
          Left = 7
          Top = 206
          Caption = ' '#8251' TagID'#44032' '#51077#47141#46108' '#44592#49324#45784#46308#47564' '#51312#54924#46121#45768#45796'.('#44592#49324#51221#48372' > TagID)'
          ParentColor = False
          Style.Color = clBtnText
          Style.TextColor = clWindow
          Style.TextStyle = [fsBold]
        end
      end
    end
  end
end

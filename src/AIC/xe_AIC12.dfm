object frm_AIC12: Tfrm_AIC12
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_AIC12'
  ClientHeight = 803
  ClientWidth = 918
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
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
  object pnl_Main: TPanel
    Left = 0
    Top = 0
    Width = 918
    Height = 803
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 918
      Height = 803
      Align = alClient
      BevelKind = bkFlat
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object pnl_Title: TPanel
        Left = 0
        Top = 0
        Width = 914
        Height = 38
        Cursor = crHandPoint
        Align = alTop
        BevelOuter = bvNone
        Color = 12566463
        ParentBackground = False
        TabOrder = 0
        OnMouseDown = pnl_TitleMouseDown
        DesignSize = (
          914
          38)
        object cxLblActive: TLabel
          Left = 0
          Top = 0
          Width = 914
          Height = 5
          Align = alTop
          AutoSize = False
          Color = 33023
          ParentColor = False
          Transparent = False
          ExplicitTop = 8
          ExplicitWidth = 863
        end
        object lb_AIListName: TcxLabel
          Left = 5
          Top = 9
          Caption = #54644#54588#53084' '#49884#45208#47532#50724' '#49444#51221
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = []
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
        end
        object BtnClose: TcxButton
          Left = 886
          Top = 8
          Width = 24
          Height = 23
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
          OnClick = BtnCloseClick
        end
      end
      object pnl_Set: TPanel
        Left = 0
        Top = 38
        Width = 914
        Height = 761
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object pnl_Set2: TPanel
          Left = 0
          Top = 152
          Width = 914
          Height = 609
          Align = alClient
          BevelKind = bkFlat
          BevelOuter = bvNone
          TabOrder = 0
          object Shape12: TShape
            Left = 0
            Top = 33
            Width = 910
            Height = 2
            Align = alTop
            Brush.Style = bsClear
            Pen.Style = psClear
            ExplicitLeft = -4
            ExplicitTop = 30
          end
          object pnl_AiMent: TPanel
            Left = 0
            Top = 35
            Width = 910
            Height = 176
            Align = alTop
            BevelKind = bkFlat
            BevelOuter = bvNone
            Color = 16252927
            ParentBackground = False
            TabOrder = 0
            object Shape2: TShape
              Left = 3
              Top = 17
              Width = 455
              Height = 151
              Brush.Color = 16774636
            end
            object Panel2: TPanel
              Left = 466
              Top = 4
              Width = 168
              Height = 32
              BevelOuter = bvNone
              Caption = #45800#44228#48324' AI'#47704#53944' '#49688#51221
              Color = clGreen
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
            object meo_AIMent: TcxMemo
              Left = 464
              Top = 41
              ParentFont = False
              Properties.ImeMode = imSHanguel
              Properties.MaxLength = 250
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = #44404#47548#52404
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Height = 81
              Width = 435
            end
            object btn_BrNm: TcxButton
              Tag = 117
              Left = 720
              Top = 124
              Width = 58
              Height = 28
              Cursor = crHandPoint
              Hint = #51648#49324#47749
              Caption = #51648#49324#47749
              Colors.Default = 16773362
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              TabOrder = 2
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              ParentFont = False
              OnClick = btn_BrNmClick
            end
            object btn_Charge: TcxButton
              Tag = 117
              Left = 656
              Top = 124
              Width = 58
              Height = 28
              Cursor = crHandPoint
              Hint = #52628#44032#50836#44552
              Caption = #52628#44032#50836#44552
              Colors.Default = 16773362
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              TabOrder = 3
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              ParentFont = False
              OnClick = btn_BrNmClick
            end
            object btn_NewCharge: TcxButton
              Tag = 117
              Left = 592
              Top = 124
              Width = 58
              Height = 28
              Cursor = crHandPoint
              Hint = #48320#44221#50836#44552
              Caption = #48320#44221#50836#44552
              Colors.Default = 16773362
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              TabOrder = 4
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              ParentFont = False
              OnClick = btn_BrNmClick
            end
            object btn_DestDong: TcxButton
              Tag = 117
              Left = 528
              Top = 124
              Width = 58
              Height = 28
              Cursor = crHandPoint
              Hint = #46020#52265#51648#46041
              Caption = #46020#52265#51648#46041
              Colors.Default = 16773362
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              TabOrder = 5
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              ParentFont = False
              OnClick = btn_BrNmClick
            end
            object btn_ChangeMent: TcxButton
              Tag = 117
              Left = 640
              Top = 4
              Width = 257
              Height = 32
              Cursor = crHandPoint
              Caption = #48320#44221#45236#50857' '#45800#44228#48324#47532#49828#53944#50640#51201#50857
              Colors.Default = 16773362
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              TabOrder = 6
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_ChangeMentClick
            end
            object cxLabel17: TcxLabel
              Left = 466
              Top = 155
              Caption = '* '#52572#45824' 250'#51088#44620#51648' '#51077#47141' '#44032#45733#54633#45768#45796'.'
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548#52404
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = False
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Transparent = True
            end
            object cxLabel1: TcxLabel
              Left = 8
              Top = 42
              Caption = '* '#49884#51089'       : '#52376#51020' '#50504#45236#46104#45716' '#51064#49324#47568
              Style.LookAndFeel.Kind = lfFlat
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.NativeStyle = False
              Transparent = True
            end
            object cxLabel20: TcxLabel
              Left = 8
              Top = 60
              Caption = '* '#50756#47308#44256#44061'   : '#50756#47308#44256#44061#50640#44172' '#50504#45236#54624' '#47700#49464#51648
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Transparent = True
            end
            object cxLabel21: TcxLabel
              Left = 8
              Top = 78
              Caption = '* '#52712#49548#44256#44061'   : '#52712#49548#44256#44061#50640#44172' '#50504#45236#54624' '#47700#49464#51648
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Transparent = True
            end
            object cxLabel22: TcxLabel
              Left = 8
              Top = 97
              Caption = '* '#47928#51032#44256#44061'   : '#47928#51032#44256#44061#50640#44172' '#50504#45236#54624' '#47700#49464#51648
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Transparent = True
            end
            object cxLabel24: TcxLabel
              Left = 8
              Top = 116
              Caption = '* '#51333#47308'       : '#51333#47308#49884' '#50504#45236#46104#45716' '#47700#49884#51648
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Transparent = True
            end
            object Panel5: TPanel
              Left = 3
              Top = 4
              Width = 168
              Height = 32
              BevelOuter = bvNone
              Caption = #49884#45208#47532#50724' '#45800#44228
              Color = clGreen
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 13
            end
            object cxButton1: TcxButton
              Tag = 117
              Left = 464
              Top = 124
              Width = 58
              Height = 28
              Cursor = crHandPoint
              Hint = #52636#48156#51648#46041
              Caption = #52636#48156#51648#46041
              Colors.Default = 16773362
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              TabOrder = 14
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              ParentFont = False
              OnClick = btn_BrNmClick
            end
            object cxButton2: TcxButton
              Tag = 117
              Left = 784
              Top = 124
              Width = 65
              Height = 28
              Cursor = crHandPoint
              Hint = #48373#49688#53084#44148#49688
              Caption = #48373#49688#53084#44148#49688
              Colors.Default = 16773362
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              TabOrder = 15
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              ParentFont = False
              OnClick = btn_BrNmClick
            end
          end
          object Panel3: TPanel
            Left = 0
            Top = 211
            Width = 910
            Height = 394
            Align = alClient
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 1
            object cxGrid1: TcxGrid
              Left = 0
              Top = 61
              Width = 873
              Height = 333
              Align = alLeft
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
              object cxGridAIMentList: TcxGridDBTableView
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
                OnCellClick = cxGridAIMentListCellClick
                OnCellDblClick = cxGridAIMentListCellDblClick
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
                OptionsSelection.MultiSelect = True
                OptionsSelection.CellMultiSelect = True
                OptionsSelection.InvertSelect = False
                OptionsView.CellEndEllipsis = True
                OptionsView.FocusRect = False
                OptionsView.NoDataToDisplayInfoText = '  '
                OptionsView.CellAutoHeight = True
                OptionsView.DataRowHeight = 40
                OptionsView.ExpandButtonsForEmptyDetails = False
                OptionsView.GridLineColor = clSilver
                OptionsView.GroupByBox = False
                OptionsView.HeaderHeight = 25
                object cxGridDBColumn6: TcxGridDBColumn
                  Tag = 1
                  DataBinding.FieldName = #49692#49436
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Options.CellMerging = True
                  Options.Moving = False
                  Width = 30
                end
                object cxGridDBColumn7: TcxGridDBColumn
                  Tag = 1
                  DataBinding.FieldName = #45800#44228
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  FooterAlignmentHorz = taRightJustify
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 57
                end
                object cxGridDBColumn8: TcxGridDBColumn
                  Tag = 1
                  Caption = 'AI '#50504#45236#47700#49464#51648
                  DataBinding.FieldName = #50504#45236#47700#49464#51648
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Vert = taVCenter
                  Properties.WordWrap = True
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 350
                end
                object cxGridDBColumn9: TcxGridDBColumn
                  Tag = 1
                  Caption = 'AI '#45813#48320#47700#49464#51648
                  DataBinding.FieldName = #45813#48320#47700#49464#51648
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  Properties.WordWrap = True
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 152
                end
                object cxGridAIMentListColumn1: TcxGridDBColumn
                  DataBinding.FieldName = #49884#45208#47532#50724#53076#46300
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Vert = taVCenter
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                end
                object cxGridAIMentListColumn2: TcxGridDBColumn
                  DataBinding.FieldName = 'step'
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Vert = taVCenter
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                end
                object cxGridAIMentListColumn6: TcxGridDBColumn
                  DataBinding.FieldName = 'SMS'#47700#49464#51648
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 178
                end
                object cxGridAIMentListColumn7: TcxGridDBColumn
                  DataBinding.FieldName = 'SMS'#51204#49569#50668#48512
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 81
                end
                object cxGridAIMentListColumn3: TcxGridDBColumn
                  DataBinding.FieldName = #49324#50857#50668#48512
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 54
                end
                object cxGridAIMentListColumn4: TcxGridDBColumn
                  DataBinding.FieldName = #51648#49324#53076#46300
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                end
                object cxGridAIMentListColumn5: TcxGridDBColumn
                  Tag = 1
                  DataBinding.FieldName = #45824#54364#48264#54840
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 141
                end
              end
              object cxGridLevel2: TcxGridLevel
                GridView = cxGridAIMentList
              end
            end
            object btn_Up: TcxButton
              Tag = 51
              Left = 877
              Top = 128
              Width = 29
              Height = 101
              Cursor = crHandPoint
              Caption = #9650
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_UpClick
            end
            object btn_Down: TcxButton
              Tag = 52
              Left = 877
              Top = 245
              Width = 29
              Height = 101
              Cursor = crHandPoint
              Caption = #9660
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_UpClick
            end
            object cxLabel15: TcxLabel
              Left = 0
              Top = 42
              Align = alTop
              AutoSize = False
              Caption = '* "'#54980#48520'('#52852#46300')" '#44208#51228' '#49849#51064' '#44256#44061#50640' '#45824#54620' '#50836#44552#51064#49345' '#49884' '#49345#45812#50896#51060' '#50672#44208#46104#47728' '#51649#51217' '#50836#44552#51064#49345#51008' '#46104#51648' '#50506#49845#45768#45796'.'
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548#52404
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              Visible = False
              Height = 19
              Width = 910
              AnchorY = 52
            end
            object cxLabel29: TcxLabel
              Left = 0
              Top = 0
              Align = alTop
              AutoSize = False
              Caption = '* '#44256#44061#51060' '#39#50500#45768#50724', NO'#39' '#50640' '#45824#54620' '#45813#48320#51012' '#48155#50520#51012#46412#45716' '#45796#51020#45800#44228' AI'#50504#45236#47700#49464#51648#47196' '#45336#50612#44049#45768#45796'.'
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548#52404
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              Height = 23
              Width = 910
              AnchorY = 12
            end
            object cxLabel30: TcxLabel
              Left = 0
              Top = 23
              Align = alTop
              AutoSize = False
              Caption = '* '#50500#47000' '#47700#49464#51648#47484' '#49440#53469#54616#50668' '#45908#48660#53364#47533#54616#49884#47732' '#45236#50857#51012' '#49688#51221#54624' '#49688' '#51080#49845#45768#45796'.'
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548#52404
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              Height = 19
              Width = 910
              AnchorY = 33
            end
          end
          object cxGroupBox1: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            TabOrder = 2
            Height = 33
            Width = 910
            object Shape11: TShape
              Left = 9
              Top = 4
              Width = 400
              Height = 24
              Brush.Color = 14155775
              Pen.Color = 55769
              Shape = stRoundRect
            end
            object lb_Scenario_Detail: TcxLabel
              Left = 127
              Top = 8
              Caption = #49884#45208#47532#50724' '#45800#44228#48324' '#47704#53944#49444#51221
              ParentColor = False
              ParentFont = False
              Style.Color = 16575968
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548#52404
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 208
              AnchorY = 16
            end
          end
        end
        object pnl_Set1: TPanel
          Left = 0
          Top = 0
          Width = 914
          Height = 152
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Shape7: TShape
            Left = 26
            Top = 41
            Width = 785
            Height = 107
          end
          object Shape3: TShape
            Left = 3
            Top = 4
            Width = 908
            Height = 35
            Pen.Color = clHotLight
          end
          object Shape4: TShape
            Left = 93
            Top = 9
            Width = 262
            Height = 24
            Pen.Color = 13353605
          end
          object Shape1: TShape
            Left = 414
            Top = 9
            Width = 279
            Height = 24
            Pen.Color = 13353605
          end
          object Shape5: TShape
            Left = 749
            Top = 9
            Width = 131
            Height = 24
            Pen.Color = 13353605
          end
          object cxLabel7: TcxLabel
            Left = 105
            Top = 13
            Caption = #51201#50857#44396#48516
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
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
            AnchorX = 131
            AnchorY = 21
          end
          object cb_Gubun: TcxComboBox
            Left = 163
            Top = 8
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #51648#49324#48324' '#51201#50857
              #45824#54364#48264#54840#48324' '#51201#50857)
            Properties.OnChange = cb_GubunPropertiesChange
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
            Text = #51648#49324#48324' '#51201#50857
            Height = 26
            Width = 115
          end
          object cb_KeyNumber: TcxComboBox
            Left = 275
            Top = 8
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #45824#54364#48264#54840)
            Properties.OnChange = cb_KeyNumberPropertiesChange
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
            Text = #45824#54364#48264#54840
            Height = 26
            Width = 112
          end
          object cxLabel3: TcxLabel
            Left = 426
            Top = 13
            Caption = #49884#45208#47532#50724
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
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
            AnchorX = 452
            AnchorY = 21
          end
          object cb_Scenario: TcxComboBox
            Left = 484
            Top = 8
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #51648#49324#48324' '#51201#50857
              #45824#54364#48264#54840#48324' '#51201#50857)
            Properties.OnChange = cb_ScenarioPropertiesChange
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
            Text = #51648#49324#48324' '#51201#50857
            Height = 26
            Width = 230
          end
          object btn_Save: TcxButton
            Tag = 117
            Left = 803
            Top = 41
            Width = 108
            Height = 107
            Cursor = crHandPoint
            Caption = #51200'  '#51109
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 6
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btn_SaveClick
          end
          object lb_Use: TcxLabel
            Left = 759
            Top = 13
            Caption = #49324#50857#50668#48512
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
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
            AnchorX = 785
            AnchorY = 21
          end
          object cb_Use: TcxComboBox
            Left = 817
            Top = 8
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #49324#50857
              #48120#49324#50857)
            Properties.OnChange = cb_GubunPropertiesChange
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
            Text = #49324#50857
            Height = 26
            Width = 65
          end
          object cxLabel18: TcxLabel
            Left = 4
            Top = 5
            AutoSize = False
            Caption = #44592#48376#49444#51221
            ParentColor = False
            ParentFont = False
            Style.BorderColor = clHotLight
            Style.BorderStyle = ebsFlat
            Style.Color = clHotLight
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = True
            Style.TransparentBorder = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 33
            Width = 88
            AnchorX = 48
            AnchorY = 22
          end
          object cxLabel19: TcxLabel
            Left = 2
            Top = 40
            AutoSize = False
            Caption = #49892#54665#49444#51221
            ParentColor = False
            ParentFont = False
            Style.BorderColor = clBlack
            Style.BorderStyle = ebsFlat
            Style.Color = 13565927
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = -1
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.TransparentBorder = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 109
            Width = 90
            AnchorX = 47
            AnchorY = 95
          end
          object cxLabel25: TcxLabel
            Left = 96
            Top = 47
            AutoSize = False
            Caption = #54644#54588#53084#49884#44036#49444#51221
            ParentColor = False
            ParentFont = False
            Style.BorderColor = clBlack
            Style.BorderStyle = ebsFlat
            Style.Color = 13565927
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = -1
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.TransparentBorder = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 30
            Width = 121
            AnchorX = 157
            AnchorY = 62
          end
          object cxLabel26: TcxLabel
            Left = 214
            Top = 47
            AutoSize = False
            ParentColor = False
            ParentFont = False
            Style.BorderColor = clBlack
            Style.BorderStyle = ebsFlat
            Style.Color = 13565927
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = -1
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.TransparentBorder = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 30
            Width = 583
            AnchorX = 506
            AnchorY = 62
          end
          object cxLabel8: TcxLabel
            Left = 429
            Top = 55
            Caption = #53084#51333#47308#49884#44036
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
            AnchorX = 461
            AnchorY = 63
          end
          object cxLabel5: TcxLabel
            Left = 245
            Top = 55
            Caption = #53084#49884#51089#49884#44036
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
            AnchorX = 277
            AnchorY = 63
          end
          object cxLabel27: TcxLabel
            Left = 96
            Top = 80
            AutoSize = False
            Caption = #49892#54056' '#51116#50672#44208' '#49444#51221
            ParentColor = False
            ParentFont = False
            Style.BorderColor = clBlack
            Style.BorderStyle = ebsFlat
            Style.Color = 15527167
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = -1
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.TransparentBorder = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 30
            Width = 121
            AnchorX = 157
            AnchorY = 95
          end
          object cxLabel28: TcxLabel
            Left = 214
            Top = 80
            AutoSize = False
            ParentColor = False
            ParentFont = False
            Style.BorderColor = clBlack
            Style.BorderStyle = ebsFlat
            Style.Color = 15527167
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = -1
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.TransparentBorder = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 30
            Width = 583
            AnchorX = 506
            AnchorY = 95
          end
          object cxLabel11: TcxLabel
            Left = 219
            Top = 87
            Caption = #49892#54056#51116#50672#44208#49884#44036
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
            AnchorX = 263
            AnchorY = 95
          end
          object edt_FailReConnectCnt: TcxTextEdit
            Left = 496
            Top = 82
            AutoSize = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taBottomJustify
            TabOrder = 4
            Text = '2'
            OnKeyDown = edt_FailReConnectCntKeyDown
            OnKeyPress = edt_PassTimeKeyPress
            Height = 26
            Width = 59
          end
          object cxLabel13: TcxLabel
            Left = 405
            Top = 87
            Caption = #49892#54056#51116#50672#44208#54943#49688
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
            AnchorX = 449
            AnchorY = 95
          end
          object cxLabel12: TcxLabel
            Left = 553
            Top = 87
            Caption = #54924
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
            AnchorX = 561
            AnchorY = 95
          end
          object edt_FailReConnectTime: TcxTextEdit
            Left = 310
            Top = 82
            AutoSize = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taBottomJustify
            TabOrder = 3
            Text = '30'
            OnKeyDown = edt_FailReConnectTimeKeyDown
            OnKeyPress = edt_PassTimeKeyPress
            Height = 26
            Width = 59
          end
          object cxLabel10: TcxLabel
            Left = 367
            Top = 87
            Caption = #52488
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
            AnchorX = 375
            AnchorY = 95
          end
          object cxLabel4: TcxLabel
            Left = 96
            Top = 114
            AutoSize = False
            Caption = #53084#50836#52397#50836#51068
            ParentColor = False
            ParentFont = False
            Style.BorderColor = clBlack
            Style.BorderStyle = ebsFlat
            Style.Color = 13565927
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = -1
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.TransparentBorder = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 30
            Width = 121
            AnchorX = 157
            AnchorY = 129
          end
          object cxLabel6: TcxLabel
            Left = 214
            Top = 114
            AutoSize = False
            ParentColor = False
            ParentFont = False
            Style.BorderColor = clBlack
            Style.BorderStyle = ebsFlat
            Style.Color = 13565927
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = -1
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.TransparentBorder = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 30
            Width = 583
            AnchorX = 506
            AnchorY = 129
          end
          object chk_Mon: TcxCheckBox
            Left = 218
            Top = 120
            Caption = #50900#50836#51068
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Style.Color = 13565927
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.SkinName = 'Sharp'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 24
          end
          object chk_Tue: TcxCheckBox
            Left = 286
            Top = 120
            Caption = #54868#50836#51068
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Style.Color = 13565927
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.SkinName = 'Sharp'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 25
          end
          object chk_Wed: TcxCheckBox
            Left = 354
            Top = 120
            Caption = #49688#50836#51068
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Style.Color = 13565927
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.SkinName = 'Sharp'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 26
          end
          object chk_Thu: TcxCheckBox
            Left = 422
            Top = 120
            Caption = #47785#50836#51068
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Style.Color = 13565927
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.SkinName = 'Sharp'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 27
          end
          object chk_Fri: TcxCheckBox
            Left = 490
            Top = 120
            Caption = #44552#50836#51068
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Style.Color = 13565927
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.SkinName = 'Sharp'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 28
          end
          object chk_Sat: TcxCheckBox
            Left = 558
            Top = 120
            Caption = #53664#50836#51068
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Style.Color = 13565927
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.SkinName = 'Sharp'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 29
          end
          object chk_Sun: TcxCheckBox
            Left = 626
            Top = 120
            Caption = #51068#50836#51068
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Style.Color = 13565927
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.SkinName = 'Sharp'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 30
          end
          object chk_Holy: TcxCheckBox
            Left = 723
            Top = 120
            Caption = #44277#55092#51068
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Style.Color = 13565927
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.SkinName = 'Sharp'
            Style.TextColor = clRed
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 31
          end
          object cxLabel2: TcxLabel
            Left = 572
            Top = 55
            Caption = '* '#50724#51204'10'#49884' '#48512#53552' '#50724#54980' 6'#49884#44620#51648#47564' '#49444#51221
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = False
            Transparent = True
          end
          object dt_STime: TcxTimeEdit
            Left = 310
            Top = 50
            AutoSize = False
            EditValue = 0.416666666666667d
            ParentFont = False
            Properties.Alignment.Vert = taBottomJustify
            Properties.TimeFormat = tfHourMin
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.SkinName = 'Sharp'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 33
            Height = 24
            Width = 73
          end
          object dt_ETime: TcxTimeEdit
            Left = 496
            Top = 50
            AutoSize = False
            EditValue = 0.75d
            ParentFont = False
            Properties.Alignment.Vert = taBottomJustify
            Properties.TimeFormat = tfHourMin
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.SkinName = 'Sharp'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 34
            Height = 24
            Width = 73
          end
        end
      end
    end
  end
end

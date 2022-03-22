object Frm_SMSA1: TFrm_SMSA1
  Left = 2719
  Top = 168
  BorderStyle = bsNone
  Caption = 'SMS'
  ClientHeight = 778
  ClientWidth = 1121
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 12
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 1121
    Height = 778
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object pnl4: TPanel
      Left = 299
      Top = 133
      Width = 822
      Height = 645
      Align = alClient
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 3
      object cxPageControl2: TcxPageControl
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 816
        Height = 639
        Align = alClient
        Color = clBtnFace
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        Properties.ActivePage = cxtbsht3
        Properties.CustomButtons.Buttons = <>
        Properties.Style = 9
        ClientRectBottom = 639
        ClientRectRight = 816
        ClientRectTop = 19
        object cxtbsht3: TcxTabSheet
          Caption = #45236#48372#44288#54632
          Color = clBtnFace
          ImageIndex = 2
          ParentColor = False
          object cxLabel5: TcxLabel
            Left = 20
            Top = 13
            AutoSize = False
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15589851
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 87
            Width = 123
            AnchorX = 82
            AnchorY = 57
          end
          object Memo1: TcxMemo
            Tag = 1
            Left = 31
            Top = 15
            ImeMode = imSHanguel
            ParentFont = False
            Properties.ImeMode = imSHanguel
            Properties.MaxLength = 90
            Style.BorderStyle = ebsNone
            Style.Color = 15589851
            Style.Edges = []
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            OnKeyDown = mm_messageKeyDown
            OnKeyPress = mm_messageKeyPress
            OnMouseUp = mm_messageMouseUp
            Height = 82
            Width = 100
          end
          object btnSetMsg1: TcxButton
            Tag = 1
            Left = 21
            Top = 101
            Width = 120
            Height = 19
            Cursor = crHandPoint
            Caption = #49440#53469#54616#44592
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            TabOrder = 6
            OnClick = btnSetMsg1Click
          end
          object cxLabel18: TcxLabel
            Left = 146
            Top = 13
            AutoSize = False
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15589851
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 87
            Width = 123
            AnchorX = 208
            AnchorY = 57
          end
          object btnSetMsg2: TcxButton
            Tag = 2
            Left = 148
            Top = 101
            Width = 120
            Height = 19
            Cursor = crHandPoint
            Caption = #49440#53469#54616#44592
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            TabOrder = 8
            OnClick = btnSetMsg1Click
          end
          object cxLabel7: TcxLabel
            Left = 272
            Top = 13
            AutoSize = False
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15589851
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 87
            Width = 123
            AnchorX = 334
            AnchorY = 57
          end
          object btnSetMsg3: TcxButton
            Tag = 3
            Left = 274
            Top = 101
            Width = 120
            Height = 19
            Cursor = crHandPoint
            Caption = #49440#53469#54616#44592
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            TabOrder = 10
            OnClick = btnSetMsg1Click
          end
          object cxLabel19: TcxLabel
            Left = 398
            Top = 13
            AutoSize = False
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15589851
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 87
            Width = 123
            AnchorX = 460
            AnchorY = 57
          end
          object Memo5: TcxMemo
            Tag = 4
            Left = 409
            Top = 15
            ImeMode = imSHanguel
            ParentFont = False
            Properties.ImeMode = imSHanguel
            Properties.MaxLength = 90
            Style.BorderStyle = ebsNone
            Style.Color = 15589851
            Style.Edges = []
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 4
            OnKeyDown = mm_messageKeyDown
            OnKeyPress = mm_messageKeyPress
            OnMouseUp = mm_messageMouseUp
            Height = 82
            Width = 100
          end
          object btnSetMsg4: TcxButton
            Tag = 4
            Left = 399
            Top = 101
            Width = 120
            Height = 19
            Cursor = crHandPoint
            Caption = #49440#53469#54616#44592
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            TabOrder = 11
            OnClick = btnSetMsg1Click
          end
          object Memo2: TcxMemo
            Tag = 2
            Left = 157
            Top = 15
            ImeMode = imSHanguel
            ParentFont = False
            Properties.ImeMode = imSHanguel
            Properties.MaxLength = 90
            Style.BorderStyle = ebsNone
            Style.Color = 15589851
            Style.Edges = []
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            OnKeyDown = mm_messageKeyDown
            OnKeyPress = mm_messageKeyPress
            OnMouseUp = mm_messageMouseUp
            Height = 82
            Width = 100
          end
          object Memo3: TcxMemo
            Tag = 3
            Left = 283
            Top = 15
            ImeMode = imSHanguel
            ParentFont = False
            Properties.ImeMode = imSHanguel
            Properties.MaxLength = 90
            Style.BorderStyle = ebsNone
            Style.Color = 15589851
            Style.Edges = []
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 3
            OnKeyDown = mm_messageKeyDown
            OnKeyPress = mm_messageKeyPress
            OnMouseUp = mm_messageMouseUp
            Height = 82
            Width = 100
          end
          object cxLabel96: TcxLabel
            Left = 20
            Top = 139
            AutoSize = False
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15589851
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 87
            Width = 123
            AnchorX = 82
            AnchorY = 183
          end
          object btnSetMsg5: TcxButton
            Tag = 5
            Left = 21
            Top = 227
            Width = 120
            Height = 19
            Cursor = crHandPoint
            Caption = #49440#53469#54616#44592
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            TabOrder = 20
            OnClick = btnSetMsg1Click
          end
          object Memo6: TcxMemo
            Tag = 5
            Left = 31
            Top = 141
            ImeMode = imSHanguel
            ParentFont = False
            Properties.ImeMode = imSHanguel
            Properties.MaxLength = 90
            Style.BorderStyle = ebsNone
            Style.Color = 15589851
            Style.Edges = []
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 13
            OnKeyDown = mm_messageKeyDown
            OnKeyPress = mm_messageKeyPress
            OnMouseUp = mm_messageMouseUp
            Height = 82
            Width = 100
          end
          object cxLabel6: TcxLabel
            Left = 146
            Top = 139
            AutoSize = False
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15589851
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 87
            Width = 123
            AnchorX = 208
            AnchorY = 183
          end
          object Memo7: TcxMemo
            Tag = 6
            Left = 157
            Top = 141
            ImeMode = imSHanguel
            ParentFont = False
            Properties.ImeMode = imSHanguel
            Properties.MaxLength = 90
            Style.BorderStyle = ebsNone
            Style.Color = 15589851
            Style.Edges = []
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 14
            OnKeyDown = mm_messageKeyDown
            OnKeyPress = mm_messageKeyPress
            OnMouseUp = mm_messageMouseUp
            Height = 82
            Width = 100
          end
          object cxLabel9: TcxLabel
            Left = 272
            Top = 139
            AutoSize = False
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15589851
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 87
            Width = 123
            AnchorX = 334
            AnchorY = 183
          end
          object Memo9: TcxMemo
            Tag = 7
            Left = 283
            Top = 141
            ImeMode = imSHanguel
            ParentFont = False
            Properties.ImeMode = imSHanguel
            Properties.MaxLength = 90
            Style.BorderStyle = ebsNone
            Style.Color = 15589851
            Style.Edges = []
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 15
            OnKeyDown = mm_messageKeyDown
            OnKeyPress = mm_messageKeyPress
            OnMouseUp = mm_messageMouseUp
            Height = 82
            Width = 100
          end
          object cxLabel10: TcxLabel
            Left = 398
            Top = 139
            AutoSize = False
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15589851
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 87
            Width = 123
            AnchorX = 460
            AnchorY = 183
          end
          object Memo10: TcxMemo
            Tag = 8
            Left = 409
            Top = 141
            ImeMode = imSHanguel
            ParentFont = False
            Properties.ImeMode = imSHanguel
            Properties.MaxLength = 90
            Style.BorderStyle = ebsNone
            Style.Color = 15589851
            Style.Edges = []
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 16
            OnKeyDown = mm_messageKeyDown
            OnKeyPress = mm_messageKeyPress
            OnMouseUp = mm_messageMouseUp
            Height = 82
            Width = 100
          end
          object btnSetMsg8: TcxButton
            Tag = 8
            Left = 399
            Top = 227
            Width = 120
            Height = 19
            Cursor = crHandPoint
            Caption = #49440#53469#54616#44592
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            TabOrder = 23
            OnClick = btnSetMsg1Click
          end
          object cxLabel8: TcxLabel
            Left = 20
            Top = 268
            AutoSize = False
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15589851
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 87
            Width = 123
            AnchorX = 82
            AnchorY = 312
          end
          object Memo11: TcxMemo
            Tag = 9
            Left = 31
            Top = 271
            ImeMode = imSHanguel
            ParentFont = False
            Properties.ImeMode = imSHanguel
            Properties.MaxLength = 90
            Style.BorderStyle = ebsNone
            Style.Color = 15589851
            Style.Edges = []
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 25
            OnKeyDown = mm_messageKeyDown
            OnKeyPress = mm_messageKeyPress
            OnMouseUp = mm_messageMouseUp
            Height = 82
            Width = 100
          end
          object btnSetMsg9: TcxButton
            Tag = 9
            Left = 21
            Top = 356
            Width = 120
            Height = 19
            Cursor = crHandPoint
            Caption = #49440#53469#54616#44592
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            TabOrder = 30
            OnClick = btnSetMsg1Click
          end
          object btnSetMsg6: TcxButton
            Tag = 6
            Left = 148
            Top = 227
            Width = 120
            Height = 19
            Cursor = crHandPoint
            Caption = #49440#53469#54616#44592
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            TabOrder = 21
            OnClick = btnSetMsg1Click
          end
          object btnSetMsg7: TcxButton
            Tag = 7
            Left = 274
            Top = 227
            Width = 120
            Height = 19
            Cursor = crHandPoint
            Caption = #49440#53469#54616#44592
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            TabOrder = 22
            OnClick = btnSetMsg1Click
          end
          object cxLabel3: TcxLabel
            Left = 152
            Top = 270
            AutoSize = False
            Caption = #8251' '#51077#47141#48169#48277' '#47560#50864#49828' '#53364#47533#54980' '#51077#47141#54616#47732' '#51088#46041#51200#51109' '#46121#45768#45796'.'
            Transparent = True
            Height = 17
            Width = 331
          end
          object cxLabel4: TcxLabel
            Left = 150
            Top = 288
            AutoSize = False
            Caption = #8251' '#53945#49688#47928#51088#45716' '#39'F5 '#53412#39' '#46608#45716' '#54620#44544' '#51088#51020#44284' '#54620#51088#53412#47484' '
            Transparent = True
            Height = 17
            Width = 341
          end
          object cxLabel12: TcxLabel
            Left = 169
            Top = 305
            AutoSize = False
            Caption = #51312#54633#54616#50668' '#49324#50857#54616#49464#50836
            Transparent = True
            Height = 17
            Width = 299
          end
          object cxLabel15: TcxLabel
            Left = 152
            Top = 322
            AutoSize = False
            Caption = ' ex) '#39#12609#39' + '#54620#51088#53412' = '#39#65283#65286#65290'....'#39
            Transparent = True
            Height = 17
            Width = 331
          end
        end
        object cxtbsht4: TcxTabSheet
          Caption = #51204#49569#47700#49884#51648'('#48120#47532#48372#44592')'
          ImageIndex = 0
          object AdvProgress1: TAdvProgressBar
            Left = 0
            Top = 600
            Width = 816
            Height = 20
            Align = alBottom
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Level0ColorTo = 14811105
            Level1ColorTo = 13303807
            Level2Color = 5483007
            Level2ColorTo = 11064319
            Level3ColorTo = 13290239
            Level1Perc = 70
            Level2Perc = 90
            Position = 0
            ShowBorder = True
            Version = '1.2.1.1'
            ExplicitTop = 557
          end
          object cbbSelect: TcxComboBox
            Left = 10
            Top = 34
            Properties.DropDownListStyle = lsFixedList
            TabOrder = 2
            Width = 86
          end
          object chkAll: TcxCheckBox
            Left = 867
            Top = 39
            TabStop = False
            Caption = #51204#52404
            TabOrder = 5
            Transparent = True
          end
          object cxedKey: TcxTextEdit
            Left = 102
            Top = 34
            ImeMode = imSHanguel
            Properties.ImeMode = imSHanguel
            TabOrder = 3
            Width = 120
          end
          object cxlb1: TcxLabel
            Left = 10
            Top = 9
            AutoSize = False
            Caption = #49548#49549
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 16441805
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 18
            Width = 80
            AnchorX = 50
            AnchorY = 18
          end
          object cxGridMsgList: TcxGrid
            Left = 0
            Top = 0
            Width = 816
            Height = 600
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
            LookAndFeel.NativeStyle = True
            object cxViewMsgList: TcxGridDBTableView
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
              OptionsSelection.InvertSelect = False
              OptionsSelection.MultiSelect = True
              OptionsSelection.CellMultiSelect = True
              OptionsView.FocusRect = False
              OptionsView.NoDataToDisplayInfoText = '  '
              OptionsView.DataRowHeight = 22
              OptionsView.ExpandButtonsForEmptyDetails = False
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 22
              OnColumnHeaderClick = cxViewColumnHeaderClick
              object cxColViewMsgListColumn5: TcxGridDBColumn
                Caption = #51088#49324#53076#46300
                Visible = False
              end
              object cxColViewMsgListColumn4: TcxGridDBColumn
                Caption = #45824#54364#48264#54840
                Visible = False
              end
              object cxColViewMsgListColumn1: TcxGridDBColumn
                Caption = #48156#49888'('#45824#54364')'#48264#54840
                DataBinding.FieldName = 'No'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                FooterAlignmentHorz = taRightJustify
                HeaderAlignmentHorz = taCenter
                Width = 132
              end
              object cxColViewMsgListColumn2: TcxGridDBColumn
                Caption = #49688#49888'('#44256#44061')'#48264#54840
                DataBinding.FieldName = #51648#49324#47749
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 110
              end
              object cxColViewMsgListColumn3: TcxGridDBColumn
                Caption = #47700#49464#51648
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 421
              end
              object cxColViewMsgListColumn6: TcxGridDBColumn
                Caption = #48156#49888'('#45824#54364')'#48264#54840
                Visible = False
              end
              object cxColViewMsgListColumn7: TcxGridDBColumn
                Caption = #45824#54364'+'#44256#44061#48264#54840
                Visible = False
              end
            end
            object cxLevelMsgList: TcxGridLevel
              GridView = cxViewMsgList
            end
          end
          object cxGridSendSms: TcxGrid
            Left = 60
            Top = 33
            Width = 763
            Height = 113
            BevelInner = bvNone
            BevelOuter = bvNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Visible = False
            LookAndFeel.NativeStyle = True
            object cxViewSendSms: TcxGridDBTableView
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
              OptionsSelection.InvertSelect = False
              OptionsSelection.MultiSelect = True
              OptionsSelection.CellMultiSelect = True
              OptionsView.FocusRect = False
              OptionsView.NoDataToDisplayInfoText = '  '
              OptionsView.DataRowHeight = 22
              OptionsView.ExpandButtonsForEmptyDetails = False
              OptionsView.Footer = True
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 22
              object cxCol1: TcxGridDBColumn
                Caption = #51088#49324#53076#46300
              end
              object cxCol2: TcxGridDBColumn
                Caption = #45824#54364#48264#54840
              end
              object cxCol3: TcxGridDBColumn
                Caption = #48156#49888'('#45824#54364')'#48264#54840
                DataBinding.FieldName = 'No'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                FooterAlignmentHorz = taRightJustify
                HeaderAlignmentHorz = taCenter
                Width = 108
              end
              object cxCol4: TcxGridDBColumn
                Caption = #49688#49888'('#44256#44061')'#48264#54840
                DataBinding.FieldName = #51648#49324#47749
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 116
              end
              object cxCol5: TcxGridDBColumn
                Caption = #47700#49464#51648
                PropertiesClassName = 'TcxLabelProperties'
                HeaderAlignmentHorz = taCenter
                Width = 115
              end
              object cxCol6: TcxGridDBColumn
                Caption = #48156#49888'('#45824#54364')'#48264#54840
                Width = 103
              end
              object cxCol7: TcxGridDBColumn
                Caption = #45824#54364'+'#44256#44061#48264#54840
                Width = 104
              end
            end
            object cxLevelSendSms: TcxGridLevel
              GridView = cxViewSendSms
            end
          end
          object cxGridKeyNum: TcxGrid
            Left = 60
            Top = 265
            Width = 763
            Height = 109
            BevelInner = bvNone
            BevelOuter = bvNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            Visible = False
            LookAndFeel.NativeStyle = True
            object cxViewKeyNum: TcxGridDBTableView
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
              OptionsSelection.InvertSelect = False
              OptionsSelection.MultiSelect = True
              OptionsSelection.CellMultiSelect = True
              OptionsView.FocusRect = False
              OptionsView.NoDataToDisplayInfoText = '  '
              OptionsView.DataRowHeight = 22
              OptionsView.ExpandButtonsForEmptyDetails = False
              OptionsView.Footer = True
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 22
              object cxColViewKeyNumColumn1: TcxGridDBColumn
                Caption = #51648#49324#53076#46300
              end
              object cxColViewKeyNumColumn2: TcxGridDBColumn
                Caption = #45824#54364#48264#54840
              end
              object cxColViewKeyNumColumn3: TcxGridDBColumn
                DataBinding.FieldName = #49324#50857#51088#49688
              end
            end
            object cxLevelKeyNum: TcxGridLevel
              GridView = cxViewKeyNum
            end
          end
          object cxGridSms: TcxGrid
            Left = 60
            Top = 152
            Width = 763
            Height = 107
            BevelInner = bvNone
            BevelOuter = bvNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            Visible = False
            LookAndFeel.NativeStyle = True
            object cxViewSms: TcxGridDBTableView
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
              DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
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
              OptionsSelection.InvertSelect = False
              OptionsSelection.MultiSelect = True
              OptionsSelection.CellMultiSelect = True
              OptionsView.FocusRect = False
              OptionsView.NoDataToDisplayInfoText = '  '
              OptionsView.DataRowHeight = 22
              OptionsView.ExpandButtonsForEmptyDetails = False
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 22
              object cxColViewSmsColumn1: TcxGridDBColumn
                Caption = #51648#49324#53076#46300
                Width = 77
              end
              object cxColViewSmsColumn2: TcxGridDBColumn
                Caption = #45824#54364#48264#54840
                Width = 80
              end
              object cxColViewSmsColumn3: TcxGridDBColumn
                Caption = #44256#44061#48264#54840
              end
              object cxColViewSmsColumn4: TcxGridDBColumn
                Caption = #44256#44061#47749
                Width = 57
              end
              object cxColViewSmsColumn5: TcxGridDBColumn
                Caption = #47700#49464#51648
              end
              object cxColViewSmsColumn6: TcxGridDBColumn
                Caption = #49688#49888#48264#54840
                Width = 96
              end
              object cxColViewSmsColumn7: TcxGridDBColumn
                Caption = #47560#51068#47532#51648
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
              end
            end
            object cxLevelSms: TcxGridLevel
              GridView = cxViewSms
            end
          end
          object mmo_log: TMemo
            Left = 380
            Top = 462
            Width = 185
            Height = 89
            ImeName = 'Microsoft IME 2003'
            Lines.Strings = (
              'mm_log')
            TabOrder = 8
            Visible = False
          end
        end
      end
    end
    object pnl_Char: TPanel
      Left = 471
      Top = 271
      Width = 212
      Height = 238
      BevelKind = bkFlat
      BevelOuter = bvNone
      BorderWidth = 2
      TabOrder = 0
      Visible = False
      object lbl41: TcxLabel
        Left = 2
        Top = 2
        Cursor = crSizeAll
        Align = alTop
        AutoSize = False
        Caption = #53945#49688#47928#51088
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Style.Color = 15191501
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        OnMouseMove = lbl41MouseMove
        Height = 19
        Width = 204
        AnchorX = 104
        AnchorY = 12
      end
      object cxPageControl3: TcxPageControl
        Left = 4
        Top = 23
        Width = 204
        Height = 183
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Properties.ActivePage = cxtbsht2
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 177
        ClientRectLeft = 2
        ClientRectRight = 198
        ClientRectTop = 27
        object cxtbsht2: TcxTabSheet
          Caption = #53945#49688#47928#51088
          Color = 15587527
          ImageIndex = 0
          ParentColor = False
          object lbl43: TcxLabel
            Left = 8
            Top = 5
            AutoSize = False
            Caption = #9829
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 22
            AnchorY = 18
          end
          object lbl44: TcxLabel
            Left = 34
            Top = 5
            AutoSize = False
            Caption = #9825
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 48
            AnchorY = 18
          end
          object lbl45: TcxLabel
            Left = 60
            Top = 5
            AutoSize = False
            Caption = #9733
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 74
            AnchorY = 18
          end
          object lbl46: TcxLabel
            Left = 86
            Top = 5
            AutoSize = False
            Caption = #9734
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 100
            AnchorY = 18
          end
          object lbl47: TcxLabel
            Left = 112
            Top = 5
            AutoSize = False
            Caption = #9824
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 126
            AnchorY = 18
          end
          object lbl48: TcxLabel
            Left = 138
            Top = 5
            AutoSize = False
            Caption = #9829
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 152
            AnchorY = 18
          end
          object lbl49: TcxLabel
            Left = 164
            Top = 5
            AutoSize = False
            Caption = #9670
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 178
            AnchorY = 18
          end
          object lbl50: TcxLabel
            Left = 8
            Top = 29
            AutoSize = False
            Caption = #9827
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 22
            AnchorY = 42
          end
          object lbl51: TcxLabel
            Left = 34
            Top = 29
            AutoSize = False
            Caption = #9831
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 48
            AnchorY = 42
          end
          object lbl52: TcxLabel
            Left = 60
            Top = 29
            AutoSize = False
            Caption = #9742
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 74
            AnchorY = 42
          end
          object lbl53: TcxLabel
            Left = 86
            Top = 29
            AutoSize = False
            Caption = #12927
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 100
            AnchorY = 42
          end
          object lbl54: TcxLabel
            Left = 112
            Top = 29
            AutoSize = False
            Caption = #8482
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 126
            AnchorY = 42
          end
          object lbl55: TcxLabel
            Left = 138
            Top = 29
            AutoSize = False
            Caption = #8481
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 152
            AnchorY = 42
          end
          object lbl56: TcxLabel
            Left = 164
            Top = 29
            AutoSize = False
            Caption = #8719
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 178
            AnchorY = 42
          end
          object lbl57: TcxLabel
            Left = 8
            Top = 53
            AutoSize = False
            Caption = #9836
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 22
            AnchorY = 66
          end
          object lbl58: TcxLabel
            Left = 34
            Top = 53
            AutoSize = False
            Caption = #9834
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 48
            AnchorY = 66
          end
          object lbl59: TcxLabel
            Left = 60
            Top = 53
            AutoSize = False
            Caption = #9758
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 74
            AnchorY = 66
          end
          object lbl60: TcxLabel
            Left = 86
            Top = 53
            AutoSize = False
            Caption = #9794
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 100
            AnchorY = 66
          end
          object lbl61: TcxLabel
            Left = 112
            Top = 53
            AutoSize = False
            Caption = #9792
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 126
            AnchorY = 66
          end
          object lbl62: TcxLabel
            Left = 138
            Top = 53
            AutoSize = False
            Caption = #9654
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 152
            AnchorY = 66
          end
          object lbl63: TcxLabel
            Left = 164
            Top = 53
            AutoSize = False
            Caption = #9655
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 178
            AnchorY = 66
          end
          object lbl64: TcxLabel
            Left = 8
            Top = 77
            AutoSize = False
            Caption = #9679
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 22
            AnchorY = 90
          end
          object lbl65: TcxLabel
            Left = 34
            Top = 77
            AutoSize = False
            Caption = #9632
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 48
            AnchorY = 90
          end
          object lbl66: TcxLabel
            Left = 60
            Top = 77
            AutoSize = False
            Caption = #9650
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 74
            AnchorY = 90
          end
          object lbl67: TcxLabel
            Left = 86
            Top = 77
            AutoSize = False
            Caption = #65340
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 100
            AnchorY = 90
          end
          object lbl68: TcxLabel
            Left = 112
            Top = 77
            AutoSize = False
            Caption = #8721
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 126
            AnchorY = 90
          end
          object lbl69: TcxLabel
            Left = 138
            Top = 77
            AutoSize = False
            Caption = #9756
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 152
            AnchorY = 90
          end
          object lbl70: TcxLabel
            Left = 164
            Top = 77
            AutoSize = False
            Caption = #8251
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 178
            AnchorY = 90
          end
          object lbl71: TcxLabel
            Left = 8
            Top = 101
            AutoSize = False
            Caption = #8765
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 22
            AnchorY = 114
          end
          object lbl72: TcxLabel
            Left = 34
            Top = 101
            AutoSize = False
            Caption = #12513
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 48
            AnchorY = 114
          end
          object lbl73: TcxLabel
            Left = 60
            Top = 101
            AutoSize = False
            Caption = #9618
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 74
            AnchorY = 114
          end
          object lbl74: TcxLabel
            Left = 86
            Top = 101
            AutoSize = False
            Caption = #9832
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 100
            AnchorY = 114
          end
          object lbl75: TcxLabel
            Left = 112
            Top = 101
            AutoSize = False
            Caption = #12302
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 126
            AnchorY = 114
          end
          object lbl76: TcxLabel
            Left = 138
            Top = 101
            AutoSize = False
            Caption = #12303
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 152
            AnchorY = 114
          end
          object lbl77: TcxLabel
            Left = 164
            Top = 101
            AutoSize = False
            Caption = #9635
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 178
            AnchorY = 114
          end
          object lbl78: TcxLabel
            Left = 8
            Top = 125
            AutoSize = False
            Caption = #9672
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 22
            AnchorY = 138
          end
          object lbl79: TcxLabel
            Left = 34
            Top = 125
            AutoSize = False
            Caption = #8857
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 48
            AnchorY = 138
          end
          object lbl80: TcxLabel
            Left = 60
            Top = 125
            AutoSize = False
            Caption = #9660
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 74
            AnchorY = 138
          end
          object lbl81: TcxLabel
            Left = 86
            Top = 125
            AutoSize = False
            Caption = #9633
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 100
            AnchorY = 138
          end
          object lbl82: TcxLabel
            Left = 112
            Top = 125
            AutoSize = False
            Caption = #9675
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 126
            AnchorY = 138
          end
          object lbl83: TcxLabel
            Left = 138
            Top = 125
            AutoSize = False
            Caption = #9664
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 152
            AnchorY = 138
          end
          object lbl84: TcxLabel
            Left = 164
            Top = 125
            AutoSize = False
            Caption = #9665
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 25
            Width = 27
            AnchorX = 178
            AnchorY = 138
          end
        end
        object cxtbsht1: TcxTabSheet
          Caption = #51060#47784#54000#53080
          Color = 15587527
          ImageIndex = 1
          ParentColor = False
          object lbl85: TcxLabel
            Left = 10
            Top = 5
            AutoSize = False
            Caption = '^_^'
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 45
            AnchorX = 33
            AnchorY = 14
          end
          object lbl86: TcxLabel
            Left = 54
            Top = 5
            AutoSize = False
            Caption = '^0^'
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 45
            AnchorX = 77
            AnchorY = 14
          end
          object lbl87: TcxLabel
            Left = 98
            Top = 5
            AutoSize = False
            Caption = '(/^^)/'
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 45
            AnchorX = 121
            AnchorY = 14
          end
          object lbl88: TcxLabel
            Left = 142
            Top = 5
            AutoSize = False
            Caption = '^o^~'#9836
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 45
            AnchorX = 165
            AnchorY = 14
          end
          object lbl89: TcxLabel
            Left = 10
            Top = 21
            AutoSize = False
            Caption = '*^^*'
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 45
            AnchorX = 33
            AnchorY = 30
          end
          object lbl90: TcxLabel
            Left = 54
            Top = 21
            AutoSize = False
            Caption = #12622'.'#12622
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 45
            AnchorX = 77
            AnchorY = 30
          end
          object lbl91: TcxLabel
            Left = 98
            Top = 21
            AutoSize = False
            Caption = '^.~'
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 45
            AnchorX = 121
            AnchorY = 30
          end
          object lbl92: TcxLabel
            Left = 142
            Top = 21
            AutoSize = False
            Caption = '^'#9661'^'
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 45
            AnchorX = 165
            AnchorY = 30
          end
          object lbl93: TcxLabel
            Left = 10
            Top = 37
            AutoSize = False
            Caption = '(^^)'#947
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 45
            AnchorX = 33
            AnchorY = 46
          end
          object lbl94: TcxLabel
            Left = 54
            Top = 37
            AutoSize = False
            Caption = '(~^^)~'
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 45
            AnchorX = 77
            AnchorY = 46
          end
          object lbl95: TcxLabel
            Left = 98
            Top = 37
            AutoSize = False
            Caption = '=^.^='
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 45
            AnchorX = 121
            AnchorY = 46
          end
          object lbl96: TcxLabel
            Left = 142
            Top = 37
            AutoSize = False
            Caption = '(*^o^*)'
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 45
            AnchorX = 165
            AnchorY = 46
          end
          object lbl97: TcxLabel
            Left = 10
            Top = 53
            AutoSize = False
            Caption = '~_~'
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 45
            AnchorX = 33
            AnchorY = 62
          end
          object lbl98: TcxLabel
            Left = 54
            Top = 53
            AutoSize = False
            Caption = '('#9832'_'#9832')'
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 45
            AnchorX = 77
            AnchorY = 62
          end
          object lbl99: TcxLabel
            Left = 98
            Top = 53
            AutoSize = False
            Caption = '(=_=;)'
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 45
            AnchorX = 121
            AnchorY = 62
          end
          object lbl100: TcxLabel
            Left = 142
            Top = 53
            AutoSize = False
            Caption = #8839'.'#8838
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 45
            AnchorX = 165
            AnchorY = 62
          end
          object lbl101: TcxLabel
            Left = 10
            Top = 69
            AutoSize = False
            Caption = #8857#8857#12672
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 45
            AnchorX = 33
            AnchorY = 78
          end
          object lbl102: TcxLabel
            Left = 54
            Top = 69
            AutoSize = False
            Caption = #8857'.'#8857
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 45
            AnchorX = 77
            AnchorY = 78
          end
          object lbl103: TcxLabel
            Left = 98
            Top = 69
            AutoSize = False
            Caption = 'O_O'
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 45
            AnchorX = 121
            AnchorY = 78
          end
          object lbl104: TcxLabel
            Left = 142
            Top = 69
            AutoSize = False
            Caption = '(@.@)'
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 45
            AnchorX = 165
            AnchorY = 78
          end
          object lbl105: TcxLabel
            Left = 10
            Top = 101
            AutoSize = False
            Caption = '(*^}{^*)'
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 60
            AnchorX = 40
            AnchorY = 110
          end
          object lbl106: TcxLabel
            Left = 69
            Top = 101
            AutoSize = False
            Caption = #9435#9438#9445#9428
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 60
            AnchorX = 99
            AnchorY = 110
          end
          object lbl107: TcxLabel
            Left = 128
            Top = 101
            AutoSize = False
            Caption = #8598'(^'#9661'^)'#8599
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 59
            AnchorX = 158
            AnchorY = 110
          end
          object lbl108: TcxLabel
            Left = 10
            Top = 85
            AutoSize = False
            Caption = '('#9825'.'#9825')'
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 45
            AnchorX = 33
            AnchorY = 94
          end
          object lbl109: TcxLabel
            Left = 54
            Top = 85
            AutoSize = False
            Caption = '(*_*)'
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 45
            AnchorX = 77
            AnchorY = 94
          end
          object lbl110: TcxLabel
            Left = 98
            Top = 85
            AutoSize = False
            Caption = #9829'.'#9829
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 45
            AnchorX = 121
            AnchorY = 94
          end
          object lbl111: TcxLabel
            Left = 142
            Top = 85
            AutoSize = False
            Caption = #9758#9825#9756
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 45
            AnchorX = 165
            AnchorY = 94
          end
          object lbl112: TcxLabel
            Left = 10
            Top = 117
            AutoSize = False
            Caption = '(/^o^)/'#9825
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 60
            AnchorX = 40
            AnchorY = 126
          end
          object lbl113: TcxLabel
            Left = 69
            Top = 117
            AutoSize = False
            Caption = '(=^'#9661'^)/'
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 60
            AnchorX = 99
            AnchorY = 126
          end
          object lbl114: TcxLabel
            Left = 128
            Top = 117
            AutoSize = False
            Caption = '('#12494'^_^)'#12494
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 59
            AnchorX = 158
            AnchorY = 126
          end
          object lbl115: TcxLabel
            Left = 10
            Top = 133
            AutoSize = False
            Caption = '@-m-m--'
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 89
            AnchorX = 55
            AnchorY = 142
          end
          object lbl116: TcxLabel
            Left = 98
            Top = 133
            AutoSize = False
            Caption = '>>------'#9655#9825
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            OnClick = lbl43Click
            Height = 17
            Width = 89
            AnchorX = 143
            AnchorY = 142
          end
        end
      end
      object cxButton12: TcxButton
        Left = 3
        Top = 206
        Width = 206
        Height = 25
        Cursor = crHandPoint
        Caption = #45803#44592
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        TabOrder = 2
        OnClick = cxButton12Click
      end
    end
    object pnl1: TPanel
      Left = 0
      Top = 0
      Width = 1121
      Height = 133
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 1
      ParentColor = True
      TabOrder = 1
      object cxGridBranchSms: TcxGrid
        AlignWithMargins = True
        Left = 303
        Top = 4
        Width = 814
        Height = 125
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvSpace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = False
        object cxViewBranchSms: TcxGridDBTableView
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
          OptionsSelection.InvertSelect = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.CellMultiSelect = True
          OptionsView.FocusRect = False
          OptionsView.NoDataToDisplayInfoText = '  '
          OptionsView.DataRowHeight = 22
          OptionsView.ExpandButtonsForEmptyDetails = False
          OptionsView.GridLineColor = clSilver
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 22
          Styles.Selection = Frm_Main.cxStyle11
          object cxGridDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 108
          end
          object cxGridDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#48324#51204#49569#44148#49688
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 149
          end
          object cxColViewBranchSmsColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'SMS'#52880#49772
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 135
          end
          object cxColViewBranchSmsColumn2: TcxGridDBColumn
            DataBinding.FieldName = #51204#49569#54980'SMS'#52880#49772
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 134
          end
          object cxColViewBranchSmsColumn3: TcxGridDBColumn
            DataBinding.FieldName = #48708#44256
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 129
          end
          object cxColViewBranchSmsColumn4: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#53076#46300
            Visible = False
            MinWidth = 0
            VisibleForCustomization = False
            Width = 50
          end
          object cxViewBranchSmsColumn1: TcxGridDBColumn
            DataBinding.FieldName = #44148#45817#44552#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 78
          end
        end
        object cxLevelBranchSms: TcxGridLevel
          GridView = cxViewBranchSms
        end
      end
      object pnl3: TPanel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 293
        Height = 125
        Align = alLeft
        BevelKind = bkFlat
        BevelOuter = bvNone
        BorderWidth = 1
        ParentColor = True
        TabOrder = 0
        object lbl6: TLabel
          Left = 142
          Top = 4
          Width = 41
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #51312#54633#51204
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
        end
        object lbl11: TLabel
          Left = 241
          Top = 4
          Width = 44
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #51312#54633#54980
        end
        object lblSMSCaption: TLabel
          Left = 5
          Top = 62
          Width = 278
          Height = 18
          AutoSize = False
          Caption = '('#44305#44256' SMS'#45716' '#44148#45817' 16'#50896' (VAT'#54252#54632'))'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object lbl12: TLabel
          Left = 5
          Top = 85
          Width = 278
          Height = 14
          AutoSize = False
          Caption = #8251' '#51312#54633#45800#44228#50640#49436' PC'#45236' '#49688#49888#44144#48512' '#54028#51068#51012' '#48708#44368#54633#45768#45796'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl13: TLabel
          Left = 5
          Top = 30
          Width = 92
          Height = 18
          AutoSize = False
          Caption = #51204#52404#51204#49569#44148#49688
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl5: TLabel
          Left = 6
          Top = 100
          Width = 262
          Height = 13
          AutoSize = False
          Caption = #8251' SMS'#47484' '#48372#45236#44592' '#51204' '#51648#49324#48324' SMS'#52880#49772#47484' '#54869#51064#54616#49464#50836'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object mmoBefore: TMemo
          Left = 96
          Top = 20
          Width = 89
          Height = 31
          TabStop = False
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ImeName = 'Microsoft IME 2003'
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object mmoAfter: TMemo
          Left = 196
          Top = 20
          Width = 89
          Height = 31
          TabStop = False
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ImeName = 'Microsoft IME 2003'
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
    object pnl2: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 136
      Width = 293
      Height = 639
      Align = alLeft
      BevelKind = bkFlat
      BevelOuter = bvNone
      BorderWidth = 1
      ParentColor = True
      TabOrder = 2
      object img1: TImage
        Left = 6
        Top = 92
        Width = 140
        Height = 150
        AutoSize = True
        Picture.Data = {
          0A544A504547496D6167651C4E0000FFD8FFE000104A46494600010201012C01
          2C0000FFE10B304578696600004D4D002A000000080007011200030000000100
          010000011A00050000000100000062011B0005000000010000006A0128000300
          00000100020000013100020000001B0000007201320002000000140000008D87
          69000400000001000000A4000000D00000012C000000010000012C0000000141
          646F62652050686F746F73686F702043532057696E646F777300323031343A30
          323A32302031303A34363A3436000000000003A00100030000000100010000A0
          020004000000010000008CA00300040000000100000096000000000000000601
          0300030000000100060000011A0005000000010000011E011B00050000000100
          00012601280003000000010002000002010004000000010000012E0202000400
          000001000009FA0000000000000048000000010000004800000001FFD8FFE000
          104A46494600010201004800480000FFED000C41646F62655F434D0001FFEE00
          0E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B
          11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E
          0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080096008C03012200
          021101031101FFDD00040009FFC4013F00000105010101010101000000000000
          00030001020405060708090A0B01000105010101010101000000000000000100
          02030405060708090A0B1000010401030204020507060805030C330100021103
          04211231054151611322718132061491A1B14223241552C16233347282D14307
          259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3
          D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
          37475767778797A7B7C7D7E7F711000202010204040304050607070605350100
          021103213112044151617122130532819114A1B14223C152D1F0332462E17282
          92435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2
          B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6
          E6F62737475767778797A7B7C7FFDA000C03010002110311003F00EE69AE834D
          64D6C2768925A3C14FD3C7FF0044CFF342C9CBEAE30AFC2C5F4C3FED21A0B8BF
          6ED92DAF46ED76FE564DFD7726FC373DF7FA45970687504B0C6D79DAFF0073BF
          755BC5C9E5C80102A32AA27C4F0B572F358F1D836651BF481FBBEA7AB0DC42E7
          3036A2F67D268DA5C3FACD1EE4FE9E3FFA267F9A173FD3B331C756CB2E731843
          497BDC4379757F49E56D36D6B9A1ED70735DAB5CD20823C8851E6C471C80DEE3
          197F8C3897E1CBEE44CAB86A528D7F725C29BD3C7FF44CFF003425E9E3FF00A2
          67F9A10BD44BD45132A5F4F1FF00D133FCD097A78FFE899FE6842F512F512525
          F4F1FF00D133FCD097A78FFE899FE6842F512F512525F4F1FF00D133FCD0A0D6
          31EE736AC4166D76C247A606EDADB207A8F63BE8BD47D447C120D391B9BB986E
          D40E67D3A623F77FAE9218FD9ADFFB807FF01FFD2AA1635B56B6E1EC6EE6B49F
          D1182F3B19B832C73BE915603B201003CEC1DC825E07EECFD177FC639433E060
          431A5AD16D4483CCFA8CF7171FA68A90645DD3F15A1F902BADA4C025A39FB957
          FDADD0BFD253FE6FFE62B33AB633F2BA853564DC5987682D60240635CD658F76
          EFCEDEE40FF9B5D27FEE633FCE1FDEA9F33CD9C331110E2B1C576C5972CA0684
          6F4EEED7ED6E85FE929FF37FF31459C5FB46FDACF47D1DF3036C4CEFFF003560
          1FABBD2AB05E32D84B41206E1D87C55EF57FC97EA7FDD19FFA129B0E74CB164C
          9C15EDF0E97F371940CD23094B8758D696FF00FFD0E94750C5801D597B99EDDD
          E917C16FB4EC7EC77E70FCD4BEDD8511E869CC7D9F49F18F4D3E06FF00B386B1
          C5A5D7DA398FCF5A2312E813719EFCFF00E494809ADCACA1D9CD39D84E9DD44E
          EFA538E4CFF5BF47EE4E3A8E3801AD63DAD1C35B53801F06B58B47EC96FF00A7
          3F77FE6497D92DFF004E7EEFFCC9236772AFA39DFB4A8FDDB7FEDB7FFE452FDA
          547EEDBFF6DBFF00F22B47EC96FF00A73F77FE6497D92DFF004E7EEFFCC90A53
          9DFB4A8FDDB7FEDB7FFE452FDA547EEDBFF6DBFF00F22B47EC96FF00A73F77FE
          6497D92DFF004E7EEFFCC92A539DFB4A8FDDB7FEDB7FFE452FDA547EEDBFF6DB
          FF00F22B47EC96FF00A73F77FE6497D92DFF004E7EEFFCC92A539DFB4A8FDDB7
          FEDB7FFE4541D9984E3B9D53DC4F24D2E27FEA16A7D92DFF004E7EEFFCC92FB2
          5BFE9CFDDFF99255E2A72BED581FE81DFF006CBBFF00209C65E08208A5C08D41
          14BBFF0020B53EC96FFA73F77FE6497D92DFF4E7EEFF00CC91A3DD5F472EECBC
          2BD9B2FA5D6B2676BE97384F8C39883B7A37FDC26FFEC37FEA35B5F64B7FD39F
          BBFF00324BEC96FF00A73F77FE648529C5DBD1BFEE137FF61BFF0051A37DBB17
          9876CFE6B66C74CC6FDBE9EDDDF415FBEABA901DEA973498E4832B33FEF53FF4
          33FF0045254A7FFFD1E9FA6FF34CFF00C3167FD5ADA58BD37F9A67FE18B3FEAD
          6D2906CB1492492495249249294924924A5249249294924924A5249249294924
          924A6B67FF0034DFEB0FC85637FDEA7FE867FE8A5B39FF00CD37FAC3F2158DFF
          007A9FFA19FF00A292EC87FFD2E9FA6FF34CFF00C3167FD5ADA58BD37F9A67FE
          18B3FEAD6D2906CB1492492495249249294924924A5249249294924924A52492
          49294924924A6B67FF0034DFEB0FC85637FDEA7FE867FE8A5B39FF00CD37FAC3
          F2158DFF007A9FFA19FF00A292EC87FFD3E9FA6FF34CFF00C3167FD5ADA58BD3
          7F9A67FE18B3FEAD6D2906CB1492492495249249294924924A52492492949249
          24A5249249294924924A6B67FF0034DFEB0FC85637FDEA7FE867FE8A5B39FF00
          CD37FAC3F2158DFF007A9FFA19FF00A292EC87FFD4E9FA6FF34CFF00C3167FD5
          ADA58BD37F9A67FE18B3FEAD6D2906CB1492492495249249294924924A524924
          9294924924A5249249294924924A6B67FF0034DFEB0FC85637FDEA7FE867FE8A
          5B39FF00CD37FAC3F2158DFF007A9FFA19FF00A292EC87FFD5E9FA6FF34CFF00
          C3167FD5ADA58BD37F9A67FE18B3FEAD6D2906CB149249249524924929492492
          4A5249249294924924A5249249294924924A6B67FF0034DFEB0FC85637FDEA7F
          E867FE8A5B39FF00CD37FAC3F2158DFF007A9FFA19FF00A292EC87FFD6E9FA6F
          F34CFF00C3167FD5ADA58BD37F9A67FE18B3FEAD6D2906CB1492492495249249
          294924924A5249249294924924A5249249294924924A6B67FF0034DFEB0FC856
          37FDEA7FE867FE8A5B39FF00CD37FAC3F2158DFF007A9FFA19FF00A292EC87FF
          D7E9FA6FF34CFF00C3167FD5ADA58BD37F9A67FE18B3FEAD6D2906CB14924924
          95249249294924924A5249249294924924A5249249294924924A6B67FF0034DF
          EB0FC85637FDEA7FE867FE8A5B39FF00CD37FAC3F2158DFF007A9FFA19FF00A2
          92EC87FFD0E8B1A9C9DA7ECF9356CF51E5B35BC90E2E3B872DFA2E567D1EB3FF
          007219FF006DBFFF0024BE7F493D6BF407A3D67FEE433FEDB7FF00E492F47ACF
          FDC867FDB6FF00FC92F9FD2494FD01E8F59FFB90CFFB6DFF00F924BD1EB3FF00
          7219FF006DBFFF0024BE7F49253F407A3D67FEE433FEDB7FFE492F47ACFF00DC
          867FDB6FFF00C92F9FD2494FD01E8F59FF00B90CFF00B6DFFF00924BD1EB3FF7
          219FF6DBFF00F24BE7F49253F407A3D67FEE433FEDB7FF00E492F47ACFFDC867
          FDB6FF00FC92F9FD2494FD01E8F59FFB90CFFB6DFF00F924BD1EB3FF007219FF
          006DBFFF0024BE7F49253F407A3D67FEE433FEDB7FFE492F47ACFF00DC867FDB
          6FFF00C92F9FD2494FBF594F548FD2645713A6EADF13F372ABE83FED1FD26BFB
          4FAF3F41F1BFD3DBB36FFC5FBFE9AF0B49253FFFD9FFED101850686F746F7368
          6F7020332E30003842494D04040000000000071C020000020002003842494D04
          25000000000010460CF28926B856DAB09C01A1B0A790773842494D03ED000000
          000010012C000000010002012C0000000100023842494D042600000000000E00
          0000000000000000003F8000003842494D040D00000000000400000078384249
          4D04190000000000040000001E3842494D03F300000000000900000000000000
          0001003842494D040A00000000000100003842494D271000000000000A000100
          000000000000023842494D03F5000000000048002F66660001006C6666000600
          0000000001002F6666000100A1999A0006000000000001003200000001005A00
          000006000000000001003500000001002D000000060000000000013842494D03
          F80000000000700000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03
          E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E8000000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800003842494D0400000000
          000002000B3842494D0402000000000018000000000000000000000000000000
          0000000000000000003842494D04080000000000150000000100000240000002
          4000000001FFFFF68000003842494D041E000000000004000000003842494D04
          1A000000000349000000060000000000000000000000960000008C0000000A00
          55006E007400690074006C00650064002D003100000001000000000000000000
          000000000000000000000100000000000000000000008C000000960000000000
          0000000000000000000000010000000000000000000000000000000000000010
          000000010000000000006E756C6C0000000200000006626F756E64734F626A63
          00000001000000000000526374310000000400000000546F70206C6F6E670000
          0000000000004C6566746C6F6E67000000000000000042746F6D6C6F6E670000
          009600000000526768746C6F6E670000008C00000006736C69636573566C4C73
          000000014F626A6300000001000000000005736C696365000000120000000773
          6C69636549446C6F6E67000000000000000767726F757049446C6F6E67000000
          00000000066F726967696E656E756D0000000C45536C6963654F726967696E00
          00000D6175746F47656E6572617465640000000054797065656E756D0000000A
          45536C6963655479706500000000496D672000000006626F756E64734F626A63
          00000001000000000000526374310000000400000000546F70206C6F6E670000
          0000000000004C6566746C6F6E67000000000000000042746F6D6C6F6E670000
          009600000000526768746C6F6E670000008C0000000375726C54455854000000
          010000000000006E756C6C54455854000000010000000000004D736765544558
          5400000001000000000006616C74546167544558540000000100000000000E63
          656C6C54657874497348544D4C626F6F6C010000000863656C6C546578745445
          585400000001000000000009686F727A416C69676E656E756D0000000F45536C
          696365486F727A416C69676E0000000764656661756C74000000097665727441
          6C69676E656E756D0000000F45536C69636556657274416C69676E0000000764
          656661756C740000000B6267436F6C6F7254797065656E756D0000001145536C
          6963654247436F6C6F7254797065000000004E6F6E6500000009746F704F7574
          7365746C6F6E67000000000000000A6C6566744F75747365746C6F6E67000000
          000000000C626F74746F6D4F75747365746C6F6E67000000000000000B726967
          68744F75747365746C6F6E6700000000003842494D042800000000000C000000
          013FF00000000000003842494D04140000000000040000000E3842494D040C00
          0000000A16000000010000008C00000096000001A40000F618000009FA001800
          01FFD8FFE000104A46494600010201004800480000FFED000C41646F62655F43
          4D0001FFEE000E41646F626500648000000001FFDB0084000C08080809080C09
          090C110B0A0B11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D10
          0E0E10140E0E0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080096
          008C03012200021101031101FFDD00040009FFC4013F00000105010101010101
          00000000000000030001020405060708090A0B01000105010101010101000000
          00000000010002030405060708090A0B1000010401030204020507060805030C
          33010002110304211231054151611322718132061491A1B14223241552C16233
          347282D14307259253F0E1F163733516A2B283264493546445C2A3743617D255
          E265F2B384C3D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696
          A6B6C6D6E6F637475767778797A7B7C7D7E7F711000202010204040304050607
          070605350100021103213112044151617122130532819114A1B14223C152D1F0
          332462E1728292435315637334F1250616A2B283072635C2D2449354A3176445
          55367465E2F2B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F5566676
          8696A6B6C6D6E6F62737475767778797A7B7C7FFDA000C03010002110311003F
          00EE69AE834D64D6C2768925A3C14FD3C7FF0044CFF342C9CBEAE30AFC2C5F4C
          3FED21A0B8BF6ED92DAF46ED76FE564DFD7726FC373DF7FA45970687504B0C6D
          79DAFF0073BF755BC5C9E5C80102A32AA27C4F0B572F358F1D836651BF481FBB
          EA7AB0DC42E73036A2F67D268DA5C3FACD1EE4FE9E3FFA267F9A173FD3B331C7
          56CB2E731843497BDC4379757F49E56D36D6B9A1ED70735DAB5CD20823C8851E
          6C471C80DEE3197F8C3897E1CBEE44CAB86A528D7F725C29BD3C7FF44CFF0034
          25E9E3FF00A267F9A10BD44BD45132A5F4F1FF00D133FCD097A78FFE899FE684
          2F512F512525F4F1FF00D133FCD097A78FFE899FE6842F512F512525F4F1FF00
          D133FCD0A0D631EE736AC4166D76C247A606EDADB207A8F63BE8BD47D447C120
          D391B9BB986ED40E67D3A623F77FAE9218FD9ADFFB807FF01FFD2AA1635B56B6
          E1EC6EE6B49FD1182F3B19B832C73BE915603B201003CEC1DC825E07EECFD177
          FC639433E060431A5AD16D4483CCFA8CF7171FA68A90645DD3F15A1F902BADA4
          C025A39FB957FDADD0BFD253FE6FFE62B33AB633F2BA853564DC5987682D6024
          0635CD658F76EFCEDEE40FF9B5D27FEE633FCE1FDEA9F33CD9C331110E2B1C57
          6C5972CA06846F4EEED7ED6E85FE929FF37FF31459C5FB46FDACF47D1DF3036C
          4CEFFF0035601FABBD2AB05E32D84B41206E1D87C55EF57FC97EA7FDD19FFA12
          9B0E74CB164C9C15EDF0E97F371940CD23094B8758D696FF00FFD0E94750C580
          1D597B99EDDDE917C16FB4EC7EC77E70FCD4BEDD8511E869CC7D9F49F18F4D3E
          06FF00B386B1C5A5D7DA398FCF5A2312E813719EFCFF00E494809ADCACA1D9CD
          39D84E9DD44EEFA538E4CFF5BF47EE4E3A8E3801AD63DAD1C35B53801F06B58B
          47EC96FF00A73F77FE6497D92DFF004E7EEFFCC9236772AFA39DFB4A8FDDB7FE
          DB7FFE452FDA547EEDBFF6DBFF00F22B47EC96FF00A73F77FE6497D92DFF004E
          7EEFFCC90A539DFB4A8FDDB7FEDB7FFE452FDA547EEDBFF6DBFF00F22B47EC96
          FF00A73F77FE6497D92DFF004E7EEFFCC92A539DFB4A8FDDB7FEDB7FFE452FDA
          547EEDBFF6DBFF00F22B47EC96FF00A73F77FE6497D92DFF004E7EEFFCC92A53
          9DFB4A8FDDB7FEDB7FFE4541D9984E3B9D53DC4F24D2E27FEA16A7D92DFF004E
          7EEFFCC92FB25BFE9CFDDFF99255E2A72BED581FE81DFF006CBBFF00209C65E0
          8208A5C08D4114BBFF0020B53EC96FFA73F77FE6497D92DFF4E7EEFF00CC91A3
          DD5F472EECBC2BD9B2FA5D6B2676BE97384F8C39883B7A37FDC26FFEC37FEA35
          B5F64B7FD39FBBFF00324BEC96FF00A73F77FE648529C5DBD1BFEE137FF61BFF
          0051A37DBB179876CFE6B66C74CC6FDBE9EDDDF415FBEABA901DEA973498E483
          2B33FEF53FF433FF0045254A7FFFD1E9FA6FF34CFF00C3167FD5ADA58BD37F9A
          67FE18B3FEAD6D2906CB1492492495249249294924924A5249249294924924A5
          249249294924924A6B67FF0034DFEB0FC85637FDEA7FE867FE8A5B39FF00CD37
          FAC3F2158DFF007A9FFA19FF00A292EC87FFD2E9FA6FF34CFF00C3167FD5ADA5
          8BD37F9A67FE18B3FEAD6D2906CB1492492495249249294924924A5249249294
          924924A5249249294924924A6B67FF0034DFEB0FC85637FDEA7FE867FE8A5B39
          FF00CD37FAC3F2158DFF007A9FFA19FF00A292EC87FFD3E9FA6FF34CFF00C316
          7FD5ADA58BD37F9A67FE18B3FEAD6D2906CB1492492495249249294924924A52
          49249294924924A5249249294924924A6B67FF0034DFEB0FC85637FDEA7FE867
          FE8A5B39FF00CD37FAC3F2158DFF007A9FFA19FF00A292EC87FFD4E9FA6FF34C
          FF00C3167FD5ADA58BD37F9A67FE18B3FEAD6D2906CB14924924952492492949
          24924A5249249294924924A5249249294924924A6B67FF0034DFEB0FC85637FD
          EA7FE867FE8A5B39FF00CD37FAC3F2158DFF007A9FFA19FF00A292EC87FFD5E9
          FA6FF34CFF00C3167FD5ADA58BD37F9A67FE18B3FEAD6D2906CB149249249524
          9249294924924A5249249294924924A5249249294924924A6B67FF0034DFEB0F
          C85637FDEA7FE867FE8A5B39FF00CD37FAC3F2158DFF007A9FFA19FF00A292EC
          87FFD6E9FA6FF34CFF00C3167FD5ADA58BD37F9A67FE18B3FEAD6D2906CB1492
          492495249249294924924A5249249294924924A5249249294924924A6B67FF00
          34DFEB0FC85637FDEA7FE867FE8A5B39FF00CD37FAC3F2158DFF007A9FFA19FF
          00A292EC87FFD7E9FA6FF34CFF00C3167FD5ADA58BD37F9A67FE18B3FEAD6D29
          06CB1492492495249249294924924A5249249294924924A5249249294924924A
          6B67FF0034DFEB0FC85637FDEA7FE867FE8A5B39FF00CD37FAC3F2158DFF007A
          9FFA19FF00A292EC87FFD0E8B1A9C9DA7ECF9356CF51E5B35BC90E2E3B872DFA
          2E567D1EB3FF007219FF006DBFFF0024BE7F493D6BF407A3D67FEE433FEDB7FF
          00E492F47ACFFDC867FDB6FF00FC92F9FD2494FD01E8F59FFB90CFFB6DFF00F9
          24BD1EB3FF007219FF006DBFFF0024BE7F49253F407A3D67FEE433FEDB7FFE49
          2F47ACFF00DC867FDB6FFF00C92F9FD2494FD01E8F59FF00B90CFF00B6DFFF00
          924BD1EB3FF7219FF6DBFF00F24BE7F49253F407A3D67FEE433FEDB7FF00E492
          F47ACFFDC867FDB6FF00FC92F9FD2494FD01E8F59FFB90CFFB6DFF00F924BD1E
          B3FF007219FF006DBFFF0024BE7F49253F407A3D67FEE433FEDB7FFE492F47AC
          FF00DC867FDB6FFF00C92F9FD2494FBF594F548FD2645713A6EADF13F372ABE8
          3FED1FD26BFB4FAF3F41F1BFD3DBB36FFC5FBFE9AF0B49253FFFD93842494D04
          2100000000005300000001010000000F00410064006F00620065002000500068
          006F0074006F00730068006F00700000001200410064006F0062006500200050
          0068006F0074006F00730068006F007000200043005300000001003842494D04
          060000000000070004000000010100FFE11936687474703A2F2F6E732E61646F
          62652E636F6D2F7861702F312E302F003C3F787061636B657420626567696E3D
          27EFBBBF272069643D2757354D304D7043656869487A7265537A4E54637A6B63
          3964273F3E0A3C783A786D706D65746120786D6C6E733A783D2761646F62653A
          6E733A6D6574612F2720783A786D70746B3D27584D5020746F6F6C6B69742033
          2E302D32382C206672616D65776F726B20312E36273E0A3C7264663A52444620
          786D6C6E733A7264663D27687474703A2F2F7777772E77332E6F72672F313939
          392F30322F32322D7264662D73796E7461782D6E73232720786D6C6E733A6958
          3D27687474703A2F2F6E732E61646F62652E636F6D2F69582F312E302F273E0A
          0A203C7264663A4465736372697074696F6E207264663A61626F75743D277575
          69643A64343332393837622D393964302D313165332D613261362D6238366461
          31353762623265270A2020786D6C6E733A657869663D27687474703A2F2F6E73
          2E61646F62652E636F6D2F657869662F312E302F273E0A20203C657869663A43
          6F6C6F7253706163653E313C2F657869663A436F6C6F7253706163653E0A2020
          3C657869663A506978656C5844696D656E73696F6E3E3134303C2F657869663A
          506978656C5844696D656E73696F6E3E0A20203C657869663A506978656C5944
          696D656E73696F6E3E3135303C2F657869663A506978656C5944696D656E7369
          6F6E3E0A203C2F7264663A4465736372697074696F6E3E0A0A203C7264663A44
          65736372697074696F6E207264663A61626F75743D27757569643A6434333239
          3837622D393964302D313165332D613261362D62383664613135376262326527
          0A2020786D6C6E733A7064663D27687474703A2F2F6E732E61646F62652E636F
          6D2F7064662F312E332F273E0A203C2F7264663A4465736372697074696F6E3E
          0A0A203C7264663A4465736372697074696F6E207264663A61626F75743D2775
          7569643A64343332393837622D393964302D313165332D613261362D62383664
          6131353762623265270A2020786D6C6E733A70686F746F73686F703D27687474
          703A2F2F6E732E61646F62652E636F6D2F70686F746F73686F702F312E302F27
          3E0A20203C70686F746F73686F703A486973746F72793E3C2F70686F746F7368
          6F703A486973746F72793E0A203C2F7264663A4465736372697074696F6E3E0A
          0A203C7264663A4465736372697074696F6E207264663A61626F75743D277575
          69643A64343332393837622D393964302D313165332D613261362D6238366461
          31353762623265270A2020786D6C6E733A746966663D27687474703A2F2F6E73
          2E61646F62652E636F6D2F746966662F312E302F273E0A20203C746966663A4F
          7269656E746174696F6E3E313C2F746966663A4F7269656E746174696F6E3E0A
          20203C746966663A585265736F6C7574696F6E3E3330302F313C2F746966663A
          585265736F6C7574696F6E3E0A20203C746966663A595265736F6C7574696F6E
          3E3330302F313C2F746966663A595265736F6C7574696F6E3E0A20203C746966
          663A5265736F6C7574696F6E556E69743E323C2F746966663A5265736F6C7574
          696F6E556E69743E0A203C2F7264663A4465736372697074696F6E3E0A0A203C
          7264663A4465736372697074696F6E207264663A61626F75743D27757569643A
          64343332393837622D393964302D313165332D613261362D6238366461313537
          62623265270A2020786D6C6E733A7861703D27687474703A2F2F6E732E61646F
          62652E636F6D2F7861702F312E302F273E0A20203C7861703A43726561746544
          6174653E323031342D30322D32305431303A34363A34362B30393A30303C2F78
          61703A437265617465446174653E0A20203C7861703A4D6F6469667944617465
          3E323031342D30322D32305431303A34363A34362B30393A30303C2F7861703A
          4D6F64696679446174653E0A20203C7861703A4D65746164617461446174653E
          323031342D30322D32305431303A34363A34362B30393A30303C2F7861703A4D
          65746164617461446174653E0A20203C7861703A43726561746F72546F6F6C3E
          41646F62652050686F746F73686F702043532057696E646F77733C2F7861703A
          43726561746F72546F6F6C3E0A203C2F7264663A4465736372697074696F6E3E
          0A0A203C7264663A4465736372697074696F6E207264663A61626F75743D2775
          7569643A64343332393837622D393964302D313165332D613261362D62383664
          6131353762623265270A2020786D6C6E733A73745265663D27687474703A2F2F
          6E732E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F75
          72636552656623270A2020786D6C6E733A7861704D4D3D27687474703A2F2F6E
          732E61646F62652E636F6D2F7861702F312E302F6D6D2F273E0A20203C786170
          4D4D3A4465726976656446726F6D207264663A7061727365547970653D275265
          736F75726365273E0A2020203C73745265663A696E7374616E636549443E7575
          69643A34326132323631312D393963662D313165332D613261362D6238366461
          313537626232653C2F73745265663A696E7374616E636549443E0A2020203C73
          745265663A646F63756D656E7449443E61646F62653A646F6369643A70686F74
          6F73686F703A39326333663466642D393935642D313165332D383463302D6431
          633035326139363832373C2F73745265663A646F63756D656E7449443E0A2020
          3C2F7861704D4D3A4465726976656446726F6D3E0A20203C7861704D4D3A446F
          63756D656E7449443E61646F62653A646F6369643A70686F746F73686F703A64
          343332393837612D393964302D313165332D613261362D623836646131353762
          6232653C2F7861704D4D3A446F63756D656E7449443E0A203C2F7264663A4465
          736372697074696F6E3E0A0A203C7264663A4465736372697074696F6E207264
          663A61626F75743D27757569643A64343332393837622D393964302D31316533
          2D613261362D623836646131353762623265270A2020786D6C6E733A64633D27
          687474703A2F2F7075726C2E6F72672F64632F656C656D656E74732F312E312F
          273E0A20203C64633A666F726D61743E696D6167652F6A7065673C2F64633A66
          6F726D61743E0A203C2F7264663A4465736372697074696F6E3E0A0A3C2F7264
          663A5244463E0A3C2F783A786D706D6574613E0A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A3C3F787061636B657420656E
          643D2777273F3EFFE20C584943435F50524F46494C4500010100000C484C696E
          6F021000006D6E74725247422058595A2007CE00020009000600310000616373
          704D5346540000000049454320735247420000000000000000000000000000F6
          D6000100000000D32D4850202000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000011637072
          74000001500000003364657363000001840000006C77747074000001F0000000
          14626B707400000204000000147258595A00000218000000146758595A000002
          2C000000146258595A0000024000000014646D6E640000025400000070646D64
          64000002C400000088767565640000034C0000008676696577000003D4000000
          246C756D69000003F8000000146D6561730000040C0000002474656368000004
          300000000C725452430000043C0000080C675452430000043C0000080C625452
          430000043C0000080C7465787400000000436F70797269676874202863292031
          393938204865776C6574742D5061636B61726420436F6D70616E790000646573
          630000000000000012735247422049454336313936362D322E31000000000000
          000000000012735247422049454336313936362D322E31000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000058595A20000000000000F35100010000000116CC58595A
          200000000000000000000000000000000058595A200000000000006FA2000038
          F50000039058595A2000000000000062990000B785000018DA58595A20000000
          00000024A000000F840000B6CF64657363000000000000001649454320687474
          703A2F2F7777772E6965632E6368000000000000000000000016494543206874
          74703A2F2F7777772E6965632E63680000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000646573
          63000000000000002E4945432036313936362D322E312044656661756C742052
          474220636F6C6F7572207370616365202D207352474200000000000000000000
          002E4945432036313936362D322E312044656661756C742052474220636F6C6F
          7572207370616365202D20735247420000000000000000000000000000000000
          000000000064657363000000000000002C5265666572656E6365205669657769
          6E6720436F6E646974696F6E20696E2049454336313936362D322E3100000000
          000000000000002C5265666572656E63652056696577696E6720436F6E646974
          696F6E20696E2049454336313936362D322E3100000000000000000000000000
          0000000000000000000000000076696577000000000013A4FE00145F2E0010CF
          140003EDCC0004130B00035C9E0000000158595A2000000000004C0956005000
          0000571FE76D6561730000000000000001000000000000000000000000000000
          000000028F000000027369672000000000435254206375727600000000000004
          0000000005000A000F00140019001E00230028002D00320037003B0040004500
          4A004F00540059005E00630068006D00720077007C00810086008B0090009500
          9A009F00A400A900AE00B200B700BC00C100C600CB00D000D500DB00E000E500
          EB00F000F600FB01010107010D01130119011F0125012B01320138013E014501
          4C0152015901600167016E0175017C0183018B0192019A01A101A901B101B901
          C101C901D101D901E101E901F201FA0203020C0214021D0226022F0238024102
          4B0254025D02670271027A0284028E029802A202AC02B602C102CB02D502E002
          EB02F50300030B03160321032D03380343034F035A03660372037E038A039603
          A203AE03BA03C703D303E003EC03F9040604130420042D043B04480455046304
          71047E048C049A04A804B604C404D304E104F004FE050D051C052B053A054905
          58056705770586059605A605B505C505D505E505F60606061606270637064806
          59066A067B068C069D06AF06C006D106E306F507070719072B073D074F076107
          740786079907AC07BF07D207E507F8080B081F08320846085A086E0882089608
          AA08BE08D208E708FB09100925093A094F09640979098F09A409BA09CF09E509
          FB0A110A270A3D0A540A6A0A810A980AAE0AC50ADC0AF30B0B0B220B390B510B
          690B800B980BB00BC80BE10BF90C120C2A0C430C5C0C750C8E0CA70CC00CD90C
          F30D0D0D260D400D5A0D740D8E0DA90DC30DDE0DF80E130E2E0E490E640E7F0E
          9B0EB60ED20EEE0F090F250F410F5E0F7A0F960FB30FCF0FEC10091026104310
          61107E109B10B910D710F511131131114F116D118C11AA11C911E81207122612
          451264128412A312C312E31303132313431363138313A413C513E51406142714
          49146A148B14AD14CE14F01512153415561578159B15BD15E016031626164916
          6C168F16B216D616FA171D17411765178917AE17D217F7181B18401865188A18
          AF18D518FA19201945196B199119B719DD1A041A2A1A511A771A9E1AC51AEC1B
          141B3B1B631B8A1BB21BDA1C021C2A1C521C7B1CA31CCC1CF51D1E1D471D701D
          991DC31DEC1E161E401E6A1E941EBE1EE91F131F3E1F691F941FBF1FEA201520
          41206C209820C420F0211C2148217521A121CE21FB22272255228222AF22DD23
          0A23382366239423C223F0241F244D247C24AB24DA250925382568259725C725
          F726272657268726B726E827182749277A27AB27DC280D283F287128A228D429
          062938296B299D29D02A022A352A682A9B2ACF2B022B362B692B9D2BD12C052C
          392C6E2CA22CD72D0C2D412D762DAB2DE12E162E4C2E822EB72EEE2F242F5A2F
          912FC72FFE3035306C30A430DB3112314A318231BA31F2322A3263329B32D433
          0D3346337F33B833F1342B3465349E34D83513354D358735C235FD3637367236
          AE36E937243760379C37D738143850388C38C839053942397F39BC39F93A363A
          743AB23AEF3B2D3B6B3BAA3BE83C273C653CA43CE33D223D613DA13DE03E203E
          603EA03EE03F213F613FA23FE24023406440A640E74129416A41AC41EE423042
          7242B542F7433A437D43C044034447448A44CE45124555459A45DE4622466746
          AB46F04735477B47C04805484B489148D7491D496349A949F04A374A7D4AC44B
          0C4B534B9A4BE24C2A4C724CBA4D024D4A4D934DDC4E254E6E4EB74F004F494F
          934FDD5027507150BB51065150519B51E65231527C52C75313535F53AA53F654
          42548F54DB5528557555C2560F565C56A956F75744579257E0582F587D58CB59
          1A596959B85A075A565AA65AF55B455B955BE55C355C865CD65D275D785DC95E
          1A5E6C5EBD5F0F5F615FB36005605760AA60FC614F61A261F56249629C62F063
          43639763EB6440649464E9653D659265E7663D669266E8673D679367E9683F68
          9668EC6943699A69F16A486A9F6AF76B4F6BA76BFF6C576CAF6D086D606DB96E
          126E6B6EC46F1E6F786FD1702B708670E0713A719571F0724B72A67301735D73
          B87414747074CC7528758575E1763E769B76F8775677B37811786E78CC792A79
          8979E77A467AA57B047B637BC27C217C817CE17D417DA17E017E627EC27F237F
          847FE5804780A8810A816B81CD8230829282F4835783BA841D848084E3854785
          AB860E867286D7873B879F8804886988CE8933899989FE8A648ACA8B308B968B
          FC8C638CCA8D318D988DFF8E668ECE8F368F9E9006906E90D6913F91A8921192
          7A92E3934D93B69420948A94F4955F95C99634969F970A977597E0984C98B899
          24999099FC9A689AD59B429BAF9C1C9C899CF79D649DD29E409EAE9F1D9F8B9F
          FAA069A0D8A147A1B6A226A296A306A376A3E6A456A4C7A538A5A9A61AA68BA6
          FDA76EA7E0A852A8C4A937A9A9AA1CAA8FAB02AB75ABE9AC5CACD0AD44ADB8AE
          2DAEA1AF16AF8BB000B075B0EAB160B1D6B24BB2C2B338B3AEB425B49CB513B5
          8AB601B679B6F0B768B7E0B859B8D1B94AB9C2BA3BBAB5BB2EBBA7BC21BC9BBD
          15BD8FBE0ABE84BEFFBF7ABFF5C070C0ECC167C1E3C25FC2DBC358C3D4C451C4
          CEC54BC5C8C646C6C3C741C7BFC83DC8BCC93AC9B9CA38CAB7CB36CBB6CC35CC
          B5CD35CDB5CE36CEB6CF37CFB8D039D0BAD13CD1BED23FD2C1D344D3C6D449D4
          CBD54ED5D1D655D6D8D75CD7E0D864D8E8D96CD9F1DA76DAFBDB80DC05DC8ADD
          10DD96DE1CDEA2DF29DFAFE036E0BDE144E1CCE253E2DBE363E3EBE473E4FCE5
          84E60DE696E71FE7A9E832E8BCE946E9D0EA5BEAE5EB70EBFBEC86ED11ED9CEE
          28EEB4EF40EFCCF058F0E5F172F1FFF28CF319F3A7F434F4C2F550F5DEF66DF6
          FBF78AF819F8A8F938F9C7FA57FAE7FB77FC07FC98FD29FDBAFE4BFEDCFF6DFF
          FFFFEE000E41646F626500640000000001FFDB00840006040404050406050506
          09060506090B080606080B0C0A0A0B0A0A0C100C0C0C0C0C0C100C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010707070D0C0D181010
          18140E0E0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080096008C
          03011100021101031101FFDD00040012FFC401A2000000070101010101000000
          0000000000040503020601000708090A0B010002020301010101010000000000
          0000010002030405060708090A0B100002010303020402060703040206027301
          0203110400052112314151061361227181143291A10715B14223C152D1E13316
          62F0247282F12543345392A2B26373C235442793A3B33617546474C3D2E20826
          83090A181984944546A4B456D355281AF2E3F3C4D4E4F465758595A5B5C5D5E5
          F566768696A6B6C6D6E6F637475767778797A7B7C7D7E7F738485868788898A8
          B8C8D8E8F82939495969798999A9B9C9D9E9F92A3A4A5A6A7A8A9AAABACADAEA
          FA110002020102030505040506040803036D0100021103042112314105511361
          220671819132A1B1F014C1D1E1234215526272F1332434438216925325A263B2
          C20773D235E2448317549308090A18192636451A2764745537F2A3B3C32829D3
          E3F38494A4B4C4D4E4F465758595A5B5C5D5E5F5465666768696A6B6C6D6E6F6
          475767778797A7B7C7D7E7F738485868788898A8B8C8D8E8F839495969798999
          A9B9C9D9E9F92A3A4A5A6A7A8A9AAABACADAEAFAFFDA000C0301000211031100
          3F00EE5656F626CE02D6F13318D0B128A493C475DB2C6A56FAB69FFF002CD0FF
          00C8B5FE98AAD58F48695E258ED5E68BFBC897D2675DE9F128F886131901646C
          8121C977D5B4FF00F96687FE45AFF4C0977D5B4FFF0096687FE45AFF004C55DF
          56D3FF00E59A1FF916BFD31577D5B4FF00F96687FE45AFF4C55DF56D3FFE59A1
          FF00916BFD31577D5B4FFF0096687FE45AFF004C55DF56D3FF00E59A1FF916BF
          D31577D5B4FF00F96687FE45AFF4C554A38A19A4912DF4A1388DFD22EA2D9417
          E0B250091D18FC2E3F670D79A2D5BF465D7FD585BFE9CFFEAAE0DBBD3BF7285C
          471DB00D73A47A49CE38D988B56E2656089C8248CDF68FF2E103CD04D7453D42
          F3CBFA744B2DF2DBC11B1E2ACC8BB9EBD86449037292692EFF00167917FE5A2D
          3FE45FFCDB90F161FCE8FCD8F891EF0E1E6BF231D85C5AFF00C8BFF9B71F161D
          F1F9AF1C7BC22F9699FA43D6E10FD53EA9EAD78AF0A72AF3E94FB3DF2C64FF00
          FFD0E99AAF9B86917DA369A2DC4C35058C348650852ACB1ECBC5B9F5F15CDAE9
          3B3CE6C53C975E17979713ADD4EB462C90855F88C4AFBCF5A9DE68F2CB35E8B6
          68AEC468F64CF0120C4E78B9E4DCB75CDF60EC9C70CA235C7C58F8FD7EAFE28B
          A1D4F69E69E2247A0C72707A7F9BBA73E5DD62C17CD9ABB49245132C6C669DD9
          53AC91FDA734EFE3983AFC32FCA63A1D7FE29C9ECF246B329276AFF896691DD2
          491ACB1BAC9138AA488C195878822A0E73C41068BD102BBD7F7C0AEF5FDF1577
          AFEF8ABBD7F7C55DEBFBE2AEF5FDF1577AFEF8AA3B4221ECEFFD44F5226BC3C9
          4024922DE1A508FB3FEBFECE48F451D55849A8AB8559DBD11D19949982FF0028
          3F65BC048C3963B2EEA1AE844D0888A331A0B9B5670D5E45FEB11D58B1FB75F1
          C63CD12E5F279EF9B34D9F52F305A5BEA17861D1EE832441991624912191D8B0
          346E6D4F84F2E3C735DDAB1BD3CABCBEF69D546F19081FF956BE53FF00ABBC1F
          F2357FAE71DC3374FE00EF69BF2EBCAB0A3CCBAB42CD1AB3AA891772A09F1C9E
          3848C80F3650C02C6E9DFD6BFE756F5EBFF4A4AFFC91AE77FD5DEBFFD1E94BAF
          E97455781A6787F7624FAAB4BC590F13C1F83528C3F64E5D1C92882012016930
          07721DFA7745A53EA1F09352BF503427C48F4E95F7C9F8F92EF8A5FE9A48F0A3
          DC3E4D36B9A2B860F625C3FF0079CAC09E5DFE2AC7F17FB2C0334C57AA5B7F48
          AF871EE0BD7CC5A7222A4704F1C6A28B1A5ACA8A0780554007D1909489364EEC
          80A77F892CBF92E7FE91E6FF009A7025DFE24B2FE4B9FF00A479BFE69C55DFE2
          4B2FE4B9FF00A479BFE69C55DFE24B2FE4B9FF00A479BFE69C55DFE24B2FE4B9
          FF00A479BFE69C55DFE24B2FE4B9FF00A479BFE69C55DFE24B2FE4B9FF00A479
          BFE69C55464D634691CBC96B2BB9EACD692127B75298448F7B1311DCB7F49E85
          FF002C4FFF0048727FCD18F11EF5E01DCDAEABA1AB065B390329AA916920208E
          847C18F11EF5E11DCEBCD5B44BD8843796925CC408611CD69248BC86C0D1908A
          EF819520F87933FEACB1FF00DC3CFF00D53C6D14EF4FC99FF5658FFEE1E7FEA9
          E36B48DFD39A6579F193D1A7D5BD1F45F972E3CF8FA7C795387F938A5FFFD2E9
          9A0198E9C2389CA3497B72B50481532D056997C5A8B215D26F388E57AC1A9B80
          0915F9F218764537FA26EBFE5B5FEE3FF3563B2D3BF44DD7FCB6BFDC7FE6AC76
          5A77E89BAFF96D7FB8FF00CD58ECB4EFD1375FF2DAFF0071FF009AB1D969DFA2
          6EBFE5B5FEE3FF003563B2D3BF44DD7FCB6BFDC7FE6AC765A77E89BAFF0096D7
          FB8FFCD58ECB4EFD1375FF002DAFF71FF9AB1D969DFA26EBFE5B5FEE3FF3563B
          2D3BF44DD7FCB6BFDC7FE6AC765A77E89BAFF96D7FB8FF00CD58ECB4EFD1375F
          F2DAFF0071FF009AB1D969DFA26EBFE5B5FEE3FF003563B2D3BF44DD7FCB6BFD
          C7FE6AC765A42DFDADEDA0593EB2CF19217AB035353D2A7C30ECA58C7FD351FF
          006F6FFB15CA993FFFD3E9DE5BFF0079A1FF00B685C7FC9FCBE2D4599E15762A
          EC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC552ED77FDE48FFE32
          0FF88B61082C33FE9A8FFB7B7FD8AE54C9FFD4E9DE5BFF0079A1FF00B685C7FC
          9FCBE2D4599E15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AE
          C552ED77FDE48FFE320FF88B61082C33FE9A8FFB7B7FD8AE54C9FFD5E9DE5BFF
          0079A1FF00B685C7FC9FCBE2D4599E15762AEC55D8ABB15762AEC55D8ABB1576
          2AEC55D8ABB15762AEC552ED77FDE48FFE320FF88B61082C33FE9A8FFB7B7FD8
          AE54C9FFD6E9DE5BFF0079A1FF00B685C7FC9FCBE2D4599E15762AEC55D8ABB1
          5762AEC55D8ABB15762AEC55D8ABB15762AEC552ED77FDE48FFE320FF88B6108
          2C33FE9A8FFB7B7FD8AE54C9FFD7E9DE5BFF0079A1FF00B685C7FC9FCBE2D459
          9E15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC552ED77FD
          E48FFE320FF88B61082C33FE9A8FFB7B7FD8AE54C9FFD0E9DE5BFF0079A1FF00
          B685C7FC9FCBE2D4599E15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8AB
          B15762AEC552ED77FDE48FFE320FF88B61082C33FE9A8FFB7B7FD8AE54C9FFD1
          E9DE5BFF0079A1FF00B685C7FC9FCBE2D4599E15762AEC55D8ABB15762AEC55D
          8ABB15762AEC55D8ABB15762AEC552ED77FDE48FFE320FF88B61082C33FE9A8F
          FB7B7FD8AE54C9FFD2E9DE5BFF0079A1FF00B685C7FC9FCBE2D4599E15762AEC
          55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC552ED77FDE48FFE320F
          F88B61082C33FE9A8FFB7B7FD8AE54C9FFD3E9DE5BFF0079A1FF00B685C7FC9F
          CBE2D4599E15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC5
          52ED77FDE48FFE320FF88B61082C33FE9A8FFB7B7FD8AE54C9FFD4E9DE5BFF00
          79A1FF00B685C7FC9FCBE2D4599E15762AEC55D8ABB15762AEC55D8ABB15762A
          EC55D8ABB15762AEC552ED77FDE48FFE320FF88B61082C33FE9A8FFB7B7FD8AE
          54C9FFD5E9DE5BFF0079A1FF00B685C7FC9FCBE2D4599E15762AEC55D8ABB157
          62AEC55D8ABB15762AEC55D8ABB15762AEC552ED77FDE48FFE320FF88B61082C
          33FE9A8FFB7B7FD8AE54C9FFD6E9DE5BFF0079A1FF00B685C7FC9FCBE2D4599E
          15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC552ED77FDE4
          8FFE320FF88B61082C33FE9A8FFB7B7FD8AE54C9FFD7E9DE5BFF0079A1FF00B6
          85C7FC9FCBE2D4599E15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB1
          5762AEC552ED77FDE48FFE320FF88B61082C33FE9A8FFB7B7FD8AE54C9FFD0E9
          DE5BFF0079A1FF00B685C7FC9FCBE2D4599E15762AEC55D8ABB15762AEC55D8A
          BB15762AEC55D8ABB15762AEC552ED77FDE48FFE320FF88B61082C33FE9A8FFB
          7B7FD8AE54C9FFD1E8BA759EA6236FA86A36C61371318F94129612190960092B
          52ADB6CB968B6B4CBEA9E72FFAB845FF002227FF009AF1DD5DF54F397FD5C22F
          F9113FFCD78EEAEFAA79CBFEAE117FC889FF00E6BC77577D53CE5FF5708BFE44
          4FFF0035E3BABBEA9E72FF00AB845FF2227FF9AF1DD5DF54F397FD5C22FF0091
          13FF00CD78EEAEFAA79CBFEAE117FC889FFE6BC77577D53CE5FF005708BFE444
          FF00F35E3BABBEA9E72FFAB845FF002227FF009AF1DD5DF54F397FD5C22FF911
          3FFCD78EEAEFAA79CBFEAE117FC889FF00E6BC77577D53CE5FF5708BFE444FFF
          0035E3BABBEA9E72FF00AB845FF2227FF9AF1DD5DF54F397FD5C22FF009113FF
          00CD78EEAEFAA79CBFEAE117FC889FFE6BC775529ED3CD3C07D6350B7E15DBD4
          826A57E97C7754AFEA53FD7FFE3A56FF00A4BEB9CABE8CBC7D5FAB71E1C7F9BD
          3F8F973FB5FE56057FFFD9}
      end
      object lbl1: TLabel
        Left = 9
        Top = 8
        Width = 273
        Height = 56
        AutoSize = False
        Caption = 
          #51088#46041#49341#51077#51004#47196'  '#44256#44061#47749' '#46321#51012' '#45347#50612' '#44600#50612#51648#45716' '#44221#50864' '#13#10'90 Bytes'#50473' '#45208#45572#50612' 2'#44148#51060#49345#51004#47196' '#51204#49569#46121#45768#45796'.'#13#10#8251' '#51204#49569' '#49692#49436 +
          #45716' '#44256#44061' '#51204#54868#48264#54840' '#49692#49436#51077#45768#45796'.'#13#10#8251' '#50724#54980' 8'#49884' 40'#48516#44620#51648' '#51204#49569' '#44032#45733#54633#45768#45796'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 14
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object mm_message: TcxMemo
        Tag = 20
        Left = 26
        Top = 125
        ImeMode = imSHanguel
        ParentFont = False
        Properties.ImeMode = imSHanguel
        Properties.MaxLength = 90
        Style.BorderStyle = ebsNone
        Style.Color = 15589851
        Style.Edges = []
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548#52404
        Style.Font.Style = []
        Style.TransparentBorder = False
        Style.IsFontAssigned = True
        TabOrder = 0
        OnKeyDown = mm_messageKeyDown
        OnKeyPress = mm_messageKeyPress
        OnKeyUp = mm_messageKeyUp
        OnMouseUp = mm_messageMouseUp
        Height = 92
        Width = 100
      end
      object cxLabel17: TcxLabel
        Left = 69
        Top = 221
        AutoSize = False
        Caption = '/ 90 Byte'
        Transparent = True
        Height = 17
        Width = 58
      end
      object btnInsertChar: TcxButton
        Tag = 6
        Left = 6
        Top = 244
        Width = 139
        Height = 25
        Cursor = crHandPoint
        Caption = #53945#49688#47928#51088'(F5)'
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        TabOrder = 1
        OnClick = btnInsertCharClick
      end
      object cxLabel16: TcxLabel
        Left = 47
        Top = 221
        Caption = '00'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 63
        AnchorY = 229
      end
      object grp2: TcxGroupBox
        Left = 151
        Top = 92
        Caption = #51088#46041#49341#51077#54616#44592
        TabOrder = 4
        Height = 177
        Width = 132
        object lbl10: TLabel
          Left = 5
          Top = 151
          Width = 120
          Height = 13
          AutoSize = False
          Caption = #51060' '#51077#47141#46121#45768#45796'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl7: TLabel
          Left = 5
          Top = 103
          Width = 120
          Height = 13
          AutoSize = False
          Caption = #44256#44061#47749', '#51648#49324#47749' '#45347#44592#47484
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl8: TLabel
          Left = 5
          Top = 119
          Width = 120
          Height = 13
          AutoSize = False
          Caption = #52404#53356#54616#49884#47732' '#51204#49569#49884
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl9: TLabel
          Left = 5
          Top = 135
          Width = 120
          Height = 13
          AutoSize = False
          Caption = #44536#50948#52824#50640' '#44256#44061', '#51648#49324#47749
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object chkBrAdd: TcxCheckBox
          Left = 7
          Top = 38
          Caption = #51648#49324#47749' '#45347#44592
          TabOrder = 0
          Transparent = True
          OnClick = chkBrAddClick
        end
        object chkMileAdd: TcxCheckBox
          Left = 7
          Top = 78
          Caption = #44256#44061#47560#51068#47532#51648#45347#44592
          TabOrder = 1
          Transparent = True
          OnClick = chkMileAddClick
        end
        object chkNameAdd: TcxCheckBox
          Left = 7
          Top = 18
          Caption = #44256#44061#47749' '#45347#44592
          TabOrder = 2
          Transparent = True
          OnClick = chkNameAddClick
        end
        object chkTelAdd: TcxCheckBox
          Left = 7
          Top = 58
          Caption = #45824#54364#48264#54840' '#45347#44592
          TabOrder = 3
          Transparent = True
          OnClick = chkTelAddClick
        end
      end
      object grp1: TcxGroupBox
        Left = 6
        Top = 274
        TabOrder = 5
        Height = 170
        Width = 277
        object Label2: TLabel
          Left = 126
          Top = 72
          Width = 41
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #48516' '#47560#45796
        end
        object Label3: TLabel
          Left = 206
          Top = 72
          Width = 41
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #44148' '#51204#49569
        end
        object lbl4: TLabel
          Left = 132
          Top = 123
          Width = 20
          Height = 12
          Caption = '-->'
        end
        object btnPreView: TcxButton
          Left = 22
          Top = 101
          Width = 103
          Height = 53
          Cursor = crHandPoint
          Caption = #48120#47532#48372#44592'('#51312#54633')'
          Colors.Normal = 12189690
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnClick = btnPreViewClick
        end
        object btnSendMsg: TcxButton
          Left = 162
          Top = 101
          Width = 83
          Height = 53
          Cursor = crHandPoint
          Caption = 'SMS '#51204#49569
          Colors.Normal = 12189690
          Enabled = False
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          TabOrder = 1
          OnClick = btnSendMsgClick
        end
        object chkBalsin: TcxCheckBox
          Left = 197
          Top = 16
          Caption = #48264#54840#49440#53469
          TabOrder = 2
          Transparent = True
          OnClick = chkBalsinClick
        end
        object chkSplit: TcxCheckBox
          Left = 18
          Top = 67
          Caption = #48516#54624#51204#49569
          TabOrder = 3
          Transparent = True
          OnClick = chkSplitClick
        end
        object cxLabel2: TcxLabel
          Left = 12
          Top = 14
          AutoSize = False
          Caption = #48372#45236#45716#51060
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = clWhite
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 23
          Width = 60
          AnchorX = 42
          AnchorY = 26
        end
        object dtp_date: TcxDateEdit
          Left = 69
          Top = 42
          TabOrder = 5
          Width = 87
        end
        object ed_send: TcxTextEdit
          Left = 69
          Top = 14
          AutoSize = False
          TabOrder = 6
          Text = #51088#46041#49341#51077
          OnKeyPress = ed_sendKeyPress
          Height = 23
          Width = 126
        end
        object edtSplitCnt: TcxTextEdit
          Left = 169
          Top = 67
          Enabled = False
          TabOrder = 7
          OnKeyPress = edtSplitMinKeyPress
          Width = 36
        end
        object edtSplitMin: TcxTextEdit
          Left = 89
          Top = 67
          Enabled = False
          Properties.MaxLength = 2
          TabOrder = 8
          OnKeyPress = edtSplitMinKeyPress
          Width = 36
        end
        object rbchk_re: TcxCheckBox
          Left = 18
          Top = 43
          Caption = #50696#50557
          TabOrder = 9
          Transparent = True
          OnClick = rbchk_reClick
        end
        object se_time1: TSpinEdit
          Left = 157
          Top = 43
          Width = 43
          Height = 21
          MaxValue = 23
          MinValue = 0
          TabOrder = 10
          Value = 0
        end
        object se_time2: TSpinEdit
          Left = 200
          Top = 43
          Width = 42
          Height = 21
          MaxValue = 59
          MinValue = 0
          TabOrder = 11
          Value = 0
        end
        object cbKeynumber01: TcxComboBox
          Left = 69
          Top = 14
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404)
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 12
          Text = #51204#52404
          Visible = False
          Height = 23
          Width = 126
        end
      end
      object cxCBAdA: TcxCheckBox
        Left = 6
        Top = 70
        Caption = '['#44305#44256#54364#44592#51032#47924#49324#54637' '#51201#50857']'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = [fsBold]
        Style.TextColor = clRed
        Style.IsFontAssigned = True
        TabOrder = 6
        Transparent = True
        OnClick = cxCBAdAClick
      end
      object cxBtnHelp: TcxButton
        Left = 182
        Top = 69
        Width = 101
        Height = 21
        Cursor = crHandPoint
        Caption = #49464#48512#45236#50669#48372#44592
        Colors.Normal = 12189690
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        TabOrder = 7
        OnClick = cxBtnHelpClick
      end
    end
    object PnlHelp: TcxGroupBox
      Left = 359
      Top = 212
      Alignment = alTopCenter
      Caption = '*** '#44305#44256' '#54364#44592' '#51032#47924' '#49324#54637' '#50504#45236' ***'
      TabOrder = 4
      OnMouseDown = PnlHelpMouseDown
      DesignSize = (
        411
        235)
      Height = 242
      Width = 411
      object Label1: TLabel
        Left = 3
        Top = 14
        Width = 405
        Height = 218
        Align = alClient
        AutoSize = False
        Caption = 
          #13#10' 1. '#52376#51020' '#48512#48516#50640' ('#44305#44256') '#54364#44592'. '#48152#46300#49884' '#46181#44540' '#44292#54840' '#39'('#39#47484' '#49324#50857#54644#50556' '#54633#45768#45796'.'#13#13#10' 2. '#54924#49324#47749#54364#49884':  ex,' +
          ' '#54861#44600#46041' '#45824#47532', 1588-XXXX'#45824#47532#13#13#10' 3. '#50672#46973#52376' '#54364#44592': '#54924#49888#48264#54840#44032' '#50672#46973#52376#51064' '#44221#50864' '#49373#47029' '#44032#45733#13#13#10' 4. '#47924#47308#49688 +
          #49888#44144#48512' '#54364#44592': '#45149#48512#48516#50640' '#54364#49884#54616#44256' '#39#47924#47308#39#46972#45716' '#45800#50612#50752' '#39#44144#48512#39#46972#45716' '#13#10'  '#45800#50612#44032' '#44845' '#46308#50612#44032#50556' '#54633#45768#45796'.  080'#48264#54840#46020' ' +
          #45347#50612' '#51452#49464#50836'.'#13#10#13#10'         '#9679' '#50732#48148#47480' '#50696#49884' '#9679#13#10#13#10'  ('#44305#44256') 1588-XXXX '#45824#47532#50868#51204#13#10'  '#50504#51204#54616#44172' ' +
          #47784#49884#44192#49845#45768#45796'. '#13#10'  '#47924#47308#44144#48512':080XXXXXXXX'#13#13#10#13#13#10
        Color = 15269887
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = 14
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
        ExplicitLeft = 9
        ExplicitTop = 18
        ExplicitWidth = 273
        ExplicitHeight = 217
      end
      object cxButton1: TcxButton
        Left = 388
        Top = 14
        Width = 20
        Height = 20
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Cancel = True
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000001511
          93B91C17C2F41B17C3F41C16C2F41A14BFF41914BFF41913BFF41A14BFF41A13
          BEF41A13BEF41B14C1F41812BDF41B14C1F4140F93B90000000019199BB92E2D
          FBFF2423EFFF0B06B6FF201DE5FF2B29FAFF2824F4FF2824F4FF2723F4FF2722
          F4FF2925FCFF130DCEFF0A05B0FF211AEFFF2921FBFF161498B92322D4FE272B
          EFFF1312B1FF6A67BFFF1B1AB0FF1F20E2FF2D2EF4FF282AEDFF2929EEFF2C2D
          F4FF0E0DCAFF3F3CB5FF9090CEFF1210B1FF2321EEFF1F1BD0FE2121C9F4100E
          BBFF918ED3FFFFFFFFFFADAAE0FF100FB2FF1C20E0FF3036F4FF2F35F4FF0D0D
          CEFF3835B8FFECECF8FFFFFFFFFF6A67C6FF0F0DC0FF201ECAF42428D0F41D24
          D7FF433DC3FFEBEAF8FFFFFFFFFFAFADE3FF1D1BB9FF1D24DEFF171CD7FF3934
          BEFFEEEDF9FFFFFFFFFFACAAE4FF1F1BBDFF252CE7FF2221CDF4252AD1F4384F
          FAFF161ED4FF3A32C5FFEDEDF9FFFFFFFFFFD0CEF0FF201FC1FF1E1DC0FFE2E2
          F6FFFFFFFFFFB3B1E8FF1511BFFF232DE5FF3241F7FF2324CDF42228D2F4364F
          F3FF3950F3FF151DD8FF3E35CCFFDEDBF6FFFFFFFFFFCFCDF2FFCFCEF3FFFFFF
          FFFFD4D3F3FF2321C7FF202CE3FF3447F4FF3144F2FF2023D0F4454BD9F43B55
          F3FF334BEFFF3852F4FF1F2ADFFF211DCBFFCDCCF4FFFFFFFFFFFFFFFFFFCDCB
          F4FF2120CDFF2232E3FF354DF4FF2F44EEFF364DF2FF4247D7F46366DFF46E82
          F7FF556AF2FF4862F3FF2B3BE8FF221FD2FFCDCBF3FFFFFFFFFFFFFFFFFFCDCB
          F4FF201DD2FF242FE4FF445DF3FF5366F2FF6A7DF6FF6064DDF46064E1F47388
          F7FF788CF6FF6472F1FF514BE0FFD5D2F7FFFFFFFFFFDCDAF8FFDCDAF8FFFFFF
          FFFFDCDAF8FF655EE2FF575EEAFF7588F6FF6F83F6FF5D62DFF46166E3F47891
          F7FF6779F2FF5550E6FFCAC6F6FFFFFFFFFFE9E8FCFF5851E6FF5954E6FFE0DE
          FAFFFFFFFFFFF6F5FDFF6F69E9FF575FECFF748CF7FF5F64E2F4636AE4F46F82
          F3FF5E59EBFFC2BFF7FFFFFFFFFFF2F1FDFF6E66ECFF5D68EFFF6472F1FF5E57
          EBFFC5C1F8FFFFFFFFFFF1F0FDFF7670ECFF616BF1FF6268E4F4646CE6F45A5C
          EFFF928BF3FFFFFFFFFFF1F0FEFF6F68F0FF5B64EFFF7A92F6FF7A91F6FF6775
          F2FF5551EDFFC3BFF9FFFFFFFFFFAFA8F7FF5857F0FF6165E4F46B74F1FE7A91
          F6FF5A57F0FFAEA8F7FF7771F3FF5F68F2FF7D96F6FF798EF5FF788EF5FF7C94
          F6FF6D7FF4FF5F5BF0FF948CF5FF5956F1FF758BF6FF6972EFFE4E54B0B985A1
          F7FF7C94F6FF5B5BF3FF6975F5FF84A1F8FF8099F7FF7F98F7FF7F98F7FF7E97
          F6FF819CF6FF7588F5FF5C5FF3FF7990F5FF819DF7FF4C53AEB9000000005055
          B1B96970E9F4666CE9F46971E9F4676EE9F4676EE9F4666EE9F4666EE9F4676E
          E9F4666DE9F4676FE9F4676FE9F4676EE9F44E53B0B900000000}
        TabOrder = 0
        OnClick = cxButton1Click
      end
    end
  end
  object pnlSmsStatus: TPanel
    Left = 299
    Top = 626
    Width = 389
    Height = 73
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = #51221#53685#48512#51648#51221' '#49688#49888#44144#48512' '#54028#51068' '#48143' PC'#45236' '#49688#49888#44144#48512' '#54028#51068' '#48708#44368' '#51228#44144' '#51473
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #44404#47548
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    Visible = False
    object pb1: TAdvProgressBar
      Left = 0
      Top = 49
      Width = 385
      Height = 20
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      Level0ColorTo = 14811105
      Level1ColorTo = 13303807
      Level2Color = 5483007
      Level2ColorTo = 11064319
      Level3ColorTo = 13290239
      Level1Perc = 70
      Level2Perc = 90
      Position = 0
      ShowBorder = True
      Version = '1.2.1.1'
    end
  end
  object tmrFileSms: TTimer
    Interval = 400
    Left = 328
    Top = 60
  end
  object dlgOpen: TOpenDialog
    Filter = #50641#49472'|*.xls|'#50641#49472'(2007'#51060#49345')|*.xlsx'
    Left = 464
    Top = 60
  end
  object pm1: TPopupMenu
    AutoHotkeys = maManual
    Left = 510
    Top = 60
    object mni1: TMenuItem
      Caption = #50724#45720
    end
    object mni2: TMenuItem
      Caption = #50612#51228
    end
    object mni3: TMenuItem
      Caption = #52572#44540#51068#51452#51068
    end
    object mni4: TMenuItem
      Caption = #52572#44540#54620#45804
    end
    object mni5: TMenuItem
      Caption = '1'#51068'~'#47568#51068
    end
  end
  object ilDown: TImageList
    Height = 12
    Width = 12
    Left = 555
    Top = 60
    Bitmap = {
      494C0101050009009C000C000C00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000300000001800000001002000000000000012
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DBD5CF006048300060504000C9C0B7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007058
      4000E4DFDB00D2C8C300E1DEDB00E4DEDB006048300000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007058
      4000000000007050400060484000000000006048300000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008068
      5000000000007060500070504000000000006050400000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009078
      6000000000008070600080605000000000007058400000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A080
      7000000000009078700090706000000000008068500000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A080
      7000000000009080700090706000000000008070600000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DBD2C900A088700090807000D5CFC90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F4F100A0503000A0502000F3E9E3000000000000000000000000000000
      000000000000000000000000000000000000F2F4FB00657BC8002F4FB100F0F2
      F9000000000000000000000000000000000000000000C0908000C0908000C080
      8000B0808000B0787000B0787000B0707000B0707000A0706000A06060000000
      00000000000080A8C00040709000306880003068800030608000305870003058
      700030587000305060003048600000000000000000000000000000000000F9F4
      F100B0603000E0805000D0785000A0502000F3E9E30000000000000000000000
      000000000000000000000000000000000000EDF0F9006080F0002048D000D2D6
      EA000000000000000000000000000000000000000000C0909000FFF8D000FFF0
      C000FFE8B000FFD8A000FFC09000F0B08000F0A87000E0906000A06860000000
      00000000000080A8C000A0E8FF0080E0F00080D8F00070D0F00070C8F00070C8
      F00070C8F00060C8F00030506000000000000000000000000000F9F4F100B058
      3000F0A07000F0A07000E0805000D0704000B0583000F9F4F100000000000000
      00000000000000000000000000000000000000000000C3CCE700A4B2E3000000
      00000000000000000000000000000000000000000000D0989000D0908000F0F0
      E000FFFFF000FFF8E000FFF0D000FFE8B000F0D0A000C0806000A07070000000
      00000000000080A8C000B0F8FF0090F0FF0090F0FF0090F0FF0090F0FF0090F0
      FF0090F0FF0080E0FF0030506000000000000000000000000000E9B29C00E5A4
      8A00E0907000FFA88000F0885000B0603000A0502000A0502000000000000000
      000000000000000000000000000000000000000000009DB2EA008F9FDF000000
      00000000000000000000000000000000000000000000D0A09000F0D8B000C0A0
      A000F0F0E000FFF0E000F0E8D000F0D0B000C0787000F0D0B000A07870000000
      00000000000080B0C00090E0F00090F8FF0090F0FF0080E8FF0080E8FF0080E8
      FF0090F0FF0070D8F00040586000000000000000000000000000000000000000
      0000E0906000FFA88000F0906000B05830000000000000000000000000000000
      000000000000000000000000000000000000F3F5FC004970E5002F5CD800DFE4
      F1000000000000000000000000000000000000000000D0A8A000D0989000A0F8
      FF00C0A09000C0989000C0888000B090900070D8FF00B0989000B08080000000
      00000000000090B0C00060B8D00080E8FF0070E0F00050B0E0003090C00070D0
      F00070D8F0004098C00040587000000000000000000000000000000000000000
      0000E0907000FFB09000FF906000A05020000000000000000000000000000000
      0000000000000000000000000000000000009FB3E7003060F0000040FF009FB1
      E7000000000000000000000000000000000000000000D0A8A000C0FFFF00C0FF
      FF00B0F8FF00B0F8FF0090E8FF0080E0FF0070D8FF0070D8FF00A07870000000
      00000000000090C0D00090E8F00060B8E00080E0F000A0F8FF0090F0FF0090E8
      FF0050A8D00080E0F00040607000000000000000000000000000000000000000
      0000E0907000FFB89000FF986000A05020000000000000000000000000000000
      0000000000000000000000000000000000006383E5004B78F0000048FF001F50
      D5000000000000000000000000000000000000000000D0A8A000A0E8FF00A0E8
      FF00A0E8FF0090E0FF0080D8F00070D0F00070C8F00060C8F000B47F87000000
      00000000000090C0D00060C0E00090E0F000A0F8FF00A0F8FF00A0F8FF0090F0
      FF0090E8FF0050A0C00050687000000000000000000000000000000000000000
      0000E0987000FFB89000FF987000A05020000000000000000000000000000000
      0000000000000000000000000000000000005078E0006088FF003060FF000038
      D0000000000000000000000000000000000000000000F6EEED00E0FFFF00E0FF
      FF00F0FFFF00F0FFFF00C0F8FF00A0F0FF0080E8FF0080E0FF00F3EBEA000000
      00000000000090C8D000C0F0FF00C0FFFF00C0F8FF00B0F8FF00B0F8FF00A0F8
      FF0090F0FF0090E8FF0050687000000000000000000000000000000000000000
      0000F0A08000FFC0A000FFB89000A05020000000000000000000000000000000
      0000000000000000000000000000000000007088E00090A8FF006088FF002050
      D000000000000000000000000000000000000000000000000000F6EEED00CBA4
      A400F0FFFF00F0FFFF00E0FFFF00B0F8FF00B47F8700F3EBEA00000000000000
      00000000000090C8D000E0FFFF00E0FFFF00E0FFFF00E0FFFF00E0FFFF00D0FF
      FF00D0FFFF00B0F8FF0050708000000000000000000000000000000000000000
      0000F0A57800E1A57800E19E7800D28769000000000000000000000000000000
      000000000000000000000000000000000000D2D9F000788FE100697FE100DBE2
      F60000000000000000000000000000000000000000000000000000000000F6EE
      ED00C7A49D00C3A5A500C0989000C0989000EFE5E30000000000000000000000
      00000000000090C8D00090C8D00090C8D00090C0D00090C0D00090B8C00080B0
      C00080B0C00080A8C00080A8C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000030000000180000000100010000000000C00000000000000000000000
      000000000000000000000000FFFFFF00FFF0000000000000FFF0000000000000
      F0F0000000000000E070000000000000E970000000000000E970000000000000
      E970000000000000E970000000000000E970000000000000F870000000000000
      FFF0000000000000FFF0000000000000FFFFFFFFFFFF0000F0FF0F8018010000
      E07F0F8018010000C03F9F8018010000C03F9F8018010000F0FF0F8018010000
      F0FF0F8018010000F0FF0F8018010000F0FF0F8018010000F0FF0FC038010000
      F0FF0FE078010000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object dlgSave: TSaveDialog
    Filter = #50641#49472#54028#51068'(*.xls)|*.xls'
    Left = 601
    Top = 60
  end
  object pm2: TPopupMenu
    AutoHotkeys = maManual
    Left = 419
    Top = 60
    object mni6: TMenuItem
      Caption = #50724#45720
    end
    object mni7: TMenuItem
      Caption = #50612#51228
    end
    object mni8: TMenuItem
      Caption = #52572#44540#51068#51452#51068
    end
    object mni9: TMenuItem
      Caption = #52572#44540#54620#45804
    end
    object mni10: TMenuItem
      Caption = '1'#51068'~'#47568#51068
    end
  end
  object pm3: TPopupMenu
    AutoHotkeys = maManual
    Left = 646
    Top = 60
    object mniN1: TMenuItem
      Caption = #50641' '#49472' '#45796' '#50868
    end
  end
  object itcSMS: TIdTCPClient
    ConnectTimeout = 0
    IPVersion = Id_IPv4
    Port = 5114
    ReadTimeout = 0
    Left = 373
    Top = 60
  end
  object IdEncoderMIME1: TIdEncoderMIME
    FillChar = '='
    Left = 692
    Top = 60
  end
end

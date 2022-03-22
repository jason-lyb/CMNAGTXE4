object Frm_SMSA4: TFrm_SMSA4
  Left = 2719
  Top = 168
  BorderStyle = bsNone
  Caption = 'SMS'
  ClientHeight = 735
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
  PixelsPerInch = 96
  TextHeight = 12
  object PnlMainA4: TPanel
    Left = 0
    Top = 0
    Width = 1121
    Height = 735
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnl14: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1115
      Height = 113
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 113
        Width = 1115
        object lblCntA4: TLabel
          Left = 24
          Top = 94
          Width = 56
          Height = 12
          Caption = #52509'    00 '#44148
        end
        object Shape2: TShape
          Left = 6
          Top = 7
          Width = 267
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape1: TShape
          Left = 6
          Top = 37
          Width = 347
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object btnDateA4: TcxButton
          Tag = 3
          Left = 339
          Top = 37
          Width = 25
          Height = 24
          Cursor = crHandPoint
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000D2905C67D49663BF000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
            0000000000000000000000000000000000000000000000000001000000000000
            00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
            000000000000000000000000000000000000000000000000000D000000000000
            0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
            000000000000000000000000000000000000000000000000001800000000FF80
            0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
            000000000000000000000000000000000000000000000000002200000000C774
            30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
            81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002900000000C774
            30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
            81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002B00000000FF80
            0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
            0000000000000000000000000000000000000000000000000028000000000000
            0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
            0000000000000000000000000000000000000000000000000020000000000000
            00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
            0000000000000000000000000000000000000000000000000017000000000000
            0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
            000000000000000000000000000000000000000000000000000C000000000000
            000000000000000000000000000000000000D2905C67D49663BF000000000000
            0000000000000000000000000000000000000000000000000001000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          OptionsImage.Layout = blGlyphBottom
          PopupMenu = pm2
          TabOrder = 0
          OnMouseDown = btnDateA4MouseDown
        end
        object btnExcelA4: TcxButton
          Left = 463
          Top = 37
          Width = 80
          Height = 24
          Cursor = crHandPoint
          Caption = #50641#49472#45796#50868
          Colors.Default = 16773362
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = btnExcelA4Click
        end
        object btnSearchA4: TcxButton
          Left = 381
          Top = 37
          Width = 80
          Height = 24
          Cursor = crHandPoint
          Caption = #44160'    '#49353
          Colors.Default = 16773362
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = btnSearchA4Click
        end
        object cxLabel14: TcxLabel
          Left = 24
          Top = 71
          Caption = 'SMS '#48156#49569' '#44208#44284' '#45796#50868#47196#46300#45716' '#52572#44540'3'#44060#50900' '#44620#51648#47564' '#44032#45733' '#54633#45768#45796'.'
          Transparent = True
        end
        object cxDtEndA4: TcxDateEdit
          Tag = 3
          Left = 221
          Top = 36
          TabStop = False
          AutoSize = False
          ParentShowHint = False
          PopupMenu = pm2
          Properties.DateButtons = [btnToday]
          Properties.SaveTime = False
          Properties.ShowTime = False
          ShowHint = True
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Height = 26
          Width = 83
        end
        object cxDtStartA4: TcxDateEdit
          Tag = 3
          Left = 91
          Top = 36
          TabStop = False
          AutoSize = False
          EditValue = 39717d
          ParentShowHint = False
          PopupMenu = pm2
          Properties.DateButtons = [btnToday]
          Properties.SaveTime = False
          Properties.ShowTime = False
          ShowHint = True
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          Height = 26
          Width = 83
        end
        object lbl28: TcxLabel
          Left = 174
          Top = 42
          Caption = '09:00 ~ '
          Transparent = True
        end
        object lbl29: TcxLabel
          Left = 303
          Top = 42
          Caption = '09:00'
          Transparent = True
        end
        object lblSosokNameA4: TcxLabel
          Left = 91
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
          Width = 455
          AnchorX = 319
          AnchorY = 19
        end
        object cxGroupBox2: TcxGroupBox
          Left = 550
          Top = 7
          Alignment = alTopCenter
          Caption = #52880#49772#51221#48372
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          Height = 99
          Width = 431
          object lbl34: TLabel
            Left = 187
            Top = 24
            Width = 12
            Height = 12
            Caption = #50896
          end
          object lbl35: TLabel
            Left = 398
            Top = 24
            Width = 12
            Height = 12
            Caption = #50896
          end
          object lbl36: TLabel
            Left = 149
            Top = 46
            Width = 50
            Height = 12
            Caption = #50896' / '#44148#45817
          end
          object lbl37: TLabel
            Left = 149
            Top = 70
            Width = 50
            Height = 12
            Caption = #50896' / '#44148#45817
          end
          object lbl38: TLabel
            Left = 270
            Top = 48
            Width = 157
            Height = 12
            AutoSize = False
            Caption = #44148' ('#51068#48152'SMS'#51204#49569' '#44032#45733#44148#49688')'
          end
          object lbl39: TLabel
            Left = 270
            Top = 72
            Width = 157
            Height = 12
            AutoSize = False
            Caption = #44148' ('#44305#44256'SMS'#51204#49569' '#44032#45733#44148#49688')'
          end
          object edtDayBranchCash: TcxTextEdit
            Left = 295
            Top = 18
            AutoSize = False
            Enabled = False
            Properties.Alignment.Horz = taRightJustify
            TabOrder = 0
            Height = 21
            Width = 99
          end
          object edtDayComCount: TcxTextEdit
            Left = 209
            Top = 66
            AutoSize = False
            Enabled = False
            Properties.Alignment.Horz = taRightJustify
            TabOrder = 1
            Height = 21
            Width = 60
          end
          object edtDayComPrice: TcxTextEdit
            Left = 83
            Top = 66
            AutoSize = False
            Enabled = False
            Properties.Alignment.Horz = taRightJustify
            TabOrder = 2
            Height = 21
            Width = 60
          end
          object edtDayNmlCount: TcxTextEdit
            Left = 209
            Top = 42
            AutoSize = False
            Enabled = False
            Properties.Alignment.Horz = taRightJustify
            TabOrder = 3
            Height = 21
            Width = 60
          end
          object edtDayNmlPrice: TcxTextEdit
            Left = 83
            Top = 42
            AutoSize = False
            Enabled = False
            Properties.Alignment.Horz = taRightJustify
            TabOrder = 4
            Height = 21
            Width = 60
          end
          object edtDaySmsCash: TcxTextEdit
            Left = 83
            Top = 18
            AutoSize = False
            Enabled = False
            Properties.Alignment.Horz = taRightJustify
            TabOrder = 5
            Height = 21
            Width = 99
          end
          object lbl30: TcxLabel
            Left = 6
            Top = 18
            AutoSize = False
            Caption = 'SMS'#52880#49772
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clWhite
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 21
            Width = 80
            AnchorX = 46
            AnchorY = 29
          end
          object lbl31: TcxLabel
            Left = 6
            Top = 42
            AutoSize = False
            Caption = #51068#48152' SMS'
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clWhite
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 21
            Width = 80
            AnchorX = 46
            AnchorY = 53
          end
          object lbl32: TcxLabel
            Left = 6
            Top = 66
            AutoSize = False
            Caption = #44305#44256' SMS'
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clWhite
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 21
            Width = 80
            AnchorX = 46
            AnchorY = 77
          end
          object lbl33: TcxLabel
            Left = 218
            Top = 18
            AutoSize = False
            Caption = #51648#49324#52880#49772
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clWhite
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 21
            Width = 80
            AnchorX = 258
            AnchorY = 29
          end
        end
        object cxLabel3: TcxLabel
          Left = 28
          Top = 11
          Caption = #49548'    '#49549
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 50
          AnchorY = 19
        end
        object cxLabel1: TcxLabel
          Left = 24
          Top = 42
          Caption = #44160#49353#44592#44036
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 50
          AnchorY = 50
        end
      end
    end
    object pnl15: TPanel
      Left = 0
      Top = 119
      Width = 1121
      Height = 616
      Align = alClient
      TabOrder = 1
      object cxGridDayResult: TcxGrid
        Left = 1
        Top = 1
        Width = 1119
        Height = 556
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        PopupMenu = pm3
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxViewDayResult: TcxGridDBTableView
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
          OptionsView.HeaderHeight = 22
          Styles.Selection = Frm_Main.cxStyle11
          OnColumnHeaderClick = cxViewColumnHeaderClick
          object cxColViewDaySchColumn1: TcxGridDBColumn
            DataBinding.FieldName = #45216#51676
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 123
          end
          object cxColViewDaySchColumn2: TcxGridDBColumn
            DataBinding.FieldName = #48516#47448
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 78
          end
          object cxColViewDaySchColumn3: TcxGridDBColumn
            DataBinding.FieldName = #52509#44148#49688
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 117
          end
          object cxColViewDaySchColumn4: TcxGridDBColumn
            DataBinding.FieldName = #49457#44277#44148#49688
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 92
          end
          object cxColViewDaySchColumn5: TcxGridDBColumn
            DataBinding.FieldName = #49892#54056#44148#49688
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 78
          end
          object cxColViewDaySchColumn6: TcxGridDBColumn
            DataBinding.FieldName = #49457#44277#47456'(%)'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taCenter
            Width = 98
          end
          object cxColViewDaySchColumn7: TcxGridDBColumn
            DataBinding.FieldName = #49324#50857#44552#50529'('#50896')'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 116
          end
          object cxViewDayResultColumn1: TcxGridDBColumn
            DataBinding.FieldName = #49892#54056#54872#44553#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taCenter
            Width = 116
          end
          object cxColViewDaySchColumn8: TcxGridDBColumn
            DataBinding.FieldName = #49345#49464#45236#50669
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 128
          end
        end
        object cxLevelDayResult: TcxGridLevel
          GridView = cxViewDayResult
        end
      end
      object pnl16: TPanel
        Left = 1
        Top = 557
        Width = 1119
        Height = 58
        Align = alBottom
        TabOrder = 2
        object cxGridDaySum: TcxGrid
          Left = 1
          Top = 1
          Width = 1117
          Height = 56
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
          object cxViewDaySum: TcxGridDBTableView
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
            OnCellClick = cxViewDaySumCellClick
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
            OptionsView.Header = False
            OptionsView.HeaderHeight = 22
            Styles.Selection = Frm_Main.cxStyle11
            object cxGridDBColumn3: TcxGridDBColumn
              DataBinding.FieldName = #45216#51676
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.CellMerging = True
              Width = 123
            end
            object cxGridDBColumn4: TcxGridDBColumn
              DataBinding.FieldName = #48516#47448
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 78
            end
            object cxGridDBColumn5: TcxGridDBColumn
              DataBinding.FieldName = #52509#44148#49688
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 117
            end
            object cxGridDBColumn6: TcxGridDBColumn
              DataBinding.FieldName = #49457#44277#44148#49688
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 92
            end
            object cxGridDBColumn7: TcxGridDBColumn
              DataBinding.FieldName = #49892#54056#44148#49688
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 78
            end
            object cxGridDBColumn8: TcxGridDBColumn
              DataBinding.FieldName = #49457#44277#47456'(%)'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              HeaderAlignmentHorz = taCenter
              Width = 98
            end
            object cxGridDBColumn9: TcxGridDBColumn
              DataBinding.FieldName = #49324#50857#44552#50529'('#50896')'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 116
            end
            object cxViewDaySumColumn1: TcxGridDBColumn
              DataBinding.FieldName = #49892#54056#54872#44553#50529
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 116
            end
            object cxGridDBColumn10: TcxGridDBColumn
              DataBinding.FieldName = #49345#49464#45236#50669
              PropertiesClassName = 'TcxHyperLinkEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.StartKey = 0
              Properties.UseLeftAlignmentOnEditing = False
              HeaderAlignmentHorz = taCenter
              Width = 128
            end
          end
          object cxLevelDaySum: TcxGridLevel
            GridView = cxViewDaySum
          end
        end
      end
      object pnlDayDown: TPanel
        Left = 128
        Top = 248
        Width = 673
        Height = 141
        Caption = 'pnlDayDown'
        TabOrder = 1
        Visible = False
        object cxGridDayDown: TcxGrid
          Left = 1
          Top = 1
          Width = 671
          Height = 139
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
          object cxViewDayDown: TcxGridDBTableView
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
            OptionsView.HeaderHeight = 22
            Styles.Selection = Frm_Main.cxStyle11
            object cxColViewDayDownColumn1: TcxGridDBColumn
              DataBinding.ValueType = 'String'
              PropertiesClassName = 'TcxLabelProperties'
            end
            object cxColViewDayDownColumn2: TcxGridDBColumn
              DataBinding.ValueType = 'String'
              PropertiesClassName = 'TcxLabelProperties'
            end
            object cxColViewDayDownColumn3: TcxGridDBColumn
              DataBinding.ValueType = 'String'
              PropertiesClassName = 'TcxLabelProperties'
            end
            object cxColViewDayDownColumn4: TcxGridDBColumn
              DataBinding.ValueType = 'String'
              PropertiesClassName = 'TcxLabelProperties'
            end
            object cxColViewDayDownColumn5: TcxGridDBColumn
              DataBinding.ValueType = 'String'
              PropertiesClassName = 'TcxLabelProperties'
            end
            object cxColViewDayDownColumn6: TcxGridDBColumn
              DataBinding.ValueType = 'String'
              PropertiesClassName = 'TcxLabelProperties'
            end
            object cxColViewDayDownColumn7: TcxGridDBColumn
              DataBinding.ValueType = 'String'
              PropertiesClassName = 'TcxLabelProperties'
            end
            object cxColViewDayDownColumn8: TcxGridDBColumn
              DataBinding.ValueType = 'String'
              PropertiesClassName = 'TcxLabelProperties'
            end
            object cxColViewDayDownColumn9: TcxGridDBColumn
              DataBinding.ValueType = 'String'
              PropertiesClassName = 'TcxLabelProperties'
            end
            object cxColViewDayDownColumn10: TcxGridDBColumn
              DataBinding.ValueType = 'String'
              PropertiesClassName = 'TcxLabelProperties'
            end
          end
          object cxLevelDayDown: TcxGridLevel
            GridView = cxViewDayDown
          end
        end
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
    TabOrder = 1
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
  object pm2: TPopupMenu
    AutoHotkeys = maManual
    Left = 384
    Top = 184
    object mni6: TMenuItem
      Caption = #50724#45720
      OnClick = mni6Click
    end
    object mni7: TMenuItem
      Caption = #50612#51228
      OnClick = mni7Click
    end
    object mni8: TMenuItem
      Caption = #52572#44540#51068#51452#51068
      OnClick = mni8Click
    end
    object mni9: TMenuItem
      Caption = #52572#44540#54620#45804
      OnClick = mni9Click
    end
    object mni10: TMenuItem
      Caption = '1'#51068'~'#47568#51068
      OnClick = mni10Click
    end
  end
  object pm3: TPopupMenu
    AutoHotkeys = maManual
    Left = 812
    Top = 572
    object mniN1: TMenuItem
      Caption = #50641' '#49472' '#45796' '#50868
      OnClick = mniN1Click
    end
  end
  object dlgSave: TSaveDialog
    Filter = #50641#49472#54028#51068'(*.xls)|*.xls'
    Left = 924
    Top = 308
  end
end

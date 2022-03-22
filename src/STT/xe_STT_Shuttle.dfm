object Frm_STT_Shuttle: TFrm_STT_Shuttle
  Left = 634
  Top = 226
  BorderStyle = bsNone
  Caption = #49492#53952#53685#44228
  ClientHeight = 708
  ClientWidth = 1195
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 1195
    Height = 708
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet0
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 702
    ClientRectLeft = 2
    ClientRectRight = 1189
    ClientRectTop = 27
    object cxTabSheet0: TcxTabSheet
      Caption = 'NFC'#54788#54889
      ImageIndex = 5
      object PnlMainA0: TPanel
        Left = 0
        Top = 0
        Width = 1187
        Height = 675
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Shape13: TShape
          Left = 0
          Top = 64
          Width = 1187
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = -6
          ExplicitTop = 23
          ExplicitWidth = 305
        end
        object cxGroupBox9: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 64
          Width = 1187
          object cxLabel21: TcxLabel
            Left = 7
            Top = 7
            AutoSize = False
            Caption = #49548'      '#49549
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TextColor = clBlack
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 24
            Width = 73
            AnchorX = 44
            AnchorY = 19
          end
          object btnExcelA0: TcxButton
            Left = 847
            Top = 7
            Width = 100
            Height = 51
            Cursor = crHandPoint
            Caption = #50641#49472#45796#50868
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnExcelA0Click
          end
          object btnSearchA0: TcxButton
            Left = 744
            Top = 7
            Width = 100
            Height = 51
            Cursor = crHandPoint
            Caption = #44160#49353
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnSearchA0Click
          end
          object lblSosokNameA0: TcxLabel
            Left = 78
            Top = 6
            AutoSize = False
            Caption = #49548#49549
            ParentColor = False
            Style.BorderStyle = ebsSingle
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 13719147
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 663
            AnchorX = 410
            AnchorY = 19
          end
          object cxButton4: TcxButton
            Tag = 2
            Left = 373
            Top = 34
            Width = 25
            Height = 24
            Cursor = crHandPoint
            DropDownMenu = pop_dateA1
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
            TabOrder = 4
          end
          object cxDtStartA0: TcxDateEdit
            Left = 78
            Top = 33
            TabStop = False
            AutoSize = False
            EditValue = 39717d
            ParentShowHint = False
            Properties.Alignment.Vert = taBottomJustify
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            Properties.ShowTime = False
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
          object cxDtEndA0: TcxDateEdit
            Left = 231
            Top = 33
            TabStop = False
            AutoSize = False
            EditValue = 39717d
            ParentShowHint = False
            Properties.Alignment.Vert = taBottomJustify
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            Properties.ShowTime = False
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
            Height = 26
            Width = 90
          end
          object cxLabel24: TcxLabel
            Left = 218
            Top = 34
            AutoSize = False
            Caption = '~'
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 15
            AnchorX = 226
            AnchorY = 46
          end
          object cxLabel34: TcxLabel
            Left = 7
            Top = 34
            AutoSize = False
            Caption = #44592'      '#44036
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TextColor = clBlack
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 24
            Width = 73
            AnchorX = 44
            AnchorY = 46
          end
          object cxLabel35: TcxLabel
            Left = 401
            Top = 34
            AutoSize = False
            Caption = #53440#51077
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TextColor = clBlack
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 24
            Width = 67
            AnchorX = 435
            AnchorY = 46
          end
          object cb_SearchA0: TcxComboBox
            Left = 466
            Top = 33
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #51204#52404
              #49492#53952#50836#44552
              #49492#53952#54872#48520)
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
            Text = #51204#52404
            Height = 26
            Width = 84
          end
          object cxTeStartA0: TcxTimeEdit
            Left = 165
            Top = 33
            AutoSize = False
            EditValue = 0.375d
            Properties.TimeFormat = tfHourMin
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 11
            Height = 26
            Width = 55
          end
          object cxTeEndA0: TcxTimeEdit
            Left = 318
            Top = 33
            AutoSize = False
            EditValue = 0.375d
            Properties.TimeFormat = tfHourMin
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 12
            Height = 26
            Width = 55
          end
          object cxLabel22: TcxLabel
            Left = 551
            Top = 34
            AutoSize = False
            Caption = #49492#53952#44592#49324
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TextColor = clBlack
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 24
            Width = 76
            AnchorX = 589
            AnchorY = 46
          end
          object edt_SearchA0: TcxTextEdit
            Left = 625
            Top = 33
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
            TabOrder = 14
            OnKeyDown = edt_SearchA0KeyDown
            Height = 26
            Width = 116
          end
        end
        object cxGridA0: TcxGrid
          Left = 0
          Top = 66
          Width = 1187
          Height = 609
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          LookAndFeel.NativeStyle = False
          object cxGridA0View1: TcxGridDBTableView
            PopupMenu = pmExcelA1
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
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.;-,0.'
                Kind = skSum
                Column = cxGridDBColumn31
              end
              item
                Format = ',0.;-,0.'
                Kind = skSum
                Column = cxGridA0View1Column1
              end>
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
            OptionsView.FocusRect = False
            OptionsView.NoDataToDisplayInfoText = '  '
            OptionsView.DataRowHeight = 22
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.Footer = True
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 23
            OnColumnHeaderClick = cxGridA0View1ColumnHeaderClick
            object cxGridDBColumn6: TcxGridDBColumn
              DataBinding.FieldName = 'No'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 33
            end
            object cxGridDBColumn23: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 166
            end
            object cxGridDBColumn25: TcxGridDBColumn
              DataBinding.FieldName = #49492#53952#44592#49324
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 160
            end
            object cxGridDBColumn26: TcxGridDBColumn
              DataBinding.FieldName = #53440#51077
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
              Width = 92
            end
            object cxGridDBColumn31: TcxGridDBColumn
              DataBinding.FieldName = #44552#50529
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 97
            end
            object cxGridA0View1Column1: TcxGridDBColumn
              DataBinding.FieldName = #44148#49688
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 72
            end
            object cxGridA0View1Column2: TcxGridDBColumn
              DataBinding.FieldName = #50976#54805
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 75
            end
            object cxGridA0View1Column3: TcxGridDBColumn
              DataBinding.FieldName = #45824#47532#44592#49324
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 99
            end
            object cxGridDBColumn24: TcxGridDBColumn
              DataBinding.FieldName = #51077#47141#51068
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 129
            end
            object cxGridDBColumn32: TcxGridDBColumn
              DataBinding.FieldName = #47700#47784
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 271
            end
          end
          object cxGridLevel10: TcxGridLevel
            GridView = cxGridA0View1
          end
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Tag = 702
      Caption = #44592#49324#48324
      ImageIndex = 1
      object AdvSplitter3: TAdvSplitter
        Left = 0
        Top = 670
        Width = 1187
        Height = 5
        Cursor = crVSplit
        Align = alBottom
        Appearance.BorderColor = clNone
        Appearance.BorderColorHot = clNone
        Appearance.Color = clWhite
        Appearance.ColorTo = clSilver
        Appearance.ColorHot = clWhite
        Appearance.ColorHotTo = clGray
        GripStyle = sgDots
        ExplicitLeft = -3
        ExplicitTop = 564
      end
      object PnlMainA1: TPanel
        Left = 0
        Top = 0
        Width = 1187
        Height = 670
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Shape7: TShape
          Left = 0
          Top = 91
          Width = 1187
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = -6
          ExplicitTop = 23
          ExplicitWidth = 305
        end
        object cxGroupBox2: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 91
          Width = 1187
          object btnExcelA1: TcxButton
            Left = 597
            Top = 7
            Width = 100
            Height = 80
            Cursor = crHandPoint
            Caption = #50641#49472#45796#50868
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnExcelA1Click
          end
          object btnSearchA1: TcxButton
            Left = 494
            Top = 7
            Width = 100
            Height = 80
            Cursor = crHandPoint
            Caption = #44160#49353
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnSearchA1Click
          end
          object edt_SearchA1: TcxTextEdit
            Left = 191
            Top = 33
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
            TabOrder = 2
            OnKeyDown = edt_SearchA1KeyDown
            Height = 26
            Width = 298
          end
          object lblSosokNameA1: TcxLabel
            Left = 78
            Top = 6
            AutoSize = False
            Caption = #49548#49549
            ParentColor = False
            Style.BorderStyle = ebsSingle
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 13719147
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 411
            AnchorX = 284
            AnchorY = 19
          end
          object cb_SearchA1: TcxComboBox
            Left = 78
            Top = 33
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
            TabOrder = 4
            Text = #44592#49324#49324#48264
            Height = 26
            Width = 115
          end
          object btnDateA1: TcxButton
            Tag = 2
            Left = 339
            Top = 61
            Width = 25
            Height = 24
            Cursor = crHandPoint
            DropDownMenu = pop_dateA1
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
            TabOrder = 5
          end
          object cxDtStartA1: TcxDateEdit
            Left = 78
            Top = 60
            TabStop = False
            AutoSize = False
            EditValue = 39717d
            ParentShowHint = False
            Properties.Alignment.Vert = taBottomJustify
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            Properties.ShowTime = False
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
            Height = 26
            Width = 90
          end
          object cxDtEndA1: TcxDateEdit
            Left = 213
            Top = 60
            TabStop = False
            AutoSize = False
            EditValue = 39717d
            ParentShowHint = False
            Properties.Alignment.Vert = taBottomJustify
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            Properties.ShowTime = False
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
          object btnChartShow1: TcxButton
            Tag = 1
            Left = 414
            Top = 61
            Width = 75
            Height = 24
            Cursor = crHandPoint
            Caption = #44536#47000#54532#48372#44592
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 8
            OnClick = btnChartShow1Click
          end
          object cxLabel3: TcxLabel
            Left = 7
            Top = 7
            AutoSize = False
            Caption = #49548'      '#49549
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TextColor = clBlack
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 24
            Width = 73
            AnchorX = 44
            AnchorY = 19
          end
          object cxLabel4: TcxLabel
            Left = 7
            Top = 34
            AutoSize = False
            Caption = #44160#49353#51312#44148
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TextColor = clBlack
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 24
            Width = 73
            AnchorX = 44
            AnchorY = 46
          end
          object cxLabel7: TcxLabel
            Left = 7
            Top = 61
            AutoSize = False
            Caption = #44592'      '#44036
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TextColor = clBlack
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 24
            Width = 73
            AnchorX = 44
            AnchorY = 73
          end
          object cxLabel5: TcxLabel
            Left = 166
            Top = 61
            AutoSize = False
            Caption = '09:00 ~ '
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 49
            AnchorX = 191
            AnchorY = 73
          end
          object cxLabel6: TcxLabel
            Left = 301
            Top = 61
            AutoSize = False
            Caption = '09:00'
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 37
            AnchorX = 320
            AnchorY = 73
          end
        end
        object cxGridA1: TcxGrid
          Left = 0
          Top = 93
          Width = 1187
          Height = 577
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          LookAndFeel.NativeStyle = False
          object cxGridA1View1: TcxGridDBTableView
            PopupMenu = pmExcelA1
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
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.;-,0.'
                Kind = skSum
                Column = cxCol6
              end
              item
                Format = ',0.;-,0.'
                Kind = skSum
                Column = cxCol7
              end
              item
                Format = ',0.;-,0.'
                Kind = skSum
                Column = cxCol8
              end>
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
            OptionsView.FocusRect = False
            OptionsView.NoDataToDisplayInfoText = '  '
            OptionsView.DataRowHeight = 22
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.Footer = True
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 23
            OnColumnHeaderClick = cxGridA1View1ColumnHeaderClick
            object cxCol1: TcxGridDBColumn
              DataBinding.FieldName = 'No'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 33
            end
            object cxCol2: TcxGridDBColumn
              DataBinding.FieldName = #48376#49324#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.CellMerging = True
              Width = 54
            end
            object cxCol3: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324'('#53076#46300')'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.CellMerging = True
              Width = 203
            end
            object cxCol4: TcxGridDBColumn
              DataBinding.FieldName = #44592#49324#49324#48264
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.CellMerging = True
              Width = 65
            end
            object cxCol5: TcxGridDBColumn
              DataBinding.FieldName = #44592#49324#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.CellMerging = True
              Width = 92
            end
            object cxCol6: TcxGridDBColumn
              DataBinding.FieldName = #54840#52636#44148#49688
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 54
            end
            object cxCol7: TcxGridDBColumn
              Caption = #53457#49849#44148#49688'(Tag)'
              DataBinding.FieldName = #53457#49849#44148#49688
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 86
            end
            object cxCol8: TcxGridDBColumn
              DataBinding.FieldName = 'Gap'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 62
            end
            object cxCol9: TcxGridDBColumn
              DataBinding.FieldName = #51077#49324#51068
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 97
            end
          end
          object cxLevelWorker: TcxGridLevel
            GridView = cxGridA1View1
          end
        end
      end
      object pnlChartA1: TPanel
        Left = 0
        Top = 670
        Width = 1187
        Height = 0
        Align = alBottom
        TabOrder = 1
        object cxGridA1C1: TcxGrid
          Left = 1
          Top = 36
          Width = 1185
          Height = 64
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object cxGridA1C1ChartView1: TcxGridChartView
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DiagramBar.Values.CaptionPosition = cdvcpOutsideEnd
            DiagramColumn.Active = True
            DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
            DiagramLine.AxisValue.TickMarkLabelFormat = ',0;-0;'
            DiagramLine.Values.CaptionPosition = ldvcpAbove
            DiagramLine.Values.MarkerStyle = cmsSquare
            DiagramPie.Values.CaptionPosition = pdvcpOutsideEndWithLeaderLines
            DiagramStackedArea.Values.CaptionPosition = ldvcpAbove
            DiagramStackedArea.Values.MarkerStyle = cmsSquare
            Styles.Background = cxSTTChart
            Styles.ActiveDataLevelInfo = cxSTTChart
            Styles.DataLevelActiveValueInfo = cxSTTChart
            Styles.DataLevelsInfo = cxSTTChart
            Styles.DiagramSelector = cxSTTChart
            Styles.Legend = cxSTTChart
            Styles.Title = cxSTTChart
            Styles.ToolBox = cxSTTChart
            Title.Alignment = cpaStart
            Title.Text = #44592#49324#48324#53685#44228
            object cxGridA1C1ChartView1Series1: TcxGridChartSeries
              DisplayText = ' '
              GroupSummaryKind = skCount
              Styles.Values = Frm_Main.cxStyle14
            end
            object cxGridA1C1ChartView1Series2: TcxGridChartSeries
              DisplayText = ' '
              Visible = False
            end
          end
          object cxGridA1C1Level1: TcxGridLevel
            GridView = cxGridA1C1ChartView1
          end
        end
        object cxGridA1C2: TcxGrid
          Left = 1
          Top = 36
          Width = 1185
          Height = 64
          Align = alClient
          TabOrder = 2
          Visible = False
          LookAndFeel.NativeStyle = True
          object cxGridA1C2ChartALL: TcxGridChartView
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DiagramArea.AxisValue.TickMarkLabelFormat = ',0;-,0'
            DiagramBar.AxisValue.TickMarkLabelFormat = ',0;-,0'
            DiagramBar.Values.CaptionPosition = cdvcpOutsideEnd
            DiagramColumn.AxisValue.TickMarkLabelFormat = ',0;-,0'
            DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
            DiagramLine.Active = True
            DiagramLine.AxisValue.TickMarkLabelFormat = ',0;-,0'
            DiagramLine.Values.CaptionPosition = ldvcpAbove
            DiagramLine.Values.MarkerStyle = cmsSquare
            DiagramPie.SeriesSites = True
            DiagramPie.Values.CaptionPosition = pdvcpOutsideEndWithLeaderLines
            DiagramStackedArea.AxisValue.TickMarkLabelFormat = ',0;-,0'
            DiagramStackedArea.Values.CaptionPosition = ldvcpAbove
            DiagramStackedArea.Values.MarkerStyle = cmsSquare
            DiagramStackedBar.AxisValue.TickMarkLabelFormat = ',0;-,0'
            DiagramStackedBar.Values.CaptionPosition = cdvcpOutsideEnd
            DiagramStackedColumn.AxisValue.TickMarkLabelFormat = ',0;-,0'
            DiagramStackedColumn.Values.BorderWidth = 3
            DiagramStackedColumn.Values.CaptionPosition = cdvcpOutsideEnd
            Styles.Background = cxSTTChart
            Styles.ActiveDataLevelInfo = cxSTTChart
            Styles.DataLevelActiveValueInfo = cxSTTChart
            Styles.DataLevelsInfo = cxSTTChart
            Styles.DiagramSelector = cxSTTChart
            Styles.Legend = cxSTTChart
            Styles.Title = cxSTTChart
            Styles.ToolBox = cxSTTChart
            Title.Alignment = cpaStart
            Title.Text = #44592#49324#48324#53685#44228
            OnGetValueHint = cxGridA1C2ChartALLGetValueHint
            object cxGridA1C2ChartSeries1: TcxGridChartSeries
              DisplayText = #54840#52636#44148#49688
              OnGetValueDisplayText = cxGridA2C2ChartSeries1GetValueDisplayText
              GroupSummaryKind = skCount
            end
            object cxGridA1C2ChartSeries2: TcxGridChartSeries
              Tag = 1
              DisplayText = #53457#49849#44148#49688
              OnGetValueDisplayText = cxGridA2C2ChartSeries1GetValueDisplayText
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridA1C2ChartALL
          end
        end
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 1185
          Height = 35
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Shape4: TShape
            Left = 5
            Top = 5
            Width = 198
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object cbChartKindA1: TcxComboBox
            Left = 80
            Top = 4
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'Column Diagram'
              'Bar Diagram'
              'Stacked Area Diagram'
              'Stacked Bars Diagram'
              'Stacked Column Diagram'
              'Line Diagram'
              'Area Diagram'
              'Pie Diagram')
            Properties.OnChange = cbChartKindA1PropertiesChange
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Text = 'Line Diagram'
            Height = 26
            Width = 147
          end
          object cxLabel2: TcxLabel
            Left = 13
            Top = 9
            Caption = #44536#47000#54532#49440#53469
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 45
            AnchorY = 17
          end
          object btnChartA1: TcxButton
            Left = 888
            Top = 4
            Width = 75
            Height = 25
            Caption = 'btnChartA1'
            TabOrder = 2
            Visible = False
            OnClick = btnChartA1Click
          end
          object cbKindA1: TcxComboBox
            Left = 233
            Top = 4
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #51204#52404
              #54840#52636#44148#49688
              #53457#49849#44148#49688)
            Properties.OnChange = cbKindA1PropertiesChange
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            Height = 26
            Width = 112
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Tag = 706
      Caption = #52264#47049#48324
      ImageIndex = 5
      object AdvSplitter5: TAdvSplitter
        Left = 0
        Top = 670
        Width = 1187
        Height = 5
        Cursor = crVSplit
        Align = alBottom
        Appearance.BorderColor = clNone
        Appearance.BorderColorHot = clNone
        Appearance.Color = clWhite
        Appearance.ColorTo = clSilver
        Appearance.ColorHot = clWhite
        Appearance.ColorHotTo = clGray
        GripStyle = sgDots
        ExplicitTop = 664
      end
      object pnlChartA2: TPanel
        Left = 0
        Top = 675
        Width = 1187
        Height = 0
        Align = alBottom
        TabOrder = 0
        object cxGridA2C2: TcxGrid
          Left = 1
          Top = 36
          Width = 1185
          Height = 133
          Align = alClient
          TabOrder = 1
          LookAndFeel.NativeStyle = True
          object cxGridA2C2ChartALL: TcxGridChartView
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DiagramArea.AxisValue.TickMarkLabelFormat = ',0;-,0'
            DiagramArea.Values.CaptionPosition = ldvcpAbove
            DiagramArea.Values.MarkerStyle = cmsSquare
            DiagramBar.AxisValue.TickMarkLabelFormat = ',0;-,0'
            DiagramBar.Values.CaptionPosition = cdvcpOutsideEnd
            DiagramColumn.Active = True
            DiagramColumn.AxisValue.TickMarkLabelFormat = ',0;-,0'
            DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
            DiagramLine.AxisValue.TickMarkLabelFormat = ',0;-,0'
            DiagramLine.Values.CaptionPosition = ldvcpAbove
            DiagramLine.Values.MarkerStyle = cmsSquare
            DiagramPie.Values.CaptionPosition = pdvcpOutsideEndWithLeaderLines
            DiagramStackedArea.AxisValue.TickMarkLabelFormat = ',0;-,0'
            DiagramStackedArea.Values.CaptionPosition = ldvcpAbove
            DiagramStackedArea.Values.MarkerStyle = cmsSquare
            DiagramStackedBar.AxisValue.TickMarkLabelFormat = ',0;-,0'
            DiagramStackedBar.Values.CaptionPosition = cdvcpOutsideEnd
            DiagramStackedColumn.AxisValue.TickMarkLabelFormat = ',0;-,0'
            DiagramStackedColumn.Values.CaptionPosition = cdvcpOutsideEnd
            Styles.Background = cxSTTChart
            Styles.ActiveDataLevelInfo = cxSTTChart
            Styles.DataLevelActiveValueInfo = cxSTTChart
            Styles.DataLevelsInfo = cxSTTChart
            Styles.DiagramSelector = cxSTTChart
            Styles.Legend = cxSTTChart
            Styles.Title = cxSTTChart
            Styles.ToolBox = cxSTTChart
            Title.Alignment = cpaStart
            Title.Text = #52264#47049#53685#44228
            OnGetValueHint = cxGridA2C2ChartALLGetValueHint
            object cxGridA2C2ChartALLSeries1: TcxGridChartSeries
              DisplayText = #53457#49849#44148#49688
              GroupSummaryKind = skCount
            end
          end
          object cxGridLevel4: TcxGridLevel
            GridView = cxGridA2C2ChartALL
          end
        end
        object Panel9: TPanel
          Left = 1
          Top = 1
          Width = 1185
          Height = 35
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Shape24: TShape
            Left = 5
            Top = 5
            Width = 198
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object cbChartKindA2: TcxComboBox
            Left = 80
            Top = 4
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'Column Diagram'
              'Bar Diagram'
              'Stacked Area Diagram'
              'Stacked Bars Diagram'
              'Stacked Column Diagram'
              'Line Diagram'
              'Area Diagram'
              'Pie Diagram')
            Properties.OnChange = cbChartKindA2PropertiesChange
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Text = 'Column Diagram'
            Height = 26
            Width = 147
          end
          object cxLabel28: TcxLabel
            Left = 13
            Top = 9
            Caption = #44536#47000#54532#49440#53469
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 45
            AnchorY = 17
          end
          object btnChartA2: TcxButton
            Left = 888
            Top = 4
            Width = 75
            Height = 25
            Caption = 'btnChartA2'
            TabOrder = 2
            Visible = False
            OnClick = btnChartA2Click
          end
        end
      end
      object PnlMainA2: TPanel
        Left = 0
        Top = 0
        Width = 1187
        Height = 670
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Shape25: TShape
          Left = 0
          Top = 91
          Width = 1187
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
          Top = 0
          Align = alTop
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 91
          Width = 1187
          object btnExcelA2: TcxButton
            Left = 597
            Top = 7
            Width = 100
            Height = 80
            Cursor = crHandPoint
            Caption = #50641#49472#45796#50868
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnExcelA2Click
          end
          object btnSearchA2: TcxButton
            Left = 494
            Top = 7
            Width = 100
            Height = 80
            Cursor = crHandPoint
            Caption = #44160#49353
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnSearchA2Click
          end
          object edt_SearchA2: TcxTextEdit
            Left = 191
            Top = 33
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
            TabOrder = 2
            Height = 26
            Width = 298
          end
          object lblSosokNameA2: TcxLabel
            Left = 78
            Top = 6
            AutoSize = False
            Caption = #49548#49549
            ParentColor = False
            Style.BorderStyle = ebsSingle
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 13719147
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 411
            AnchorX = 284
            AnchorY = 19
          end
          object cb_SearchA2: TcxComboBox
            Left = 78
            Top = 33
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #52264#47049#48264#54840
              #45432#49440#47749)
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
            Text = #52264#47049#48264#54840
            Height = 26
            Width = 115
          end
          object btnDateA2: TcxButton
            Tag = 2
            Left = 339
            Top = 61
            Width = 25
            Height = 24
            Cursor = crHandPoint
            DropDownMenu = pop_dateA1
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
            TabOrder = 5
          end
          object cxDtStartA2: TcxDateEdit
            Left = 78
            Top = 60
            TabStop = False
            AutoSize = False
            EditValue = 39717d
            ParentShowHint = False
            Properties.Alignment.Vert = taBottomJustify
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            Properties.ShowTime = False
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
            Height = 26
            Width = 90
          end
          object cxDtEndA2: TcxDateEdit
            Left = 213
            Top = 60
            TabStop = False
            AutoSize = False
            EditValue = 39717d
            ParentShowHint = False
            Properties.Alignment.Vert = taBottomJustify
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            Properties.ShowTime = False
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
          object btnChartShow2: TcxButton
            Tag = 1
            Left = 414
            Top = 61
            Width = 75
            Height = 24
            Cursor = crHandPoint
            Caption = #44536#47000#54532#48372#44592
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 8
            OnClick = btnChartShow2Click
          end
          object cxLabel1: TcxLabel
            Left = 7
            Top = 7
            AutoSize = False
            Caption = #49548'      '#49549
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TextColor = clBlack
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 24
            Width = 73
            AnchorX = 44
            AnchorY = 19
          end
          object cxLabel8: TcxLabel
            Left = 7
            Top = 34
            AutoSize = False
            Caption = #44160#49353#51312#44148
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TextColor = clBlack
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 24
            Width = 73
            AnchorX = 44
            AnchorY = 46
          end
          object cxLabel11: TcxLabel
            Left = 7
            Top = 61
            AutoSize = False
            Caption = #44592'      '#44036
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TextColor = clBlack
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 24
            Width = 73
            AnchorX = 44
            AnchorY = 73
          end
          object cxLabel9: TcxLabel
            Left = 166
            Top = 61
            AutoSize = False
            Caption = '09:00 ~ '
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 49
            AnchorX = 191
            AnchorY = 73
          end
          object cxLabel10: TcxLabel
            Left = 301
            Top = 61
            AutoSize = False
            Caption = '09:00'
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 37
            AnchorX = 320
            AnchorY = 73
          end
        end
        object cxGridA2: TcxGrid
          Left = 0
          Top = 93
          Width = 1187
          Height = 577
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          LookAndFeel.NativeStyle = False
          object cxGridA2View1: TcxGridDBTableView
            PopupMenu = pmExcelA1
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
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.;-,0.'
                Kind = skSum
                Column = cxGridDBColumn7
              end>
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
            OptionsView.FocusRect = False
            OptionsView.NoDataToDisplayInfoText = '  '
            OptionsView.DataRowHeight = 22
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.Footer = True
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 23
            OnColumnHeaderClick = cxGridA1View1ColumnHeaderClick
            object cxGridDBColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'No'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 33
            end
            object cxGridDBColumn2: TcxGridDBColumn
              DataBinding.FieldName = #48376#49324#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.CellMerging = True
              Width = 54
            end
            object cxGridDBColumn3: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324'('#53076#46300')'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.CellMerging = True
              Width = 203
            end
            object cxGridDBColumn4: TcxGridDBColumn
              DataBinding.FieldName = #52264#47049#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.CellMerging = True
              Width = 65
            end
            object cxGridDBColumn5: TcxGridDBColumn
              Caption = #45432#49440#47749'('#49345#54665'<->'#54616#54665')'
              DataBinding.FieldName = #45432#49440#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.CellMerging = True
              Width = 200
            end
            object cxGridDBColumn7: TcxGridDBColumn
              Caption = #53457#49849#44148#49688'(Tag)'
              DataBinding.FieldName = #53457#49849#44148#49688
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 86
            end
            object cxGridDBColumn8: TcxGridDBColumn
              DataBinding.FieldName = #46321#47197#51068
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 97
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridA2View1
          end
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Tag = 708
      Caption = #45432#49440#48324
      ImageIndex = 7
      object AdvSplitter7: TAdvSplitter
        Left = 0
        Top = 670
        Width = 1187
        Height = 5
        Cursor = crVSplit
        Align = alBottom
        Appearance.BorderColor = clNone
        Appearance.BorderColorHot = clNone
        Appearance.Color = clWhite
        Appearance.ColorTo = clSilver
        Appearance.ColorHot = clWhite
        Appearance.ColorHotTo = clGray
        GripStyle = sgDots
        ExplicitTop = 500
        ExplicitWidth = 976
      end
      object pnlChartA3: TPanel
        Left = 0
        Top = 670
        Width = 1187
        Height = 0
        Align = alBottom
        TabOrder = 0
        object cxGridA3C1: TcxGrid
          Left = 1
          Top = 36
          Width = 1185
          Height = 333
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object cxGridA3C1ChartView1: TcxGridChartView
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DiagramArea.Values.CaptionPosition = ldvcpAbove
            DiagramArea.Values.MarkerStyle = cmsSquare
            DiagramBar.Values.CaptionPosition = cdvcpOutsideEnd
            DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
            DiagramLine.Active = True
            DiagramLine.Values.CaptionPosition = ldvcpAbove
            DiagramLine.Values.MarkerStyle = cmsSquare
            DiagramPie.Values.CaptionPosition = pdvcpOutsideEndWithLeaderLines
            DiagramStackedArea.Values.CaptionPosition = ldvcpAbove
            DiagramStackedArea.Values.MarkerStyle = cmsSquare
            DiagramStackedBar.Values.CaptionPosition = cdvcpOutsideEnd
            DiagramStackedColumn.Values.CaptionPosition = cdvcpOutsideEnd
            Styles.Background = cxSTTChart
            Styles.ActiveDataLevelInfo = cxSTTChart
            Styles.DataLevelActiveValueInfo = cxSTTChart
            Styles.DataLevelsInfo = cxSTTChart
            Styles.DiagramSelector = cxSTTChart
            Styles.Legend = cxSTTChart
            Styles.Title = cxSTTChart
            Styles.ToolBox = cxSTTChart
            Title.Alignment = cpaStart
            Title.Text = #49884#44036#45824#48324#53084#49688#53685#44228
            object cxGridA3C1ChartView1Series1: TcxGridChartSeries
              DisplayText = ' '
              GroupSummaryKind = skCount
            end
          end
          object cxGridA3C1Level1: TcxGridLevel
            GridView = cxGridA3C1ChartView1
          end
        end
        object Panel13: TPanel
          Left = 1
          Top = 1
          Width = 1185
          Height = 35
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Shape36: TShape
            Left = 5
            Top = 5
            Width = 198
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object cbChartKindA3: TcxComboBox
            Left = 80
            Top = 4
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'Column Diagram'
              'Bar Diagram'
              'Stacked Area Diagram'
              'Stacked Bars Diagram'
              'Stacked Column Diagram'
              'Line Diagram'
              'Area Diagram'
              'Pie Diagram')
            Properties.OnChange = cbChartKindA3PropertiesChange
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Text = 'Line Diagram'
            Height = 26
            Width = 147
          end
          object cxLabel44: TcxLabel
            Left = 13
            Top = 9
            Caption = #44536#47000#54532#49440#53469
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 45
            AnchorY = 17
          end
          object btnChartA3: TcxButton
            Left = 888
            Top = 4
            Width = 75
            Height = 25
            Caption = 'btnChartA3'
            TabOrder = 2
            Visible = False
            OnClick = btnChartA3Click
          end
          object cbKindA3: TcxComboBox
            Left = 231
            Top = 4
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #51204#52404
              #54840#52636#44148#49688
              #53457#49849#44148#49688)
            Properties.OnChange = cbKindA3PropertiesChange
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            Height = 26
            Width = 121
          end
        end
        object cxGridA3C2: TcxGrid
          Left = 1
          Top = 36
          Width = 1185
          Height = 333
          Align = alClient
          TabOrder = 2
          Visible = False
          LookAndFeel.NativeStyle = True
          object cxGridA3C2ChartALL: TcxGridChartView
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DiagramArea.Values.CaptionPosition = ldvcpAbove
            DiagramArea.Values.MarkerStyle = cmsSquare
            DiagramBar.Values.CaptionPosition = cdvcpOutsideEnd
            DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
            DiagramLine.Active = True
            DiagramLine.Values.CaptionPosition = ldvcpAbove
            DiagramLine.Values.MarkerStyle = cmsSquare
            DiagramPie.Values.CaptionPosition = pdvcpOutsideEndWithLeaderLines
            DiagramStackedArea.Values.CaptionPosition = ldvcpAbove
            DiagramStackedArea.Values.MarkerStyle = cmsSquare
            DiagramStackedBar.Values.CaptionPosition = cdvcpOutsideEnd
            DiagramStackedColumn.Values.CaptionPosition = cdvcpOutsideEnd
            Styles.Background = cxSTTChart
            Styles.ActiveDataLevelInfo = cxSTTChart
            Styles.DataLevelActiveValueInfo = cxSTTChart
            Styles.DataLevelsInfo = cxSTTChart
            Styles.DiagramSelector = cxSTTChart
            Styles.Legend = cxSTTChart
            Styles.Title = cxSTTChart
            Styles.ToolBox = cxSTTChart
            Title.Alignment = cpaStart
            Title.Text = #49884#44036#45824#48324#53084#49688#53685#44228
            object cxGridA3C2ChartSeries1: TcxGridChartSeries
              DisplayText = #54840#52636#44148#49688
            end
            object cxGridA3C2ChartSeries2: TcxGridChartSeries
              Tag = 1
              DisplayText = #53457#49849#44148#49688
            end
          end
          object cxGridLevel7: TcxGridLevel
            GridView = cxGridA3C2ChartALL
          end
        end
      end
      object PnlMainA3: TPanel
        Left = 0
        Top = 0
        Width = 1187
        Height = 670
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Shape37: TShape
          Left = 0
          Top = 91
          Width = 1187
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = -6
          ExplicitTop = 23
          ExplicitWidth = 305
        end
        object cxGroupBox3: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 91
          Width = 1187
          object btnExcelA3: TcxButton
            Left = 597
            Top = 7
            Width = 100
            Height = 80
            Cursor = crHandPoint
            Caption = #50641#49472#45796#50868
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnExcelA3Click
          end
          object btnSearchA3: TcxButton
            Left = 494
            Top = 7
            Width = 100
            Height = 80
            Cursor = crHandPoint
            Caption = #44160#49353
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnSearchA3Click
          end
          object edt_SearchA3: TcxTextEdit
            Left = 191
            Top = 33
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
            TabOrder = 2
            Height = 26
            Width = 298
          end
          object lblSosokNameA3: TcxLabel
            Left = 78
            Top = 6
            AutoSize = False
            Caption = #49548#49549
            ParentColor = False
            Style.BorderStyle = ebsSingle
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 13719147
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 411
            AnchorX = 284
            AnchorY = 19
          end
          object cb_SearchA3: TcxComboBox
            Left = 78
            Top = 33
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #45432#49440#47749)
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
            Text = #45432#49440#47749
            Height = 26
            Width = 115
          end
          object btnDateA3: TcxButton
            Tag = 2
            Left = 339
            Top = 61
            Width = 25
            Height = 24
            Cursor = crHandPoint
            DropDownMenu = pop_dateA1
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
            TabOrder = 5
          end
          object cxDtStartA3: TcxDateEdit
            Left = 78
            Top = 60
            TabStop = False
            AutoSize = False
            EditValue = 39717d
            ParentShowHint = False
            Properties.Alignment.Vert = taBottomJustify
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            Properties.ShowTime = False
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
            Height = 26
            Width = 90
          end
          object cxDtEndA3: TcxDateEdit
            Left = 213
            Top = 60
            TabStop = False
            AutoSize = False
            EditValue = 39717d
            ParentShowHint = False
            Properties.Alignment.Vert = taBottomJustify
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            Properties.ShowTime = False
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
          object btnChartShow3: TcxButton
            Tag = 1
            Left = 414
            Top = 61
            Width = 75
            Height = 24
            Cursor = crHandPoint
            Caption = #44536#47000#54532#48372#44592
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 8
            OnClick = btnChartShow3Click
          end
          object cxLabel14: TcxLabel
            Left = 7
            Top = 7
            AutoSize = False
            Caption = #49548'      '#49549
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TextColor = clBlack
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 24
            Width = 73
            AnchorX = 44
            AnchorY = 19
          end
          object cxLabel17: TcxLabel
            Left = 7
            Top = 34
            AutoSize = False
            Caption = #44160#49353#51312#44148
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TextColor = clBlack
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 24
            Width = 73
            AnchorX = 44
            AnchorY = 46
          end
          object cxLabel18: TcxLabel
            Left = 7
            Top = 61
            AutoSize = False
            Caption = #44592'      '#44036
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TextColor = clBlack
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 24
            Width = 73
            AnchorX = 44
            AnchorY = 73
          end
          object cxLabel12: TcxLabel
            Left = 166
            Top = 61
            AutoSize = False
            Caption = '09:00 ~ '
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 49
            AnchorX = 191
            AnchorY = 73
          end
          object cxLabel13: TcxLabel
            Left = 301
            Top = 61
            AutoSize = False
            Caption = '09:00'
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 37
            AnchorX = 320
            AnchorY = 73
          end
        end
        object cxGridA3: TcxGrid
          Left = 0
          Top = 93
          Width = 1187
          Height = 577
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          LookAndFeel.NativeStyle = False
          object cxGridA3View1: TcxGridDBTableView
            PopupMenu = pmExcelA1
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
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.;-,0.'
                Kind = skSum
                Column = cxGridDBColumn20
              end
              item
                Format = ',0.;-,0.'
                Kind = skSum
                Column = cxGridDBColumn21
              end
              item
                Format = ',0.;-,0.'
                Kind = skSum
                Column = cxGridDBColumn22
              end>
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
            OptionsView.FocusRect = False
            OptionsView.NoDataToDisplayInfoText = '  '
            OptionsView.DataRowHeight = 22
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.Footer = True
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 23
            OnColumnHeaderClick = cxGridA1View1ColumnHeaderClick
            object cxGridDBColumn9: TcxGridDBColumn
              DataBinding.FieldName = 'No'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 33
            end
            object cxGridDBColumn10: TcxGridDBColumn
              Caption = #45432#49440#47749'('#49345#54665'<->'#54616#54665')'
              DataBinding.FieldName = #45432#49440#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.CellMerging = True
              Width = 238
            end
            object cxGridDBColumn20: TcxGridDBColumn
              DataBinding.FieldName = #54840#52636#44148#49688
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 54
            end
            object cxGridDBColumn21: TcxGridDBColumn
              Caption = #53457#49849#44148#49688'(Tag)'
              DataBinding.FieldName = #53457#49849#44148#49688
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 86
            end
            object cxGridDBColumn22: TcxGridDBColumn
              DataBinding.FieldName = 'Gap'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 62
            end
          end
          object cxGridLevel5: TcxGridLevel
            GridView = cxGridA3View1
          end
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Tag = 709
      Caption = #49884#44036#45824#48324
      ImageIndex = 8
      object AdvSplitter8: TAdvSplitter
        Left = 0
        Top = 670
        Width = 1187
        Height = 5
        Cursor = crVSplit
        Align = alBottom
        Appearance.BorderColor = clNone
        Appearance.BorderColorHot = clNone
        Appearance.Color = clWhite
        Appearance.ColorTo = clSilver
        Appearance.ColorHot = clWhite
        Appearance.ColorHotTo = clGray
        GripStyle = sgDots
        ExplicitTop = 500
        ExplicitWidth = 976
      end
      object pnlChartA4: TPanel
        Left = 0
        Top = 675
        Width = 1187
        Height = 0
        Align = alBottom
        TabOrder = 0
        object Panel15: TPanel
          Left = 1
          Top = 1
          Width = 1185
          Height = 35
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Shape41: TShape
            Left = 5
            Top = 5
            Width = 198
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object cbChartKindA4: TcxComboBox
            Left = 80
            Top = 4
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'Column Diagram'
              'Bar Diagram'
              'Stacked Area Diagram'
              'Stacked Bars Diagram'
              'Stacked Column Diagram'
              'Line Diagram'
              'Area Diagram'
              'Pie Diagram')
            Properties.OnChange = cbChartKindA4PropertiesChange
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Text = 'Line Diagram'
            Height = 26
            Width = 147
          end
          object cxLabel50: TcxLabel
            Left = 13
            Top = 9
            Caption = #44536#47000#54532#49440#53469
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 45
            AnchorY = 17
          end
          object btnChartA4: TcxButton
            Left = 888
            Top = 4
            Width = 75
            Height = 25
            Caption = 'btnChartA4'
            TabOrder = 2
            Visible = False
            OnClick = btnChartA4Click
          end
          object cbKindA4: TcxComboBox
            Left = 231
            Top = 4
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #51204#52404
              #54840#52636#44148#49688
              #53457#49849#44148#49688)
            Properties.OnChange = cbKindA4PropertiesChange
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            Height = 26
            Width = 121
          end
        end
        object cxGridA4C2: TcxGrid
          Left = 1
          Top = 36
          Width = 1185
          Height = 133
          Align = alClient
          TabOrder = 2
          Visible = False
          LookAndFeel.NativeStyle = True
          object cxGridA4C2ChartALL: TcxGridChartView
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DiagramArea.AxisValue.TickMarkLabelFormat = ',0;-,0'
            DiagramArea.Values.CaptionPosition = ldvcpAbove
            DiagramArea.Values.MarkerStyle = cmsSquare
            DiagramBar.AxisValue.TickMarkLabelFormat = ',0;-,0'
            DiagramBar.Values.CaptionPosition = cdvcpOutsideEnd
            DiagramColumn.AxisValue.TickMarkLabelFormat = ',0;-,0'
            DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
            DiagramLine.Active = True
            DiagramLine.AxisValue.TickMarkLabelFormat = ',0;-,0'
            DiagramLine.Values.CaptionPosition = ldvcpAbove
            DiagramLine.Values.MarkerStyle = cmsSquare
            DiagramPie.Legend.Orientation = cpoHorizontal
            DiagramPie.Legend.Position = cppNone
            DiagramPie.Values.CaptionPosition = pdvcpOutsideEndWithLeaderLines
            DiagramPie.Values.CaptionItems = [pdvciCategory, pdvciPercentage]
            DiagramStackedArea.AxisValue.TickMarkLabelFormat = ',0;-,0'
            DiagramStackedArea.Values.CaptionPosition = ldvcpAbove
            DiagramStackedArea.Values.MarkerStyle = cmsSquare
            DiagramStackedBar.AxisValue.TickMarkLabelFormat = ',0;-,0'
            DiagramStackedBar.Values.CaptionPosition = cdvcpOutsideEnd
            DiagramStackedColumn.AxisValue.TickMarkLabelFormat = ',0;-,0'
            DiagramStackedColumn.Values.CaptionPosition = cdvcpOutsideEnd
            Styles.Background = cxSTTChart
            Styles.ActiveDataLevelInfo = cxSTTChart
            Styles.DataLevelActiveValueInfo = cxSTTChart
            Styles.DataLevelsInfo = cxSTTChart
            Styles.DiagramSelector = cxSTTChart
            Styles.Legend = cxSTTChart
            Styles.Title = cxSTTChart
            Styles.ToolBox = cxSTTChart
            Title.Alignment = cpaStart
            Title.Text = #51068#51068#53084#49688#53685#44228
            object cxGridA4C2ChartSeries1: TcxGridChartSeries
              DisplayText = #54840#52636#44148#49688
              GroupSummaryKind = skCount
            end
            object cxGridA4C2ChartSeries2: TcxGridChartSeries
              Tag = 1
              DisplayText = #53457#49849#44148#49688
            end
          end
          object cxGridLevel9: TcxGridLevel
            GridView = cxGridA4C2ChartALL
          end
        end
        object cxGridA4C1: TcxGrid
          Left = 1
          Top = 36
          Width = 1185
          Height = 133
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object cxGridA4C1ChartView1: TcxGridChartView
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DiagramArea.Values.CaptionPosition = ldvcpAbove
            DiagramArea.Values.MarkerStyle = cmsSquare
            DiagramBar.Values.CaptionPosition = cdvcpOutsideEnd
            DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
            DiagramLine.Active = True
            DiagramLine.Values.CaptionPosition = ldvcpAbove
            DiagramLine.Values.MarkerStyle = cmsSquare
            DiagramPie.Values.CaptionPosition = pdvcpOutsideEndWithLeaderLines
            DiagramStackedArea.Values.CaptionPosition = ldvcpAbove
            DiagramStackedArea.Values.MarkerStyle = cmsSquare
            DiagramStackedBar.Values.CaptionPosition = cdvcpOutsideEnd
            DiagramStackedColumn.Values.CaptionPosition = cdvcpOutsideEnd
            Styles.Background = cxSTTChart
            Styles.ActiveDataLevelInfo = cxSTTChart
            Styles.DataLevelActiveValueInfo = cxSTTChart
            Styles.DataLevelsInfo = cxSTTChart
            Styles.DiagramSelector = cxSTTChart
            Styles.Legend = cxSTTChart
            Styles.Title = cxSTTChart
            Styles.ToolBox = cxSTTChart
            Title.Alignment = cpaStart
            Title.Text = #51068#51068#53084#49688#53685#44228
            object cxGridA4C1ChartView1Series1: TcxGridChartSeries
              DisplayText = ' '
              GroupSummaryKind = skCount
              Styles.Values = Frm_Main.cxStyle14
            end
          end
          object cxGridA4C1Level1: TcxGridLevel
            GridView = cxGridA4C1ChartView1
          end
        end
      end
      object PnlMainA4: TPanel
        Left = 0
        Top = 0
        Width = 1187
        Height = 670
        Align = alClient
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Shape42: TShape
          Left = 0
          Top = 91
          Width = 1187
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = -6
          ExplicitTop = 23
          ExplicitWidth = 305
        end
        object cxGroupBox4: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 91
          Width = 1187
          object btnExcelA4: TcxButton
            Left = 597
            Top = 7
            Width = 100
            Height = 80
            Cursor = crHandPoint
            Caption = #50641#49472#45796#50868
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnExcelA4Click
          end
          object btnSearchA4: TcxButton
            Left = 494
            Top = 7
            Width = 100
            Height = 80
            Cursor = crHandPoint
            Caption = #44160#49353
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnSearchA4Click
          end
          object edt_SearchA4: TcxTextEdit
            Left = 191
            Top = 33
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
            TabOrder = 2
            Height = 26
            Width = 298
          end
          object lblSosokNameA4: TcxLabel
            Left = 78
            Top = 6
            AutoSize = False
            Caption = #49548#49549
            ParentColor = False
            Style.BorderStyle = ebsSingle
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 13719147
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 411
            AnchorX = 284
            AnchorY = 19
          end
          object cb_SearchA4: TcxComboBox
            Left = 78
            Top = 33
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #44592#49324#49324#48264
              #44036#45800#47700#47784)
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
            Text = #44592#49324#49324#48264
            Height = 26
            Width = 115
          end
          object btnDateA4: TcxButton
            Tag = 2
            Left = 339
            Top = 61
            Width = 25
            Height = 24
            Cursor = crHandPoint
            DropDownMenu = pop_dateA1
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
            TabOrder = 5
          end
          object cxDtStartA4: TcxDateEdit
            Left = 78
            Top = 60
            TabStop = False
            AutoSize = False
            EditValue = 39717d
            ParentShowHint = False
            Properties.Alignment.Vert = taBottomJustify
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            Properties.ShowTime = False
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
            Height = 26
            Width = 90
          end
          object cxDtEndA4: TcxDateEdit
            Left = 213
            Top = 60
            TabStop = False
            AutoSize = False
            EditValue = 39717d
            ParentShowHint = False
            Properties.Alignment.Vert = taBottomJustify
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            Properties.ShowTime = False
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
          object btnChartShow4: TcxButton
            Tag = 1
            Left = 414
            Top = 61
            Width = 75
            Height = 24
            Cursor = crHandPoint
            Caption = #44536#47000#54532#48372#44592
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 8
            OnClick = btnChartShow4Click
          end
          object cxLabel19: TcxLabel
            Left = 7
            Top = 7
            AutoSize = False
            Caption = #49548'      '#49549
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TextColor = clBlack
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 24
            Width = 73
            AnchorX = 44
            AnchorY = 19
          end
          object cxLabel23: TcxLabel
            Left = 7
            Top = 34
            AutoSize = False
            Caption = #44160#49353#51312#44148
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TextColor = clBlack
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 24
            Width = 73
            AnchorX = 44
            AnchorY = 46
          end
          object cxLabel25: TcxLabel
            Left = 7
            Top = 61
            AutoSize = False
            Caption = #44592'      '#44036
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TextColor = clBlack
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 24
            Width = 73
            AnchorX = 44
            AnchorY = 73
          end
          object cxLabel15: TcxLabel
            Left = 166
            Top = 61
            AutoSize = False
            Caption = '09:00 ~ '
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 49
            AnchorX = 191
            AnchorY = 73
          end
          object cxLabel16: TcxLabel
            Left = 301
            Top = 61
            AutoSize = False
            Caption = '09:00'
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 37
            AnchorX = 320
            AnchorY = 73
          end
        end
        object cxGridA4: TcxGrid
          Left = 0
          Top = 93
          Width = 1187
          Height = 577
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          LookAndFeel.NativeStyle = False
          object cxGridA4View1: TcxGridDBTableView
            PopupMenu = pmExcelA1
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
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.;-,0.'
                Kind = skSum
                Column = cxGridDBColumn13
              end
              item
                Format = ',0.;-,0.'
                Kind = skSum
                Column = cxGridDBColumn14
              end
              item
                Format = ',0.;-,0.'
                Kind = skSum
                Column = cxGridDBColumn15
              end>
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
            OptionsView.FocusRect = False
            OptionsView.NoDataToDisplayInfoText = '  '
            OptionsView.DataRowHeight = 22
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.Footer = True
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 23
            object cxGridA4View1Column1: TcxGridDBColumn
              DataBinding.FieldName = 'No'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 35
            end
            object cxGridDBColumn12: TcxGridDBColumn
              DataBinding.FieldName = #49884#44036
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 160
            end
            object cxGridDBColumn13: TcxGridDBColumn
              DataBinding.FieldName = #54840#52636#44148#49688
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;-,0.'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
            end
            object cxGridDBColumn14: TcxGridDBColumn
              Caption = #53457#49849#44148#49688'(Tag)'
              DataBinding.FieldName = #53457#49849#44148#49688
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;-,0.'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 86
            end
            object cxGridDBColumn15: TcxGridDBColumn
              DataBinding.FieldName = 'Gap'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;-,0.'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridA4View1
          end
        end
      end
    end
    object cxTabSheet5: TcxTabSheet
      Caption = #49492#53952#51060#46041#47196#44536
      ImageIndex = 4
      object PnlMain: TPanel
        Left = 0
        Top = 0
        Width = 1187
        Height = 675
        Align = alClient
        BevelKind = bkFlat
        BevelOuter = bvNone
        TabOrder = 0
        object PnlBtm: TPanel
          Left = 527
          Top = 166
          Width = 656
          Height = 505
          Align = alClient
          BevelKind = bkFlat
          BevelOuter = bvNone
          DoubleBuffered = False
          ParentDoubleBuffered = False
          TabOrder = 0
          object mMap_WKmoveLog: TTalMapXCtrl
            Left = 0
            Top = 0
            Width = 652
            Height = 501
            Align = alClient
            TabOrder = 0
            OnCreate = mMap_WKmoveLogCreate
            OnMouseMove = mMap_WKmoveLogMouseMove
            OnStateChange = mMap_WKmoveLogStateChange
            OnUI_MouseUp = mMap_WKmoveLogUI_MouseUp
            OnUI_MouseMove = mMap_WKmoveLogUI_MouseMove
            OnUI_MouseLeave = mMap_WKmoveLogUI_MouseLeave
            OnUI_MouseHover = mMap_WKmoveLogUI_MouseHover
            OnPOI_DblClick = mMap_WKmoveLogPOI_DblClick
            ExplicitLeft = -1
            ExplicitWidth = 521
            ExplicitHeight = 529
            ControlData = {00090000}
          end
        end
        object cxSplitter1: TcxSplitter
          Left = 521
          Top = 166
          Width = 6
          Height = 505
          AlignSplitter = salTop
          Control = PnlTop
        end
        object pnlTitle: TPanel
          Left = 0
          Top = 0
          Width = 1183
          Height = 166
          Cursor = crSizeAll
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 2
          object cxGroupBox5: TcxGroupBox
            Left = 1
            Top = 2
            Caption = #44160#49353
            TabOrder = 0
            Height = 161
            Width = 669
            object btnSearchA5: TcxButton
              Left = 569
              Top = 18
              Width = 86
              Height = 25
              Cursor = crHandPoint
              Cancel = True
              Caption = #51312#54924
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              TabOrder = 0
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548
              Font.Style = []
              ParentFont = False
              OnClick = btnSearchA5Click
            end
            object cxLabel20: TcxLabel
              Left = 3
              Top = 18
              AutoSize = False
              Caption = #51312#54924#51068#51088
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Color = clWhite
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = False
              Style.TextColor = 16744448
              Style.TransparentBorder = False
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 24
              Width = 59
              AnchorX = 33
              AnchorY = 30
            end
            object cxLabel75: TcxLabel
              Left = 219
              Top = 22
              Caption = '~'
              Transparent = True
            end
            object cxTimeEnd: TcxTimeEdit
              Left = 320
              Top = 17
              AutoSize = False
              EditValue = 0.0416550925925926d
              ParentFont = False
              Properties.Alignment.Horz = taLeftJustify
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
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 3
              Height = 26
              Width = 71
            end
            object cxTimeStart: TcxTimeEdit
              Left = 147
              Top = 17
              AutoSize = False
              EditValue = 0.0416550925925926d
              ParentFont = False
              Properties.Alignment.Horz = taLeftJustify
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
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 4
              Height = 26
              Width = 71
            end
            object cxDtStartA5: TcxDateEdit
              Left = 60
              Top = 17
              TabStop = False
              AutoSize = False
              EditValue = 39717d
              ParentShowHint = False
              Properties.DateButtons = [btnToday]
              Properties.SaveTime = False
              Properties.ShowTime = False
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
            object cxDtEndA5: TcxDateEdit
              Left = 233
              Top = 17
              TabStop = False
              AutoSize = False
              EditValue = 39717d
              ParentShowHint = False
              Properties.DateButtons = [btnToday]
              Properties.SaveTime = False
              Properties.ShowTime = False
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
              Height = 26
              Width = 90
            end
            object btnDateA5: TcxButton
              Tag = 2
              Left = 391
              Top = 18
              Width = 25
              Height = 24
              Cursor = crHandPoint
              DropDownMenu = pop_dateA1
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
              TabOrder = 7
            end
            object cxLabel27: TcxLabel
              Left = 427
              Top = 18
              AutoSize = False
              Caption = #44592#49324#49324#48264
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Color = clWhite
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = False
              Style.TextColor = 16744448
              Style.TransparentBorder = False
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 24
              Width = 59
              AnchorX = 457
              AnchorY = 30
            end
            object edt_SearchA5: TcxTextEdit
              Left = 484
              Top = 17
              AutoSize = False
              Properties.ImeMode = imSAlpha
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
              OnKeyDown = edt_SearchA5KeyDown
              Height = 26
              Width = 81
            end
            object cxGrid1: TcxGrid
              AlignWithMargins = True
              Left = 3
              Top = 46
              Width = 652
              Height = 108
              TabOrder = 10
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Office2010Silver'
              object cxGridRunList: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                OnCellDblClick = cxGridRunListCellDblClick
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsBehavior.PullFocusing = True
                OptionsCustomize.ColumnFiltering = False
                OptionsCustomize.ColumnGrouping = False
                OptionsCustomize.ColumnMoving = False
                OptionsData.Editing = False
                OptionsSelection.CellSelect = False
                OptionsView.NoDataToDisplayInfoText = ' '
                OptionsView.DataRowHeight = 22
                OptionsView.GroupByBox = False
                OptionsView.HeaderHeight = 23
                object cxGridDBColumn27: TcxGridDBColumn
                  DataBinding.FieldName = 'No'
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Sorting = False
                  Width = 35
                end
                object cxGridDBColumn28: TcxGridDBColumn
                  DataBinding.FieldName = #50868#54665#49692#48264
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Sorting = False
                  Width = 75
                end
                object cxGridRunListColumn1: TcxGridDBColumn
                  DataBinding.FieldName = #45432#49440#48264#54840
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                end
                object cxGridDBColumn29: TcxGridDBColumn
                  DataBinding.FieldName = #45432#49440#47749'('#49345')'
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Sorting = False
                  Width = 225
                end
                object cxGridDBColumn30: TcxGridDBColumn
                  DataBinding.FieldName = #45432#49440#47749'('#54616')'
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Sorting = False
                  Width = 225
                end
              end
              object cxGridLevel8: TcxGridLevel
                GridView = cxGridRunList
              end
            end
          end
          object cxGroupBox6: TcxGroupBox
            Left = 674
            Top = 2
            Caption = #50741#49496
            TabOrder = 1
            Height = 78
            Width = 399
            object btnMapPos: TcxButton
              Left = 277
              Top = 31
              Width = 102
              Height = 25
              Cursor = crHandPoint
              Caption = #51648#46020#50948#52824#48320#44221
              Colors.Default = 16635384
              Colors.Normal = 16773362
              Colors.Hot = 16360076
              Colors.Pressed = 16644080
              Colors.Disabled = 4227327
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.ImageIndex = 0
              OptionsImage.Images = cxImageList1
              ParentShowHint = False
              ShowHint = False
              TabOrder = 0
              TabStop = False
              OnClick = btnMapPosClick
            end
            object chkCenter: TcxCheckBox
              Left = 76
              Top = 34
              Caption = #49492#53952#50948#52824' '#49440#53469#49884' '#51473#49900#51340#54364#51060#46041
              ParentFont = False
              State = cbsChecked
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548#52404
              Style.Font.Style = []
              Style.LookAndFeel.SkinName = 'Sharp'
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 1
              Transparent = True
            end
            object chk_Search_Route: TcxCheckBox
              Left = 3
              Top = 34
              Caption = #44221#47196#53456#49353
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548#52404
              Style.Font.Style = []
              Style.LookAndFeel.SkinName = 'Sharp'
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 2
              Transparent = True
              OnClick = chk_Search_RouteClick
            end
            object cxButton1: TcxButton
              Left = 285
              Top = -7
              Width = 86
              Height = 32
              Cursor = crHandPoint
              Cancel = True
              Caption = #51312#54924
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              TabOrder = 3
              Visible = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548
              Font.Style = []
              ParentFont = False
              OnClick = cxButton1Click
            end
          end
          object cxGroupBox7: TcxGroupBox
            Left = 805
            Top = 85
            TabOrder = 2
            Height = 78
            Width = 268
            object cxLabel30: TcxLabel
              Left = 4
              Top = 5
              Caption = #8251' '#44060#48324#49440#53469' [ Ctrl + '#49440#53469' ] '#48143
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
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              AnchorY = 13
            end
            object btnRView: TcxButton
              Left = 126
              Top = 54
              Width = 137
              Height = 22
              Cursor = crHandPoint
              Cancel = True
              Caption = #44221' '#47196' '#48372' '#44592
              Enabled = False
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
            end
            object cxLabel31: TcxLabel
              Left = 11
              Top = 38
              Caption = '( '#50864#52769' '#47560#50864#49828' '#54045#50629' '#47700#45684' '#46608#45716' '#44221#47196#48372#44592' '#48260#53948' )'
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
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              AnchorY = 46
            end
            object cxLabel32: TcxLabel
              Left = 20
              Top = 21
              Caption = #48512#48516#49440#53469' [ Shift + '#49440#53469' ] '#54980' '#44221#47196#48372#44592
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
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              AnchorY = 29
            end
          end
          object cxGroupBox8: TcxGroupBox
            Left = 676
            Top = 85
            Caption = #44221#47196#51116#49373
            TabOrder = 3
            Height = 78
            Width = 125
            object btnMapPlay: TcxButton
              Left = 36
              Top = 41
              Width = 28
              Height = 20
              Cursor = crHandPoint
              Hint = #54788#50948#52824#48512#53552' '#51116#49373
              Colors.Default = 16635384
              Colors.Normal = 16773362
              Colors.Hot = 16360076
              Colors.Pressed = 16644080
              Colors.Disabled = 4227327
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
                610000001974455874536F6674776172650041646F626520496D616765526561
                647971C9653C00000011744558745469746C6500506C61793B53746172743B5D
                61407A000001F049444154785EAD904B6B13511886DF938C4E5A31C560A5174C
                68E3056C91D07A5D98B6D616BC54105CC4DB527F801050BA511411A550D14271
                2314ACC5955D14A90B770A820B15A9422B0DB69149C64E9C2493CB3973267E84
                5884566DC0071E38B3380FEF1CFC3746A74FAA2353273A50252E54D035AB160C
                6F1F4C1D7F32FCEC58A0EA407231EB9692B160735784B9F07978F2E8D0ED89FE
                4D6B0E64CCA28B0B81B6C03E74EF8978B636745E56143677F7697FF4EAC821F5
                9F01291D0821912E7C43412CC1DF588F03A1015F53C3EE3B5E9F3A736BBCF7EC
                91D3ADAE3F066CDB814D811C37A0673EA168E7A0281C417F13426D875B37FB82
                8FC30381D7D71F75F7ACBE409420B8036E5BC88B3434F3030C2B46A13C366E50
                B06BFB36ECDC71707F9DB7F9E5E068F81C2A28CB0B245D1692E667E82C40C0CC
                C7CBAE73D7C0343D48680652BAF62A9DE2EF0030B2A4FCFE0B8253C0CE4250E0
                17564E85AE99588ACF7E492C583726EE7D9C0460AD5820CB6FE0A0C0CB0BE8DB
                83F822C7F785989ED20B43CFC7E6C68C643E0D809336595A1110E547CC607E5E
                428F7DCD657FF0876F5EC4EFCFBE3792008AA4241DAC465FA465CBA59B1DA58B
                D742F6F968FBF8DEDEC610002FB9BEF2D80C7FA3EF4C4BFD852BEDD35DA7FC3D
                00EA489574930C6B44216BC99ACA99A14AD8F2D42AF809500AE0796F04355100
                00000049454E44AE426082}
              OptionsImage.ImageIndex = 0
              OptionsImage.Images = cxImageList1
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              TabStop = False
              OnClick = btnMapPlayClick
            end
            object btnMapStop: TcxButton
              Left = 66
              Top = 41
              Width = 28
              Height = 20
              Cursor = crHandPoint
              Hint = #47688#52644
              Colors.Default = 16635384
              Colors.Normal = 16773362
              Colors.Hot = 16360076
              Colors.Pressed = 16644080
              Colors.Disabled = 4227327
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
                610000001974455874536F6674776172650041646F626520496D616765526561
                647971C9653C0000000B744558745469746C650053746F703BBA6D204F000001
                2449444154785EAD91B14A03411086E74E4E7C085FC3C25EED62E1C3D8D8D9F8
                08DA59F80C4284086A9D46EC4451825828B990E4727BBB3BB371FE42482EE79E
                A0071F2C33DFFCECECA5F4C7EFDF0292D36EE7F2ECAAE394790B0E2E661603D2
                2061676FEB30DBDF3EA21870D4DDC5CC5280E7B09EA58106A3EB2870D4CDEA01
                093BD146452212050EDCFA0AE4BC36C51007890107EEEA5FF09A6AFC98583806
                1CB8AB014E8B63F346D61724411A410F8E6B0CB0B8C18446664093EA9D2C17C4
                C1019C51430F0EDCE615D0F4E2A9B0390D67AFF4317D0438A3861E9C1F56F042
                959BB6BD019CE647642B3E3725AD251B517263E0723D606E2ABEEDF79EE5AEFB
                4231FABD2751F706338B01E1E2E4E1E0FCF87EF337C0C5CC5280522A43E5B305
                38E577C017B8899A7278A6B7920000000049454E44AE426082}
              OptionsImage.ImageIndex = 0
              OptionsImage.Images = cxImageList1
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              TabStop = False
              OnClick = btnMapStopClick
            end
            object btnMapFPlay: TcxButton
              Left = 5
              Top = 41
              Width = 28
              Height = 20
              Cursor = crHandPoint
              Hint = #52376#51020#48512#53552' '#51116#49373
              Colors.Default = 16635384
              Colors.Normal = 16773362
              Colors.Hot = 16360076
              Colors.Pressed = 16644080
              Colors.Disabled = 4227327
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
                610000002A744558745469746C65004C6173743B4172726F773B466F72776172
                643B536B69703B4E6578743B526577696E643B5B449245000002934944415478
                5EA5935B48555D10C767EB399AA961178D34CE8B45F8701E7D2814CACA820A7A
                AAB07CA80CC98C0A310C4384B0A8C0822C8C48EA80DD03C920132F64A99C13A2
                562A1C022D341F3C712CB57D599769D66EE9F7E1AB1B8659336BE6B7FEB358DB
                404458CAE751CEA08F5CACCEC992FA01293882400152227086208504EEE6A4BB
                7E5195F38FA01578CF0786B0B82ED47EE0E2B32D14C791C51CAD0D41E1B52014
                5CE98583353DEE59641EBDEF75630D882F7BF01987C767B1FAF1081EB9DCD1B8
                F3445DD63CA87F8A4170D2720FAA080C7415DFEAC3A2DA9E2E17A401CBCEDE1F
                C4A88338FA1BB1E5D34F2CADEBB7F65F7873C7BFB364BD0619AAAEF2D110466D
                C4E33743AA312146CF6D7021C06208C3510989A9295074C81FBF2FDF7F322BB7
                6028EFD4D3CAD40D9B572B90BA9BEE71073897A0D479E6018201581261C61230
                3D479B845EEB5B03C70EAF5AD1FD31B5CABBBCBA68EAFBC80D468D8CEA045B04
                501B730E82C904086980C3054428A724666665802F332DBDB73BED3AA3BC2324
                384CB87DFF0128316B23FC21B292E948A042044E8B191B002D06B3A60D711E2F
                D8046142BA80853BB02D0ED3247F8E4C414C9B8394125030180C7E85E70F3B26
                42ADCDE596C941A9E56C1140C9FA4500D396A0D450278407C6E055E3BB99BEB6
                CE4BE196EAECB1CE9A80693B341E02D70A3C0B0022462D3709DFC293F0251876
                223FC6029191E6ABD3A3ED1394B6C9924D4B2B20C8FF5F624A7E791B963D19C5
                9C92D7B871CFEDA6347F6136E513F513372A5A23A0E26DA79BDE6F3FD78AB9C5
                2F3F509C340F48DE7AE62D6EDA5BDFBB2EBB74B78AF593357CF90D90B1E31EA4
                E7DD050D4B225BA97DACA10086E18E92A0C7B1C8B86F57034A2900258224A3C0
                F552485775A4A7D42D5EF2EFFC17EABC8B701AFC8B800000000049454E44AE42
                6082}
              OptionsImage.ImageIndex = 0
              OptionsImage.Images = cxImageList1
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              TabStop = False
              OnClick = btnMapFPlayClick
            end
            object chk_RView: TcxCheckBox
              Left = 7
              Top = 21
              Caption = #44221#47196#44536#47532#44592
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548#52404
              Style.Font.Style = []
              Style.LookAndFeel.SkinName = 'Sharp'
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 3
              Transparent = True
            end
          end
        end
        object PnlTop: TPanel
          Left = 0
          Top = 166
          Width = 521
          Height = 505
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
          object pnlRView: TPanel
            Left = 0
            Top = 0
            Width = 521
            Height = 505
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            Visible = False
            DesignSize = (
              521
              505)
            object cxLabel33: TcxLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Align = alTop
              AutoSize = False
              Caption = #44221' '#47196' '#48372' '#44592
              ParentColor = False
              Style.Color = 12615935
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 30
              Width = 515
              AnchorX = 261
              AnchorY = 18
            end
            object btnExit: TcxButton
              Left = 453
              Top = 5
              Width = 64
              Height = 26
              Cursor = crHandPoint
              Anchors = [akTop, akRight]
              Cancel = True
              Caption = #45803' '#44592
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              TabOrder = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548
              Font.Style = []
              ParentFont = False
              OnClick = btnExitClick
            end
            object cxGrdMC: TcxGrid
              AlignWithMargins = True
              Left = 3
              Top = 39
              Width = 515
              Height = 463
              Align = alClient
              TabOrder = 1
              LookAndFeel.NativeStyle = False
              object cxGrdMC_List: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                OnCellClick = cxGrdMV_ListCellClick
                OnCellDblClick = cxGrdMV_ListCellDblClick
                OnCustomDrawCell = cxGrdMV_ListCustomDrawCell
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsBehavior.PullFocusing = True
                OptionsCustomize.ColumnFiltering = False
                OptionsCustomize.ColumnGrouping = False
                OptionsCustomize.ColumnMoving = False
                OptionsData.Editing = False
                OptionsSelection.CellSelect = False
                OptionsView.NoDataToDisplayInfoText = ' '
                OptionsView.DataRowHeight = 20
                OptionsView.GroupByBox = False
                OptionsView.HeaderHeight = 20
                object cxGridDBColumn06: TcxGridDBColumn
                  DataBinding.FieldName = 'No'
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Sorting = False
                  Width = 146
                end
                object cxGridDBColumn11: TcxGridDBColumn
                  DataBinding.FieldName = #50948#46020
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Sorting = False
                  Width = 83
                end
                object cxGridDBColumn16: TcxGridDBColumn
                  DataBinding.FieldName = #44221#46020
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Sorting = False
                  Width = 83
                end
                object cxGridDBColumn17: TcxGridDBColumn
                  DataBinding.FieldName = #47196#44536#44592#47197#49884#44036
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Sorting = False
                  Width = 78
                end
                object cxGridDBColumn18: TcxGridDBColumn
                  DataBinding.FieldName = #50948#52824#51221#54869#46020
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Sorting = False
                  Width = 246
                end
                object cxGridDBColumn19: TcxGridDBColumn
                  DataBinding.FieldName = #47564#52264#50668#48512
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Sorting = False
                  Width = 66
                end
              end
              object cxGridLevel6: TcxGridLevel
                GridView = cxGrdMC_List
              end
            end
          end
          object cxGrdMV: TcxGrid
            Left = 0
            Top = 0
            Width = 521
            Height = 505
            Align = alClient
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Office2010Silver'
            object cxGrdMV_List: TcxGridDBTableView
              PopupMenu = PopupMenu1
              Navigator.Buttons.CustomButtons = <>
              OnCellClick = cxGrdMV_ListCellClick
              OnCellDblClick = cxGrdMV_ListCellDblClick
              OnCustomDrawCell = cxGrdMV_ListCustomDrawCell
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.PullFocusing = True
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsCustomize.ColumnMoving = False
              OptionsData.Editing = False
              OptionsSelection.CellSelect = False
              OptionsSelection.MultiSelect = True
              OptionsView.NoDataToDisplayInfoText = ' '
              OptionsView.DataRowHeight = 22
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 23
              object cxGrdMV_ListColumn1: TcxGridDBColumn
                DataBinding.FieldName = 'No'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 40
              end
              object cxGrdMV_ListColumn2: TcxGridDBColumn
                DataBinding.FieldName = #50948#46020
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Sorting = False
                Width = 83
              end
              object cxGrdMV_ListColumn3: TcxGridDBColumn
                DataBinding.FieldName = #44221#46020
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Sorting = False
                Width = 83
              end
              object cxGrdMV_ListColumn4: TcxGridDBColumn
                DataBinding.FieldName = #47196#44536#44592#47197#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Sorting = False
                Width = 116
              end
              object cxGrdMV_ListColumn5: TcxGridDBColumn
                DataBinding.FieldName = #50948#52824#51221#54869#46020
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Sorting = False
                Width = 66
              end
              object cxGrdMV_ListColumn6: TcxGridDBColumn
                DataBinding.FieldName = #47564#52264#50668#48512
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Sorting = False
                Width = 60
              end
            end
            object cxGrdMV_Level: TcxGridLevel
              GridView = cxGrdMV_List
            end
          end
        end
        object pnlHint: TPanel
          Left = 537
          Top = 350
          Width = 289
          Height = 43
          ParentCustomHint = False
          BevelKind = bkFlat
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Caption = #47196#44536#51064' '#51473#50640#45716' '#54788#51116' '#50948#52824#44050#51060' '#50630#49845#45768#45796'.'
          Color = 8934728
          Ctl3D = True
          DoubleBuffered = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentDoubleBuffered = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 4
          Visible = False
        end
      end
    end
  end
  object cxBrNo11: TcxTextEdit
    Left = 30
    Top = 316
    Style.Color = 15456255
    TabOrder = 1
    Text = #51648#49324#53076#46300
    Visible = False
    Width = 54
  end
  object cxHdNo11: TcxTextEdit
    Left = 83
    Top = 316
    Style.Color = 15456255
    TabOrder = 2
    Text = #48376#49324#53076#46300
    Visible = False
    Width = 54
  end
  object pop_dateA1: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = pop_dateA1Popup
    Left = 36
    Top = 240
    object MenuItem1: TMenuItem
      Caption = #50724#45720
      OnClick = MenuItemClick
    end
    object MenuItem2: TMenuItem
      Tag = 1
      Caption = #50612#51228
      OnClick = MenuItemClick
    end
    object MenuItem3: TMenuItem
      Tag = 2
      Caption = #52572#44540#51068#51452#51068
      OnClick = MenuItemClick
    end
    object MenuItem4: TMenuItem
      Tag = 3
      Caption = #52572#44540#54620#45804
      OnClick = MenuItemClick
    end
    object MenuItem5: TMenuItem
      Tag = 4
      Caption = '1'#51068'~'#47568#51068
      OnClick = MenuItemClick
    end
  end
  object dlgSave: TSaveDialog
    Filter = #50641#49472#54028#51068'(*.xls)|*.xls'
    Left = 192
    Top = 240
  end
  object pmExcelA1: TPopupMenu
    AutoHotkeys = maManual
    Left = 116
    Top = 240
    object mniN1: TMenuItem
      Caption = #50641' '#49472' '#45796' '#50868
      OnClick = mniN1Click
    end
  end
  object tm_Flash: TTimer
    Enabled = False
    Interval = 500
    OnTimer = tm_FlashTimer
    Left = 354
    Top = 339
  end
  object cxSTTStyle: TcxStyleRepository
    Left = 92
    Top = 139
    PixelsPerInch = 96
    object cxSTT_Field1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      TextColor = clWhite
    end
    object cxSTT_Field2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4227327
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      TextColor = clWhite
    end
    object cxSTT_Field3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      TextColor = clWhite
    end
    object cxSTT_Field4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clLime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      TextColor = clWhite
    end
    object cxSTT_Field5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16777156
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      TextColor = clWhite
    end
    object cxSTT_Field6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      TextColor = clWhite
    end
    object cxSTT_Field7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16767487
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      TextColor = clWhite
    end
    object cxSTT_Field8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13696976
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      TextColor = clWhite
    end
    object cxSTT_Field9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4707838
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      TextColor = clWhite
    end
    object cxSTT_Field10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16772846
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      TextColor = clWhite
    end
    object cxSTT_Field11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 3275741
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      TextColor = clWhite
    end
    object cxSTT_Field12: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11572221
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      TextColor = clWhite
    end
    object empty1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object empty2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      TextColor = clWhite
    end
    object empty3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clDefault
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      TextColor = clDefault
    end
    object empty4: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
    end
    object empty5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      TextColor = clWhite
    end
    object cxSTTChart: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 2105376
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyleBasic: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      TextColor = clWhite
    end
    object cxSTTChartGridLine: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 2105376
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      TextColor = 2105376
    end
    object cxStyleSmartPeek2: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      TextColor = 2631935
    end
    object cxStyleSmartPeek3: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      TextColor = 189
    end
    object cxStyleSaturday: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16642777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
    end
    object cxStyleSunDay: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15461117
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
    end
    object cxStyleGridBG: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16775150
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
    end
    object GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxSTT_Field1
      Styles.Content = cxSTT_Field2
      Styles.ContentEven = cxSTT_Field3
      Styles.ContentOdd = cxSTT_Field4
      Styles.FilterBox = cxSTT_Field5
      Styles.IncSearch = cxSTT_Field11
      Styles.Footer = cxSTT_Field6
      Styles.Group = cxSTT_Field7
      Styles.GroupByBox = cxSTT_Field8
      Styles.Header = cxSTT_Field9
      Styles.Inactive = cxSTT_Field10
      Styles.Indicator = cxSTT_Field12
      Styles.Preview = empty1
      Styles.Selection = empty2
      BuiltIn = True
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 711
    Top = 287
    object N1: TMenuItem
      Caption = #44221#47196#48372#44592
      OnClick = N1Click
    end
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 23986888
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000015744558745469746C65004E6578743B4172726F773B446F776E297B
          C1030000037D49444154785E3D8C7B4C957518C73FBFF77D0F1773719B02C1E1
          102097230C9C3587D60823896A1660FFB8C5269A290E2B1BA5560CE75CD91CB4
          590B128D59CD052CDBD208D72C98A6B8B4B2292574104F19729103C8B9BCB75F
          676CB567CF67CFF67D3E5F06EF1EE6E66C27B7E6BE04105B0F65A6341CCB6B7C
          FB84BBBFA92BFF465377FE4863A7FBE29EE3EE03DB5B96E5012A20BC73DDDCF0
          B5C2B0AF3D2C770328F51F64EF7EF3B31581EE813AF9A3E7A01C9A3A213DBE2F
          E4C0E82179F24ABD6CEA5C117AB52DA7C55D1C1B058891D9E308CF4C0735B56F
          380A1E8DE97067BA3796AFAE463A66B1AC1974398B108208713F114A0C86BE88
          3303DD0C8F0EF55EFC7A6AC3A59EC9790128B5EF64EF75E764EF5FBFF669C683
          BF806270B4A39FE1913190829C65C96C79A114A144921059444FDF29AE0EFE76
          E448C3D00EAD7297CB191D15B567EDEAC7F0CE9D435114C2C388778C0F770EA2
          08D87138174BEA9866106FA88FD2552578FEF2D456BFE66AD722A2B59A82DC82
          453EE31AA61D42450519A60A591949A88A40750874DB04DBC2B46D2643577928
          EF617562ECEC360DEC75C9C98BB967DCA1B9E53B141514452234404A2C1B842A
          D97FF024D202D396EC6E28277EE9034828D52C8B74256A9E90318F2B398547B2
          77B232F71980B02C11029A370F22A5E4F2EF3DFC70BD19DDF0B338CA8FB4A553
          B12C3B6226348E69195456E7D3D57F80F87893F4B4C48502D392B89C4B898D33
          17B20DCF1762D8063EFF3F18A6B415CB6474DA378D6E06993727A8AACAE7ADD6
          1A1C1AE88624FC84AA4263DB269EAB7413641CDD08F3EE1496614F287A409EFF
          FB6610BFE1C7AFDF23664988A4F47B7CDAF3EE8228047CFEED7B2C71FA884DD4
          0984FC048C79C6BC3A21BFBCA4266546DF364CB638B354D516062133C083AE38
          BEF9FE0CF9AE35CCF9EFF049EFEB945538990D4EA29B216C137E3EEF67F276F0
          150138CAB73ADF4FCD8AA82B2AD110428657E0301338DB3B8D6D49CA9E4AC0D0
          EE0236A0F0EB399DD13FF4AF7A5BBD1B35C01CBCE0DB2394B8E5367649C11A0D
          4D03C531CDF22207524A8CF06DDB36C180CDB50B3A63B7ACEB9E2B73DB81107D
          DE4D004A4ACE7DB18FD7A61E5DBF2B5DD67F9C21F79DCA901FFD5428DB2E17CA
          7DA733E5CBED19F2D970F6C48BCED3992B63920175C10DE3FF1220B2B82AB1B8
          AC36F558F94BCE3F2BEA5CF2C9BA34B96E5B9AB76C736AD7AAAAA40A201A50FE
          F3FE051EFDB1AFB7CF174E0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000012744558745469746C6500466F72776172643B4E657874EB6FF6E100
          00038E49444154785E358C5B6C945517869FBDBF3DE30C944E5B69A1353D4E18
          284D632D8E841AFE5A423A09171E5A4C4C631B5A954889891CF243438C371843
          3C26201E20140D5149893181009A68448BC84122125A1529E050DA32ED74A665
          CEF3EDEDF4C2B5B256DE8BF779D470782F6EB5082914150BDAC4C6B7BD659E22
          E70B2EB7586B29B91881436B3D9149F25D642A73E4C32DD7FF027470F69849D8
          9328877423859C83E52BFB7CFFCF2F98FFFA234B56B9CA8A2B29F65460599250
          34587577EAF6CA2B7F0F6EDFF2F1D2FDDF1C9EE82B5FB03E7573E633A3A45074
          6CD8ECD8F4BEEFB0AF727947A0A91DE398C1B6A3C4CC158411E47BF25958584B
          6DC50AE7B7E78FBDBAB693DABC02B5BE3ABF2BA66A3C1B64CF9BBE1DDE0A5F47
          6075807BC941B033EC7C6D005F7905DDDD4DB85C11ECB446C80758F7BF364E9D
          391148ACB9FAEE8553939BD5335B2BCBDD2E57DF9AA62708CE0E22A5646E2D65
          F07B7B7963F71E9EEF6CA4DA5B48369B24983A43CBCA6646EE8CF4B46FAB3CA8
          9C6ED555BFAC7E5E24738DAC4E616181C97D0BDA039DD47957B0F7E8566A9607
          696DF5A1314CA67EE7D15ABF151AFFFE6505BAB5B4348FFB990906062E716734
          82942095216F9E8B86BA0676F70EF0F9E9F7D8B7F728EB9FABA3A0284D514919
          065A946D53255D31529918A339784FCF552C2910B9B3B5414A4969E942363CB9
          934B434D7CDABF0BFF6A374DFE028C36E53981764653F7508E0CC212F81FAEE2
          BF89C65200600C8B8A3D54961503001691F81899ACD1CACE727B3A325DE229B4
          A8A92A615DDF8239114218FAB785B07279BE4B72E4E45B9CBEF8095D3D8D4877
          9C89D014764687543A61CE8EDE4AFA1D798240602979CEC740083E387C1CA743
          108B8FB26BFF463C8BC3747537124D8C914C24180F422A6E2EA8FBD3E9433786
          639B1F5AE2764CE89B848444590A210C17878F73E0C40ED6B454E32929606CE6
          3AB66D83B6B83E9460269CF9480D1E1DFF23B0B1FCC06F83A2B7A15961848D36
          5990822FCF6EE7A9362F313B4C3896043420B9F2739CE9C9F4D73F7D31F6A302
          B2C3E7227D4216D6697473FDE30AA5A0F3D995C4B3B962F22EDA680482644273
          ED5C9AF17FECA191CBB39B80943A13EC36CDE5FDF7EDB47E3A932E7C676ADCF4
          542E934C978D90FFA04408884E19C263865B439AF8AC7D72E4F2CC8B377E8D86
          72AC56007321279919FD33D6BBAA6DD1C178C4F192E510CDD292350683D6DCD1
          19FDCBEC74F6D0F9AFC67F0052730CC0BF1D299325183BB1F70000000049454E
          44AE426082}
      end>
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 712
    Top = 439
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13629363
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13290239
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
    end
  end
end

object Frm_SMSA3: TFrm_SMSA3
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
  object PnlMainA3: TPanel
    Left = 0
    Top = 0
    Width = 1121
    Height = 735
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object cxGridResultList: TcxGrid
      Left = 0
      Top = 74
      Width = 1121
      Height = 661
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
      object cxViewResultList: TcxGridDBTableView
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
        OnCellClick = cxViewResultListCellClick
        DataController.DataModeController.SmartRefresh = True
        DataController.Filter.Options = [fcoShowOperatorDescription, fcoSoftNull]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = cxColView1Column1
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = cxColView1Column7
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = cxColView1Column8
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = cxColView1Column9
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = cxColView1Column10
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
        OptionsCustomize.ColumnSorting = False
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.FocusRect = False
        OptionsView.NoDataToDisplayInfoText = '  '
        OptionsView.DataRowHeight = 22
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.Footer = True
        OptionsView.GridLineColor = clSilver
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        Styles.Selection = Frm_Main.cxStyle11
        OnColumnHeaderClick = cxViewColumnHeaderClick
        object cxColView1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'No.'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 47
        end
        object cxColView1Column2: TcxGridDBColumn
          DataBinding.FieldName = #45216#51676
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 147
        end
        object cxColView1Column3: TcxGridDBColumn
          DataBinding.FieldName = #51204#49569#49884#44036'('#50696#50557')'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 143
        end
        object cxColView1Column4: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 130
        end
        object cxColView1Column5: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 96
        end
        object cxColView1Column6: TcxGridDBColumn
          DataBinding.FieldName = #48156#49888#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 101
        end
        object cxColView1Column7: TcxGridDBColumn
          DataBinding.FieldName = #51204#49569#54943#49688
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
        end
        object cxColView1Column8: TcxGridDBColumn
          DataBinding.FieldName = #51204#49569#49457#44277
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
        end
        object cxColView1Column9: TcxGridDBColumn
          DataBinding.FieldName = #51204#49569#49892#54056
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
        end
        object cxColView1Column10: TcxGridDBColumn
          DataBinding.FieldName = #52264#44048#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0;-,0'
          HeaderAlignmentHorz = taCenter
          Width = 119
        end
        object cxViewResultListColumn1: TcxGridDBColumn
          Caption = #49345#49464#45796#50868#47196#46300
          PropertiesClassName = 'TcxHyperLinkEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 84
        end
        object cxViewResultListColumn2: TcxGridDBColumn
          Caption = 'M-Index'
          Visible = False
        end
      end
      object cxLevelResultList: TcxGridLevel
        GridView = cxViewResultList
      end
    end
    object pnl5: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1115
      Height = 68
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
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
        Height = 68
        Width = 1115
        object Shape1: TShape
          Left = 6
          Top = 37
          Width = 304
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape2: TShape
          Left = 6
          Top = 7
          Width = 267
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object btnDateA3: TcxButton
          Tag = 2
          Left = 290
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
          PopupMenu = pm1
          TabOrder = 0
          OnMouseDown = btnDateA3MouseDown
        end
        object btnExcelA3: TcxButton
          Left = 474
          Top = 36
          Width = 80
          Height = 25
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
          OnClick = btnExcelA3Click
        end
        object btnSearchA3: TcxButton
          Left = 390
          Top = 36
          Width = 80
          Height = 25
          Cursor = crHandPoint
          Caption = #44160#49353
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
          OnClick = btnSearchA3Click
        end
        object cxLabel13: TcxLabel
          Left = 562
          Top = 11
          Caption = 'SMS '#48156#49569' '#44208#44284' '#45796#50868#47196#46300#45716' '#52572#44540'3'#44060#50900' '#44620#51648#47564' '#44032#45733' '#54633#45768#45796'.'
          Transparent = True
        end
        object cxDtEndA3: TcxDateEdit
          Left = 205
          Top = 36
          AutoSize = False
          EditValue = 41640d
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Height = 26
          Width = 83
        end
        object cxDtStartA3: TcxDateEdit
          Left = 99
          Top = 36
          AutoSize = False
          EditValue = 41640d
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          Height = 26
          Width = 83
        end
        object lblSosokNameA3: TcxLabel
          Left = 99
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
          AnchorX = 327
          AnchorY = 19
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
        object cxLabel2: TcxLabel
          Left = 185
          Top = 42
          Caption = #8764
          Transparent = True
        end
      end
    end
  end
  object pm1: TPopupMenu
    AutoHotkeys = maManual
    Left = 684
    Top = 308
    object mni1: TMenuItem
      Caption = #50724#45720
      OnClick = mni1Click
    end
    object mni2: TMenuItem
      Caption = #50612#51228
      OnClick = mni2Click
    end
    object mni3: TMenuItem
      Caption = #52572#44540#51068#51452#51068
      OnClick = mni3Click
    end
    object mni4: TMenuItem
      Caption = #52572#44540#54620#45804
      OnClick = mni4Click
    end
    object mni5: TMenuItem
      Caption = '1'#51068'~'#47568#51068
      OnClick = mni5Click
    end
  end
  object pm3: TPopupMenu
    AutoHotkeys = maManual
    Left = 820
    Top = 604
    object mniN1: TMenuItem
      Caption = #50641' '#49472' '#45796' '#50868
      OnClick = mniN1Click
    end
  end
end

object Frm_WORA3: TFrm_WORA3
  Left = 281
  Top = 154
  BorderStyle = bsNone
  Caption = 'Frm_WORA3'
  ClientHeight = 741
  ClientWidth = 993
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
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 993
    Height = 741
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Shape3: TShape
      Left = 0
      Top = 59
      Width = 993
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
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Height = 59
      Width = 993
      object Shape1: TShape
        Left = 10
        Top = 5
        Width = 615
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape2: TShape
        Left = 10
        Top = 31
        Width = 259
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape5: TShape
        Left = 271
        Top = 31
        Width = 351
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object btnSearchA3: TcxButton
        Left = 628
        Top = 31
        Width = 122
        Height = 24
        Cursor = crHandPoint
        Caption = #44160' '#49353
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 0
        TabStop = False
        OnClick = btnSearchA3Click
      end
      object cxLabel54: TcxLabel
        Left = 25
        Top = 9
        Caption = #49548'       '#49549
        ParentColor = False
        ParentFont = False
        Style.Color = 16575968
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 50
        AnchorY = 18
      end
      object lblSosokNameA3: TcxLabel
        Left = 88
        Top = 4
        AutoSize = False
        Caption = #49548#49549
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Style.Color = clBtnFace
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 26
        Width = 538
        AnchorX = 357
        AnchorY = 17
      end
      object cxLabel30: TcxLabel
        Left = 629
        Top = 9
        Caption = #8251' '#54644#45817' '#44592#49324#47484' '#45908#48660#53364#47533#54616#49884#47732' '#49345#49464#45236#50857#51012' '#48372#49892#49688' '#51080#49845#45768#45796'.'
        Transparent = True
      end
      object cxLabel26: TcxLabel
        Left = 25
        Top = 36
        Caption = #53685#54633#44160#49353
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 51
        AnchorY = 44
      end
      object cxDtStartA3: TcxDateEdit
        Left = 341
        Top = 30
        TabStop = False
        AutoSize = False
        ParentShowHint = False
        Properties.DateButtons = [btnToday]
        ShowHint = True
        Style.BorderStyle = ebsOffice11
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        Height = 26
        Width = 90
      end
      object cxLabel28: TcxLabel
        Left = 431
        Top = 36
        Caption = '09:00 ~ '
        Transparent = True
      end
      object cxDtEndA3: TcxDateEdit
        Left = 475
        Top = 30
        TabStop = False
        AutoSize = False
        ParentShowHint = False
        Properties.DateButtons = [btnToday]
        ShowHint = True
        Style.BorderStyle = ebsOffice11
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 7
        Height = 26
        Width = 90
      end
      object cxLabel29: TcxLabel
        Left = 565
        Top = 36
        Caption = '09:00'
        Transparent = True
      end
      object cbSelList: TcxComboBox
        Left = 88
        Top = 30
        TabStop = False
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #44592#49324#49324#48264
          #44592#49324#47749)
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 9
        Height = 26
        Width = 78
      end
      object cxEdtSelText: TcxTextEdit
        Left = 166
        Top = 30
        TabStop = False
        AutoSize = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 10
        Height = 26
        Width = 104
      end
      object cxLabel27: TcxLabel
        Left = 282
        Top = 36
        Caption = #44592#44036#44160#49353
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 308
        AnchorY = 44
      end
      object RbButton1: TcxButton
        Left = 600
        Top = 31
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
        PopupMenu = pop_dateA3
        TabOrder = 12
        OnMouseDown = RbButton1MouseDown
      end
    end
    object cxGridA3: TcxGrid
      Left = 0
      Top = 61
      Width = 993
      Height = 680
      Align = alClient
      TabOrder = 1
      LookAndFeel.NativeStyle = True
      object cxgWkAttend: TcxGridDBBandedTableView
        PopupMenu = pmWkMenuA3
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = cxgWkAttendCellDblClick
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = cxgWkAttendColumn5
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = cxgWkAttendColumn6
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = cxgWkAttendColumn7
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = cxgWkAttendColumn8
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = cxgWkAttendColumn11
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = cxgWkAttendColumn12
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = cxgWkAttendColumn13
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = cxgWkAttendColumn9
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = cxgWkAttendColumn10
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.BandMoving = False
        OptionsSelection.CellSelect = False
        OptionsView.NoDataToDisplayInfoText = ' '
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        Styles.Selection = Frm_Main.cxStyle8
        Bands = <
          item
            Caption = 'No.'
            Options.Moving = False
            Width = 50
            OnHeaderClick = cxgWkAttendBands0HeaderClick
          end
          item
            Caption = #51648#49324'('#53076#46300')'
            Options.Moving = False
            Width = 140
            OnHeaderClick = cxgWkAttendBands1HeaderClick
          end
          item
            Caption = #44592#49324#49324#48264
            Options.Moving = False
            Width = 68
            OnHeaderClick = cxgWkAttendBands2HeaderClick
          end
          item
            Caption = #44592#49324#47749
            Options.Moving = False
            Width = 100
            OnHeaderClick = cxgWkAttendBands3HeaderClick
          end
          item
            Caption = #50756#47308
            Options.Moving = False
            Width = 140
          end
          item
            Caption = #51088#49324
            Options.Moving = False
            Position.BandIndex = 4
            Position.ColIndex = 0
            Width = 70
            OnHeaderClick = cxgWkAttendBands5HeaderClick
          end
          item
            Caption = #53440#49324
            Options.Moving = False
            Position.BandIndex = 4
            Position.ColIndex = 1
            Width = 70
            OnHeaderClick = cxgWkAttendBands6HeaderClick
          end
          item
            Caption = #48176#52264
            Options.Moving = False
            Width = 140
          end
          item
            Caption = #51088#49324
            Options.Moving = False
            Position.BandIndex = 7
            Position.ColIndex = 0
            Width = 70
            OnHeaderClick = cxgWkAttendBands8HeaderClick
          end
          item
            Caption = #53440#49324
            Options.Moving = False
            Position.BandIndex = 7
            Position.ColIndex = 1
            Width = 70
            OnHeaderClick = cxgWkAttendBands9HeaderClick
          end
          item
            Caption = #52712#49548
            Options.Moving = False
            Width = 140
          end
          item
            Caption = #51088#49324
            Options.Moving = False
            Position.BandIndex = 10
            Position.ColIndex = 0
            Width = 70
            OnHeaderClick = cxgWkAttendBands11HeaderClick
          end
          item
            Caption = #53440#49324
            Options.Moving = False
            Position.BandIndex = 10
            Position.ColIndex = 1
            Width = 70
            OnHeaderClick = cxgWkAttendBands12HeaderClick
          end
          item
            Caption = #50868#54665#44552#50529
            Options.Moving = False
            Width = 70
            OnHeaderClick = cxgWkAttendBands13HeaderClick
          end
          item
            Caption = #49688#51061#44552
            Options.Moving = False
            Width = 140
          end
          item
            Caption = #51088#49324
            Options.Moving = False
            Position.BandIndex = 14
            Position.ColIndex = 0
            Width = 70
            OnHeaderClick = cxgWkAttendBands15HeaderClick
          end
          item
            Caption = #53440#49324
            Options.Moving = False
            Position.BandIndex = 14
            Position.ColIndex = 1
            Width = 70
            OnHeaderClick = cxgWkAttendBands16HeaderClick
          end
          item
            Caption = #51648#49324#53076#46300
            Visible = False
          end>
        object cxgWkAttendColumn1: TcxGridDBBandedColumn
          Caption = 'Col01'
          DataBinding.FieldName = 'No'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxgWkAttendColumn2: TcxGridDBBandedColumn
          Caption = 'Col02'
          DataBinding.FieldName = #51648#49324'('#53076#46300')'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxgWkAttendColumn3: TcxGridDBBandedColumn
          Caption = 'Col03'
          DataBinding.FieldName = #44592#49324#49324#48264
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 20
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxgWkAttendColumn4: TcxGridDBBandedColumn
          Caption = 'Col04'
          DataBinding.FieldName = #44592#49324#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxgWkAttendColumn5: TcxGridDBBandedColumn
          Caption = 'Col05'
          DataBinding.FieldName = #51088#49324
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxgWkAttendColumn6: TcxGridDBBandedColumn
          Caption = 'Col06'
          DataBinding.FieldName = #53440#49324
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Position.BandIndex = 6
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxgWkAttendColumn7: TcxGridDBBandedColumn
          Caption = 'Col07'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Position.BandIndex = 8
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxgWkAttendColumn8: TcxGridDBBandedColumn
          Caption = 'Col08'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Position.BandIndex = 9
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxgWkAttendColumn9: TcxGridDBBandedColumn
          Caption = 'Col09'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Position.BandIndex = 11
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxgWkAttendColumn10: TcxGridDBBandedColumn
          Caption = 'Col10'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Position.BandIndex = 12
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxgWkAttendColumn11: TcxGridDBBandedColumn
          Caption = 'Col11'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          FooterAlignmentHorz = taRightJustify
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Position.BandIndex = 13
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxgWkAttendColumn12: TcxGridDBBandedColumn
          Caption = 'Col12'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          FooterAlignmentHorz = taRightJustify
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Position.BandIndex = 15
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxgWkAttendColumn13: TcxGridDBBandedColumn
          Caption = 'Col13'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          FooterAlignmentHorz = taRightJustify
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Position.BandIndex = 16
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxgWkAttendColumn14: TcxGridDBBandedColumn
          DataBinding.FieldName = #51648#49324#53076#46300
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 17
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
      end
      object cxGridA3Level1: TcxGridLevel
        GridView = cxgWkAttend
      end
    end
  end
  object pmWkMenuA3: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = pmWkMenuA3Popup
    Left = 131
    Top = 384
    object N29: TMenuItem
      Caption = #44592#49324#49688#51221
      OnClick = N29Click
    end
    object MenuItem24: TMenuItem
      Tag = 1
      Caption = #44592#49324#52880#49772#52649#51204
      OnClick = N29Click
    end
    object MenuItem35: TMenuItem
      Tag = 2
      Caption = #51204#54868#44152#44592
      OnClick = N29Click
    end
    object MenuItem36: TMenuItem
      Tag = 3
      Caption = 'SMS'#51204#49569
      OnClick = N29Click
    end
    object MenuItem37: TMenuItem
      Caption = '-'
    end
    object MenuItem38: TMenuItem
      Tag = 4
      Caption = #50641#49472#45796#50868
      OnClick = N29Click
    end
  end
  object pop_dateA3: TPopupMenu
    AutoHotkeys = maManual
    AutoPopup = False
    Left = 548
    Top = 128
    object MenuItem6: TMenuItem
      Caption = #50724#45720
      OnClick = MenuItem6Click
    end
    object MenuItem7: TMenuItem
      Caption = #50612#51228
      OnClick = MenuItem7Click
    end
    object MenuItem8: TMenuItem
      Caption = #52572#44540#51068#51452#51068
      OnClick = MenuItem8Click
    end
    object MenuItem9: TMenuItem
      Caption = #52572#44540#54620#45804
      OnClick = MenuItem9Click
    end
    object MenuItem10: TMenuItem
      Caption = '1'#51068'~'#47568#51068
      OnClick = MenuItem10Click
    end
  end
end

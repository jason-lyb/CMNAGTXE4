object Frm_WORA7: TFrm_WORA7
  Left = 281
  Top = 154
  BorderStyle = bsNone
  Caption = 'Frm_WORA7'
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
      Top = 34
      Width = 993
      Height = 2
      Align = alTop
      Brush.Style = bsClear
      Pen.Style = psClear
      ExplicitLeft = -6
      ExplicitTop = 23
      ExplicitWidth = 305
    end
    object Grid3: TcxGrid
      Left = 0
      Top = 36
      Width = 993
      Height = 705
      Align = alClient
      TabOrder = 2
      TabStop = False
      LookAndFeel.NativeStyle = True
      object Grid3View: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Editing = False
        OptionsView.NoDataToDisplayInfoText = ' '
        OptionsView.DataRowHeight = 22
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        object Grid3ViewColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'NO'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 40
        end
        object Grid3ViewColumn2: TcxGridDBColumn
          DataBinding.FieldName = #49324#48264'1'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
        end
        object Grid3ViewColumn3: TcxGridDBColumn
          DataBinding.FieldName = #49324#48264'2'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
        end
        object Grid3ViewColumn4: TcxGridDBColumn
          DataBinding.FieldName = #44592#49324#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object Grid3ViewColumn5: TcxGridDBColumn
          DataBinding.FieldName = '1'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn6: TcxGridDBColumn
          DataBinding.FieldName = '2'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn7: TcxGridDBColumn
          DataBinding.FieldName = '3'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn8: TcxGridDBColumn
          DataBinding.FieldName = '4'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn9: TcxGridDBColumn
          DataBinding.FieldName = '5'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn10: TcxGridDBColumn
          DataBinding.FieldName = '6'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn11: TcxGridDBColumn
          DataBinding.FieldName = '7'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn12: TcxGridDBColumn
          DataBinding.FieldName = '8'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn13: TcxGridDBColumn
          DataBinding.FieldName = '9'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn14: TcxGridDBColumn
          DataBinding.FieldName = '10'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn15: TcxGridDBColumn
          DataBinding.FieldName = '11'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn16: TcxGridDBColumn
          DataBinding.FieldName = '12'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn17: TcxGridDBColumn
          DataBinding.FieldName = '13'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn18: TcxGridDBColumn
          DataBinding.FieldName = '14'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn19: TcxGridDBColumn
          DataBinding.FieldName = '15'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn20: TcxGridDBColumn
          DataBinding.FieldName = '16'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn21: TcxGridDBColumn
          DataBinding.FieldName = '17'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn22: TcxGridDBColumn
          DataBinding.FieldName = '18'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn23: TcxGridDBColumn
          DataBinding.FieldName = '19'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn24: TcxGridDBColumn
          DataBinding.FieldName = '20'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn25: TcxGridDBColumn
          DataBinding.FieldName = '21'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn26: TcxGridDBColumn
          DataBinding.FieldName = '22'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn27: TcxGridDBColumn
          DataBinding.FieldName = '23'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn28: TcxGridDBColumn
          DataBinding.FieldName = '24'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn29: TcxGridDBColumn
          DataBinding.FieldName = '25'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn30: TcxGridDBColumn
          DataBinding.FieldName = '26'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn31: TcxGridDBColumn
          DataBinding.FieldName = '27'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn32: TcxGridDBColumn
          DataBinding.FieldName = '28'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn33: TcxGridDBColumn
          DataBinding.FieldName = '29'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn34: TcxGridDBColumn
          DataBinding.FieldName = '30'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn35: TcxGridDBColumn
          DataBinding.FieldName = '31'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
        object Grid3ViewColumn36: TcxGridDBColumn
          DataBinding.FieldName = #52636#44540
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0;-,0'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taRightJustify
          Width = 40
        end
        object Grid3ViewColumn37: TcxGridDBColumn
          Caption = #51068'(%)'
          DataBinding.FieldName = #51068'1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0;-,0'
          Width = 40
        end
        object Grid3ViewColumn38: TcxGridDBColumn
          DataBinding.FieldName = #49324#50857#47308
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0;-,0'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
        end
        object Grid3ViewColumn39: TcxGridDBColumn
          DataBinding.FieldName = #49345#53468
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
      end
      object Grid3Level: TcxGridLevel
        GridView = Grid3View
      end
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
      Height = 34
      Width = 993
      object Shape1: TShape
        Left = 10
        Top = 5
        Width = 127
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape2: TShape
        Left = 518
        Top = 5
        Width = 103
        Height = 24
        Pen.Color = 12566402
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
      object lblSosokNameA7: TcxLabel
        Left = 95
        Top = 4
        AutoSize = False
        Caption = #49548#49549
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = clBlack
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 26
        Width = 421
        AnchorX = 306
        AnchorY = 17
      end
      object cxSEYear: TcxSpinEdit
        Left = 517
        Top = 4
        AutoSize = False
        Properties.Alignment.Horz = taRightJustify
        Properties.CanEdit = False
        Properties.MaxValue = 3000.000000000000000000
        Properties.MinValue = 2000.000000000000000000
        Properties.ReadOnly = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Value = 2008
        Height = 26
        Width = 60
      end
      object cxSEMonth: TcxSpinEdit
        Left = 582
        Top = 4
        AutoSize = False
        Properties.Alignment.Horz = taRightJustify
        Properties.CanEdit = False
        Properties.MaxValue = 12.000000000000000000
        Properties.MinValue = 1.000000000000000000
        Properties.ReadOnly = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Value = 12
        Height = 26
        Width = 40
      end
      object btnSearchA7: TcxButton
        Left = 637
        Top = 5
        Width = 60
        Height = 24
        Cursor = crHandPoint
        Caption = #44160' '#49353
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 4
        TabStop = False
        OnClick = btnSearchA7Click
      end
      object TcxButton191: TcxButton
        Left = 762
        Top = 5
        Width = 60
        Height = 24
        Cursor = crHandPoint
        Caption = #51060#50857#50504#45236
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 5
        TabStop = False
        OnClick = TcxButton191Click
      end
      object btnExcelA7: TcxButton
        Left = 698
        Top = 5
        Width = 63
        Height = 24
        Cursor = crHandPoint
        Caption = #50641#49472#45796#50868
        Colors.Default = 16773362
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        TabOrder = 6
        OnClick = btnExcelA7Click
      end
    end
    object cxGridA7: TcxGrid
      Left = 0
      Top = 36
      Width = 993
      Height = 705
      Align = alClient
      TabOrder = 1
      TabStop = False
      LookAndFeel.NativeStyle = True
      object Grid4View: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Editing = False
        OptionsView.NoDataToDisplayInfoText = ' '
        OptionsView.DataRowHeight = 22
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        object Grid3ViewColumn40: TcxGridDBColumn
          DataBinding.FieldName = 'NO'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 40
        end
        object Grid3ViewColumn41: TcxGridDBColumn
          DataBinding.FieldName = #49324#48264'1'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
        end
        object Grid3ViewColumn42: TcxGridDBColumn
          DataBinding.FieldName = #49324#48264'2'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
        end
        object Grid3ViewColumn43: TcxGridDBColumn
          DataBinding.FieldName = #44592#49324#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object Grid3ViewColumn44: TcxGridDBColumn
          DataBinding.FieldName = '1'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 20
        end
        object Grid3ViewColumn45: TcxGridDBColumn
          DataBinding.FieldName = '2'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 20
        end
        object Grid3ViewColumn46: TcxGridDBColumn
          DataBinding.FieldName = '3'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 20
        end
        object Grid3ViewColumn47: TcxGridDBColumn
          DataBinding.FieldName = '4'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 20
        end
        object Grid3ViewColumn48: TcxGridDBColumn
          DataBinding.FieldName = '5'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 20
        end
        object Grid3ViewColumn49: TcxGridDBColumn
          DataBinding.FieldName = '6'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 20
        end
        object Grid3ViewColumn50: TcxGridDBColumn
          DataBinding.FieldName = '7'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 20
        end
        object Grid3ViewColumn51: TcxGridDBColumn
          DataBinding.FieldName = '8'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 20
        end
        object Grid3ViewColumn52: TcxGridDBColumn
          DataBinding.FieldName = '9'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 20
        end
        object Grid3ViewColumn53: TcxGridDBColumn
          DataBinding.FieldName = '10'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 21
        end
        object Grid3ViewColumn54: TcxGridDBColumn
          DataBinding.FieldName = '11'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 21
        end
        object Grid3ViewColumn55: TcxGridDBColumn
          DataBinding.FieldName = '12'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 21
        end
        object Grid3ViewColumn56: TcxGridDBColumn
          DataBinding.FieldName = '13'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 21
        end
        object Grid3ViewColumn57: TcxGridDBColumn
          DataBinding.FieldName = '14'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 21
        end
        object Grid3ViewColumn58: TcxGridDBColumn
          DataBinding.FieldName = '15'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 21
        end
        object Grid3ViewColumn59: TcxGridDBColumn
          DataBinding.FieldName = '16'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 21
        end
        object Grid3ViewColumn60: TcxGridDBColumn
          DataBinding.FieldName = '17'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 21
        end
        object Grid3ViewColumn61: TcxGridDBColumn
          DataBinding.FieldName = '18'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 21
        end
        object Grid3ViewColumn62: TcxGridDBColumn
          DataBinding.FieldName = '19'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 21
        end
        object Grid3ViewColumn63: TcxGridDBColumn
          DataBinding.FieldName = '20'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 21
        end
        object Grid3ViewColumn64: TcxGridDBColumn
          DataBinding.FieldName = '21'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 21
        end
        object Grid3ViewColumn65: TcxGridDBColumn
          DataBinding.FieldName = '22'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 21
        end
        object Grid3ViewColumn66: TcxGridDBColumn
          DataBinding.FieldName = '23'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 21
        end
        object Grid3ViewColumn67: TcxGridDBColumn
          DataBinding.FieldName = '24'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 21
        end
        object Grid3ViewColumn68: TcxGridDBColumn
          DataBinding.FieldName = '25'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 21
        end
        object Grid3ViewColumn69: TcxGridDBColumn
          DataBinding.FieldName = '26'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 21
        end
        object Grid3ViewColumn70: TcxGridDBColumn
          DataBinding.FieldName = '27'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 21
        end
        object Grid3ViewColumn71: TcxGridDBColumn
          DataBinding.FieldName = '28'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 21
        end
        object Grid3ViewColumn72: TcxGridDBColumn
          DataBinding.FieldName = '29'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 21
        end
        object Grid3ViewColumn73: TcxGridDBColumn
          DataBinding.FieldName = '30'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 21
        end
        object Grid3ViewColumn74: TcxGridDBColumn
          DataBinding.FieldName = '31'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle4
          Width = 21
        end
        object Grid3ViewColumn75: TcxGridDBColumn
          DataBinding.FieldName = #52636#44540
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          FooterAlignmentHorz = taRightJustify
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taRightJustify
          Width = 40
        end
        object Grid3ViewColumn76: TcxGridDBColumn
          Caption = #51068'(%)'
          DataBinding.FieldName = #51068'1'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          FooterAlignmentHorz = taRightJustify
          Width = 40
        end
        object Grid3ViewColumn77: TcxGridDBColumn
          DataBinding.FieldName = #49324#50857#47308
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0;-,0'
          FooterAlignmentHorz = taRightJustify
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
        end
        object Grid3ViewColumn78: TcxGridDBColumn
          DataBinding.FieldName = #49345#53468
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = Grid4View
      end
    end
    object pnlHelpA7: TPanel
      Left = 224
      Top = 256
      Width = 553
      Height = 198
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = 16316393
      TabOrder = 3
      Visible = False
      DesignSize = (
        549
        194)
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Caption = #51060#50857#50504#45236
        ParentBackground = False
        ParentColor = False
        Style.BorderStyle = ebsNone
        Style.Color = clBtnFace
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnMouseMove = cxGroupBox2MouseMove
        Height = 194
        Width = 549
        object cxLabel1: TcxLabel
          Left = 3
          Top = 14
          Align = alClient
          Caption = 
            #13#10'* '#50500#47000' '#52636#44540#51068#45824#48708' '#44592#49324#49324#50857#47308#45716' '#54980#48520#51648#49324#47196' '#49444#51221#46108' '#51648#49324#50640#45824#54620' '#44228#49328#52280#44256#50857#51060#47728', '#13#10'   '#44284#44144#51032' '#51221#54869#54620' '#49892#51228' '#52264#44048#50529 +
            #51008' ['#51221#49328']-['#44592#49324#49324#50857#47308']'#50640#49436' '#54869#51064#54616#49464#50836'.'#13#10#13#10'* '#49324#50857#47308' '#44228#49328' '#48169#48277#51008' '#51648#49324#51032' '#49324#50857#47308#51648#48520#48169#48277#51060' '#54980#48520'('#52636#44540#51068#44592#51456') '#49444 +
            #51221#49884' '#52636#44540'('#51068') * 500 ('#50896') '#51060#47728', '#13#10'   20 '#51068' '#51060#49345' '#52636#44540#49884#50640#45716' 15,000 ('#50896')'#51004#47196' '#44228#49328#46121#45768#45796'. '#44536#50808 +
            ' '#49444#51221#49884#45716' '#49444#51221#44050#51004#47196' '#44228#49328' '#46121#45768#45796'.'#13#10#13#10'* '#49324#48264'1 '#51008' '#53084#47560#45320' '#49324#48264#51060#44256', '#49324#48264'2 '#45716' '#51648#49324' '#51088#52404#49324#48264#51012' '#51032#48120' '#54633#45768#45796'.'#13 +
            #10#13#10'* '#52636#44540#44592#47197#51060' 1'#51068' '#51060#49345' '#51080#45716#44592#49324#47564' '#48372#50668' '#51665#45768#45796'.'#13#10#13#10'* '#54788#51116#49884#44036#51032' '#44592#49324' '#49345#53468' '#51077#45768#45796' '#44160#51221#49353' '#44544#50472'('#51221#49345') '#54028 +
            #46976#49353' '#44544#50472'('#51221#49345#50808' '#44592#53440') '#48744#44053' '#44544#50472'('#53748#51649#51060#44144#45208' '#13#10#49325#51228') '
          ParentColor = False
          ParentFont = False
          Style.Color = 15269887
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
      end
      object BtnClose: TcxButton
        Left = 526
        Top = 21
        Width = 20
        Height = 20
        Cursor = crHandPoint
        Hint = #45803#44592
        Anchors = [akTop, akRight]
        Colors.Default = 16635384
        Colors.Normal = 16773362
        Colors.Hot = 16360076
        Colors.Pressed = 16644080
        Colors.Disabled = 4227327
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
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TabStop = False
        OnClick = BtnCloseClick
      end
    end
  end
  object cxStyleRepositoryWorker: TcxStyleRepository
    Left = 8
    Top = 688
    PixelsPerInch = 96
    object cxStyleNormal: TcxStyle
    end
    object cxStyleSelected: TcxStyle
      AssignedValues = [svColor]
      Color = 4707838
    end
    object cxStyleSysLock: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clRed
    end
    object cxStyleSysLockSel: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4707838
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clRed
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 104
    Top = 688
    PixelsPerInch = 96
    object TcxStyle
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clBlue
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clRed
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor]
      Color = clHighlight
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor]
      Color = 15264511
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 72
    Top = 688
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clRed
    end
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 40
    Top = 688
    PixelsPerInch = 96
    object cxStyle4: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
  end
end

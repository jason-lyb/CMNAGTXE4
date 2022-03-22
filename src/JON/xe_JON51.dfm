object Frm_JON51: TFrm_JON51
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Frm_JON51'
  ClientHeight = 367
  ClientWidth = 1114
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 1114
    Height = 367
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object PnlLeft: TPanel
      Left = 112
      Top = 0
      Width = 1002
      Height = 367
      Align = alRight
      BevelOuter = bvNone
      BorderWidth = 3
      TabOrder = 0
      DesignSize = (
        1002
        367)
      object AdvGridMenu: TAdvStringGrid
        Left = 3
        Top = 3
        Width = 727
        Height = 361
        Cursor = crDefault
        Align = alLeft
        ColCount = 17
        DrawingStyle = gdsClassic
        FixedCols = 0
        RowCount = 20
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        OnMouseDown = AdvGridMenuMouseDown
        GridLineColor = 10658466
        HoverRowCells = [hcNormal, hcSelected]
        OnGetCellColor = AdvGridMenuGetCellColor
        OnGetAlignment = AdvGridMenuGetAlignment
        OnClickCell = AdvGridMenuClickCell
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ControlLook.FixedGradientHoverFrom = clGray
        ControlLook.FixedGradientHoverTo = clWhite
        ControlLook.FixedGradientDownFrom = clGray
        ControlLook.FixedGradientDownTo = clSilver
        ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownHeader.Font.Color = clWindowText
        ControlLook.DropDownHeader.Font.Height = -11
        ControlLook.DropDownHeader.Font.Name = 'Tahoma'
        ControlLook.DropDownHeader.Font.Style = []
        ControlLook.DropDownHeader.Visible = True
        ControlLook.DropDownHeader.Buttons = <>
        ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownFooter.Font.Color = clWindowText
        ControlLook.DropDownFooter.Font.Height = -11
        ControlLook.DropDownFooter.Font.Name = 'Tahoma'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'Tahoma'
        FilterDropDown.Font.Style = []
        FilterDropDownClear = '(All)'
        FilterEdit.TypeNames.Strings = (
          'Starts with'
          'Ends with'
          'Contains'
          'Not contains'
          'Equal'
          'Not equal'
          'Clear')
        FixedColWidth = 5
        FixedRowHeight = 22
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        HTMLSettings.ImageFolder = 'images'
        HTMLSettings.ImageBaseName = 'img'
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'Tahoma'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'Tahoma'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        ScrollSynch = True
        ScrollType = ssFlat
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'Tahoma'
        SearchFooter.Font.Style = []
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurrence'
        SearchFooter.HintFindPrev = 'Find previous occurrence'
        SearchFooter.HintHighlight = 'Highlight occurrences'
        SearchFooter.MatchCaseCaption = 'Match case'
        SearchFooter.ResultFormat = '(%d of %d)'
        ShowDesignHelper = False
        SortSettings.DefaultFormat = ssAutomatic
        Version = '8.4.7.0'
        ExplicitHeight = 419
        ColWidths = (
          5
          129
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64)
      end
      object grpMenuS: TcxGroupBox
        Left = 730
        Top = 3
        Align = alLeft
        Caption = #47700#45684' '#44160#49353
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Height = 361
        Width = 260
        object Shape2: TShape
          Left = 5
          Top = 19
          Width = 56
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxLabel54: TcxLabel
          Left = 13
          Top = 23
          Caption = #47700#45684#47749
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
          AnchorX = 32
          AnchorY = 32
        end
        object EdtSearch: TcxTextEdit
          Left = 54
          Top = 18
          AutoSize = False
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          OnKeyDown = EdtSearchKeyDown
          OnKeyUp = EdtSearchKeyUp
          OnMouseDown = AdvGridMenuMouseDown
          Height = 26
          Width = 140
        end
        object cxGridSch: TcxGrid
          Left = 3
          Top = 48
          Width = 254
          Height = 306
          Align = alBottom
          Anchors = [akLeft, akTop, akRight, akBottom]
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 2
          LookAndFeel.NativeStyle = False
          object cxGridSchView: TcxGridDBTableView
            OnKeyDown = cxGridSchViewKeyDown
            OnMouseDown = AdvGridMenuMouseDown
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
            OnCellClick = cxGridSchViewCellClick
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
            OptionsSelection.CellSelect = False
            OptionsView.FocusRect = False
            OptionsView.NoDataToDisplayInfoText = '  '
            OptionsView.DataRowHeight = 22
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 22
            Styles.Selection = Frm_Main.cxStyle11
            object cxGridDBColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'Key'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
              Width = 50
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = #45824#47700#45684
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
            end
            object cxGridDBColumn2: TcxGridDBColumn
              DataBinding.FieldName = #47700#45684#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 180
            end
            object cxGridDBColumn3: TcxGridDBColumn
              DataBinding.FieldName = #44428#54620
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Visible = False
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridSchView
          end
        end
        object BtnSearch: TcxButton
          Left = 198
          Top = 18
          Width = 57
          Height = 25
          Caption = #44160' '#49353
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          TabOrder = 3
          OnClick = BtnSearchClick
          OnMouseDown = AdvGridMenuMouseDown
        end
      end
      object cxBtnAllClose: TcxButton
        Left = 921
        Top = 3
        Width = 57
        Height = 19
        Anchors = [akTop, akRight]
        Caption = #51204#52404#45803#44592
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        TabOrder = 2
        OnClick = cxBtnAllCloseClick
        OnMouseDown = AdvGridMenuMouseDown
      end
      object BtncxPage8E: TcxButton
        Left = 979
        Top = 3
        Width = 20
        Height = 19
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E0000000000000000000000000000000000000000
          00000000395F000099FF000099FF000099FF000099FF000099FF000099FF0000
          99FF000099FF00005F9F00000000000000000000000000000000000000000000
          395F000099FF6666C2FF6666C2FF6666C2FF6666C2FF6666C2FF6666C2FF6666
          C2FF6666C2FF000099FF00005F9F00000000000000000000000000003C5F0000
          A1FF6666C7FF0000A1FF0000A1FF0000A1FF0000A1FF0000A1FF0000A1FF0000
          A1FF0000A1FF6666C7FF0000A1FF0000649F0000000000003F5F0000A8FF6666
          CBFF0000A8FF0000A8FF0000A8FF0000A8FF0000A8FF0000A8FF0000A8FF0000
          A8FF0000A8FF0000A8FF6666CBFF0000A8FF0000699F0000AFFF6666CFFF0000
          AFFF0000AFFF0000AFFFFFFFFFFF0000AFFF0000AFFF0000AFFF0000AFFFFFFF
          FFFF0000AFFF0000AFFF0000AFFF6666CFFF0000AFFF0000B6FF6666D3FF0000
          B6FF0000B6FFFFFFFFFFFFFFFFFFFFFFFFFF0000B6FF0000B6FFFFFFFFFFFFFF
          FFFFFFFFFFFF0000B6FF0000B6FF6666D3FF0000B6FF0000BEFF6666D8FF0000
          BEFF0000BEFF0000BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF0000BEFF0000BEFF0000BEFF6666D8FF0000BEFF0000C5FF6666DCFF0000
          C5FF0000C5FF0000C5FF0000C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          C5FF0000C5FF0000C5FF0000C5FF6666DCFF0000C5FF0000CCFF9999EBFF0000
          CCFF0000CCFF0000CCFF0000CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          CCFF0000CCFF0000CCFF0000CCFF9999EBFF0000CCFF0000D3FF9999EDFF0000
          D3FF0000D3FF0000D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF0000D3FF0000D3FF0000D3FF9999EDFF0000D3FF0000DBFF9999F1FF0000
          DBFF0000DBFFFFFFFFFFFFFFFFFFFFFFFFFF0000DBFF0000DBFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000DBFF0000DBFF9999F1FF0000DBFF0000E2FF9999F3FF0000
          E2FF0000E2FF0000E2FFFFFFFFFF0000E2FF0000E2FF0000E2FF0000E2FFFFFF
          FFFF0000E2FF0000E2FF0000E2FF9999F3FF0000E2FF000058600000E9FF9999
          F6FF0000E9FF0000E9FF0000E9FF0000E9FF0000E9FF0000E9FF0000E9FF0000
          E9FF0000E9FF0000E9FF9999F6FF0000E9FF0000919F0000000000005B600000
          F1FF9999F9FF0000F1FF0000F1FF0000F1FF0000F1FF0000F1FF0000F1FF0000
          F1FF0000F1FF9999F9FF0000F1FF0000969F0000000000000000000000000000
          5D600000F8FF9999FCFF9999FCFF9999FCFF9999FCFF9999FCFF9999FCFF9999
          FCFF9999FCFF0000F8FF00009B9F000000000000000000000000000000000000
          0000000060600000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF00009F9F000000000000000000000000}
        TabOrder = 3
      end
    end
  end
end

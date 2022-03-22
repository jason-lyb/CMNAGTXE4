object Frm_JON30: TFrm_JON30
  Tag = 100
  Left = -600
  Top = 227
  Caption = 'cal'
  ClientHeight = 589
  ClientWidth = 592
  Color = clBtnFace
  Constraints.MinHeight = 329
  Constraints.MinWidth = 570
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poDesigned
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  DesignSize = (
    592
    589)
  TextHeight = 12
  object pnlBottom: TPanel
    Left = 0
    Top = 33
    Width = 592
    Height = 556
    Align = alClient
    BevelOuter = bvNone
    DoubleBuffered = False
    ParentColor = True
    ParentDoubleBuffered = False
    ShowCaption = False
    TabOrder = 0
    OnResize = pnlBottomResize
    DesignSize = (
      592
      556)
    object pnlMap: TPanel
      Left = 0
      Top = 298
      Width = 592
      Height = 258
      Align = alClient
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object mMap: TTalMapXCtrl
        Left = 0
        Top = 0
        Width = 592
        Height = 258
        Align = alClient
        PopupMenu = pmAcceptMap
        TabOrder = 0
        OnCreate = TalMapXCtrl1Create
        OnMouseMove = TalMapXCtrl1MouseMove
        OnStateChange = TalMapXCtrl1StateChange
        OnUI_MouseUp = TalMapXCtrl1UI_MouseUp
        OnUI_MouseLeave = mMapUI_MouseLeave
        OnUI_MouseHover = mMapUI_MouseHover
        OnPOI_Click = mMapPOI_Click
        OnPOI_DblClick = TalMapXCtrl1POI_DblClick
        ExplicitTop = -24
        ExplicitWidth = 582
        ExplicitHeight = 229
        ControlData = {00090000}
      end
    end
    object pnlPOI: TPanel
      Left = 0
      Top = 0
      Width = 592
      Height = 298
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object pnl_02END: TPanel
        Left = 0
        Top = 0
        Width = 592
        Height = 298
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 1
        object AdvStringGrid4: TAdvStringGrid
          Left = 0
          Top = 0
          Width = 592
          Height = 70
          Align = alTop
          ColCount = 9
          DefaultColWidth = 30
          DefaultDrawing = True
          DrawingStyle = gdsClassic
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
          OnEnter = AdvStringGrid1Enter
          OnKeyUp = AdvStringGrid4KeyUp
          OnGetAlignment = AdvStringGrid2GetAlignment
          OnClickCell = AdvStringGrid4ClickCell
          OnDblClickCell = AdvStringGrid4DblClickCell
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          BackGround.Color = clSilver
          BackGround.ColorTo = clWindow
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
          FilterDropDown.Font.Name = 'MS Sans Serif'
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
          FixedColWidth = 30
          FixedRowHeight = 22
          FixedFont.Charset = ANSI_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -12
          FixedFont.Name = 'Verdana'
          FixedFont.Style = []
          FloatFormat = '%.2f'
          GridImages = cxImageList1
          HoverButtons.Buttons = <>
          HTMLSettings.ImageFolder = 'images'
          HTMLSettings.ImageBaseName = 'img'
          MouseActions.AutoSizeColOnDblClick = False
          PrintSettings.DateFormat = 'dd/mm/yyyy'
          PrintSettings.Font.Charset = DEFAULT_CHARSET
          PrintSettings.Font.Color = clWindowText
          PrintSettings.Font.Height = -11
          PrintSettings.Font.Name = 'MS Sans Serif'
          PrintSettings.Font.Style = []
          PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
          PrintSettings.FixedFont.Color = clWindowText
          PrintSettings.FixedFont.Height = -11
          PrintSettings.FixedFont.Name = 'MS Sans Serif'
          PrintSettings.FixedFont.Style = []
          PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
          PrintSettings.HeaderFont.Color = clWindowText
          PrintSettings.HeaderFont.Height = -11
          PrintSettings.HeaderFont.Name = 'MS Sans Serif'
          PrintSettings.HeaderFont.Style = []
          PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
          PrintSettings.FooterFont.Color = clWindowText
          PrintSettings.FooterFont.Height = -11
          PrintSettings.FooterFont.Name = 'MS Sans Serif'
          PrintSettings.FooterFont.Style = []
          PrintSettings.PageNumSep = '/'
          ScrollSynch = True
          ScrollType = ssFlat
          SearchFooter.FindNextCaption = 'Find &next'
          SearchFooter.FindPrevCaption = 'Find &previous'
          SearchFooter.Font.Charset = DEFAULT_CHARSET
          SearchFooter.Font.Color = clWindowText
          SearchFooter.Font.Height = -11
          SearchFooter.Font.Name = 'MS Sans Serif'
          SearchFooter.Font.Style = []
          SearchFooter.HighLightCaption = 'Highlight'
          SearchFooter.HintClose = 'Close'
          SearchFooter.HintFindNext = 'Find next occurence'
          SearchFooter.HintFindPrev = 'Find previous occurence'
          SearchFooter.HintHighlight = 'Highlight occurences'
          SearchFooter.MatchCaseCaption = 'Match case'
          SearchFooter.ResultFormat = '(%d of %d)'
          SelectionColor = 12377310
          SelectionTextColor = clWindowText
          ShowDesignHelper = False
          Version = '8.6.7.0'
          ExplicitWidth = 554
          ColWidths = (
            30
            30
            30
            30
            30
            30
            30
            30
            30)
        end
        object PnlClient2: TPanel
          Left = 0
          Top = 70
          Width = 592
          Height = 164
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          OnResize = PnlClient2Resize
          object AdvStringGrid5: TAdvStringGrid
            Left = 0
            Top = 0
            Width = 592
            Height = 164
            Align = alClient
            ColCount = 13
            DefaultRowHeight = 20
            DefaultDrawing = True
            DrawingStyle = gdsClassic
            FixedCols = 0
            RowCount = 2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goRowSelect]
            ParentFont = False
            ParentShowHint = False
            PopupMenu = pm_ErrorPOI
            ScrollBars = ssVertical
            ShowHint = True
            TabOrder = 1
            OnDrawCell = AdvStringGrid5DrawCell
            OnEnter = AdvStringGrid1Enter
            OnKeyUp = AdvStringGrid5KeyUp
            OnGetCellColor = AdvStringGrid1GetCellColor
            OnGetAlignment = AdvStringGrid5GetAlignment
            OnGridHint = AdvStringGrid5GridHint
            OnClickCell = AdvStringGrid5ClickCell
            OnDblClickCell = AdvStringGrid5DblClickCell
            ActiveCellFont.Charset = ANSI_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -12
            ActiveCellFont.Name = #44404#47548#52404
            ActiveCellFont.Style = []
            BackGround.Color = clGrayText
            BackGround.ColorTo = clWindow
            ColumnHeaders.Strings = (
              #51452#49548
              #49345#49464#51648#47749
              #51064#44540'POI'
              #44144#47532
              'X'#51340#54364
              'Y'#51340#54364)
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
            FilterDropDown.Font.Name = 'MS Sans Serif'
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
            FixedColWidth = 267
            FixedRowHeight = 5
            FixedRowAlways = True
            FixedFont.Charset = ANSI_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -11
            FixedFont.Name = 'Verdana'
            FixedFont.Style = []
            FloatFormat = '%.2f'
            GridImages = cxImageList1
            HoverButtons.Buttons = <>
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            MouseActions.AutoSizeColOnDblClick = False
            PrintSettings.DateFormat = 'dd/mm/yyyy'
            PrintSettings.Font.Charset = DEFAULT_CHARSET
            PrintSettings.Font.Color = clWindowText
            PrintSettings.Font.Height = -11
            PrintSettings.Font.Name = 'MS Sans Serif'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'MS Sans Serif'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'MS Sans Serif'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'MS Sans Serif'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            ScrollSynch = True
            ScrollType = ssFlat
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'MS Sans Serif'
            SearchFooter.Font.Style = []
            SearchFooter.HighLightCaption = 'Highlight'
            SearchFooter.HintClose = 'Close'
            SearchFooter.HintFindNext = 'Find next occurence'
            SearchFooter.HintFindPrev = 'Find previous occurence'
            SearchFooter.HintHighlight = 'Highlight occurences'
            SearchFooter.MatchCaseCaption = 'Match case'
            SearchFooter.ResultFormat = '(%d of %d)'
            SelectionColor = 15000781
            SelectionTextColor = clWindowText
            ShowDesignHelper = False
            Version = '8.6.7.0'
            ExplicitTop = 49
            ExplicitWidth = 554
            ExplicitHeight = 57
            ColWidths = (
              267
              179
              142
              44
              53
              75
              64
              64
              64
              64
              64
              64
              64)
            RowHeights = (
              5
              20)
            object BtnLClose2: TcxButton
              Left = 514
              Top = 114
              Width = 26
              Height = 14
              Cursor = crHandPoint
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                424D360400000000000036000000280000001000000010000000010020000000
                000000000000C40E0000C40E0000000000000000000000000000000000000000
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
                0000707070B3A0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0
                A0FFA0A0A0FF707070B300000000000000000000000000000000000000000000
                0000A0A0A0FFD4D4D4FFD4D4D4FFD4D4D4FFC8C8C8FFC8C8C8FFD4D4D4FFD4D4
                D4FFD4D4D4FFA0A0A0FF00000000000000000000000000000000000000000000
                000000000000A0A0A0FFDFDFDFFFDFDFDFFFD5D5D5FFD5D5D5FFDFDFDFFFDFDF
                DFFFA0A0A0FF0000000000000000000000000000000000000000000000000000
                00000000000000000000A0A0A0FFEBEBEBFFE8E8E8FFE8E8E8FFEBEBEBFFA0A0
                A0FF000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000A0A0A0FFF1F1F1FFF1F1F1FFA0A0A0FF0000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000A0A0A0FFA0A0A0FF000000000000
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
                00000000000000000000000000000000000000000000}
              TabOrder = 4
              Visible = False
              OnClick = BtnLClose2Click
            end
          end
          object AdvStringGrid5L: TAdvStringGrid
            Left = 262
            Top = 121
            Width = 330
            Height = 64
            ColCount = 10
            DefaultRowHeight = 20
            DefaultDrawing = True
            DrawingStyle = gdsClassic
            FixedCols = 0
            RowCount = 3
            FixedRows = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goRowSelect]
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
            Visible = False
            OnEnter = AdvStringGrid1Enter
            OnKeyUp = AdvStringGrid5LKeyUp
            OnClickCell = AdvStringGrid5LClickCell
            OnDblClickCell = AdvStringGrid5LDblClickCell
            OnResize = AdvStringGrid5LResize
            ActiveCellFont.Charset = ANSI_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -12
            ActiveCellFont.Name = #44404#47548#52404
            ActiveCellFont.Style = []
            BackGround.Color = 16698306
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
            FilterDropDown.Font.Name = 'MS Sans Serif'
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
            FixedColWidth = 30
            FixedRowHeight = 20
            FixedFont.Charset = ANSI_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -12
            FixedFont.Name = 'Verdana'
            FixedFont.Style = []
            FloatFormat = '%.2f'
            HoverButtons.Buttons = <>
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            MouseActions.AutoSizeColOnDblClick = False
            PrintSettings.DateFormat = 'dd/mm/yyyy'
            PrintSettings.Font.Charset = DEFAULT_CHARSET
            PrintSettings.Font.Color = clWindowText
            PrintSettings.Font.Height = -11
            PrintSettings.Font.Name = 'MS Sans Serif'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'MS Sans Serif'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'MS Sans Serif'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'MS Sans Serif'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            ScrollSynch = True
            ScrollType = ssFlat
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'MS Sans Serif'
            SearchFooter.Font.Style = []
            SearchFooter.HighLightCaption = 'Highlight'
            SearchFooter.HintClose = 'Close'
            SearchFooter.HintFindNext = 'Find next occurence'
            SearchFooter.HintFindPrev = 'Find previous occurence'
            SearchFooter.HintHighlight = 'Highlight occurences'
            SearchFooter.MatchCaseCaption = 'Match case'
            SearchFooter.ResultFormat = '(%d of %d)'
            SelectionColor = 12901373
            SelectionTextColor = clWindowText
            ShowDesignHelper = False
            Version = '8.6.7.0'
            ColWidths = (
              30
              42
              50
              190
              164
              78
              64
              64
              64
              64)
          end
        end
        object AdvStringGrid6: TAdvStringGrid
          Left = 0
          Top = 234
          Width = 592
          Height = 64
          Align = alBottom
          ColCount = 10
          DefaultRowHeight = 20
          DefaultDrawing = True
          DrawingStyle = gdsClassic
          FixedCols = 0
          RowCount = 3
          FixedRows = 0
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing, goRowSelect]
          ParentFont = False
          TabOrder = 2
          OnEnter = AdvStringGrid1Enter
          OnKeyUp = AdvStringGrid6KeyUp
          OnGetCellColor = AdvStringGrid3GetCellColor
          OnClickCell = AdvStringGrid6ClickCell
          OnDblClickCell = AdvStringGrid6DblClickCell
          ActiveCellFont.Charset = ANSI_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -12
          ActiveCellFont.Name = #44404#47548#52404
          ActiveCellFont.Style = []
          BackGround.Color = 16698306
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
          FilterDropDown.Font.Name = 'MS Sans Serif'
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
          FixedColWidth = 30
          FixedRowHeight = 20
          FixedFont.Charset = ANSI_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -12
          FixedFont.Name = 'Verdana'
          FixedFont.Style = []
          FloatFormat = '%.2f'
          GridImages = cxImageList1
          HoverButtons.Buttons = <>
          HTMLSettings.ImageFolder = 'images'
          HTMLSettings.ImageBaseName = 'img'
          MouseActions.AutoSizeColOnDblClick = False
          PrintSettings.DateFormat = 'dd/mm/yyyy'
          PrintSettings.Font.Charset = DEFAULT_CHARSET
          PrintSettings.Font.Color = clWindowText
          PrintSettings.Font.Height = -11
          PrintSettings.Font.Name = 'MS Sans Serif'
          PrintSettings.Font.Style = []
          PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
          PrintSettings.FixedFont.Color = clWindowText
          PrintSettings.FixedFont.Height = -11
          PrintSettings.FixedFont.Name = 'MS Sans Serif'
          PrintSettings.FixedFont.Style = []
          PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
          PrintSettings.HeaderFont.Color = clWindowText
          PrintSettings.HeaderFont.Height = -11
          PrintSettings.HeaderFont.Name = 'MS Sans Serif'
          PrintSettings.HeaderFont.Style = []
          PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
          PrintSettings.FooterFont.Color = clWindowText
          PrintSettings.FooterFont.Height = -11
          PrintSettings.FooterFont.Name = 'MS Sans Serif'
          PrintSettings.FooterFont.Style = []
          PrintSettings.PageNumSep = '/'
          ScrollSynch = True
          ScrollType = ssFlat
          SearchFooter.FindNextCaption = 'Find &next'
          SearchFooter.FindPrevCaption = 'Find &previous'
          SearchFooter.Font.Charset = DEFAULT_CHARSET
          SearchFooter.Font.Color = clWindowText
          SearchFooter.Font.Height = -11
          SearchFooter.Font.Name = 'MS Sans Serif'
          SearchFooter.Font.Style = []
          SearchFooter.HighLightCaption = 'Highlight'
          SearchFooter.HintClose = 'Close'
          SearchFooter.HintFindNext = 'Find next occurence'
          SearchFooter.HintFindPrev = 'Find previous occurence'
          SearchFooter.HintHighlight = 'Highlight occurences'
          SearchFooter.MatchCaseCaption = 'Match case'
          SearchFooter.ResultFormat = '(%d of %d)'
          SelectionColor = 8964783
          SelectionTextColor = clWindowText
          ShowDesignHelper = False
          Version = '8.6.7.0'
          ExplicitWidth = 554
          ColWidths = (
            30
            42
            50
            190
            164
            78
            64
            64
            64
            64)
        end
      end
      object pnl_03VIA: TPanel
        Left = 0
        Top = 0
        Width = 592
        Height = 298
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 2
        object AdvStringGrid7: TAdvStringGrid
          Left = 0
          Top = 0
          Width = 592
          Height = 70
          Align = alTop
          ColCount = 9
          DefaultColWidth = 30
          DefaultDrawing = True
          DrawingStyle = gdsClassic
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
          OnEnter = AdvStringGrid1Enter
          OnKeyUp = AdvStringGrid7KeyUp
          OnGetAlignment = AdvStringGrid2GetAlignment
          OnClickCell = AdvStringGrid7ClickCell
          OnDblClickCell = AdvStringGrid7DblClickCell
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          BackGround.Color = clSilver
          BackGround.ColorTo = clWindow
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
          FilterDropDown.Font.Name = 'MS Sans Serif'
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
          FixedColWidth = 20
          FixedRowHeight = 22
          FixedFont.Charset = ANSI_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -12
          FixedFont.Name = 'Verdana'
          FixedFont.Style = []
          FloatFormat = '%.2f'
          GridImages = cxImageList1
          HoverButtons.Buttons = <>
          HTMLSettings.ImageFolder = 'images'
          HTMLSettings.ImageBaseName = 'img'
          MouseActions.AutoSizeColOnDblClick = False
          PrintSettings.DateFormat = 'dd/mm/yyyy'
          PrintSettings.Font.Charset = DEFAULT_CHARSET
          PrintSettings.Font.Color = clWindowText
          PrintSettings.Font.Height = -11
          PrintSettings.Font.Name = 'MS Sans Serif'
          PrintSettings.Font.Style = []
          PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
          PrintSettings.FixedFont.Color = clWindowText
          PrintSettings.FixedFont.Height = -11
          PrintSettings.FixedFont.Name = 'MS Sans Serif'
          PrintSettings.FixedFont.Style = []
          PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
          PrintSettings.HeaderFont.Color = clWindowText
          PrintSettings.HeaderFont.Height = -11
          PrintSettings.HeaderFont.Name = 'MS Sans Serif'
          PrintSettings.HeaderFont.Style = []
          PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
          PrintSettings.FooterFont.Color = clWindowText
          PrintSettings.FooterFont.Height = -11
          PrintSettings.FooterFont.Name = 'MS Sans Serif'
          PrintSettings.FooterFont.Style = []
          PrintSettings.PageNumSep = '/'
          ScrollSynch = True
          ScrollType = ssFlat
          SearchFooter.FindNextCaption = 'Find &next'
          SearchFooter.FindPrevCaption = 'Find &previous'
          SearchFooter.Font.Charset = DEFAULT_CHARSET
          SearchFooter.Font.Color = clWindowText
          SearchFooter.Font.Height = -11
          SearchFooter.Font.Name = 'MS Sans Serif'
          SearchFooter.Font.Style = []
          SearchFooter.HighLightCaption = 'Highlight'
          SearchFooter.HintClose = 'Close'
          SearchFooter.HintFindNext = 'Find next occurence'
          SearchFooter.HintFindPrev = 'Find previous occurence'
          SearchFooter.HintHighlight = 'Highlight occurences'
          SearchFooter.MatchCaseCaption = 'Match case'
          SearchFooter.ResultFormat = '(%d of %d)'
          SelectionColor = 12377310
          SelectionTextColor = clWindowText
          ShowDesignHelper = False
          Version = '8.6.7.0'
          ExplicitWidth = 554
          ColWidths = (
            20
            20
            20
            20
            20
            20
            20
            20
            519)
        end
        object PnlClient3: TPanel
          Left = 0
          Top = 70
          Width = 592
          Height = 164
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          OnResize = PnlClient3Resize
          object AdvStringGrid8: TAdvStringGrid
            Left = 0
            Top = 0
            Width = 592
            Height = 164
            Align = alClient
            ColCount = 13
            DefaultRowHeight = 20
            DefaultDrawing = True
            DrawingStyle = gdsClassic
            FixedCols = 0
            RowCount = 2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goRowSelect]
            ParentFont = False
            ParentShowHint = False
            PopupMenu = pm_ErrorPOI
            ScrollBars = ssVertical
            ShowHint = True
            TabOrder = 1
            OnDrawCell = AdvStringGrid8DrawCell
            OnEnter = AdvStringGrid1Enter
            OnKeyUp = AdvStringGrid8KeyUp
            OnGetCellColor = AdvStringGrid1GetCellColor
            OnGetAlignment = AdvStringGrid8GetAlignment
            OnGridHint = AdvStringGrid8GridHint
            OnClickCell = AdvStringGrid8ClickCell
            OnDblClickCell = AdvStringGrid8DblClickCell
            ActiveCellFont.Charset = ANSI_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -12
            ActiveCellFont.Name = #44404#47548#52404
            ActiveCellFont.Style = []
            BackGround.Color = clGrayText
            BackGround.ColorTo = clWindow
            ColumnHeaders.Strings = (
              #51452#49548
              #49345#49464#51648#47749
              #51064#44540'POI'
              #44144#47532
              'X'#51340#54364
              'Y'#51340#54364)
            ColumnSize.Save = True
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
            FilterDropDown.Font.Name = 'MS Sans Serif'
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
            FixedColWidth = 212
            FixedRowHeight = 5
            FixedRowAlways = True
            FixedFont.Charset = ANSI_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -11
            FixedFont.Name = 'Verdana'
            FixedFont.Style = []
            FloatFormat = '%.2f'
            GridImages = cxImageList1
            HoverButtons.Buttons = <>
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            MouseActions.AutoSizeColOnDblClick = False
            PrintSettings.DateFormat = 'dd/mm/yyyy'
            PrintSettings.Font.Charset = DEFAULT_CHARSET
            PrintSettings.Font.Color = clWindowText
            PrintSettings.Font.Height = -11
            PrintSettings.Font.Name = 'MS Sans Serif'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'MS Sans Serif'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'MS Sans Serif'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'MS Sans Serif'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            ScrollSynch = True
            ScrollType = ssFlat
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'MS Sans Serif'
            SearchFooter.Font.Style = []
            SearchFooter.HighLightCaption = 'Highlight'
            SearchFooter.HintClose = 'Close'
            SearchFooter.HintFindNext = 'Find next occurence'
            SearchFooter.HintFindPrev = 'Find previous occurence'
            SearchFooter.HintHighlight = 'Highlight occurences'
            SearchFooter.MatchCaseCaption = 'Match case'
            SearchFooter.ResultFormat = '(%d of %d)'
            SelectionColor = 15000781
            SelectionTextColor = clWindowText
            ShowDesignHelper = False
            Version = '8.6.7.0'
            ExplicitTop = 49
            ExplicitWidth = 554
            ExplicitHeight = 57
            ColWidths = (
              212
              164
              141
              53
              55
              75
              64
              64
              64
              64
              64
              64
              64)
            RowHeights = (
              5
              20)
            object BtnLClose3: TcxButton
              Left = 522
              Top = 122
              Width = 26
              Height = 14
              Cursor = crHandPoint
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                424D360400000000000036000000280000001000000010000000010020000000
                000000000000C40E0000C40E0000000000000000000000000000000000000000
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
                0000707070B3A0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0
                A0FFA0A0A0FF707070B300000000000000000000000000000000000000000000
                0000A0A0A0FFD4D4D4FFD4D4D4FFD4D4D4FFC8C8C8FFC8C8C8FFD4D4D4FFD4D4
                D4FFD4D4D4FFA0A0A0FF00000000000000000000000000000000000000000000
                000000000000A0A0A0FFDFDFDFFFDFDFDFFFD5D5D5FFD5D5D5FFDFDFDFFFDFDF
                DFFFA0A0A0FF0000000000000000000000000000000000000000000000000000
                00000000000000000000A0A0A0FFEBEBEBFFE8E8E8FFE8E8E8FFEBEBEBFFA0A0
                A0FF000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000A0A0A0FFF1F1F1FFF1F1F1FFA0A0A0FF0000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000A0A0A0FFA0A0A0FF000000000000
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
                00000000000000000000000000000000000000000000}
              TabOrder = 4
              Visible = False
              OnClick = BtnLClose3Click
            end
          end
          object AdvStringGrid8L: TAdvStringGrid
            Left = 248
            Top = 121
            Width = 330
            Height = 64
            ColCount = 10
            DefaultRowHeight = 20
            DefaultDrawing = True
            DrawingStyle = gdsClassic
            FixedCols = 0
            RowCount = 3
            FixedRows = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goRowSelect]
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
            Visible = False
            OnEnter = AdvStringGrid1Enter
            OnKeyUp = AdvStringGrid8LKeyUp
            OnClickCell = AdvStringGrid8LClickCell
            OnDblClickCell = AdvStringGrid8LDblClickCell
            OnResize = AdvStringGrid8LResize
            ActiveCellFont.Charset = ANSI_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -12
            ActiveCellFont.Name = #44404#47548#52404
            ActiveCellFont.Style = []
            BackGround.Color = 16698306
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
            FilterDropDown.Font.Name = 'MS Sans Serif'
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
            FixedColWidth = 30
            FixedRowHeight = 20
            FixedFont.Charset = ANSI_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -12
            FixedFont.Name = 'Verdana'
            FixedFont.Style = []
            FloatFormat = '%.2f'
            HoverButtons.Buttons = <>
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            MouseActions.AutoSizeColOnDblClick = False
            PrintSettings.DateFormat = 'dd/mm/yyyy'
            PrintSettings.Font.Charset = DEFAULT_CHARSET
            PrintSettings.Font.Color = clWindowText
            PrintSettings.Font.Height = -11
            PrintSettings.Font.Name = 'MS Sans Serif'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'MS Sans Serif'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'MS Sans Serif'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'MS Sans Serif'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            ScrollSynch = True
            ScrollType = ssFlat
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'MS Sans Serif'
            SearchFooter.Font.Style = []
            SearchFooter.HighLightCaption = 'Highlight'
            SearchFooter.HintClose = 'Close'
            SearchFooter.HintFindNext = 'Find next occurence'
            SearchFooter.HintFindPrev = 'Find previous occurence'
            SearchFooter.HintHighlight = 'Highlight occurences'
            SearchFooter.MatchCaseCaption = 'Match case'
            SearchFooter.ResultFormat = '(%d of %d)'
            SelectionColor = 12901373
            SelectionTextColor = clWindowText
            ShowDesignHelper = False
            Version = '8.6.7.0'
            ColWidths = (
              30
              42
              50
              190
              164
              78
              64
              64
              64
              64)
          end
        end
        object AdvStringGrid9: TAdvStringGrid
          Left = 0
          Top = 234
          Width = 592
          Height = 64
          Align = alBottom
          ColCount = 10
          DefaultRowHeight = 20
          DefaultDrawing = True
          DrawingStyle = gdsClassic
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing, goRowSelect]
          ParentFont = False
          TabOrder = 2
          OnEnter = AdvStringGrid1Enter
          OnKeyUp = AdvStringGrid9KeyUp
          OnGetCellColor = AdvStringGrid3GetCellColor
          OnClickCell = AdvStringGrid9ClickCell
          OnDblClickCell = AdvStringGrid9DblClickCell
          ActiveCellFont.Charset = ANSI_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -12
          ActiveCellFont.Name = #44404#47548#52404
          ActiveCellFont.Style = []
          BackGround.Color = 16698306
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
          FilterDropDown.Font.Name = 'MS Sans Serif'
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
          FixedColWidth = 30
          FixedRowHeight = 20
          FixedFont.Charset = ANSI_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -12
          FixedFont.Name = 'Verdana'
          FixedFont.Style = []
          FloatFormat = '%.2f'
          GridImages = cxImageList1
          HoverButtons.Buttons = <>
          HTMLSettings.ImageFolder = 'images'
          HTMLSettings.ImageBaseName = 'img'
          MouseActions.AutoSizeColOnDblClick = False
          PrintSettings.DateFormat = 'dd/mm/yyyy'
          PrintSettings.Font.Charset = DEFAULT_CHARSET
          PrintSettings.Font.Color = clWindowText
          PrintSettings.Font.Height = -11
          PrintSettings.Font.Name = 'MS Sans Serif'
          PrintSettings.Font.Style = []
          PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
          PrintSettings.FixedFont.Color = clWindowText
          PrintSettings.FixedFont.Height = -11
          PrintSettings.FixedFont.Name = 'MS Sans Serif'
          PrintSettings.FixedFont.Style = []
          PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
          PrintSettings.HeaderFont.Color = clWindowText
          PrintSettings.HeaderFont.Height = -11
          PrintSettings.HeaderFont.Name = 'MS Sans Serif'
          PrintSettings.HeaderFont.Style = []
          PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
          PrintSettings.FooterFont.Color = clWindowText
          PrintSettings.FooterFont.Height = -11
          PrintSettings.FooterFont.Name = 'MS Sans Serif'
          PrintSettings.FooterFont.Style = []
          PrintSettings.PageNumSep = '/'
          ScrollSynch = True
          ScrollType = ssFlat
          SearchFooter.FindNextCaption = 'Find &next'
          SearchFooter.FindPrevCaption = 'Find &previous'
          SearchFooter.Font.Charset = DEFAULT_CHARSET
          SearchFooter.Font.Color = clWindowText
          SearchFooter.Font.Height = -11
          SearchFooter.Font.Name = 'MS Sans Serif'
          SearchFooter.Font.Style = []
          SearchFooter.HighLightCaption = 'Highlight'
          SearchFooter.HintClose = 'Close'
          SearchFooter.HintFindNext = 'Find next occurence'
          SearchFooter.HintFindPrev = 'Find previous occurence'
          SearchFooter.HintHighlight = 'Highlight occurences'
          SearchFooter.MatchCaseCaption = 'Match case'
          SearchFooter.ResultFormat = '(%d of %d)'
          SelectionColor = 8964783
          SelectionTextColor = clWindowText
          ShowDesignHelper = False
          Version = '8.6.7.0'
          ExplicitWidth = 554
          ColWidths = (
            30
            44
            50
            190
            164
            75
            64
            64
            64
            64)
        end
      end
      object pnl_01START: TPanel
        Left = 0
        Top = 0
        Width = 592
        Height = 298
        Align = alClient
        BevelOuter = bvNone
        Color = 13756393
        ParentBackground = False
        TabOrder = 0
        object AdvStringGrid2: TAdvStringGrid
          Left = 0
          Top = 0
          Width = 592
          Height = 64
          Align = alTop
          ColCount = 9
          DefaultColWidth = 30
          DefaultDrawing = True
          DrawingStyle = gdsClassic
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
          OnEnter = AdvStringGrid1Enter
          OnKeyUp = AdvStringGrid2KeyUp
          OnGetAlignment = AdvStringGrid2GetAlignment
          OnClickCell = AdvStringGrid2ClickCell
          OnDblClickCell = AdvStringGrid2DblClickCell
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          BackGround.Color = clSilver
          BackGround.ColorTo = clWindow
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
          FilterDropDown.Font.Name = 'MS Sans Serif'
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
          FixedColWidth = 30
          FixedRowHeight = 22
          FixedFont.Charset = ANSI_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -12
          FixedFont.Name = 'Verdana'
          FixedFont.Style = []
          FloatFormat = '%.2f'
          GridImages = cxImageList1
          HoverButtons.Buttons = <>
          HTMLSettings.ImageFolder = 'images'
          HTMLSettings.ImageBaseName = 'img'
          MouseActions.AutoSizeColOnDblClick = False
          PrintSettings.DateFormat = 'dd/mm/yyyy'
          PrintSettings.Font.Charset = DEFAULT_CHARSET
          PrintSettings.Font.Color = clWindowText
          PrintSettings.Font.Height = -11
          PrintSettings.Font.Name = 'MS Sans Serif'
          PrintSettings.Font.Style = []
          PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
          PrintSettings.FixedFont.Color = clWindowText
          PrintSettings.FixedFont.Height = -11
          PrintSettings.FixedFont.Name = 'MS Sans Serif'
          PrintSettings.FixedFont.Style = []
          PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
          PrintSettings.HeaderFont.Color = clWindowText
          PrintSettings.HeaderFont.Height = -11
          PrintSettings.HeaderFont.Name = 'MS Sans Serif'
          PrintSettings.HeaderFont.Style = []
          PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
          PrintSettings.FooterFont.Color = clWindowText
          PrintSettings.FooterFont.Height = -11
          PrintSettings.FooterFont.Name = 'MS Sans Serif'
          PrintSettings.FooterFont.Style = []
          PrintSettings.PageNumSep = '/'
          ScrollSynch = True
          ScrollType = ssFlat
          SearchFooter.FindNextCaption = 'Find &next'
          SearchFooter.FindPrevCaption = 'Find &previous'
          SearchFooter.Font.Charset = DEFAULT_CHARSET
          SearchFooter.Font.Color = clWindowText
          SearchFooter.Font.Height = -11
          SearchFooter.Font.Name = 'MS Sans Serif'
          SearchFooter.Font.Style = []
          SearchFooter.HighLightCaption = 'Highlight'
          SearchFooter.HintClose = 'Close'
          SearchFooter.HintFindNext = 'Find next occurence'
          SearchFooter.HintFindPrev = 'Find previous occurence'
          SearchFooter.HintHighlight = 'Highlight occurences'
          SearchFooter.MatchCaseCaption = 'Match case'
          SearchFooter.ResultFormat = '(%d of %d)'
          SelectionColor = 12377310
          SelectionTextColor = clWindowText
          ShowDesignHelper = False
          VAlignment = vtaCenter
          Version = '8.6.7.0'
          WordWrap = False
          ExplicitTop = -1
          ExplicitWidth = 618
          ColWidths = (
            30
            30
            30
            30
            30
            30
            30
            30
            30)
        end
        object PnlClient1: TPanel
          Left = 0
          Top = 64
          Width = 592
          Height = 170
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          OnResize = PnlClient1Resize
          DesignSize = (
            592
            170)
          object AdvStringGrid1: TAdvStringGrid
            Left = 0
            Top = 0
            Width = 592
            Height = 170
            Align = alClient
            ColCount = 13
            DefaultRowHeight = 20
            DefaultDrawing = True
            DrawingStyle = gdsClassic
            FixedCols = 0
            RowCount = 9
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goRowSelect]
            ParentFont = False
            ParentShowHint = False
            PopupMenu = pm_ErrorPOI
            ScrollBars = ssVertical
            ShowHint = True
            TabOrder = 1
            OnDrawCell = AdvStringGrid1DrawCell
            OnEnter = AdvStringGrid1Enter
            OnKeyUp = AdvStringGrid1KeyUp
            OnGetCellColor = AdvStringGrid1GetCellColor
            OnGetAlignment = AdvStringGrid1GetAlignment
            OnGridHint = AdvStringGrid1GridHint
            OnClickCell = AdvStringGrid1ClickCell
            OnDblClickCell = AdvStringGrid1DblClickCell
            OnColumnSize = AdvStringGrid1ColumnSize
            ActiveCellFont.Charset = ANSI_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -12
            ActiveCellFont.Name = #44404#47548#52404
            ActiveCellFont.Style = []
            BackGround.Color = clGrayText
            BackGround.ColorTo = clWindow
            ColumnHeaders.Strings = (
              #51452#49548
              #49345#49464#51648#47749
              #51064#44540'POI'
              #44144#47532
              'X'#51340#54364
              'Y'#51340#54364)
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
            FilterDropDown.Font.Name = 'MS Sans Serif'
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
            FixedColWidth = 266
            FixedRowHeight = 5
            FixedRowAlways = True
            FixedFont.Charset = ANSI_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -11
            FixedFont.Name = 'Verdana'
            FixedFont.Style = []
            FloatFormat = '%.2f'
            GridImages = cxImageList1
            HoverButtons.Buttons = <>
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            LookupCaseSensitive = True
            MouseActions.AutoSizeColOnDblClick = False
            PrintSettings.DateFormat = 'dd/mm/yyyy'
            PrintSettings.Font.Charset = DEFAULT_CHARSET
            PrintSettings.Font.Color = clWindowText
            PrintSettings.Font.Height = -11
            PrintSettings.Font.Name = 'MS Sans Serif'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'MS Sans Serif'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'MS Sans Serif'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'MS Sans Serif'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            ScrollSynch = True
            ScrollType = ssFlat
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'MS Sans Serif'
            SearchFooter.Font.Style = []
            SearchFooter.HighLightCaption = 'Highlight'
            SearchFooter.HintClose = 'Close'
            SearchFooter.HintFindNext = 'Find next occurence'
            SearchFooter.HintFindPrev = 'Find previous occurence'
            SearchFooter.HintHighlight = 'Highlight occurences'
            SearchFooter.MatchCaseCaption = 'Match case'
            SearchFooter.ResultFormat = '(%d of %d)'
            SelectionColor = 15000781
            SelectionRectangle = True
            SelectionTextColor = clWindowText
            ShowDesignHelper = False
            Version = '8.6.7.0'
            WordWrap = False
            ExplicitTop = 1
            ColWidths = (
              266
              179
              142
              54
              47
              75
              64
              64
              64
              64
              64
              64
              64)
            RowHeights = (
              5
              20
              20
              20
              20
              20
              20
              20
              20)
            object BtnLClose1: TcxButton
              Left = 506
              Top = 106
              Width = 26
              Height = 14
              Cursor = crHandPoint
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                424D360400000000000036000000280000001000000010000000010020000000
                000000000000C40E0000C40E0000000000000000000000000000000000000000
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
                0000707070B3A0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0
                A0FFA0A0A0FF707070B300000000000000000000000000000000000000000000
                0000A0A0A0FFD4D4D4FFD4D4D4FFD4D4D4FFC8C8C8FFC8C8C8FFD4D4D4FFD4D4
                D4FFD4D4D4FFA0A0A0FF00000000000000000000000000000000000000000000
                000000000000A0A0A0FFDFDFDFFFDFDFDFFFD5D5D5FFD5D5D5FFDFDFDFFFDFDF
                DFFFA0A0A0FF0000000000000000000000000000000000000000000000000000
                00000000000000000000A0A0A0FFEBEBEBFFE8E8E8FFE8E8E8FFEBEBEBFFA0A0
                A0FF000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000A0A0A0FFF1F1F1FFF1F1F1FFA0A0A0FF0000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000A0A0A0FFA0A0A0FF000000000000
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
                00000000000000000000000000000000000000000000}
              TabOrder = 4
              Visible = False
              OnClick = BtnLClose1Click
            end
          end
          object AdvStringGrid1L: TAdvStringGrid
            Left = 243
            Top = 120
            Width = 330
            Height = 65
            Anchors = [akTop, akRight]
            ColCount = 10
            DefaultRowHeight = 20
            DefaultDrawing = True
            DrawingStyle = gdsClassic
            FixedCols = 0
            RowCount = 3
            FixedRows = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goRowSelect]
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
            Visible = False
            OnEnter = AdvStringGrid1Enter
            OnKeyUp = AdvStringGrid1LKeyUp
            OnClickCell = AdvStringGrid1LClickCell
            OnDblClickCell = AdvStringGrid1LDblClickCell
            OnResize = AdvStringGrid1LResize
            ActiveCellFont.Charset = ANSI_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -12
            ActiveCellFont.Name = #44404#47548#52404
            ActiveCellFont.Style = []
            BackGround.Color = 16698306
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
            FilterDropDown.Font.Name = 'MS Sans Serif'
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
            FixedColWidth = 30
            FixedRowHeight = 20
            FixedFont.Charset = ANSI_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -12
            FixedFont.Name = 'Verdana'
            FixedFont.Style = []
            FloatFormat = '%.2f'
            HoverButtons.Buttons = <>
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            MouseActions.AutoSizeColOnDblClick = False
            PrintSettings.DateFormat = 'dd/mm/yyyy'
            PrintSettings.Font.Charset = DEFAULT_CHARSET
            PrintSettings.Font.Color = clWindowText
            PrintSettings.Font.Height = -11
            PrintSettings.Font.Name = 'MS Sans Serif'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'MS Sans Serif'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'MS Sans Serif'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'MS Sans Serif'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            ScrollSynch = True
            ScrollType = ssFlat
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'MS Sans Serif'
            SearchFooter.Font.Style = []
            SearchFooter.HighLightCaption = 'Highlight'
            SearchFooter.HintClose = 'Close'
            SearchFooter.HintFindNext = 'Find next occurence'
            SearchFooter.HintFindPrev = 'Find previous occurence'
            SearchFooter.HintHighlight = 'Highlight occurences'
            SearchFooter.MatchCaseCaption = 'Match case'
            SearchFooter.ResultFormat = '(%d of %d)'
            SelectionColor = 12901373
            SelectionTextColor = clWindowText
            ShowDesignHelper = False
            Version = '8.6.7.0'
            WordWrap = False
            ColWidths = (
              30
              42
              50
              190
              164
              78
              64
              64
              64
              64)
          end
        end
        object AdvStringGrid3: TAdvStringGrid
          Left = 0
          Top = 234
          Width = 592
          Height = 64
          Align = alBottom
          ColCount = 10
          DefaultRowHeight = 20
          DefaultDrawing = True
          DrawingStyle = gdsClassic
          FixedCols = 0
          RowCount = 3
          FixedRows = 0
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing, goRowSelect]
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 2
          OnEnter = AdvStringGrid1Enter
          OnKeyUp = AdvStringGrid3KeyUp
          OnGetCellColor = AdvStringGrid3GetCellColor
          OnClickCell = AdvStringGrid3ClickCell
          OnDblClickCell = AdvStringGrid3DblClickCell
          ActiveCellFont.Charset = ANSI_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -12
          ActiveCellFont.Name = #44404#47548#52404
          ActiveCellFont.Style = []
          BackGround.Color = 16698306
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
          FilterDropDown.Font.Name = 'MS Sans Serif'
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
          FixedColWidth = 30
          FixedRowHeight = 20
          FixedFont.Charset = ANSI_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -12
          FixedFont.Name = 'Verdana'
          FixedFont.Style = []
          FloatFormat = '%.2f'
          GridImages = cxImageList1
          HoverButtons.Buttons = <>
          HTMLSettings.ImageFolder = 'images'
          HTMLSettings.ImageBaseName = 'img'
          MouseActions.AutoSizeColOnDblClick = False
          PrintSettings.DateFormat = 'dd/mm/yyyy'
          PrintSettings.Font.Charset = DEFAULT_CHARSET
          PrintSettings.Font.Color = clWindowText
          PrintSettings.Font.Height = -11
          PrintSettings.Font.Name = 'MS Sans Serif'
          PrintSettings.Font.Style = []
          PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
          PrintSettings.FixedFont.Color = clWindowText
          PrintSettings.FixedFont.Height = -11
          PrintSettings.FixedFont.Name = 'MS Sans Serif'
          PrintSettings.FixedFont.Style = []
          PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
          PrintSettings.HeaderFont.Color = clWindowText
          PrintSettings.HeaderFont.Height = -11
          PrintSettings.HeaderFont.Name = 'MS Sans Serif'
          PrintSettings.HeaderFont.Style = []
          PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
          PrintSettings.FooterFont.Color = clWindowText
          PrintSettings.FooterFont.Height = -11
          PrintSettings.FooterFont.Name = 'MS Sans Serif'
          PrintSettings.FooterFont.Style = []
          PrintSettings.PageNumSep = '/'
          ScrollSynch = True
          ScrollType = ssFlat
          SearchFooter.FindNextCaption = 'Find &next'
          SearchFooter.FindPrevCaption = 'Find &previous'
          SearchFooter.Font.Charset = DEFAULT_CHARSET
          SearchFooter.Font.Color = clWindowText
          SearchFooter.Font.Height = -11
          SearchFooter.Font.Name = 'MS Sans Serif'
          SearchFooter.Font.Style = []
          SearchFooter.HighLightCaption = 'Highlight'
          SearchFooter.HintClose = 'Close'
          SearchFooter.HintFindNext = 'Find next occurence'
          SearchFooter.HintFindPrev = 'Find previous occurence'
          SearchFooter.HintHighlight = 'Highlight occurences'
          SearchFooter.MatchCaseCaption = 'Match case'
          SearchFooter.ResultFormat = '(%d of %d)'
          SelectionColor = 8964783
          SelectionTextColor = clWindowText
          ShowDesignHelper = False
          Version = '8.6.7.0'
          WordWrap = False
          ColWidths = (
            30
            42
            50
            190
            164
            78
            64
            64
            64
            64)
        end
      end
      object btn_Potal_Search: TcxButton
        Left = 457
        Top = 275
        Width = 50
        Height = 21
        Caption = #50937#44160#49353
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 3
        OnClick = btn_Potal_SearchClick
      end
      object pnlSCnt: TPanel
        Left = 34
        Top = 69
        Width = 74
        Height = 15
        BevelKind = bkFlat
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 4
        object lblSCnt: TcxLabel
          Left = -2
          Top = -2
          AutoSize = False
          Caption = #44160#49353': 000 '#44148
          Style.TextColor = clBlue
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          Height = 16
          Width = 74
          AnchorX = 35
          AnchorY = 6
        end
      end
      object btnGSort: TcxButton
        Left = 2
        Top = 70
        Width = 30
        Height = 14
        Cursor = crHandPoint
        Hint = #51221#47148
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.ImageIndex = 21
        OptionsImage.Images = cxImageList1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        Visible = False
        OnClick = btnGSortClick
      end
    end
    object btnPortalE: TcxButton
      Left = 512
      Top = 8
      Width = 78
      Height = 51
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = 'N '#54252#53560' '#54869#51109' '#44160#49353
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      TabOrder = 2
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnPortalEClick
    end
    object pnl_NaverMap: TPanel
      Left = 0
      Top = 298
      Width = 592
      Height = 258
      Align = alClient
      BevelKind = bkFlat
      BevelOuter = bvNone
      DoubleBuffered = False
      ParentDoubleBuffered = False
      TabOrder = 3
      TabStop = True
      object webNaverMap: TWebBrowser
        Left = 0
        Top = 0
        Width = 588
        Height = 227
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alClient
        TabOrder = 0
        OnNavigateComplete2 = webNaverMapNavigateComplete2
        OnDocumentComplete = webNaverMapDocumentComplete
        ControlData = {
          4C000000C63C0000761700000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
      object Panel1: TPanel
        Left = 0
        Top = 227
        Width = 588
        Height = 27
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        OnResize = Panel1Resize
        object btnSPoiMove: TcxButton
          Left = 2
          Top = 4
          Width = 135
          Height = 21
          Caption = #52636#48156#51648#49440#53469'('#51340#54364#47564')'
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 0
          OnClick = btnSPoiMoveClick
        end
        object btnEPoiMove: TcxButton
          Left = 142
          Top = 4
          Width = 135
          Height = 21
          Caption = #46020#52265#51648#49440#53469'('#51340#54364#47564')'
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 1
          OnClick = btnEPoiMoveClick
        end
        object btnSPoiAMove: TcxButton
          Left = 281
          Top = 4
          Width = 135
          Height = 21
          Caption = #52636#48156#51648#49440#53469'('#51452#49548'+'#51340#54364')'
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 2
          OnClick = btnSPoiAMoveClick
        end
        object btnEPoiAMove: TcxButton
          Left = 423
          Top = 4
          Width = 135
          Height = 21
          Caption = #46020#52265#51648#49440#53469'('#51452#49548'+'#51340#54364')'
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 3
          OnClick = btnEPoiAMoveClick
        end
      end
    end
  end
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 592
    Height = 33
    Cursor = crSizeAll
    Align = alTop
    BevelOuter = bvNone
    Color = 12566463
    ParentBackground = False
    TabOrder = 1
    OnMouseDown = pnlTitleMouseDown
    DesignSize = (
      592
      33)
    object cxLblActive: TLabel
      Left = 0
      Top = 0
      Width = 592
      Height = 5
      Align = alTop
      AutoSize = False
      Color = 33023
      ParentColor = False
      Transparent = True
      OnMouseDown = pnlTitleMouseDown
      ExplicitWidth = 555
    end
    object btnClose: TcxButton
      Left = 568
      Top = 6
      Width = 23
      Height = 25
      Cursor = crHandPoint
      Hint = #45803#44592
      Anchors = [akTop, akRight]
      Colors.Default = 16635384
      Colors.Normal = 16773362
      Colors.Hot = 16360076
      Colors.Pressed = 16644080
      Colors.Disabled = 4227327
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
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
    object btnClose1: TcxButton
      Left = 519
      Top = 6
      Width = 23
      Height = 25
      Cursor = crHandPoint
      Hint = #49444#51221
      Anchors = [akTop, akRight]
      Colors.Default = 16635384
      Colors.Normal = 16773362
      Colors.Hot = 16360076
      Colors.Pressed = 16644080
      Colors.Disabled = 4227327
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Sharp'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000002B1D084088571ADF905B1DFF23170637231706378F5B1DFE955D
        1DFF37240A520000000000000000000000000000000000000000000000000000
        0000000000007A4D17D3DF9E51FFDE9C4BFF774B16FF754916FFDE9B4BFFDF9E
        51FF7C4E18D70000000000000000000000000000000000000000211605375435
        0DC23F2909AE5A370FFDE0A255FFE0A255FFDC9949FFDB9746FFE1A357FFE0A0
        52FF58360FFF3F2809A753340DBF2116053800000000030201066F4714E1E9AF
        68FFDE9C4BFFDA9543FFF3C382FFFFDEAAFFFFEFC0FFFFEFC2FFFFE0ADFFF5C5
        86FFDA9544FFDE9B4BFFE9AF68FF6F4714E103020106120C03228A571BFFFAD1
        97FFFAD197FFFED79DFFFFE6B4FFF6C688FFE4A85FFFE4A85FFFF7CA8DFFFFE9
        BAFFFFD8A2FFFCD298FFFAD197FF8A571BFF120C0322000000001D130445CB81
        2AFFFED79EFFFFD8A2FFDF9E50FF643D11FF9B611EFF9B611EFF684112FFE0A2
        55FFFFDEAAFFFFD8A2FFCB812AFF1D130445000000004A310D8350320DCCE2A6
        5AFFFCD298FFE7AD64FF673F12FFA46720FF0000000000000000A46720FF7549
        16FFE8AE67FFFCD399FFE2A65AFF50320DCC4A310D83D1842CFFFFDEABFFFFDA
        A4FFF1BE7BFFD28730FF905B1DFF00000000000000000000000000000000A467
        20FFD1852DFFEEB975FFFFD9A3FFFFDEABFFD1842CFFD58D39FFFFE4B1FFFFE2
        AEFFE8AE67FFD0842BFFAB6C23FF00000000000000000000000000000000AD6E
        23FFC07A27FFE6AB61FFFFE0ADFFFFE4B1FFD58D39FF583A1083784C16CCF3C3
        84FFEDB671FFD58D37FFA56820FF9B611EFF00000000000000009B611EFF9B61
        1EFFCB812AFFE9B26AFFF5C586FF784C16CC583A10830000000031210945E6AB
        61FFFFDEA7FFD0842BFFC47D28FFC47D28FF9B611EFF9B611EFFB77525FFB472
        25FFC07A27FFFFDEA7FFE6AB61FF31210945000000001D140622DC9949FFFFEF
        C2FFFFF9D0FFF7CA8DFFB27024FFA66921FFA2661FFF9E631FFF9D631FFFA76A
        21FFF6C98AFFFFF9D0FFFFEFC2FFDC9949FF1D14062205040106C0853AE0FFE4
        B4FFFDD49CFFFFE0ACFFFFE2AFFFD58D37FFC67E2AFFC47D28FFD48C35FFFFE2
        AEFFFFE0ACFFFDD49CFFFFE4B4FFC0853AE0050401060000000032230D37A76E
        28C45D3D1272A96F27C8FFF9D0FFFFF9D0FFFFF3C6FFFFF3C6FFFFF9D0FFFFF9
        D0FFA96F27C85D3D1272A76E28C432230D370000000000000000000000000000
        000000000000A2763BB4FFF9D0FFFFF9CFFFC9914AE4C9914AE4FFF9CFFFFFF9
        D0FFA2763BB40000000000000000000000000000000000000000000000000000
        00000000000049371B4FD5A25EE9E9AF68FF150F0617140E0616E9AF68FFCD9B
        5ADF48351A4D00000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
      OnClick = btnClose1Click
    end
    object cxBtnFixPos: TcxButton
      Left = 544
      Top = 6
      Width = 22
      Height = 25
      Cursor = crHandPoint
      Hint = #50948#52824#44256#51221
      Anchors = [akTop, akRight]
      LookAndFeel.SkinName = 'Sharp'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000083817FAB2B2929660000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000002E2E2D38B1ADACFF403E
        3D8F000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000005755546FB2AD
        ADFF2D2D2D760000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000005F5D
        5C85AAA7A9FF302D1E6B0000000000000000040231330B089AA00D09B3BA0302
        2526000000000000000000000000000000000000000000000000000000000000
        00006D6A6994BCB486FF15184560080ABABA1513F5FF120CF6FF120CF6FF0F0A
        CDD4000000000000000000000000000000000000000000000000000000000000
        0000000000006E6E75A81F34F3FF1524F9FF171DF6FF1411F8FF120BF8FF110B
        F8FF03022E300000000000000000000000000000000000000000000000000000
        000000000000152EC0C12241FEFF2138F6FF1624F7FF1419EEFF100AE7FF1109
        F2FF040234350000000000000000000000000000000000000000000000000000
        000016256668496EFAFF4566F9FF2946FAFF2B4AF5FF1A2DEBFF1316E3FF0F0A
        DFFA010112140000000000000000000000000000000000000000000000000000
        0000304CBABE7294FAFF5C7EFAFF4F74F8FF6F9DFDFF294DF7FF1B2FEEFF1319
        E5FF0A05889B0000000000000000000000000000000000000000000000000000
        00002841B4B8476CF9FF3C5FF9FF2C4CF7FF6E9CFDFF6B97FDFF2D51F6FF1B2F
        EEFF1217E3FF0505545D01011515010016170000000000000000000000000000
        000002030B0B2037B3B7233DDDE3192CDAE1223BE4E96A98FDFF6D9AFDFF3052
        F8FF1C36F2FF2C3DF8FF2B34F8FF282CF7FF0B0A3F4100000000000000000000
        000000000000000000000102090901020A0A02020D0D1B30AEB26490FBFF608E
        FCFF4C6EFBFF324AFAFF3151F9FF426CFBFF4461E5EA00000000000000000000
        00000000000000000000000000000000000000000000000000002F49AFB287AC
        FDFF1D20F5FF121FF7FF2138F7FF2A4AF8FF3F68F9FF00000000000000000000
        00000000000000000000000000000000000000000000000000002944ACB03B40
        F8FF0500F6FF1A20F6FF1D2FF7FF233DF8FF2339B0B400000000000000000000
        00000000000000000000000000000000000000000000000000001525868A130B
        F7FF1009F6FF1617F6FF1721F7FF1F32EEF60507181900000000000000000000
        0000000000000000000000000000000000000000000000000000000000001A1A
        9A9F0D03F0F9100EEDF60F108B9002030F0F00000000}
      ParentShowHint = False
      ShowHint = True
      SpeedButtonOptions.GroupIndex = 60
      SpeedButtonOptions.AllowAllUp = True
      TabOrder = 2
      OnClick = cxBtnFixPosClick
    end
    object lblOption: TcxLabel
      Left = 233
      Top = 6
      Cursor = crHandPoint
      Hint = #47560#50864#49828' '#53364#47533#49884' '#50741#49496' '#49440#53469
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'N'#47605'(O),POI'#53685#54633'(O),N/D'#53685#54633'(O),'#44221#53456'(O) '
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.BorderColor = 5855577
      Style.BorderStyle = ebsOffice11
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      OnClick = lblOptionClick
      Height = 25
      Width = 261
      AnchorX = 364
      AnchorY = 19
    end
    object btnAllSch: TcxButton
      Left = 496
      Top = 6
      Width = 21
      Height = 25
      Cursor = crHandPoint
      Hint = #44160#49353#48276#50948' '#51204#51648#50669' '#44160#49353
      Anchors = [akTop, akRight]
      LookAndFeel.SkinName = 'Sharp'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000018744558745469746C6500436F756E7472793B576F726C643B466C61
        67A89B0A720000036249444154785E4D920B4C535718C7AF99930E07613EA202
        AE142CD269F189292005498A2D0CCBAB2A769447C36BE8EA8674422123B40C58
        07758B2552DB5A914D070ECBE6401DD408D740EB8B88336631D12586E75858B2
        640981FC77CF75ED76927F4E6EBEF3FB9DEFCB3D1400CA124C91B5C22DDAF6D3
        8358E11F6322A1732846506C7E8FC7630A1C262B49FD619C902201E00BD57CED
        312BC809A4560F0ADF5D5AB09A30595F8987B2FD70C74583DECDFFDB1EC53DC4
        08DEBCBB9B4FD1BBF894CE719DE55881D6D2CD0AA23994FF37BCC03F2764F1F8
        EB6B035E1464614A5B8ADF6A35B89A9EF6BBD6D8222512D289EDAEE73F41A646
        C9B6BF432C0D6A4D123E19880AC5FCE9123C97C4C0B3838757F972F46FE7C1DE
        A95DEA70E699B882F5FE4462E879F45A90A24E258255B9D51FD92CDFF6E0C2C6
        B77079C3DBB8B22900BDC101180A5B8331793C7A4FE5E2BAE733943526DA18C0
        8F488880AC370E95F3A4AABA8370D0341A4C16A84FEAD17AB6032EAB15CEE222
        5C128431E1A26FAC0DBAF329101F91A711CE2BF0CBD044389BBAD35065AB46D7
        2D0F0A35069454B5E0FE8B293C9D5EC0E82F6E8C3F77617CCA0CEB600E127393
        FAC8DFF10A564BD4DB668CBD727C72BE1ECE892954D49A50A26DC1E0B3590CBF
        9CC3F77437BA5C0E5CB9570AFB9D2390148A66182EC02B084C50162DE6359442
        E7A4717674063DE3D3B8FA68125D2337611B3887CBA334CCEE699C68AF83F15A
        36C41FC42C325C904F203B7161B6DC720F1F5E9C40FDCF9368A367617F308FD6
        9E33B8F1B406677EAC404173118EE92B91A7AF45FCB1B239867BC737C296FD09
        03E9C7555018DA916FF640F3DDAFA8E97F85F2F636147FA9C2B9DB07D1D67F00
        A5ADA938AC334174547FE3FF23ACDABC77DDE17D47C350665420FDE302C8759F
        43D1320CC517C3C86EFC01D9DA0C54D977A2CE21C6CE5409221354B984F30A56
        9079C2C5C1CEA4423E345FC9905353874C830BE90D43C8D4BB90752A1FD5D658
        24AB23C11509FB48FBBE77109EB89D48567282FC42B871218EADC9D2E58C1A27
        8A4C23286B77B37B6A850E0249F272E81E41272790B3999C17661829561096A0
        A494B5A7D90745CC41DCADD9E1C99F8E444A1B16A2D29AC067F688035A7ABD20
        45C1806B089CDFD84145BDDFF45AB0456A60C315ABBDE37098AC6512CC84DC16
        F2EF3787D4C9596F88E01FA16ECFE40DD1368A0000000049454E44AE426082}
      ParentShowHint = False
      ShowHint = True
      SpeedButtonOptions.GroupIndex = 62
      SpeedButtonOptions.AllowAllUp = True
      TabOrder = 4
      OnClick = btnAllSchClick
    end
    object lbl1: TcxLabel
      Left = 7
      Top = 11
      Cursor = crSizeAll
      Anchors = [akTop, akRight]
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      OnMouseDown = pnlTitleMouseDown
      Height = 16
      Width = 200
      AnchorX = 207
      AnchorY = 19
    end
  end
  object grpSetPoiOption: TcxGroupBox
    Left = 24
    Top = 135
    Anchors = [akTop, akRight]
    Caption = 'POI '#50741#49496
    Style.LookAndFeel.SkinName = 'Sharp'
    StyleDisabled.LookAndFeel.SkinName = 'Sharp'
    TabOrder = 2
    Visible = False
    DesignSize = (
      542
      43)
    Height = 49
    Width = 542
    object Shape3: TShape
      Left = 3
      Top = 17
      Width = 73
      Height = 22
      Brush.Style = bsClear
      Pen.Color = 5855577
      Shape = stRoundRect
    end
    object Shape1: TShape
      Left = 361
      Top = 17
      Width = 153
      Height = 22
      Brush.Style = bsClear
      Pen.Color = 5855577
      Shape = stRoundRect
    end
    object Shape7: TShape
      Left = 3
      Top = 14
      Width = 536
      Height = 26
      Align = alClient
      Brush.Color = 13285815
      Pen.Color = 13285815
      ExplicitLeft = 6
      ExplicitTop = 17
      ExplicitWidth = 256
      ExplicitHeight = 139
    end
    object chkNaverMap: TcxCheckBox
      Left = 5
      Top = 19
      Hint = #45348#51060#48260#51648#46020#49324#50857
      Caption = #45348#51060#48260#47605
      ParentFont = False
      ParentShowHint = False
      Properties.OnChange = chkNaverMapPropertiesChange
      ShowHint = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548#52404
      Style.Font.Style = []
      Style.LookAndFeel.SkinName = 'Sharp'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      StyleFocused.LookAndFeel.SkinName = 'Sharp'
      StyleHot.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 0
      Transparent = True
      OnClick = chkNaverMapClick
    end
    object cxGroupBox2: TcxGroupBox
      Left = 76
      Top = 14
      Style.BorderStyle = ebsNone
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      TabOrder = 1
      DesignSize = (
        146
        25)
      Height = 25
      Width = 146
      object Shape4: TShape
        Left = 3
        Top = 3
        Width = 135
        Height = 22
        Anchors = [akLeft, akTop, akRight, akBottom]
        Brush.Style = bsClear
        Pen.Color = 5855577
        Shape = stRoundRect
      end
      object rbPOI1: TcxRadioButton
        Left = 6
        Top = 6
        Width = 64
        Height = 17
        Caption = 'POI'#48516#47532
        TabOrder = 0
        OnClick = rbPOI1Click
        LookAndFeel.SkinName = 'Sharp'
        Transparent = True
      end
      object rbPOI2: TcxRadioButton
        Left = 71
        Top = 5
        Width = 64
        Height = 17
        Caption = 'POI'#53685#54633
        TabOrder = 1
        OnClick = rbPOI1Click
        LookAndFeel.SkinName = 'Sharp'
        Transparent = True
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 214
      Top = 14
      Style.BorderStyle = ebsNone
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      TabOrder = 2
      DesignSize = (
        146
        25)
      Height = 25
      Width = 146
      object Shape5: TShape
        Left = 3
        Top = 3
        Width = 142
        Height = 22
        Anchors = [akLeft, akTop, akRight, akBottom]
        Brush.Style = bsClear
        Pen.Color = 5855577
        Shape = stRoundRect
        ExplicitWidth = 181
      end
      object rbSN: TcxRadioButton
        Left = 7
        Top = 6
        Width = 43
        Height = 17
        Caption = 'N'#49324
        TabOrder = 0
        OnClick = rbSNClick
        LookAndFeel.SkinName = 'Sharp'
        Transparent = True
      end
      object rbSD: TcxRadioButton
        Left = 52
        Top = 6
        Width = 44
        Height = 17
        Caption = 'D'#49324
        TabOrder = 1
        OnClick = rbSNClick
        LookAndFeel.SkinName = 'Sharp'
        Transparent = True
      end
      object rbSA: TcxRadioButton
        Left = 96
        Top = 6
        Width = 47
        Height = 17
        Caption = #53685#54633
        TabOrder = 2
        OnClick = rbSNClick
        LookAndFeel.SkinName = 'Sharp'
        Transparent = True
      end
    end
    object chkUseMiniMap: TcxCheckBox
      Left = 364
      Top = 19
      Hint = #48120#45768#47605#49324#50857
      Caption = #48120#45768#47605
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.Font.Charset = DEFAULT_CHARSET
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
      OnClick = chkUseMiniMapClick
    end
    object cxChkSchSvr: TcxCheckBox
      Left = 424
      Top = 19
      Hint = #44221#47196#53456#49353#49436#48260#49324#50857
      Caption = #44221#53456
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      State = cbsChecked
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548#52404
      Style.Font.Style = []
      Style.LookAndFeel.SkinName = 'Sharp'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      StyleFocused.LookAndFeel.SkinName = 'Sharp'
      StyleHot.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 4
      Transparent = True
      OnClick = cxChkSchSvrClick
    end
    object chkUseAPIKey: TcxCheckBox
      Left = 470
      Top = 19
      Hint = 'D'#49324' API Key'#49324#50857
      Caption = 'API'
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548#52404
      Style.Font.Style = []
      Style.LookAndFeel.SkinName = 'Sharp'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      StyleFocused.LookAndFeel.SkinName = 'Sharp'
      StyleHot.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 5
      Transparent = True
      OnClick = chkUseAPIKeyClick
    end
    object cxButton1: TcxButton
      Left = 516
      Top = 17
      Width = 24
      Height = 22
      Cursor = crHandPoint
      Hint = #45803#44592
      Anchors = [akTop, akRight]
      Colors.Default = 16635384
      Colors.Normal = 16773362
      Colors.Hot = 16360076
      Colors.Pressed = 16644080
      Colors.Disabled = 4227327
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
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
      TabOrder = 6
      TabStop = False
      OnClick = cxButton1Click
    end
  end
  object pnl_PoiAddress: TPanel
    Left = 0
    Top = 330
    Width = 592
    Height = 31
    Anchors = [akLeft, akTop, akRight]
    BevelKind = bkFlat
    BevelOuter = bvNone
    BorderWidth = 2
    Color = clBlack
    ParentBackground = False
    TabOrder = 3
    Visible = False
    DesignSize = (
      588
      27)
    object btn_close: TcxButton
      Left = 563
      Top = 3
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
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
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
      OnClick = btn_closeClick
    end
    object lb_PoiAddress: TcxRichEdit
      Left = 14
      Top = -3
      TabStop = False
      ParentFont = False
      Properties.ReadOnly = True
      Lines.Strings = (
        #49436#50872' '#50689#46321#54252#44396' '#50689#46321#54252#46041)
      Style.Color = clBlack
      Style.Edges = []
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -16
      Style.Font.Name = #44404#47548
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = clWhite
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Height = 24
      Width = 506
    end
  end
  object pmAcceptMap: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = pmAcceptMapPopup
    Left = 6
    Top = 450
    object N1: TMenuItem
      Caption = #52636#48156#51648#49440#53469'('#51340#54364#47564#51060#46041')'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #46020#52265#51648#49440#53469'('#51340#54364#47564#51060#46041')'
      OnClick = N2Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object N6: TMenuItem
      Caption = #52636#48156#51648#49440#53469'('#51452#49548'+'#51340#54364#51060#46041')'
      OnClick = N6Click
    end
    object N7: TMenuItem
      Caption = #46020#52265#51648#49440#53469'('#51452#49548'+'#51340#54364#51060#46041')'
      OnClick = N7Click
    end
    object mniSepIndex: TMenuItem
      Caption = '-'
    end
    object mniStart: TMenuItem
      AutoHotkeys = maManual
      Caption = #52636#48156#51648' '#48372#44592
      Enabled = False
      OnClick = mniStartClick
    end
    object mniEnd: TMenuItem
      Caption = #46020#52265#51648' '#48372#44592
      Enabled = False
      OnClick = mniEndClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object N500m1: TMenuItem
      Caption = '500m'#51060#45236#44592#49324
      OnClick = N500m1Click
    end
    object N1Km1: TMenuItem
      Caption = '1Km'#51060#45236#44592#49324
      OnClick = N1Km1Click
    end
    object N3Km1: TMenuItem
      Caption = '3Km'#51060#45236#44592#49324
      OnClick = N3Km1Click
    end
    object N5Km1: TMenuItem
      Caption = '5Km'#51060#45236#44592#49324
      OnClick = N5Km1Click
    end
    object N4: TMenuItem
      Caption = #51064#44540#44592#49324#44160#49353#52712#49548
      OnClick = N4Click
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object NPOIADD: TMenuItem
      Caption = 'POI'#52628#44032#50836#52397
      OnClick = NPOIADDClick
    end
    object N11: TMenuItem
      Caption = '-'
    end
  end
  object tmThread: TTimer
    Enabled = False
    OnTimer = tmThreadTimer
    Left = 16
    Top = 388
  end
  object TT1: TTimer
    Enabled = False
    Interval = 10
    Left = 61
    Top = 388
  end
  object TT2: TTimer
    Enabled = False
    Interval = 10
    OnTimer = TT2Timer
    Left = 135
    Top = 388
  end
  object pm_WKmenu: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = pm_WKmenuPopup
    Left = 74
    Top = 450
    object MenuItem5: TMenuItem
      Caption = #44592#49324'SMS'
      Visible = False
      OnClick = MenuItem5Click
    end
    object MenuItem1: TMenuItem
      Caption = #44592#49324#51221#48372#51312#54924
      Enabled = False
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = #44592#49324#51204#54868#44152#44592
      object mniWORCallingHP: TMenuItem
        Caption = #55092#45824#54256
        OnClick = mniWORCallingPDAClick
      end
      object mniWORCallingPDA: TMenuItem
        Caption = #45800#47568#44592
        OnClick = mniWORCallingPDAClick
      end
    end
    object MenuItem3: TMenuItem
      Caption = '-'
      Visible = False
    end
    object MenuItem4: TMenuItem
      Caption = #51217#49688#51473#50724#45908' '#44053#51228#48176#52264
      Visible = False
    end
  end
  object CSMsn: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    OnConnect = CSMsnConnect
    OnRead = CSMsnRead
    OnError = CSMsnError
    Left = 449
    Top = 378
  end
  object TT3: TTimer
    Enabled = False
    Interval = 10
    OnTimer = TT3Timer
    Left = 175
    Top = 388
  end
  object TTL: TTimer
    Enabled = False
    Interval = 10
    OnTimer = TTLTimer
    Left = 223
    Top = 388
  end
  object TmrChkTag: TTimer
    Tag = 100
    Enabled = False
    Interval = 500
    OnTimer = TmrChkTagTimer
    Left = 496
    Top = 379
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 22544664
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0102000001020000000000000102312981AD584BBBFE584CB7FA584CB7FA584B
          BBFE312981AD0000010200000000000001020000010200000000000000010000
          00000000000003022D3C1813A2CC372ECCFF3B30D1FC362BD6FE362BD6FE3B30
          D1FC372CCDFF1712A3CC03022D3C000000000000000000000000000000010000
          03050C0A5C761D14CBF42419E2FF291EE6FC2E22E6FE3225E5FF3325E4FF3023
          E5FE2B1FE6FC241AE2FF1C14CBF40C095C760000030500000001000006080C09
          5A732017D5FE2E21E4FE3D2EDEFC483ADBFF4F42D9FF5246D7FE5346D7FE5144
          D8FF4A3DD9FF3F32DDFC3124E2FE2217D4FE0C095D760000000004032A371F16
          C9F53627E0FD493CDAFDFFFFFFFFFFFFFFFF5B54D5FE5C55D6FF5B56D7FF5C55
          D5FEFFFFFFFFFFFFFFFF4E41D8FD3B2DDFFD2118C9F600000000130D90B53225
          DAFF4E41DAFD584FD5FFFFFFFFFFFFFFFFFF5B5BD9FF5A5BDAFF595BDAFF5B5B
          DAFFFFFFFFFFFFFFFFFF5A51D5FF5447D8FD362BD9FF06066190281ECEF9473A
          D9FE594FD7FF5C58D6FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF5B59D6FE5B53D6FF4D41D8FE241BC9F73229D2FF5549
          D9FF5C56D6FF5A5BD9FF575CDDFFFFFFFFFFFFFFFFFF4C60E9FF4B61E8FFFFFF
          FFFFFFFFFFFF555DE0FF5A5DDBFF5C58D6FF5B50D8FF2C24CEFF3A30CFFE5C54
          D7FF5B5AD8FF575DDDFF505FE3FFFFFFFFFFFFFFFFFF4A66F0FF4A66EFFFFFFF
          FFFFFFFFFFFF4F5FE5FF565EDFFF5A5AD9FF6058D8FF3028CDFE372DCEFF5A52
          D5FE5B5CDAFF535EE0FE4C60E8FFFFFFFFFFFFFFFFFF4C68F1FF4D69F1FFFFFF
          FFFFFFFFFFFF4B62EAFF525EE2FE5A5DDCFF5C56D5FE2C24CCFF1F18A6D14F49
          D4FF5F61DBFE515DE1FF4B63E9FE4967F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4A67F1FF4B64ECFE4E5EE5FF5D62DDFE514CD5FF171197C00A075C773831
          CAF95D5ED8FB525EE1FD4B61EAFF4865F0FEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4966F0FE4A63EDFF505FE3FD5B5FD9FB3832CCFA06053E4F00000F15110D
          7798403ED2FF5862DDFB4E62E9FD4764EFFF556FF0FEFFFFFFFFFFFFFFFF6076
          F0FE4865F0FF4D64EAFD5664E0FB3F3ED3FF100C789A00000203000000000100
          1015151083A53837D2FF4C58E2FF4E67EBFE4C69F1FF4E6CF2FF506DF3FF4D6A
          F1FF4D68ECFE4B59E3FF3738D4FF161084A501010F1400000000000001020000
          00000000070B0A07546B211DA7CF3236CFF6404EE0FE4355E4FE4355E5FE404F
          E2FE3136D0F6201DA7CF0A07536B0000070B0000000000000000000000000000
          0406000000000000000000004058130B92BD2320BCEA2926C4F12928C4F12320
          BDEA120B93BD0000405800000000000000000000040600000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F81F0000F00F0000C0030000800100008001000000000000000000000000
          00000000000000000000000000000001000080010000C0030000E0070000F81F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0102000001020000000000000102312981AD584BBBFE584CB7FA584CB7FA584B
          BBFE312981AD0000010200000000000001020000010200000000000000010000
          00000000000003022D3C1813A2CC372ECCFF3B30D1FC362BD6FE362BD6FE3B30
          D1FC372CCDFF1712A3CC03022D3C000000000000000000000000000000010000
          03050C0A5C761D14CBF42419E2FF291EE6FC2E22E6FE3225E5FF3325E4FF3023
          E5FE2B1FE6FC241AE2FF1C14CBF40C095C760000030500000001000006080C09
          5A732017D5FE2E21E4FE3D2EDEFC483ADBFF4F42D9FF5246D7FE5346D7FE5144
          D8FF4A3DD9FF3F32DDFC3124E2FE2217D4FE0C095D760000000004032A371F16
          C9F53627E0FD493CDAFD5449D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF564BD6FF4E41D8FD3B2DDFFD2118C9F600000000130D90B53225
          DAFF4E41DAFD584FD5FF5C56D6FEFFFFFFFFFFFFFFFF5A5BDAFF595BDAFF5B5B
          DAFFFFFFFFFFFFFFFFFF5A51D5FF5447D8FD362BD9FF06066190281ECEF9473A
          D9FE594FD7FF5C58D6FE5B5BD9FFFFFFFFFFFFFFFFFF535DE1FF535DE2FF545E
          E1FFFFFFFFFFFFFFFFFF5B59D6FE5B53D6FF4D41D8FE241BC9F73229D2FF5549
          D9FF5C56D6FF5A5BD9FF575CDDFFFFFFFFFFFFFFFFFF4C60E9FF4B61E8FF4C61
          E8FFFFFFFFFFFFFFFFFF5A5DDBFF5C58D6FF5B50D8FF2C24CEFF3A30CFFE5C54
          D7FF5B5AD8FF575DDDFF505FE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4F5FE5FF565EDFFF5A5AD9FF6058D8FF3028CDFE372DCEFF5A52
          D5FE5B5CDAFF535EE0FE4C60E8FFFFFFFFFFFFFFFFFF4C68F1FF4D69F1FF4A67
          F0FFFFFFFFFFFFFFFFFF525EE2FE5A5DDCFF5C56D5FE2C24CCFF1F18A6D14F49
          D4FF5F61DBFE515DE1FF4B63E9FEFFFFFFFFFFFFFFFF7386F3FF798BF3FF5B75
          F2FFFFFFFFFFFFFFFFFF4E5EE5FF5D62DDFE514CD5FF171197C00A075C773831
          CAF95D5ED8FB525EE1FD4B61EAFFFFFFFFFFFFFFFFFFB2B9F7FFC4C9F8FF7385
          F3FFFFFFFFFFFFFFFFFF505FE3FD5B5FD9FB3832CCFA06053E4F00000F15110D
          7798403ED2FF5862DDFB4E62E9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4D64EAFD5664E0FB3F3ED3FF100C789A00000203000000000100
          1015151083A53837D2FF4C58E2FF4E67EBFE4C69F1FF4E6CF2FF506DF3FF4D6A
          F1FF4D68ECFE4B59E3FF3738D4FF161084A501010F1400000000000001020000
          00000000070B0A07546B211DA7CF3236CFF6404EE0FE4355E4FE4355E5FE404F
          E2FE3136D0F6201DA7CF0A07536B0000070B0000000000000000000000000000
          0406000000000000000000004058130B92BD2320BCEA2926C4F12928C4F12320
          BDEA120B93BD0000405800000000000000000000040600000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F81F0000F00F0000C0030000800100008001000000000000000000000000
          00000000000000000000000000000001000080010000C0030000E0070000F81F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0102000001020000000000000102312981AD584BBBFE584CB7FA584CB7FA584B
          BBFE312981AD0000010200000000000001020000010200000000000000010000
          00000000000003022D3C1813A2CC372ECCFF3B30D1FC362BD6FE362BD6FE3B30
          D1FC372CCDFF1712A3CC03022D3C000000000000000000000000000000010000
          03050C0A5C761D14CBF42419E2FF291EE6FC2E22E6FE3225E5FF3325E4FF3023
          E5FE2B1FE6FC241AE2FF1C14CBF40C095C760000030500000001000006080C09
          5A732017D5FE2E21E4FE3D2EDEFC483ADBFF4F42D9FF5246D7FE5346D7FE5144
          D8FF4A3DD9FF3F32DDFC3124E2FE2217D4FE0C095D760000000004032A371F16
          C9F53627E0FD493CDAFD5449D6FF5A51D5FEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF564BD6FF4E41D8FD3B2DDFFD2118C9F600000000130D90B53225
          DAFF4E41DAFD584FD5FF5C56D6FEFFFFFFFFFFFFFFFF5A5BDAFF595BDAFF5B5B
          DAFF5D5AD8FFFFFFFFFF5A51D5FF5447D8FD362BD9FF06066190281ECEF9473A
          D9FE594FD7FF5C58D6FE5B5BD9FFFFFFFFFFFFFFFFFF535DE1FF535DE2FF545E
          E1FF575DDDFFFFFFFFFF5B59D6FE5B53D6FF4D41D8FE241BC9F73229D2FF5549
          D9FF5C56D6FF5A5BD9FF575CDDFFFFFFFFFFFFFFFFFF4C60E9FF4B61E8FF4C61
          E8FF505FE4FF555DE0FF5A5DDBFF5C58D6FF5B50D8FF2C24CEFF3A30CFFE5C54
          D7FF5B5AD8FF575DDDFF505FE3FFFFFFFFFFFFFFFFFF4A66F0FF4A66EFFF4A64
          EEFF4B62EBFF4F5FE5FF565EDFFF5A5AD9FF6058D8FF3028CDFE372DCEFF5A52
          D5FE5B5CDAFF535EE0FE4C60E8FFFFFFFFFFFFFFFFFF4C68F1FF4D69F1FF4A67
          F0FF4A66EFFF4B62EAFF525EE2FE5A5DDCFF5C56D5FE2C24CCFF1F18A6D14F49
          D4FF5F61DBFE515DE1FF4B63E9FEFFFFFFFFFFFFFFFF7386F3FF798BF3FF5B75
          F2FF4A67F1FFFFFFFFFF4E5EE5FF5D62DDFE514CD5FF171197C00A075C773831
          CAF95D5ED8FB525EE1FD4B61EAFFFFFFFFFFFFFFFFFFB2B9F7FFC4C9F8FF7385
          F3FF4966F0FEFFFFFFFF505FE3FD5B5FD9FB3832CCFA06053E4F00000F15110D
          7798403ED2FF5862DDFB4E62E9FD4764EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4D64EAFD5664E0FB3F3ED3FF100C789A00000203000000000100
          1015151083A53837D2FF4C58E2FF4E67EBFE4C69F1FF4E6CF2FF506DF3FF4D6A
          F1FF4D68ECFE4B59E3FF3738D4FF161084A501010F1400000000000001020000
          00000000070B0A07546B211DA7CF3236CFF6404EE0FE4355E4FE4355E5FE404F
          E2FE3136D0F6201DA7CF0A07536B0000070B0000000000000000000000000000
          0406000000000000000000004058130B92BD2320BCEA2926C4F12928C4F12320
          BDEA120B93BD0000405800000000000000000000040600000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F81F0000F00F0000C0030000800100008001000000000000000000000000
          00000000000000000000000000000001000080010000C0030000E0070000F81F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0102000001020000000000000102312981AD584BBBFE584CB7FA584CB7FA584B
          BBFE312981AD0000010200000000000001020000010200000000000000010000
          00000000000003022D3C1813A2CC372ECCFF3B30D1FC362BD6FE362BD6FE3B30
          D1FC372CCDFF1712A3CC03022D3C000000000000000000000000000000010000
          03050C0A5C761D14CBF42419E2FF291EE6FC2E22E6FE3225E5FF3325E4FF3023
          E5FE2B1FE6FC241AE2FF1C14CBF40C095C760000030500000001000006080C09
          5A732017D5FE2E21E4FE3D2EDEFC483ADBFF4F42D9FF5246D7FE5346D7FE5144
          D8FF4A3DD9FF3F32DDFC3124E2FE2217D4FE0C095D760000000004032A371F16
          C9F53627E0FD493CDAFD5449D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF564BD6FF4E41D8FD3B2DDFFD2118C9F600000000130D90B53225
          DAFF4E41DAFD584FD5FF5C56D6FEFFFFFFFFFFFFFFFF5A5BDAFF595BDAFF5B5B
          DAFFFFFFFFFFFFFFFFFF5A51D5FF5447D8FD362BD9FF06066190281ECEF9473A
          D9FE594FD7FF5C58D6FE5B5BD9FFFFFFFFFFFFFFFFFF535DE1FF535DE2FF545E
          E1FF575DDDFFFFFFFFFFFFFFFFFF5B53D6FF4D41D8FE241BC9F73229D2FF5549
          D9FF5C56D6FF5A5BD9FF575CDDFFFFFFFFFFFFFFFFFF4C60E9FF4B61E8FF4C61
          E8FF505FE4FFFFFFFFFFFFFFFFFF5C58D6FF5B50D8FF2C24CEFF3A30CFFE5C54
          D7FF5B5AD8FF575DDDFF505FE3FFFFFFFFFFFFFFFFFF4A66F0FF4A66EFFF4A64
          EEFF4B62EBFFFFFFFFFFFFFFFFFF5A5AD9FF6058D8FF3028CDFE372DCEFF5A52
          D5FE5B5CDAFF535EE0FE4C60E8FFFFFFFFFFFFFFFFFF4C68F1FF4D69F1FF4A67
          F0FF4A66EFFFFFFFFFFFFFFFFFFF5A5DDCFF5C56D5FE2C24CCFF1F18A6D14F49
          D4FF5F61DBFE515DE1FF4B63E9FEFFFFFFFFFFFFFFFF7386F3FF798BF3FF5B75
          F2FF4A67F1FFFFFFFFFFFFFFFFFF5D62DDFE514CD5FF171197C00A075C773831
          CAF95D5ED8FB525EE1FD4B61EAFFFFFFFFFFFFFFFFFFB2B9F7FFC4C9F8FF7385
          F3FFFFFFFFFFFFFFFFFF505FE3FD5B5FD9FB3832CCFA06053E4F00000F15110D
          7798403ED2FF5862DDFB4E62E9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4D64EAFD5664E0FB3F3ED3FF100C789A00000203000000000100
          1015151083A53837D2FF4C58E2FF4E67EBFE4C69F1FF4E6CF2FF506DF3FF4D6A
          F1FF4D68ECFE4B59E3FF3738D4FF161084A501010F1400000000000001020000
          00000000070B0A07546B211DA7CF3236CFF6404EE0FE4355E4FE4355E5FE404F
          E2FE3136D0F6201DA7CF0A07536B0000070B0000000000000000000000000000
          0406000000000000000000004058130B92BD2320BCEA2926C4F12928C4F12320
          BDEA120B93BD0000405800000000000000000000040600000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F81F0000F00F0000C0030000800100008001000000000000000000000000
          00000000000000000000000000000001000080010000C0030000E0070000F81F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0102000001020000000000000102312981AD584BBBFE584CB7FA584CB7FA584B
          BBFE312981AD0000010200000000000001020000010200000000000000010000
          00000000000003022D3C1813A2CC372ECCFF3B30D1FC362BD6FE362BD6FE3B30
          D1FC372CCDFF1712A3CC03022D3C000000000000000000000000000000010000
          03050C0A5C761D14CBF42419E2FF291EE6FC2E22E6FE3225E5FF3325E4FF3023
          E5FE2B1FE6FC241AE2FF1C14CBF40C095C760000030500000001000006080C09
          5A732017D5FE2E21E4FE3D2EDEFC483ADBFF4F42D9FF5246D7FE5346D7FE5144
          D8FF4A3DD9FF3F32DDFC3124E2FE2217D4FE0C095D760000000004032A371F16
          C9F53627E0FD493CDAFD5449D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF564BD6FF4E41D8FD3B2DDFFD2118C9F600000000130D90B53225
          DAFF4E41DAFD584FD5FF5C56D6FEFFFFFFFFFFFFFFFF5A5BDAFF595BDAFF5B5B
          DAFF5D5AD8FF5C57D5FE5A51D5FF5447D8FD362BD9FF06066190281ECEF9473A
          D9FE594FD7FF5C58D6FE5B5BD9FFFFFFFFFFFFFFFFFF535DE1FF535DE2FF545E
          E1FF575DDDFF5A5AD9FF5B59D6FE5B53D6FF4D41D8FE241BC9F73229D2FF5549
          D9FF5C56D6FF5A5BD9FF575CDDFFFFFFFFFFFFFFFFFF4C60E9FF4B61E8FF4C61
          E8FF505FE4FF555DE0FF5A5DDBFF5C58D6FF5B50D8FF2C24CEFF3A30CFFE5C54
          D7FF5B5AD8FF575DDDFF505FE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4F5FE5FF565EDFFF5A5AD9FF6058D8FF3028CDFE372DCEFF5A52
          D5FE5B5CDAFF535EE0FE4C60E8FFFFFFFFFFFFFFFFFF4C68F1FF4D69F1FF4A67
          F0FF4A66EFFF4B62EAFF525EE2FE5A5DDCFF5C56D5FE2C24CCFF1F18A6D14F49
          D4FF5F61DBFE515DE1FF4B63E9FEFFFFFFFFFFFFFFFF7386F3FF798BF3FF5B75
          F2FF4A67F1FF4B64ECFE4E5EE5FF5D62DDFE514CD5FF171197C00A075C773831
          CAF95D5ED8FB525EE1FD4B61EAFFFFFFFFFFFFFFFFFFB2B9F7FFC4C9F8FF7385
          F3FF4966F0FE4A63EDFF505FE3FD5B5FD9FB3832CCFA06053E4F00000F15110D
          7798403ED2FF5862DDFB4E62E9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4D64EAFD5664E0FB3F3ED3FF100C789A00000203000000000100
          1015151083A53837D2FF4C58E2FF4E67EBFE4C69F1FF4E6CF2FF506DF3FF4D6A
          F1FF4D68ECFE4B59E3FF3738D4FF161084A501010F1400000000000001020000
          00000000070B0A07546B211DA7CF3236CFF6404EE0FE4355E4FE4355E5FE404F
          E2FE3136D0F6201DA7CF0A07536B0000070B0000000000000000000000000000
          0406000000000000000000004058130B92BD2320BCEA2926C4F12928C4F12320
          BDEA120B93BD0000405800000000000000000000040600000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F81F0000F00F0000C0030000800100008001000000000000000000000000
          00000000000000000000000000000001000080010000C0030000E0070000F81F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0102000001020000000000000102312981AD584BBBFE584CB7FA584CB7FA584B
          BBFE312981AD0000010200000000000001020000010200000000000000010000
          00000000000003022D3C1813A2CC372ECCFF3B30D1FC362BD6FE362BD6FE3B30
          D1FC372CCDFF1712A3CC03022D3C000000000000000000000000000000010000
          03050C0A5C761D14CBF42419E2FF291EE6FC2E22E6FE3225E5FF3325E4FF3023
          E5FE2B1FE6FC241AE2FF1C14CBF40C095C760000030500000001000006080C09
          5A732017D5FE2E21E4FE3D2EDEFC483ADBFF4F42D9FF5246D7FE5346D7FE5144
          D8FF4A3DD9FF3F32DDFC3124E2FE2217D4FE0C095D760000000004032A371F16
          C9F53627E0FD493CDAFD5449D6FF5A51D5FEFFFFFFFFFFFFFFFF5B56D7FF5C55
          D5FE5B52D5FE564BD6FF4E41D8FD3B2DDFFD2118C9F600000000130D90B53225
          DAFF4E41DAFD584FD5FF5C56D6FE5D59D8FFFFFFFFFFFFFFFFFF595BDAFF5B5B
          DAFF5D5AD8FF5C57D5FE5A51D5FF5447D8FD362BD9FF06066190281ECEF9473A
          D9FE594FD7FF5C58D6FE5B5BD9FF585DDCFFFFFFFFFFFFFFFFFF535DE2FF545E
          E1FF575DDDFF5A5AD9FF5B59D6FE5B53D6FF4D41D8FE241BC9F73229D2FF5549
          D9FF5C56D6FF5A5BD9FF575CDDFF515FE3FFFFFFFFFFFFFFFFFF4B61E8FF4C61
          E8FF505FE4FF555DE0FF5A5DDBFF5C58D6FF5B50D8FF2C24CEFF3A30CFFE5C54
          D7FF5B5AD8FF575DDDFF505FE3FF4C62E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4F5FE5FF565EDFFF5A5AD9FF6058D8FF3028CDFE372DCEFF5A52
          D5FE5B5CDAFF535EE0FE4C60E8FF4A65EEFFFFFFFFFFFFFFFFFF4D69F1FF4A67
          F0FF4A66EFFF4B62EAFF525EE2FE5A5DDCFF5C56D5FE2C24CCFF1F18A6D14F49
          D4FF5F61DBFE515DE1FF4B63E9FE4967F0FFFFFFFFFFFFFFFFFF798BF3FF5B75
          F2FF4A67F1FF4B64ECFE4E5EE5FF5D62DDFE514CD5FF171197C00A075C773831
          CAF95D5ED8FB525EE1FD4B61EAFF4865F0FEFFFFFFFFFFFFFFFFC4C9F8FF7385
          F3FF4966F0FE4A63EDFF505FE3FD5B5FD9FB3832CCFA06053E4F00000F15110D
          7798403ED2FF5862DDFB4E62E9FD4764EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4D64EAFD5664E0FB3F3ED3FF100C789A00000203000000000100
          1015151083A53837D2FF4C58E2FF4E67EBFE4C69F1FF4E6CF2FF506DF3FF4D6A
          F1FF4D68ECFE4B59E3FF3738D4FF161084A501010F1400000000000001020000
          00000000070B0A07546B211DA7CF3236CFF6404EE0FE4355E4FE4355E5FE404F
          E2FE3136D0F6201DA7CF0A07536B0000070B0000000000000000000000000000
          0406000000000000000000004058130B92BD2320BCEA2926C4F12928C4F12320
          BDEA120B93BD0000405800000000000000000000040600000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F81F0000F00F0000C0030000800100008001000000000000000000000000
          00000000000000000000000000000001000080010000C0030000E0070000F81F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0102000001020000000000000102312981AD584BBBFE584CB7FA584CB7FA584B
          BBFE312981AD0000010200000000000001020000010200000000000000010000
          00000000000003022D3C1813A2CC372ECCFF3B30D1FC362BD6FE362BD6FE3B30
          D1FC372CCDFF1712A3CC03022D3C000000000000000000000000000000010000
          03050C0A5C761D14CBF42419E2FF291EE6FC2E22E6FE3225E5FF3325E4FF3023
          E5FE2B1FE6FC241AE2FF1C14CBF40C095C760000030500000001000006080C09
          5A732017D5FE2E21E4FE3D2EDEFC483ADBFF4F42D9FF5246D7FE5346D7FE5144
          D8FF4A3DD9FF3F32DDFC3124E2FE2217D4FE0C095D760000000004032A371F16
          C9F53627E0FD493CDAFD5449D6FF5A51D5FEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF4E41D8FD3B2DDFFD2118C9F600000000130D90B53225
          DAFF4E41DAFD584FD5FF5C56D6FEFFFFFFFFFFFFFFFF5A5BDAFF595BDAFF5B5B
          DAFFFFFFFFFFFFFFFFFF5A51D5FF5447D8FD362BD9FF06066190281ECEF9473A
          D9FE594FD7FF5C58D6FE5B5BD9FFFFFFFFFFFFFFFFFF535DE1FF535DE2FF545E
          E1FFFFFFFFFFFFFFFFFF5B59D6FE5B53D6FF4D41D8FE241BC9F73229D2FF5549
          D9FF5C56D6FF5A5BD9FF575CDDFFFFFFFFFFFFFFFFFF4C60E9FF4B61E8FF4C61
          E8FFFFFFFFFFFFFFFFFF5A5DDBFF5C58D6FF5B50D8FF2C24CEFF3A30CFFE5C54
          D7FF5B5AD8FF575DDDFF505FE3FFFFFFFFFFFFFFFFFF4A66F0FF4A66EFFFFFFF
          FFFFFFFFFFFFFFFFFFFF565EDFFF5A5AD9FF6058D8FF3028CDFE372DCEFF5A52
          D5FE5B5CDAFF535EE0FE4C60E8FFFFFFFFFFFFFFFFFF4C68F1FF4D69F1FF4A67
          F0FF4A66EFFF4B62EAFF525EE2FE5A5DDCFF5C56D5FE2C24CCFF1F18A6D14F49
          D4FF5F61DBFE515DE1FF4B63E9FEFFFFFFFFFFFFFFFF7386F3FF798BF3FF5B75
          F2FF4A67F1FFFFFFFFFF4E5EE5FF5D62DDFE514CD5FF171197C00A075C773831
          CAF95D5ED8FB525EE1FD4B61EAFFFFFFFFFFFFFFFFFFB2B9F7FFC4C9F8FF7385
          F3FF4966F0FEFFFFFFFF505FE3FD5B5FD9FB3832CCFA06053E4F00000F15110D
          7798403ED2FF5862DDFB4E62E9FD4764EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4D64EAFD5664E0FB3F3ED3FF100C789A00000203000000000100
          1015151083A53837D2FF4C58E2FF4E67EBFE4C69F1FF4E6CF2FF506DF3FF4D6A
          F1FF4D68ECFE4B59E3FF3738D4FF161084A501010F1400000000000001020000
          00000000070B0A07546B211DA7CF3236CFF6404EE0FE4355E4FE4355E5FE404F
          E2FE3136D0F6201DA7CF0A07536B0000070B0000000000000000000000000000
          0406000000000000000000004058130B92BD2320BCEA2926C4F12928C4F12320
          BDEA120B93BD0000405800000000000000000000040600000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F81F0000F00F0000C0030000800100008001000000000000000000000000
          00000000000000000000000000000001000080010000C0030000E0070000F81F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0102000001020000000000000102312981AD584BBBFE584CB7FA584CB7FA584B
          BBFE312981AD0000010200000000000001020000010200000000000000010000
          00000000000003022D3C1813A2CC372ECCFF3B30D1FC362BD6FE362BD6FE3B30
          D1FC372CCDFF1712A3CC03022D3C000000000000000000000000000000010000
          03050C0A5C761D14CBF42419E2FF291EE6FC2E22E6FE3225E5FF3325E4FF3023
          E5FE2B1FE6FC241AE2FF1C14CBF40C095C760000030500000001000006080C09
          5A732017D5FE2E21E4FE3D2EDEFC483ADBFF4F42D9FF5246D7FE5346D7FE5144
          D8FF4A3DD9FF3F32DDFC3124E2FE2217D4FE0C095D760000000004032A371F16
          C9F53627E0FD493CDAFDFFFFFFFFFFFFFFFF5B54D5FE5C55D6FF5B56D7FF5C55
          D5FEFFFFFFFFFFFFFFFF4E41D8FD3B2DDFFD2118C9F600000000130D90B53225
          DAFF4E41DAFD584FD5FFFFFFFFFFFFFFFFFF5B5BD9FF5A5BDAFF595BDAFF5B5B
          DAFFFFFFFFFFFFFFFFFF5A51D5FF5447D8FD362BD9FF06066190281ECEF9473A
          D9FE594FD7FF5C58D6FEFFFFFFFFFFFFFFFF545EDFFF535DE1FF535DE2FF545E
          E1FFFFFFFFFFFFFFFFFF5B59D6FE5B53D6FF4D41D8FE241BC9F73229D2FF5549
          D9FF5C56D6FF5A5BD9FFFFFFFFFFFFFFFFFF4D60E7FF4C60E9FF4B61E8FF4C61
          E8FFFFFFFFFFFFFFFFFF5A5DDBFF5C58D6FF5B50D8FF2C24CEFF3A30CFFE5C54
          D7FF5B5AD8FF575DDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF565EDFFF5A5AD9FF6058D8FF3028CDFE372DCEFF5A52
          D5FE5B5CDAFF535EE0FEFFFFFFFFFFFFFFFF4B68F1FF4C68F1FF4D69F1FF4A67
          F0FFFFFFFFFFFFFFFFFF525EE2FE5A5DDCFF5C56D5FE2C24CCFF1F18A6D14F49
          D4FF5F61DBFE515DE1FFFFFFFFFFFFFFFFFF556FF2FF7386F3FF798BF3FF5B75
          F2FFFFFFFFFFFFFFFFFF4E5EE5FF5D62DDFE514CD5FF171197C00A075C773831
          CAF95D5ED8FB525EE1FDFFFFFFFFFFFFFFFF6178F2FFB2B9F7FFC4C9F8FF7385
          F3FFFFFFFFFFFFFFFFFF505FE3FD5B5FD9FB3832CCFA06053E4F00000F15110D
          7798403ED2FF5862DDFBFFFFFFFFFFFFFFFF556FF0FE8C9BF3FE9BA6F4FE6076
          F0FEFFFFFFFFFFFFFFFF5664E0FB3F3ED3FF100C789A00000203000000000100
          1015151083A53837D2FF4C58E2FF4E67EBFE4C69F1FF4E6CF2FF506DF3FF4D6A
          F1FF4D68ECFE4B59E3FF3738D4FF161084A501010F1400000000000001020000
          00000000070B0A07546B211DA7CF3236CFF6404EE0FE4355E4FE4355E5FE404F
          E2FE3136D0F6201DA7CF0A07536B0000070B0000000000000000000000000000
          0406000000000000000000004058130B92BD2320BCEA2926C4F12928C4F12320
          BDEA120B93BD0000405800000000000000000000040600000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F81F0000F00F0000C0030000800100008001000000000000000000000000
          00000000000000000000000000000001000080010000C0030000E0070000F81F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0102000001020000000000000102312981AD584BBBFE584CB7FA584CB7FA584B
          BBFE312981AD0000010200000000000001020000010200000000000000010000
          00000000000003022D3C1813A2CC372ECCFF3B30D1FC362BD6FE362BD6FE3B30
          D1FC372CCDFF1712A3CC03022D3C000000000000000000000000000000010000
          03050C0A5C761D14CBF42419E2FF291EE6FC2E22E6FE3225E5FF3325E4FF3023
          E5FE2B1FE6FC241AE2FF1C14CBF40C095C760000030500000001000006080C09
          5A732017D5FE2E21E4FE3D2EDEFC483ADBFF4F42D9FF5246D7FE5346D7FE5144
          D8FF4A3DD9FF3F32DDFC3124E2FE2217D4FE0C095D760000000004032A371F16
          C9F53627E0FD493CDAFD5449D6FF5A51D5FEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF5B52D5FE564BD6FF4E41D8FD3B2DDFFD2118C9F600000000130D90B53225
          DAFF4E41DAFD584FD5FF5C56D6FE5D59D8FF5B5BD9FFFFFFFFFFFFFFFFFF5B5B
          DAFF5D5AD8FF5C57D5FE5A51D5FF5447D8FD362BD9FF06066190281ECEF9473A
          D9FE594FD7FF5C58D6FE5B5BD9FF585DDCFF545EDFFFFFFFFFFFFFFFFFFF545E
          E1FF575DDDFF5A5AD9FF5B59D6FE5B53D6FF4D41D8FE241BC9F73229D2FF5549
          D9FF5C56D6FF5A5BD9FF575CDDFF515FE3FF4D60E7FFFFFFFFFFFFFFFFFF4C61
          E8FF505FE4FF555DE0FF5A5DDBFF5C58D6FF5B50D8FF2C24CEFF3A30CFFE5C54
          D7FF5B5AD8FF575DDDFF505FE3FF4C62E9FF4964EEFFFFFFFFFFFFFFFFFF4A64
          EEFF4B62EBFF4F5FE5FF565EDFFF5A5AD9FF6058D8FF3028CDFE372DCEFF5A52
          D5FE5B5CDAFF535EE0FE4C60E8FF4A65EEFF4B68F1FFFFFFFFFFFFFFFFFF4A67
          F0FF4A66EFFF4B62EAFF525EE2FE5A5DDCFF5C56D5FE2C24CCFF1F18A6D14F49
          D4FF5F61DBFE515DE1FF4B63E9FE4967F0FF556FF2FFFFFFFFFFFFFFFFFF5B75
          F2FF4A67F1FF4B64ECFE4E5EE5FF5D62DDFE514CD5FF171197C00A075C773831
          CAF95D5ED8FB525EE1FD4B61EAFF4865F0FE6178F2FFFFFFFFFFFFFFFFFF7385
          F3FF4966F0FE4A63EDFF505FE3FD5B5FD9FB3832CCFA06053E4F00000F15110D
          7798403ED2FF5862DDFB4E62E9FD4764EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4865F0FF4D64EAFD5664E0FB3F3ED3FF100C789A00000203000000000100
          1015151083A53837D2FF4C58E2FF4E67EBFE4C69F1FF4E6CF2FF506DF3FF4D6A
          F1FF4D68ECFE4B59E3FF3738D4FF161084A501010F1400000000000001020000
          00000000070B0A07546B211DA7CF3236CFF6404EE0FE4355E4FE4355E5FE404F
          E2FE3136D0F6201DA7CF0A07536B0000070B0000000000000000000000000000
          0406000000000000000000004058130B92BD2320BCEA2926C4F12928C4F12320
          BDEA120B93BD0000405800000000000000000000040600000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F81F0000F00F0000C0030000800100008001000000000000000000000000
          00000000000000000000000000000001000080010000C0030000E0070000F81F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0102000001020000000000000102312981AD584BBBFE584CB7FA584CB7FA584B
          BBFE312981AD0000010200000000000001020000010200000000000000010000
          00000000000003022D3C1813A2CC372ECCFF3B30D1FC362BD6FE362BD6FE3B30
          D1FC372CCDFF1712A3CC03022D3C000000000000000000000000000000010000
          03050C0A5C761D14CBF42419E2FF291EE6FC2E22E6FE3225E5FF3325E4FF3023
          E5FE2B1FE6FC241AE2FF1C14CBF40C095C760000030500000001000006080C09
          5A732017D5FE2E21E4FE3D2EDEFC483ADBFF4F42D9FF5246D7FE5346D7FE5144
          D8FF4A3DD9FF3F32DDFC3124E2FE2217D4FE0C095D760000000004032A371F16
          C9F53627E0FD493CDAFD5449D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5C55
          D5FE5B52D5FE564BD6FF4E41D8FD3B2DDFFD2118C9F600000000130D90B53225
          DAFF4E41DAFD584FD5FF5C56D6FE5D59D8FF5B5BD9FF5A5BDAFFFFFFFFFFFFFF
          FFFF5D5AD8FF5C57D5FE5A51D5FF5447D8FD362BD9FF06066190281ECEF9473A
          D9FE594FD7FF5C58D6FE5B5BD9FF585DDCFF545EDFFF535DE1FFFFFFFFFFFFFF
          FFFF575DDDFF5A5AD9FF5B59D6FE5B53D6FF4D41D8FE241BC9F73229D2FF5549
          D9FF5C56D6FF5A5BD9FF575CDDFF515FE3FF4D60E7FF4C60E9FFFFFFFFFFFFFF
          FFFF505FE4FF555DE0FF5A5DDBFF5C58D6FF5B50D8FF2C24CEFF3A30CFFE5C54
          D7FF5B5AD8FF575DDDFF505FE3FF4C62E9FF4964EEFF4A66F0FFFFFFFFFFFFFF
          FFFF4B62EBFF4F5FE5FF565EDFFF5A5AD9FF6058D8FF3028CDFE372DCEFF5A52
          D5FE5B5CDAFF535EE0FE4C60E8FF4A65EEFF4B68F1FF4C68F1FFFFFFFFFFFFFF
          FFFF4A66EFFF4B62EAFF525EE2FE5A5DDCFF5C56D5FE2C24CCFF1F18A6D14F49
          D4FF5F61DBFE515DE1FF4B63E9FE4967F0FF556FF2FF7386F3FFFFFFFFFFFFFF
          FFFF4A67F1FF4B64ECFE4E5EE5FF5D62DDFE514CD5FF171197C00A075C773831
          CAF95D5ED8FB525EE1FD4B61EAFF4865F0FE6178F2FFB2B9F7FFFFFFFFFFFFFF
          FFFF4966F0FE4A63EDFF505FE3FD5B5FD9FB3832CCFA06053E4F00000F15110D
          7798403ED2FF5862DDFB4E62E9FD4764EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4865F0FF4D64EAFD5664E0FB3F3ED3FF100C789A00000203000000000100
          1015151083A53837D2FF4C58E2FF4E67EBFE4C69F1FF4E6CF2FF506DF3FF4D6A
          F1FF4D68ECFE4B59E3FF3738D4FF161084A501010F1400000000000001020000
          00000000070B0A07546B211DA7CF3236CFF6404EE0FE4355E4FE4355E5FE404F
          E2FE3136D0F6201DA7CF0A07536B0000070B0000000000000000000000000000
          0406000000000000000000004058130B92BD2320BCEA2926C4F12928C4F12320
          BDEA120B93BD0000405800000000000000000000040600000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F81F0000F00F0000C0030000800100008001000000000000000000000000
          00000000000000000000000000000001000080010000C0030000E0070000F81F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000004C005F00A600CF00CC00FF0066007F0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000C000F00A600CF00CC00FF00D52CFF00D52CFF0066007F0000
          000000000000000B010F01640D8F000000000000000000000000000000000000
          00000000000000A600CF00DF56FF00DF56FF00CC00FF00CC00FF0066007F0000
          00000000000001640D8F01BC30FF00590C7F0000000000000000000000000000
          0000004C005F00CC00FF00E882FF00CC00FF005A0070000D0010000000000000
          0000002C063F01BB2DFF00EEB0FF01BB2DFF0021042F00000000000000000000
          000000A600CF00F1ACFF00CC00FF0059006F000000000000000000000000000B
          010F019D15DF00DA74FF00F1ABFF00DA74FF019D15DF000B010F000000000000
          000000CC00FF00FAD7FF00CC00FF000D00100000000000000000000000000164
          0D8F01BD2EFF00EB91FF00EB91FF00EB91FF01C136FF017B10AF017B10AF01C2
          3CFF00F0A8FF00F0A8FF00F0A8FF01C23CFF01700F9F00000000000000000000
          000000000000009900BF00F6C3FF00CC00FF0000000000000000000B021001A8
          16EF00DC80FF00F5BFFF00DC80FF019D15DF000B021000000000000000000000
          00000019001F00CC00FF00EC92FF00B200DF000000000000000000000000002D
          064001B724FF00F1BEFF01BC30FF002205300000000000000000000000000032
          003F00A600CF00E162FF00CC00FF0066007F0000000000000000000000000000
          000001640D8F01BD33FF00590C7F00000000000000000000000000CC00FF00CC
          00FF00D731FF00D731FF00BF00EF000D00100000000000000000000000000000
          00000000000001700F9F0000000000000000000000000000000000CC00FF00CC
          00FF00CC00FF00BF00EF00260030000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000CC00FF00B2
          00DF00730090000D001000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100803000000282D0F
          530000000467414D410000B18F0BFC6105000000206348524D00007A26000080
          840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
          36504C54450026FF0026FF0026FF3351FFE1E5FFF0F2FF2D4CFF3A57FFEAEDFF
          FDFDFFFFFFFF5F77FFB0BCFF6078FFAFBBFFDDE2FF2545FF0000003A4A3BB200
          00000274524E5350DEAD436FBF00000001624B474411E2B53DBA000000097048
          597300000DD700000DD70142289B780000000774494D4507E10B070534328EFD
          0BB30000003C4944415418D36360606442028C0CA87C9008131A800830B3B0B2
          B0210BB073707271230B3031F170F1D241800FDD5A5E7E01540184D3313C87EE
          7D009AC80311B01748330000002574455874646174653A637265617465003230
          31372D31312D30375430353A35323A35302B30313A3030C80D84890000002574
          455874646174653A6D6F6469667900323031372D31312D30375430353A35323A
          35302B30313A3030B9503C350000001974455874536F66747761726500777777
          2E696E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100803000000282D0F
          530000000467414D410000B18F0BFC6105000000206348524D00007A26000080
          840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
          8A504C54452989032988022988022B89042C89053A911694C380E7F1E2EAF3E6
          9EC98D3B9218C8E1BFFFFFFFF3F8F1FAFCF9BFDCB4449722348E0F60A6422C8A
          063D931AEEF6EB88BD7271B057E4F0DFDBEBD495C482BEDBB2DEEDD8318C0B9A
          C788F0F7ED48992775B25CFBFDFA5EA541F8FBF7FCFEFCF2F8F0E1EEDB469825
          439621D6E8CEE5F1E0D8E9D0000000D2AB607F0000000274524E5350DEAD436F
          BF00000001624B47442DCDDA413D000000097048597300000DD700000DD70142
          289B780000000774494D4507E10B07060118F531BE8A000000734944415418D3
          6360606442028C0CA87C900894C1CC0265400458D9D83938B99004B87978F978
          F81102023C1C82423C7CC2700111513126711E09242DCC4C82923C5248024CCC
          D23C32B2C802723CF20AC8D62AF2282923BB43408547554D4D5D032EA0A9A50D
          043A9A48662000A6E7D0BD0F001BDB06C9E24DA8350000002574455874646174
          653A63726561746500323031372D31312D30375430363A30313A32342B30313A
          3030112DD20C0000002574455874646174653A6D6F6469667900323031372D31
          312D30375430363A30313A32342B30313A303060706AB0000000197445587453
          6F667477617265007777772E696E6B73636170652E6F72679BEE3C1A00000000
          49454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100803000000282D0F
          530000000467414D410000B18F0BFC6105000000206348524D00007A26000080
          840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
          9C504C5445FF2900FF2800FF2800FF2E07FF2901FF4B29FFB3A5FFF6F4FFF4F2
          FF9F8DFF2A02FF2B03FFD5CDFFFFFFFFF2EFFFFDFDFF6B4FFF3E1AFFF9F8FFA1
          90FF330DFF8068FFB1A3FF310BFF4421FFBDB1FF826BFF3B17FFFCFCFFDDD7FF
          9D8BFFE2DDFFB9ACFF6C51FF3510FFF8F7FF421FFF775EFFA291FF5030FFFEFE
          FF320CFFEDEAFFC8BEFF593AFFD2CAFFFCFBFFF1EEFFA999FF3611FF2C050000
          00B215529E0000000274524E5350DEAD436FBF00000001624B47443337D57C5E
          000000097048597300000DD700000DD70142289B780000000774494D4507E10B
          0705381D899979E6000000784944415418D36360606442028C0CA87C900894C1
          CC0265400458D9D83938B91002DC3CBC7CFCBC02080141216111515E31242DE2
          4C1292BC5248024CD232BCB2DCC8022C72F2BC0A08017145262625655E15B880
          2AAF1A97BA062F2B5C40530B64AD360BC20C1D5D3D7D03436443998C609EC1F4
          1CBAF7015DD0073D0CBA83F60000002574455874646174653A63726561746500
          323031372D31312D30375430353A35363A32392B30313A30305EBB6839000000
          2574455874646174653A6D6F6469667900323031372D31312D30375430353A35
          363A32392B30313A30302FE6D0850000001974455874536F6674776172650077
          77772E696E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100803000000282D0F
          530000000467414D410000B18F0BFC6105000000206348524D00007A26000080
          840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
          75504C54450606060505050505050C0C05A1A706E8F106868B06535605EBF406
          E4ED060E0E050A0B05CCD406D9E1061B1B056B6F055F6305D6DE06141505DBE3
          06D0D8060A0A05838806777B05D8E006222305151605E6EE06252605919606AB
          B1069DA206101005D5DE061A1B05949A06C0C706070705000000208576120000
          000274524E5350DEAD436FBF00000001624B4744265A0898B500000009704859
          7300000DD700000DD70142289B780000000774494D4507E10B070539374B3981
          71000000634944415418D365CF470E80300C04C010DAD27B87D0FFFF45844490
          0D7BB13D27AF1086243104BF6FD19BF94C0D96ED307001CF2710846184984082
          34A3901765C5A04613B7E85EE807DCF1460DC1A4941A302FF40FB962638FC9FD
          3839E8FCCB7DEB5F95E30559512B95240000002574455874646174653A637265
          61746500323031372D31312D30375430353A35373A35352B30313A30307C1C60
          6A0000002574455874646174653A6D6F6469667900323031372D31312D303754
          30353A35373A35352B30313A30300D41D8D60000001974455874536F66747761
          7265007777772E696E6B73636170652E6F72679BEE3C1A0000000049454E44AE
          426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100803000000282D0F
          530000000467414D410000B18F0BFC6105000000206348524D00007A26000080
          840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
          81504C5445F5A9EFF7AAEEF7AAEEE79FE1332A4F1C1A3B4D3A63A876AD0E1130
          1213331415354C3A63886193956A9E6C4F7D6F517FC88BC8543F69D291CFB47E
          B8EBA2E49D6FA52C2549F6A9EDEAA2E4DF9ADBD292D06A4E7BC187C2F5A9ED8A
          6395161637A172A81B193A795787F4A8EC3A2E54101231282245815D8EF2A7EA
          F3A8EB000000B06D8DE10000000274524E5350DEAD436FBF00000001624B4744
          2A53BED49E000000097048597300000DD700000DD70142289B78000000077449
          4D4507E10B07053B1E3BBD7B9F000000704944415418D36360606442028C0CA8
          7C9008131A800830B3B0B2B2B22109B073707271712309F070F0A26AE1E3E0E6
          17401610E400021E2401216111510E317184001048707048C205A4A46564E538
          E465E1020A1C1C8A1C1C4A083394E55454D5D4359890CDD084BB03C373E8DE07
          0081EA05A94A99FEA20000002574455874646174653A63726561746500323031
          372D31312D30375430353A35393A33302B30313A3030F68276F9000000257445
          5874646174653A6D6F6469667900323031372D31312D30375430353A35393A33
          302B30313A303087DFCE450000001974455874536F667477617265007777772E
          696E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100803000000282D0F
          530000000467414D410000B18F0BFC6105000000206348524D00007A26000080
          840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
          8A504C5445FCDC00FCDD01FCDD01F6D801D7BD011B1804605403F0D3012E2804
          050404796A03564B03504603FADB01A28E02141104917F02C7AE02F9DA012A24
          04736503C8AF02070604907E028E7C020C0A04EBCE019A87023A33039E8A02DB
          C001060504120F04D6BC01D4BA010F0D04B19B02463D03302903E0C401514603
          100D04110E04544A03E3C7010000009C0B7D6B0000000274524E5350DEAD436F
          BF00000001624B47442DCDDA413D000000097048597300000DD700000DD70142
          289B780000000774494D4507E10B07062536D80F52E3000000714944415418D3
          6360606442028C0CA87C90088CC50CA561022CAC6C2802EC1C9C5C2802DC9C3C
          BCC8027C9CFC0282480242C29C4020821010E5141397109394820B4873CA3031
          C970CAC205E4E41514959439551086AA72CACB73AA312304D43534B5B475505C
          CACB0B733A86E7D0BD0F00C9F7064B62A30FCA0000002574455874646174653A
          63726561746500323031372D31312D30375430363A33373A35342B30313A3030
          8F14CD530000002574455874646174653A6D6F6469667900323031372D31312D
          30375430363A33373A35342B30313A3030FE4975EF0000001974455874536F66
          7477617265007777772E696E6B73636170652E6F72679BEE3C1A000000004945
          4E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100803000000282D0F
          530000000467414D410000B18F0BFC6105000000206348524D00007A26000080
          840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
          6C504C5445B9DCF5B8DBF4B8DBF48AA4B7181C200F11131A1E228EA9BD849DB0
          1215180A0B0C0404057990A190ACC0161A1DB3D5ED303940697D8B859EB11417
          1AB2D3ECB7DAF3272D336578857A91A2111417B0D1E9B5D8F01D222761738175
          8B9B0F1114ADCEE61B2024718695000000604D6DE60000000274524E5350DEAD
          436FBF00000001624B4744232A626C3A000000097048597300000DD700000DD7
          0142289B780000000774494D4507E10B0706271EDF8C989B0000005D49444154
          18D365CF3516C0300C4441470E7AC3CC74FF43068A3CC9F99DA65A29E510CB51
          F27E84AC5ED0AE77E7071F84913106883F784A9066027214C4A1445573685A74
          C4A1C7307298662C7C07ADD87601FA38C55231FDF79CFDFE0536BA04630D9C4C
          3C0000002574455874646174653A63726561746500323031372D31312D303754
          30363A33393A33302B30313A3030A3FDD0740000002574455874646174653A6D
          6F6469667900323031372D31312D30375430363A33393A33302B30313A3030D2
          A068C80000001974455874536F667477617265007777772E696E6B7363617065
          2E6F72679BEE3C1A0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000184944415478DA63601805C31DFCFFFF7FF268288C02620000BC8303
          916C12317A0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100803000000282D0F
          530000000467414D410000B18F0BFC6105000000206348524D00007A26000080
          840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
          60504C5445CCDCB3CBDDB1CBDCB1C6D7AB405F1D617D40C9DAAF6A854AACC191
          254701768F573A5A17ACC0902648029EB481395916294B05335410BBCDA0748E
          554F6C2D4D6B2C7690572A4B069FB482789259C6D8AC4564236E884ECADBB066
          81460000006B97AE390000000274524E5350DEAD436FBF00000001624B47441F
          050D10BD000000097048597300000DD700000DD70142289B780000000774494D
          4507E10B0A020921978ECC8B0000006A4944415418D365CF490E80200C0550AC
          8A7C05159C71B8FF31C58410AB5DFCA66FD356888C5E95093E3F429F7A202F4A
          195A55E411145087D64045D08069893AE804BDB18E413760940CE4849901396B
          1606B41A245068426E486BFD7E843CAFDD47E0A7FF9EFBBE7F03B302057A5395
          46DE0000002574455874646174653A63726561746500323031372D31312D3130
          5430323A30393A33332B30313A3030B111F5480000002574455874646174653A
          6D6F6469667900323031372D31312D31305430323A30393A33332B30313A3030
          C04C4DF40000001974455874536F667477617265007777772E696E6B73636170
          652E6F72679BEE3C1A0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100803000000282D0F
          530000000467414D410000B18F0BFC6105000000206348524D00007A26000080
          840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
          78504C5445FFFF80FFFF80FFFF809090345050094F4F0856560D767623A6A643
          FAFA7D4A4A05444401494904464602626215F1F177EDED74FBFB7DCFCF605E5E
          12909035B9B950FEFE7F454501E8E870EFEF75454502E3E36DFDFD7FCECE5F5C
          5C118B8B314B4B056161159A9A3B5B5B115F5F137A7A25A6A6440000003D4CFC
          A40000000274524E5350DEAD436FBF00000001624B4744272D0FA82300000009
          7048597300000DD700000DD70142289B780000000774494D4507E10B0A020732
          8DB3A0DB000000644944415418D365CFC71240301405D088EE06D17B0DFEFF13
          0D0B29EEEE9D99D708B1A8128BE8F523D4C80BB6E37A7E104A88C06220493F60
          E0595EA05481D20A51AD016FD06AD0F518CC965181709AB17C43573CD9E4DA5D
          88E3BC94C3B4D37FCF99EFDFFDF306252BAE3FB7000000257445587464617465
          3A63726561746500323031372D31312D31305430323A30373A35302B30313A30
          30585FD6E10000002574455874646174653A6D6F6469667900323031372D3131
          2D31305430323A30373A35302B30313A303029026E5D0000001974455874536F
          667477617265007777772E696E6B73636170652E6F72679BEE3C1A0000000049
          454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100803000000282D0F
          530000000467414D410000B18F0BFC6105000000206348524D00007A26000080
          840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
          39504C5445000000F80000F90202F70000F90101F90101F80000F90101FA0000
          F80000FA0000F80000F80000F80000FA0000FA0000F70000F9010100000083C1
          E1270000001174524E5300448041E6E36CFE5F6F626E6D6B6A6943D7879A6C00
          000001624B47440088051D48000000097048597300000DD700000DD70142289B
          780000000774494D4507E10B08052C39C3575A34000000414944415418D39DCF
          4B0E80201004D152C001E47BFFCB121217CEECB4766FD349C3F78E53E5F05315
          B89425427A3BEF95DB188A31546368C6D0451B86FB71EA690118080527EF060D
          BD0000002574455874646174653A63726561746500323031372D31312D303854
          30353A34343A35372B30313A30304FD072BA0000002574455874646174653A6D
          6F6469667900323031372D31312D30385430353A34343A35372B30313A30303E
          8DCA060000001974455874536F667477617265007777772E696E6B7363617065
          2E6F72679BEE3C1A0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100803000000282D0F
          530000000467414D410000B18F0BFC6105000000206348524D00007A26000080
          840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
          45504C54450000001700FF1800FF1600FF1600FF1500FF1600FF1700FF1500FF
          1700FF1500FF1700FF1500FF1700FF1700FF1600FF1500FF1600FF1600FF1600
          FF1500FF1600FF000000CA076CA00000001574524E5300434169FE626A636B64
          6D656E666F676CE6E3803EE2CB3C3900000001624B47440088051D4800000009
          7048597300000DD700000DD70142289B780000000774494D4507E10B10081202
          AEEC444E0000004A4944415418D39DCFCB0E80201043D18A55F1AD68FFFF5795
          1002B3E5ECEE245D0CD0AC73B67B72A87B94C4A9B457C439F7A2846BEA4D19F7
          D8870A9EC0A5DABFBACD4101EE31DE86A73EEC230709188E4AF3000000257445
          5874646174653A63726561746500323031372D31312D31365430383A31383A30
          322B30313A3030DE6B42230000002574455874646174653A6D6F646966790032
          3031372D31312D31365430383A31383A30322B30313A3030AF36FA9F00000019
          74455874536F667477617265007777772E696E6B73636170652E6F72679BEE3C
          1A0000000049454E44AE426082}
      end>
  end
  object pm_DongSelect: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = pm_DongSelectPopup
    Left = 410
    Top = 34
    object N8: TMenuItem
      Caption = #54665#51221#46041#49440#53469
    end
    object N9: TMenuItem
      Caption = #48277#51221#46041#49440#53469
    end
  end
  object pm_ErrorPOI: TPopupMenu
    AutoHotkeys = maManual
    Left = 362
    Top = 338
    object NErrorPOI: TMenuItem
      Caption = #50724#47448'POI'#49888#44256
      OnClick = NErrorPOIClick
    end
  end
  object TT3_1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = TT3_1Timer
    Left = 175
    Top = 436
  end
  object TT2_1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = TT2_1Timer
    Left = 135
    Top = 436
  end
  object tmThreadPaste: TTimer
    Enabled = False
    OnTimer = tmThreadPasteTimer
    Left = 16
    Top = 324
  end
  object TT2_D: TTimer
    Enabled = False
    Interval = 1
    OnTimer = TT2_DTimer
    Left = 135
    Top = 484
  end
  object TT2_N: TTimer
    Enabled = False
    Interval = 1
    OnTimer = TT2_NTimer
    Left = 135
    Top = 532
  end
  object tmrWNSUM: TTimer
    Enabled = False
    Interval = 10
    OnTimer = tmrWNSUMTimer
    Left = 391
    Top = 420
  end
  object trm_2ndSearch: TTimer
    Enabled = False
    Interval = 10
    OnTimer = trm_2ndSearchTimer
    Left = 311
    Top = 468
  end
  object trm_WK3SEC: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = trm_WK3SECTimer
    Left = 237
    Top = 476
  end
  object tmrDongPolygon: TTimer
    Enabled = False
    OnTimer = tmrDongPolygonTimer
    Left = 483
    Top = 500
  end
end

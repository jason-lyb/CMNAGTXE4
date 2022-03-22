object Frm_JON012: TFrm_JON012
  Tag = 100
  Left = 0
  Top = 0
  Caption = #44284#44144#51060#50857#45236#50669
  ClientHeight = 459
  ClientWidth = 843
  Color = clBtnFace
  Constraints.MinHeight = 240
  Constraints.MinWidth = 510
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  Position = poDesigned
  Scaled = False
  ScreenSnap = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnHide = FormHide
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  DesignSize = (
    843
    459)
  TextHeight = 15
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 843
    Height = 420
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 1
    TabOrder = 0
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 841
      Height = 418
      ParentCustomHint = False
      Align = alClient
      BiDiMode = bdLeftToRight
      Color = clBtnFace
      ParentBackground = False
      ParentBiDiMode = False
      ParentColor = False
      TabOrder = 0
      Properties.ActivePage = appTabSheet1
      Properties.CustomButtons.Buttons = <>
      Properties.NavigatorPosition = npLeftTop
      Properties.Style = 9
      Properties.TabHeight = 1
      Properties.TabSlants.Positions = []
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Sharp'
      OnClick = cxPageControl1Click
      ClientRectBottom = 418
      ClientRectRight = 841
      ClientRectTop = 0
      object appTabSheet1: TcxTabSheet
        ImageIndex = 0
        TabVisible = False
        DesignSize = (
          841
          418)
        object ctxGrid: TcxGrid
          Left = 0
          Top = 0
          Width = 841
          Height = 318
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          PopupMenu = PopupMenu1
          TabOrder = 0
          LookAndFeel.SkinName = 'Office2010Silver'
          OnMouseLeave = ctxGridMouseLeave
          object cxGVeOrderList: TcxGridDBTableView
            PopupMenu = PopupMenu1
            OnMouseMove = cxGVeOrderListMouseMove
            Navigator.Buttons.CustomButtons = <>
            FilterBox.CustomizeDialog = False
            FilterBox.Visible = fvNever
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCellClick = cxGVeOrderListCellClick
            OnCellDblClick = cxGVeOrderListCellDblClick
            OnGetCellHeight = cxGVeOrderListGetCellHeight
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            OptionsBehavior.DragHighlighting = False
            OptionsBehavior.DragOpening = False
            OptionsBehavior.DragScrolling = False
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.ExpandMasterRowOnDblClick = False
            OptionsBehavior.ImmediateEditor = False
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.FocusRect = False
            OptionsView.NoDataToDisplayInfoText = ' '
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 23
            Preview.RightIndent = 10
            Styles.OnGetContentStyle = cxGVeOrderListStylesGetContentStyle
            OnColumnHeaderClick = cxGVeOrderListColumnHeaderClick
            OnColumnPosChanged = cxGVeOrderListColumnPosChanged
            OnColumnSizeChanged = cxGVeOrderListColumnSizeChanged
            object cxColGVeOrderListColumn31: TcxGridDBColumn
              DataBinding.FieldName = 'No'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 45
            end
            object cxGVeOrderListColumn1: TcxGridDBColumn
              DataBinding.FieldName = #52572#52488#51217#49688#51068#49884
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Sorting = False
              Width = 91
            end
            object cxGVeOrderListColumn2: TcxGridDBColumn
              DataBinding.FieldName = #49345#53468
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = Frm_Main.cximgOrderStatus
              Properties.Items = <
                item
                  Description = #51217#49688
                  ImageIndex = 0
                  Value = '0'
                end
                item
                  Description = #48176#52264
                  ImageIndex = 1
                  Value = '1'
                end
                item
                  Description = #50756#47308
                  ImageIndex = 2
                  Value = '2'
                end
                item
                  Description = #44053#51228
                  ImageIndex = 3
                  Value = '3'
                end
                item
                  Description = #47928#51032
                  ImageIndex = 4
                  Value = '4'
                end
                item
                  Description = #45824#44592
                  ImageIndex = 5
                  Value = '5'
                end
                item
                  Description = #48176#52264#52712#49548
                  ImageIndex = 11
                  Value = '7'
                end
                item
                  Description = #52712#49548
                  ImageIndex = 6
                  Value = '8'
                end
                item
                  Description = #49688#51221
                  ImageIndex = 7
                  Value = '9'
                end
                item
                  Description = #50696#50557
                  ImageIndex = 8
                  Value = 'R'
                end
                item
                  Description = #45824#44592#54644#51228
                  ImageIndex = 12
                  Value = '6'
                end
                item
                  Description = #44221#54408#51648#44553
                  ImageIndex = 13
                  Value = 'gi'
                end
                item
                  Description = #44032#44201#49688#51221
                  ImageIndex = 14
                  Value = 'cs'
                end
                item
                  Description = #48372#51221#51077#47141
                  ImageIndex = 15
                  Value = '0'
                end
                item
                  Description = #50868#54665
                  ImageIndex = 19
                  Value = 'D'
                end>
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentVert = vaTop
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              VisibleForCustomization = False
              Width = 58
            end
            object cxGVeOrderListColumn3: TcxGridDBColumn
              DataBinding.FieldName = #52636#48156#51648
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 82
            end
            object cxGVeOrderListColumn4: TcxGridDBColumn
              DataBinding.FieldName = #48373#49688#53084
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 42
            end
            object cxGVeOrderListColumn5: TcxGridDBColumn
              DataBinding.FieldName = #46020#52265#51648
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 72
            end
            object cxGVeOrderListColumn6: TcxGridDBColumn
              DataBinding.FieldName = #44592#49324
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 74
            end
            object cxGVeOrderListColumn7: TcxGridDBColumn
              DataBinding.FieldName = #50836#44552
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 57
            end
            object cxGVeOrderListColumn31: TcxGridDBColumn
              DataBinding.FieldName = #47560#51068#47532#51648
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Filtering = False
            end
            object cxGVeOrderListColumn8: TcxGridDBColumn
              DataBinding.FieldName = #52712#49548#49324#50976
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 88
            end
            object cxGVeOrderListColumn9: TcxGridDBColumn
              DataBinding.FieldName = #51201#50836
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Filtering = False
            end
            object cxGVeOrderListColumn10: TcxGridDBColumn
              DataBinding.FieldName = #51217#49688#51088
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 72
            end
            object cxGVeOrderListColumn11: TcxGridDBColumn
              DataBinding.FieldName = #45824#54364#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 93
            end
            object cxGVeOrderListColumn12: TcxGridDBColumn
              DataBinding.FieldName = #44256#44061#47700#47784
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 112
            end
            object cxGVeOrderListColumn13: TcxGridDBColumn
              DataBinding.FieldName = #51217#49688#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Filtering = False
            end
            object cxGVeOrderListColumn14: TcxGridDBColumn
              DataBinding.FieldName = #51217#49688#51068#49884
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object cxGVeOrderListColumn15: TcxGridDBColumn
              DataBinding.FieldName = #49345#53468#53076#46300'2'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object cxGVeOrderListColumn16: TcxGridDBColumn
              DataBinding.FieldName = #44256#44061#51204#54868
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object cxGVeOrderListColumn17: TcxGridDBColumn
              DataBinding.FieldName = #52636#51340#54364'X'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object cxGVeOrderListColumn18: TcxGridDBColumn
              DataBinding.FieldName = #52636#51340#54364'Y'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object cxGVeOrderListColumn19: TcxGridDBColumn
              DataBinding.FieldName = #52636'1'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object cxGVeOrderListColumn20: TcxGridDBColumn
              DataBinding.FieldName = #52636'2'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object cxGVeOrderListColumn21: TcxGridDBColumn
              DataBinding.FieldName = #52636'3'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object cxGVeOrderListColumn22: TcxGridDBColumn
              DataBinding.FieldName = #52636'4'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object cxGVeOrderListColumn23: TcxGridDBColumn
              DataBinding.FieldName = #52636'5'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object cxGVeOrderListColumn24: TcxGridDBColumn
              DataBinding.FieldName = #46020#51340#54364'X'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object cxGVeOrderListColumn25: TcxGridDBColumn
              DataBinding.FieldName = #46020#51340#54364'Y'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object cxGVeOrderListColumn26: TcxGridDBColumn
              DataBinding.FieldName = #46020'1'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object cxGVeOrderListColumn27: TcxGridDBColumn
              DataBinding.FieldName = #46020'2'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object cxGVeOrderListColumn28: TcxGridDBColumn
              DataBinding.FieldName = #46020'3'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object cxGVeOrderListColumn29: TcxGridDBColumn
              DataBinding.FieldName = #46020'4'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object cxGVeOrderListColumn30: TcxGridDBColumn
              DataBinding.FieldName = #46020'5'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object cxColGVeOrderListColumn33: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#47749
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 100
            end
            object cxColGVeOrderListColumn34: TcxGridDBColumn
              DataBinding.FieldName = #53084#49468#53552#53076#46300
              Visible = False
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
            end
            object asgGVeOrderListColumn31: TcxGridDBColumn
              DataBinding.FieldName = #50724#45908#53440#51077
              Visible = False
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
            end
            object asgGVeOrderListColumn32: TcxGridDBColumn
              DataBinding.FieldName = #48176#52264#49884#44036
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taRightJustify
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
            end
            object asgGVeOrderListColumn33: TcxGridDBColumn
              DataBinding.FieldName = #50756#47308#49884#44036
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taRightJustify
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
            end
            object cxGVeOrderListColumn35: TcxGridDBColumn
              DataBinding.FieldName = #44592#49324#49324#48264
              Visible = False
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
            end
            object cxGVeOrderListColumn32: TcxGridDBColumn
              DataBinding.FieldName = #44592#49324#48376#49324#53076#46300
              Visible = False
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
            end
            object cxgrdbclmnGVeOrderListColumn33: TcxGridDBColumn
              DataBinding.FieldName = #44592#49324#51648#49324#53076#46300
              Visible = False
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
            end
            object cxGVeOrderListColumn34: TcxGridDBColumn
              DataBinding.FieldName = #44592#49324#53084#49468#53552
              Visible = False
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
            end
            object cxGVeOrderListColumn36: TcxGridDBColumn
              DataBinding.FieldName = #51217#49688#44396#48516
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
            end
            object cxGVeOrderListColumn33: TcxGridDBColumn
              DataBinding.FieldName = #51201#50836'2'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 100
            end
            object cxGVeOrderListColumn37: TcxGridDBColumn
              DataBinding.FieldName = #44221#50976#50836#44552
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
            end
            object cxGVeOrderListColumn38: TcxGridDBColumn
              DataBinding.FieldName = #49892#51228#46321#47197#53084#49468#53552
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
            object cxGVeOrderListColumn39: TcxGridDBColumn
              DataBinding.FieldName = #53084#49468#53552'2'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
            object cxGVeOrderListColumn40: TcxGridDBColumn
              DataBinding.FieldName = #48372#51221#50836#44552
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              HeaderAlignmentHorz = taCenter
            end
            object cxGVeOrderListColumn42: TcxGridDBColumn
              DataBinding.FieldName = #45824#44592#50836#44552
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              HeaderAlignmentHorz = taCenter
            end
            object cxGVeOrderListColumn41: TcxGridDBColumn
              DataBinding.FieldName = #44221#50976#51648
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              OnGetCellHint = cxColGVeOrderListColumn31GetCellHint
              HeaderAlignmentHorz = taCenter
            end
            object cxGVeOrderListColumn43: TcxGridDBColumn
              DataBinding.FieldName = #44221#50976#51648#51221#48372
              Visible = False
            end
          end
          object cxWkConnect: TcxGridLevel
            GridView = cxGVeOrderList
          end
        end
        object cxlbCustTel: TcxLabel
          Left = 611
          Top = 80
          Caption = #44256#44061#48264#54840
          Style.TextColor = 10329501
          Transparent = True
          Visible = False
        end
        object cxlbKeyNum: TcxLabel
          Left = 611
          Top = 64
          Caption = #45824#54364#48264#54840
          Style.TextColor = 10329501
          Transparent = True
          Visible = False
        end
        object cxlbSlip: TcxLabel
          Left = 611
          Top = 48
          Caption = #51217#49688#48264#54840
          Style.TextColor = 10329501
          Transparent = True
          Visible = False
        end
        object PnlHelp: TPanel
          Left = 168
          Top = 200
          Width = 74
          Height = 26
          BevelKind = bkFlat
          BevelOuter = bvNone
          Color = 14155775
          ParentBackground = False
          TabOrder = 4
          Visible = False
          object Lbl_Hint: TLabel
            Left = 3
            Top = 4
            Width = 44
            Height = 15
            Caption = 'Lbl_Hint'
          end
        end
        object cxCheckComboBox1: TcxCheckComboBox
          Left = 3
          Top = 113
          Properties.Items = <
            item
              Description = #50756#47308
              ShortDescription = '2'
            end
            item
              Description = #52712#49548
              ShortDescription = '8'
            end
            item
              Description = #47928#51032
              ShortDescription = '4'
            end>
          Properties.OnClickCheck = cxCheckComboBox1PropertiesClickCheck
          TabOrder = 5
          Visible = False
          Width = 121
        end
        object Pnl_DestList: TPanel
          Left = 0
          Top = 318
          Width = 841
          Height = 100
          Align = alBottom
          Constraints.MinHeight = 25
          ParentBackground = False
          TabOrder = 6
          object cxGrid2: TcxGrid
            Left = 1
            Top = 32
            Width = 839
            Height = 67
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            OnMouseLeave = ctxGridMouseLeave
            object cxGVeOrderDestList: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              FilterBox.CustomizeDialog = False
              FilterBox.Visible = fvNever
              ScrollbarAnnotations.CustomAnnotations = <>
              OnCellClick = cxGVeOrderListCellClick
              OnCellDblClick = cxGVeOrderListCellDblClick
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              Filtering.MRUItemsList = False
              Filtering.ColumnMRUItemsList = False
              OptionsBehavior.DragHighlighting = False
              OptionsBehavior.DragOpening = False
              OptionsBehavior.DragScrolling = False
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.ExpandMasterRowOnDblClick = False
              OptionsBehavior.ImmediateEditor = False
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsCustomize.ColumnHidingOnGrouping = False
              OptionsCustomize.ColumnHorzSizing = False
              OptionsCustomize.ColumnMoving = False
              OptionsData.Editing = False
              OptionsSelection.CellSelect = False
              OptionsSelection.HideFocusRectOnExit = False
              OptionsSelection.UnselectFocusedRecordOnExit = False
              OptionsView.FocusRect = False
              OptionsView.NoDataToDisplayInfoText = ' '
              OptionsView.ExpandButtonsForEmptyDetails = False
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 23
              Preview.RightIndent = 10
              Styles.OnGetContentStyle = cxGVeOrderListStylesGetContentStyle
              OnColumnHeaderClick = cxGVeOrderListColumnHeaderClick
              object cxGridDBColumn1: TcxGridDBColumn
                DataBinding.FieldName = 'No'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 45
              end
              object cxGridDBColumn2: TcxGridDBColumn
                DataBinding.FieldName = #52572#52488#51217#49688#51068#49884
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Options.Sorting = False
                Width = 91
              end
              object cxGridDBColumn3: TcxGridDBColumn
                DataBinding.FieldName = #49345#53468
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Images = Frm_Main.cximgOrderStatus
                Properties.Items = <
                  item
                    Description = #51217#49688
                    ImageIndex = 0
                    Value = '0'
                  end
                  item
                    Description = #48176#52264
                    ImageIndex = 1
                    Value = '1'
                  end
                  item
                    Description = #50756#47308
                    ImageIndex = 2
                    Value = '2'
                  end
                  item
                    Description = #44053#51228
                    ImageIndex = 3
                    Value = '3'
                  end
                  item
                    Description = #47928#51032
                    ImageIndex = 4
                    Value = '4'
                  end
                  item
                    Description = #45824#44592
                    ImageIndex = 5
                    Value = '5'
                  end
                  item
                    Description = #48176#52264#52712#49548
                    ImageIndex = 11
                    Value = '7'
                  end
                  item
                    Description = #52712#49548
                    ImageIndex = 6
                    Value = '8'
                  end
                  item
                    Description = #49688#51221
                    ImageIndex = 7
                    Value = '9'
                  end
                  item
                    Description = #50696#50557
                    ImageIndex = 8
                    Value = 'R'
                  end
                  item
                    Description = #45824#44592#54644#51228
                    ImageIndex = 12
                    Value = '6'
                  end
                  item
                    Description = #44221#54408#51648#44553
                    ImageIndex = 13
                    Value = 'gi'
                  end
                  item
                    Description = #44032#44201#49688#51221
                    ImageIndex = 14
                    Value = 'cs'
                  end
                  item
                    Description = #48372#51221#51077#47141
                    ImageIndex = 15
                    Value = 'bi'
                  end
                  item
                    Description = #50868#54665
                    ImageIndex = 19
                    Value = 'D'
                  end>
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentVert = vaTop
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                VisibleForCustomization = False
                Width = 58
              end
              object cxGridDBColumn4: TcxGridDBColumn
                DataBinding.FieldName = #52636#48156#51648
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Width = 82
              end
              object cxGridDBColumn5: TcxGridDBColumn
                DataBinding.FieldName = #48373#49688#53084
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Width = 42
              end
              object cxGridDBColumn6: TcxGridDBColumn
                DataBinding.FieldName = #46020#52265#51648
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Width = 72
              end
              object cxGridDBColumn7: TcxGridDBColumn
                DataBinding.FieldName = #44592#49324
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Width = 74
              end
              object cxGridDBColumn8: TcxGridDBColumn
                DataBinding.FieldName = #50836#44552
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0.;-,0.'
                Properties.ReadOnly = True
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Width = 57
              end
              object cxGridDBColumn9: TcxGridDBColumn
                DataBinding.FieldName = #47560#51068#47532#51648
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
              end
              object cxGridDBColumn10: TcxGridDBColumn
                DataBinding.FieldName = #52712#49548#49324#50976
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Width = 88
              end
              object cxGridDBColumn11: TcxGridDBColumn
                DataBinding.FieldName = #51201#50836
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
              end
              object cxGridDBColumn12: TcxGridDBColumn
                DataBinding.FieldName = #51217#49688#51088
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Width = 72
              end
              object cxGridDBColumn13: TcxGridDBColumn
                DataBinding.FieldName = #45824#54364#48264#54840
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Width = 93
              end
              object cxGridDBColumn14: TcxGridDBColumn
                DataBinding.FieldName = #44256#44061#47700#47784
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Width = 112
              end
              object cxGridDBColumn15: TcxGridDBColumn
                DataBinding.FieldName = #51217#49688#48264#54840
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
              end
              object cxGridDBColumn16: TcxGridDBColumn
                DataBinding.FieldName = #51217#49688#51068#49884
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
              end
              object cxGridDBColumn17: TcxGridDBColumn
                DataBinding.FieldName = #49345#53468#53076#46300'2'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
              end
              object cxGridDBColumn18: TcxGridDBColumn
                DataBinding.FieldName = #44256#44061#51204#54868
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
              end
              object cxGridDBColumn19: TcxGridDBColumn
                DataBinding.FieldName = #52636#51340#54364'X'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
              end
              object cxGridDBColumn20: TcxGridDBColumn
                DataBinding.FieldName = #52636#51340#54364'Y'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
              end
              object cxGridDBColumn21: TcxGridDBColumn
                DataBinding.FieldName = #52636'1'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
              end
              object cxGridDBColumn22: TcxGridDBColumn
                DataBinding.FieldName = #52636'2'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
              end
              object cxGridDBColumn23: TcxGridDBColumn
                DataBinding.FieldName = #52636'3'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
              end
              object cxGridDBColumn24: TcxGridDBColumn
                DataBinding.FieldName = #52636'4'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
              end
              object cxGridDBColumn25: TcxGridDBColumn
                DataBinding.FieldName = #52636'5'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
              end
              object cxGridDBColumn26: TcxGridDBColumn
                DataBinding.FieldName = #46020#51340#54364'X'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
              end
              object cxGridDBColumn27: TcxGridDBColumn
                DataBinding.FieldName = #46020#51340#54364'Y'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
              end
              object cxGridDBColumn28: TcxGridDBColumn
                DataBinding.FieldName = #46020'1'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
              end
              object cxGridDBColumn29: TcxGridDBColumn
                DataBinding.FieldName = #46020'2'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
              end
              object cxGridDBColumn30: TcxGridDBColumn
                DataBinding.FieldName = #46020'3'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
              end
              object cxGridDBColumn31: TcxGridDBColumn
                DataBinding.FieldName = #46020'4'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
              end
              object cxGridDBColumn32: TcxGridDBColumn
                DataBinding.FieldName = #46020'5'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
              end
              object cxGridDBColumn33: TcxGridDBColumn
                DataBinding.FieldName = #51648#49324#47749
                HeaderAlignmentHorz = taCenter
                Options.Filtering = False
                Width = 100
              end
              object cxGridDBColumn34: TcxGridDBColumn
                DataBinding.FieldName = #53084#49468#53552#53076#46300
                Visible = False
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBColumn35: TcxGridDBColumn
                DataBinding.FieldName = #50724#45908#53440#51077
                Visible = False
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBColumn36: TcxGridDBColumn
                DataBinding.FieldName = #48176#52264#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taRightJustify
                HeaderAlignmentHorz = taCenter
                Options.Filtering = False
              end
              object cxGridDBColumn37: TcxGridDBColumn
                DataBinding.FieldName = #50756#47308#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taRightJustify
                HeaderAlignmentHorz = taCenter
                Options.Filtering = False
              end
              object cxGridDBColumn38: TcxGridDBColumn
                DataBinding.FieldName = #44592#49324#49324#48264
                Visible = False
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBColumn39: TcxGridDBColumn
                DataBinding.FieldName = #44592#49324#48376#49324#53076#46300
                Visible = False
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBColumn40: TcxGridDBColumn
                DataBinding.FieldName = #44592#49324#51648#49324#53076#46300
                Visible = False
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBColumn41: TcxGridDBColumn
                DataBinding.FieldName = #44592#49324#53084#49468#53552
                Visible = False
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBColumn42: TcxGridDBColumn
                DataBinding.FieldName = #51217#49688#44396#48516
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Filtering = False
              end
              object cxGridDBColumn43: TcxGridDBColumn
                DataBinding.FieldName = #51201#50836'2'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Filtering = False
                Width = 100
              end
              object cxGridDBColumn44: TcxGridDBColumn
                DataBinding.FieldName = #44221#50976#50836#44552
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0.;-,0.'
                HeaderAlignmentHorz = taCenter
              end
              object cxGVeOrderDestListColumn1: TcxGridDBColumn
                DataBinding.FieldName = #49892#51228#46321#47197#53084#49468#53552
                Visible = False
              end
              object cxGVeOrderDestListColumn2: TcxGridDBColumn
                DataBinding.FieldName = #53084#49468#53552'2'
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
              end
              object cxGVeOrderDestListColumn3: TcxGridDBColumn
                DataBinding.FieldName = #48372#51221#50836#44552
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0.;-,0.'
                HeaderAlignmentHorz = taCenter
              end
              object cxGVeOrderDestListColumn4: TcxGridDBColumn
                DataBinding.FieldName = #45824#44592#50836#44552
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0.;-,0.'
                HeaderAlignmentHorz = taCenter
              end
              object cxGVeOrderDestListColumn5: TcxGridDBColumn
                DataBinding.FieldName = #44221#50976#51648
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
              end
              object cxGVeOrderDestListColumn6: TcxGridDBColumn
                DataBinding.FieldName = #44221#50976#51648#51221#48372
                Visible = False
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxGVeOrderDestList
            end
          end
          object Panel12: TPanel
            Left = 1
            Top = 1
            Width = 839
            Height = 31
            Align = alTop
            BevelOuter = bvNone
            Color = 9014669
            ParentBackground = False
            TabOrder = 1
            OnResize = Panel12Resize
            DesignSize = (
              839
              31)
            object edtMemo: TcxTextEdit
              Left = 543
              Top = 3
              Anchors = [akTop, akRight]
              AutoSize = False
              ParentFont = False
              Properties.ImeMode = imSHanguel
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #44404#47548
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = False
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 8
              OnEnter = edtMemoEnter
              OnExit = edtMemoExit
              OnKeyDown = edtDestKeyDown
              Height = 25
              Width = 166
            end
            object edtBigo: TcxTextEdit
              Left = 375
              Top = 3
              Anchors = [akTop, akRight]
              AutoSize = False
              ParentFont = False
              Properties.ImeMode = imSHanguel
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #44404#47548
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = False
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 3
              OnEnter = edtBigoEnter
              OnExit = edtBigoExit
              OnKeyDown = edtDestKeyDown
              Height = 25
              Width = 166
            end
            object btnDestSearch: TcxButton
              Left = 726
              Top = 3
              Width = 108
              Height = 24
              Cursor = crHandPoint
              Anchors = [akTop, akRight]
              Caption = #44160#49353
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 2
              OnClick = btnDestSearchClick
            end
            object edtDest: TcxTextEdit
              Left = 208
              Top = 3
              Anchors = [akTop, akRight]
              AutoSize = False
              ParentFont = False
              Properties.ImeMode = imSHanguel
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #44404#47548
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = False
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              OnEnter = edtDestEnter
              OnExit = edtDestExit
              OnKeyDown = edtDestKeyDown
              Height = 25
              Width = 166
            end
            object edtStar: TcxTextEdit
              Left = 42
              Top = 3
              Anchors = [akTop, akRight]
              AutoSize = False
              ParentFont = False
              Properties.ImeMode = imSHanguel
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #44404#47548
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = False
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 0
              OnEnter = edtStarEnter
              OnExit = edtStarExit
              OnKeyDown = edtDestKeyDown
              Height = 25
              Width = 166
            end
            object lblStarFlag: TcxLabel
              Left = 48
              Top = 4
              Cursor = crIBeam
              Hint = 'Color'
              Anchors = [akTop, akRight]
              Caption = #52636#48156#51648
              ParentColor = False
              ParentFont = False
              Style.Color = 11974840
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWhite
              Style.Font.Height = -15
              Style.Font.Name = #47569#51008' '#44256#46357
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = True
              Style.TextColor = 10329501
              Style.TransparentBorder = True
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              Transparent = True
              OnClick = lblStarFlagClick
            end
            object lblDestFlag: TcxLabel
              Left = 213
              Top = 4
              Cursor = crIBeam
              Hint = 'Color'
              Anchors = [akTop, akRight]
              Caption = #46020#52265#51648
              ParentColor = False
              ParentFont = False
              Style.Color = 11974840
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWhite
              Style.Font.Height = -15
              Style.Font.Name = #47569#51008' '#44256#46357
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = True
              Style.TextColor = 10329501
              Style.TransparentBorder = True
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              Transparent = True
              OnClick = lblDestFlagClick
            end
            object lblBigoFlag: TcxLabel
              Left = 380
              Top = 4
              Cursor = crIBeam
              Hint = 'Color'
              Anchors = [akTop, akRight]
              Caption = #51201#50836
              ParentColor = False
              ParentFont = False
              Style.Color = 11974840
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWhite
              Style.Font.Height = -15
              Style.Font.Name = #47569#51008' '#44256#46357
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = True
              Style.TextColor = 10329501
              Style.TransparentBorder = True
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              Transparent = True
              OnClick = lblBigoFlagClick
            end
            object lblMemoFlag: TcxLabel
              Left = 548
              Top = 4
              Cursor = crIBeam
              Hint = 'Color'
              Anchors = [akTop, akRight]
              Caption = #44256#44061#47700#47784
              ParentColor = False
              ParentFont = False
              Style.Color = 11974840
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWhite
              Style.Font.Height = -15
              Style.Font.Name = #47569#51008' '#44256#46357
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = True
              Style.TextColor = 10329501
              Style.TransparentBorder = True
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              Transparent = True
              OnClick = lblMemoFlagClick
            end
          end
        end
        object pnl_SelStCd: TcxGroupBox
          Left = 599
          Top = 2
          Anchors = [akTop, akRight]
          Caption = #49345#53468#49440#53469
          TabOrder = 7
          Visible = False
          Height = 67
          Width = 152
          object chk_St2: TcxCheckBox
            Tag = 2
            Left = 3
            Top = 19
            Caption = #50756#47308
            Properties.OnChange = chk_St2PropertiesChange
            TabOrder = 0
          end
          object chk_St8: TcxCheckBox
            Tag = 8
            Left = 51
            Top = 19
            Caption = #52712#49548
            Properties.OnChange = chk_St2PropertiesChange
            TabOrder = 1
          end
          object chk_St4: TcxCheckBox
            Tag = 4
            Left = 3
            Top = 38
            Caption = #47928#51032
            Properties.OnChange = chk_St2PropertiesChange
            TabOrder = 2
          end
          object chk_St1: TcxCheckBox
            Tag = 1
            Left = 51
            Top = 38
            Caption = #48176#52264
            Properties.OnChange = chk_St2PropertiesChange
            TabOrder = 3
          end
          object btn_SelInit: TcxButton
            Left = 103
            Top = 22
            Width = 40
            Height = 34
            Cursor = crHandPoint
            Caption = #49440#53469#54644#51228
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            WordWrap = True
            OnClick = btn_SelInitClick
          end
        end
      end
      object appTabSheet2: TcxTabSheet
        ImageIndex = 1
        TabVisible = False
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 841
          Height = 418
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Shape1: TShape
            Left = 0
            Top = 0
            Width = 2
            Height = 418
            Align = alLeft
            Brush.Style = bsClear
            Pen.Color = 13756393
            ExplicitLeft = 188
            ExplicitHeight = 402
          end
          object Panel1: TPanel
            Left = 2
            Top = 0
            Width = 186
            Height = 418
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Panel3: TPanel
              Left = 0
              Top = 0
              Width = 186
              Height = 39
              Align = alTop
              Alignment = taLeftJustify
              BevelKind = bkFlat
              BevelOuter = bvNone
              Color = 12566463
              ParentBackground = False
              TabOrder = 0
              object cxLabel2: TcxLabel
                Left = 2
                Top = 1
                AutoSize = False
                Caption = '['#44592#49324#51221#48372#51312#54924']'
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #47569#51008' '#44256#46357
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Height = 17
                Width = 135
                AnchorX = 70
              end
              object BtnWCall1: TcxButton
                Left = 135
                Top = 1
                Width = 22
                Height = 20
                Cursor = crHandPoint
                Hint = #45800#47568#44592#47196' '#51204#54868#44152#44592
                LookAndFeel.Kind = lfFlat
                OptionsImage.Glyph.SourceDPI = 96
                OptionsImage.Glyph.Data = {
                  424D360400000000000036000000280000001000000010000000010020000000
                  000000000000C40E0000C40E0000000000000000000000000000000003050300
                  87C11208D2FF00005C8C00000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000304120FA6E1100C
                  D2FF1F15F9FF1910E7FF00005788000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000070351723434F6FF2425
                  FFFF0906C0FF211DF6FF1C17E7FF00003E610000000000000000000000000000
                  000000000000000000000000000000000000000000002423B8E2464FFFFF2127
                  FBFF292DFDFF0905BBFF2224F7FF1E1CE8FF02002C4000000000000000000000
                  000000000000000000000000000000000000000000004546DFF94255FFFF2430
                  F6FF2E3AFEFF2932F7FF0806BDFF1D21E6FF06025D7C00000000000000000000
                  000000000000000000000000000000000000000000004D4FE1F84962FFFF2539
                  F8FF2C3FF8FF3248FFFF2930E9FF060088BC0000070A00000000000000000000
                  000000000000000000000000000000000000000000003A37C7E36380FFFF243F
                  F8FF3551FCFF2635EFFF09026C88000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000110B788A7B90FDFF2E4D
                  FBFF3A58FEFF2631EAFF02001D24000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000002B327175F3FF5C7D
                  FFFF3251FBFF3B5BFBFF160CC7E3000000000000000000000000000000000000
                  00000401303901000708000000000000000000000000000000001209B1C496AE
                  FFFF395DFCFF3D61FDFF3C56F8FF10069BB00000000000000000000000000800
                  7B962831EBFF1814C6DE01000D0F00000000000000000000000000000303463F
                  F0FF92B2FFFF345AFCFF4870FEFF3D57F7FF0E039DAF000000000D0385932F39
                  E1FF121BC4FF3753F5FF1C17CFE4000006070000000000000000000000000300
                  575E6060F6FF8BB0FFFF365EFCFF4870FEFF405EF9FF201FD6E63442F4FF4E7A
                  FFFF344BECFF0804B6FF3F62F8FF1F1CD4E40100090A00000000000000000000
                  00000100686E6B6BF9FF91B4FFFF3F67FCFF486FFEFF4E76FEFF4C75FEFF466B
                  FAFF5079FFFF3852EAFF0603B5FF4264F7FF1F1EC2CD00000000000000000000
                  0000000000000100656A5D5AF9FFA6C5FFFF618BFDFF466FFCFF4166FCFF4469
                  FCFF4468FCFF4C74FFFF3754EEFF131EB6FF2527EDFF00000000000000000000
                  0000000000000000000001002A2C261DCBD28A95FDFF8CA8FFFF7DA6FFFF6C95
                  FDFF6892FDFF6D97FEFF719BFFFF3B42F1FF05013C4100000000000000000000
                  00000000000000000000000000000000000001003A3C1D178D92443DE7EE575A
                  EFF3585BEFF34244ECF120179FA50200222300000000}
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
                OnClick = BtnWCall1Click
              end
              object BtnWCall2: TcxButton
                Left = 159
                Top = 1
                Width = 22
                Height = 20
                Cursor = crHandPoint
                Hint = #50672#46973#52376#47196' '#51204#54868#44152#44592
                LookAndFeel.Kind = lfFlat
                OptionsImage.Glyph.SourceDPI = 96
                OptionsImage.Glyph.Data = {
                  424D360400000000000036000000280000001000000010000000010020000000
                  000000000000C40E0000C40E00000000000000000000000000000B1A08373CBA
                  58FF2C944FCE0205010A00000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000071106243BAA47FF3BA4
                  3FFF3FE891FF32A961E401040107000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000225B21A548E976FF44CE
                  63FF399733FF3EE894FF30A55AE40308020F0000000000000000000000000000
                  0000000000000000000000000000000000000000000037953FF149E878FF48DF
                  73FF44CD62FF3BA440FF35E28CFF329D53E00205020A00000000000000000000
                  0000000000000000000000000000000000000000000039A747F349E575FF46D6
                  6BFF4AE176FF38CA58FF49CB6AFF8EE6B9FF081C073300000000000000000000
                  0000000000000000000000000000000000000000000039A747F349E576FF46D7
                  6CFF3CD564FF5BE98AFFA7EAB7FF265B26920000000000000000000000000000
                  00000000000000000000000000000000000000000000328E39EE47E776FF46D6
                  6CFF43DE72FF97E0A9FF1F501D93000000000000000000000000000000000000
                  000000000000000000000000000000000000000000002957289253E67DFF41D7
                  6BFF46E176FF409845E600000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000E1F0C3C67D884FF3FDF
                  70FF46DD76FF3ED069FF255F21AF000000000000000000000000000000000206
                  03091B57277C0E2C1240000000000000000000000000000000004D8549D25BE8
                  8AFF3BD76CFF47E17DFF40D36FFF256526B00000000000000000000000002C78
                  2CC83FC964FF3BE695FF16441E610000000000000000000000000715052C7AC9
                  84FF50EA89FF38D66FFF44E684FF40D777FF318B36E3071206201C4F1C853BC6
                  6AFF399739FF40CF6DFF38E59BFF1F622C880000000000000000000000001435
                  106A88D398FF4CE98DFF34D76EFF42DF84FF41DE82FF3AC161FF3CCB6FFF3FE9
                  9BFF3ADB8CFF38A743FF42CF6EFF35E49BFF1C672B8C00000000000000000000
                  00001538106E85D094FF5CED9EFF2DD874FF3DDB81FF40E28BFF3FE28FFF3CDA
                  8AFF3BE296FF3AE39AFF33B049FF3CD273FF6FE5AEFF00000000000000000000
                  0000000000000F2F0D5E79C180FF7EEFB6FF3FE48EFF30DA81FF2ED781FF35DA
                  88FF33DB8AFF2ADD8FFF26DF97FF8FDFAFFF499C5CC100000000000000000000
                  0000000000000000000000020003427D3FC48DDBA5FF73EEB6FF5CEBAFFF44E5
                  A3FF43E5A5FF5CEABCFF98F1D5FF61B97CE10103010500000000000000000000
                  000000000000000000000000000000000000071B0732305D308A61AA6DE370CE
                  90F873D098F968B479E2205326720103010400000000}
                ParentShowHint = False
                ShowHint = True
                TabOrder = 2
                OnClick = BtnWCall2Click
              end
              object lb_penalty: TcxLabel
                Left = 4
                Top = 19
                Caption = #54056#45328#54000' : 12,350'
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Transparent = True
              end
              object lb_plus: TcxLabel
                Left = 93
                Top = 19
                Caption = #54540#47084#49828' : 12,210'
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Transparent = True
              end
            end
            object Memo_WorkerInfo: TcxRichEdit
              Left = 0
              Top = 39
              Align = alClient
              ParentFont = False
              Properties.ReadOnly = True
              Properties.ScrollBars = ssBoth
              Lines.Strings = (
                'Memo_WorkerInfo')
              Style.Edges = [bLeft, bTop, bRight, bBottom]
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #47569#51008' '#44256#46357
              Style.Font.Style = []
              Style.LookAndFeel.SkinName = 'Office2010Silver'
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
              StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
              StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
              TabOrder = 1
              Height = 379
              Width = 186
            end
          end
          object Panel7: TPanel
            Left = 188
            Top = 0
            Width = 653
            Height = 418
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object pnlKDGrid: TPanel
              Left = 0
              Top = 149
              Width = 653
              Height = 159
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 0
              object Panel15: TPanel
                Left = 0
                Top = 0
                Width = 653
                Height = 30
                Cursor = crSizeAll
                Align = alTop
                Alignment = taLeftJustify
                BevelOuter = bvNone
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
                OnResize = pnlTitleResize
                DesignSize = (
                  653
                  30)
                object cxButton1: TcxButton
                  Left = 1078
                  Top = 6
                  Width = 29
                  Height = 21
                  Cursor = crHandPoint
                  Anchors = [akTop, akRight]
                  Colors.Default = 16635384
                  Colors.Normal = 16773362
                  Colors.Hot = 16360076
                  Colors.Pressed = 16644080
                  Colors.Disabled = 4227327
                  LookAndFeel.Kind = lfFlat
                  LookAndFeel.NativeStyle = False
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
                  TabOrder = 0
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = #44404#47548
                  Font.Style = []
                  ParentFont = False
                  OnClick = btnCloseClick
                end
                object Panel16: TPanel
                  Left = 2
                  Top = 0
                  Width = 112
                  Height = 28
                  BevelOuter = bvNone
                  ParentBackground = False
                  TabOrder = 1
                  object cxImage1: TcxImage
                    Left = 0
                    Top = 0
                    Picture.Data = {
                      0B546478504E47496D61676589504E470D0A1A0A0000000D49484452000003BD
                      000000CE08020000007DE1F2090000FFFF4944415478DAECBD09BC645579EEFD
                      AE610F359EB9671A191B011111C41154628231F1AA9844B9E68A3F316AE2104D
                      3457634C4C3EF53A64907C261167D4808AF1332A2A312A4EF16A9449E6B9E9F1
                      F4996ADEC31ABEF75DAB4EF5A10105A5E93EF67A6C8B3A55BBF6DE6BD7F4DF6F
                      3DEB7999B1965920310D80FFAC85840128BAA990505A88998DDC02740B80C447
                      18C314A844C8129404ADA164F4586940BA4B81FFB1DA72C320689588E3734EAF
                      04417F18FCBF754FB9C1E71FB8757F19A05782A6658C0551BA6562FFCA00FF2A
                      32C375C1F099D7EE665A67782904050505050505AD6A318B0034641D43B48C10
                      6D12CB89724A3092F85932E3FE66A5A3276420CEE86F246C65AC16C4DDCA1113
                      73F7E265E2AEA8033DBAA00728F7B46AEE3999C4CD1074790E65EE16B0C00588
                      2A5D417AA6F3A4CC58CE4C8CAF0E446B4FD9F41FED2E3D3A73FC035F07C4CD22
                      A073505050505050D06A16B3D6C130C28EAF353AE2B1F7041CF757E148CAE07F
                      B8E1118F8777509579E5B276052E47077A74410F5CF60162AD597E8EA9CE6CA1
                      3480DCCC2D308E2F84BE5BA23A44677F1AC5872755F1811E6150505050505050
                      D02F23E4E69C0087E83926BAE1706F74761E0CED381897C8DD65E96E290032B0
                      AE506D15DD45754A03C3E5F9F28FF74107B9BCDD2271FF94FBB35CFE0D4139F8
                      95EED9AF005401EAEE96D42D4CCB6AE67E95002560E06EA99079C755A8E94181
                      9B838282828282827E2584DCDCA3FFDAEAD067E17F6177268CE115574F440C2E
                      DA1037908F10887701DC08708DEA5CD3EBDCDE5ADCC591984BC59896601863C0
                      9094B452204C00E7552046A73EACE4B1E23682DCD2D397E3B3A9DC0B40159046
                      6395645325DD584B1E01D50D50DF04701414C78358E32C18A6201F3C17C0A4FF
                      0DC217A599057A31C4FE0788E0D3080A0A0A0A0A0A5AD562C6660C4AB0F5D10D
                      0E6F96E70AFA8AA38D97916700F6DAF6EE6FB55ADF31EAA6389A8DE3761C211F
                      5B512232D3A3B9E323E621C91CE8F1053D0091ABD97B9BD9F26F047CC58D8A26
                      F731CE543FCDF3B1C88E55D231064746C79E07EC4857819600150BA901296805
                      E55EBB0E39A123FF870CDC1C141414141414B49AC54A6BF71602C9A781D093BB
                      DFDE13FA951DEF5416220DB01BE0CB65EB7BB3B3375B3D9B240B89E848AB2317
                      9F012666D6951A5941C56646368F82233D8960D5580D62966BA997CD39C62333
                      3E77821961B8750569BA53E16DDA585BE42A05F5884A7A7275FDB3217D22C006
                      ADB9628AF3441AC5B8249F8ED22E9A85EACF9CE692F2033DCCA0A0A0A0A0A0A0
                      A05F5C4CD1C440AA05DA659B86827949BFAFC74848C09A2E12612BA86FB7F67C
                      1CF47545BF27D34155B84AB2A22005FA559F90CACD02C4859921433403C5A1E4
                      02A91AAF84CB83FC12B99930D9F92BE8056162E26613514E06338A6B6633CB87
                      756814427499B15C6D92FCB1639367C0D4D3801D4555674BA75194B7323A5DC2
                      1783E9091EB9575940E7A0A0A0A0A0A0A0D52AE2663FCFCF422287C561E7DCA0
                      795CDCFDCEBE4D0F3EB1B0F01F6CE9DA14965814C7B11042EBB26F0C446E0298
                      F776684EA9BE04DF2E02D89B3410C590C8840E9707EF25D74320169678975E03
                      2B7E24C05328AA3E5B502B8D16B464ACCA62094F94D2E989C6F392E9FF01F00C
                      80C8BA7C67ED9612D6FB9D3341FE9F4A706A04050505050505AD5E316B0B35A4
                      A4D80E33E52CB325B098B232E0EE72C7E5B3838F717BD3DA18E12AA34C67F7DB
                      BB5205C19373AD6A0696539D52BB5FF8C108CEACD4485CAEED055B51CD0E9707
                      E5A5BF2A1D34FB2627432D67A258572966C39F19B8B442206E47064FAC16FB30
                      C8D656ABBF39B1E665903CCEA7196606041F26D1811930FCC3876B0405050505
                      050505AD4E2137B72CD172D5911355094D2E84B73C8BBBA1F391D9D92F80B976
                      BCAEE29C97DA48C3154724B2647B751D3094A55FEDA91E29A8E7A033C31236C7
                      5A4576EFCFF54107B32CB70A2435063452E28BC2396F988F14B41A96A1D970B1
                      6C7D560A9FDF085802CAC05C1BB4A9AF5B774E34F95C80A7809D3486A29D65E4
                      1CEEA561110BC5E6A0A0A0A0A0A0A0552D44A4CC5D491CE06ACA4FE8095EC57B
                      06B074D9FCC27B8DF9413D860A3294A6680563812338494EB88C7F31F02835EA
                      CA4CB282191B1BC6FC6FF6102E0FF64B3C0BD2565AB26B487CEE689A20D9D48D
                      F551DC2BB9992ACFD423D2CA32CB75CC204EC108E8F6F0D5B319F8E3268EF8DF
                      00C781AD15B49CAF37AB61CC4A50505050505050D0AA15B3CABA96C899FB0D3D
                      5E6E1BD706F8F2D2DDFFD6ED7E7D3259AA4AB003042162286263242A1353DF40
                      A38DE652021F969B3562B8FF251E49BAF4BE58DF4B255CFE429776C5F5FD7D24
                      A9C3BAA0EBDC38DB0673D304FDD3B99C4AE8CF8B988934EE4D35C9D5202A6C2A
                      393D4643B7A8CEB7670EDF723ED4CE0238054FC60A4B33475DAF9CC2354C09E8
                      1C141414141414B45AC56CE97E931788354090E3DB55A81F755BEFEB2D7D53C0
                      CEF108A4A5CA63CE88AB7CA02FE231072965C2B9D0054D1813E48AD67CD84490
                      002917E485E69A1E75305C0EA9DF528D75EFED8C90CF2CBB78D9081319786736
                      2FC144CB95D9FB349DB0E1DA981EDE60976FF794385CBF97A1697664214622DE
                      C7EBBB32EBDA6D8BDB156B5B4E59DEBF47C90130B81C6EBB4F03F5D14EBAFD57
                      8CF70D4F62991A6575C10AFA154227A2A3A74B76DCCCE1BF03F05CB01B942257
                      B3246EC613B366E0E6A0A0A0A0A0A0A0D52BC7CD9CC2C82CCDF58354E27F97A0
                      FFA5ED5B5F5FADCED513C8DAD09012945291EB6CE21F47911996E00FA16899B5
                      DD35AA5A828FD770E829AC63D383E0D24F51F39979DC25543B9616C258CFB56E
                      7446312AB2924BC17136A7006347CD56DFDF41F4155B3C9550782EE12AB5DCF8
                      F0096D1DE92E17E1F18AF0116F78E838EF0F1FE9EEA2F2AE5B8C9BA1D1DC11B6
                      E357B78CE6C3497BFBF128397A1EB558BF3F6FBAEB8B23B54DE919E63D7CC908
                      626E59709E73D15ACC371FF55CA8BD01EC2948CD05251AD2444146ADB9838282
                      828282828256AB86F5E6520C3BBA459083B91A662F9DEBBCA75AA30404954305
                      1230B21403C3CCCF2818EE8359075B69D112C353C7F0D17E4AEBA2218C50D4DA
                      835A845B0A2AA64AB0750DC5AD1946F339F065C31E782BC4578CDA4262B8E5C6
                      752837CC323C9130BE6FB91AF5E423BE8C5CDE082E5BE0D90733C3041200BBCC
                      CD3ED3CF9D7550BB1141EBA4731B73F0CCB264461A56B1B68C4486A3A4B3232B
                      FB91C4F1F73BC59AC91359F206183B1B604DDF8D22E607DDEB21282828282828
                      28E84169E86F565439341171601F5A972E6DBF58C75F6D5641BB3626894A81F3
                      920D88060FF41EFF925ACEA8A6D43C725008411565AAB14AB04A719ACB68F810
                      5B09ACFD94B87B5A2660F9ACC0DFE2EBC17E49E9DAEBC1B0EA6C7CCB715FA7D7
                      DE43CC876E0736AC34D3C38605697287B8497823A7044DBEE434CF92F6443376
                      D0342EA75304A4651DB97303CFCD85887226ADE958B5A1C9CF15479E07704209
                      D4783B8A0EF40E0705050505050505FD7262965A95D8123207CD09C01EBBF40F
                      5BEFB8786AE2AE2436590E69C4EC00629E2A91E9D5CFCDA3E68843F7B0199A90
                      FDBDAEC1075382D224F6A164C58739C77E25786DB48CBD672EB175C17EAE848C
                      ACACC1855B33E70CA1180AB72825F7954CD8C495BA29EBCD7237EDCE6DC531F7
                      B24383716B63064A31731071B31BB575B315E5909B211715CD44252916162B15
                      F3E4FAF17F04F00CE5ECCD3239D0BB1B14141414141414F4CB09B9994ACA39B4
                      1282E63AC00D7AE12F76EFF8DC4C538A48F5909B25D37D88A3C830A57FA64FE3
                      60966352B14CBC6619494785DE657932F6ED3FCCDE1809F025E17BA2B487587F
                      1B31F28AC97FEE56DA9CAF315B4EB6696A0DC3A8B4EF3BF309950A6AD6671573
                      567056EC5DF9B2EFD97B44A48DE120E4666F17D77406120DB9B9AA98ADA5767E
                      89717DF8D4B1FF0BC42B2D8CE34B4CC0B2BD3C2828282828282868758AB9B97D
                      4569FA11D53BC7A0F84E7BEE35C5E0EA31C939377909326291CBD128AC5AA5D0
                      0CBE38CA9265CA45BAA3FAEFBD9899EAC46A19A99D43826496EBCD918172F972
                      546CE6CE5BC1F8B019350C1D1A6E26A2893DFF7A0B877573EE28085B025788DD
                      3517F486BB5228CA7E1B32F13E07D95A7260BB951C4C3E0DCA6F767BEBB8198F
                      06EE592E526D45C207FD0CC7576D4E9D1D4DFDBF0033C356EC819B8382828282
                      828256B3A8CF36428D358A510299B08B5FDC3DFB8AA9F125D5823416B9D0944E
                      27585E5821EE3F61E1A097B550CA21D722E43A47B31BF10AE785AB0B83117829
                      0DF1A0734D2CA7610CB9D9758BF697C3952DB372C988C4BDD79959EF4E8E9931
                      DC0A6B85834CC528E94D39D0B660523717D0906303F6BA3DD47DA133ADF3E081
                      66180ED98F94BB223DEE6226223C6A8936A5524ADACC3C76CD915F216ED6E04D
                      DB4141414141414141AB579E9BC168CE05D2604FCD5DBA7DC7AB0F3FBCCC6741
                      0866133B28A11141A70B950AD1E72A9575BE02E56D18644DA66C0D1FF7C68799
                      C4C2CF1504321ABBFE1F2277B9D56E4A9F8BACF3E9CF8C0D9BC31019B3654707
                      8301DE41F9C7D6DF4EB16E8080CE991288CE782CDD5DCC455C73C33562B6F65E
                      1097F43C5CB9A6FE31B48F860F577DB06A6462C12B91A56357489AC25861BCD0
                      D68862A17FE4862DDF07BD165401713C5C3A2828282828282868750AB9397754
                      288017C0167ADB3FD259FC3F53631DA963306A200C1334F14B2BC4E855CCCDE0
                      DA1C4692DC144AD1751C0E97342F301690E7D4CC258A408A8A5192FE81E27147
                      3A8455254DE9A3EED29C6BE332E48CA5A80C4EC561ED1A8FC7715C96BC340AA1
                      9B93DB43E505C808AAF55815944A0279C404638CF29CF1B1AA1CE01A5339ECB4
                      529604E8B8354E8E180EC3683C1FAF7150A2B3C1F382846AE7D4180662E7D328
                      623ABB882CB73ACE5936D05B668EFE3CC02361D86E3D7073505050505050D02A
                      96F3376B5F44D520B6F5767EA4BBF0CF938D3D914E11A907C232A4494581749C
                      FFF29B3B30F2816E54363660151921920444248CD5A5228C4EABC8C490E5604B
                      04D948F23A67ACD75F60D225C171C95C7371A2642EB8B68A512744895C8CB769
                      C5F1E020538B14B19871C5A8D09CD15C406DA8619E262B7004C248C6B532E40F
                      B13C021E39EC3664F960BE359FC6FBFD0C44C7CD643D77BEE791CFFAE091C553
                      8B945174480FFFC257081EDE3CA2435DD5C268966BD5E7C74D1D7509C0A3E910
                      504B9503BDCF4141414141414141BF841C37AB65A7AAB885B879FE53C4CD465A
                      DB1B44D441FB57809B05025EE9E6FDC9944AC4A52D0D0E49979C4C04499D166A
                      F7C09410572089A8C0DCD8B0096C4485D23805EA75C75DD134716B313034EDAA
                      659E2DA1334BDDA407DDB2DB2D908663C833E864303146D60B4A9C9090702898
                      637143257C53B87316034282709E10DC2919A56038D9A6A94F614977AF0C8B3E
                      486405983A83D2447DE6B85971FADD02F7B182906C64AE4DA14F1CDF7291E3E6
                      C219C243B5392828282828286815CBE537FB06D28896ECBACEEE8FF777FFDB64
                      633682C2B262E04AA172D98DB04AE5B99915207CF70D56D5A5C970E414676164
                      2AD35A02CD2A4413009300356AFE52E63B6EE92C2EA8C5C53DFD5EAFD5291716
                      A02888943B1D673C6684D3299E54C450AB4112C38699C6CC646DED86B1C64C13
                      266A8EB071413C840BD05BE8CFCFF67A5A6948130A3396826ADB49128BC8B5D5
                      560A197AE8FDB00E31A9A2AD8938993D38EBCD602AE4088FBAD44BBC1054CE8F
                      B471DC0C4A6646E7E6D1E35B3E0670A2DB7519B83928282828282868556B999B
                      91CC7806706B77CFC7FA3B3E3B36B62786C2309D8FB8D9AC626EF68A2B301840
                      AF4D236AD4783C3505B5194A7B40A25EECDE79FBD2C2AC6DCF25DB76E4BBB6E6
                      0B1D79E7929A5FEAB796DAF98072AC5BC8CDAEEF5DAB375CA10032282729CD98
                      44141EAFCA4AC54C4E57D7AC8B66C6EDF434DFB8BE39352E37AE69AC9DA9AC39
                      6A122AC88EBBC1DC067B66F32E2CB5112663199B2A15B5A9E62F109539D78571
                      196FC281660E074F73ED95A2D43D647F6525ED1E57DC7051521EB5492D55E133
                      C5737DCAF8711F75DC1CEACD41414141414141AB5ECBDC4C90D601D8BA84DC3C
                      FB99E9FAAE08B999A8CD4D56B334978DCB83CC2AF060843BDE2FA1D98CC5E446
                      9033A0E36C4F7F6EBE5FA8F87B3FB8E1E69BCB1FFF186EBA116EDF7D5FC788AC
                      13152E84E44914F1284AADC5E341CD534CAEB3BC34866CCF799E5BE8EEF3D806
                      C0634F81638F82C79F36B5E598EAFA35627A9C353634601CEFA9406F41B577F7
                      FB0B851EC41222E1E605FA203AEB93EE980BF238A84ACDF73CB0AE450B3788CF
                      B2104A804A19B94B32852F9E93C78FBD08E051303CED0ADC1C141414141414B4
                      8AC5ACA2BC34AA06C21CC0ECD2ECC7FA731F9DAECF456E2A5C6E40F09859C155
                      61A48B497B58B44F8FEB5F6460A34B46931E297C7AEA68483640962EEE50DFFD
                      EEEE2F7CE1BA2F7D09762F37E9C3FB1B3588AB5C44691A55A35AACB3BEB34650
                      1044695D8686125A9742C404CA9CE605D21C41ED7C0991CC4C2E6351A9C40C4F
                      465496F53B4A031EB65E9BB2FC463AF3C9F03F9E77D2534E9B3CF58401D89D64
                      79B605A83DB8102EAFCD300FCF1D8578D99CA187CD540E1A59F792519C8CDA00
                      31A7903D53E2F86D2FA596328E9BF5A3C6B77C1AE0917638F37495FF60111414
                      1414141474686B2537EF4174EEECFE787BE103D3CD254A1633AEE62C23A1E5FE
                      E6666A03E21A5973C30DA316CE96217F92CF5739E01A35F826DB825BD472EABD
                      07CB55594B4B503313EE7292F12F659964F5A43E031333C08EB9E5EA9BFEFDB2
                      1F7DF44370DDEDB49EC908D29415BAAE20915195450947B8164A483D28B5CA5A
                      31EF4769240D2B0C255B4422E15C18C38C2B3683915C6ADC41E4E918384F6591
                      674C88B2C423A5629EC4D53AA8381B28C604674ADBAE6003A4E82C03B28D036C
                      1E87DF7806BCF4A56B4E3FEB892035E477EAC55BF38262A05D8DDF9D3C50C741
                      EEC2917D155A0DE993199A3BC888E9ADCBAADB7BA6C1FCF1D9BF7D523C37979E
                      9B59C48DB0D6181E5BDEAB00FD8651E490999326B65C82DC6C68E7390FDC1C14
                      1414141414B49AE57C1A0E3F39740016FBDB3FDC5FF8FBF1F18E3044841927E8
                      138A9633FBD3A741FDF65C4C45545624086194DB27C4545D224832455D4B3825
                      51E03E4465A4388F2BD585EEA2E050494177A11AD720A9E4FD857E6E5802B526
                      44D3C7039CB9B8BDFB77EFFDE2C5FFBAB47D0E64958093F29835A431A4B55AB5
                      3AA18A4221A922005AC7DE2EAC992107D22905736428181D00E74860BED5092C
                      F7E41EF5EB66147187ACEFA8956BA129E25810DA234F72414973D6689B83CAF3
                      1C719AD23610AD21834A0CCF380B5E71FE13CF7CD666E003E87CAB37DBEAF761
                      7A0DA83E759C99989ED079C914F08815F9C04A48626AD49D0F848C248781E5A5
                      D42B2AF326662015CFF6B7C1C30E7B9253101F8EDA359724D38637660FCCA3C6
                      B65C0C7002F8D75750505050505050D06A1671F3B06132F4003AF9B60FF496FE
                      76A2D96146E6966B4E65E64451A179FF72B3EB838D8A7424B4203E76397148EF
                      4A50C099763B29A8208DDC9C1A26323110294496029679C97A3D35E8435C97E3
                      5B8E03580FB6F7854F7FFF73FF0E37DF0477DF093B16E8E1329A6836D27ABD1A
                      E1468CCEF3812A0BCE19DBD718E2B29E1D037BE0F31570DF5370F9922D73B3AF
                      04B37B82E1D069019E9BA90A8E244E6700C6B51CD48627D5F156B7DD99DBE51B
                      866CDA08A79F0CC79F082F7BE996B5C71C01B0B3D8799DCD5D759D57ACD5452F
                      AF8F8D0357BD6E17F93E8EFC4C42A14C29991975EF43BA66D6C741ABFD6BED30
                      D20A152B3A4F70DC2C62AD4BEECBFE08F5C8CD8F1CDB7229C0F100CB7D4F8282
                      82828282828256AD56727307A09B6FBBB0BBF4B7938E9B0B6434B6CCCD8847D1
                      7EE46666849B7858228E51669CDB254462C265316C764DB60DE466CB6459A30A
                      B4CCF292C8D10AD1EBE8EA04241B0E0738E9FAFFBAFDC6EBF5B7BF7DF7E5DFE8
                      DDB08DD6538F60EDA6C340514BF1B2C8B5D6AE064C124290E9E25EBB03431A5E
                      C65FE07B89D908DA0F321CEBE585FDF23FEFC4C25AEE9A2E520D1FE4A0358824
                      4B2AA6528FFBADA5ADB319B8CD3CE574F8EDB327CE3C2B3DF59431A819337FF3
                      E24E181F238657056D366D7088AA834E1787DF6880CD68475C77416EAD28A9A3
                      3705E671B59F27E22D73B3E65464D65C265A056E0E0A0A0A0A0A0AFA55D5C1C2
                      CD968C0589A5BECDAEB26C685B0864C33AAF63686ACC623952A14036E325D45D
                      A7110E8D9919688C43D298BBABF5931F2F5EFC99854B3E0D99C3D8631EB18927
                      693F17ED562B4DA5A54034B61294C90DFDF3B91996AF3B2B091E114265B54CCC
                      E01686FBE366EE02FC566E05A13B62D158DA6046B7552B2F7A3CAE6B23A469A6
                      B1B97DDBADB8CCA38E86D7BF9E3DEFD9C736D7085A7F67B6E82E453174BBD0EB
                      415A814A8D7A1C0A431DC269B3D455302EB9B04C978E9B23BD9F23EC02370705
                      05050505051D4A3A28B879D8CFCF8125429862BEFC8CF8A5A988CA1D316B3729
                      D1523AB0609911D0EB4063B38B068635307EE64FBED379D39BBE7AF9FFA59554
                      22D8787835ADADDBBD2B1BF474AD565165A1CBAE405C8D622A323B5C2ECB122F
                      A594F73E2CF7CFCD76F9C65199799F7B7F8E5C809DC51300D532B55A2D83AC64
                      79B519B11A74FB5956648D782CB162EEEE3D03435D58FEF61DEBCE7BE919206F
                      017983D51953091E17A3B2BC072A877A834E319C8B9A6BDC01565A6695A083E9
                      CBF3FB51819B838282828282820E251D2CDCCC2D75A2063729CFB5FDA69A3211
                      18D7DED3CC3CAF9A1AE2B316199262544D209981C609775E7DD74B5E7CE30FAE
                      A64CE4858E9C583F29386311EBF707DD164C3427EA63696771A1D96C963A2BF2
                      1CFF69E7D388A208A1F9BEEACD300C4E1EC6C071D83B17701F27B45AF1E7CFE2
                      66AA3AFB783932376B69A56011E7222F0739E410ABCC0C70B069B5668B2968CB
                      94352B32CB3B37EEC8E0D81978FD1BC4CBDFF03C28AF6AEDD8A3F3DE78DD70C9
                      A190A04B6D15EEA0D6CCF2C8B2C23A9FF5F088ED57056E0E0A0A0A0A0A0A3A94
                      74B070F3A8DEAC5CBDD90A1F2D27981552FB9E7425109CC59A199514514544E3
                      4FDD7A73F6AEBFF9DEBF5D0A4A43B7A4D2F3238E39BC3FE80F4A15192BE32812
                      8A6B8564AC0A5B2A6E259132E2B2F74E688A5E06A5D47DEDD44A26962BF6F4DE
                      8BC1FDDF7B0FF1BD1D17696E6059962271597B120413DD2253B9A9D61AAC148C
                      B2F8B829BBB594CDCD2EB60A386C121A53F0EE771EFDAC739E0E704DEBC61FB0
                      02EA3584D1184F2B4A0AFC504A147812803B14B90C3BB5BF1BF4056E0E0A0A0A
                      0A0A0A3A9474B070B35C361594C490965292DD2D91654227C4D1A24426CC39F5
                      CBAE8C4F41ED947F7EFF972FF954FFDBFF457438914E3527D78B466F6171D630
                      24E30AD760948E798E80CA95C25B721D1B57F4355AAFB45FD05CBD9FBF830FE8
                      60DEE7AD237FF3A8B08DB7E01A0B9D57AA49910FB2A2A826F56A52C9736B0B56
                      A924B3AD3D938DB4576660E59A99750B736A76EE167CE0866978C139F0AA979F
                      74C4633642EF96C1D63B58C4196F18CEB4E822AB0AB3B7724F99CFFBB5475FE0
                      E6A0A0A0A0A0A0A04349070537835B715142634CE8422CB50B29A37A25B5B84B
                      2522750246E4BA3F2861FCC4CD009BAEFD9EFAD0C7AEBDE043D43E2495B076FD
                      1A99545B4B9D420D6AD5AA311A399BD98AD0110325A805CAC030AB102E9960FB
                      8C81BA92501771E26967DEB8C74E0DB3F7E80071C1A92D8BE0AA1C06558C1626
                      2026AFC9B0C2CB5CF3153F28BFDAFB1C724124A9A9998C65129F052D621D598A
                      7C168631C3B5E54589FF4489FB2CB9A9B3EA1D5BE7709D673D065E76FEC6DF3B
                      F74418BF3BDB753D9E1A102A9B927190DCF516542025A3FFB2C0CD4141414141
                      4141410F8D0E166E4645097433D025D4AB7529ABDDF6922D8A7A9DA60376FB50
                      9F9986B55BF6DCB1E3BA9BF49BDEBCF50757C2DAE9CDA5A919E82489969C2935
                      40E8F4CD02250EC9D6AC89B8956011BD7BC00A844B7D6FCF2F63459EBBA6D97B
                      670712E93264D0D4E5CDD12DDAE861100757DCC620F0704807E874AF236B56A9
                      4588D45ED65999475177F71E2CAED770E19A22E611858750F341866BB6311E79
                      BC564A8AE42BA381127887C6A1D5D5E444B5B26BE7D63D835E8DC19FFF39BCE2
                      95A74C6CB07AEEB6C5D9F6D4186749B2B87390265019AFF43A0329834F232828
                      2828282828E821D3C1C2CD94D02C9956D4BE50481993A14282125C16599957A6
                      002A6B4CFFD8BF7FF7D63F7DC7565CFEF04D69BFE051DCE4C61465C134812FE3
                      31D2B3ABF5726662C528DDCE3084BA8C30F57E301231171FBB4F5A1C17BCEC51
                      36C5107DA981C8304083F3C499ADA5AB2D0373DE0F04F6C55E5738FEF66B1B25
                      43E7797EAF6D5A17B0970883C09C7328B94BA866C6523634EE39176E1E240ECB
                      808FCAB0221A185594E31BD6569BF2CAABAEC7B53CFD0C78EF7B1FF798D32258
                      FC5E3107313E41B5A6E975BA85AD4D08D5D7819B83828282828282821E2A1D2C
                      DC6C5D9B0EC1999491CE0745095184E859C995AED632BEE651EDEDF09BBF7DED
                      F7AF843A8B2B638DCA78ADD3D953A920A956D5A050A5496485F36136B3E55653
                      2207959E1957CA52776C66EE9B237DA4C6C87FEC011AB9390661D990A49D235A
                      194DD11EFE18189A8167C1D138671CAFDB28A607BA962DBEB50A12395E562A95
                      7B0FD75A1EEB94AAD9BC747FE5EE2930309C1E892B146084A2D5190A153150E1
                      098E643E1B4449A532160D3A77675D3518C0673F02CFFFDDE3A056E95D7B2517
                      5099AE74CB812AA102C3F631FB4B819B838282828282820E251D2CDC8C1026A2
                      46A7D3A95421A9A559A7DB1B405483FAF8141F7BD2E59FBBFE652FB975A90325
                      87E6F4A4E063ADDED2442373C6E298518B6BC2324B65601C92A4980CAE706086
                      5B07A011558EC97C711F20E95B9F20E372EAB84DD6643C2608BCC228F23D237C
                      72C391A3B9C54B5A9EF93C39F269384787A546DA40D311693EA3934B88E63EB8
                      232F8A6102DD5E21298B48C7E4FDA0746AA63859338CCC00819F629891CF05D2
                      B41CB67F2147B51948598907A60B114746EFF716CABEAA185019FCE9CBC7DFFA
                      174F101BE63A77FC282BA15E8B405BCABF06BD1F5F3B819B838282828282820E
                      251D2CDC6C0D24F164D6EBCB282B2D716675668ABA7AE8F51FF8A7ABDFF6D6FE
                      CE36AC1DDF3C30EDF189494689195A0D3A45D1D6059369D532A65481B426A528
                      1161693F0D9132AD1AB93871F3EDEE3B996D54661EB93594D24AE713CD2663AE
                      4B893B3C8CE015199A4AC808EA9C49B76AD773DB4804DD5E4EAE0B9A0768AD76
                      2EE7B22C11909338BE8FC22FB3028FAC119A5CCEF83F3ADECC161487E16C1C5C
                      450C97C1FF512A86C63564BDB2393EAE7831C83321E3B45231853179B16BF72C
                      62E9737F0DDEF59EE38F3EF97018FC64FEEEDD13F554E7A5E5819B8382828282
                      8282821E1A1D786EB66EDBC27506149C18B6DF87288564E396ED37F22F7E75DB
                      9FFCEF4EDF42A55659BFFE5888EC9DB75E7FD8A6E9ED5B77AD9FDAAC34127607
                      62AAD66A23B54919D22F68AAD1B23E856920505B2E55AA70D54C69AE99BD67E2
                      3203A3AD94113E1061DDD92B0C6302397A76D7DD0F7E34551925CD4625ADC471
                      2C3D2D0FFA3D4B55E4BD1BA6B237EE2F0E160F30B84EE286AFE8DAED97B1AE46
                      EEAACE26529C89341F0C72503A62B1C991DC91F313E4EDFA04DFBE6BEBA00767
                      9C0AEF7AC7631EFF8C0DB0F89DCEF676D2D8CFAF9DC0CD414141414141418792
                      1E0E6E1EB5A5F67F58D77D8F111822F545822943B912200514C8C0358066156A
                      87EBC5A9FFF3F6EFBFE5022A061F77F4B14B59D9ED9751CC1B15989BDDBA61DD
                      86F692E0BC02ACAB6D6EC9CAC005342CE2A45116290E4A060525BA916F03F992
                      9738561C90359A73661565D581A0DD001E315D9AACD76F653D506EDFF0DFBA29
                      BA8C634862885388A4BB5D402515C65867C7A094698547462116F2C54583577A
                      3D6875A134C321E3BF0D3375CB2AC8E29AB23E04D0EE518286729E665CA3B09C
                      2AEC867237CCDED2342E85E70331A37BA9792193AA2807CDA81189A4EC1786C7
                      228E3A83AEA868CBFB45ABB3D486471F09EFFFDB639FF49C0DD0F9EF72BEEB77
                      82E23E6C4456115EDEF793824F2D258718E0E6E73E9B7B15B839282828282828
                      E850D27EE46603944281084B33DD98D4B81DAE91AA64027DEA0C4D3495987189
                      085AB4794A2B1F2C41652DC0FA272CDCD578CD9F5EFEA94BA12EE2B1A9F5969A
                      6E77907A819C0BCC9B80AD6982114C7697738A2D35CF334C72AE6D690CC8886C
                      C2461B6572896BE8A7CD4633B3DD41DE89AA95B852E97545AF5B44520E3A0B9C
                      B7EB09140AF2028EDC0C276C81A79E0ECD263CE2C8F4C8230FDF78E47A189B70
                      F08783693A1064EE7A06D082A20D45FA83EFDCBCD8823B6FDF79CDB570F5B5B0
                      ED0EE865C0391E05A08DC45556AD23A2DBA4B451A9CBAC52133A53D04FF03EC9
                      846456236C4A5EEA81A20D09B09154786200B11920972AEA67C22CEBBAE39900
                      1D058AB19391CAFB8358AEA9C5F6E66DBB66EAF02F171DF1BCE79E5ACE7EA1EC
                      16D5262CEE81B1FA4C5E143C6AC998FCD0749662A87DB8923408A31B782439EF
                      D2D3FC209EE0C0CD4141414141BFB856B64DF0138DE238B6D66AAD7D386C9EE7
                      4982DF775096651445077A7F8382F62B37334EF969DCF884080DDC72A4DEB2AF
                      2112545D363924D0E4BA302A439EB314A80170E493EEBEAEF5BA37FDF4B2AF42
                      229A9353C7678379E003CE7BC0734B73FE101FA904CB6D42F3EA58C1982FA32A
                      CA863356460962B32AA824AC986612A2544422895435EF178AB5AB5599D9FE9E
                      B99EA14E2BD05E22A63BED6438EB296B9EF9CC639EF4F80D30816FD705C87782
                      6AD36E21B2961D287BCA8042A4955499055793A6FA30777F7288366E814C4029
                      A1B106E0707CBBDFF0836D575EBBF8B5AF5CF7E5AFAA797710C6C791ED214A92
                      4A7D6A6EB6554FAAD5680A90ECB3415EF61036F1680B0A5EC6E7A5E65913CF3D
                      38EF534B459D52776ED9A3E78CE14885617850B52EDB8D6A236B4FAAA237B3A6
                      7EF39DB735D7C005EFDBF0A2171C0F9DAB5B3BF7C80884AD0991B45A0BD36B78
                      912F1795ADEB208E97651DF0608A25CACA7E104F70E0E6A0A0A0A0A05F4A08C4
                      78B99289919B99FBE5B5D56A8D8D8D8D16BBBF7E0841410FA7F61B37534E8424
                      E8E4C6E2553F43CF34191825BA510C6546C11791543487CF8088212B213DFCD4
                      DD3734FEE4CFBEF9A92F12678D8DA7F5E66496F7234A91233787E1922CCDACCA
                      8D1190E32335C39BAD110583929C089647A2A6FBDC325EAF8C99C80EB26EAE14
                      634651C6338B28CDAD3F37BB80FBB3761D9C7106FCCF739BC71F3775CC914740
                      3180CE22E030F19FEE03722AEE77DEC5135FA53B64C2608A0B509ED27DCB4006
                      11CD268C392FFB658967C50247923481D7C824A211F223C38556D53B77A8AF7C
                      E1DA0F7F107E7A273DB0027CEDF47126E265D11BE82E17499CD838EED16E0E04
                      5003941A0E57CBAE85BCE431DE4453086992A09BF5682A6EAC4049D2B6A8A671
                      39E0836E6FDDDA75BB77DE32975347EE7F78EBCCEFBCFA59DDED9F905CA7422E
                      CDA9F1E9A9C1C2BCA8FA788F046C4ED11D164489D723253216EACD4141414141
                      0FA30683814F6BED743AD56A15C9D8D798B32C4BD3D4921992BE9842B139E820
                      D1FEE36661A97AAC19D544893F899C4D9372237817212AEBF3241642AA6E6125
                      A74A73BAE9F45D37656F7DF3D51FFC3798AEC1C6238EBB73DBCD715A65448A42
                      50AB6997DAA6AD624DDC9508DAD4C88FEED65AE232DE53CCF2AE6954272260BD
                      7E3F2FF2388EA35A2D49F940ED9EDB83CC4C4B9D79263CF7B9473EF9F1C9F474
                      EFF023AAC016010AE8B6CB055DF6A81C8E48DACF81DCD19C7A9A90DD421A4E93
                      F1560C91DECBE4DCD0C6B5B7768751E3812A69B0710435DCCD3A4740053101C5
                      E4E2EEB8DF5EBF6767E38B9FBBF25F2FB9F3C625AAF6CE4CF2FAC474A1EA9D5E
                      074C2F8944A47D9BC3AAB5A68C7A5AA852E0E193B166C252B770E2663C5E5A58
                      4AF3C03F077112E3D901A177616A5559AD37AEBCF1C6A39AF0F677AFFBBD973F
                      5ECF7F355BC89208244B0A3CB9882822C452E4B466E4A481A88C2C6E51E48A99
                      0791F81CB83928282828E89790EF75E0997864C9008A07E8474E2B172E8A02BF
                      D00FF42E071DEADA5FDC6CBD83D6850FAF7C108358F5119899E5EDA8C9F281ED
                      F7A1390D90AC57FA497FF0CA4B2FF934CDC06B4C8EF3B896EB3D4270A6EA0C51
                      92C22510CF0654BE3575692C4DFB03851C893BA7A9B536F224516D51F42BF50A
                      837CD01F34E2B4511DEB2DB1ED735B4B80A38E8233CF80534F81679CBDF1E8A3
                      8F215656DB6061A1BDD0CD33A836A0465608C80A62E0388AA99F891F0E19A6A9
                      AFB636E06FE382A637E2513216DFF6941E97C6C62817692724B8A4675DE4BD82
                      3A87E3EAEAB5285A3303D54D78DADCBAE3969FFE74F6BB3F82CBFF13BEF17D5A
                      DB7463BC397678C94BDDEF33DE1274B839AEBCE40D3A21603DE452A61389A84A
                      111C5A93A1C25A6783CE33D6A855FAD9A09EC4453150837C7AFA885EF7AE9D0B
                      4B1BA6E0A24F1E7BC6D96B60EE07F3BBD5540D8C910A2A5AE01AE8E9C5C7730D
                      89736BD37AD98369CD1DB83928282828E821D5A8FC0CAE9B2F2A4D53FFE74A33
                      7450D081D27EE166EBBADE51A73B4E997088A0C6C5220B325720FA4E339AB1B7
                      076258E8403216D7D61F07B0F9D52FBBEC5F3E4261CAC79F70C4F69D2D7CB754
                      26A4C915523435DCA65AB32207305172058C904C91FDC3B9160CB21F13D66529
                      A7CD687E7EB61AB3E9F15AD699BD7307E07B6E4D154E7D3CBCE8BCB5CF7DD153
                      81FCD03F1CECDC3658A22E859518125C2246FA33FD82769EB897939364EF7819
                      4DEFF34343ACD7DA8DCE3813B760EE9D2C8A424B19C5B8A3B6C873FA6509DFEC
                      512241089B1785B2962C1790D62059879B43807EECAD57DD74E1076EFCEA97E1
                      B6BBA10F5097626C7ABDD5032A039301435A338E780A1155D6C93742F4A9F05E
                      A25E5F33364CB046B7DF9D688C65656E552F12716B491FB66E7CE7C29D8C9513
                      55F8D2E74F79E413ABB0E7BB90913FDBD8BA65D6CA9CE6535A7AA6841B26C544
                      076E0E0A0A0A0A7A7835B26474BBDD466318A17AD555579D7CF2C9E09CCD4806
                      A3527450D081D5FEE266E1B2D310CB4AD7B5DADAC40A2D4C216906DD1872962D
                      3A36314B0626D64EEAE2940F7FF2F657BCE676C9F8DA7555518907D920AE56CB
                      22CEDB3A954DD725044F34119AC983ABA921B57411C771AC63A6853089E6A515
                      45C995894C9E97294F6CD9995BE8C600E7FE26FCDE0BA6CEFEFDDF00B8416DDD
                      DDDA33578B45525534A13072F30901721D17969359B91297C8C045B72186D3E4
                      1C1F1349DB61176EBEA22DF7F07601429954A90C01328E214EC822AD0AD31FD0
                      34469032C13DC5BB7148093D046F47465F7FC2490047B5B7DFF5EEF7FCE41317
                      C1F64518AFA7AC320122D63C17D6E03FA979A423EA8528956B002869F42C03E6
                      3BB2B04A3A31BB7B7166664D9EF5F37269FD9AA96EAFD3EF75583A560EE6D592
                      7DC269F08FFFB471CBA987EFF8F1F7D76F0485C04C8E17DA435C9F6043F73910
                      92076E0E0A0A0A0A7A98E4AD17F7CECA78ED6B5F7BC92597DC79E79DBEF6ECC1
                      1AA9BA5EAF1FE85D0E3AD4B59FB91928459942E420763716D282C97C4E04B05A
                      9A55B274F2B1DFB93C3AE3377E90026F4E1C9BD6DBEDFE6E6D75A33E5E667504
                      4E5B82309A5ADFB1C2797215F231ED358BAD4984898591B8B7124AC59461BA07
                      EDC989EAAEEDB3833E3CE61878CF3B1F7FD6F310DD6E2DB77E9B518315CE00D1
                      3581BC6710F31270206A15349894F8F89E1E946C508D41AAA125639838E701DA
                      898CCE2B7E2DA224678028AE29C3B5E996C8B79696912E7343F26430C811C8A3
                      342EF34C712A6D5B4B75EB5E4E2B6E6C3C0CA2D377DF52BEF5AFBF70E1278930
                      C7C76B2CA949B26AE478D4E32225DF7644532935C434CF180F0AD314CC6790F1
                      CD78737A697150ABD618EFB55A8BCDF18836C0C7DBED5E9389ED4B0BAFFC5FF0
                      BEF73D294AEE6EEFDA5A717920C22C3F99CBACACF983CCE70EDC1C14141414F4
                      4B486B2D84F0DC3CF237BFF18D6F7CCF7BDE83574E38E1849FFEF4A7109CCD41
                      0793F6273753F769550A443B97AE6C7063B1B44A7253F6219A80C5799838FE89
                      375DBD78D2C937E043D64D6DD62CD6621E64C94C624D6A75850893670206E0F0
                      5BDB8AA168B92EAE3E8E1BDDF6A092245A0F6CA1649CEAAC9A56EA912D6E9BBD
                      BD99C2DFFF5D7ADE4B4EE1B2AB173B02CABC3BCB11B89D87C4C5D8E19E46D675
                      057109D086261D3A7C64D697909765460D4246AC4C00BFB77508A76E2996F011
                      07CE29DDCDBA2E808C3A173A33C7B02720AE5991F39BE23E4CA66A952A01713E
                      489A759858DB6D999D7B26FFF08F7EF4F5FF042160F3E6135BADED638DAAEEB7
                      A59499E935C7C796DA836C50A47193B62D99E056A98276968EB2705120F4BC19
                      A3ABD5F57373B3131561F59EEDF3F0DAF3E01F3EFADC851D9F4F33A8C6ACC86D
                      5C21734636B0692369F7B2F4C17E28056E0E3A08E41A7C329F5A35AA5A791FA4
                      52CAA756E19FD65230257EFBEE53AF1A2DE9C36283821E4EF9322AAC485E1BC9
                      A7B3F9028D0F94C0572F2EBC7A63254658EC078B83C22B381C8FCEA3C5CE3FFF
                      FC0F7FF8C3A33F8F3BEEB8EF7EF7BB5353531E9D47003D7AB3AFCCAA0B0A7A18
                      B45FB9D9D59B39A56918F7A6E03A46C2426643B65AEAC1D4F127DF7275F69A57
                      DD78F97761F3F461051396959C75146ED6D440572C8BA4D156B48122358CA622
                      698559656486FBDB59ECADDFB07E6ECF6CB5164B199565B1766CFD1DB7DCD235
                      70EE6FC06BFFF4D18F7D9C10956D457BB6B74495E394D3A5F50DAF8725E47818
                      90C70BE9EC0AB4E7CBD565ED3BED0DC7C4094C475DF6B8EF7BA29D75836E529E
                      B95DDC32A5C80D4BD58CB2DEB8F1C46C7C1E1F39A3A90B20573A12CC20F76A32
                      6C1309470954B6DC765DEDB2CB76BFFDEDB7EF6EC1F4144C8E6F6AF5DAFD6E16
                      0B569639C4D1E4C404AE211B0C7085466B1E95B42D93BA817907588E189F4693
                      DD5E2F496D35B53BEFDA5589E1AFDE01AF7ADD59FDBBBE591106D7C43444950A
                      1ED6BE1E24D51899E2419834207073D0C1224A8A540A0903D9D77F1F238EE065
                      A3D1F81969AF9E98FDE53EDFDC41410FA73C3DF7FB7D1FC106E4EC938898F7F7
                      9ABCEEBAEBC0D56257512B10FF16C37725EE330E769F9384D15CC057BDEA55EF
                      7FFFFBF1CA0891F1F2A4934EFAFEF7BF5FABD5FC2D7BF6EC999999C165DAED76
                      B34925A45EAF87F71EE821061D2ADABFF30271A5A5AE537E33EB0E5195719AE1
                      27414C55409FF0C7AFB8F27D9FD0EBC785626371A42835C2225B72B0352AD9E2
                      267909E469369A6BB7A711F2ABE1F41D59E3157C1799043A9DDED8D4E1AD85BB
                      3A8BDD9926FCC91FC21F9C7FE2C4514D68FDA4E8648CDAA5804C1814DA53B2F1
                      13E096ABC8021CE25B425DA9DCDED33FA12555A19D5C57BD618F10E60CD1BEF1
                      C9729710EE6BD804CDD6ADD908DF0D8539138419F533A4AE272ED9DA5A9EB218
                      BFEE0D5FC2D5959AA2AE2309D5B17530733840FDDF3FF6BD77FD63F6C39F1072
                      4E6CDA90C4934929B5CA443450BADF6AB5D3B4829F14D92067C24D39A47A335E
                      266E401A379C65655C494402659E0B19EFDABE130FCE97BF74EA694FB1ADAD3F
                      1E73D1799D36D41B755B159D4E2B9582ECD30F5C819B0F0E79A3FD213BCD7C1F
                      CBE3BDEB76A89B6EBAE9873FFCE1D5575F8D8072C10517E0B1F2E567CF25D6E5
                      99DFFB514141FB55AD560BB10F5F789E2947B5E77D74D75D77CDCECEDE7EFBED
                      DBB66DDBBA75EBADB7DE7AD965979D7BEEB99FFAD4A70EF4081E843CDA8EAAC5
                      3864BC8EE706F8661CBD859FFFFCE77FEE739FC32B781CF0687868F60F3FFDF4
                      D3BFF6B5AFDD5F5D399CF7063D9CDA6F3974CE364CDE0CDD501CB7D043CA22FF
                      83EB5157DA6A63D3D32E78E797DFF66644AAE811276CB9FBEEAD698580D6991C
                      220A9160B43D438E8A5C53169B874FE17AE921950AD6EDD6EAB5AEB25123DE33
                      B7A3E899C79D062F3CA7FAC77FF65430D7C0AE6D8B7BA05903168B8ED1523A94
                      77455FEB56A47D01D881B04FE2A024634477EBDF7E567149147F8F314B07CDAE
                      B23C9A4CB7DC770F25CCB092ADE99092B719AC36AE5389725443A120E4DF4870
                      DBC64A551632CDD20A3DA4CC41E764CF2832A86D1E83E693AEB9E2FAB7BDE3CE
                      AF7D177A7D98D97CA46A096E4C52B545D9E14257AB699197599EC7F108E87DAE
                      339E94B81FF532436D12AB95A5C5F989A9A9B23FBB67F7E0D15BE0C737FE9A59
                      FC2EEF2B9DEBA2C4D3FA5454E2854EAB210599C81FB80237071D341A0C066559
                      FAE213B8EFD13BEEB8038103BF6BBFFDED6FFFF8C73FF6BF74FBBB7C9919AFF8
                      5A5DF8D20D7AF8B5326D6DA53A9D0EBE92F11259F99A6BAEB9E28A2BF0D5BBB8
                      B8B873E7CE958B9D7DF6D95FF9CA5756061E1FFCC2375D49DDC19295BB8D439B
                      9898C02B7FF5577FF5B6B7BD0DAF201C2364FB372C02B49412C11AAF3FEA518F
                      BAEAAAAB7C81A0DFEF57ABD5955782821E36EDC73EDB449304A3AE14C47AC8A0
                      D625049B18EAD3A75DF55F8D17FEDE376EDC018F5873744BCF37C76BF851E12A
                      B8926AD25442B3E4E900A19178996694BC862B5060B9B5A9B0A216D9F9F9A558
                      AC89EBFDBB67671FF318B8E01FD73DE9492740F9A3F6AD6D24E04AB30A32EEF5
                      3BF8FEABD6139E65DC1AC385A2497BDA388B85AF285BC6A54A5D3F11BC13C193
                      F05153017AE5B7A972EE6197C66CBD5563C548C135DC065789F66D454CECEC19
                      8894C5D0ED312A081ADA0019A10DE06E50155DE059420CCAD084BF6A75EED6FE
                      D46109DBFC64D38FDEF4175F7DF7DFD17E6CDA705456486B4B5566CDF114F860
                      76CFCE89F1095DE25EE1D7BE8561AEF310E8AB51DA1E649CC756082E0648D4B6
                      95CCB676BFE54FE1AFDFF9EB50DCB1FBD65BD6AE5F9BB5DB837C303113E7FDE0
                      D3085AF5FAA77FFAA70B2FBCF0EAABAFBECF7B9FF6B4A77DFDEB5FF7866670BF
                      8683338F067373D001D1C872F08D6F7C0341195F9CF8D2FDEFFFFEEF7B2F8990
                      1DC7719665489CED76FB39CF79CEE73FFFF903BDFBBF88BCAB0A47A1A88F2FF3
                      A7AC6F79CB5BDEFEF6B7FB13DA7B3F040F111E28BC72D249278DDEDAA32A7538
                      EF0D7A98B51FB9195C7D59E0E3B9EB8DCD1C9032881BEB44F399673DF6A3DFF8
                      096C9C9CAC3636DDB2F59ACD476D2C5A03E09EB6DDEFA69C1EEFEABA29EDA055
                      88D0E494A6A275936963225DAFB2EEFCDCCE76F1ECA7C3A7FEF5F9F5B5B766F3
                      57D92E94053425071E773A198BA1D6AC6B53B04251B36E10342BCF48C5952F3C
                      BB1230F59B266BB29BC6E7FA57E3E0F9DE5436EB8AC95A10C6E3E5BDEAB2B4DB
                      1E8B8D476762598AEE70FE667055662B5C2F18B70C599319523D6574E43D3003
                      9082277882E00ACFC9E66636DF2E3934D61F01F2F8AF7C6EE105E7FE57DBC09A
                      35F5A9F1A376EC98C3EFFA465376B33DD3D393ED2543E08D00CE8D4646A715D3
                      AE586BD2246DB74D528D98E8F7BAFDA638A633FFD3CCC215973FE9F467A46AEE
                      FB76A08B41816727512AC867CD430E5DD02A137E7D2252F82FCE9B6EBAE9A94F
                      7DEAAE5DBBFC5DBEB285DFCD88C57E96D5B1C71E7BC30D37E0D7F3282F16EF0D
                      CD14821E7EF96F397C1DE2AB1771F919CF78C63E0BE04B1A89F0DE0F8CA2085F
                      CCE79C73CEA5975E7AA007F120B48F0B058736180C3CF8FEF55FFFF55FFEE55F
                      FADBF19DE8ADDEE04E6BFDF9ED4A9EC60375F9E597AF5C733037073DCCDA6FDC
                      6C23E25D6324EFB1614D97CC179673163DE1E28B6F7BC9AB77316AE077848DAA
                      BB67EF8C22C185E03AB22CE6AEFD1E40C158E1F68DEC1EC02433C235DC36918A
                      90694DA5393B7BAD2EE08D7F04EF7AE7D910CFC2DC1DEDEE62B50A3295BA303D
                      65120E491C99AC5C6A4373CC5B8E8126EDE1AA88649DFF98157A39EFC263A321
                      A7B22023C6CFF52DF8AC1007C5C88ECEF8C1A8998AB74153189C9B29E817A1D5
                      12B303A496E97E5156528805353CE4650422061EE11279BE88EB69F561DD1AE8
                      77936A65061A33DFF9E2954F7F29A801AC9D1A93B029EBE7CDB1341BDC2E2263
                      744AC97AE46CC65DE8D1A64D4D733DC8E6C7A727BA4BC005A2338547C76AA2DF
                      5B98EBF67FED34F8978F1D73D4F1E59E1BEF1CA7E62CB15E2A6CE57EFB9EAC68
                      FFB272EC871637FBDC8607B8307E29EE6F14F3DFBBF7D6A1ECD3C56FD0E38F3F
                      7EEBD6ADD56AD5CFB21A9187BF3E8AB5F2338A0231071D2879BF10B223BE56B7
                      6FDFBE69D326FCD327B2818363709F39FE058C6F6A5C0C2112CF033D44BEE845
                      2FFAC4273E71A007F1E0B472EEC1C8AAF1677FF667EF7EF7BBFD8D784B5114FE
                      93CD9B9B27272797969670BC48C6F8EEF68B3DEB59CFFACC673E83076444CC01
                      9D831E4EED2F6EA64625B6CE91A978D7753E21662D6348268EE92C3EADB9E1C2
                      C908C62736755507242E4B3C2C94A5EE7B88CE646EE68C226ADA868C078C1BCB
                      10C46D1C539433A5305BD16D779100E18DAF8777BDE3B781DDAC77DF242CA80C
                      06161AE3D5F6A06F358C4DC0A00FB891C624E86CE8A370A9CAB82C6E582BA6A9
                      399FF36CB8C9418EADED30FE6334DEFB2591656E3614509D3AFBB6A6C3C60AC5
                      912BC11F5B04694B91718238DA726968FE6354C932A3CB015490B4E9D3845AB6
                      14BA6091A98FC1A084FE12D462486B5500E4E553BE79C55DCF7DE15C6B271CB9
                      F148C51A59AF93E93BC7C6AA451E334AF07063E039B53654752471A8E841BFCF
                      A011235CEB253C2F88459569DC89C61D73B7BFFF3DD53F7CFDE38A852B62B06A
                      17C886D05697A37A3373731CA9F02E9C71855C2DDEA5BDF7501C62DC7CB0CD1E
                      BBF7AF9387E604C195C1AE4821A79E7AEAF5D75FEF7D17F894E151F25D15FCD3
                      77F2C9275F79E5957865616101BF9247DC1CAC1A410FBF469353171717F1D5E8
                      0BC9FE05392AAFEEF327BE98F1B58A7FAEBA7981B022396E84B9AF7DED6B2FB8
                      E0827B2FE9CF72EBF5BA7736FB1F8EC09955F03D8E577EEBB77EEB8B5FFCA25F
                      384073D0C3ACFDC7CDB25415A4B741914D6E82FE5628188C3FF2F8B9EDF517FF
                      C1955FB9BCB40AB61C79FC60E9AECCE495E9F50B4BADAAA49F4D919A1129996A
                      940872D18271D1AB487E322F4C097182A7984563E3115B6FBFB2D470E15B2B2F
                      7BE333A1BAAD75D70F8B1CA69A640F466A53B806560C332CA8ADA0C3E4D27990
                      C93F6D4B679330F8DE6486B1BDC17931F98E111925412CF71D5B486A84CE469A
                      6576F406697FEC1C193A6E46C6C71D753DC6855EE666EBFD27DC52BD590813E1
                      2035EBE30DDC51A670C0E3C3ED28B6CF3F233E9AC3308A834E62D870CC55DFBA
                      EBB77FBBBBAD0B9B366C54024FCD67D3343159021C77B857B8C98646D994E169
                      8628398E29C1330C61F0F92B2561B1F69DC29716E7718B177DE229CF79E1CCFC
                      CDFF36351195B3A5A9937F1B47A0146D3AC6C352D695560975662C2C73406C1D
                      257B1F8B0B0F3974B8190E9C91CE6F77E5641A7CA7E097107E89CECFCF7FE633
                      9F79F6B39FBD71E34670E0E86B33FEBAFF6174141CF12BAF56ABF584273CE186
                      1B6E583913DF7F07FB2ADD89279E78EDB5D7C28A5F8D43C939E800CAFFEEE1EB
                      CD3F7BC99157C1BFB67FF7777FF7D39FFEF481DEFD07A77D8296FFE66FFEE6AD
                      6F7D2B5E191595FDEDFB185418633E29D25F47F2F66FED273EF189DFFBDEF70E
                      F498820E45ED3F6E865CA5F57A6254AB406C2D402790CE9CFA9D1F14673CF59A
                      FAF8FAA9C618333A6BDD51A9A5AC31B9737EB191A6887DC22A461EE686A62273
                      5F0B558D93ACDDAFA7A21ED776EFEAAEDFB8E6EABB6FB105FCD5CBE02FDFF264
                      382C9ABDEE9B490DC6A6C1F4A1D7862A22028B5C27EA617D14DF8E1182072568
                      B89212574A0079A525A56A786E96D4A56498ADE163317C0314EFEC1835A0F6B7
                      2C0F726F7596CAD81CA9131997DED38C8DD29A873E0D7FE47CCB1557CF663487
                      6FE8E118E542DFDFD1A45545884CEB9F76D947165FFD86AB6E5F80FA049F181B
                      DB33DF6B56D61AA34B814F1F722F656BA43870CB34A7D40EE46624664EEEE742
                      51D89E1A14626222BEFDB6DDAFF98323FFFE3D8F5C9CFBFA54B5046506257551
                      A4443B37B531A2F0ED8622DF0C0EA810D6685792472EB6C36C90438B9B47F3DF
                      3FF9C94F5E71C515333333F805869FE63E2A18EFC24FF36AB57AD75D773DFEF1
                      8F7FE52B5FF9506DD783DD88F3F6E99BF5CE77BEF3CD6F7EF3FAF5EBF12BE488
                      238E18DDEE171B95515751CEEB2F23FC62C66FD3EBAFBF7E54A0826597A4C78E
                      473DEA51D75C730D046E0E3A38F40B70B37F6DAF466E069716D26834F0CACB5F
                      FEF20B2FBC10AF8C8F8F2334FB7BA7A7A7E7E6E6F08AF759DDDF4A4667C58F7C
                      E423F1CD0E616A60D0C3ABFDC7CDBCD4224D2B4AB50B05490AD1C62DB7FDB8F6
                      9A37FDE4B2FF80E975E3314B4D692B5C69CE7AB69432A12EDA3EF399BC19B903
                      B33A9E66423CA8C43037BBB4766243D69359B975AE072F781E5CFCE9DF87C59F
                      146A9B88BA088E4B8B347F10DF93BA6FDCB4C29C1A20B051936C81EC685D5D57
                      FA53591767A1F7665C0CDDC9AEC31FFE87095D27DAE3051E238597AE7BCB3D0D
                      BE2EBDCE35EA4320754CAC392F7D955ABB80642A3CFB32B7AB4E9BBDC767C4CC
                      0F481C78AB6D9A9333D1C6733EF0DE8FBCFD5DC5621B92BAAC353728ED7EB82B
                      A9F21D71C9D8F0773D2D15778E706915E59370E770019B1B31566777DF398BCF
                      E7FBFE8EBDF475E7746EBA143FCAF0638A2CD6823C19C6F5186736B5CC4A5B18
                      87CABE7C4F460F67FBA6D31BA10F1D6EF6E88907F68C33CEF8D9758E356BD6EC
                      DCB9F3A1A531FF5BE4087FFD1544C0D34F3F1D11D02F73D14517FDFEEFFF3EAC
                      F8722A9DBC33F250F021046E0E5A5D3AA4B819DF9EF859E43FC1F631BC798F8A
                      BFEEEF1A4D11B977C2866F9BE20D1B975E7AE939E79C73A047167468697FE669
                      F0841B95F7755AA7E26BB4F1291F78EFCDAF78C3EE2DC7F1767FAC33D74B2AB5
                      C9C664BBDDEAE7F9D4DAE9B29521F315A2441AE330B036E6BA2E34D36CB1DE8C
                      B66D6B6F58BF4175BB5BE7179F73367CE2E3CFAB4FEF18DCFDE34E56566BB47B
                      C86EB5DA5867A95B8D9AD66AC7CDA5F2EE02101481E7FCCAC215837161425D8A
                      E61886CDE151D04CE15F0885F81D2B0CE3AA2EA847A062780BEB3366ADB8E714
                      B915DC4C911C9A9AA5F8498C8EA0F71E89BDFD025D6741E9FC1BDCAECC80FE39
                      B28C773A667AFDDA85F9A5C9639EF3D90FFDE8775F76FBE6B5D0EA556B137553
                      52BF403C296092CEC24B13E3B987617D625F9DB87E2E5AF9FDB35CC4956CB074
                      C486CA8F7FBAF3A98F866FFEDF97F4E62E4E4C8627F04856B8B0A1846CEB664F
                      D2A6059851821E9D8768A4713A62784A83E721870E378F6C123E9CDFFF98E8F3
                      F947D359FC9F4F7BDAD3BEF18D6F3C849B1E95BA712BBE2B9EBF7D6262C2976A
                      469878ECB1C75E79E595FB049ACECFCF4F4D4D1DE8E3F770287073D0EAD2A1C3
                      CDBECBFD2852033F94A6A7A7FD755F3FC6537D3CE1C7CF55B266FA48AD15DCEC
                      CBC9F8913B3636866F73FFC00B2EB8E0D5AF7E358414E7A08757FB919BF1C51E
                      47420FB48C23363373CD8F8AD7FDF1DC377E02876D884B9B20BEE17B410D5C07
                      41819C6AC91A608D8AE74B66A5490CC469195BE430D1298A52C69B62D9DB7AF7
                      AE531E091FFDC889273E7EFDD66BFF63F331D09B87CE02AC99643CAAE3DA8A3E
                      B520B20C41B21CD59B8996190C22CD1C374BDFE244534D58D8048CD45C59916B
                      3741D065445785D5DC5A5CC6C1AE21FE66C64F1C5C71F0EE01BEC6197FB98A5D
                      715672F280E412689D641731B1EB4888985D7037CDCEFB831FA0F0B14973ACBB
                      B458AB021B5B03DDCDFF7CE1557FF8E76A22ADCA71A4DD28510D811B35AD124C
                      C96BC4CDA2472566DD40FE8D4CAE049E1BE0518D2C6244D18B78BF1C74590F5E
                      F35AF88BBFFBB562F7D7ED00EF2340373CB21A07A6C9CBEDAAE676B968EFEA00
                      BE9BB775817DE5A1C3CD239D77DE791FFFF8C77D8184D1E9D4DE7785FF79F1DE
                      4949BFBC4653D1471EC1D34E3BCDE7BCAE2CD5787DF0831F3CFFFCF3FDA3F0AB
                      08BF9857577F845F58819B8356970E1D6EF6C24F2AEF6A03F76E3DECB0C3F003
                      0A569CF98FB223577EAE7A8BB3E7E95138DDFBDEF7BED7BCE635077A404187A2
                      F69B4FC3CDA51B422AAFF3CD67FFC51F5FFAFFBC0FD64FAD03D6CF4157AB1423
                      D1E99B58C43519B797BAD54AAD409694B3B43FB6063A8A7402A2CC8BB946BD59
                      D889EDDB6E9D1983FFEF734F7EE2D323BDEB9B5D457113F85EAB5504A86471BE
                      5F8D92A49EAA22236A5B91FFE0B9B9141AFF14448E7417A392B3774E10475B3E
                      4C6123732F8F119223ABF0BD8B5FAAC8CDDA0ABA8B8D66090EE567F5B9BB86E5
                      646B62446777A396908FECD0CCA41A3855B7A9130A25553FF06233B80979852B
                      64D713586CC1C4D187833CED9CA75FFAEF5740BD067132297955701C704F73C7
                      FD5164EC027DE0D894B64AADBE715C42013216AB3692F6D2AE4D6BE3EB6F5938
                      7A026E597836F47FA417E7A028B596424883EBD225F0725862673E12C4EF0ABE
                      66AAAE025E587E08E5698CD0F3DC73CFBDF8E28B479FECFE031DE19522619C9E
                      F9CC675E76D9650FD576BD53192F7113A31F3711DC11DFC1F5D6C22F9E95B3EF
                      FD7564F74B2EB9647272F2401FB68755819B8356970E1D6E5E5A5A1A1F1FDFE7
                      C6BBEFBE1BDFB0DBB66D1B0565802B04E01BD67F9CFA5BF6C168148E1D8F80BF
                      3E3737372A5D07053D0CDA9FFD0239E01BA1510551DFB4FDAE637EEFBC6F7EEF
                      2A386CFDB1B5C42CB6E77395278D8AE182691B171162998E85B6CA462DCA9FB0
                      31D3A95429F06250EC9C9A696EBF3BEB17830BFE217AF56B7F0D16AFCA76EF14
                      75E80FA092409C4EECD9B1980ADED834DEDBB19034964D14CB39186EAF05B551
                      C1B35655B14650EA05949C0F702787BF799B1597B0F7617E5EA00F78B6F7B84F
                      2ED79BDD0AAC36AC642E6E4F08A273EBA97AB82FB86444D56DC24F4356EA612F
                      9407FC3C017173AD42F5F5DA246E0DD8D889B7DC34F1C2FFF99D9B6F86DAD451
                      422C6A1808DAA3C4F2883E64D8C03A6EC6AD72EAB4A20CF57C61854EA464D558
                      ABA235BFB35D8BE04D6F83D7FFF1E9BC7FB3ED2F160579A9A54C0B5B30A63C37
                      9BE54CEA61FA073E2F8C5E1B702871F3482F7EF18B2FBAE822585123D947679C
                      71C615575CF1506D6EA535D94F7FB9E9A69B8E3BEEB895CBE0B78E77397B7C1F
                      7D03F92F9BFBFCC6FA9554E0E6A0D5A543879B61F9E36B3449C3FF8676DB6DB7
                      9D76DA698B8B8B78CBC8AA310AC0811576E7D17A3EFBD9CF3EFFF9CFC72BBB76
                      ED5AB76EDD811E56D021A7FD586F66127A3D185B27A179E6AB5EF89FFF7A29E8
                      548C4F1CD76BCDD56BB5DCB60B9DC7B5846219DAA22A2A5D811B2C39A233F84A
                      7085D948495D6DE8F95DDBDB5DF8F5A7C3D7FEF35C68FD07B4F610CC098A5FEB
                      B4208EAB49542DF32E87CC592486B88A6B1E7133A5AFA9C8326A7FADB8A5AAAF
                      E8E36628A28E0D639BA5728FE3E067F4996248D1C3AE28CB1E8D61C94FD38387
                      93FDDC7C3B2E87238FD91097472E0C4AB370C1CE34ACA1E5DAD5BC1FF8F344B6
                      099091ABFB6AE80E606CC30C4C3EEDD31FFCFA0BFE6061D3F80CAB6699569273
                      726CDB54EB9245E4DF76A366DC203123D96B62045ECFF2028F1567E57465CDF6
                      ADB72463B063DBEF44F24ABDE7D662405303635903AB729B233773E67D1A6E3D
                      400745EA08985094077208F9344653B65FF292977CEC631F83E52FB095263CEF
                      BD3BF3CC33BFF5AD6F3DE43B309AEDF7E4273F79E5C4C4514ED328BF69E4DCB8
                      F5D65B8F3AEA28B867C7815F61056E0E5A5D3A74B87965BAFCE8DDE7197A7676
                      76EDDAB5A325F7B16AE092F8E7889BF1B3F7C52F7E31B8373B1E3AFFB1B64F33
                      C2A0A0FDAA87809B29AA81EF7B0B4161428497D42760F23736D62ED9D187A38F
                      3B7C7676D0802A7ED56B9103CF33D96520EA833184B53EF4AAB56471BEBDA639
                      ADB21244A485ECF67AC8BABADC851BDFB1FD05497AE3D2ED578D57A984AB1CCC
                      B9961FB14542E605887C2FAEBA0EDD8AFAA750E6329561E3260C28D84E501C31
                      B93212E92235AC28A863609CC6C8B55951BA8EDA12D26805EC310195D4793834
                      8D96985A41A342C70577B55826C3126CE68C1804581C3F14F212EA752A15E391
                      2BADAB46C7F4D9D1EB9BBA7810DC0C300CCB73C73671E7034C4C683979F69FFF
                      E177DFF1CF8B9184751B0F5730BF674FF7C8F58F58586AE386DCD982A0AE8826
                      65087EA2E72CDE1359BF3F315359DCBD6BF39A236EBBE5C60CE04B9F39F359BF
                      BE08ECDAA56DB652C32353EF2E75D33177E2E1B2F314ABE25164BCBBEC6F118A
                      538EDEA1C3CDA332C9F9E79FFFE10F7F18EEF9EBA1FF56F3F302CF3AEBACAF7F
                      FDEB0F76FDFB04CCDDE7A6516F78C31BDEFBDEF7C28A26B4A3DDF0DF37A39026
                      FC4A1EA56A1C0A217410B83968B5E9D0E1E69FAD6EB7EB3FACBC7C0960650ABB
                      D7473FFA51EF4F0B0A3A80DA5FF566B20B1323F264FCB19FF8D04F5FF7BA4126
                      EAE39BEA65067111192B68D21E2F14750484067233E36DD64DE224B595B29757
                      922AA2C09D7B761D7FD2969BAFBD0E98FEC0BFC8F3CE3BDE2C6C2DFA4B14D0D1
                      A64D58A8B8261C021915D86008CDAE3C4C5976462A2E70844696487BAC607A60
                      A314649D40CEE72B77FB50AB4FE222A5CE8D2A6D64230E22615CA4ACBA064415
                      E20A40C3FDF35E2B0B4B6D5B664C14CE23E2029F699E1C2EB6836CC8B98176D6
                      6B2D295354131B35F8A0D71F6450ADE079332F0B83D7A5003C432806F983389E
                      2EFB9912A929872316465A24D3B88CC7676EBAEE98BFFCCBEF7FFAABB066FD66
                      59EB5242F32E5DA98C693FFB10109C853509B9B44597D6A02A2C4E98C8BAEDC5
                      99B13583DE9ED662F6A427C2A73F74ECF4966CFE86ADB51AC44614A54E6B7290
                      298AA506092AF9FFD9FB0E38BBAA6AFD75EAAD539399499B49211DA41388448A
                      D2912A28C243509F8910F9A32002828004888215791840E9A80F4121028A4887
                      80904042884908E9656632993E73DB69FFB5CF9A59EC9C7BE7CE9D92E273F62F
                      BFC9BDE79EB3CFAE6B7F7BEDB5BE25101AE266BFC6BE8FA362A94EE83F1837F3
                      4AC69FC94AAF7FB89913A161D54F14DC9B55C5F7DE7BEF9C397302F7D33A4A2E
                      89BCD2CC9F3FFF9A6BAE0994FCFF7C1AC2CD43E9DF2B0DE1663E0A6B6969292B
                      2BCBBE81B99CEFB9E79ED9B3678364B3F19F70863694F6C23408B899561DA72B
                      C85DF715D54D65203EAA1A9C63A6EDF3C847753062F43E9DC9FA7024AAA7439E
                      2278D82CD5B28D660D94503A068A99543A11AE166991646B67D42CB33DAF25D3
                      50313CB676C3F6E38F86BFBF720A782F27D72623BA0EBA9D4CF87140840586EE
                      6332471451E96265161E815E0C8409862DD0B11F03C54BABA1700C22B6D799EC
                      E810A0578FC4ED64AA3D692B42670D6614A2C3F6017D1200CEDEF83F5E58B16A
                      5DC3F2656BD67F0C9BD6C3E62D90488937993E0C049F3243983484A1AC04CA4B
                      61FA24D8677C68D651538E9A35451B1605D19E1F75D4AE3434CF4ABB9A2D4A15
                      26F498D29219C72C528926AF90E475D38058225037764C1CD494AADBB8390957
                      1FFFECEF97FEF77F37B4A68BCD72D7D44DDD8B3896A368A65013439A2C921555
                      E066110ED08D848D682ADDE8A96E481364738E5D5ADFB8F98DA76B8E3C7D5CCB
                      DAD7C2261820E2190A0313071C5F6FADD8A522378571B388E73D849B071D37E7
                      8471B4B42C5BB6EC84134ED8BE7D3B741B84D0AF324624DDF385175E4816D8D0
                      ADC61EB2D318C2CD43692F4C43B859A6FAA9AFAF277BE58A8A8A86860690429C
                      30E55C8067634F177F28FD27A6C1D1372BB8F0F8A35911D1415C32C645845734
                      F6D3FF5A54B5EF917F3675185133ADB97143341AD6AD8882904DF8AA653CA34D
                      F0043B21704DCF140C8F88B662D148A643475C3D66DCF07796AE98360E1EF8ED
                      71877F76B3D5B83A550F4531259D16C6C4AADE6DB94C60991CF1801831745B89
                      2A8216CE15084E490B8B05CD4CA71D5C440D43410CE48AE8801ACEC978E50828
                      AF04A802D75AF6EE96175FFAF89F6FC0FA6DD09A80E64EE86C072B05787377E0
                      4F5544E5137F29D884C7574B421035211C072D0655C3E1E0C3E0F327571D7CC0
                      C4F2511300D639F5CB5B1ADA229A503C835B2A5A48495A9A08E15748EAD237E3
                      6386A89FE6851D37A38060EF0B8F2B69DE3AF2CE9F866FFAF9D21195A51D2975
                      F4A8CAFABAED613326FC02954E4F517557F73CC7D1538AC04F510BF1703A5D5C
                      164F279BD2161487266DDCF6C10FAF841BAE9B65BB2B5B5A1BCB43A6E2B8A984
                      1D89A869DFCCDB1561B85176CBB859B7547B0837770D80C1C0CDF931DCD4A953
                      57AF5E0DD25A12E0F4A0C3CD030E3860E9D2A5F4484747473C1E1FD2370FE1E6
                      A1B477A621DC4CB89924157E451177E08107929773797979535313F8E76CDFF8
                      C637C09FAD8C958740F350DA5369D0EC34BA06B170B0F310655A361455148376
                      E02597BDB3E0E154B4044ACAC681D3E158B6E186154F7141F7E392A415D50137
                      0CAEA2858C54AAC3B3F55871C84A24543711099B6BB7B5DF763D5C3BEFC2E6D5
                      8F20E274D31089231A40F419B23C7F5DCC667313BE818622982074F02C4FB574
                      0F974D3074A5BDD3D3851906A412E01950360CD16E3538951F2F6B7AE985B6C5
                      EFB6FD6B8DB566356CEFE648304150DDC56245917044A86F3D37E3A931DDB075
                      DBF48120EE0E6C3BE38AB82391DAC6A4A57856BAD5ED42D8306104D48C86A38F
                      197EECD165477FAE08A2097036A6D624ED76889715DB5A87A3B97DC3CDAA8814
                      2EFEC756044B738573647B06864D3C70C53F87CF3AE61FA6AE6AA1715A349DB2
                      92BA13F7DD1C1364E0ED096F489F1C50355219DB542366D8C958CDB6E3AACA78
                      2FB32EAE580F3D30FE3367D46C5EF9EAF0A816D1B5647B2612D36DD7163B1137
                      26B621901051C28770F3AEB4D3005FA7C2D61AE48C387BF6ECFBEEBB8F7E65CB
                      66FC093FE3C2C301B4F0CABA75EB6A6A6A681DE2D5E83F240DE1E6A1F4EF9586
                      7033748B56563CE3B67FE6CC991C06F5D1471FBDE0820B60883D6328ED3569D0
                      FC0255C1E420CE826D81B2C04A43D1D4995B56B44EFDD4BF22E546CA8B86C2D1
                      9218B436B584B52211D844BCD211D14984ED81E98112538DE6CED6A2E258DA4E
                      1A7A04ECEDDBEAEC9366C03DBF9D5AB39FDEB4E2C3F2525CED201C81A4A509E2
                      08C712602C1B3793C5B3A2758585566DDD2F76CA85988010D1768483C5717DF8
                      24B0DA577FB875D1A2F6E75F80279EEEB2BE2831CA8BCA620880B48CA1E986E3
                      38C964A7ED24D5B069206655AC4C3AE3F9B6CE4287ED076C715DC753429A59ED
                      289E07EDE1881AD28C7432B3BD6E7B3223C2B91D32094E3D03661D0E9F3BAA46
                      AD1C099DADF6B6AD9E9E14B474052782CE720F28AA20A84E65A0645409B8873D
                      F0EB155FBBAA76B859A65708836E2D8358CAF37D20B10F1DF1A0D84B08B60F1B
                      D45028D6DED66C847173126E6B29AA284F7EB4BEE18E1F947FF7E6939AB6FCCE
                      4C423CAA5B29505D5B09612709637117C22A744AB879C84E6330713303384F8C
                      28F199152AEFBEFBEE8C1933F043696969CA4FEC634E14754C74FAF4D34F9F7E
                      FAE9726EFF51D07908370FA57FAF34849B0936305726D16E32D5E6C30F3F7CE1
                      851742B75A9A498D86D250DA83A99FB899FE0F1C9330A41361F12CD5D867E6D3
                      F7BF79E6D761CCD8CAA6B4A1A9506674A6DA13865EEA515E82C61871AD2770B3
                      AB463D2D99EE34CAB40E2BE559C5C591E62D9B3A9EFAEDA7CEB8A822B5F1254D
                      518D909A48D89A81E2036FF7F42E7E3450BA3099D2E5BAA70245E3E352751974
                      38228EB48368C418A545F66D6D2A7EF0917FDEF7E0E615EBC46DD128540C2FD5
                      C2F174C2F61C2D14363B3B3B05D99DAA7BAAE3395EC6B55D11454F416CE4CB2F
                      4161A7F911407DCE3B5770B3A98AEB2929279376DA111347427A3416C5EA356E
                      6B68F7DD822FBD00BE71F98CE9FBA74CA3C1AAAF55333BC1FE5E55CF585FD30E
                      79C292DBA1AF0209ABD0D80255530E86CEE9E32A1FAD4B43497571C6334D5BC3
                      FD8907223CA1A6760AD66A0FE1B5E1BA695D5735A5A8A3B34589B44523E1CEB4
                      1A33D29BB6749C77022C78F4D0A2E8BA54538791B60C2D9449A7B4A8685AC756
                      3D08819A422CEE871F17C87908370F226E669EE6802D321960806495418A647E
                      3B870C983D7BF63DF7DC434FD10243595124F0FF8463CD21DC3C94FEBDD2106E
                      76FCC454423C1F3FFEF8E3975E7A891C01895E13A59CD0670DE1E6A1B4A753DF
                      71B32BF82374C46DDDD1F8140A80E90AA8AA6AC2170F1FD1C2556DADD53FFEF9
                      E2DBEE8211634A534E145C447C6D214D779CA80DA60EB6078EB03450350B4CFC
                      BF587CB3DAF4A4198BD76D6DAF2A6F89B8F0C60B33467F4AEF58B3C870C188E3
                      1BC25626E3BAB619165A5381DD443068AA81AF2FEE5E01298A352151DDBFAC44
                      A0B30562633E0591839EBEFFED2BBEFBD1BA66288D210AA970F4A88BD0585047
                      DB9AE7131D7B762C146F4FB43A5E2A168B81665816225FC50899A98E4E553555
                      55E076CB5135B14B4084626B4ED2406CADC6155D7CC1073DC5715DD349C563E1
                      72DD0EA79D2D754DB5589E0BBE06F7DC75542C9281BA8F53768BEAD8E4D9F849
                      A81405BA9C1F3CDFEA44D445BC45586B0B4B0B3AC10757511511C0053216C486
                      95813D6DFECD4B7FF4AB049482191929E29C88A75C1140504D683E6E16F10F75
                      4728C8ED70C83413CE0E44BF4638EE59E98EFA96D1D570F33C38E7BFA638F5B5
                      A9E6B6587104AC243E2F628FBB222745D909DD2382FE4FE6A11B5CDCCCAA9400
                      803EE38C33162E5C48F76001C8848330348E4CDCDDD14FF80871360BDB7DD7A5
                      134FBA593E03FDBF9D8670F350FAF74A43B89912CA319466848CE5484F981289
                      040AC6FF04F13594FE5D529F71B3AB980A425841598CABB2662BE0986E26E3C5
                      3545D743D0994A21C88B40A4FAD30BFFA87FEBDBAFA51282A7C2718BC13511E4
                      3A0893FDE0D6AAB01C102F16C1345C13D156A9AAE20C49A8DAB0E1C3D6AC5985
                      3F3DFEA87EEE5935565B2DA137411E07064237C5B67C1B09203A3481DB7CF4E2
                      B219835042871405618E50CD7A9E95B0C08E4259F5C9EBDF4F5E36F79557DF12
                      64702AA21053D3A3220E9EA398BAA03A36151138C4167E8B5611CA2ACB68F594
                      B42354BCBA661BAAA71B90D65C15A13FA89EADD8F890EB0A4B62D3CBE89E3087
                      10F1BAF1834AD41E9863C4B21DB030DFB4E335A7323E9773273CF19B89A77D79
                      3244366C5AFDAF9222288A43B20962212395B02C5BD074183AA41DD152BA1A72
                      1D4D443A54139E9114957570DF105684854CCA7352A138B4B64149C50428FD6C
                      48F90DF6CDA4EA8393D61657A8A515B1A97145C150F2EA866E5B6961E1E1C77B
                      E98A9DED8630CB9011DBBC6DF5B7BE06BFFAEDB96EED0B76A6051B0F6B8B7B03
                      DC85E840910F55077447F37DD18467E5106E1E7C7DB38CE4EEBEFBEEB973E7D2
                      678E66C2F14D88AB8E8C3428C2D620D637B07AF1457A69F6FDAC2697DB847FC2
                      C40162A882BB02ADEE4EDC4C0F125D091BC35023701DE546E85FF2BAFDADB947
                      721638BBCDC11F123860B029D87974D01B3C7FFBE47F69812321FFD13C568D26
                      268FBDDDBF0BA297CAC74444A3CE5F719028623532B8CC3C1D70C58B46A38D8D
                      8D14299A5D17B253BF7133170F8B21A34F7A913CC7B9A9994B9EDA562E30D748
                      AC26DDCFCA739F623031FB32DE93BF47E42E230F8D9E68ECB9D8D972290FF93D
                      3F258F342C30B9856039B100D4351C586A5052C0528EBE52E13DE1A4EFEC2219
                      C81504496E60AB06CE1BE566CF56F9833FDE5848669B0EF6B51D709CE3E2888F
                      9350CA96BDDC4172081BDA47D11CA7E2E599E081735A5914539BF3C9EDC053DF
                      71B38B9547DC9CF4112AC247DD0E5BB6ED85D24A58072FE929316873A178EC39
                      F36FDDF0FDEB17570E43780ABA1B5594A8AB863C81387D220804602068357C6D
                      6A4857A0B3BD65D8B0CAB6A462A86E32B9156C77E5AA7D2A6B5A3B37EF303C11
                      880441A0ED1908F734D7D2A00B2B8BA77D71E4F96E7C5413453370D154F13F23
                      DCDEDAEAA95EF1D4FD00263E78DF533F9A071B3743548D285A8551AC9454459B
                      5A3688427951CD311447D44E834EC543945CE4A88EAD77BA5ACA11EA3DCD7015
                      DDC11EB0B1D51437660925731A8B6261D53D306D9F0BAF3BAA20779F104F989D
                      6E1826C25FB5B33365DB86626F85149C793AFCFCAE99C3AA4B9BB6FDB5A51946
                      9543B2058A8BA39A88759D4EA6AC8C03D138A253B5BDC38D878A3D25E5198249
                      41B1C29A282A6E5B528667A93AA41C508BE2E6B0895F3F7FE953BF87487C9C12
                      49A420A38B41867F84118B0FA071747E12CD45C059A1D00E21B08EC4876FDCB0
                      ECE463E0B9A74F7212EFA84E53460405C7BB8A142FA5AB96E21BC2789E993185
                      41B7E10DE1E6C1C4CDF2B4AFAFAFAFAAAA7AFEF9E74F3AE924CE9F962E7A237E
                      66DD337EC5D7E14BC1078E25252583525F963B24D1E4B52A27E2C1F6C17BB205
                      EBEE64F3D8FDFAE680B01E94B865F29A471BA49CE2BE2760CA7BAA9E16B95E11
                      ED6E4E585F6C375C170365E6D312DE00F8FE335DEB2BED2179682172D2FCB4AB
                      4BCB034684B54AA769BF448813CB40089E1669FAC045B2FDA4FB8973237D736D
                      6DEDA851A3F2BFB7AFB899A06460F605BECAA3B7A9A9A9BCBC9CAF43F708948F
                      AA7236729E215A60C21C68E25026A47B2EFCFEFC2900A973EEFCB94F07F75C2E
                      279293713F1F1E66EF04FA9DE43D0F41466A250A6DDB53EFCB6D1B685579A2F5
                      BA3FC94EF2900BAC113DB1A362B1710CE0628A37E7DC36633E08C4F1571C27C2
                      D8418A3EC6581976DE1382DFF5B83A0FCAD6A8EFB8D90B2B82892DC5B8396364
                      540F619E1A515DE1AA17573A6D2F5673FC37BEFAC16F1EAC9F3806526E44758A
                      10022A7A0405890D29458035D7E3237F37842037D5D15C3562646B47B4AD79AD
                      A924CFBB40F9F56F8F026771627DA7A60A50EC09E817D63C0823E45405FA1681
                      F070162006770CCDC780A0646C076137948E11861CEB56C33EFBC5A06C62FBC6
                      CE9FDDB9E9370F66B63441A50E45C327A733AE65B4385EA78AABAAAA1956CC83
                      28789AE22A9AD6A908520C43F11C5BB31DCD53EC228106B50EDD11B1F73CC1BB
                      2C94AEC27841A0F8B4EA8221A07D8E26164A294B78D6E1E8A11DA7657BBA92AC
                      DFD139320E87CD8039B30F3DE54B2834DF6F58B5B902314FC64CB664B081A2F8
                      D9284E25DA2C1DC2A6885188E8DCD6894DD9F7CB53C45E42339554C2D32200E1
                      B8122DF978E388B38F5BB2721B8CAB1E99B23DD7CEA88A2970B3E83BCF76D2BA
                      A1FA70187CAB108D02C0E07E265E3272EDDAF7A78C8207174C3FE2D83474AEB5
                      D2F8086ED44CEC2CDC072ADDB6D819CD10F63943FAE6C1E6D340D887B39A2478
                      7B7BFB983163705945398ED9B6B408075392B058125639639A3367CE82050B60
                      505D007B8256D9CA1EBC9304341692D633BC81946DF89502B240F7E2CA3963F9
                      FFDDF5CD20A915E95D6C1B3310537266DA62150BB51EB53CD9AC432E122ED29C
                      517D59F9474A35CA732F01CA84BDE42BF455EE08AC3BD61747544F99502393D2
                      6EF71BEE33A0A7AF81A55DFE8AD396A606762575100D187E9C70F3E6CD9B6B6A
                      6A6017E89B496347E3135FCDF39A1B0D4BC5EEC5743FFE4A6714843F787FCEF5
                      C57B302BB9CA74336D0CA813F1069C620462B0374B4B4B0BE926EA56D2FBB268
                      9513E34ECE2DB07DEA29E5DC4C62B350BDA895B0CCF461500609BE915026BEB1
                      B1B1B1A4A444469C3418722A1A76692299C0F284FCCBC93606A12AF63B896B2A
                      B93C9207B2A3080C18CC16DFC55DCCD7494CC9230DBACF51E9ED74CA11E86B59
                      DE52EDE8C88216237A9CF077FECD589F52FFF4CDB621824603E1E69496416065
                      B8AAE0C87005DED446562E7D5FBDEAFB8DFF78C59ABC4F692A6DBAB6924E226E
                      16FE6822E6B5207776C954D637E7156050F34F20756744DDF60FB0446B567DB1
                      BAF25D3BB15EC9087C6C69841763C2F2C1ED7035511EF1BC6528AEA179BA8BF8
                      56980127949161684DD537816240E53E53C098B8EA8D450F3FDA3CFF1EC4C530
                      7AC4E858BCB26E7B9BA35BF132AFA5BD567483B0E12D525C412CAD61E7A9094F
                      B184B39FEAB94A5A188788A81FAEF08AF3329A271898FD40D342B52DE0A89E42
                      44A188A0DF7AC0BB0F3B150725F65FD7C116C205C11D66E09F61C5958B3F7807
                      EF39742ACC9B37E5A433C782B2C1AEFD28D904451531C11BD29E482751AAA5D5
                      28982111C11BA1BA0F52FDA6774153BB782D52ED8E5682985F4D186AE9F0F3CE
                      FADCA34FBD0453C656743861D7B21D61A3E175C79FB37DD36FA75B23DEE536E9
                      786E245ADEDCB8C6E884CB2F356FF8D58C54ED1B561262663463792AB68BD8ED
                      743D6189AD8AAEBAF6106E1E5CDC2CCB29CCE4A5975E0ABC057FE5ED352D9F33
                      66CCF8E73FFF09BE5CA38DD9A0573C709E8BED201FF081BF46060A4F7299CAD3
                      DCDC8C022B8F966210D59FBB19376335653C4A7AB2C0C5C14D0C50A0DB4A87AE
                      D3075E3F70106231D8892AB0B40C566B0F4AA24D172D87586C0213BC42E3AF28
                      3949B348838A5641196DD0757A24E721FEA077414047CB67FD0882117650017A
                      559AE258C55D2E6D2C1B1A1A2A2B2BF3BFB7AFB8995A55D6F6B1C106A59C6383
                      DA9F5A5EDEDCD2AC675763B9E5C19F62FDD637931501F8A3B74FC765F2AE297F
                      BF07402AD6855CA50342898D5206886503415EE584C210AFE3C4DCA5E6DA7C02
                      20F39952EFF7DA4D3886F14E04B534A70889F25EA27FAA19C6DCD9EAEA6C953C
                      591305A809E5845202CB8632013B946EC6DB485FD32B32CED3357D4A7DC7CD60
                      22543404BB1974E99BCD8CEA08AA05C57211C9B57542F1BEA7DC39FFB91B6E05
                      23528A7D180E453DDB4C3B28F20C5DF8B62540B1C40B555B1374C4C25AC0512C
                      3D6AA73A3390AE4AB76D1A37163ED87099BDF961CD6A559CB8A0ACD312B67085
                      2B05CF0D4123C2B076BF020825351001ADFD0C71A54CEE6884E24A30B101CBA7
                      8277E89B7FDD72CB0DAFFC6D09944421563406B4702695B2DC8CAE394644D88A
                      88A6744D70624471AC09CA8D36D1C25E0811A1AE74D88AA13865AE1B52D4A428
                      B99A119A72378E1248C043CC40F589925DA59BFC2E47E2B0C9D8E5748CD0E1A6
                      2ACACBA24A64CDBAB5289C7E727DCD776EDE17DC7721B5C36B81F6EDD8C86664
                      18662888AA95B02B2278CBDDAD76C57B11FAEFB4A3C4ACB4D00443D198E3EEBA
                      61D9F7E635C48B418B8FD1858E195FEAF9766622A0A2EBA6C41E001C9910C515
                      0C7A6A48B5766C6B3D6232BCBCFA0B76C3932D4D501A89D9AE20B3D37063D035
                      64803A4F157B8721DC3C50DCCC674CB2BCB8F1C61B6FBEF966F936BC882387A4
                      0C2F6C2883366CD83072E4486671EA75B5EEA900D9A22400B0C8260F6FCB5E6E
                      0B49981B2E8A28EC48047381F957CA2D6046D9D7B4A7FC02399380EAB1A7B6CD
                      F96C76626B48565CF5A9D949FF3770BB91414FA48AF34350156AC0C315E70F38
                      D188B61C06C354A0F044C618B2ADE440C8D1A8F7294E1E19A2306F7120F51537
                      7343B1E062FB5DF9049FED49307FF906563333DCE46AE2F59E6262F73B914090
                      B7403DE99BE9809E64609ED3869C6105C92822BBB348EBCFBD2967DB0FF920CF
                      FA0F3FFC70BFFDF6CB795BC0FE81E742FF501DD797645DC04EBD1F89BA9ED531
                      FD1EE43CFC7840064C9CD97A9E4E27786F869FF14E3E0DC81349B7DFBDD3EF54
                      286E163E79BAAF5C45DCECDA86E2326E76CD0C6E694CC70FCCA140CAD663932F
                      9873E143F73E0A53F799525BBB351E2B73556112EC9B1E635E968F9BC123DC2C
                      DC03F15137AD77840DBD65636769DCBBF452B86EFEA7A17939B4B6835B827834
                      A37508D2356125E2AA6E2B3E638705FCC346303DC4E5A23B5C0130411F114AB7
                      5BA11187803DE217F35FBBE1E6D6761B46170FF7E211450F75B47528E0950D2B
                      4AA7DB5B3B7684F590A687549173D47345A0144F4564DCA9788A0306164D57DB
                      10A8236E7640306D78E0D87A126F536CD38F166E1BC20442F8DFF9FD91033753
                      7FEB4495E06F7CFD36778DF270B2D3569266B1194E346D69C864BE7012FCF217
                      FB8C9E1241E80C8DBA95EA304216D8C94CD23523517092409894F0AEEA1F7C0B
                      D91215362BB14E0B0B17827071E5BA1593E77EFB8DBF2D82F2F261D188E96233
                      0B9B1245F5836A132B4A3774F6FBCCF339AF15351E3537AEDD560150EB9D08A9
                      B752F5BE784541832FC062D3A055E831B101F234670837D3AFFDC3CD2CEC68BD
                      2451222B9F4C3FE12E9FC9E6F01E5E595F7EF9E5638E390624B9DF0F63E29C87
                      DDFD904728A371DDC5BFE5E5E579B429F91D3B6060126D77E266591772C92597
                      FCFAD7BFCE59A37EFBD3C0CEA6B4F9BB156FC041426074D8B06139EF21C041EB
                      E84016D4FEA59CEB7ABFD38E1D3BC8918E7B21DBEF6D97A63CC306DBF9B9E79E
                      5BB66CD94A3FE148C32B583C049A353535071F7CF0A9A79E3A63C60CB9FD9B9B
                      9BD9B6B8A7D40F3B0D86BFD08D7A0B1C87DCAA94434FAE0B72AAABAB5BB870E1
                      E2C58B57AC5881126CDBB66D88831185633E871E7AE86F7EF39B9E1E1CE05064
                      45B87C5106CDE00F39BC92FD96CECECE7BEFBDF7AEBBEE5AB76EDD59679DF5A7
                      3FFD09B26C70FB2A1F642176FBEDB75F7DF5D5F8017BFC9A6BAE99356B56E0E6
                      9CDB6CE8BB0C2CE441EC9DAD5BB7E2B05CB3664D6D6D2DCA6AAC293E58555535
                      D24F383867CE9C79F2C927E77C9CF4D6FDDB8707EC7C0A4F7C76C702904F2702
                      E63A9C5E7AE9A5679F7D76D5AA55EBD7AF6F6C6CC4E1878F8F1B370EEFBFFCF2
                      CBCF3DF7DC9C2AE7BEF6721F70B32A4827BA0093AA390236891B745B13BA67DD
                      02C315BE7A467C240C3FE8B4139F7BE665183F6E723A9DF11C2CA8EE8AE5192C
                      27A5190E785D0CC03E0A144A5E0456EDA6178B7BDB57351E341D9E7A7ADF92D8
                      8A12434D35BBA6AE5BF8B896120A4F37A6288E01297C3864F87CCDC259D0A76E
                      463CA7811106A3BC06B4235EFBC78ACB2E5FF1C1BF201A8392923223126D6ADF
                      168B2188D4D3B8D7514222FE9F03A616B232889A7D5F2BBFA704C0542CC11AA1
                      467CE690249656F1629E0FF34565FD6887AA924688A8BA11E1C30719E1ABE86A
                      0AF4A86F06498167E80682F08455EB08B68F78345A82C07647DD36C715E109AF
                      BDBEECEB5FDFBF6C94E6B5BED1529B091B60AAC2B0C252629E587F939E687C1F
                      B5BB16BE52F722B69386908BBD6385219184AA3167CCFFC1D3DFBF05860D2F8A
                      98F8ABE73A1AAE98584BDBB588D5A01B377BA4F8773DB10B0FEBD1DA8DC91834
                      3EFF72CD21336C48A63BDB1B0D4FE06D326EF6FCBD5397F3A3AB0DE1E6C1C2CD
                      20893CFA807F71CE3344269D50341A25EB34F085F255575D3570756920077669
                      A2ED3E7E08AC371B376E7CE79D77708D4109B57DFBF6FC99E3A03AEEB8E35016
                      7FEB5BDFE215823D96E810264056FDEFA26FE60711C1FCF18F7FC40F9833E62F
                      FFD4D79D00DDCFC7E8B2BD3BA7279F7C125FF4D7BFFEF5DD77DFED35C3B163C7
                      62F1BEF18D6F4C9A3489AEE474AEDFA529006202AFC68A3CFEF8E358A3F7DE7B
                      2F4F26FBEFBF3F62CDCF7FFEF3679C71867C5DB6A1DF3D648B8CF3101D565454
                      F0F55B6EB905C5C2860D1B0ACFEAD24B2FBDF6DA6B89818E9A85A8D973DEDC0F
                      DC8CD8083394992E7A1D903C741153623549E271C3E2808CC562B2C9D60F7FF8
                      43DC315234EC3C890776E03A95A44F4416F24E89B5FE017FDC3C38128B8A05C6
                      51F7E69B6FCAD72B2B2BEBEBEB2197EF1AF47D0AD3FD28F4FEE77FFE2770C3D7
                      BEF6B533CF3CF3B4D34E932FD24B03CD5278CAB98E60C22DC1CF7EF63344907D
                      CA0DD3B469D36EB8E186F3CE3B8FAF0CD0E3997608D8D138A8C85239FF6629A0
                      329091B76C4D44E9B5D75EBBFEFAEB5F7FFDF5FC6538E9A493B0DF49C33DC075
                      A7CFB8D9F39DD3845584877852F0C725B54C4807238D605A4D26DC48F57E1BD7
                      862FB868F19B4BA1AC6464C5F0B2E6E6264477A0BAE1B060417605EE12F6C93E
                      9383E713A26936A89DA188A136346F6C3BF168F8DB2B5F741A1FD73A01A1A4D0
                      F1E2FB0D71BBEAAA9EE6867CB0E7750A986EF9DE858606A1B212755835C0417F
                      FDF3130FDE9F7CF535E8B4209186D28AF2A292B2CDDB36950F37AC4CC2744D4D
                      0F79B62E70A7130204CD886285EE56FC5354CF16ED8195532D35AC816392DB84
                      6BB808FA55CB561D4FD5C0B3345CD89C94676510B22A822B23A6AA88EF7B1FEF
                      42FC09C389A41ECAA00C6A6FF53A537659511542CF8EC6542ABD19AB73D021F0
                      95F3E16B5FDD2F527610B81FB6AC7C3F128394155174453512820FC3C59D8B29
                      62897BAEA1E9A944BB161151FDD2AA08A9386A9FD31EBAF72F17CF81AA516586
                      EAA612E2ADA62E4AE8EF1A7DC4ACF81477049D3D9F5F0EB029C29D5BCCD2D896
                      2BAE81D9B32784F5D6545BA38EB81A77262E453B71688B2206CC106E1E547D33
                      7DB8F0C20B1F7DF451F035CD445F4539D39D880F1209EC4E0123962D5B065218
                      2DBA67509488644A2467852F7DE8A1871E7CF0C1254B96B0879F9C38264B9E54
                      5E5E8E4061DEBC79F49570F9E07AC6EC4EDC4C0A8FDFFFFEF7E79F7F3E5FFCF6
                      B7BFFDF39FFF9CBFF669D1251CC08FC88AA8471E7904372AB85DD9B66D5BBF1B
                      07576B6C7C3A351E5CCAAD026BC7EDB075EBD6F9F3E7FFF9CF7FEE5F75A64C99
                      82BD7CE79D77B2A92565BEDB94E8586CA6BFC00180D064F1E2C5053E2B0B0D4A
                      37DE7823E63667CE9CEC9F723ED8571E3AA22B21FB28965DB2036260F2DE74D3
                      4D5824B96169A8CBCAD1DB6EBB0D11216E9B737A3162517174E16464F7E53CB8
                      F999679E2110C96CF4798409FD74F5D557FFE8473F025FFA15625A8D3B9CFBEF
                      BF7FE1C2852B57AE6C6E6ECED35090C521D86FDC5C575777ECB1C7AE5AB52A67
                      A76399F7D9679F638E39E6CB5FFE329D190E62C2AD35E2487A7576222B2316E3
                      795A1BE7D7AC59B3709B316EDC38E8A631E99F771DAD9E246C71D8545555F574
                      27B715A96F022658327CC74987C3002B9BE7BDF2F12C0EFEFBEEBB6F4FE1661F
                      A7FAE1F214D774144F0D3B89945B1C86640744CAC310DEF7E107D6CFFB71D396
                      1D50543CC66F2BAC7C461854E8884715D5B63CD563D0ECE366D7F10C4F2DB3DD
                      6D2D0D4D575C0CB73F707AFBBF161695973ACD2D5AD847663E4FB36D6107089B
                      661311AF03B162D08A5508D5008CF3DAB4279FDAFCF28BB5AFBCDCFEAFCDA246
                      1515E1619563EBEA6A13994C4545A59DEAC0B72BAE4FD0EC993A369FA28BB082
                      AA6FA3ACDB8A67FBC62678318AF81C01BA9D4919AE1DD523BA1B4B7A99B4D6EC
                      0A65B98AB07774F1C4DA6D1FA615F8F6E587BCFFB6FBDC4BEF8F1F3332E508A6
                      37B97D73F7872214EE862DFC0B3D3DE1A89687D517D71117271BB6B560166526
                      CC3C024E3FB5FA84E3478D3FC8F0A1E77AA7B9AE6E8740B1210D940CA2778845
                      8BC049627922C5B8771161FDEA9ABC119F9AF2FECB9BFFFBCAC4B295306644CC
                      CAA899B4EAEB9B15D7A73213885918CCA8D0A53BC65EC48D3BE02E404D1483BD
                      79E651F0A7278E56CC8F9BB76D8DEBBE2721369AABBB4AC6F61453152A68BC17
                      867073BF7033CB02599A802FEFCE39E71CE806CDD04DD5CC0102A1FBD4A25790
                      5A78A2E5305024FA0905DC638F3DB668D1A2F7DE7B6FDDBA758107F97894F5A3
                      CCE740AB3266950DB20F3CF0C0A38E3AEA97BFFC255F219B6C7AEF00FDBA7629
                      6EC62E206714069DF8A27DF7DD17A4251FD3C9279FFCAB5FFD0A17457EB05755
                      0DDD106051C5F4D4534F3DFBECB32FBFFCF2DAB56BB39FC23AD2E0A176C622E1
                      D8A3B357CC8DBC6A6814712A2E2EFEC217BE80E01EF75DE09B079495950DD0C2
                      4126A6856E4B4D5A93889C98DE4237BFF1C61B3FF9C94FDE7FFFFD4D9B3605F2
                      D184C37417CD2AF51ACFAF9C26BF5897E38F3FFEAB5FFDEAA9A79E4A57D80E52
                      3E876572867EEC8E1829F207D94DEAE9A79FFECD6F7E83B08FEFCFE90FCAB6FB
                      F4970F2230431EA2DC023937A594FAE717C85FC9A3EB84134E78E18517F2D7BA
                      A6A666C3860DEC6F477E999C15426ADCF02C5FBE3C5072D94B95E93BA09BBB9A
                      4A4ECD28ABB471E23CF1C413E79E7B6E9FFAE5E28B2F7EE0810720AFFD12CAAB
                      175F7C71E3C68DF877F3E6CDB855CBBEA7A4A4042506799560A93EFCF0439ACE
                      B0F386213FC906DD2307ABA2D9C4C29CA11B8E431C8D81C7B1410E3EF8E0F1E3
                      C71F71C411871D76188A2FD9179335ACD0832F2F3529BBB5E098FCC52F7EF1CA
                      2BAF046E23E1C01DC16312A42D81EC64CC1E9F207054C589279E78F3CD376321
                      6167BB1AD6FDF76AFD2C5B03EED8B1433EA8E92961039E7DF6D9DCC8F82E86EC
                      38F2B1A658CDDADA5ABE9FD7239952909E22E18C3BBD4B2FBD7477DB377F829B
                      057199503B836BDA223A602663434908DA9BA1689809238EBAF1AAD77F7577DA
                      35C1088F0EA98EA0777605DFAF1FB15A5834FBF1B1956ED02CA25963658D58C5
                      F64DEF4F9F00B7FD70DFE32F88B4AE581CD3CD4C67265A06698AA7AD811936C1
                      8C40240A7A1CDC22F0CC444BE3FA6D8DABFED5FAE622E7E93FC1BA3A08833EBC
                      624A2462B4673A5C3B694415C484B47EF88A64018D11312B7EC515D51136108A
                      E07D737C30EF21FC74C3C25CC34B4442A6E1D84E129C94A6460CA528656B56AA
                      DD1A3D7CD88A951B4B00BE3F7FD461871FFEFDABDE7F7BC986F1D5A371D5829D
                      014D0FB8D9D36CD3F77704CF6871B091554159212C204428C2A8A91A3B3637B5
                      79AD78C3F147C317BEA84E9B12AD19111A3769980888022D42B79CD120A38393
                      F6128D82D82591741D0847D4B636B76A5A5967DD886FFD30F5E0C3EB4755EBAE
                      ADA94AD87550EC2AA611B5AD2EA7CC6EDCEC8F22501256B2BCA42CDD613535D4
                      8F1C09EB3E3E078CB7776CD852EADB910B6B7445F377058AA10817CD8CA30DE1
                      E67EE066764966C04164CC4B972EFDCC673E43E08C90106997591FC0F21745C6
                      E9A79F3E8855C3D941F40B7C059710846B7FF8C31F1034F345944AB8D21020A6
                      47E83A431C26CEE4441C9CB85A949696A2B465BB8E59B366611B4E9E3C990B30
                      289AC25D819B09FCC9AF20977FEC685C65D7AF5F4F5C4EC46BCB8474AFBEFAEA
                      E1871F5E78C9E562E062B06CD9B2050B166047CBF7D0C24CD63B0180C5439110
                      0CB91C51C2C25B7EE22BB868CD9F3FFFEB5FFF3A7D6558D03FD79F9C5B1DD952
                      8596A86DDBB6DD77DF7D37DD7413DF43048BD8BC0CEE197B650F242C18590860
                      DDB1C0F2BEF18E3BEE38F6D8630F39E410F97EF233A3B5B37F9B311A93723EDC
                      50388CEFBFFFFE6BAFBD96EE24584953353B9F9C67E834E5B1536876D3C638FF
                      A14D3F70333BFC41F780279BA2F2F2724251C44840C174F04A5555555D5D1DDE
                      7CEFBDF77EE31BDFC047B0903C24708770DD75D7D1F481EED1C874B9F2D11943
                      13FA80E38D267E608011DA7BF3CD37511A6023138307033B594D0012AAC386E2
                      531DF910831C97A95438D2E6CD9B877039D026381788661B13DE4F2DC9F1A4AE
                      BCF24ADCD48124EA59A7D0EBBC90113C8D93ABAFBEFAF6DB6F0749FE506B1B7E
                      2297BBC0C609BA5D56887D8B0E9D64774C662F21452C5E9731FD0D37DCC0A779
                      E06F2CF17EECC43C87187262BF5B6E2B22A9A0E9897D74CD35D7D01E952ACB82
                      B110FBA8005AA50F3C0E79E38D45C521D1D0D0406F7CFDF5D731735204D08388
                      B97FFCE31F533751C2494A9907C62174470AE3FEC5E5EC4B5FFAD21EC2CDFEE8
                      45204531E344D03F5DD8FF865448B441B43C0295679C79CC1F9E7E15468DD26D
                      6FB8A6D83E371D9D370BBE333F2EB61FAB1B5C1BBA88DB840BA5E3D536355C74
                      363C78FFF9107F1B600BA4E342D5996EF1C34F978112050DE17218DA9DF644A9
                      671EF8CFA58D4F3DF18FA7FFD2B0B5999A09CACBC2C94C3A1E2F33B4B0954C3B
                      192DA2471137E35AEFE89A8856AD667CEA685B7715DFDC036C1C9F9EEDA98A23
                      3825043F8780B5A29A1955B135BB1351ACE296299ADAE135253399D2C82825DD
                      BCA5B1F9B307C18BEFDDFEE8FFCE9B7B51BBEA8D2D1E6E5B9EE5B99EBC04F6B0
                      2A0B69A67BA6888AA2F8D4CA826C0F47675AF80BBA45AEA787C291B0A96E6F5E
                      DBD8D8F5CC178F81334E9A76CC71538BCB339AD66186939AD9E93ADBD5880511
                      4568FB7176854A7114839B86C8A97F79BAEAF433EF1A5DADA5924A3854ACA9A1
                      F6F6443C1E2532E9407C169C861DA9E488E19599647BEDD6462C4A5BFD0545C3
                      16B56D5E1F56BAFB1A544F5087B886EABB08783A20FC1FC2CD7EEAAB9D06497C
                      99FE024118023E36CF900904E407BFF7BDEFA1E01844AAE60005C7962D5B7081
                      BCE4924BF84AD84FF8C69E986529C9EB2559A43156932B22AB66115C1E75D451
                      F49968F907686AB2EBF4CD747F6363237BDD9D72CA297FFDEB5FE51A613E4453
                      4A5F71E1BCF5D65BE92B2E303D496A52ED90B6B5ADADED95575EF9EE77BFBB66
                      CD1ABE019FC566A105128B21373273D281144E9212ADBBB43CF3151C335818C2
                      DC088C101EF1FDB4F8F58F848B97762C246DA238D4022DA82FBEF8E271C71D47
                      37530030F2A9E7E141C14DB23703C456CE7A324ED4E608B688D71C5F8763E9C8
                      238F04691B4089A66D3FB6048181C1D9D6D7D7E3FE963AA8ACAC0CF784D8057C
                      405478626A3032D694F9C2F2DC0F7DB4D30844F42033307632CE7E1DE94411BA
                      2180E3C1808D8C02016107F8B3091FE13D7C1E030CBE88CDF5DA6BAF410FB8F9
                      EF7FFFFB89279E985FD71E680406B8813EE2FC712B8572924A4BBD4FCD1BA82C
                      E526BF9ACACC6ED63963B8E64C01553A261C8D8B162DA2E60ABC8513515590BF
                      01098D850B179E76DA697CA22587330C44BC93D12A5E1F3B762C8A6EFA8AF7E0
                      237C4AD38FC1093DD86FFCFEF7BF27A3677A3B016B12328540672E3F8D2B96D2
                      8171C85F71E0959494F038948F2688AD9218B87B2AADBC35C5F644718D9DB207
                      70B3EDE366616C81E852681E35DF8DCED1105A3A6E7B071455C5A1ECDCC9231F
                      58530763C70D4BD91ACA2DF106D58F2EE66A8EB08F16F0147312FCC73E9F86AF
                      FB84D258D1BA75EBBF727EF8969BCE51BD0F2AAA8B402B0313476D33585EB201
                      36AE6B58F7F1E6356B3ADEFF003EDE006F7EE83731404914074689A74754C3D5
                      234A34AA36EDA84D74D8C5D17818E2765244DAD6C2A6B0EA55B003841DB3E005
                      C1970A35B61F7F50F17CBA0C220CC13615A1FF04B35CA633048978240A6EBC23
                      63A52185B3B03254B362C3D283C6C0EB6F5E1CAB31AFBCF2DE05BF00333C3E5A
                      9C723C9FF5B977DCEC9B87BBC424276C5E342F096ADA13610BF50C0E45359A16
                      01BB6D2DE285A321DC2A74B6EC80D616B2CCC22DDE319F86238F824993A0B454
                      DDFFE07DCA8A421AAED708A41C132C68DDB6A564CC71F73D9C993DFBB735E343
                      56C6C00D8A69C41037A39C222E1E89BF9926094E514FD5BC88A9B5346D6FEE80
                      0FDFF9FCF4E9CBAD8E8D5E8278A3554F906FEB2E589AF0901441B8B10D877033
                      FD5A386E667E1F59D09C79E699A45C44798D525BA6DC22E840400197BD871F7E
                      7857D4AEB6B676E4C8911CEF97136141B6B8E065807E65523C369893DB847C0A
                      B1A6B250235387442241B73DF6D863B27DF000D3AEC0CDBC76CA6ACBDB6EBBED
                      BAEBAE836E472ECA9C5FCAA8E2FAEBAF270D50FEB7B0A3644D4D0D29FCB8F131
                      2BB26887EE65802368C8EB04AFCAE43FCEF01ABAB553DC410452691DFDEC673F
                      8B8896AB3640AAA940B065FEF5FFFDBFFFF7AB5FFD0A7A58DBE4ED16482A6779
                      0F200F2799A98DCDFD295D7AE9A5E486C5C13E688A0DC45F105B069B851F9737
                      00FD8323F9D3A0E3664ED426175C70C1EF7EF73BD9E833903F55AAA2A262EBD6
                      AD24EE5E7FFD75DEDC52EAE971EA38C2316CDF22F74B608091C2F285175E38E1
                      84130A7190E074F9E597FFE217BF809D475A60D4911A827756D06DD74BB7611B
                      06A6157D5EBF7EFDB871E3982553567BF74A16C93A60BCB87CF9F259B366A124
                      9737D56C80947D9C42092521CA43C8E5AB0D3B433DD91A6AC99225871E7A28FF
                      847BB9800D774EFD4B8109CB8F2FC206618FD5EF7CE73B3FFBD9CFB83773C65F
                      94935C177A84233AE51C48B2E5FDFDF7DFFFD5AF7E953EE3E60AB758D03DFEE5
                      0126277A1729B06930936C9C3871E2F3CF3F3F61C284DD8D9B75DFB6C2D2BB70
                      B327D8E3843759C67111DCAA9E5074C686C761D86763CA421C9213278D69EFCC
                      8063812032A3C187EFF2744FE874BBD88315DB1555705CD01D25DCD6DA64273A
                      CA8AA1BD0D02AA2DAD3B444738242C14D21654948AE671DC980AA6A2463D108E
                      79214369696E0847A2E27C0941AC238AA82BAEB027513CDBDFEA500FFA541E82
                      50CE3759307CA5AA5F2B35A32869BC6C59BA69E8513DED5AE9CEA42879A83452
                      142B59B562FDF40AB8711E7C71CE9100632FFBFAEF163C00A5E5E3CC50C27544
                      738A6EEBBD573C57903D6B3EEBB3A5418728BF17023BAE6845B8F6594A732AD3
                      6C7B29CDD45DAF3865D98ADB844305CBAA89551FDA7D9D5D593934377DD244D8
                      AA2155103DE3A81C3136B26963B27A6C69C88836D4B74463D1743A138B94584E
                      52B2D0D0FD182E3E17A6A635B7358EAE18B97DFBFAB624FCEFFD879C797AB309
                      EB124D62F3E22A82DC5A58B3B882C85BF38670733F71336B26C87010AFE04A86
                      EB1974A31FDE25939D193F8873FE8D37DE40741B70E41F94AAB18E10F7F728EE
                      210B94C8294016418D801296F4880435B871381FD9BC4F5EAB162D5A3473E64C
                      FCB069D3268A9AD6EFB42B7033DFC08FAC5CB972FAF4E920613E7A1DBD88AB36
                      6AD4287CD7B061C302961ED989759988B36FBDF5563906213520995A669FEAB2
                      412DAB00E590B3749D9B22E00F448921080CD84E836B4147FF5480830F3EF8FD
                      F7DFE79BA99074004DD09FA176A05E44E64027D154FD40C9733233225AFAF043
                      A150C1351EDB8D4E30FACA7BCD8914A23C009E7AEAA9B3CE3A2B700FC586E033
                      F47EA4FCEE80D9B70D04377FF9CB5FFEC31FFE801888A624C10BD67953EC40BA
                      1F2B7BC619672092FBFDEF7F4F57F2C4329413DFC6FD72E79D775E76D9659035
                      C0E8D0ECE5975FC6FD1BED1BE9ED79E623151873C33C21978D1033409F77DE79
                      72FB648BD3C0751A248F3EFA288AE23E59C3CBDCED84D530ABB973E7DE7DF7DD
                      90A552950F1602D4F8E023609C2F74513E0694D924E858868E62F0EB430F3D74
                      F1C517E71C4BD8DD6C4DD7A76D09434F793CC8121577C2B2834A21F6DFD9CD0E
                      BED2411E87F208A455834C35200BE6F276280FFF4C40381F76D86138D2689182
                      DD899B858A98E2F62162B685B654B74D475098E1B801E22933CA8B1B764C1A3F
                      71492798E3C68FEA4CB6A9BE03A1702DF3633B0BBA33D757368B772B886A85A7
                      9EF03A53119A8E1859D3B0B6AEB97547C830D216CAC432D04282B758D5236EC8
                      01C4BD8A12D3B588E6AAC9887027B411871B9190E269969DB1D296ED74AA9E13
                      2F2A8EEA66DA4E3A961316CE8888523396AA0B7D7317039EAF70551DDF0B9048
                      A94D9F45C316E55593F8733A1389454DDD6EEF4C772AAA198A856D5BD95EDFA0
                      D9F0BD4B47CCFB9F1A687B178ABF74EA517F787D09E8E1AAB0D91587A9B05EF1
                      7C426CF0792D1CA16C064DB763E019A0C7DA5A9B416F2B2D8D386ABABD3DA1B8
                      91E2D2D29423C04DA653A05423ECDAE9140E1DA12737C28EE5BB6B2A21F0DAC3
                      7A99ED646CAF13B1F1B0729CC3662414432454525AEEDAB8F6A70D53F1BB9C3C
                      02FDD670C59E216218ED1D6DC3468CDFB87699EDC0BC6B2BAEBDBA0A943589FA
                      4C48355DCD72544175A7F9AC819A0B160CD969F4D34E43DEA3532464907040B6
                      812065CE34673048D13A38C932FAD9679FFDFCE73F2FDBCB42B7AD24070C2395
                      09599EF594276648D848966B04A7B0A6E48EC3821811737575F5C02BB2EBEC34
                      64EC1B98DDF2BB64FD1639E6436FE415B207929C39195A04567A2C332E15D4F8
                      D956CE9C88F69BEC38E98ABC51C18A107D1B7DFDF39FFF7CE699670EBCF1C15F
                      D4C9969DBE1E70C001D4DAAC75E3D09201E3F84214B784A4F14E421E8139C2BD
                      C0113429B1CF655FB7048C0668843CFFFCF3279D741237206F290B3430C893D8
                      AB2C3F2A1DA07DB38C9B73EAF9289116131BB9B2B212E1116EE4C0174D14F99C
                      6C737BDA4E07CAC9ADF4C20B2F90923E276E1E2C7D33C56EE47BB8BF02C702B4
                      2523527C6A1C79D3821301A703EC4C7D5D381F0EDFC9239FDF2E4BA1FC5D467E
                      B472C03CD9664F26427EE9A59770ADA1CFAC95A08D1C2151F6F60E1C4F159E64
                      9771FC802D4C9C8332E90A1440301F608EA2BF394F6C781DA4848B11DE439A66
                      90042C3FCB4EC0398D7038C3D34F3F9D4E74F790BE59134A47DD119F0DDBB454
                      1B5752C7F54C84CE9A0A25C5AFBE983AFBFC546BE7C831E3A2C94CA76283A27A
                      AA8258C1D1C48A1B72107DB9BA8D792B8EE7B340BB6A4651DD96C6C488CA52AF
                      BDD4E7114ED99A9DD1938AA17A56C6B0BD886378F8CF0B673CA75D4F5A9E53AE
                      471CC7CD64D24EC6C277440CDDD48A84A35D38D4D6DE6EA5334A4804F0F310D9
                      3B9E26483BA80621F141B8038AB8D908DC11D1E3E378D1436020EC465C05AF0B
                      E38D98677B26B429626F17B6558495465BCBDAFFFA0A2CF8C5E762D115D0B01D
                      C69C7FCC818FBEBA0CA61FB05F635DBDB0FBF0BA5C5FA959FDA6F5B2489D15DF
                      36C367C950928E2262660B13084DF57BDF8AC52290B15BDBDB237ABC14575C0B
                      EA1AB72B21235E52A2DA86954E2286D14D4FD75435A4661CCBD0B5B4ED85F570
                      2299091B58917446A0B188AA683B1A9B34C55054231C16478D2DCD3B6245E16E
                      DCECF98A67CF571F7B612D84C8DC8C55EDD8BE2A9DEE38EF6CF89FBB26C7CA9A
                      3BD6B486C4B6C2F554CBA1882B9640CFA2C5867073DF7133B9BF709CDBF1E3C7
                      33E72BCA56CC41F6B9A643794CE4A903DD1C080309511648D971C5E8ABBC90B3
                      A142CE1C8AFD844F9127CAFAF5EB656948029790534FCB06838001F2A3ED0ADC
                      4C80838F6E4F3BED34A65090E53EAD5B8C48FEF4A73F9D75D65985072E61D209
                      1A0FB2768A627763CE8CC8E584778E1A35AAA4A4047F45A4823B64A2A1E5C498
                      150B80CD226F63B83B366FDE3C66CC985EF5E23D253E3596BDE699BA811742F9
                      C0810D903813BC6DDCB871D3A74FC7B59954EC5817ACD4C68D1B972F5F9EBDBE
                      F28A8E77E2238D8D8D9CFF51471DF5EAABAF72B3F7297AB39CD87C936C7061E7
                      4981AFC386A5062CD06623105258EEE55E73E81F9F068FC080BE9986815C0022
                      9728B065B2770BF224A272F25CD8B265CBE8D1A3A107FB66327D217D331D5E65
                      6725E78F57D854207BF2CA3639E79E7BEE134F3C415A4CDAF617B2437BFBEDB7
                      0F3FFC70CA4766B4E8494A3031B6DCB9582F9C4DD802447743C855167DE41A48
                      8F139BC705175C400CA432B09359D802AF609B3A028E3DC1712A7FC0D5444E3D
                      E1691A902C48B9C7478C1841B664CF3EFBEC29A79C02BDE99BF92DAC8861F7CD
                      80118BDA1D043EDBE00DFC6D1879807026B2423D7B1C7283506E73E7CEBDEBAE
                      BB60F7E366B66F1685236232510845D31DEC94B00E8A198278D5FDF76FBAEE26
                      A86BAE1C5313CBA43AC11FAEE05A0828353FB4A7C0CDBE9615FF087DB3EF0A09
                      6A261E535A7674EACEE8B292E1F58D1B63C3C39D561322334333DD74DAB40D53
                      8B6860643CB553D03D7B6E3213098575CDB31D5B15315510F1E20CC1BFAA6618
                      98B3F8A8D821D34C2336B6D2A61A125A71D770151F3522A2576DD5B58579064E
                      2A44B12E4F693F0FC56CEBE82C32DDA2D2585BAB5BB7636B511C8A63F0C28BFB
                      4FDD574F7CF45E345E06A34E9B39FDE1B757C284C9933A5B5B54C5C3854313BD
                      4231F944564253DF45BA4779AB14EA4FF39979B00C8ED0C91B42E72DEEC12B49
                      0BF71860C67584F8A14C22A3836B4643694F111101132EEE4FE211EC934C2AD5
                      A9984A3A9D291622AF2514C2F610071F2A2470D0E30E339148C7A2C59A6A5AB6
                      88E5565A52EAB896A23ADDB89993EE3338BB889B5D6D58C8E8686EDEFAE919F0
                      F08363478EB7DA566E374D4D3111E8656C1166451C16E8824A6F0837F753DFCC
                      82E6DA6BAF25225219E731CE60B1426E3AD0BDD20C2E4F2D931CF192C367EB04
                      86F8FC94122EBA0853264909711B0A356291C3E187A20D57CAC58B173FFFFCF3
                      AB57AF96CFDD88ED81284458934D372C58B060CE9C3903ACCB2ED237B332F8CE
                      3BEFBCFCF2CBA15B70D35F16EEAC8CB9E8A28B1E7CF041EEAF5E3739B22D015B
                      D0224CCFE98B3965CA148438882F274F9E8C4013F12E71955027E26ABA66CD9A
                      55AB56610F6256AC92910FA9E5AFD42FAC8CE9B72930159E2D887EF0831FDC72
                      CB2DDC2632766718C183EAC8238F9C3163066E48A64E9D3A72E4C840CEB5B5B5
                      D8A108C15F7BEDB57FFEF39F324E95F5BE943322891D3B7680EF944933AB1F11
                      3403FD8E6D825881B625449A41669DF44642637954C53CBA641E3AE8DE3FCB8C
                      0D84277ACA6A10ED34B8DD284FD6F5528D70F74B8486D06DDB430C2D5C366E07
                      90CCB402093B88ECEC212BC61BDF23EB9BFBA4B6673B0D7966C95CCE24217100
                      30E7494F8D49496EF67BEEB967F6ECD9CC6246D3218FC8E5F6611A4D9C7A646E
                      91ADD7673D48763EB85B1E3B762C74474127AF3B99BF520EF882CD7ED041072D
                      5DBA1476F6B4964D1DE426256CCD870F397726FC812726E5C0B83CA03B07C92B
                      340F0C954DB139D1D7006EE6C2075C9C415A1FE5FD365DEC69DBC0E393A6E775
                      D75D871289FA71E0A7B505E1E6B00DB6881108AEA7A9FEFD8608964D06CAF883
                      883F8220DA8C5440FC80ABAEFCC77D8F60DFC7CB871709CA33850656D7E0F6A3
                      9474933890B1040238829502CFF92C132EBE57309DB902A8AB9EEF4487D8D3D7
                      E46A8EE07E5604F8832EE3103F5034B91B0A8E0E1056248226DA8FEB4744D3A2
                      6B142FE4DB24A888F6404908AD29388A6BEA4EDCEBC2B58AA3A77CA38538BE43
                      4B2514DD8EC6C21D2D09431BDEDEF21142C27FFC63C2619FADEE58FFAAEE42B8
                      B41A62FB1F72E8B3EFAD809A09933B5AEA55D00D25A2B88AA1A611656A7AA7E3
                      212E2E575D8497FEFE000B2F62B724FCD7995E57D46A208DAFDF3C3EAA160341
                      D88B689E6FD4AD88A76DD0044B9E2280ABEED9966F80D45579E86E5D01FD95EE
                      302E3E5709B69DA3F1F6CA53EC009346D783FE2CB132A9B819C131B1797B73F5
                      98CC4B4F4D187FA0DAB4F2E35854188FBBAEED8A32F9BB2618D237F78E9BF911
                      D9F493E5EF1B6FBCF199CF7C06243144FE2501073B5CC6580F446B6DB67A6320
                      49CE8A040AA293238E3822FB4E4469B85AFFD77FFD179B8BF49A108D7DE73BDF
                      C90E58257B7510D6C137BEF5D65B03ACCB407033774D36030335D1A38F3E7AE1
                      851742D7699247E11B65A2404AE79E7BEEE38F3F4E9F2993FC9D45059035B539
                      6F468471F2C92723EEC936B1ED29217ABEE28A2B88F4436E0AF057745A726851
                      41E4FDBBDFFD0EF3E785B0F075856A47B9510392C52AECAC85659429AF70A347
                      8F46708323AAC0776121AFBCF24AD97512247B005EE6A916B86DA06204186372
                      B63FB398F1C0E0014027003C8A7A6290901303A69ECC6AF936A29121E0C5883C
                      E7CDBB0E37F76A609DAD74E4A6E60207A018FE442483725B0554E074BE411BC5
                      428CA7D9649F3885E8A23C4FF933F5F8871F7E4892AA1050CE048E089A113AD3
                      C59E5C5DB3130904F24E39FBECB3C9D823A7F1894C2DC7DE2C9C4360EE07ACF3
                      193A7324C2C02BE82BE7C9273085B806B2171D3E95F3688B13674B60147606C7
                      32DB74F6E2C2E5044943248FC3C0A69A679C7C3CC5F38B1A936650B6469FEEA7
                      D1FEE0830F5E74D145038C7AF8493B17889B1D3F56868F3E355F51EAD3B7219C
                      5684710196166F88165742F898B9731F7FF48F88B02325E5C58EBD1317634F65
                      088C40DFEB10BA51B5FC830C12733165763DE665DD20F0A8E6FA04DD02955A1E
                      C23A1541B350F4226E1646CF221060DA111E8A9AE2C6440C12355D1A8F6EABAB
                      8BC6225E22B4AD63CB5DB7C2DCEFD4407B8BD3D6A6454C88D5EC681F79D0E1AF
                      6FA985D1D553AC5483A618E22D3854BC564FBC28219C12953257BCBA1B9CAB96
                      02A9EEE2E952E5B21BC4E31F94E03D3D358297EBBA97F7119110106B8697B133
                      3171835AD7118A1A754B5F9936F600AB61D5C7F128627CC3C1D12C7835BAB31B
                      C2CD05E89BF12BB96F4337F52FC9F4B56BD71E79E49174A42E2B0C64B84C6752
                      882619C516CE27DAA7C4AC768C1D65F1BDEFBEFBFEF297BF64433A4E54663A52
                      27818E57F0AF0C3E28B1F611B2CE0DE52ADF77DF7DD8B603D9120C5CDFCC8622
                      6C59C8314170DBB071E346D22A0554324477458CCEB81D62C65FAA4B20726F76
                      0ADC269B82545656224A40B098FD140D2D52E0E107FC8AED8F038CD63FDE9EB1
                      F68B937C22CF47F6089A9F7BEE39E8FB396620F6C1B66DDBE8501E76F67385EE
                      D58EBBE6DA6BAFBDEDB6DBE84E229CCA993F116860A9F82CF8FBDFFFFEFCF9F3
                      E5C2135C202E3FA2E6A53B57AE5C3975EA54E84DEB9C1DB693A7D8DD77DF3D77
                      EE5C992FA52794C9B6BFD9DAB2FC890B9F1FDBED29DCCC05E3915F200C25A664
                      146ED8473262EE376E66F0D7136E9655BF74E5924B2E59B060013D4B389E823C
                      CB7E235C60B22538F4D04339827DE1CCDF7231486FCABBEBEC9BA907392E0CF8
                      56BC7FF9CB5FE4F03AB250E228DCE40CF3C8238F7CE52B5F815CB81CAFE00DD4
                      D764924E7C6DBCBE0C3C055E4A35ED098FF64478920737D30D01F66E7E8AB980
                      B8D7B28722F1FAF1768E183CFEFEF7BF1F7FFCF1441B35088DD077DCAC6B42EB
                      888552FCE8255DB819BFC72A46827AD897BEB470E10BD822459178C4753C186C
                      1FA67E2531D9751F1CDB6AC62703517CCEE290084102B61F70C4F38D2C84E509
                      226F4B171E70B88896178F4EB636B63627CE3E099E7C663A685B13ABDA35C70C
                      95BA101BBF615DF9F1A7BCB5B61EF6FDD48CED8DEB145555DCB0E23ABADAEE1B
                      4D9760F3A4A1DD6F633AFDCC80E2081DB3A77FE296B717245744A0D16CC50AD9
                      587FBBD58EB535D56E583A61EC0166C3AA553E6ED61D11F5C455793D1DC2CDBD
                      E1E63C10E4E8A38F7EEDB5D764CF3F5AF589019797901FFDE847575F7D35ECAC
                      78D815F184B9A8E45E337BF6EC175E78E1E73FFF794F1E6301744B129F211419
                      EDC927FEAFBEFA2A8793952B280BBE4993267DF4D147D0DBC15F9E3470DC1C88
                      70C126BF93274F5EB3660D971C8B87D7693592DFC521C7E425BC57E30739B401
                      E6FCDE7BEF7DEB5BDF9A3973E68D37DE483CB29C18D6F3C903E402857CC84E5F
                      1B1A1A107FF3AF0CECB03A441448D626B486F5C3FE4F1E90886811D782B4BED2
                      A490037CE0451CFC74D8D2ABF1B18C485873CC6735C3860D6B6C6CE45041DCE3
                      C438CE002BFF56339B6A3060EB2F135AF5DA1A5453D98664F8F0E1C71E7B6C75
                      75353130E2EE6BD3A64DCB962D0B3C986D802EA73DA86F96C70C6BF8A0DB7515
                      BA99B6C95D953CB75818224CE168EABB1A37CB8384AE2F5EBCF8B0C30EA3EBB2
                      6E52D69153DDE59381C71F7F9C78820BD450049895A99C79BCF1485142A6F3A4
                      3765230DC89A80D9E13C518811694C7E67CA6C8B797C10A727C7D7E4F4D65B6F
                      FDFAD7BF4638CE57F2788E52221676BC870DA272C2BCC1C5CD20AD1D2818693F
                      46C75CB2BE995883D8FA997EA28032838545FB829B7DCA32C55535FF7EFFBC5F
                      11E4CD3E65462A0DC5A36AB06B8E3DFAD9B796416959A5A677C59CDE0B703322
                      3957B7C3A0A66DC556048D8609AEA9BA3E759B9AF1D4B4E1EA76D79D9892B6E1
                      B576BAB178890146C3C6DAE953E1AF4F9D5F33E5ADCEADEB63998895F6D4584A
                      8BEFF3DA6BD1F32F5EBEB505468F99DC91A8C51D26BE4718A5205A16E1418A5C
                      15343D2134DC10F5FC48E15806151127BEDA77BEDA4B703369B6155C89ADA400
                      BD5AF18EFA4D6B978C9D707051C3CA0FE3B121DCDC1FDC2C9F1B9222966EBEEE
                      BAEB48D3C6E229A0A3226533B335CB34F883AB69866ED013800E1C4F8BEE21C2
                      60AE26D9A2B129219DD0C9FE85AC5EC58A639BD0F447147EC5155740F7C11955
                      99F422A46D95A1DBEEC7CDB2AF3A350283E63973E670881079452114C8EB1376
                      3A69E5D9C9AF108F999CB61C728095ECFB41822C9C03EDB8E4386720A1D277DF
                      7D77C68C199C091B3BCACE3A44ACD157DC4CA001DB04D1C0DFFEF6B7934F3E59
                      FE35A072A6444E93FCB5BEBEBEAAAA2ACF2BE83C24A0D362F6464E5C1D796222
                      B8448859A0DD36F5021FBFFCEC673FBBF2CA2B030C62F9930C56102BE3FC1D33
                      664C9EAEC7BAE3AEE6A1871EA2007879D21EC4CD7C20866309BB922CC87B4D34
                      3B4E38E184E79F7F9EAEEC6ADCCCE73658489A83586BD9D595FDC964C606397F
                      1AFCE4A2E776076C2FC4759878D341222BEC95C5421EAEF27E4C36D972770E1A
                      8FE9965B6EF9C10F7E003D9B5E50B6D465DC71471E79E4934F3E997F96417718
                      81FCA059B630A6D1FEF1C71FEFB3CF3ED9458501E0E6408DC01F7BD8A7F80819
                      8863210B54A2D3D022CAA68150B9EFD4087DC3CD5D91028596F413DCEC9B1027
                      92503A7E1FF0A61DF4A967566D8061C347BBAAEDB985D869EC8E2478A3056E76
                      6C25ED5757945A50470B620D5B3069D8A5AEA28A382C8A05C676ECAC96B6C8A1
                      071FF0E66B2F0C8FC31F1E9FF8B993C7DB0D4BD2AD4D3153C78AE9452E44A6FC
                      EF1FEC2BAE59BBA31546564FCB645AB0655C10612D15BBD80217E78DADA63445
                      04DA13BC7D22AE4A46182BBB31C113EDEE2DCA66F0CBE1388A19D6DC44A781E3
                      CC2CAADDB271CDBB23271E5AD9B07259176E165C21CE273D39849B0BB0D3E0A7
                      7831467472F6D967832F745C3FDE1BC929D6669130C2CD318A601416ACCC2380
                      E276878F1ADC4493345BAC10DBAEEC8F42D765476F39E584BC2C01F8A78068E6
                      967CEEB9E7D8CAB61FD07920B89979B5B107495F8539E0A2CB644FD42FF2A22B
                      1B71DE78E38D14445A561EB3162ACF812FE3665965C509DF45310821CBD89155
                      2932860E640BDD747878C3E9A79FFE97BFFC857EA5C30D0A1FC06B368541E907
                      6EE652CD9E3DFBBEFBEEE3FE95E37541F7E670FEFCF9D75C730D64916AF59A68
                      F7484A4DDA8DFCFAD7BFBEF4D24BE5FD1E654823999EEAD549377B0050FE32E4
                      CA89FEB35365652505949E3973E6BC79F3B24D9B7A4A9B376FAEA9A9C99FFF9E
                      C2CD3D2935715F575E5E3E72E448EC14E2A9C00EC27CD6AF5F8F1F58D7CE2EA7
                      B0EB71B3BCB3E2198737DF71C71D1C9B9AE467CE766655F4C48913E5809DBDBA
                      9692182729CD4ED5F94D8A657DEA79E79DC724D9D9CA66399C0AF8EEC228E5F2
                      7419F597DC9E679C71066E327930DB7E22FE473AA591B7166CD99227C9D215FC
                      1D2C8E2BC8A5D6E9076E964B2E57B327343F79F264CC07F74864318835A2109E
                      AB56AD9299A928A24DBFA975828DDC37DC4C91027D674D5B605141C0AC8A9509
                      5A5AA07CC244500E9854F3647D07F6EE381B129839EC1DB8599458203AB03511
                      BE43F8CF09289DF681AB2DEAE69408EE64B117B03CA341756D4519DB5CFB510A
                      BC1F5F3FF27BF30ECC34FFD56B86900E9D09412A1D1A0E4A64BFDB7FBC79FE1D
                      AD191B468E9A9A6C6D0605D12382440498C355117030E52919DBA265C9112E7F
                      5EDA0F5218117A5B7F5AEDE956E94A1E783E6E0EA130D354CD89146FDBBC76F9
                      EBE5FBCD9AD0B072B18F9B0D072CE1003A849BFB8E9BE52940D192654E2E4EB2
                      A1736D6DED881123186DCB4C9CB4840F6EED64BE2A3254A015282007293C32DE
                      10C055BC4AC95A67AC26CA32CC016101D1333FFCF0C3175D7451A0B9E48A5F7C
                      F1C50F3CF0C01EC1CDEC0E28437CCC90D98839118066037490084F58C1CCA164
                      02F4CC3953C044981A19B322A5358772809DF92EE4CFEC9C47ADCA9D85B9C960
                      223BBC2DDE8C2DCFE8B91007F940A280EAD826B8C138FEF8E3E5E59C348E9415
                      1926921D27742BD469579013F77322741588AEB263C70E22E1A22862013B0D4A
                      8C0E972E5D7AC00107F45A0B3A0DE7173DF6D863ECB0C8342079EC3498591647
                      208E615CCE7918B0550C8D04CB4FD8B94D4D4DD8F83835F003B6467E2ABA3D6B
                      A7013E350A762896F694534E4108327AF4682C337E2001453D850543C1B56DDB
                      B6152B562C59B264F5EAD538DF716F4337EC6ADCCC9F65A9CBFB1FEAC46C2375
                      59EF4B476DB40DE06CF3E3E6C02CCBC34CCC892020C7005AB972E5942953485F
                      0B3BCB3DBA88B7D1A466F32499273E3B51FF52BD7011C11E819DB7F132D0075F
                      A743DB097A0BE2EC850B17E6E908126BF816B229C2F5EE99679E219674792E67
                      530A16829BE54330C81511106B3469D2A43163C61C78E081871C72C8A851A350
                      1457555531AF1FCA169C561B376E4429F1EEBBEF2E5FBE1CB3C23D368ED8C1F2
                      A7EF376E061125DBD1046EF6C00CA93B76B8C3274C02E3A0EACAC7DB33108ED6
                      A8A194271EEBFD9863D727C5B7C7B00413851306D7F4B5A68EF00EC4D209436D
                      CD276FF6845A58CDB86A4277D5687AC4C74D9B6EBC0A7E70C3FE9AB9B175436B
                      5148D088888D8211578A53604CBDEA3B1FDE75AFC0DD71AD24ECB99AEE392236
                      A2016AB100D05A93A73A865AE67B3AA6887E8E1B5E710B7238D82D495091E0F8
                      F471739BA11B29235ABF75C3DB7F0B1D7EE2BE0D2BDF1BC2CD30303E0DDEE67E
                      E94B5F22B205A662A033AF809C7DF2C92749274DB859464E50D8E97FE189562F
                      5E72721A4F93EE3080A1C9BE0DFC45425EBAC8F78B61624054D167324B65B9C9
                      F44C28DAB66CD91290BF85A701DA69F0BAC2B0ECA4934EE25366DAEA0482F981
                      7F80C86B18EF6AB8EB0BD903C8ACD5B2225F6E07DAC9F03134F4ACFEA7D1820F
                      F262CF0627E4DAC8838D3F307D5B3F70338F1984533277879C1871D26E3010A2
                      82B92CF2BF85AD5F08733327A37C42822B285EA7AE6474C874CE3D25D98993DA
                      0A5B63D6AC5908FBA030D0CC4AD9C30F3FFCEDB7DFA68B757575B89CF744C840
                      AFA3B94C06E814B1A22795F31EC4CDD3A74FC769F5CD6F7E13614AE16F94930C
                      6477A97DB34C86C31B4B793067F3BAC89F7946DC72CB2DD75D771DEC3C077326
                      B9005BB76E25B39C9C6A114E3496A81738D67D218262ECD8B19B366D2AA4C179
                      57FFD1471F21CAE400D720B93D40D6B064B7B93CC5C8D95338F15154925D4AC0
                      4D33E7BB0AB1D3C8367439EBACB34E3DF5D4F3CF3FBFDFCBDF60B906F50537FB
                      ADAD38326E4678690BDC1CD17734D8C3AB2743F48051657F4C220A3347990850
                      BDCCDE849B45B910370B9A6745F7EDFB701F9041C4EC033BD76779B335CF371F
                      B43BB7EF8023A6C0BDBF1B36F9E08AFAE5AB8697801601AF5D4480B114138A11
                      1C4CFAD6A5AB173CD2A534C6C16276C71141D0AC9B6084554D8F7A10553C13D4
                      0491F50955B79AF623B0404FEC16BB3DE118D05D078C900989A461280935DE50
                      BBEE95A7E1E8D30F6A58F57E179FC6106EEEBBBE5956343EF7DC73E49341EA55
                      F64409D8A2E176FFA9A79E02094E318EA19566B08CB4B22B48A401AC41940326
                      CBD591E31D72F1025444940319D19282875AAFBABA1A913133EEF1CE81D7F2FE
                      41374ABDE2E6FDF6DB6FF9F2E5D0835F60A0616FBEF96639261648CBAAECB2CD
                      71C2B3051D8BE95EED34F003AE73E405C806036C2F18B0CD906D1F09D231CB0A
                      71E5F2CD7462CB1BADDB6EBB8DD0006970A92EB83123AC097ED035C2A6FD4813
                      274E5CBB762DED88887B813868D90A05270E5971508D4811481D91678DA01AD1
                      96862B8205C6A7A8DD98F62B1BFF517FE56182E36143DB5A2C9508AD5A524251
                      33E9577977975389C87D346AD4289CB9E488C65B2F595BC9AE4B547226A2213B
                      8DFCCDBBA770338E199905993A94461A3B05062C25E8CC0A0B495899EE875DAC
                      6FA6DC785ECB32E7BBDFFDEE4F7FFA53C8220C862CFF33961B2C280A11B62CA8
                      172C5870C92597405EE3660E7343BCF8575C7105962D8FB8937FA20F151515B8
                      D12AA4D38F3DF6D8975E7A09B240B93CDD98A45CAEE665975D465142F2F40556
                      19270B69CDAFBFFEFA79F3E6C9AA87EC1AF555DFCC1F68B8061A93B7CD3CBAD8
                      F1833E13AB094D587AD1202A9B06013723283243D0D20AE5D55321FCA9EAE17F
                      6CCB40345EA3EA36E1E6C12AEB40AA49E1F17C9A6745D03C7B610701BD672822
                      C0B50B21CB4E7520680E69C54ED2F332658ABB2E95725F5FB4FFFE33CB5BB7BC
                      12F26B8D58500F871D576001474F6BA1B05E320A8C524828D002ABD7D5AFFCB8
                      A1A90996AC4CD635426712FEF581CF10AD9A1E2266D7B01543B1CBC0353CBD1D
                      105F629BAAF6DED13E0237DB968BB8D9B471A825BC5845FDD68FDF7CCEF8F4C9
                      FB36AC5A3A849B6100714F48A0239823A685ECC4FED728C21076B0DB4DE12C48
                      7B7F620479D55557FDE4273F819D03A5A24C64F335928FB27361E1ED50386E66
                      6606595E936CA5CFD8C5D8D1D07DA84A329A0FDC798DBFFDF6DBB1465C4716E2
                      7B55E2F56CF5EAD5C4CB46C6426C9ACC77720C30791DA5F6E7654F061CACE766
                      AB0699AF20C02CC13BA29C96DCFDAB977CB44D909D8DCED9861B7F5AB870E169
                      A79D4615C94905C30C30F4EBC5175FFCD0430F51A4650E24C189EB18407B0835
                      E6CE9D4B9F7B72180824DA2CB19E324FDA53B8F9DBDFFE36F92C0E24828CDC26
                      BB9A4F83931C9E9ADE48C0DA9542786427FE890551AFB5E61DEFE8D1A3993CA4
                      A724B38CE366E995575E193F7E7C1E54C790F7C9279F3CE79C73489B9EFF7C80
                      1DAF972D5B366DDAB442F87C023A7566E009EC2BF82B1FBFD0BB640A29322C41
                      B11990DBFDF30BE475A1B9B9994CE6F6023DECA0E89B7DFBE6D63628ABD917F4
                      A9D5954FB6A4A0B8749CA7257CBFC0BD011776253F6A888D2816BC886F9A2D50
                      B4A7B6596095C4E3CD4D8D45665969B478CBE6C6166BC7C2C7AA4E3BB30AD4C4
                      F6F51F97C510F7E9AA13C551DF9E6E16B13F34C53014DD54508C09430F0B9BA3
                      18E22312CD99F6A45655F3E92DDB9CF9B7BCFBC0BDEF550CD71CC544DCEC4258
                      71CA1D11623B056A5A71BCBD0837832EB4579A1A7105EB23C44AB76D5EB7E839
                      63E6C9D31A567F108F0CE1E6FEE066D6436CDEBC19B7FE6BD7AECD99B38C5D28
                      E23164994FEC6D295BC0E5D117CAFA0C5CECCF3FFF7C66C3E5A60BE06690A479
                      E18D50386ECE5EA86438F5CE3BEF9C71C61975757564A12B738A513E74FD861B
                      6EF8E10F7FC8AF1E148F93416FFF00A9EDA851A36A6B6BE548CBA493A62D0187
                      7397D75A46966CD002521C60EA1A763A640014D01BE1324C6CE5B2467C20897D
                      BCF0735959996CEE19204D836ED72B52F7526008BE995B462621993973E6CA95
                      2B037AAC6C3659FA405C7E471E7924BE82ECF86167DB8F3CB518C2CDBB1437F3
                      5314F81A768E2D953371E3E070C541DBAB7F02DE80721E3B1107CCF4E9D3E962
                      7E4A0AFC155B00DF3267CE9C5E9DF07826A2D824F7C1FC1E87744288D09F95CD
                      05266E16AA298F5BE6EF73B382924037F6C5DDF89B6FBE595E5E4EA5CDD929FD
                      C3CD7C0F6E89C9B8EBFF0E6EC6266A6B87B209D3C09B3276E4530DED30AC6282
                      A374905FE05E903C0479AEAAABAEA3095F3D84CC311734470429F42CB7D18C45
                      4D77584B4BFB88D2CABA2D1FB4B970C905CADD0F1C0BF64AAFC14E66DAA2459A
                      974EA4539A6D7BD17891E359B69BB23322DB8886E334298C33C211C773210E5A
                      D10430BEF8EA0BCBCF3EED4F9A168F44C3A2AD449C42FC1B76B0DF4568918CEA
                      ED459B0A9FD25AB711F909236F7022C5B59BD7BEF99CFEE993A737ACFA6048DF
                      0C038BB3FD95AF7CE591471EE9C9339DAF534C238A564D0A8C5D41D5BC2B52FE
                      73763A322394F3D1471F1D72C82108DA7869A12593E5E3962D5B287006134114
                      6EEE5CB87D33E366D921929134D901C3CE021D0B8CE567B345EE6599336E704F
                      0307A5FDDDEE7878D480FBEEBB2FB68FBC130049C7C688241B37E77C1DFFC41E
                      87E46007591C1414BE180A30182D3C71216FBAE926DAC0B079005B09F32495F7
                      636C36402C637CB24C8A492CEA37BFF94DD819A06413CACA34D838C088C58F7F
                      2D10650EE1E65D8D9BE9C87EEEDCB977DF7D37E4DAFF0412DB72F05BF25B1EB3
                      8F1D76076ECFE862FEEA70198889824D7A722656BE70017AE2360E644ECCCAB2
                      A0EBE97EF92BEBCEF9756C112E2F5ECC62C9B380592C037E8D03E4A1FBF7C7CD
                      39FC023FC1CD1D1D5032612A64264F9EB870C376A8AAAA7194D4DE869B118728
                      6A4AC32EB7632258B5A2586A4A0D756470336057699E0EE996BAB61D87EC0F2F
                      BE785E496C89BD7D4D2A2962760B73640362886074CDB2D26430ED2270B4428A
                      ED2A889B55F01C0815C1BAED30E1C0439FFADF2D5FB9B8AE3D0553AA27B42733
                      888BB0C17CFA1111F24401CF5515D573F632DC6CA4AD549121645012420D755B
                      DFF97BE8B0E3A774E3E6211EBABEE1669620B7DE7AEBF5D75F4FB7E5A40E25DC
                      BC60C1823973E604FB65F0E269EFD9C4C26EFBF6ED23468C908FEF03B879F1E2
                      C5E47EC4A8A8F005BB70DCCC99679FDD1389293F48BD13A05EC2D222F4C73C5B
                      5A5A98706317D99D0F3031B0A0C3D3A953A7AE5EBD9ADC867800931906265680
                      C91B809EA049B6E5257B23B1A6961DA468D1255396C1C2CD5C30E64CA041256B
                      C50205C8531DF24C4500C48ABD802FA08C00208B731D375A353535381EE2F178
                      E1E65543B879F7E89BC96C1DBA395EF2E883598BC174F205CE6B6CA85FFEF297
                      322752CEC4C306B132CAA2912347E6578E502B353737CBAEB4F9138D5B5A50B0
                      3044D056E0B3F83A1C2778FF91471EB968D122C8B566511564B98A17E5C3B79C
                      9EBE43B859DCBF939D86E6DB694C9C04C9C987CC78F6C38F714C547B5AC62B80
                      DD6677259C0A88E66C05922A688A530CAE815F2D23158AD8DB9BDACAA2E363BA
                      B376D3A65987C1AF1E1A71E0B46267FB471A2E941111ED2593004FE88C2183DF
                      1CD00D619AA28B3027862BF65D9E06AE95CC18A60E23AB3B1B8C134EFC68D1FB
                      F0A9A9A53B9A34C58D63AB8988279EED6A49071FB2E32E2E1E2891F7163B0D8A
                      61AE58AE5B620A2BDB36DB6C69ACF579E8C637AC5C3214F70406A06F261981EB
                      E2962D5B72E64C92FA8F7FFCE339E79CF3498F64C5FEDD4B922CDA02EED23DD5
                      8E7CB378D1C505099722361508E0E637DF7C13B12FEC62DCCCB83060BC4B4684
                      20B12810A5282D75DCE3F88A69D3A6C9AF1E38AAD815ED4FDA7AD2F783BFA01E
                      78E081CB962D23020DAE0E2312848C8F3DF618E4B26F0EE42C83120EAA926D20
                      C1BDCCC6CD3048435AB6B7C60F888FE518349C18C72C5FBE7CBFFDF673B32259
                      42964AFEB0C30EC3CD1B0503EA69543334A791866306E72FECACCC661BE83CB5
                      18C2CDBB073763C2218A0355DE0CF75A60BA870FBE72DE43CD827BD1A38E3A6A
                      FBF6ED54C13CF993D13C96814E60F22868654F80B7DE7A0B251BBBD8F65A72CC
                      0405E911471C5160D71039927C5646DB00C8859B394EB8EC7577DA69A7117B1D
                      FEC451B1B27B5FEECAFF5CDCECA9B627F8CB7CDC5C3D01DCE99F3BEE99B79742
                      2C5A694455B780A8A4BB27B9E0D752A0BAB4EA819189D99A8ED5B1743B6DB7C6
                      A211CF2A57BC563BDD78CD35FB7DE77BB35CEFEF6AABE225DB40694BA4D2AA1B
                      3322A174B20965208E07113EDC15FF70A2DB96680A5D5142223EA2191D77E239
                      27FFE54F7F83EA116044CA1B5BDD905E8C8DA9A99D9E62296AC246D46E17BB9A
                      E2E3E6BD45E5EC9B8C28B6972931C2994CA2CD0DB53536AC5B326AFCC1550D2B
                      DF1FC2CDD0DF38DB28202844336429A838B1907DE28927BEF0852F04A86AF774
                      BD0727C9CB436565654343434FB899233033A514E40AB09233F583874E4EB890
                      93B32027EA1AEA385E27F864805802F964937948F67463E7480C2F8E3DF6D857
                      5E7945667895B5B3A79C72CAB3CF3E0BDDB8390074021D0ADDEB1FC7BF941B8D
                      3E53D3B15939641DA1F47B150C80DD430F3D74C992255866A28581EE29C908FE
                      A73FFD2985AB24D8C4B619D0EDE7C4398F1831A2BEBE1E870776774FBB11DA4A
                      318EA1783D7C76C179F65ABB21DCBCABFD02598ADE71C71DF8201410449AA507
                      6F8FF3BC85F27FE08107BEF6B5AF051ECF9FD6AD5B377EFC789A862C8B02B899
                      0303617D295A50AF762634E00F39E490679E79064732CBCF3CFB046AD88069F2
                      5D77DD75D965977175E4F7CAFA66E83E659A3E7DFA8A152BF2B4D57F3C6E1641
                      F5FC78818A88E581B8193BBDB90571F358700F38F7DC852FBE855D5E1A2D32DD
                      2ED85C88B5064501A1B2F8DACF4F00A59795434EACE9ED7C8344190BC22E17DC
                      A840746AABCF6DA1DB0A6EFB3484818954CBF0AACAE6C60EDD49D554848EFECC
                      D8938E2F4BA4D74C1A3B72D88858D5B46A5FE78C6BE15668FF171419B0759963
                      0BC42B6C357470143FE6AD666AC343F0FFD9FB0E00B98A23ED7A79E2CE66AD72
                      4091200999686391CE804D3098B3858906CE46E4F319CE18309860CE07B6EF30
                      F13006130CF773986C03C2473439480284124AABB439CC4E7AF9AF7EB5D36EBD
                      991DAD562BF8FDB36D4E37FBE64DBFEEEA7ED55F57577DA5CEBBF3EA4F2EBDB6
                      35550D1937AEC513AEA468882F196CEC537C1B81BB8B3326C0CD38BB7D013707
                      AD2F0EC5DFFEF5857FA592CF6565C27FB203881C8717F71105B350AD1B66C1CC
                      ABA9EEB64D9B974D1FB3BBDCBE7C453F7F33A3E3F664B9F88411DCBC3DDC4C9A
                      08D115EEFB49A7943DC51371C6E2C58BE7CE9D0BFF7F9169C0B6B6130A4D1BC8
                      4F832008084940061F19B933B8198769C68C193C1C9E16574266E29283981E91
                      3D6CABBE45D6D8CF5BD2E5854F1802CB11471CF1C20B2FF00C7FB42B40F9501F
                      7956E4B284BB0319C30E3EF8609209F960508E40121DBD20975E7AE98D37DE58
                      9A207027CDCF3C59097EFED18F7EF4EB5FFF1A04EE394E3F474F0925AE236950
                      90A2D88637DF7C73FEFCF93C8B275D0CADE8A13C881038A1F24CE03B346F4770
                      F3AEC6CDBCD92834C47688562BF3B861DB28F1137E3EFBECB3EFBEFBEECA7DA7
                      A7E046FAAEBBEEA2A1198C317BF4E8D1A46AC83F8A278D02612A726F07BCE1A8
                      A38EC2D7168A8B458521A336E0FDA84889DA02E5C30D1065DB8F5F89D994C85A
                      FCE8A38F7EFBDBDF86A2FE14B56868DAD074E281BFBC8484F645C4CD8E075231
                      CF368EADE6812D29CC6B1755930FD118F476426AF43850773FFDB4457F7A114C
                      AFB6BA4A471CC5803621EE32E8F96F00D167395420C06F46602BF0581AEC2013
                      36F3AFF0154D62C65D46981624F7F603A7E3E0A752502F223A664076685058F6
                      6C664295582293203BA0A4811FF1D957BD0A38CCD19811D2C55DC98FC68D9EEE
                      0E5951E38604853ED92F480E22481C305023EC3FCF82BA26A8AF81D953E0ECEF
                      6993A6E96E36AB047ECA586B213065FB4A2C969AF0FEBBFED187AFEC61AE4BB5
                      722C95CB9BBEAAA878836C4960C960076816651E07C6E54C2917117833137ED0
                      0B266217A58EDB112025A252D7D8EF286D8AAFE2CBE5B37B10816B04B53D9FBE
                      2551E0D7BACCB6204E113BFBCC2945B605242D2E54CCF99B798C689299C927A3
                      BA69E65DBDA1A3A5B965E51EA3A6E7BB3F591B8B31FE101FC5E67B0A5B0E59F6
                      4570155F714770337D5B392E1095F5FEFBEFCF09E64285133943D1AB81D4E88E
                      BAA67D3685B3209191927F16BB232E1B147A45B9B808D3E09AD1DDDD1D5ABCB9
                      7E4434809800B6B5050E323E7287F89B29531DD7C2FC5CB2749DC0069043F3C4
                      8913D7AF5FCF1F47195E68C8A8799F411C67A9FCC91943BC479C336416C5A98B
                      100DD7B6430E39E495575E21422E722410EDCDB8DC52EE92B2B8595CD745DC4C
                      0708E257A1A395C71E7BEC84134E8012942352DA0DA18807328F3FFEF882050B
                      4229844408C2C78EBC2F42C3C4BBC68302C529148AC422582CDEC0E72A3E9AEF
                      C7387F76852E8CE0E65D879BC5DD118D02A1DBCA296C4038184451A3A622D2C6
                      D2E329B1901308378B54E0B92309F0305992AAC80829BEBCA44F7092E086BFB9
                      B9991F74546809F5EEACB3CEA2456AC8E5F5D75F3FE8A083605B7D58B62FD459
                      226BA71E910C43E7A55F38DC6C38805092D2DB318C28336BABEF2BC116C97514
                      C6C3E6E7C188D742FD6E97FFF8DDDFFD01BA7A124D4DBAED20BC5303B93084E7
                      31DF8EE29319E676823C21CC722D232ACBF5D555D5F6E523D97CCEA87225CDC9
                      E7333123A579119C5AA89098A993597665C670076E444AB8B6E57979466821EB
                      B831933D55D615BCE8C8366EB43CC47088326506A6555F931C9D2506049B1136
                      07138CA53AC1CFAAE1B3E5C3735DC7752CD34943B0889825273938682BDEDBB7
                      E14B76E7274BEAEA80E5CCD66A32BD7D88509333F6D9BAF9E0BDE6FDAABB0DEA
                      6A71680DD588ABA0BB08EF19F39D1FA0649998927152F9A0580AEBB8EEB9D840
                      D55595805DDA65E2755DC9F4FAF71478B7065E908F4D2AA03CAD02C4B4482C09
                      966DF5E50B8AAC621D88625DC9F62553654EDB12B80994A755C85555B14888F6
                      F6B6A6A6F1F95C3A5F2824135596932B125A07FB195F0970BB2B7B0E6AC582EA
                      DB66C1EA32278E755E7862F298B952CFEAB506A26E856586917C1D278623E799
                      6B37EE3946707345DC2C9E082F59B264EFBDF7A69B45ADCA9538BF88DA017584
                      F8C490E1444C2F37BC5D03611DE2445AE4BD807D696D6D1D3366CCCE93EF92FF
                      68E81C9CA31011635100D9E08323076F6FE609CC6945BCE5965B2EBAE8222801
                      FD2078B2E2FDAB56AD42D0BF8BE2FF28E934CF73C6E54F6B128E118E3B0EC44E
                      3EFADC73CFBDF3CE3B79066CEA2C9F841C3797F28D70BF0828EE85B8A37069E8
                      3D0F37A49304941BE2C26177011717E6E5CB97CF9F3F1FB7A6A1C5184A2835F8
                      9609823794DAC9271BDF3E0DC4F6C501040749F5F5F5B46D08A53819CCEA3E82
                      9B771D6EE68567747AE49147707355D91E1C1AF7A54B97CE9E3D9BD405DF27F3
                      9B4935A1B63FF6D86309358A3FE747167891C34AFE4310B6D9F421E41C0F4535
                      B575EB5654BCFCB7DBF533C1F2ED6F7FFBBAEBAEC3DFF6F4F4A09071F4099D0F
                      D45FD876AAE34EF80F7FF8C305175C00C5F94642E38739E2B4A1370EEBA7F58B
                      7AC177026593AD7C5170334BB72723AA735C85615DC546A8A530DBB3EC5A1268
                      8CA902D4681354D7DEFCEF9F5C7913E4F2B171E3E32C238E4B3D24BBA95A343F
                      3BE44FCB7133D615959442DEF6A4A48ED3C2EBB2FC9C2C798A844038A64A06D3
                      69B2CE9294F8B625A5F127113F8E38CD972D9D99957DD7440CA8B3983F95C178
                      57CD7B92C3BE90119FAA88F9349F19C815669C25EF08E67A2279B2C55C2D5489
                      3D0031B484305666C66835E6A77C0F5B8C179D56331D915B2669F0CAA2E363A3
                      3E02734D772B445488A202CABBB1FA08D47EE584135E7EE2895C752D24E2F84D
                      0A3B9E2DB0A548536596D03BC824E8B187E0071DDBE5B0A9E3A04410372B3EB6
                      A47F481C1C12D543BCEC790EE27CFC4746A1AB4AAED09DACAAD6FC48AE5070CD
                      2E94A6168DD5D6D4B5776464156B2BB02485D837ACD78FE11645061347271E4D
                      150A796605318C64B2AAAD736B341A0B8CDBA4A49400CD2BCC61054C59F5B2AA
                      E23A69A7C3FAD2EEDE7F3F30AD69762EBD62B36630702E391C37E764E6DD3E82
                      9B07656FE6ABFBD34F3F7DDC71C7F1EBB4EEF2350CFF448D834F21EF34449650
                      D4A7A83D715D2183C7B0BB047082526C27C171C26744024A6ABDF471A84911A3
                      5841C11FA21EC746923F8013148256647AC4CF140B48AAF9E4934F4680CB391C
                      44A3050839C6399419BCA21C0C6EA6902F6C090A9FA0F38B2FBE88430645FC34
                      D09ACA1DAF79C8F9B0C89F069D0657A40AA6F478D8113A8B08C9BFABAB0B2117
                      091FDB8337E0A891ACC8CC0645AE28B22BD3D9EBD4A953CF3BEF3C9C9CE2FA07
                      026EFEFAD7BFFEE73FFF1906879B897E0B8AAB60A9318C167814725B5B1BD636
                      EC7E2C2292C347CC9933A7A5A585A38A817033CF3A1E1A059A6C88AB105DC1C0
                      B8390417F0C3DCB973172F5E0CDB26EB19C1CDA5E5F3C2CD50D472F88E1C71C4
                      113C117A8507F171E7C75F62A1CD2109106FE6D9F5784E137AA2C87C0CC25BC6
                      2D2338FA28017E22C1EDE221DCCCD31589EE5595BB904AA5264D9A84F38412D3
                      EEE83918B60A5B4BBE85B4192EE5B00FBD08F8277607170E7A0BB887C9179787
                      4EC4CD8C390218F53183970C377B849BBD02E8B16A48D5FDE9E92D279D91CFD8
                      8949E3AB02FD851A16A78EDEEFAAC1F02A19AE457B33B33817F28A2AEB92E22A
                      AAAFAA8CECC2075397B44C1F0E80AEE96E10EEE1BBD8622D8BAB403EA329BE2C
                      A9AE8A984DB255FC0C8604516C90079A24E75CC90DACE38830A3CC56CAC83402
                      6706E61322052D5025F058A01EEE0202B75D49F11D36A60EFE50654C21B2EE68
                      92AEB79959802D5F990C4F3C74687C5AE7EA573F9CB64735F4F4647C88A6624A
                      C377FFFDCADF5DF673FC398C1BADD996AA2B559EAB99B8F8313BAD05921DF4D4
                      65901C61A6C4FC2E6460CA9D25436178DA65A90583C6AA5A143714AE233B6EC1
                      95B10B8E8ADB0196964451E488C7983DE464342A4B72B6CF342D371A4DB14988
                      23E505894F7D44BF88CBED58B5D4D9D1EEBA5E2A95CC6470E6F938A7FBFA3281
                      118B783C823D0CE27889514B4BBE89CDB570E573FAECD6DC778E6EFCF5CDA99A
                      49ED99B53DA82D033A1199DD08CC4B24706E1FC1CD83C2CDE27A831AFFA69B6E
                      A2CFFC34B0A6A6A6BBBB3BF4B8134F3CF1D147517A7FB38C8A7E93C38B9B45AF
                      531155703B0DFD490AEBD9679F5DB56A15AE3D4B972E6D6E6EAE4CBA54A1703B
                      6E28EFC92EC5CDDC4F435C48F06602915074052EADF98E3BEEA0E3FB5DC10C88
                      3DC551269E2C3EB22208E305658EB876FDFAF508D43EFDF4D3D26933C8128AF5
                      193C6E1691680837D3768EF36D7BC5EC300D0D0D086A7791E8C43A8962AF026E
                      A61D057FA178D7C4B3723A0C818171734886F8E1D4534F7DE081076004376FAF
                      7C8EB899DF76FFFDF79F71C619DB7D10DF01A22E428D044286D1526F8A891327
                      A226E499FC427099EB797E4071F7DD779F7DF6D92028DB81020968AEBEF1C61B
                      5FF9CA5740D09983E487DEF9C231BA78945416376393366CD84076F1B26FFA17
                      1D37B39B6D99994801F1A5E7E9CCADD82DE0FB1C936BE2EB3734CC39E093743E
                      327D5263C6CA216666B4BFCC9F977795FB3A73FF66E678EC38D5A346D7F6A457
                      76B576C7631035209F012302AACE1A69F960B9E05B88BA0D4D3341D634B5DEF7
                      B052C7F34CCFCD798C104E93211A842DAA128281C049DA630E0606037B0CBDF5
                      5B9A15EE2F82B7689A674BBE1C780A32A70A2F70149614AF20216EB6E2A0EBAD
                      16C2E9CD677C1DEEFACFF972DD5A73C326837925CB39D98B4D3CF2D17B3E5A78
                      C196BC0BA3C655B9B694CB208E8F28A02BBAE1319A6733C0CDC1D31007007312
                      C6691375104F4B79C9F071AF80105F6519041199FA05498588AE4435DC7AEA8E
                      ED170A6EB6C0760D6A448BE13D1EAA009C6026C272331A6501B00864652708C2
                      741876C77EE3BF7D36249355B6E346F52A199B9A332DCB4C24928E531084DFEF
                      7DCE322982852D41CC5FC8B617BA9DAB2FDEE3D24B2CA3764DA6C5C35D0C7395
                      F614DDF75D2668DC77F8CC0B66043757C4CDE24AC33DE42830ABC28378B53C2A
                      850A4FE33CEC3C1B7C51E11E20622E0F08D4F72DB7DC72CD35D7948D132774CB
                      7519B7C4D0075C2A50A592B911A581D056F4E78622AEFD8C71F3D6AD5B478F1E
                      8D1FF6DA6BAF8F3FFE188A99F3384E12FF3CE594531E7CF041080C42E4D83A8C
                      519B5D5D5DE27A50162E3FFEF8E3FFF22FFF22BA568B85CE22B88D3FF42DCA01
                      07176FE01949C8E70784993678DCCCAB2DC5CD34F945D0505D5DDDD3D33369D2
                      A475EBD60D8BAC4A8B381044A9110285E20722CFE2FC277CEF249EE14C983061
                      E3C68D142B59569EBC703C74DD75D71141FB086EAE5C3E47DC4C8760F816E0CB
                      8EAF3C94F3C8128B48BE86B0F5C0030F24DC5C1611D2154E10143ACCE1BA88B3
                      9B87A8C479A8C040B8F9B5D75E9B3F7F3E8928944EA86CE1AF33F6025B829F51
                      CE95BDA24B8BC898C14B69742008B879F9F2E553A74E0D0D77D93FBFB0B85953
                      7CC5974D6673D4C071C1CB8266A85AAD01EABE4D4D2FB76660FA94297D85AC6F
                      4B5E801A658472C0C740DD364C90E5794EE7D542B605F1B357F1F531022BB1AA
                      4334D9A86951DC1922EAB57C6C82E9438EC5CDA9FD889061504F610ECE019073
                      251623287B456F1E329A7A4A600E271F5F85E5C066AED80C4E4794AC8F7F9949
                      4F896CCE671D6BE35517C0D597ED23AB5BDCAE2DE96EA89910036DE2DAD59105
                      672F7EEF4398304103B7369FCD2712D539DBF71D6642CBE6B3CC89450A9C59F1
                      89AE1AE055E6A3AD07D318A190A7F816339B3B817733248DA8659A4EA1E031EE
                      0D44D8AACDC232B5DAEAD1B66DE60BAD8A624B76A1BDBB507947A9496054416D
                      4D8D55706C4B8A462341A2429C767EBF9F4CBF9FB7DC4FBE81D292112257F7F6
                      ADCFF6C0C3B77F75C1824D92B22ED7CD7204328F175034069B51C4CCD945F646
                      E202078B9B434877D6AC592B56ACA0F59E1413EA115AAA399F2EE956CAF904CC
                      49BDBDA1A1817EBE2BFC6B456762AC9F07C1703E632AA2262D8DFF2BBB0E9526
                      8F0829C7CF123773FF662AB7DD76DB05175C108AFAE2DDA1474F99328512A48B
                      2BF4B0EBEEEEEEEE542A1572C9D8B469D382050B28FB404898620AE82194814E
                      90770837D3FACD0F2BF8F2C9A58DEB1CEE0AA64D9BB66AD5AA619FB422F136A1
                      99030E38E0EDB7DF2EC5CD7CD2226AC16D21DFA870CC2DA682C7ED22DE5021AE
                      8B178E5DB8F9700437572E9F0B6EA6C789319AB4BFAAECBF2E02D3DB6FBFFDDC
                      73CFA55D16DF6BF1F98CF244A98AC1B5A18420FC5DA3A3187A1DA86642CC7833
                      5535106E7EE595570E39E410EE461C0A7E2DDB7ED8DEC660BB85EB045E219749
                      59DC8C1F962D5B4699C6E9850A39877CD1713363B9F022CCDE2C6519F543E032
                      ACE0DD9A2257E3AEEAD839139FF8B019A64E1A9FC93914F62DAB4431E784CC9C
                      FD9F11BC4A7243E3D8651FBF77FCB76A2F38FF9B9AB33EAEDB53264E6D6BEBD4
                      8C645FDEEEECEADADA9AD9B4CEFB64D9D64F576CEAEC809501930CCAAF36A126
                      AA472B118399A5BDBC657705B5EA8C85C3D519DC43002A7B79855171C8140B48
                      CD20860A8FBF758ACF8CE28A0CBA0496E7F6C892A63BD59EA26DC99A4E6EE3AD
                      BF807F3A79BC26F7C846CEE971D5867A487DEBF843EF7AF265686A8CE85A553E
                      6BBBB6D4D838AAB3B737784B35CF379989197133765F71FA9FE51B32B0BCD56C
                      8631760FDF619E1B2AA3D7905DC5C9619B0D4967FC03B2A6EB72C014935BB3B1
                      85EB95599360F759CAD46975532624F7D86B822CB989484C3774EC808BAFA19D
                      D6A3931E782673DDB58FD7D4CA895855266746F478341AEFEEE966AF68FF58F8
                      456F0D725261A4298A5E9FE95ED3D7074B5E3A76CEBE1F397DEB6D33080A7483
                      2D89EFE08DEE086E1EB49F468814931B187099DCB2650B81459ED28C0AB96D70
                      EB05E26644CFF4153F221CDE23EFB2D1E24F3EF9E4C5175F4CE9A6C542B4BE50
                      6450DA51D5CC8D2EBC905EE6487757E3E6BFFEF5AF646E14A36D42E05EA451E3
                      B8014716E700FD761715BE1867B359EC0887F8222DB1E83D2972BD6DF7641667
                      2F051DF273DE9DC1CDDCBD0751261D4D840828386E9E316306EE12873D2850B4
                      3493DC0E3AE8A0D75F7F9DBF38A5BDC3376EF4E8D1628AC752E19323FE60CEC1
                      F98ACE33168DE0E6CAE573C1CDA547438F3FFE386918BE3716BF1513A3D01023
                      68A61CDD50F440C09FE07572DBA05947DF0E842C4108E6BBF9E69B2FBAE82222
                      4DA2F797EF3C4BDF3532729388C41CF215868C474770E1F0E4A6831F297ED426
                      9E0D723F938170F3A79F7EBADB6EBB858C29A1D117AF7FC170B30F9A1D917C84
                      4D5957025761F4C83A022945560C0F1A8E3BEEAB4F3FFD577FE2D831A643D470
                      2E482E0F01E443D31F2CC82CD8AAEFE7A3C9F8FAB51BBFF32DB8EFB717476AD7
                      01E07FA8DDB2AC0666AFC50193ED4C55A6D7E96BEBCE996AF3869E65AB332F2F
                      82175F834C502322D7645DDC5750CAD8560D3C43750D1632070549B22D457214
                      47F6B4A2D93B808CD86CCD63441F34B4AECAE8EF58C32C192C435725AC55896E
                      2978F9AE0DCF3F183FE2D8516077F4B4A7ABEB65A83BFC5FBFFFE21D77BB1085
                      EA9A260B9779C0E5CD891A4C2B19BACED256278D825560641A723021186EC687
                      32BF119F7C9A7DE692CCB0BDC41A64CB36426DCD88C4956AD7B4B2AD998C9DA6
                      7DE5FC7D60CE5CD8773F9834A5A9B1B63656E5D7D728D1A40C5A6F004C13F86E
                      16A130E292C35E7E69FCA1875D5D95C2B6D5788E62161C4D895B5641C5575476
                      02E8ECFECD5506BBAD22E2F6747562BEF7A3EE2C14369F6C34BE9159BF5E8D05
                      E48338E82EF36B67C3C9483B6470E411FEE6EDE266D1E44CCCA088ED52A91442
                      A2B973E7F2D811289EEEF1F543F41358B468D1D7BEF635084E96B9657A18D99D
                      6931209D486791D75F7FFD55575DC56FE0F99F427E1A7891B43F319A41D13D83
                      BC96E91EB22553443659284379DD42069ECFCCDE8C90A5A1A1A1ACD9468C31C7
                      C17AFBEDB711FCD115BC9F9B7C8645F8DCC791DB411F7DF4D1850B1752E41094
                      103884203E0F24C2B947B3A5D47C4EDDA7511623F1870537AF59B3860E6743A0
                      013F909FC61E7BECF1F1C71F73C0B12BD63C82BC5FFDEA577153C471332FDC16
                      B87CF9F2993367568E0BA4A1AF4C59401DE4730C71D8F1C71F0F23B8797BE573
                      B437D3BF7C56F3485628313973DCC9A90671CEE0BCA2CD218FA2E67E6822340C
                      4D1B51B0342DF14DA11C58781B916CD0B7649A1D08373FF7DC73F862F20CA683
                      39651AE46D150A8D4859EAA7817033BEECA82D4B9934C4811087F28B849B2586
                      8A08377B4AD62FE26625E0783662A08E39F40727BEFEE49F2D3D59634909664B
                      953C390884F33C2BCC1CEC53BCA0E643418BC89B9ADB0EFD32FCFCA7FB1D7878
                      7B76D3BADE0E68A88382CB809AAF8111850842BE4802B41A8014403DF8EAA60F
                      0B6FBCD3FED6EB3DEF2C69FB70B5DF9783EA06D4E009D94B4A6E44662E056020
                      84935C47F12CD6E8FE8E330C0841D616869D8966CF0F689E99E7B2EA3112675D
                      01D76104775D19CDCAB4BEF6B871D0517556EB165B95E263BFFCF2F31B8F3AAA
                      1915E7B8A6264D4976A6715CAB0B79DB716C4413D5A9C4A68D5BEA1B9385429E
                      4D1244C90C344B8C27CE337C9C57B2854B8FCC7C45FC80699AC9D5931D3DAA59
                      854C5F6F2E9F05D452D347C361078E9E365D3AF8C8C85E73ABA4EAB100DD6C17
                      61F581B5C52D14AC5C60B2F7D91861676C073405AA26EFF7A34BAC5FFFE79269
                      D36BBA3B739168C27325ABE0EB4634989A4E3F9B20140F0110C019605AB62E4D
                      CD752DEEB1C0B74F06F59DAEE59FC6AB82F30497ED7B149B2559B40C879C6EB0
                      C523B899BE2D8B9B39A118C79D22DEE5340EF45B91349448BEC48336D4B6844E
                      B6CB243AB4222E3FDFFFFEF7C9AF1A1B865A1BF526C7A0647E20B5C58984875C
                      A8839F256E1613D741700C4AFEDCA5FE82A1534E623E6104410119D3AE933F62
                      144A6B07C15A8BC32D0A8707AA931168BB50A36C29F564D819DCBC74E952CAD4
                      C33D35390622DCCCE92660B8B3F9883194D8124ABF520137BFFFFEFBF3E6CDA3
                      B79253D2527BB8A59F56F4B2A1BAB0ED02CF07E591471EA10C1123B8B972F91C
                      FD9BE9A13CB68F22F96060678650CE3F14DA82050BB8104451946EB444FA390E
                      22695A52326A11538A6F44E9BB46D3035FC9A38F3E9A0E9D060A5C160B1F50DE
                      920A794FCA1632E8707F0F4EA25796878E9E82F7F3350BFF15138E867A075F28
                      DCECC92A239A90039CDB8F9B7388FFB2A888A38A6222D2F46D198C09BB3F70B3
                      77F5B52B36F7C0988933F3D9345BF87C94358249A9503005BDC971338395F83F
                      D96FEFEDF07FB83072CD1D87C1963F434E6169501C1741B3AD9ACC94EA826DB2
                      7F199233201A07B97E32188827621BD76CF8DDDD4B9E781236AC876C9E81C1F1
                      4D537D2F9329E46AAB9BDA7BBA93F148301B7057E722B65515D6AC82D91B8918
                      017466B836B0FAA24C823842152C33A36A7E2C956CDE6859858EDCCAA9D1511B
                      7BDACDEAA95FFE64A976D8D75F4967A12A5127E50D55563D25CFB212F6BB0AF7
                      2722090CEA7EE0A1A1F69BD803DE3714BCAFE9592B536DA42C2B9734B44C6F5F
                      245AEB584AAE6077E7D6477498321166CF86B3CE82AF7DE3703600F97648B765
                      73ED791C184BC227E234D314DC1383996601949088F4B617AAEA1569D4B855EF
                      3AA79CBBF9E3B56A5CF7A291EA7CCE312251CF5164665D77034F9520CBB75F4C
                      ACE8BB0ED88C063BDBE09ACBBF7A003CF5E7AF80B736BD752B6E573CBFDFFB5B
                      B1F131AAA967FC60DFE1C923B87950794F42855B16EFB8E38EF3CE3B0F8AD82E
                      B4A117D52E6ACF0F3FFC10D53DAF8493B87122087C74A9216DBB852AE1EA9B87
                      2D8A0E1564E4E6A6D621C76BCB422E2E31F246FC7357E3661423D6C90FEB7187
                      80FB04281A84F84A431F78AB0E38E08037DF7C1384B07A517ABC853BB4ABF18A
                      7919B8F3FACD37DF8C300504DC2692A7120CAD5C6765A7C651A3468939BD86C6
                      A721EE9A703E707717312E50C40AE4A7B12BC834B81314F9F9500AF1B27E1A84
                      9B5B5A5A5002D405B2F0F1CCD87CA54FA55238ED4B615CE9CBCE8FADEFBBEFBE
                      D34F3FBD54688399B723B8F9B3F4D3E0BB23F21886E2CC0F45F281B091263D70
                      C209273CF6D863620DF4DCBBEEBAEB9C73CE219E7502B5A1F1A29AF99CE42E3D
                      5C2020E4FD29C5CD242291C07430822259E1A349078A14723B5F421A86B25961
                      FD9C81845CC94BE3A7BF88B8994155CA9221B3237DCD8DB0547C8A49B839A24B
                      AAA9FAAEAD210C6E9CF8FECB6316FEF39BEFAD80A9BBCDEAE9EE5075F018031B
                      134BB0802945CF66F2D3E817ABED48A9687EEDE69E85C7CB773C7EA4BDF1592D
                      2F831C0386657D57CB399247F9F11453C2E71602BF5CCB66D554D56A52ED2480
                      C9007B3E78DBA2ABAEFCB8AB17E229C859505DDF9433111678B267B9AC2A8571
                      3C335A670591A7A678B66731571099596C11FC067382E16649C519DFA74570FE
                      69EBD7763162E58E59E0AF80FA99E9D6E477CF7AE7CF2F82ACC3A8AAB15E1A92
                      112327655DC992FC6DFD40008AC6ECA0F8CC9F25A0BD7372B61B8F1BD9EE5C3C
                      112BA47B468F1ED5D7D193CEF498B806C8F0ADEFC055D7CC9F3C3D01F06EA6AD
                      9DD177F431CF6BACD1964065541C31E6F6C1D8ED5C16036859A0235845F004D5
                      B38E78EE0FAF9CF03D335A13553C5FD5A3D851CF5571D36218D160CE13B5881C
                      506807D611C4F98AA31A7A7E53D4F3D65D7C315C7DED2CB0DA0ABD9DA0609B1D
                      995159236E46C420996AA63FFFE0086E1E126E86200E0CB111043C478F3FFE38
                      143D1CF005A1F598948EE8C2317BF6ECF7DE7B8F67712B5BED10F8E944623B4A
                      8A01C16AC169984921960564471E79E441071D84C008577D044FD8CE4850C8F5
                      963426FE16BB934C26A961885D109C2D59B2E473C1CDDC4F430C53BBF8E28B7F
                      F39BDF80001FEBEAEA504DF34A104B61CDC71C730C2E60F41393B1D9B0C05F8E
                      05CBF260542E225CC33FFFF4A73FE123A09CF11BCA790ECC9A35EBE8A38FC67F
                      274F9E3C73E64C923C654FE0C2C747101B37A7883EEDB4D31E7CF041EAE0CEE0
                      66DAB6E1537026E37A464FA4142D1CE8D3D68B6CFCBB0237F35792666FC84FA3
                      1437E37E155F3ADADB945AC2A836C2CD95F90A42FECDF7DC73CF99679E0923B8
                      797BE573B437D3A097DA894B03ECE4224939FDCB75EFD2A54B792F7856C83DF6
                      D803B54D48379632F3907811A92F5AB488331E0E241F28C1CDE4A72166D8AE30
                      649C177F6746AAF228843C986981400D8F93996BB3D257E00B899B1D08406B10
                      5227216ED6FC2039B62F7996CA90B4E130CD1B412C17A905E5A0E34F78EAC997
                      60EAB4DD186E460DDE9F8654DEB6C33EFF9771B179D0589FF8E493355FDE135E
                      F8DF3D22C632BB071041E28E450257529823B0C3888C036B6E60279510A67B9A
                      9D759C2C226C558B829A309833476ADE4DD7BCF0939F31D7829ABA58DAB6478D
                      1AE3E52D0D144476EC974CC59B8EEDEA11D9C3054366717B3E02472F48DB0706
                      F3DE500AAAA2798E1753F5B59BDA5470ECDC5E10CD41F7A49FDFFCE295D7F852
                      95A1479DBAF828BD47726DC78D792EC3B4CA807187124B2F122429545DD9B59C
                      5C63536D4F6F4FBAD71CD730BD755373AFDD99442C72045C7BCD8C59074C027B
                      B9D9D1A32B52CECA7BAE13B5988D570ADE7A8FD14BC77DC966A18EA6A95447F2
                      DD0523095214366D85F1BB9FFACBAB1FBCF45A9830699459C8D905BFAABAA690
                      730B053B1A8DE0C698C8A48BA967980C3D1C6AC533F448EBFA2E1DF22FFDA5F6
                      4B5F52BCBE3ED7311DD9C08EE89ECD5C5CCC24C87E3E92C15E8EE0E6A1E16682
                      358430E8CAA851A388E0164ACE07C9699503A6238E38E2F9E79F87601524A761
                      CA5FC5B5D5D0CEC14913DD7BEFBD679D75165DE1CB1836003B2E2E69A8BC6EBA
                      E9267EE7100A517D858020B7DE7D667E1AA29F2BB9A694750A144799D39B8885
                      CB7C47372DB47C1272E2DE0E5408DE6111176FFAEABAEBAE5BB870617D7DFDD0
                      847FECB1C73EF3CC3324ED9DE4D320F7475ACBF9AE4F24FA20DC3C7DFAF4952B
                      57EE22DE6B7A9C48BD5CC10B85F2BD711EBAD27AB08C1D3B76CB962DA1D7B0EC
                      94E0F7DC7AEBADE79F7F3E8CE0E6ED95CF0537871245F131425540793DA849A2
                      96E0D010FF443585EDC47F5B5B5B69DA60553891E8D0A9EC9416033C68774DC8
                      6FBB1CF003E1E6975F7EF9D0430F158769905667EC3823F52A5A617666EC066A
                      2785B89088B81D44744D2CFD157C4171B3AF50C646C9971CD9750DE6531B7375
                      448246D4332DC5D8ED84734E7FF4AE0760D294F1D9741FD99E3CDFB54C97F886
                      F9D38BFF626D9EEBC56AEAE2EB56AC68AC82EBAE87B32EDC3DB7F1135D62DCC7
                      412A58E68AECA9FDD6512C599321E4085E7122CCDF2370076226EC069C2F0930
                      A7B6B48DBFF2CAE77EF7A02DAB306E52CCEC755525815819C73A6654D93ED3FB
                      AAA678AE1960406618563C958172C4A7B254B0B289AAA4D9E3542562CD2D3DB6
                      93F6FDC3006277FFF27FFFF5AA7C771EC64D9D9D3637A34AAE97AB7ABBD25A92
                      792EFCCD813BE0B9EB0F04640855F1718E05E421ACCF882F25279DED4A2652F8
                      8DEC2ACD2D9D07CE860BCFDBE7BB678F036505F4ACC8F782A1414F2FE41C18D3
                      58E3E772129892010EC15D5F75C1517CC611A2C85E9F03C914F4BA2069757666
                      DE4517BDF0D0533063D6C47477D6340BF1684DBE50D03455C20733C37A2041C9
                      ED378AA35865DBF5E57804D637B7D5CAD0993D00F28BF3ED0E1B380DBF353594
                      15FEC44E206E2EE83947F635BC208FC405EE306EE6F588EB776363637B7B3BA1
                      19D1D1992FDE1C56E21A534AFFCCE3BB87A0534889AF5EBD7AFEFCF92D2D2DD4
                      366A8098760E6B6E6868C08E23F0AA500F6F0F7DA02BB449E04B17D6D3D1D111
                      C2CD7C2DFF6C70335F3E395335C5C58BDE2974821FCA827EE79D779E73CE3974
                      032166DE4ED8369DCA20254F9F711F82FB16326C8BF7A0C4B02F2499DB6EBB8D
                      BC7A780901C7B28FF08AE90309E67EF39BDF7CEAA9A7C8283B2CB8194A4C77BC
                      5A12E69831631017EED09C1CBCF444D844C6BF0A3C740486443E0D1A41723DA2
                      7AF6DE7BEFD2C3905009F93773FEE611DC5CB97C2EB899A7B9E1F74330E15145
                      53B035BD0BA296103F73595D7DF5D53FFBD9CFA0F84E610DEBD7AF9F3C79F276
                      5BCBAFBCF4D24B871C72081DE2956DF340B879F1E2C5F3E6CD83C151CB0DAF57
                      C60E15DE36FE2288C77A5F70DCAC30D75CDF0B70B342B819277CC4D198FF86E2
                      A6335E6ACF437F75CD4BFF7A2DA4AA53D188643BAEA630AB583E6FC5A349A66B
                      085B09F9027D4699512DF976CC87CDEDCDF30F8097DF3C3DDFFD44BE371D5701
                      11A2EB01114030D027338A665DF75CCBB34CD937BDA80C1AAD561EA4332C8EB0
                      66F60C44237DEDDA7FFFCF87D7FCB463731734A6404F4414DFB03DD5B511EB21
                      5C55F488EE58B97EDCCC8AEC63CF3DC595C0064B9134A3A0EB1A6CC97657D7E4
                      B76CBA66CBEA47E61FBA6CCD6618377E9C2425B2D9AE5CB6677C6363D6CC3042
                      0AD9271CCA59A28382685951C8E4DECF7721054C1A6ECCD02C2B9A496FEA2C38
                      0BBE0957FD74CEEE5F6A80CEC52CE6CF513DC794984517ABC555CD911D4DF2F2
                      8E168466B2D9836D65FD8DEABA99B770E3A0446153274C9E79C2DDFFB1E2F2CB
                      97E35CAB6F9A90CDA41545C30698A65D9DAACE647B154D025F243601729891D4
                      8822A7376F4CCF9D041FAC3B0CB22FDA5B0C16D1A93ABEECEB8E4DA902B1AABC
                      EEBA2C2290B1E68DE0E6FE79B3237E1ADC42C9753A2A85B163C7A296A9AFAFC7
                      A5945433DF61922AE4A0EAE4934FFEC31FFE00DBFA34EFE4AA76E289273EF6D8
                      63C488271A5D38A2DA7FFFFD6FBFFD7652DF54BC22752ED18040316AB0ACDC44
                      4338AABFEEEEEE907EFF8C71338127C25EE433D3DADA8AAB20E968DAA5F0558A
                      6AE35B97F7DE7BEF4B5FFA1208088C2FDE3BA4D339D31302A0934E3A892E623D
                      F8A010551F5E7CF0C107F93D50CC6642A14E645522F047DD141DDFB17E46EF63
                      18D4C2A38F3E1A91F110F89B43A51437E3081618EBFCDF563E422428A221E735
                      AC504A13674E9B36EDD34F3FDD6E9E6D82AA34C329C852E402FBC637BEF1ECB3
                      CF82E0DD117AAE686923A19D79E699F7DC730F8CE0E6ED95CFD14F838FA3B8BD
                      246B05850D8890B4D4DD19CBF8F1E3299490ABB2CB2EBB0C9BC1395860002E48
                      AAF9B8E38E7BF2C927A198A37B90B899DC4BD6AD5B3765CA142866368562A2FB
                      0AFD9D3B77EE29A79C826A8D13DE55383FD9A1C26991409812284694CF19679C
                      210E4788B2FD8B8B9B251F11902EF98ECAF28580E72B08A61C95B90D474C4393
                      74709DB499AFDA7DC26B2F34FFF325F0C18730654A434F6F5F44473DE53A96A4
                      1B1A91900AE4746E908B4351F5EAEEAECCD8C6D4A7EB5756476063F369899A37
                      FBDA3F3502FA3372AD665A0A413B205E07D92B282AE2F124AB07611A4BBEC2DA
                      04758DBD1BDAD22E24AAA166E2DE00131FFBDD92DB6E5BFFD7C5A047A1362527
                      AA46E1F297CFBAC0F247838C7D93B9EB02CBADADE27EC0F7E48896C964471B0D
                      7D99B64EABF7A863767BE28FFF7CFA3F5EF8C01F61E6C4715D1953F28D88A1F7
                      647B1355A83E1DDF31021F0C96855C2AE6F166146E1E8BA953BDC090DD1F2CE8
                      321264595515AB79734F44860BCF8DFCF4EA6FC41A36165ADE8D28906E05DD85
                      483C6EFA595595F0D6BE8C9B8C2454DFB19402B3620783A7040F515DC3B11D35
                      E9E2FB9471A161DC05679D70EFBD4F64674C696CEF655E298978AA50C8E3848E
                      C713BD7D5D1143DB7631203E3E59D6ABB2E9B54A167075BEEDC17D20FD9EDD8A
                      90DDB0F502CA5AB324EC1EFB9F0259A634648371727823B899BEDD21DCCC03E3
                      A048D4807A842753150B210FAE3B50D1934707277546258E5F1129C4CE149E36
                      8F6C84A52B07421F02403879487F51920B924928FE432415A6033BDE4DBC8810
                      01814268F1FE6C70337673F1E2C5A4D9C9362C5AFD1152CF9E3D9B3E13FC0A19
                      8D683810D7E20A4A42E08180434015DC488C68F5B9E79E03E154810A27F67EE8
                      A18710F1D06C812257A0E8EAB3DD1492DC29E598638EF9D39FFE447BB0E1C5CD
                      22C9B42CE44EC7E7A2B8C8A83F8C7C1A62601F047EF37BEFBD37FE1B5A8CA104
                      37D36635D42F3E7C0B172EFCAFFFFA2FA8889B4342E3842123B8B972F9BC7033
                      771B086156C4B24F3FFD34015FD1A759F4240621B420347FEAEBEBF986307414
                      C3658BCF22DE3A5C11883D8947030F241F28C1CD38AB714B4F9C155054B00375
                      96A625B7AD7CC6850B9054C1086E66B8997CED58560ECF4220E4B90C375B0899
                      3450FAA2112D8ACACC916DB5D174F4BDCF39CFB9E7DE8FF6983D7E73F3E678A2
                      DAB5193BB2AAEA9E17D8987D2F0091F8D90A22E764454BD92644D442AEAFCDCC
                      C0E5FF3AE6B2EBC7436E49BED3D47D161217003CC39115961A5096F0C1BEECFA
                      BE2B05E46BD83614A6A2A22682A651AAE9389AA2657A9CAAA6095033BA7569E6
                      3B0B3F7EE303702C686A5434ADD665895AA28E63B37C822CA04E09ECC48C178E
                      A2F71C059F6937F97E7BC716B70EE61FBEC7615F1E7BE9A58B727998B3E7BC96
                      F51B227A2411A9C939851E68F6555FF76A8B41816E7F7E3D464DCDB21506C476
                      C0E0B24C5C167EC04E11DBDAB6BEA91E2EFE215C76F96900EF5BCD9F780C1583
                      AE80144B822BE5B369DD0025269905DCA3185893A398BECA5C56F0ED670476BE
                      A63B09DB769578DA92BCE898C48695B1EF1EDDF6C17A98B2DBF88DEDBD8998A1
                      4ABAED30DE47CFB7195535CBFE47864C42CC74CE2BA946DDE68DAB664E84FFF8
                      C5978F3ABE19FA36655AC188270A7A8679925B9AE23B2CC58D0219F60BDD709C
                      11DC3CE4B8C090BA275D407C4374851305C0B6EEAD5CC5BFF0C20BB8DEC0B6AB
                      D1D070C9B5D75E7BF5D5574389DB5C4343437B3B4B2FF4D65B6FEDBFFFFEFC3A
                      AE4394BB95FEA42599426106A3D19A9A9A5A5B5B3F2FDCBC74E9D2509DE2DEE3
                      BAEBAEE3C4D53CBEA7F4D4FEE0830F5EB4681179F792C97F081199849B5114D3
                      A74F47FC449B224E39C207FDD4534F7DE0810720E0229C366D5AE9448262FA40
                      28AED9DC37833E8B7B1B8A430DED8B761237E3BF65A3E878FD041AF801F70E49
                      A9B2F4F8DEE3F9E79F3FEAA8A340F06E0AE1665C7489123B849B795020D9EF71
                      47FA939FFC044AA2BB4225942B9E6E1BC1CD95CBE7859BC596D344A53F71AA9F
                      70C209F42288CC6B20EC9AF02B6C24459AAE58B162C68C196446FDE0830FE8D0
                      A9EC4895CE1CCA55C9BDC2423229FD4C857033EE96E7CF9F8F4F1C28C7A158C8
                      7D086738BE74A8B4891C660879B6B73B8EFCB80665854349AFB6182A0D25CE7B
                      5F50DCEC05B859F29DFE8F80730BCC084E5C707BA4B89134F3F9484CEBF67235
                      93FFE1EA2B9BAFFDF9AAD97346AF5BDF9D88C6FD205133CB7ECDB8D81C264E19
                      570584CF808B8F8D3038E757D7D774B5775757CBBD5BBAAAA2B07EEBE152AC39
                      BB6A9DA104B1810AA2EC882B7B811B310252CDF36C0FBF0A7C9B7D45764C9CE9
                      5224A29A793BA269853C4275E6038DEF823675DF2DABF73DF7A2BB9F7ACEAA49
                      4034AEDB1E42CA545FBE4F53957E10EF93D7AF227B116C6ACE36EB6BAAA1B7AD
                      37DD3D76CF7A23A62E79A72566405DD3C4CD1B7B26D4D6B8B695CF785A959E86
                      7635AA288598E4E9BE8C5D632C6F92A74880589370B3CF9899027B366E341813
                      9DD3D9D2E12168BEE9C689279F797876CBFD3DDDCED854D00417585211178746
                      560CC9B11D94B581BB1507874305195F72F62DE067C765F9BAB55A2BDFEB4905
                      3F0AD1F1F3AEB9F4835B7E096A249E6AA8EBCD658D78249FB51459550C2D9BEE
                      ACA9ADC917D24534CFC89B5906133FE2B97EB26AEC9A354B0ED81B9E7AEC9B0D
                      C91741EACB6E8578756DD6EB62CC794E4C96724184266E74F0DFA8E6E1B4B047
                      70337D3B78DC2CE607266637AA9C20C8ADB7DE7AE18517F29BC9A0CBD3AB1250
                      E08E95EFBCF3CEBEFBEE4B770E01B7F1327BF66CF25E203845F6157125234D4D
                      4A9F9FBE113AC19F0C14EFC529170805722F8E3163C66CDDBA35B4787F367181
                      9C4F8328E7E88C1E023DCE09E628720EB6A5B0E0246B84B1F0CAA5975E7AE38D
                      374211875148DC10F8343850236F166A0F5685F22163736899E4F387C3D61074
                      2E2D849968E070017EEDB5D748F83B839B39FB1B7E9E3973E6CA952BE93A87FB
                      627788714274041F96227298703EC152DC4C0551CE7BEFBD871F50AA8860F8FB
                      42766B8E9B793D95911CA711E04309C2E1C340A91F4ACB086EFECC78E842A343
                      DFD2EB20060473566FDE1E2E9FCB2FBFFCE73FFF395D7CE49147162C58C0B75E
                      A5CF15D394F0D7AA5420FC1150EE5DA351C3EB88EF9F7AEAA981CE40CA16CE39
                      4D6E48C375CE230615F0068BF58BDE835F781EBAA27F73E016EC06D653C66E21
                      21C0D4E582C9DC36B448144CBB80CA340AEAF87DFEF2A7DCB7BEF54932AECADA
                      E4CEBE0D0D0D353E7EC9D267306C652A2CDB9CEC99B2AF47CC842F29B69A9765
                      5C628D6432DEDEBCB60085775F9CB6CFDE6AA16733386935C94CCE7DD9C04E6B
                      18B9B4A91B8C1F8D39420027FAA0F70721A71073187CAB2A923C6EAEB559FBA7
                      73DFF9E3D3801033921CA5F811048D8C794ECAC95AC10BF0AE87F0DC4EC9AEE2
                      EB8EE4FA9A647B8849A1009EABA35E95544FD27D0403324B2C88F850F6654B31
                      65C6CD6778B26FCBA6C3127A2302307433A67A9A95B31A4637B4F4B49A76AE71
                      D4F8AD9BB6D4A4B49ED6CEA66A78E05EF9CBC79FE0772DCBF5AE8F460BAE19F8
                      3E072F851790E551001F1189B097C5071D9F815B04947710B6EECB36B69A5990
                      7174D4C9D0F80F3346FF76550B4C9932A5D0D723F9B8D570182FB69B60E3C6B6
                      2B05CF4148A44714DC1B389E875B0DB09C246E40EA62E356B5BC77C6A9F0FB07
                      4EEB5BF7403205D656D05329D7C2ADB6E4B067B04306068B59A2EDA88CC07824
                      5FE050EDCDA5859FA473DC569AB8184AD0C0EBAFBF8E4831B478104E25F34908
                      CCF14AC447D30D08FE103BF24424FCE9B7DC72CB05175CB033F956423082280B
                      42FECD9F197F33ED107877CADA7BB8D74A697CBD287C1E10C64B85559C574E40
                      8D0FF79C397308CAF367F14835FC93A33DA2BFA8EC8C51B9D004269F9021C405
                      0E34ACF8E1A28B2EC24902453F13EE1D0E4540C94F8D77667757F6E9BC9D082C
                      9E78E209FA4A84417C2688A087EFFD44084555E1F438E8A08310CE8ABBA6D0DB
                      C7D9D6A1B869113DA769DE42F05A55C62B7CEF41B9CA2B477D8DE0E69DF16F2E
                      2DA401EEBCF3CE73CF3D975F2CDB0CF1F5A7E1463D73FEF9E757768410A90C97
                      2E5D4A0E60DBF5A71AA8706677252865B39C52E1A379C30D37E0863C14A93C78
                      5A9BB22FBEF8739A0F83DF227EB17133898F7E5C1C27C68ECC7C24104B7A38A0
                      9A0A5AEDF855AB8C5FFDE6D3BBEE87898DBB3B6A5A8940A6B3356E445C887892
                      6FB1047438AB5CC5D30D2B8E30D0D37359DB8E24C767BB733831725D9BBFBA3F
                      3CF9D8C1D131D29A375F9E3C1DDADB20552B45E4486F673E99905C47E6BEFE42
                      A38AEC6FA5C39683C8ACD95D9F367DFD9B8BD66E85AC23A592A398BD4F0ADC8E
                      A53E4088AC16C0D7646BB48CF054CEA30002E9481248C253FAFF2B0A81015D05
                      11ADA320823455AB80D05A2AE0C01A851AD5D7A26A246BE6FBBCAEEABA2A2B1F
                      89AA6E7B5BB3E4C2F38FC381FB24A5BAC9E9F52BC133F558D00A85532A2B01FE
                      6459BF71ABC1F299079E2A8AA56B88E9153B78BAE449387761530B8C9B9E0277
                      CA1FFF3B73DAB9AB952A48D54D80749EE57091D9D8F86E8C5CAF251FDF5B295F
                      C8F8050D21BFA62302C7A1ABD26423BDB55B51DA6EB805FEE907B3D3EB3E8CE9
                      2067717099573BFED6C6BB258B362612F318D1402EF8237C1AC3879BC5327EFC
                      F84D9B36F13FA95AD4F2F8148AF11279365E7DF5D579F3E61113905CA4A1E5BF
                      A57585AFDFA2D2E1A98F69E1C1358C1C30C41EE1878E8E0E3A5B1CF212155A2F
                      3F47DCCCEDCDA5B8191B836D20858E9FF1CEB56BD78A0417DCF62F5EBCFBEEBB
                      CF3EFB6C08AC98F8D00A641AFC41A180361C417C9CC6F490C4F928E462DEF29F
                      FDEC67E442B3938587BEED0ADCFCF0C30F233206217318378173423A9258286B
                      CC4E1631F0287488C13116A7737EF6D967C991830F01EF9A1834869F9B9A9ADA
                      DADAB02F381CA59B552243A0D1E11DA4ED2B0C0E5CD2E36838B803EBE8D1A3A1
                      9861B1ECAF4670F3F0E2666AC6BBEFBEBBDF7EFB41894F73D9E742D1036ACD9A
                      3573E7CEC57935C8AD0EDD5336C1FB760B4DF2D75E7B6DFEFCF9FC30A7F27371
                      02E38C3AECB0C350B674A554FF1353D0108CD09C82864F8610634965818B22FD
                      C2E1E6D2820B1CD12A339A330F1C3F129BF2E5E79F5877D409EBC6D5367A5146
                      892F59F95822E99811E6E4AB665DC564BFF37DC35699D157937A73D9EA9A715D
                      7DE9545CB7B39B5A3BE12F0F1F74F8497EDFEAD793B5D0DB0646C488C413BD5D
                      9D8832551F06755CD13F4EE0D810ADAA8686FD325B2353663C95EE83BAB1B2A4
                      D45BB94870809C668C77CCF1DAF0FC3AF0F0528663D8CA25C0CDBEE4E3BE010A
                      2AAEF69EA466112B6A56ADEA29922C996E564F42216FC956B56B6DCCD870E375
                      B517FDF86B50F810BAFB3AD35BA3BA2BEBC1F3155083FCD5C0D2A330733AF922
                      33A76B99920FCACCC68FB81E3FBB51497640B1330E548D6F006FCEF8517F69EB
                      85FAA684E5C522447922339F0E3F8877042F02B2A5AA59D3CA2356569404EE18
                      2C2B870F492560CD86B6E30E857BFE70404DEAD36C4787E643C4975CD3C7ED90
                      A3E234D1FCC0DECC60BC6D28AEE6E01E6304370F2B6E6E6D6D1D356A140486AB
                      E9D3A7E39F1419C67D187085A0B596138BE2455C7157AD5AC535173F94A7142A
                      15ECC4847B5E7AE925D4B0109CB0E34F788F48478B3E7F433E67FFBBC0CD54C4
                      8C62C71C730C412E5AEDA8B5A184825074DE15855F590E21DB0C7DC681C6FAF9
                      A6852F901F7CF0C1DE7BEF1D722A18C2D4DA45B899DACF23144BB34870D84A37
                      53FB878BCB59C4CD5C8CE4DC42FC80226EE6689527082C150EFD89BBD0C58B17
                      8BB8592CE25BCF6D8A88471F7AE82110427E4980A55CD1DCF59CFE252E17C4CA
                      9405A94219C1CDC38B9BF90FCF39E79CBBEEBA2B24E4B2CF85E2CB7EFBEDB79F
                      7FFEF9A5B3BDEC9071FCCA735DED502129E18873355E995C5C0D0AAA265C4ADE
                      7FFF7D54B650CECCCC5FDE21880E8A2E52DCE632626FDE61DC8C3D5555F27161
                      5667264DD7E9C942FDACC397BCBE72EF833635554BBE565370B4545C332D4773
                      A38EC488D17C291FEC9B5CC699ECB33CDC167E2D4B4615CE12CF90F36D1BD387
                      EC07F7DC3B71FCEE7AD747AB6B1B226E5AB210B0A936CE56CD1D0CA6FD5B5164
                      68E980FA46DD18FB8D171F6F39E5E4B75A0AB0D75E13DB5B03C82BE53CCF04D9
                      67C0D5AFF2D8CE331B20D9C1E266D953992784A439720EE1A88258D28B2BAE6A
                      B9F9AA4424E3671DBB20E5A0A3CFFCE179F0EBDBCEF53A5EEDED588EF83C12F3
                      75D5F5DD807B83253461F4CE949ED1915D49FADB4C0AA0B3C21C5164E6A12CDB
                      5104D79DD97CDDEEA3C06A787E51FB51C7B736C4E2F1EA9A6CA1A06B12DB5222
                      6C67096702F23AA70A14CFB65A745DD5B51ACF8DDA05CF064B56211EEDDAB0A1
                      70DD8FAAAFFCE5E16D9BFE187521AA301A137C7800DBC196985F3BA81E56A499
                      116C21CE8D11DC3CBCB8996C75A88B11EF726E070A17431D8D8FE007C7047438
                      26983973E6F2E5CB43B58910A1F4BC9887F1615FB047B06DA229FC492A95C2E5
                      9CB3D9734FBB21E8ACBF0BDC5C7AE0882D1193E212D3086F27DEC68523DA7E2A
                      C44772DCCC036BA0B88470142EBA9843319C88E76E18B27F700837EFBC7F336C
                      BBF4D2BF4456408EF8B4E3E2065422EF2B4B0736B442B8872443D63810200537
                      C885C89BC9E01DF256E2834EAF09B97C90C0070294F2B614CE58F025A564E954
                      4496E80A05672CBE68F4B2A3C079A69B819E0823B879987033DF7451032ADC29
                      0B1904CF3EFBECBBEFBEFBC20B2FBCF5D65BC5C381524767BE854385836A0786
                      0AF8F85699BF32BCE6ED96050B16E07097F54A1A72A119CBBB43950FA66B23B8
                      39240E869B3D46371BA412D419D1466F166A6734352F875FDCD072CF1F2055A7
                      459293C1F502BF315DF1824C830A82C29C2F5BB26BC8BE1C8384054E9FB3295E
                      5DD5D125C7F4585DB466F58665FF7D5772C1F7BFD2F9FE7375B8712A24D2BD99
                      58832EAB929333078F9B5946C3046473A04BF8AF513DF3D49BAFF9DD4F7E06A8
                      F3C68C6BB26CE6CAC06CB83E4BCA6783010A42D342E03C3DA86704F947D86A69
                      438C9989D5B40FAEE24499CFB5826BA1D1D1D59A8839BD2DFE9EB3E0EDB78F05
                      7D7DBE65836DA63503F03FC7649420118DF181303DCC0072D14F43620424324D
                      274F761975B51BACF3A03B3A7EDB6D39B533F65CBD2276CC31EF6C6981883AA1
                      BA3A9EE9EB53D48223F9CC201DBCF2018D5F3583DB4A97AA788E1F3311DE4B5A
                      2462B08CE2B9957E0F3CFCE0C4C3178C6F59FBD7A404F12A30BBC0D065075779
                      29F0AC961C44C80C37DB2A488683D07804370F1F6E16951AA13A31F1B2B884F3
                      D59A5206924EDF6FBFFDDE7EFB6D08D67EFC39999F799B4BED941CDEDD78E38D
                      4469C7E12355884AAAABAB8BD033EC84671EFC9DE0667E0575144A8F2E727A0D
                      6C06B6901ACCCDFFBC0B08DA5E79E51528B1268604CEAFF3AEE1CFC96F811AC9
                      91014FBFC217EC1D9243D9D9B54B71F38C193356AD5A0542386028BE8A8B68B8
                      A0B398F7849295F08EF087F269B0FBEEBB5372B8D0F64F0CD2E54C0BD75C730D
                      65B8A8701A4EDB1B11ED3DF3CC33471F7D3461416A5588BF3654C8144D2804A7
                      134EB9C124F78611DC3C4CB8198AA34F89E241504115848F12C0713FF7DC73EF
                      BCF34E112B97E266F1BCAE54C90CBE70EF0EA2D8A78B154CCE28259A81F82C6C
                      03DD96C964880694645836CAA5EC60852E8A46016E3E1FA45E1AC1CD2171B0B8
                      34AF98FE5AD755DF730B968FCBB456B7C7BB6FC6F6FB8777A32A348C9B95CB31
                      76714667E629E0475D44A54A8FAF58BE1B6739085DCD975C3D9AC9D879C7AF02
                      5F4F44EA36367F7CD03CB8F7CEFDA6EE2BC3FAB7C0516DDB9193BAE558CA0E69
                      5DC47D49E8EC80BA6A94B8DE972D24A79C70CE82E7EE7A243F6A942EC9350A0B
                      269464CFC156B9CCE82C072C7983F2D360D563BF3C54799AE72558D613B90764
                      5B76A20C8CCB4C81A652B1F56B5BEAE3F0CAA2AFEDFE653BBBFEE588A65BAEA5
                      29CCA7D932D9737499A577097CA7A57EA0E9CB926C216E66B81F3427C899E8CB
                      2C821145AD382C7760A42901D179375CBFF48A9FF64E9A94B40A639D422F2348
                      F70B9264B1603EACDAD7025795140BE6D432BE6F5B2E6E6F244D8F6A5AA4279D
                      EBEB6939EF24B8E1FA2FA5C66C4E77B5E093A271E86D05445F4C9931BCAC07FF
                      DF0A7033D6A63812F3501FC1CDF4EDCEE366D474A86709AC708FB1DFFFFEF767
                      9E79A6781BB7311344201549CAF1924B2EB9E9A69B20582389CEACC2A2C23520
                      4204040A5074AB0D65C8E3B8192F964D6B3298F277819BB958E848B4ADADADB1
                      B11184184110F025411CF1A0F68A2BAEB8FEFAEB792550820BCB8E050E25F1DF
                      71BA68FA2D3765D19F3B1F4EB7EB7033F5F497BFFCE5A5975E0ADB8643857C46
                      458A5C180E933307A63C61213E9A437610763803A5381649A0799729AD316C7B
                      402F321EF0D040AA8426DB9C397308BB6FDDBA959C957170511A15A03314396A
                      9A9B9B274E9C58B9B323B879D87133F7B6BFF8E28B7FF39BDFC0B611A565850F
                      418029EE005F7FFD7580F2E1DA044FE9CF638F3DF6A9A79EA2EB4333F7F249FE
                      E28B2F923F58E5F10A7DBBEFBEFBBEF3CE3B3B336AA50567024A0955166DF5C9
                      6F70BB569511DCBCDD5A19BE736C884FDBD74D4766EDF5DABA8D90484DD46239
                      55917CDB547CC5F793589BAB7532275CA7D6F735E68F663B550D7A7B775BA23A
                      86B0CFCC6B8988B5B9B9EFA2D38C9BEFFB0A74BCE874809A903C5FCD9AB6B143
                      6E7E7E40A096875415D8794867A16EF661EFBF90F9F155EFBCF501B6AD91617F
                      ECA247C88FB296E883EFB00F2C178CEF29929B6279B0952E6622765584BC1E6E
                      13C04E1A4AEBE6CECB7F023FBDE1D4ECCA87E2293F97639267F65F35F0659682
                      B42D01DF0883D20C683A1EF3B2C071607B1283257C610CCC78A7EA25242838B2
                      E568101B3DF77F17B59D75F6968D5BA1B64E8F5735A45BD3C9AA84E5FA8CB1C4
                      CFB268422706BEE14A065600AA62D9BD8AE247221A8E322AAF9CA9E7B21D2FFF
                      9FD1077F6772DF8637748D21721567430E519A62061C283E044745849B195256
                      1DDC548CF0370F775C60E9593CE729C3C5189764BA282236B119085F7EF4A31F
                      C1B68C01DC4943F41F28B5378B7E1A5004409C6C8B0CDE9CF66B87CADF056E0E
                      4ECC98472C19E645CB10CFEB813221A652282EB13535353CF7C1FDF7DF7FDA69
                      A74145DC1C5A3BB9DB6228D91EDF1DD16AC109D786CC27B5EB7033F771ACAFAF
                      C7D68A2486344BF9C8E226F08C33CE809D7094170B3F42B9E79E7B283433447E
                      C2879EEFFD40C02EA5FD12712165870991349722E6D0D4158338CB064BF18941
                      938D3F8E12468ACC7DA56504370F3B6EE62DD9B871E3840913A09C83BEF87432
                      DF52F4484862A1B500BB4333FFD5575FDD679F7D60E72262B9C939E4C43F50A1
                      ED22DFC1FEE77FFE276E0C86F668FEBE947E18B2B46104378B85AFBB9E8FC04E
                      31736E7CCC2488575D71F98777DE0E793BD530219ACEA43545D73C55F670B5F0
                      7CA5CF65341229C9371449769C6C54D66C27ED19A6A7D8054FAF89479A3F6D1F
                      570B0FFDBEF1ABC736F91B574ACC1E044654323D5F0A2CDCFD09AC896062E001
                      65541512D87D10AD527CCB757C5D9B7CDCBDB72E3AEBC2746D4C56E25592C2FC
                      B48368C3805AC825F03A18E8CC1229AA60FBCC17A22E7856AFAB58780D37088A
                      54A519E686752D471F0ECF3CF30F5078075CA7B031A7D5317CE9043A5955FA41
                      B3AA21CE2663B32AF90E8BFE63AE1A44AA21B105D30DA2FD3C0301754E2B4413
                      35B271D80F16FEF1B70FC0D4A9E37A7B73B66FD746E2F902025CC659274BBD38
                      CD55B70A3C83B96DE02FE3552CF9B696550DDF2EE05EA2375155ED593D7FFDD3
                      D4C9FB24DB962DAEAA024D062B0BAAAC6809236FE58288443653658999BA9540
                      240E367224CFF6F0E166C201DC0556CC0647B991218053583F2DE4DC1917FF15
                      3529AEA6B8A6D2678E7E88283AE4774BCFE284B5A1606D9E9B5034790E4D6986
                      7E45A7EAA1DC789F3B6E1607DADB36D355474787E8BACA4F6045C33C7DB568D1
                      A2AF7DED6B65DBC66934A08853C93D97C01F6F30A5D2E5E1986FBFFDF67EFBED
                      378C19434E3FFDF4071E788084BF93B899402A6F18B180D3388632F5F0DD97E8
                      76B2931DE140841B9B496E246ACA2D4C6D98366D1AF990881C023425E81E3154
                      9126C6AF7EF5AB4B2EB924849BA970A1F17AE8BDA08B88B6BFF18D6F506DA5CE
                      510497C9F99B1E871B48C4B288AE60606367E8B923B879B8703314C9BC41D8E5
                      569646A8886485BCC8C5D445F3E6CD7BFFFDF7C5760E8DCD93BF8CFBEEBB2FB1
                      52566824CDA25086948B2EBAE8E69B6FA6CF04FA297CB0F26B489B6D322A879A
                      FDE69B6FE22EF1F9E79F876D69D42B9411DCBC9DE23383A8AA1462108D409397
                      CB4CDA6B8FF7D6B6426383AAC5ABFC7C0C11A104059FB91CE0FF191E44113106
                      BFB2745C2BA120293957F6B2015B70526BDAB07EEDEC29B074C999A0BC62B6AD
                      3502BF054957BB7B1D7C0279894422A8C51C9CC36544EA29ACA39E865ACB60BC
                      1F36339AC6622E024B6DF677FEF19DBFBC06724A33124D9D6D3DB589982A5B92
                      6B5B9E210D1A37E33324B520BBAA6B4755D03D256DFB9E22AB20AB66219A8C77
                      B6B7F43D78EFAC6F9D1A49AF5D5C15D3A1DB72E3412F0883CA813B882713A91D
                      EA644F662817E76490D38539274734E6C6D1BB15528DACC3960B79035263FFF1
                      A7972CFAF9AFD2755528815AC7D558FE17371D8FC70AF918302F914E86E9DD14
                      781187F54B717D94B695AA71DADBB68E6DDC7DE3FA6539177E7FD77E677CCF70
                      37BF66B1F50054C7602902C162ABA26A4B3EC910C891440DBCBE9DC0463E829B
                      E9DBE1E5A183129B25E5D8A3CF7C8D11D37050DE26C25E8F3DF6D809279C0045
                      15C3D786B2857B5113F2E00A37849B79E18023544FC8674E5CCFC4067CFBDBDF
                      7EF4D147E9B3788ECF81E3E78E9BCB96279F7CF2F8E38F876D99C2C80B997AC1
                      B1C8F2E5CB67CE9C09C1FA8435D39C1149EEF832436702E212C219EEF846E837
                      BFF90DE5C1214B33359B3E539E33EE460CC54433A1D111D3A1DF77DF7DDFFBDE
                      F7A0B8DEEF246EE685C6FAB7BFFDED0F7EF083D0579CD782FEBCF1C61BC99D83
                      DA4C3F24FC249E8A107D35FD49EF5DA8197CF8503E644BE38969B04EFACC47E4
                      CE3BEF3CE79C732AB45FC4F1D498B7DE7AEBC0030F846DDFF1B2208917BE8F7D
                      E1851738BF0A827B92241F65FE20EC2F6A127CFB705706C1F10E4E063A64285B
                      4670F3B0E366B1479C835C3CAFE06106150ACFA4CD776E7C13458E73BC8543DE
                      2EF21AB85D9C9F47418907119755486F2388FFF18F7FCC4D2A54F01ED4662804
                      BE098462C473A954F15B1C2C9CDE089ADF78E30DBCB278F1E2B973E7C2E0ACE9
                      23B8793B052B547057EFC67A7B33A9BD22A0EF77E2612F3FF5124C9CA8F65909
                      C949E0C334E865393B5CC3960D1F22D80A4F9654DFD5FDBC524C029DD71C1689
                      E6447A5ADBAA23F0DDE3E1F6878F849E57721D054502D7063D21A9BA51C8165C
                      F2B10E7E58E6D50EC2EC3C462DC72C1FAEE7B80593594B93A0D7CD78E37F477F
                      E5C8971503EA468D57F4B895C9F9858EA8612012462C3858DCCC325FDB41C7A3
                      CC86AC7A887A0382694597129B5AD6FD70A1FCEB1B8FF1DDA772DD10B702C60C
                      CDB3FB79A1C98D1A1F448F234BB314C04D8F7033FE912F30436FA24987562BEB
                      40BC290555D3DF7AC33AE5BB4B376C81491392B982AA4BB5B22AF7E436A98622
                      B9B5AC6A29CD12B338491643C38835A4883EBAA7A7ABBAC635F369CDAE73CCF5
                      ED0558B7EA1BE3EB567B99D576C052C270B3AFDA8C07CF9714E628522492EE6F
                      25A31A944770F32EC4CDB02D74DEBA75EBA44993502F73C700D178E91553C222
                      AAEBEAEA0221889B1BBD083BF26AB95A5CB56AD58C19334058B9433AF7F6DB6F
                      A7D4003C929A2A11C937B8F300B97310744389A13E45154C086CC99225BFF8C5
                      2F68B1275CF877819BA99B58C90D37DC70C5155788C34D9FB9CF03B9BEE07E63
                      FDFAF5DCDB0F1F845302478DAF9AA1959E2E8A705C6C7C7D7D3DA53A17CFFD43
                      3594850E7464417392AE5C7DF5D5D75E7B2D7EE053685870B388068E3CF2C845
                      8B16619B110B868CEBFC597C7CCB324E94FAB150A6495E83574C1B8EE5F1C71F
                      A7AAC4C2672F6D4266CD9A85F3A1F2F89251996AA6F70547EDD8638FA5B758A4
                      EBAE708ECFCF4F705EFDF0873F3CFFFCF38902ACB4E08BF0D1471FE136E3B5D7
                      5EA32B1C9F5538821FC1CDC38B9B69A6F14EB5B6B6363535410923246C6B9E18
                      A86134E5C43717EBC1F943E4D0620CEBCE08100BAE021B366C80609A719E44DE
                      00F2CDE06497A1B71BCB49279D74C411471C72C82193274F1ECCE3502C6BD6AC
                      59B162C5CA952B5F79E5159CBA623CE2C2850BEFB8E38E41B67C04376FA704D0
                      4A5218DB83E4C60B4A6AFA47EF347C7BC1EB2B5B60E2D871D9828CF31071B3A4
                      BA92ABBA2CE9B68A4AD15225D5B3A37E9FE64881B78366C98EA39A720C9764B7
                      656D3BAE724FFC9F69477E6712E4DFCC6ECE201840989ACFBBAA0ED164D4CEE5
                      1943735DC2ECC98437753E493980B57E44D55DDFCDE7F22CF44D1F370DB2930F
                      3A64D11B8B418F35A5AA53855C2E0276D4403541E075B092645C172CD188ED33
                      DCAC636F2C7C5CA190D4636B5B37BFF6E2E4830E9DD1B1ECB97A1C7ADC282A51
                      47328325C29798AFB0CF7133D6C368303CD7978539C41C48C050C1EA052DCAC6
                      4219350BBC7F98B3D72D1FAE84FA44BCA1AEAEABB33B116DC8835DB073F144CA
                      CC4BB2E42B72DA670CD05200EDB112CD0743F224452FE88ADAD66C46A0F3EC1F
                      C28DBF3E103A3E817CAFEF31CA0CCB35A480939BD9BFA5B0898567BDF14770F3
                      AEC4CDB02DB3ECABAFBE7AF0C10743A01C298C89EC7062D01508D6E896961662
                      83264D2AAAECB254687803EA7D9E57852BACF1E3C737373783B0D2501B424DE5
                      CCB5653BF2C20B2F9C72CA290401B9B1E4EF02378BA7ED679C71C6FDF7DF4F9F
                      69B720F29C7038826BD2DAB56B6100129290D3C51E7BEC810DE694291C1C7074
                      CBFD64F003677116DD48B0A764C026FC479D150708BB7CD965973DFBECB35CF8
                      A24C60A7EDCD3825B0E3882F4326678492580F3F88C0266153114FE074E28819
                      3784384BC95F4574AF17672C07B520006BAC64FFFDF7C7494E1355B4B88B6DBB
                      E9A69B2EB9E4920AD4B921320DDE5FC2735C3215C816781111F6942953709775
                      E08107E2EB43E382C878D9B2654F3EF9E49D77DE197264A7C68B86F9D232829B
                      871737878241A17836C26FE01BA1CA7CC920ECA678822A542FC4584737900E19
                      32F9BAD8474EB988D2C086D10108BE53D854BE0089C4795C6E083A117A5225B8
                      4F3BEEB8E30E3DF4D079F3E6E13E1F3B8E0381BFC507E19BB265CB16DCBCBDFC
                      F2CB889271D1E1BFE2A380F31C9F8232E1EE6414DE3A98D11787720437870BAB
                      D304A33EDED79ACD9A52D39C8BCE3BF9E63B1E86A9A34767198F86AC42560AE0
                      5610BCA63A8CC54D03D9D4FC8CE1688A53EB791157F62DC576A33955D5EDEE78
                      57F79A1963E1D1FFD96FCF03E5BEF56F25345C39A45CAE108D68A863FB720585
                      B147976D0D73B79015CFF580A533D4A548C447BDE1DA90ACD56C65D4BB1F4A5F
                      3D64A3A4C46AEA4631032B583143CA9AB634683E0D8945EC293AEE043CC4DBB8
                      8CC57444A6D835B3ABAB2BFF4F27A5FEED1775B58D2DDDEB723549C6D5E7F69A
                      12A3E30B64EF29819FC636966629C8B04DF2667E110A04118260C8603A60D4A5
                      409D73C1C2B7EEBACF8AA7A4EAAAC9562E6B396E025FF54CC655B554AA36D757
                      C0E155A45C903EC5765970A1E283E2BBEC40DFCD67C78EAA5BBD6A0D6287CECC
                      E179EBAF7ACE922C361910F583C7F63CAC21B2EDFA96D04DA1788AAF8CF837EF
                      5ADC0C45A5496B0C67140E8540E107C228783357F7643C1BA85A11BD914FADA8
                      FDC9078E5BBF366DDA44C6B31015285542788ED7861F509BF3CC58A85811DF7C
                      F0C107FCD12425BE0AFE3F8E9B21F033C14A687D1553397289F19D005FFE7922
                      8CD2F45A50DC0ED1182D58B0E091471EA1EB21BB115DC4FDC6830F3E489F796B
                      B9BD9FE3CB814E81C95557BCC29B3D5CB8592C447ECC5D1A08A2F1FA69462168
                      268374857AC8CB9CCF0D6A09B68A1F074F983061E3C68D2254E505EFC19F631F
                      8F3EFA684A595FA1F08802EE6841A6FD503040282B506929E510AC50707CB142
                      7C4FA9FDA5B4D3A5650437EF0A7B3308539DD8E5A0E890437216BDF3CB96D011
                      043FFDBBEFBEFB4E3FFD743AA3DB99E010100C1FA4B5C8D58D3321928F3E77AA
                      A69F94F2E251111D3C065FA83692734814E48106C568870A1D1CC1CD83A81797
                      589F9145C464C37623DA94196F3EBBECA20BB31FAD8151E36A0A6E5C6269F54C
                      59368303E6288ADC09ECB5B267C9BECA78287CC3F562AE822D48A7CDF4C48913
                      B634AFCAF7C1D7F687871E3AB47E72B66DC93BA92A55337494616F6F4ED5215E
                      13EFDE9A4D244A9AE9298C84CD679669CB613E06F1680C11743AEB203EAC9ED4
                      08CA81636A9E444D92AC6D548CDABEDE0E5D53FEE640B1FDC26CC636482C3505
                      F4B91ECEF2287642762205B3B9A307D6BCBB60CA3EABAD8D1FE8A059BDB69284
                      9C05B1400539FD3CCD4CB69EAC4A10B40FFA193D103133CE0DE63D0D661E2231
                      39ED78C9AA5AB5FEC0877FBFF4E43337A5227AAA2162D96A36A3D425AB7DA92B
                      679B8ADCE0382839D66DDC7A20F6F5248749D4D73C5F4E24E2EDADEDC958D42D
                      74A85938E658F8AFC78F753A9EB67A18B387CFFC973509C17BE036EEB3FC2B76
                      BF8B066B6DE0CA0D2CF9B6EC7ABE32C2A7B1CB7133085952B170935ED9952664
                      1A193D7AF4962D5BA06892E4F14C62D4087EC635F87FFEE77F387D125FBC4587
                      4E5A482058A840F063AEA0283FFEF8E3850B17126113046A17B536A11CD122F2
                      FF386E2E65E1A52E539C2505CD505F42F1820850101383E0115EF6592FBDF4D2
                      71C71D4704AB3C473455C811184FE34C235E4AA95116D370974DD8363B34B74C
                      0F0B6EE6A487F4E7EAD5ABA74F9F2E369EE38F10227CF2C927B1E3F4B9BDBDBD
                      A1A181A818C990169A571C22806072A35201F691B752575717ADB803951084E2
                      F40538820834A188FE2BF32B972DD4771AFDD0DB2ABEBF1C1C54803523B87957
                      D89BC57EA14EC07D1D5EC7A9482763308830419AD8624A799CF68895172F5E3C
                      79F264C2CD2269CF8E623ED2543CAA18FFDDBA752BBE62344F069F03858A681C
                      A1F38DD229AD0585931DF1404331461645844016BB73EBADB79E7FFEF9500C90
                      1DC1CD3B6B6F6689ED3C504D558BD7E6736DD1DD0EBFFEB20F7EFAEFDD634763
                      7DA324D773C154211B104057FBA04AB20B2C628F51B7C9BE27E3F3DC5A1F3FA9
                      8E07398F39571412905ABF79CB3F9F0DFF71F34920ADF03B977575D9750D09C7
                      B12CD38A35269D741F4B3E186AA7C772DF1510AA2618FCB372F8574491655B41
                      F80AC9094970675EF92F8BEFFEAD9335A169C2CC9CD35DB0F28612F5619071B5
                      7E607C65C94F643F1B907CB0503AD98D66739B931158F9F171F1D1CBFA96AF49
                      260C2BEFD851575518B132FEA03F22B01F8F0625981252E04FAC062D90598D2A
                      B80C9AFB554AA461FF979EEDF8C79396E6B3A019F5912A4436B2E7246291644F
                      665D3291D4D4DADEEEBE98E133F23D2FB04EA916631FF115E6B1A2CB665F766C
                      7DD327ABD7CC9D082FFFEFB1A9D4BB20B7E4FA58A3112F07EE22C1BBE4324A6E
                      4D66585A2E427997DD1563238C83A58CF0370F1B6E1E481D90AE24420C523757
                      5C71C50D37DC40DF125E11B1B298C70ECB11471C4151CFBC949233AC5CB99242
                      D9442F5B5A0F50CFBA41C13FAFBAEA2ACA0751B96CDEBCF9273FF9C9A38F3E5A
                      F65C1B574A6C737777F7DF91BD399476848B0B84AD0581AA50E8D89B6FBE79C0
                      0107884B7BD9C7CD9933075BC5CDFC046B42559D74D2490F3FFCF0608470DB6D
                      B7FDE217BFE046711A56AC90A721E4F86F18EDCD8477E905C1A5946219439657
                      FA53449FFBEFBFFFBDF7DE3B6BD62CB12A6C09F95D1050169FBE76EDDA134F3C
                      9168927911A30071DCF15774DE827B860B2EB800B6DD76962D7CA6F1F026DE7D
                      9AA57831C77843FDEDA228B155D8CD1016240F2B9415499B9EC54F872AA42784
                      11DCBC6B7073881211A7E28A152BB8C346A9F35BD9426241F9607750CEF82B7C
                      0189DC3364631E32E6E3DDA40FCF3DF71CBEAAFC5B4E6556616B27F26C501B44
                      5E26BA484ED8743F6506C03A4374EC21FBFADCB973718700DBEE6C2B8CBE3894
                      23B8395C18595A8CE142AB03345F73743B326DFF0FFEEA9CF14FEFAF5C879BA4
                      E9AADA2783A5802D798AE727253F821F1C25E7AB694FCD4B4E440259B3138C0E
                      4ECA1B517563774B7575554C363636B7EB00575E58F7D39B2681B43CB70E7565
                      4449463A37F7A806E81AC84A8989D8638C69058505E32511E5399E9B035957FD
                      B89BB7A5822C19D16976DFE8AF1EF4D2B22D306BD4EEF9784B3A9FD659EE9541
                      C605F6E366CF9615662D975D2F63BA051512ED1DEDBFBE41FFFEE97BC69535E9
                      CDBD5535F892293903E72FE8264B154E89BC3DC2CAF0B7A7C99473DBA72B2ACB
                      04EE29DD7DD99ABDBFF2F25F969CF9BDECFACD30AAA63A59D794CBB52A3A38B6
                      E6485E3ADDDB505BEB980E2381F64C9931F5516ED87AF24500004F1749444154
                      4183A5FD661EE55EC1EAA9AB4AB87D564767D71557C24FAF3B2EBDEC85AA3898
                      7E9EB8E65863106EFBCCBC8C6D20872C2500BF7EB015F221126063D31FC91738
                      ACF9026100F32DF151900A23A0BCDF7EFBBDFBEEBBF42D2932BC8EA8889F598B
                      2C6FA5D11B5C0B731D74DC71C73DFDF4D3A476C936C9E3E1C40563CF3DF73CEC
                      B0C3F6DE7B6F443C63C78EC5FEE2A3370765E9D2A508D0972D5B869838643323
                      0B37F14888B5FD5DF83713E0A0D1E7B88A43435C5DC8C6CC1FC74D8C3437B031
                      B8188B8C227CCE501C21368F1F10872CD634881CE5D4D7D71F7CF0C1385258E1
                      B871E37015C1DBDADBDB5B5B5B11CABFF0C20B1B376E7CE38D3742CE39224F76
                      088B0F0B6EE6E7B3624C3DB6F3D5575FA534EF58B3B81F0B2DED78CFD1471F8D
                      3B87D34F3F7DB7DD762BFB088432CF3CF30C6E42F0B5E2409CFAC557F1D0D4E2
                      E933F93972E52372D19E07C2CBFED24B2FE18487411C705367797E38BAA80465
                      BB0E1E3C54B742FCD9086EDE157E1A7410C7A1F3BFFDDBBF5D7EF9E55074C7A7
                      DDE0E069E9F87B84EF239DBA84FA3E34B991E443DBBFEF7FFFFBE43FCDADE3E2
                      5BC60B1F5CFEEE87286278C6592872549354F970D0A3E9875C278B8EE074AA83
                      8DA4093C507F4770F3F60BDE6847209781C658959FCB4A1ACBBC9D9A75D23D77
                      BC7CF6792DA9AAC6680CB1968408537175CF49788E8258CB516C57EFC4C9EC7B
                      9AE4E38F22B2EFE1DE1C0178BC3699CB65CD823BA6AE7ED9CA4F716CEFB801CE
                      FA97B9E0B95D6B3E8A27835485F856BB92E95992DFCFDD0681B1D6F7745FB2A5
                      A49FEF8588CB7247FB8EC7528B6891AEBC29EB7275E34C884C3962DFA75F7B0F
                      2635EEDEA9AEB53D27023B869B15452FD8A6AA6886AE98368E7506617C7BBAF7
                      D3A5FBEC36230F5DCD5EA64F8ECA859CE726193946520DDA560CB2F33D960445
                      F289348F5D91DC8029D90F482C3CC6D6A7ED76C88A0FDEFAEEE95B972C833DA7
                      7FA9ABA7D9F65C66B896C072BD483C81B33919896ED9B26554639D63A699A789
                      1BF77D8D7968045898052F1A52442BACFFB4EBF8C3E0BE87A657C59A219D7432
                      BD7E14F1AEE5E3360641B7EF82D40F7571E8A5C0F9BA686FC6AA8AB90347F205
                      6E8B9B49370DD9DECC71A4789DFB09841C06B83AE31059DE362F83E8E276DA69
                      A7DD7FFFFD5CF3965A4079F28810B4E228F0FFB6F726709255E5D9F87BCEB94B
                      ADBD54F7ACCC0C30C300B219015110549024FA37C63DEE7EEE1B685C12458C5B
                      5C10D144C55D831AA3F1EF8A4800252246F91441904D19641D669FE9EEAAAEF5
                      2EE79CEF7DCFA9BEDCE99E697A069AE9C99CE73714D5B7AA6E9DE5D6BDCF79EF
                      F33E2FECAC963BE28823EC5D397CC493F5962D5B666AA9AD76339FB6651B86A7
                      66FC96CCC1CD3E664C3733D1CBCED173D7053E286F46DE7FCB2DB7C01EC653B3
                      37E7C72D2B7B9B1D06D944D82EDBC7830F3EF8DE7BEFCD7767E64185AC1AA9C3
                      EF7EF7BB6CF06DFB338A691D2AB24F2D5BB60CAF91F64E2B7E238EA4750CCCCF
                      9AE56A96B4597F621B3DCA27D7E7199BDDF8D4A73ED5A60FEE9DBE39BFF65BB2
                      6449D6AACC2C2F0BE3E5453B16AB56AD3AE49043D6AE5D5B30C03623AFC243EB
                      BEFBEEBBE79E7BAC8780C54C558365CFD99F383836A532FBCDCED28BAC18B83D
                      9ED5CEA6D430651262BF17676796D4BD5990D9AD647FCEB40C9B9D3B4E9303ED
                      296FB60BC5FF1DBCF91FFFF11F3FFEF18FDB8D0FC5A4C29E51F3A7172467279F
                      7CF29FFFFCE7FC97F2191EDE79D8C1CCB7DFE6BFDA48813D213F141B8D69D984
                      36EFD036F8894F7CA2B564C1330FBECD4655F0C92E0FD16942A9FC793E2FE2CA
                      B664E931D9C921937A676757FB4BB415E6A7F993CEFCC5E5C7F9A1F0E687C5FD
                      FD2162BE7833BE33E274BFBFC84AAAD5D34C896A19FC2A04C73FE52997FDF206
                      2857596570512C916AA6D5C2E25E27110172B6841AC4620E2963465BCB38A969
                      B526A33925982AFAC88075AFDB1E1BEBC257FFE5E857BDF11028DCA536DFDE1C
                      83813228ED69F023D9F5CBA67E754C9CADC04A5A799A4FDAE6EBA9D96429D35C
                      7091B612317CE85FFFD3DB2EBBF053C00B6B8265713B6A5514F26B35D71E53E5
                      1364CEAC95B668D5A517157DA8AFBFB3CC60B37A0124BF6ADEB5D9D3BA38CA3B
                      7555F28B5D9DA820C5C398F82C7E50E37709892B09D6557E42143A805E074402
                      A54205E216144A70D0F137DF3AF1F2BFBBEDA63FC1DA65AB25D4265A7F2C0F17
                      652229A82C9158E3DA2331D5A87C9CBA42B9599F6C5560B1D6050D81178AC9B4
                      C143D96DD42B5ED21B877FFBFCDAE7BF7159EBDEFFC1DDD74606A3A8C1585F2E
                      C2A7A63A4B4CD4467A9222A797D664DA032D0F287D73F6737DC31BDEF0A52F7D
                      09A64E28794668992252B74CD43B7FF8D39FFE74D45147D9E7B625D9E96C668C
                      014C6EDFF2E5CBF3D64BF6BA95F5EB55AF7AD5D7BEF635FB667C03EE24ABC461
                      43DD36937A66482343565518BF343B0B678DB127EEE1E1E1CF7FFEF33FF9C94F
                      6CDA5CD6C8ECEC9CC59BB375C25C8A05D8AB0BD277643937DF7C337ED05EB4F2
                      D41C4CC9159BA198ED7C4F2BF0E5CFDAA79E7A2A4EF44C4FBAAC2FB66B4F7AD2
                      93AEBEFAEAD9779BB9685BF29D6511E5D5E4D9C26C977BC05EE008E007ADDE31
                      EBF2B4FA32575E7925B2C00B2EB8205FE9306B70A6EAC9D311AB83DCD33A8578
                      BC1D7EF8E1F69A97B18A69B77A71BBF50498859764B075E3B3E32A7FBF180F3C
                      9B3505460D72C71D77206BDFE58DF83D9AE8AC9AA315D2C0CE95B7B355CDECA1
                      E87C50DF8E43BEB3993E353FB3F66DF92DF6BBF2D5DD9FF9CC675E7CF1C5B370
                      882CD3D772209BECF89297BC047F77F8C496BDCCF395AC9D79BA835BCE3AEBAC
                      CF7EF6B390F3E8DD6B5F885DF2E65FFFFAD7A79D765A36B0F97A93F931CC2625
                      1F6FCE8C0EF7A231D90EA795C17BDBDBDEF6A94F7D2A3FF873B152B1B0BFA34C
                      2004F34FF2EC8D1D98F113CBDEB0CBEDF9C580BDB5B8BBB0BAE5CACAD4EB815C
                      D144BB37BBF37CE2F2CCFE6667927C9AC134DE9C5F574F63F059FB2D6FCED8B9
                      FDA2BDAE9FFA10316FF166A49121768B05C80B636DEA34332A8B5739EEFA6B97
                      9DF2D7FF151660606434D669312CC51DA98926234B8E39B23162629126AF8980
                      82D260B5D21EC915E86FE9A5C87DBB13F57A2B856FFFDBCA17BDF228685C0BA2
                      25B7A65420AF38A4644BFA31E90A145009C0B89444B210120920A30A0ED69098
                      C91019212F44CD360CAC3DF61B5FBCE59FDF0FEBB75517ADAE357BDD32BE34E7
                      D802B536614129E8C0241E8A696F31F41A416BEBC94F808BFFE764E85DD7588F
                      130CE50AF49A50C04321F1D3423735315DE4CB42FA4C9B3EF2A81727A561A837
                      A0508442589CDCD11D2896E090136FF9E3B617BFF2F65B7F07872E5AECC1F266
                      D4F34A3BDA713D082AC6A6AE84A3C4A99A0C4EA76F7C30768820F47A831E2F27
                      328D20F60658B7B9BD3650BEE7EEF1B7BE0C3E76DE53C3E2D571B347E9805D21
                      3D9C845D471DB24178E007419E1F07969F46F6FBB7666456A2B0CB5A62488090
                      173E024DFAE637BFF9F297BF1CCC951B8CC56F3E7290B71AC89FCAEDADFF3C81
                      B62A82EDDBB72F5EBC1876D6EC66857FB16BB8DD465632637F3E854C549A014F
                      AFB87FFBD9AC84CA9A356B6C49392BD1B69599A7FDC8F2BCD9E6DECD7E5DCC2B
                      BFF12C7CD24927DD7AEBAD19A9B201184B387057871D76980D266524602FE255
                      D9B501972E4F7EF293B16BD3E29D99E75AC645CE38E38C9FFFFCE7BBDC5B9685
                      F6A10F7DE87DEF7B5FFEA57CD4C7CEAC8DC2DACB9EBD2B6A2F787919A2457629
                      CA5F846C8EFF4D37DD64AB15C094BA001FED1AE919CF78C625975C0253EB8ABC
                      D7C45E1C9F78A53CFAE8A371319375273FD7F96335ABBC6091A58D66B2E3EC78
                      B3A1747B584E5B12D823EDDA6BAF3DE4904360E788D75E5C5F2D3BB4C7C97DF7
                      DD77C2092764865C1963CE332A9B09308D7FE463CC19B0D7F853B2EB523BB9D9
                      2FEE79CF7B1E1EFF1923C9766B8B725BA593F54F78FEF39F9FD9B0CC7E948259
                      795ABDB8356F9946046731F1406424357FBF6BEFA2BCBBE4CDDFFFFEF7B12FD3
                      129A67F1C946BCE31DEFF8C4273E013BA7F4ED451DBEFCED912CEBE3EB5FFFFA
                      2B5FF94AFB061C28DC38BB095D16B3C8CE81F6049B27A97BDAB03DC2E31FFF78
                      2B4982DC126E5ACDF65DDE2AB12E4CF9259F9D97CCB1C7E6D564DDCC8B88A665
                      43E2621B97DCBB931AE68DFFF363B2CB284076E4DB2733E3CD1633D3B51F49CC
                      A34E033C5FC50997E43A8C8450F690B0727FF1315039F21FFEFEBB9FFC0CD486
                      82627974B2D91AAC96D2582A3D0C3CE66C429081438988B6E2D6D858E1C953A7
                      6438C17B42E18C96CC4BBDC9C6443782F3DFB7F89D1F3C39D9F6334F76A1872C
                      B9C8891F771386D40EFC0004323ACD44972623E59E317F4B35E37E52D5B8C3A0
                      3DD9D6032B8736DE3FFADA57DE79F96F61F5DAA17A5B044ACF5DA721B4A75308
                      FC42834F085FF8E9E8B64D771C3408EF3DE7C8D7BC598358D7DC44D1E062153A
                      4D72D2401A6BDC9ECD87B9116C30F053E3ACD101518414197F15C6C6A15CF30B
                      8B4EDB7A7BF7D4A7FDE6CE7B61551579F2AA4D9B27866BC3856AAFD9AB336608
                      B70E0C5F354721B9FB793AD2D54AADDD4C7918F4E4B852BDE1E145DBB7DC17B7
                      61F532B8E2F2630E7EF492C6BA9F1742E41685E6642F0C39B0B90AB908CAD3E2
                      00D23767970A3CABE2B93553435AD7219B8D670D01904BFDE217BF78645AF5DE
                      F7BEF7C31FFEB07D3E2DB66AB174E952A4AAC850ED9F996D1CEC7CE3D57E30A3
                      CEB073D9ED7C70224B2EC93E983DCF47A92DF2B158BC60E305D23EFFD6B7BEF5
                      D297BED49E37716F7899C90850F6B67CB1808C5CCE3E3B48D170F0D7AD5B67D7
                      0C33EFB1663A8D6C877B57C23A2325BFFBDDEF1EF7B8C7C1D43500070D2F5DB6
                      F44CFEDA9FD5C9DB25B28958BB76ED9D77DE0966CD83578B5D5287AC02DF4CF1
                      8CBDB6D9199976D7FB15AF7845763321E3CD336DEF4E3BED341BBECA57E97B88
                      82421C1F1C25FBDC7A72D99F49DE777C76EA06B96B799E8ED8E71957C826170C
                      77B135CF1E8ABAC0C6682DE7BEE79E7B56AF5E6DB7677733ECD00D0D0D65F60B
                      D3905FF9E4A955BE5FD90CE2621B97DCCF7AD6B37EFCE31F67A797692B734B7F
                      F148B34687B3D769CB2A5366E72E6B61363030804BE52CB5C052F3FCF8678716
                      E24D6F7AD3E73EF739BB3D4BB1D8BB4362169D867D433E637577AB35FC389EF4
                      6C059FD92BA13E28A6F1BC4CF18C0792FD19C2D4616675C0BB6B4FFE978E078C
                      BD8130DFBC39BF74C964D919F2B18FCC18DECE78DEDAE5417F77B0F3216A3DFE
                      1383FC7BCE3EFBEC0B2FBC7077BC393B4AB320B1FD49DA756FD6A4693A8D7C48
                      1B8CE50E5EC5F2C5566D45A4F918DB07C53CFAD0A5CA634221AD20EF8800A226
                      F42218185DDC2BB2B074F49A55576DDE0CB5E122F34762DD40C629E332B15431
                      4123A6CA442735D3240A5029B231BCBA51799096512E0F2369F34ABC5DDFC0A5
                      EAB6E0CD6F868F9DFFD790AED3ADCDD0D60CBF124CC56DA1F1FC9C585FE7D8F7
                      480BE1516720125A802E0A24C7412BC2AE0E80BFE46F5EF79C2BBEF2A3F4F0B5
                      03F5968F7B0636A7108526DE2C980C71DE1B72BC50A90C1797AC5B77CBEAA5F0
                      A3EFFCD531C7DDC2D9E6D638701FC2007A31E02A4927D43A69AA05F69302C95A
                      D9689AC3013CE3B55B5D1D825F2985234FB8F9FA6D7F79C64DDB9A3012164686
                      562629830047241E6B6EAE0D9723B2D633BF1F6C0339C5695A0CE8C04B879080
                      F7928ED289F6DB212935CA63DBEE9FECC2E5DF3EFEA92FF0F4F8EF705264824B
                      0B9F333C6413E08E37EF16D979EAD5AF7EF545175D6437EE320B1E2F03575E79
                      E57CB7270BA17DEC631F7BF7BBDF0D53D1AF7CDE469E2DD9E878A68DCBF3157C
                      CCEEBDE6A933B21C3C3DD9F01EECC69269E6461CA55AAD966712D842648DF662
                      69CFA1992C2143767EBCE4924B9EF18C67647427BB3DBD3BF663C7C1F6626262
                      0207FF861B6E9856A32E43A6D3C88A54C35E052321A700FECFFFFCCF17BFF8C5
                      59DFF17BF3D7D1E1E1E18D1B37EEAE1C8C85BD0D6A3BF8D8C73EF6FAEBAF87A9
                      7A60D9C858726F7BB44B5543FE4BF3819CE38F3FFEF2CB2FCFE6144C98FC0D6F
                      7883E5C7D306FFB9CF7DAEAD829EBF2AEFDDF8E4F7F0A52F7D09BF7177EFDC53
                      7F376C8C0D2EE643655955CB69C85726DFEB2E64546FCD9A35B6A28DB573B677
                      6076D98569447F1A41C1E361646424F33C39E9A493AEBAEA2ACB2DFEE99FFEE9
                      231FF9084CDDCC9999476B1FB399DA1DF24BE8EC8EF6EB5FFFFA2F7FF9CB7317
                      1E20DEFEF6B77FF2939FCCFE7C2871BE5DF2E6ABAFBEFAF4D34FB76F98BD9279
                      864C729D8DF0DE9178D859949231751B729E6363602AFBD3FEFA3EF0810FBCFF
                      FDEF8759F3BC1F16643E4BF6BCBD65CB96534E39055777F655DC885DB3ED9FA9
                      1DB767121B909EF6BBC84E98D97D451B6AB11BEDF4E139ADD16864EFC4E938FF
                      FCF36D12C5CCFE661BF36B3CBB652EA2F6EC3DF57A1DAF4776BD9AAF21304FC3
                      3B3BE68D373348225E287A322295465082B407ED0E78386E25288F3EE692EF6D
                      7CFDEBB66DA9C3C9C73EE54FF75E5B1E2CE928E186CB6AED7B90500496C91439
                      80F214D2002F665A2A119B4221E4E7D08CC64647AA3A4EB66EECC5125EF837DE
                      67FEF5F44587F5A2CDBFF213885ABCC08659399049AB299BC5C29430577B5440
                      DA10567C1BB78615023A1A4A87BCE09DAFFEAF0B2E6A1D79C848A337A4651BD9
                      E05C3A6B7973A8FD48463D48FCA237541E5A77C79D47AE84DB6E7C719A5E21D8
                      78D436767205D031787A80C69DB7188774CA1A998C2AA48F23D08B7A3D0DBC04
                      83871E0670E2573F7BF5FBDEBB65731DD62E3FB4D72D75BB9395E1721AF5BA71
                      BB5C0B3BDD96F08DD105552AD12C0D4D3E5F4AF213186AB4DA855AD04926FC30
                      AC04FE8E7B36E3403EEBE9F08D4B9F05D16F37DCB265C5A161672222EF93A181
                      A839C9F89EA4BC1C60BC39A36E56A7B164C912FC25DB80D6D0D010FEB6B3820E
                      33ADDFE609D6F516A6DC30C0883BF1F46479155EEDF09A0786F760DBF2A59EF3
                      1504B3D35916BC191F1F7FC94B5E72C51557D86FB1B7F3ACCF4396910D536758
                      1B00CB32962203FBC1D1D1D1B3CF3E1BAF40AB56ADCADABC79F366EB2A7DF8E1
                      87E3572F5FBE1CC92E7E049FE04BD8726403C809608A983E685C214F8990483D
                      E9494F42668CA4049FE3C7ED8501276E6C6C0C7B8DBC1959A96D7F16BA78E813
                      81E36C2FE49942C36E7FDDEB5E87B390D5C7DE256686D22FBCF0C2B7BCE52DF6
                      B9552DE350D8C9CA1630F67262E58656ED60AFA3F92BFD0B5EF0029C475C8464
                      5BB229B66B3F9C565B280729020E7E5E62945FA8EC75EA553E2AB96EDDBA73CF
                      3DD766525AE0E2CA96C8C9166630435C0B3BEB83B19DB67E78FE72FBF4A73F1D
                      89E6A31FFD68FBE72E97587BC19BB35EE7E5BCB81FFCAECC8DD1B213FC46FCDD
                      6562F199C86CC2C0FC42F149C6F871EABFFAD5AF5A97680B5CD5608F9000E152
                      C79A9AD99DDB3A44939393F843DEBA75EB838AC1B271B01DB1EAD297BFFCE5DF
                      FCE637F1A4615D1432B156363EF929B3EDC443F1D39FFE34EC1CDCDDBB75C834
                      DE6CCF3CD6B1C48612AD5522B6165FDADD3A1947E05DEF7A172EC5B3AEED3575
                      9E069B3B9BDD5BC01DE269C4FECAB0EFBB5CFA5AB11072563CC565455561EADC
                      F2B0B46A164CFB61E24172E9A597BEF6B5AFCDCE3F78746103AC961D72B7AAF6
                      F48BF038B775B5F2A7173C637FF0831F3CE18413F0A46AB7ECF22E84DD38EDC6
                      883DEBE2A4DB02585965A8EC1E8B8DFEE0461C769B128D07B02DF9995DC566AE
                      7C1E31CC5B5EA029181D065E12C544E242109C82AC0983C2004C4CC2C8C12F7C
                      E7D9DFB9E0733004C5C115C3711231DE02EDF36889661EF0B6D10CC4C45CA5CF
                      2886CA244B356DA4A21C8C82AB115E0FC7B6378A7E51458589EEC4934F82F33E
                      72F8E3CF1C86F41EBD454E4E342B78E1E43DA922BFCCD39892FCAC6105059D91
                      A75270969E20499D68C3F09A675C70EE6FDE79DE8E43970D75E422A6270D6F7E
                      F0CB2A116FAD4315A45CA73E4E671C78C1FDF76F3EF128B8EEB6D77537FDFF3C
                      6D800EB5193EC3DC4B4C250CA92593900D2A458B43A921959DD2F245503E646C
                      A3FCF2576E7FDF073BD8CC534F7CFC9D7FDC511DAEC5C9A4F6A2FAD804F86AC5
                      214BD7DF774FA51A90CBB3223B0C46FA166DEB5B1445796B63476DE540B35D2F
                      F281A4BD7DC744EFA8C5F0871B9EEC0FDE0DADF5A41829B11E9E3F1537B7EA62
                      176F9E05198D435A9C8FD5CD049E50366EDC38DFED9956BB35BBC56F81CCFE65
                      2F7B997D3EADEE435E9930CD7E2B8BA1E27B3EFCE10FFFEC673FFBF5AF7F3DED
                      7BADF8C15A8FED2E4CF8C4273EF1E4934F7ECE739E73D24927651BF32AB76DDB
                      B69D72CA2977DD75D7CCCF7EEA539FFAFBBFFF7BD813097276E1BCEDB6DBF024
                      3E7BF0322BE0921F8759529D66F7D5C6B5932D198DFDFDED6F7F9B7F433EEBFF
                      41D50248500203FBE72F7FF94B6406D9D2C522BB6B6FD72A99D4611AD6AC5983
                      EBA8273CE10976F90186F1E0B4E683EB33B5D41659DE67FE3AB7D7BCD9EE243F
                      B65FFBDAD72EBEF862BCBA4F6BB9B5F383A920EBB4F1B733352DCA8E9378EAA9
                      A73EEF79CFCB22D9C8A89062DA0E5A27ECEC60DEBBD511EE0A8F16BBEC416EB4
                      74E952BBFD1BDFF806AEEEA65522CCD660D3DA9F593ADAC320632D871D76D85F
                      FEE55FBEED6D6FC35F2E9823D0E67D42CEAA65161C77DC7137DD74D3ECFAA52C
                      369C794A22CBC957EE9C0B32D5D92E8BC6EF11A6F166BBC3FCED9A39222B618D
                      073676FFA1E405E6619764568780B36379F01E21AB2CF8D0BD471E14F667856D
                      C643343F2F780EC4F3068EEAEF7FFFFB691FB14E35D9B2739AC567DE1BCA2670
                      23119F29153BFCF0C3F1D8C3133BCE42765999FDD8B0F5A1B2DB86386BF83BDD
                      D3FEDE77DF7D59FC65AF937D1F2ECCA3BE39607E2A8D3DB3E052E3328E7B2C4D
                      9163C5D0ECC2E8A3D66EBD4BBDF3ED77FDFB25B076C5D2465B7A85267D49B28C
                      A4BABC0BACAB798C6F274F3AAA8DE2E1506959664C6AAF41B43CC22B65582E0E
                      274C0678016B6C191F6B0F04F0C34BCE38FEB87878D926357137893514E81EF9
                      104B41FFFA061982A2BF3C45BECB38F13F3D91A6A36B4EFE8F2FAF7FDD591BAB
                      B8AA11071B4DC89C96329637D32EF1CC5EAE74BA13D5B07CDF86CD7FFD44B8E2
                      972F4B37FE208D3B3EEB87E8045DBCB84A3DC94891EC439B3E9E56C813C3EBA4
                      5CFA072D02EFD1BFFF4DF4DEF7FECFE53FA7C2DA871C529BA8536E539CC4BD6E
                      7760A43650A935DA8D4EBBE3FB8A0BE31197E2452EC459D3242EE9699E805049
                      DAE383C5DEA4F4615173DB1D6B96C27BCF197CE1DF3FBEB9EEA778210B0BD0E9
                      500FB9C7BB5D85A7DF3D5B881E60BCD95E84F0DA7CDE79E77DF18B5FC4B5B265
                      90382F787EB1196C78DEC49FF78B5EF422A4ADF3DD1E2B12CDCE5699B3079E19
                      AFB9E69AE38F3FDE6EB76746E4A9D8E0CC3038DB49FEFC9E4942B3CB2D5E95DF
                      F39EF77CE73BDFC952BB6607128B638F3D16AF82AF78C52BB28DD8482BFCB59C
                      2023611FFCE007BFF0852FE09F780EB5E5A9B09D78FE4552F2D4A73E1576B6FA
                      9FE52C99AF538597BAB3CF3EFBBAEBAEC32D78DEB7BC276FACBB7AF56A2BA1C9
                      07DB60D6F8D92CF75BB3742BDB4DDCB95D2F2193FEFCE73F6F838856233BBB10
                      335B51D8B1CA2E2A175D74D185175EB861C386BC09DD2E6195E578313BFDF4D3
                      DFFCE637677276DC1B0EA98DD3D86B9BEDB895651F71C41136BD15B9321E27D8
                      CE33CE38C37AC5E42F847B4702A68515F3F7F72FBFFC72FC0521EDCBBBCBCD1D
                      471F7DF4A2458B907166E506717871E7BB5CF9581EB3D724C672F1ECCFB1B1B1
                      919111FBFC139FF8041EC056B6B14758B16205F2D7F3CF3F1FC77FDA58D9A3E5
                      820B2E38E79C736C6D1D6B36821BB183F6E6384EDFBDF7DEFBC637BED1DA5CCC
                      82BC679985CDC7C5EFCD943F56AF6CCD77A72D66F0CFAD5BB7E2F2EFDC73CFCD
                      DF197F88F71FA6F1E64B2EB9E455AF7A154E903D6871046C0AB20D6D4E0BD9E2
                      B7DF79E79D99BED9E221C69BF3DC313BD4BFFBDDEFBEE31DEFB05998F6B8DA9D
                      BE19BFDACAD2F09DAF79CD6B7084F7AE197B8A69AB41FC09D8DB47D9A1FE99CF
                      7CE65BDFFA161E9F0F7AF6785060D770E7279F7C329E34FEEEEFFEEE98638EB1
                      DBED69339F33333BEC8CE3E5127FC2F8291C37EB3E64D71B5986A5D53ADB3EE2
                      BA68D3A64D38F878CCE379CC4ED65E3BBA3C5C984FDE2CBD5694FA051186E54E
                      37551093CC2C26E7356F7860FDFD93AB1EFDC41B7FA19FFB825FDDB71D568E0E
                      27414F6AC15449816FFC8263C375138D948C6AA320290C25143453DAAFE3112E
                      D24258181EDF5E47DE365C2BF5A24477F1B8DF3CD98377FE039C7BEE8983A52D
                      D06D42DA86768A8416DF46BCB97F20909898273ED73E173C919D16A891D5C75C
                      FE83F8B567DFD1EC41A97808A8E61C7933ED4FE940F8AD6E9B17CA71DC5D3ABA
                      F88E3FDFF1ECA7C3F72F7DB6DEF4D3B8D9090ADED4A29F88251249A9AA60AA58
                      33459A9114897741FAC30781BFEC929FDCFEDAD76DDD360E872CADC549497832
                      493BC5B25F6F376AC3C3ED56AFDDA128489C744BE552DC4BA9A08B2E6A5CA0E0
                      2201991C3453A1A4EE168A61A3A3B0A785D4DB3C5E7FC373E00B3F786BF4E7CF
                      85D5248A4CE8DD18CE150A956EA3258A30D7F2881607186F5EB0C82EEDDFFBDE
                      F73EFEF18FE3A3F513C85B22CCFC94D55DE46BA8DAED96C3D974BD8CE8E0F9EB
                      2B5FF9CA2F7FF94B24A637DF7C73567B020FC2356BD6E0F914E932D244CBCF32
                      E0A91CAF7F597A194CD182B9742A5FA26FF69BC27B7726B5FB9F4B1AFE83FA6A
                      6734C2D67FB64168DB4DFCACB54F7ED096D8B5817519B3B786F3D7A1CB0DD6AD
                      5B87A40169B40D02E1A42F5FBE1CC7FF294F79CA69A79D76E28927E6776BE731
                      1B968C42CDF10E7B9E2BEFF555CA06E3B3F1C1E301F79357C7DE75D75DDFFCE6
                      377FFAD39F5E7FFDF5B32B1DB1318F7DEC639FF6B4A73DE739CFC9EC17C1D0CA
                      8CD96407437698ED9DCD42866CF180CBCE4C203ECDA716790932E04B2FBDD416
                      B49F1DB8B0415E95D17DC84582E1E108E8E6911D9FB696F243E419B63E889DC7
                      BD1ED55DF2E6BD6E12CE3292B9BD3623CBD7BE865C09BD8718BDB6C3FEC8F8A3
                      4DB31EB71B67FE5A2FBBEC323C7B5C7CF1C5F91AA27301FEE8F08476E699673E
                      EB59CFCA2AA45AE0826AC9922530A5DE99E5964EF67B79E8630B33E4F5FB8A40
                      CF639D6D64544A80D45C33AE55918A7A40C74372070130D18EBB3C28160F7EFA
                      4F2FF9CDB39FB9D117100ED4985F026F1C28285C4BF16A9EC8B0A8B89CA4FCC0
                      644031A4CEBE14A9142D6CAE970AF2DCD03E39AFB19E66D8DE08B9B096F1B62D
                      70F072F8C4F9473DEFA5C781BCA57BD76DC502A41E700FD2C8B8150A9DF490C1
                      7B616910D244CA562750D595AB7F7A8978FF07FE7CED8DB072E5B1496FABD12D
                      CCE95E000E4CC917DD34EA4931502C469DA8BE63DB6B5E099FBDE84CD872A36E
                      8E3146BE1E69D451743787BCA55B0904A11786C313E3DB8771A55D2B8077687B
                      FB9217BEF0EA4BAFA27D2E5DE6F562A4D903415CE1059EF27145697FC664994B
                      4655B0117EB958DBBEB53950A9D2ADDB749221118A2724675E21A837D3A1D22A
                      0FEA1B378D9DF572F8EC379E9B6EFA99EEC58CAB1E17C0639C7EDC5D31A2783C
                      9069F6DC7A6BE178B39DFADD44E9F7B937FB02C77C8FDB4CD3A547A053797A01
                      B9CBF0BEF2195D68E30373C897C231B4C976D39661FB056EBAE9A61B6FBC71E3
                      C68DC8EAF0A28E7D59BB76ED71C71D97A5BEED73ECA9BC75BE0F8C85D69EDDC1
                      AE9F174E7BF61AED76FB965B6EC1F5DEE6CD9BF12845E26B65F4B8CC5EB66C99
                      3D5C0F3AE8A05D7EF6614CC59BE3BC2FCCE19DCF78B326BAA44CE8583313BAD0
                      12496E1A71CFD8D477D3D41FF54578C4673E79D7DBFE69A2C0E1A0956B7B6CEB
                      E4E46410AE125E1877BB82C79EE80A6C633A085A28AAA8271391186570C83551
                      3641A2E78402B8A22D991FF74414274276650C4F7C1C7CEA5F8E38F2712741EF
                      FA1DEBFE244253F44E437510B00DB293A62D8D4C1EE97ACF93E5830FFBEF8BE1
                      5DEFBBF3865B60C58A6392683B9B9BBED98EA4ECB5BD423161220C8BED89466F
                      72E2ECD7C3055F3C23FEF3AF218D7DE4CAB830F24CA01BDBDA8D44ADDAD8DA6C
                      3761F9A1ABA15683A87DDE47FFF4894F40A904DBC76064E962DFAFB49A8D7265
                      1022DDE8764B25896B08B0B3852B04AA828DFDE1092EFE8B8580FBEDDEA4D29D
                      A0A00B1E88A034D9A564A1016FE0DE0DEB9FF597F0A1F71F79CCC96174FF4D1C
                      67062717D7FD5E47685C7343C1C49E53E3EFE178F39E6297E7D3F9CE08F95FD0
                      DFF91EB7476C5E6C5AFA4C2580355AD96B85C0EEAED3BBC4021CFF3DFADE597A
                      9ABF54CF34B870D853CCF771B5BFB7678FDAF9BFF83C3F4DFDF2B0DB83EC2FF3
                      BE4BCC276F56240390E4266754C5A6E09C4F35F1028870638957FCEDCDED8B0E
                      5F0BE9DAB7BEFEB24F5F0483257F6078385141BDA90B85A054159D763D641E20
                      B7D505A634B24472A4C356514D15612AA3243E44420A246F8A99F679A3128256
                      3DA97748D7BFBC022F7D39BCF2C5C71DF9841300FE08F5F593639B654A4D1AF0
                      C01FE44899B171F5663474D4917FBC66F8DCF7FEE6CAAB61A4B658723C37CFF9
                      28C13E4AE907C59EC666C94EBD1DC0E43FBE15CEF9E85FEB8DBFD0494C73EE41
                      8B9424E440878FBD08569CB012D811A0F9A72FB8EAC73F487F731D952D29FBE0
                      FB434B470EEBC451ABBDB550F1953F9126A9D023867D9AC2DA7626B400E6276D
                      591B1969B677C469BB5AF453C9D218525682B4BA7C79E1D6DBFF70ECA1F083EF
                      1DB6F68451D874838E634AAE14A2274CA5165C7C68F28D0693B4E878B3C383E2
                      40BB7ECC320EF92E4FBB0B99FF73EF82347B1487FB5F30FE3693CFDA83ECF20D
                      79139805C89BF3F57766C296CFB0F7ACAD26FEE1CA667370980BAC45E9DC0FBC
                      8C286727FC8519FADD279847DE6CEF4A2215D3C6A2982B634E4CF9C554A4A3DD
                      48CBB5F26434917A505B757434B6E899CFBEFACA5FD1071F73F4099BC79B13CD
                      C6D0A2A28C7A4C722E3D8E348FCA4F27C8F6B856B1002A732792223650C94031
                      A158CAA9BC494F076161B8D72B0E542B4C6FFFF3BD541EECC98F81BF3D039E74
                      DAE8F1A73F060624A4EBBADB36C64D2A629836A13A02F536206FBEFE67C5779D
                      73E3F57F80E52B0E6EC41D35771EC9B4C74B52A73DCD7D26E366CB13CDB35E0F
                      1F38FF49B0F9372A8A132047914E02DA6783C3C3503D08E0D0EEE67B7F7CC5CD
                      975F0EDFFB117453F0B93878D5915AC70992DBD8939229DE4959538BC9F240A5
                      3789DD094CA419696A42634AEE194C200FF774B3BDB5582896C2A0D5EAF96230
                      49959F863B9A7705003FFAD191673E6B08C67F5BDF0AE590C8B6629C04D08C4A
                      B10809A13413AB28E4EC78B383C35C30AD961E3EC9CA6458FE67B7EF7529E0FF
                      35F785F7089969861D5E9BB896E95033CF8A05A87BB1B09E0C99F1B6CD9AB2FA
                      4E47941D1602ACBB45E6F1921924670BD169BE9FBB4BF03890319F3E7446E240
                      D4934DD5B5366A6164AB95DA40D499942914AA85388D98AFC3A5876FB973D11B
                      DF74CDC5FF0D2BCA85CAF295638D6E0C139EE70B59E65A706AA6716D4332A9E3
                      5440C43C603C48422AAB221528A9B9D24C4A91F664C404A75C271D56CB5EDC1D
                      5FBF9992739F79123CFBC5C71D756CB0FA3035B20ACF621BA0B559778095A0BE
                      19860E3BF29A4B0A6F7FF71F6EFA13D406974388C7CB1C15BFE4E00C31D75C48
                      0F8A65BF5BAFB71A13AF7F357CEACB67B4EFBB8A82E1F82EE11587465969A98E
                      1A5B37881B7F5BFDF67FFCE18757E0F7C3500186972C665E65CBD61D43832592
                      71B49B956A252C55271AAD44C6C54A55F638D92BF31E8D26B935FB94550869E0
                      A551D40E8ACCF30AED66C4586170E020D9DB31B6F5BE96866F7FB9F8FCD73E0E
                      3AEBB6DFB979D1A827E35492D9B4D4E61CCE632A2FB397D761C79B1D0E7820CF
                      C3ABCEEE7CF8F79A341F98C82F15F2D95A33970A0B9037CFC54D36F3D4C3C77D
                      6B08E070A0C11E9F99F3E6ECCAA8DDBD6101DEE7D9279847DE0C96371BC706E2
                      CD8C7CDF90A625891201F83E345B50F50ABCEC35EAAD7215BCE5A7DFF6DB8973
                      DEFE874B7F03218325AB5675A3A626DF3664768C6BA46414AD36DA0FD21A500D
                      131D70190A1D309552E0942E5B5D1EE21B22BC9AC5A956B210882217451F9212
                      F76EDF447EB1C34578E39BE0852F7EFC518705C2DFA1DB5B5851B726272ACB9E
                      72CD65AD7F7CC7B57FBE1FAA83C744E936C5E6981748EE5E1A87AA508A545C2C
                      79F164737C7CE22D6F804F7EE16DBD2D5F2D14A48615CC1F82F2924E3DBDE8EB
                      977FEE42B8DDF8171D32BA887B83C839374D6C1B1C2E0B9E4C8E8F0DD44A69A7
                      854B06DFAB7422CA96250F6CEA3E33BC991937680FD9B3E6D2E7CD289AAC5447
                      A35E92C6A25A196834C7C61A1315802F7C6AC54BDF7238B46FE86EAD330E8552
                      B5DB6A0BCF78F109539E30C5290E81757196BD740FA7D7F166870318F9BA12BB
                      B4C9CB6F7F5872C91DF661A583BD6BED343715473B1C161AAC51A3AD2068B764
                      F55F66BED91DC016F3C89B914B9940B3616964DB102A2640CBA090B6BB69B14C
                      15045912700DB18C4B556826503DE4D41BAFDE71CEBB6FFFD56FA132B4D82B0F
                      25B22BD876C6525BC85A0152E402923D6491BE4CA8F9A432C07D082A86C23AC8
                      A57BEDC6C8C868B719F7A2EEC8C888E705F5F13620C72BA6BD5E5D6A2A12D234
                      8686AB87E139CF299DF38EBF1A591D43580738E5C7DFBDEAD5AFBBA1DB86DAD2
                      2392A83EF7BC4053225B97AAE158A789076000C58D5B36FF9FE7C1D7BEF76180
                      5F0314A059FECED7AFB9E05FEFBDE11EA290A3439004E48E51128B852CE94823
                      F314A1EC752701C9F2D0407B12BBC21585D17BB581B0DBED485621022AEA1AA4
                      272B663E909F764518753AED6A6945A391948BA32268DDBBE9BEC11138EBC5F0
                      914FFD2D747FD7DCB4A508E0857EA3E98705C178D3A3F587994DED4B16C402B9
                      AFF255C4F6C888CEF166870318F972833687C6962BB71BA729021FA221DA8183
                      2C226B971C332BA52FF0CB76BE7844B66581B7D9E140C0CCE3702EBECBEEE8DD
                      25E68D372B24B2341F5C992AD02C04C5C9BB4127C07B9E0F714A72E7A23F0824
                      B1684208CD3A5457D6A0FAD8EBAEBCF78D6F59F7FBDB61A812966B4B9274337E
                      BD5005FC87B39CE25B8D1133F16621256EE19EE4821CDA78EA29552816776CDF
                      3E541D1C2894376EDB844D181A1EED4451243A5EC167501689805EB93739C1E2
                      6DA1503D09CB96C21147C35BDE7EDC75BF93177EF136D0E5585503B3CB397657
                      681647EDC1E181ADF57AB158A815476FBFFBCFA71C07975DF2EEF3CE3FEFAACB
                      E1E67B61C8075C1E8C4D02A40715CA8372700760875ABA20AA9DF1466DA4A654
                      ABA73AC20FA4E2934D3534308CFCB3D36E0C57A9EE28F32B26DEDC14146FF671
                      A9C0744C926EE8A4895E543D72FBF8F84011B64E6CEAA6F0EEF7C047FFF979F1
                      C6EF071CBA11140B10B590870F236F8E931D5430511B360BC89B792C3CDC4FA0
                      62C79B1D1CE68E7CA69AC54CA986BBF0CC11B314E99DB911163C819EBDCDEEA8
                      70D827D8E5BA0E72C7E74C6E0DFBDB6FED11C07CEA3494196B5BBA591B8133F8
                      54F12357CC591B724D060F1A6407FCC0839145503BFAEE9B3B67BDF5FF5EF10B
                      A80D41757864B2839F132A51482E27C7760402C26290C8181928C30F72AA9D6D
                      EC3A04488F71B2D510906A2D95B01A6B66FC228CB81D9BA239034A34D41A495E
                      63D3B698B218052C5D04A5E240ABC7A3880A797BDE9E503DC63C0531241C9703
                      4AA548E4591A7A49B1A4EFBAB7E7714815761E866B41B9B25881885A89F663C5
                      B0ED9E47C15FA2B1D860A67193C016D21A838419A0AD7B064F55EA17FC208DA3
                      A42783206440667B5E883DF2E2988D540E6BB7366EDA76FFD212BCE70370F63F
                      9E013BFE98B4A9CC9B3533A136D2149252064C80DC6C26673BF32AE353B514E7
                      3CBF8E373B3838383838381C40985F7DF35C6024E8A4B4F07509A26E177461B8
                      C4068FFAD3AD9D8F7CF48FDFFA21943C38ECE8BFD8BABDAE9096A6E38B978E6E
                      D9B03124ED6F2125273A300ED1E0614335297252430391B6125106AAECDD6786
                      C6E183F52DD76C57F06B59AD363AD9986C363B3810C87819C87239AC56CBED76
                      7B8F3A623C86441004B6C25914A549AA8508B810BE8F445C9BEFC4E156D6D55A
                      A4861693AF1C05B6A786D693268992F589A654C64684D4DB520B8564BF58F40B
                      81EFB57AE35D68148BE58966127A3E7479A3B96369113EFCA1DA2BDEF10468FF
                      2AD95187DDCF58B67DEF93F31D6F767070707070703890B0EF793398BD0A0D9E
                      10904A298C8771AD0CD5C7AFFBC3DDE77DE29E6F7C8BDEB3A2B668E4A091F51B
                      EFEB46DDE52B0EEA75121E096D02A8D21062C5133236E631A3C226C0A92620ED
                      D544B7A532AE11720649B4EE2A36C9946E4630161B1B517CC1DBA38205E6FDD6
                      DEC5DEECB0CFED4B05E4BAA6DA709224711C5B1B45695DDF28E09BDA0910CA04
                      CAA9908B302C9F64DCD2D43AD110A79D5E6DB4C6E4D0F8783D41C25A54527495
                      9223830737B66DD831DE5E5E83AF7C76D5FFF7A2BF901B7ECDF8B88C98E6F333
                      61168E373B3838383838381C485828BCD923A64A52E77000BA3DD8518791A550
                      AA1DA9E2A3FEE18DFFF3D57FDFD10358321A42C11F9BE8AE3CF8E00DF76F1E28
                      0E0BF2220EC9229AC8A5525ECFE8A715859191D569219430A54BF055A93993BB
                      0AAE92A59110194BB634DA3A1AEE4117280E5CECF57AB1C94EC51D064180E418
                      F7D669B7A521D0365168CA8B14F97AA65731749978B3E84F8A9D105B555B432A
                      52A158AD5C6C4CB4C7DBCA2F1707064B3DDD89A25EB904DBD7D71309471F0C5F
                      FCDCE34E7DFA284C5C0BEDD6D8F65E7564BEE6AB0FC79B1D1C1C1C1C1C1C0E24
                      2C08DE0C866921754E522A0EE20722D1328EC10B8AE192232158F6957FBDECED
                      6FA752DAB5DA68B9B678D3B67BABB521E8784C69A0AA7E926969BCEEFAF6171A
                      77439A0D45C261A3CC605CA6F4B65D10672E04980C6E32AB37B69AB8655A12F7
                      5C90A57A58937030641A37229FC63D5B226E9DF0E9CD3221393489AF3D63C6CC
                      AD8C44F7CB01A61EC9C153329B0353711144D4892BE53214704A6482BD8B8594
                      9E9F6CDE36D979C209F083EFAC5D7258AD75CFB59500C02F43AF23959EA3FBF4
                      5EC2F1660707070707078703090B85373306C85A4BE552DA4E131D972AB4B1DB
                      204E56591CC2D08957FD207EFB3BAEBBE93EA80630B86C69DCA352230CE923F9
                      19135DD63CE5D844CB4409595B55BF76A156C6417A86857E92504ABC10CC3AB3
                      19F3C2AC96C1DC61AD3AA785AB2D99B68167FBE754822A32FD8894D9AA689226
                      43331952722574A429141D519319F790556B0F9715CC2F2471AF934E08CF2F06
                      A5B8DB6E8EB7F04DEF7BBBFFC10F3C15AA7727DB6FF353E8B648F41294449AE0
                      DE1C6F76707070707070707878B06078B3F6BADDD240AD22D3ADDD091970088A
                      65801E31DE42318A74B8E298BB6EDB7CC105EBBFF40D32A658BEFCD0AEEA290A
                      20539540535945932731691C24D2B6D4881D34638A71A642B2D1A0EDBBF06346
                      B2DB8F079B20B1E7FB48739134EF595E205976685B771769B72DB46B2D48BBDD
                      AE0D33E3766D2835D27486641A4796E9140931C424BF364E23542C1C6CB11506
                      E432827B14C6C20F62D9EE49B57468656D60E0DE3FDE319E344E3E12DE7C56F1
                      45679D08D1DD30DEDCB26572E992108AC1F68DCD9111AA2F33BF05791D6F7670
                      70707070703890B05078339230DF1F69B627841F978B026405A214C0D43191E0
                      05C06B2006D6DCB7AEFAFDEFDCFFB97F1DBBA701B51A6E1FE08C72DFB412BE11
                      33988EC814D932B69CEC88A90641AA42A4780CD299BC997CBF39116FE4B8C874
                      91EFF67A3D5BE84B9834C1B9F7C0967ECD8CFAA9ECBBC9022C95CBA9411678C6
                      3748C904C5C589F7A72CD1647C678A2022FDD7B691022786A4DA2C10B822E04A
                      7AD1E0A03FB1696C7C220E00FEEE4C78D739C71EF39483A0755DB47D0C2208CB
                      152D934E12154B2C4DE755DADC9F32C79B1D1C1C1C1C1C1C0E1C2C18DE6C2D9E
                      812A3F73856437114C834236A652134C8E15E8020C2C3F12E0882BFFE3C67FF9
                      D7F5BFB801C20A356C6020289696B73A51B707E5818A92BD66672C2C40B1E445
                      7192C6CCF32A1EF3B48A6D57F39EF319CDB58A64B025BE98F5E498A77E522B32
                      A78F54F99AFB41508A7ABD58A67ED16FB7266B23B57AA3510A039F879393DD72
                      58955A76D309D0139D3A8C54E1ACD7C0B9EF3A462C19808DB7C65D4696D83C06
                      8D33664BCBF767CAC59B1D1C1C1C1C1C1C1C1E2E2C20DE6CC2AFB60E07A93388
                      00EA8091D4226121692C1A0DAACCB168D92078C702AC7DDB59DFF8B76FAB6602
                      078F42AB074C2C1A181ADD31DE285405F811D369B7D7E28A978B15D05E635BA3
                      5C2B0BB653C2DFBEAA85431DA441A7626349AA62E9055E818C38380BCA45ECA3
                      EA757A515CA91454AA84F68AA54AB3B5258DEA136D78FC31F0E9CF1C75D2E98B
                      21BDBE7167ABE801E355AD03E5D771EC98A99EED5321404FF3D4E5053A383838
                      383838383C5C5840BC99A0FB297CA06C8E5E412B21651B7C2895684B7B12692E
                      14CB03505B01C1A177DFB8E12D67DFF45FFF176A00959143EA49AF541BA9D7D7
                      F3A2A855AA32F6E246175B5D2D960457CDB49D227D9BCACF837D5A43526888BB
                      B2582C2A0E895285024FA5922005F7B76EDFB67CC9122A68B26D2CE069210836
                      6FDAD606A879F0D1F36AAFFF873301EEE9DE735D9A421597132012ED270218EB
                      E13C069A6A0FE2CCE138265EAAE635E4EC78B3838383838383C3818405C39B49
                      C8EB018B99893AF713FCD202F2C042D19B6C3690DB962B1ED33AED4A48A11DC1
                      E0614B211985E289D75C7EFFEBCEFAF91F375265C1CAE270787474DB785BB648
                      F95180A014044C259D76870FF88AED8960797E079EF4CD412092B8DB9389E76B
                      A9551C2B25D9D2C5073526B6052C09C21E7676FD3851CE8F9E73F45BCF7E4250
                      BC1B0A77C8C6FA5E07CA21F1D356AC59484E22C67B8F22CDF88F5C4370BD3155
                      5965DEA6CCF1660707070707078703080B853763233C554682958A2E33E617E6
                      BB7CAD58A1586DB71A6469EC538338F745E081161363ADA191113684DC78B031
                      5EF8AF2BEEF8977F69FEFE16DA5BAD585ABE721978A239B1234E5551F832D632
                      101279B7D2FD30B3B16DDE57C30E541A510A3F8D93B6545029973D51D4B212F0
                      206E2661A0C677DC3796C23083D7BD099EFEF4A5A79C72B0186C43EB3E988C3A
                      ED18496848C4B9D86E77A018D3701955B62741A4E0912787879456C27C5A6A38
                      DEECE0E0E0E0E0E0702061E1F066EEA990D202BD0E9529314A0D4E79815C5301
                      3E592C1195EE7691F64280E410D9F0D010F2EAA857EF4A185AB91CF8D1B7FD66
                      FB0F7F78C7E597766EB89DDC8FB1BD07AD2A056139698B56A48202538A185D66
                      A29C99C73DF2C34EF61BB2EB150465F4711E8461AF17C74488D5D63A3937AF19
                      81A73F0DCEFCABC1673CF33130A065E39AE6369C03F005948B814E783BE969C5
                      45C0195257065CD3E4903A5C432003B2E4207DB3E3CD0E0E0E0E0E0E0E0E0F0F
                      F2BCB905D044DEDCAE7F72D8F0E68812CD1264478F909F86698667D3F6A8B834
                      3EE729E8D0F3BB494CEE1A1E952E2914817B7ED44D92041A93B07818824A58DF
                      1C21311B3AE2486027DDF4DF3FBBE2CA2D3FF929DC7E0F8C4D9ABD15162D59BA
                      42B7B70B2EB52643E7A95A7E797DF34C86A977D5E1BD23A27AE78FD323F702F0
                      428843A9581C25938D8D52B791161FB11656AD8297BFD47BC1CBFE0AA00B1337
                      A59DF1EE24940640F85CA5ACDDC4D50494074AA07ADDA62A0440CE75542E1117
                      0190506F7C1C396FCF4B1EEE190C6FF653E38C4D6B1C1148B91BDEAC4CF31C1C
                      1C1C1C1C1C1CF6639060181F29E8096D80F1F6C6AFC5131F1B1AE832E54B903D
                      A6B4804012616562DEF302B5E5CD2CFB220A5272AE7A4A071E4000710F14270A
                      96A650A94014834EC0E7E009E28EBD2E241A068E381AD8A3E36DEC139FF9E937
                      BEB563AB293AD81A8752150A5E210842C18BD85BEC91963C65B83FA27E48D46D
                      B591FE3753873953C20AA233933AA31DB6CFCCC34EAF6AFB9FADE6AD1FE8136E
                      F2EC2BA04D6C98A2C3C46AD3B8177713AD225B74E5909570C81A78EFB98F3EF5
                      CC9301EE98D8709547815CAA8C12FAD4A2B84BAB97D0A7E282DD28C29DE2760A
                      E62A126E28109AA58990DA9445E44ACEAB98DBB882D85E61137CE4CB424953E9
                      D0BC96206F3E6AF088EF021C6D0A868B79F5F67070707070707070986F206F8E
                      0CCD412A560768B5365FD41D27DEEC4B5235F40470A2CB9E4EA587B46C8A35CE
                      1F76C9CCD9D46BA4DFD8397069F509F65314384E21269534AF8EAC62B547010C
                      DFF1BB6B2EFCF47DDFFE118C77E93DE50A84A530E0C39A1525AE0C54CA75828B
                      07CE123FE442265249CE19E705CF1FECC4B14C4952ED799E52A61C89A6922832
                      537AF4DDA055E089248240081692FF73AAA354527D6F2EA88E21B6474AC5B82F
                      7CC6187E21EEB739C092E644A74EA16238FD2FE0F56FA8BEE045A7C240055AD7
                      27CD0D3A4E70C542BD9BEA209F3134C8CF3D958D1837AC9C58BB25AF7C3E9739
                      7DAF40B3CE4881EC02B1318A13850F53FAEE28859E5A3BBCF6BF00D66AFA0B97
                      0E1E73516707070707070787FD16C89B63C37F028009CB9B3BF58F0D577AC89B
                      41E92E72C0C0DC917FA478F31E43091323F628E0CC8D717180BC190931140A3E
                      9447C02B42370276F0D5BF2DFEF0B23BFEFDAB1B1A8640FB1C6AA3BE1714C362
                      B150A8C8346AD4EB4912FB7E2100AFD5EB69286843D23D0F197968060A2934D5
                      1D0424BF54429B942BA94C6D3D6D8F7B2A8E9BBD1E89B43D8FFB1E69A989F3CA
                      62A9580E75AA3AAD567D7C1BC4B2DFF6331F032FFB3F8F3AF3C9872D5F1583BF
                      1DE20DD0DB96247D4A0AB40A00C34749E9C0F5AEA5243B4DE72335EAF688A182
                      E6A4A5F14CB1438805F95207A9C4F6E2F045F2C8A1B597206F4EA083E3ED51C8
                      D9F16607070707070787FD1526DEAC90CF20056C0174DA1BBFD2AE5F305C6DF8
                      B2002AEE0A053E880424D5B79B77FBE6BD017949D89C33497A130DDA037242D6
                      1027C8D40A85E27058590C83236AE216ADF48E717EEFDD9DEBAE6BFDFC2AF8E5
                      2F68AD90A1545A343834502E574197BA71332C48C08503C3D502926A1DA53D25
                      95F044AFDB25818616415824070B49D26FDFF3188B02267CBF884FB9F652A974
                      14C751549FDCD68C3BD982E3D1ABE16FFF263CEEF825C71CE70D8EAA654B9781
                      AF20DA06DD6D69B7AB6285436E841EA4109126784C7F7292982F18173DC39B95
                      E1CD46B9E26B85645962BF190BA4448ADF9310A963870EFF0EC051DAF06646D3
                      E478B3838383838383C3FE0AA6950D7E222FEB0234DB1B2F6A4F7C6C78A0E127
                      2580B88B642DA42ACE4A3D10045D5820DE6CD998A4C0B3491FC4FF5B973995F8
                      DD54749B4845E3650701D547F10F055806EDCAC675F59B6FA9AFDFA6B78DC19F
                      D64DFCFE961D1B3642A7B78B6FF07C08430AE5160AE0794158F075CAA592B8FF
                      3449A228C1C1E1017426E83DF18C8F1F77108C8CC2516BE19035C5C356170E5D
                      B3FC518F5A192C0F00C6006EEF8C8DB51B142B0F39C985F1BB0485A843649929
                      F9F149C69037270B8E3793448453551A1A7BE9313A8C24AE311890FC0579730A
                      913C71E8C8AF1B7D73426A71E08E373B383838383838ECBFB0BCD9B019D641DE
                      DCDC785177E27CC39B8B000A793337D44899CCC105CC9B3DE2CD24D550BE0F64
                      5C4C5150F019E38512C4A1D292CB9E6E458D26480103B58ABF7C29842B011601
                      6C5D7FF7FDB7DE7AF7FAFB61FD7AB8EB2E18DF460289460BA21E743AF498C4D0
                      6B51322252E354F505C7C2483890E90601E5E721EB0D8B3038084109AA25181D
                      81952B60B406473F0A561E3C72F4A38F8042CDF0EA0DB0F5FEC97AB3D92455F9
                      50094A030269A74A687D025E21ED09120D93200488316B4D9680A0F0D505439B
                      AD6F60004CA42C029E7AE6C8883971FE29DECC2379FCD0915FC585032509922B
                      E0C269BE83838383838383C31E837CE8FA2E6126DE8CBCB9573F6FB83AE9C912
                      72CF2E072E52FE00B95E78788037A7D41366F2F58C2307526765340F9C01F962
                      B4759114CF05521CF75AAD041246A20E2F80E1E110CACB019046AF300CAF2377
                      C4D7FEE1FEC664BA637BA33EDE69D4E3C98964B21149C9C6C7525C42304141E8
                      42114A652855785810AB572D1B180A56AD185DB97A70D1CA9249A8EC987F1B20
                      69EAC6D6D624446DB2FEA894901E03ED0297243A95B18E1250460953280632A6
                      EA2EA480D0C6E783E2E83164A560160834D3DA943E67B107A92D559318C14CA8
                      0D6F4E2082E3870EFF9AE1CD26A572A11E410E0E0E0E0E0E0E0E7301D3A92163
                      C49B5B0093135B2F8AC7CF1FA9B4BC344416DA255B5EE03A59B8BC99F202912A
                      0B4D8E0DE4E7904A0A00B38269714CE1E1D488270AC521DD53A65C880E3C8FDE
                      CD1299A4851084E0BDB66A3589D40E0F8C8228D227970C1863E400840FA264F6
                      E81BE39192D97562E8606CFE596F8D09E8B4A0D791492C91934B9924A992A9CF
                      02A52533FC9D43A48D699C4CC15725AAF3C213CF4B7940C16499402785D03313
                      A3400A4FF4ED327896F5B850A038658C2AA1792C8C6734F68F0AD480B0BC99FC
                      34E0A8A1B5FF49BC591999860B373B383838383838ECCF603AD153BAD306F2E6
                      FA968B3A131F5B54ED792930E97535F14B64955251D476818242B148D584E5CD
                      9C03D27C6948263E1702DB0F2983B887CCD5F344683E42DDE35C7B5C4791F48C
                      88D9F842838E2D0F9F52160813CB56C6DB02A69EDB083DEE1719A1B42E71E69D
                      825EA2444109FD8A841CC7CD570AD7279C409C584A95E804425D84C007DD8D92
                      486BF0430A7ED3FA444D55C7A6E839D7FD4A29F359F96FAF40751B29EC2C8569
                      2F69BBA989C2D7942E885DEAC83523875D42754FF454BDC085D6070707070707
                      0707873983E9B68602924DE49EE3009DFAF6AF75EB1F5B54E97A0AD22E68BFE2
                      057EAB3D51E4264CBA60D1A7CEA4D6F048F2D06768DA38B8D9E21CC48AB94D1D
                      DC1926908ECCD51A5990DD1B59F01915079BE2C4396465F8A8340A33E362CA82
                      17A9C4617FDFFD6DBC1F8936197D8238B036BE6DC8A5B5F2F454911572A220EE
                      C9AC6426AB98422E6F249BB656CCE942A29DD4546E0ABFA482538EA0C43F2312
                      97884029CD5924D4587364E5A36E856429A80802B35C59381D70707070707070
                      70D843301D11DBD4541E793B12BCFA8E6F77B77FA85A6E5618241172B5825F0C
                      9376A358E4915A58214F4B2F1F68127164CF3839679E6FAACF4B959115309213
                      F70BDCA9FE67A9FAA034161CA64EE103E5B015BE59A494F897A68C02D2C8B969
                      2DC1C9352EB18FCC3EE79EA24CBE907CF0283111F722F9D4FEFB8DA482E19A78
                      B3677933378339E59FD7376966536DB3554EE80DF8DCE8504C6570C3FBF7F5B0
                      F7079B9975143652E2A00BE4CDD204F535391A7A1207CA8F273BAB961EFE07D0
                      C35302FA7DDD6807070707070707878700C39B03A46E31870612CB4EFB92C6C6
                      7FAE14379680C406A9F23DBFA0BACDB02428276E5F373743BF2237EC4C25A704
                      1B536F619E621AD92F7150AA3AADC5034CD63CE18A7B5C6AA4805CA5FDADBCFF
                      616EA2D31E595A301F2471650989005FF7ED21A678B37914E0A55ECA8DAD0720
                      CF56593B891E2B32C7488937FBB6083610C994FDB668A18C7B06189D88A77C2D
                      125AC8E8D4EE4728934068EB8CECEB91EFF7CB0E2690CCDBC3D5854E25D27A26
                      A4A70ADCEF76D22450A97ACCE8A1FF03503153911A8D8B83838383838383C3FE
                      0AA663136F26C78616B1B2F89A894DEF13EAC68A306975AA805C344DA272812F
                      38DE6C3869CAFBF5B7FB5096475B870D649C96A4B214799BA7ACEE828A575374
                      99D8AAF1DD10A62E35D5C336CA0CFC88628C78300E0F725DC9955054D74368B0
                      425D7AAEA61E4981415F9B40A0B9C748DD9B5815838D5E7BFD3A26A40FA7244C
                      6EC2F6DA927CCBAF4919CD1EE819059EF15D9AA5C254A63161689278A40B9437
                      0B8F14CC10312E392F7AACD1C4A54695974FAF2EF9A686A269F394C4D9C1C1C1
                      C1C1C1C161FF84F1D310487EA447F2D422C0CDED0DE7F63ABFAA863DCF4FE2C4
                      638CC928090A5C2E249D46BFEE06114A9235D8A83371661345B6F6CA2456A617
                      9907A9D424B69054388479CA78889857ED2030C301A762D8ACEF630721F2548F
                      761E7B10A7A62E49C2C950A31F63067CF412267C858C9B275A933C83CC8C13CD
                      8DFAD7A82C3CEB8991735F267B661349CED1FDFC9CD8668371A1F3A89B0CE978
                      8ACD604C3DF8D03C52E3DF4F585482CAB5481C003C807C09A250E88D4D88827F
                      4275D1D361F05D09795B2B8D070F77F16607070707070787FD18E4DF6C0400DA
                      64D4F9009B61DB7B766CB9AC188E158B692439F33CADE2804FA90A16064CDD0D
                      64C63630DB0FC4F62D8E4D2CD9066E2D01F54C669EEC173CA4C8A8A963DDE7CD
                      968293A59A8D0993CC3945CA4A95124D9D13AD91F3F5730DA7E714AAA0CFD1F1
                      1F0E112772AEB5F165E3E6DB599F37B3BCA464DA5ED84EBC59C3CEE1735CD650
                      77B05551C6F4F739B4A9674E6D971CA7618A3717B0AF8530DADAF046C2E7FAAB
                      9E0BE26F7A50F46989A104F80BD6CCD0C1C1C1C1C1C1C1E14141BC99BCD48CFF
                      8347F7D22348CE9FBCE31B9EB7392CC6649066AAE3F9FC011F89DD459D67B2C1
                      F903F1661D30858CB7C748C0A04C753D7AC92A24328669F9AB0551D869CCED01
                      7B0DFB423FE04C443C7BA7FDB832C54E1E101B4853A110ECDE33EA9BC9334CF4
                      9A9BEF232B3B9317C818D930A70AB9BE09DE7B7D81736656621208A745D0A7F6
                      B66038B34D52E489891F7B3A15C61B04D165E594AB42D8AD4FB045A5F7C0AA17
                      01ACE8423924498B353B74BCD9C1C1C1C1C1C1617F05F166A9A416146DF52260
                      21D2C14B1A7FFABCF26E1CA8345A511A30F2E965BA5FF3AD1F37ED5BAC89299F
                      36A9B9F68C3CD866C2E1FF254582E7ABDD53759EC11604B1BCB96F49013BD1D8
                      8C710AE3EAC0D52ED4C992E8A9D7B768B69C35F37FD079DE1CF65D24B81D8C08
                      32E1C494E55C5F950126E64D767401289B11882C9A52131593C6573AF271D829
                      E62D2413021FB916207113E35430FC01DE6C76A7D9BCF3E6BE1A9B0CEFFA4217
                      46698AFD650733F55AC87B845AC295278C7B060B249593B4BC39D2A554B0206C
                      EF18AF2D1BFC67380879F3705BB182590C70F0178C3CDBC1C1C1C1C1C1C1618F
                      C134A5C869E3568C3C2830DBB6427CC5C6CD1FD5C91D8B078045C09B208607A0
                      D54472AC4CBD64895C5AF9E4FC6C1CC980F704F4FA959449F11102D7A99092CD
                      632AA1CE42C773AB099265E9658E72F42828CA9E8A9DA2E53BA929F2BBCED7BA
                      DE0D93D5F9BDA88C80F6F7C574AA480B420ED1D09788104FB59CBDCFDCAD287B
                      DEC66D7783E3D93EA5C88C7D5A2B299632CDC830AFCB4C3F14B73559B848C3C4
                      D311F414B95643917112BF27B8FC6022A8DEBFA373F0912F84D23B411D0B4611
                      9ED2EA62A20835E745E7E0E0E0E0E0E0B0FFC2BA3528B03592556842CAB8E5C6
                      FA8E0BC6277E325A680F0454409ADEE213B7227B348A3D73B2AF83BE649841EC
                      41A24C6D11DE0FD00AC39B172251CA94CA6C9A987801B4671FB6C1CE254594C1
                      DE63D02985D51563B19A52AD984516B613974C22E25121F0789C2083F6A9EA36
                      BDA9DE28ABE2636ACB9F06E1F341AE067377C22CAD5A219417C0603B38383838
                      383838EC252C6F869CADB1265ECC9A905CB9F9DE6F81F8F15019C21E68E4D501
                      11205B553A2B17D7072917B85605C652CD637BD75EEEEBBE39CC1D59794513FF
                      EEF378DF6634728A19DB3A8B5EA6DD569E84AA261B96493C12A8FAB8073D801D
                      134307AF7E1F949F08B012E80DBE09AE531A2123558FD3373B383838383838EC
                      AF207DF314FD9D1230F7522820779A90DB7FB463F2A3826F1AF020F0204AFAB2
                      E129FF31A3E965FD5276A6324748CA051E696BE79612CD9A3785B3C3C3069B07
                      0979276C4D0E7AD68D441BF29BAFA40886080B568B3B2DEEC75E95BC56C62690
                      682FF28B270DAF7C17C0A3CD3EF0BD3D63A331B42002FB0E0E0E0E0E0E0E0E0F
                      017DDEACFAA5E8B82DC9314571FEAC263EBF75FB951EBBB35C887CCE5562C28F
                      449E15258C69E82B8B599F4E199362B259604AFA8A312BE27058E8D054004778
                      09AE75F8030ED89EB9B1A0F5949F34D064F66DF59831DE8B15B1E2103A314CB4
                      6060F0D5D5839E0DFC2F0096E0A77B90142806CD20ADF4753EEE587070707070
                      7070D86F91E93422136AA4BC4066FF124891BA00D7C65B2F1B6F5DDEEADEBE62
                      B02454427E103A6510FBDC8499ED8DF7A98A7020B9E60214BE989293B1136BEC
                      2750C023116A6E0AAFF37E3E235264A66DB2A0D02CCB9D9438C1B8C0D21D1045
                      9AFA460F7ACA2B0E9C32B0E8AD103CC5F0ED524A9279598498FE8C7CFA5CB8AF
                      3BE9E0E0E0E0E0E0E0F010C034925BE2BED2F0669D82408E9324B14F8ECDF892
                      80F476887EB879FBA515B835F0DA80144A735F91CE596801BEA47BFC64B8463B
                      30866E529B62D348C2165081418759616E17F82457E611647711743FEBD31851
                      67DED5C6AD0F543755BE47562469BAB4C09E198E3C0D064E0438084C92A92283
                      C0B864C972D770697F5F77D2C1C1C1C1C1C1C1E1218069A437C6D04D1B23BA94
                      0834B160134716D0E150C227D7EBE625EBEFFCF660B1C17CE5F3D8535DC56568
                      EED713D922DB32DA1B884431C5749A083075AD0D21B3CA0EF7B8501FB5A2BB0B
                      A4D1A0CADE048F9CF3F49471B3011E1653867A34AB4CE852AD3E1EC7A95ABAE8
                      495EED8D109C06AA80BBC27937998511957B41DE8C3B89A15F2BD0ADA31C1C1C
                      1C1C1C1CF65B18FF66E31346F7E85922A1A720E0204C68D1334A66FC7F83BCE8
                      921B61E2B79B77FC2C51B70ED6D2812AC836B4DB50253255208E8C9C5BA4A6FA
                      355542A108F6BE6684EE718EBC19D73FBE029ED9658031C800E34BC7C8299B79
                      7DE26B2A6A433B868DCDE5B591272D5AFA64F04F023818D430C5990509740CDA
                      9A22D84553C551591F6BC79B1D1C1C1C1C1C1CF65F20278A41FBD6868E0AD641
                      9751B69760501136D8680916EB01207BDE00F135CDFAD5133B7E95E81DE51006
                      4B0595163C08A974B44E2964CD28D3900BA4D091763C693F01696A546A120403
                      B2F1264986590829C582344EE248C6B8A862A92FC10B45B9A707971CFD2280E3
                      008E075806AA682C39E873E628C2551492F054F443CC7A2ACF503CB4663A3838
                      3838383838EC33189D06B2A6A45F33DB909E86E13A83BACF9E12A36D0548BBE0
                      FBFDFAD2FA6EDDB8A53E794392DE35D658E7FB935A4A4A2653A9E2543ED04F3D
                      5F95854B0BDC4FA048CDEEA5DCB2DB84923C790A1CA75E164A05A92A0AAA9E58
                      5E291C31505E03D5D5E02F02586172FD06E8D1AEAF84953E0B92BA9BA0356356
                      A51138E76607070707070787FD1DC89B53A2C772EAEEBC00CD5A9214AA43E62F
                      C9FA2551C8944C4A10C8820A368A88DB6F01B88382D0509FBA17AF8DAF86D9A7
                      423A15827370DE2F40B714B260B0A2A511CD634C21E73466BC047A14C4128043
                      4D4193E5962BDB0A91B94F35CD7457407BFDA3865B77C2FE5307070707070707
                      87FD17D6874E5244591BBA4B32D644430BA06AD2C3C030A11EBE964211B720FB
                      49E2846BE907D2C838BA865D596A648997D717B3F6B738DEBC5F401AAE6C8535
                      56A1CCCD4639F567601E0B1A7CAD854C996F369BC237F6B389A99122381E3976
                      01A5FA46D04AF477E7E0E0E0E0E0E0E0B0FF82296D8A676BA36EB6C500853654
                      982BF0B9A53EC48A545BE9022F698A251A8F050D894AB9129E3FC5AE33A4E653
                      CE3F61FF457E36CD31A04C511C3DE54287F0AD08879BC43F88524A24B4A57302
                      C86AB7DB82DDEE4870707070707070D8FF6179B3E549B6CE36CF5EE9EB9D214B
                      0DA4806292C69C73C17DABDC981E4D560FEC003FAC583AD78638EC6330CB6D71
                      DAA968A432116362C2538497670C58D91237207D933A68A8B315C0F78F0935C5
                      AE3D6B71D8DFBD83838383838383C3FE8C9D79333263FA2B9CBA392F8D95F303
                      EF35F7E22D81620A4995F5CBE0530FE62FA5FBDCD9302EE918D3FE804C5793CD
                      9691EE5807B94C9EDCE7CD3128695E32F56E7CDFAE9D48976138B4E072EA3330
                      750078F44E27D470707070707070D89FF1FF00002B8FFBF14C11950000000049
                      454E44AE426082}
                    TabOrder = 0
                    Height = 29
                    Width = 112
                  end
                end
                object btn_KDCall: TcxButton
                  Left = 114
                  Top = 5
                  Width = 22
                  Height = 20
                  Cursor = crHandPoint
                  Hint = #50672#46973#52376#47196' '#51204#54868#44152#44592
                  LookAndFeel.Kind = lfFlat
                  LookAndFeel.SkinName = 'Sharp'
                  OptionsImage.Glyph.SourceDPI = 96
                  OptionsImage.Glyph.Data = {
                    424D360400000000000036000000280000001000000010000000010020000000
                    000000000000C40E0000C40E00000000000000000000000000000B1A08373CBA
                    58FF2C944FCE0205010A00000000000000000000000000000000000000000000
                    00000000000000000000000000000000000000000000071106243BAA47FF3BA4
                    3FFF3FE891FF32A961E401040107000000000000000000000000000000000000
                    00000000000000000000000000000000000000000000225B21A548E976FF44CE
                    63FF399733FF3EE894FF30A55AE40308020F0000000000000000000000000000
                    0000000000000000000000000000000000000000000037953FF149E878FF48DF
                    73FF44CD62FF3BA440FF35E28CFF329D53E00205020A00000000000000000000
                    0000000000000000000000000000000000000000000039A747F349E575FF46D6
                    6BFF4AE176FF38CA58FF49CB6AFF8EE6B9FF081C073300000000000000000000
                    0000000000000000000000000000000000000000000039A747F349E576FF46D7
                    6CFF3CD564FF5BE98AFFA7EAB7FF265B26920000000000000000000000000000
                    00000000000000000000000000000000000000000000328E39EE47E776FF46D6
                    6CFF43DE72FF97E0A9FF1F501D93000000000000000000000000000000000000
                    000000000000000000000000000000000000000000002957289253E67DFF41D7
                    6BFF46E176FF409845E600000000000000000000000000000000000000000000
                    000000000000000000000000000000000000000000000E1F0C3C67D884FF3FDF
                    70FF46DD76FF3ED069FF255F21AF000000000000000000000000000000000206
                    03091B57277C0E2C1240000000000000000000000000000000004D8549D25BE8
                    8AFF3BD76CFF47E17DFF40D36FFF256526B00000000000000000000000002C78
                    2CC83FC964FF3BE695FF16441E610000000000000000000000000715052C7AC9
                    84FF50EA89FF38D66FFF44E684FF40D777FF318B36E3071206201C4F1C853BC6
                    6AFF399739FF40CF6DFF38E59BFF1F622C880000000000000000000000001435
                    106A88D398FF4CE98DFF34D76EFF42DF84FF41DE82FF3AC161FF3CCB6FFF3FE9
                    9BFF3ADB8CFF38A743FF42CF6EFF35E49BFF1C672B8C00000000000000000000
                    00001538106E85D094FF5CED9EFF2DD874FF3DDB81FF40E28BFF3FE28FFF3CDA
                    8AFF3BE296FF3AE39AFF33B049FF3CD273FF6FE5AEFF00000000000000000000
                    0000000000000F2F0D5E79C180FF7EEFB6FF3FE48EFF30DA81FF2ED781FF35DA
                    88FF33DB8AFF2ADD8FFF26DF97FF8FDFAFFF499C5CC100000000000000000000
                    0000000000000000000000020003427D3FC48DDBA5FF73EEB6FF5CEBAFFF44E5
                    A3FF43E5A5FF5CEABCFF98F1D5FF61B97CE10103010500000000000000000000
                    000000000000000000000000000000000000071B0732305D308A61AA6DE370CE
                    90F873D098F968B479E2205326720103010400000000}
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 2
                  OnClick = btn_KDCallClick
                end
                object lb_KDWorker: TcxLabel
                  Left = 138
                  Top = 5
                  Hint = 'Color'
                  Caption = '['#44592#49324#51221#48372#51312#54924']'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clBlue
                  Style.Font.Height = -12
                  Style.Font.Name = #47569#51008' '#44256#46357
                  Style.Font.Style = [fsBold]
                  Style.LookAndFeel.NativeStyle = True
                  Style.IsFontAssigned = True
                  StyleDisabled.LookAndFeel.NativeStyle = True
                  StyleFocused.LookAndFeel.NativeStyle = True
                  StyleHot.LookAndFeel.NativeStyle = True
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  AnchorY = 15
                end
              end
              object cxGrid4: TcxGrid
                Left = 0
                Top = 30
                Width = 653
                Height = 129
                Align = alClient
                BevelInner = bvNone
                BevelOuter = bvNone
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #47569#51008' '#44256#46357
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                LookAndFeel.NativeStyle = False
                object cxGridKDDrive: TcxGridDBTableView
                  PopupMenu = PopupMenu2
                  OnMouseDown = cxGridKDDriveMouseDown
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
                  ScrollbarAnnotations.CustomAnnotations = <>
                  OnCellDblClick = cxGridKDDriveCellDblClick
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
                  OptionsCustomize.ColumnGrouping = False
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
                  OptionsView.HeaderHeight = 23
                  object cxGridDBColumn45: TcxGridDBColumn
                    DataBinding.FieldName = 'No'
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 25
                  end
                  object cxGridDBColumn46: TcxGridDBColumn
                    DataBinding.FieldName = #49345#53468
                    PropertiesClassName = 'TcxImageComboBoxProperties'
                    Properties.Images = Frm_Main.cximgOrderStatus
                    Properties.Items = <
                      item
                        Description = #48176#52264
                        ImageIndex = 1
                        Value = #48176#52264
                      end
                      item
                        Description = #44053#51228
                        ImageIndex = 3
                        Value = #44053#51228
                      end
                      item
                        Description = #50756#47308
                        ImageIndex = 2
                        Value = #50756#47308
                      end
                      item
                        Description = #47928#51032
                        ImageIndex = 4
                        Value = #47928#51032
                      end
                      item
                        Description = #45824#44592
                        ImageIndex = 5
                        Value = #45824#44592
                      end
                      item
                        Description = #48176#52264#52712#49548
                        ImageIndex = 6
                        Value = #48176#52264#52712#49548
                      end
                      item
                        Description = #52712#49548
                        ImageIndex = 7
                        Value = #52712#49548
                      end
                      item
                        Description = #49688#51221
                        ImageIndex = 8
                        Value = #49688#51221
                      end
                      item
                        Description = #50696#50557
                        ImageIndex = 9
                        Value = #50696#50557
                      end
                      item
                        Description = #45824#44592#54644#51228
                        ImageIndex = 10
                        Value = #45824#44592#54644#51228
                      end
                      item
                        Description = #50868#54665
                        ImageIndex = 19
                        Value = #50868#54665
                      end>
                    HeaderAlignmentHorz = taCenter
                    Width = 40
                  end
                  object cxGridDBColumn47: TcxGridDBColumn
                    DataBinding.FieldName = #48156#51452#49324
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Horz = taLeftJustify
                    Properties.Alignment.Vert = taVCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 80
                  end
                  object cxGridDBColumn48: TcxGridDBColumn
                    DataBinding.FieldName = #52636#48156#51648
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Horz = taLeftJustify
                    Properties.Alignment.Vert = taVCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 110
                  end
                  object cxGridDBColumn49: TcxGridDBColumn
                    DataBinding.FieldName = #46020#52265#51648
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Horz = taLeftJustify
                    Properties.Alignment.Vert = taVCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 110
                  end
                  object cxGridDBColumn50: TcxGridDBColumn
                    DataBinding.FieldName = #49884#44036
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.Alignment.Vert = taVCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 83
                  end
                  object cxGridDBColumn51: TcxGridDBColumn
                    DataBinding.FieldName = #50836#44552
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = ',0.;-,0.'
                    HeaderAlignmentHorz = taCenter
                    Width = 48
                  end
                  object cxGridDBColumn52: TcxGridDBColumn
                    DataBinding.FieldName = #50724#45908#53440#51077
                    PropertiesClassName = 'TcxLabelProperties'
                    Visible = False
                  end
                  object cxGridDBColumn53: TcxGridDBColumn
                    DataBinding.FieldName = #51217#49688#48264#54840
                    PropertiesClassName = 'TcxLabelProperties'
                    Visible = False
                  end
                  object cxGridDBColumn54: TcxGridDBColumn
                    DataBinding.FieldName = #45824#54364#48264#54840
                    PropertiesClassName = 'TcxLabelProperties'
                    Visible = False
                  end
                  object cxGridDBColumn55: TcxGridDBColumn
                    DataBinding.FieldName = #51648#49324#47749
                    PropertiesClassName = 'TcxLabelProperties'
                    Visible = False
                  end
                  object cxGridDBColumn56: TcxGridDBColumn
                    DataBinding.FieldName = #53084#49468#53552#53076#46300
                    PropertiesClassName = 'TcxLabelProperties'
                    Visible = False
                  end
                  object cxGridDBColumn57: TcxGridDBColumn
                    DataBinding.FieldName = #44256#44061#50672#46973#52376
                    PropertiesClassName = 'TcxLabelProperties'
                    Visible = False
                  end
                  object cxGridDBColumn58: TcxGridDBColumn
                    DataBinding.FieldName = #53084#49468#53552'2'
                    Visible = False
                  end
                end
                object cxGridLevel4: TcxGridLevel
                  GridView = cxGridKDDrive
                end
              end
            end
            object splAccept: TcxSplitter
              Left = 0
              Top = 143
              Width = 653
              Height = 6
              AlignSplitter = salBottom
              MinSize = 1
            end
            object pnl_CallTOT: TPanel
              Left = 0
              Top = 308
              Width = 653
              Height = 110
              Align = alBottom
              BevelOuter = bvNone
              ParentBackground = False
              TabOrder = 2
              object Panel5: TPanel
                Left = 0
                Top = 0
                Width = 653
                Height = 39
                Align = alTop
                Alignment = taLeftJustify
                BevelOuter = bvNone
                Caption = '   ['#51068#48324#54788#54889']'
                Color = 12566463
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #47569#51008' '#44256#46357
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
                object Shape4: TShape
                  Left = 348
                  Top = 1
                  Width = 125
                  Height = 37
                  Pen.Color = 7188361
                end
                object Shape3: TShape
                  Left = 260
                  Top = 6
                  Width = 82
                  Height = 27
                  Pen.Color = 7188361
                  Shape = stRoundRect
                end
                object Shape2: TShape
                  Left = 93
                  Top = 6
                  Width = 163
                  Height = 27
                  Pen.Color = 7188361
                  Shape = stRoundRect
                end
                object de_stDate: TcxDateEdit
                  Left = 383
                  Top = 0
                  AutoSize = False
                  BeepOnEnter = False
                  EditValue = 0d
                  ParentFont = False
                  ParentShowHint = False
                  Properties.DateButtons = [btnNow, btnToday]
                  Properties.InputKind = ikStandard
                  ShowHint = True
                  Style.BorderStyle = ebsOffice11
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = #47569#51008' '#44256#46357
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
                  TabOrder = 0
                  Height = 20
                  Width = 90
                end
                object de_edDate: TcxDateEdit
                  Left = 383
                  Top = 19
                  EditValue = 0d
                  ParentFont = False
                  ParentShowHint = False
                  Properties.DateButtons = [btnNow, btnToday]
                  Properties.InputKind = ikStandard
                  ShowHint = True
                  Style.BorderStyle = ebsOffice11
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = #47569#51008' '#44256#46357
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
                  TabOrder = 1
                  Width = 90
                end
                object Label8: TcxLabel
                  Left = 263
                  Top = 12
                  Caption = #52712#49548#50984':'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = #47569#51008' '#44256#46357
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                end
                object lblCuCancel: TcxLabel
                  Left = 306
                  Top = 12
                  Caption = '100%'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = #47569#51008' '#44256#46357
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                end
                object Label1: TcxLabel
                  Left = 100
                  Top = 11
                  Caption = #45817#51068
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = #47569#51008' '#44256#46357
                  Style.Font.Style = [fsBold]
                  Style.TextColor = 8421440
                  Style.IsFontAssigned = True
                  Transparent = True
                end
                object Label10: TcxLabel
                  Left = 137
                  Top = 11
                  Caption = #50756#47308':'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = #47569#51008' '#44256#46357
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                end
                object Label6: TcxLabel
                  Left = 196
                  Top = 11
                  Caption = #51217#49688':'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = #47569#51008' '#44256#46357
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                end
                object lblCoCnt: TcxLabel
                  Left = 166
                  Top = 11
                  Caption = '272'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = #47569#51008' '#44256#46357
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                end
                object lblCuCnt: TcxLabel
                  Left = 226
                  Top = 11
                  Caption = '256'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = #47569#51008' '#44256#46357
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                end
                object btn5: TcxButton
                  Left = 475
                  Top = 1
                  Width = 42
                  Height = 37
                  Cursor = crHandPoint
                  Cancel = True
                  Caption = #51312#54924
                  LookAndFeel.SkinName = 'Sharp'
                  TabOrder = 2
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = #47569#51008' '#44256#46357
                  Font.Style = []
                  ParentFont = False
                  OnClick = btn5Click
                end
                object Label4: TcxLabel
                  Left = 352
                  Top = 13
                  Caption = #44592#44036
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = #44404#47548
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                end
              end
              object cxOrderGrid: TcxGrid
                Left = 0
                Top = 39
                Width = 653
                Height = 71
                Align = alClient
                BevelInner = bvNone
                BevelOuter = bvNone
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #47569#51008' '#44256#46357
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                LookAndFeel.NativeStyle = False
                object cxOrder_Stat: TcxGridDBTableView
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
                  ScrollbarAnnotations.CustomAnnotations = <>
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
                  OptionsCustomize.ColumnGrouping = False
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
                  OptionsView.HeaderHeight = 23
                end
                object cxOrder_Level: TcxGridLevel
                  GridView = cxOrder_Stat
                end
              end
            end
            object pnlCallDrive: TPanel
              Left = 0
              Top = 0
              Width = 653
              Height = 143
              Align = alClient
              BevelOuter = bvNone
              ParentBackground = False
              TabOrder = 3
              DesignSize = (
                653
                143)
              object cxGrid1: TcxGrid
                Left = 0
                Top = 31
                Width = 653
                Height = 112
                Align = alClient
                BevelInner = bvNone
                BevelOuter = bvNone
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #47569#51008' '#44256#46357
                Font.Style = []
                ParentFont = False
                PopupMenu = PopupMenu2
                TabOrder = 0
                LookAndFeel.NativeStyle = False
                object cxToday_GridList: TcxGridDBTableView
                  PopupMenu = PopupMenu2
                  OnMouseDown = cxToday_GridListMouseDown
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
                  ScrollbarAnnotations.CustomAnnotations = <>
                  OnCellDblClick = cxToday_GridListCellDblClick
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
                  OptionsCustomize.ColumnGrouping = False
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
                  OptionsView.HeaderHeight = 23
                  object cxgrdbclmn1: TcxGridDBColumn
                    DataBinding.FieldName = 'No'
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 25
                  end
                  object cxgrdbclmn2: TcxGridDBColumn
                    DataBinding.FieldName = #49345#53468
                    PropertiesClassName = 'TcxImageComboBoxProperties'
                    Properties.Images = Frm_Main.cximgOrderStatus
                    Properties.Items = <
                      item
                        Description = #48176#52264
                        ImageIndex = 1
                        Value = #48176#52264
                      end
                      item
                        Description = #44053#51228
                        ImageIndex = 3
                        Value = #44053#51228
                      end
                      item
                        Description = #50756#47308
                        ImageIndex = 2
                        Value = #50756#47308
                      end
                      item
                        Description = #47928#51032
                        ImageIndex = 4
                        Value = #47928#51032
                      end
                      item
                        Description = #45824#44592
                        ImageIndex = 5
                        Value = #45824#44592
                      end
                      item
                        Description = #48176#52264#52712#49548
                        ImageIndex = 6
                        Value = #48176#52264#52712#49548
                      end
                      item
                        Description = #52712#49548
                        ImageIndex = 7
                        Value = #52712#49548
                      end
                      item
                        Description = #49688#51221
                        ImageIndex = 8
                        Value = #49688#51221
                      end
                      item
                        Description = #50696#50557
                        ImageIndex = 9
                        Value = #50696#50557
                      end
                      item
                        Description = #45824#44592#54644#51228
                        ImageIndex = 10
                        Value = #45824#44592#54644#51228
                      end
                      item
                        Description = #50868#54665
                        ImageIndex = 19
                        Value = #50868#54665
                      end>
                    HeaderAlignmentHorz = taCenter
                    Width = 60
                  end
                  object cxgrdbclmn3: TcxGridDBColumn
                    DataBinding.FieldName = #48156#51452#49324
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Horz = taLeftJustify
                    Properties.Alignment.Vert = taVCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 80
                  end
                  object cxgrdbclmn4: TcxGridDBColumn
                    DataBinding.FieldName = #52636#48156#51648
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Horz = taLeftJustify
                    Properties.Alignment.Vert = taVCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 110
                  end
                  object cxgrdbclmn5: TcxGridDBColumn
                    DataBinding.FieldName = #46020#52265#51648
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Horz = taLeftJustify
                    Properties.Alignment.Vert = taVCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 110
                  end
                  object cxgrdbclmn6: TcxGridDBColumn
                    DataBinding.FieldName = #49884#44036
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.Alignment.Vert = taVCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 83
                  end
                  object cxgrdbclmn7: TcxGridDBColumn
                    DataBinding.FieldName = #50836#44552
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = ',0.;-,0.'
                    HeaderAlignmentHorz = taCenter
                    Width = 48
                  end
                  object cxgrdbclmn8: TcxGridDBColumn
                    DataBinding.FieldName = #50724#45908#53440#51077
                    PropertiesClassName = 'TcxLabelProperties'
                    Visible = False
                  end
                  object cxgrdbclmn9: TcxGridDBColumn
                    DataBinding.FieldName = #51217#49688#48264#54840
                    PropertiesClassName = 'TcxLabelProperties'
                    Visible = False
                  end
                  object cxgrdbclmn10: TcxGridDBColumn
                    DataBinding.FieldName = #45824#54364#48264#54840
                    PropertiesClassName = 'TcxLabelProperties'
                    Visible = False
                  end
                  object cxgrdbclmn11: TcxGridDBColumn
                    DataBinding.FieldName = #51648#49324#47749
                    PropertiesClassName = 'TcxLabelProperties'
                    Visible = False
                  end
                  object cxgrdbclmn12: TcxGridDBColumn
                    DataBinding.FieldName = #53084#49468#53552#53076#46300
                    PropertiesClassName = 'TcxLabelProperties'
                    Visible = False
                  end
                  object cxgrdbclmn13: TcxGridDBColumn
                    DataBinding.FieldName = #44256#44061#50672#46973#52376
                    PropertiesClassName = 'TcxLabelProperties'
                    Visible = False
                  end
                  object cxgrdbclmn14: TcxGridDBColumn
                    DataBinding.FieldName = #53084#49468#53552'2'
                    Visible = False
                  end
                end
                object cxGridLevel1: TcxGridLevel
                  GridView = cxToday_GridList
                end
              end
              object Panel8: TPanel
                Left = 0
                Top = 0
                Width = 653
                Height = 31
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 1
                DesignSize = (
                  653
                  31)
                object cxGroupBox1: TcxGroupBox
                  Left = 1
                  Top = 1
                  Anchors = [akLeft, akTop, akRight]
                  Style.BorderStyle = ebsFlat
                  Style.LookAndFeel.NativeStyle = False
                  Style.LookAndFeel.SkinName = 'Sharp'
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.SkinName = 'Sharp'
                  TabOrder = 0
                  Height = 29
                  Width = 651
                  object btn_wksms: TcxButton
                    Left = 66
                    Top = 3
                    Width = 64
                    Height = 22
                    Cursor = crHandPoint
                    Cancel = True
                    Caption = #44592#49324'SMS'
                    LookAndFeel.SkinName = 'Sharp'
                    TabOrder = 0
                    OnClick = btn_wksmsClick
                  end
                  object btn_wk_move: TcxButton
                    Left = 131
                    Top = 3
                    Width = 78
                    Height = 22
                    Cursor = crHandPoint
                    Cancel = True
                    Caption = #44592#49324#51060#46041#47196#44536
                    LookAndFeel.SkinName = 'Sharp'
                    TabOrder = 1
                    OnClick = btn_wk_moveClick
                  end
                  object btn_baecha_limit: TcxButton
                    Left = 210
                    Top = 3
                    Width = 58
                    Height = 22
                    Cursor = crHandPoint
                    Cancel = True
                    Caption = #48176#52264#51228#54620
                    LookAndFeel.SkinName = 'Sharp'
                    TabOrder = 2
                    OnClick = btn_baecha_limitClick
                  end
                  object btn_baecha_cancellog: TcxButton
                    Left = 269
                    Top = 3
                    Width = 80
                    Height = 22
                    Cursor = crHandPoint
                    Cancel = True
                    Caption = #48176#52264#52712#49548#47196#44536
                    LookAndFeel.SkinName = 'Sharp'
                    TabOrder = 3
                    OnClick = btn_baecha_cancellogClick
                  end
                  object btn_wk_penalty: TcxButton
                    Left = 350
                    Top = 3
                    Width = 153
                    Height = 22
                    Cursor = crHandPoint
                    Cancel = True
                    Caption = #44592#49324' '#54056#45328#54000#48512#44284','#47700#47784','#52628#52380
                    LookAndFeel.SkinName = 'Sharp'
                    TabOrder = 4
                    OnClick = btn_wk_penaltyClick
                  end
                  object btn_wkModify: TcxButton
                    Left = 3
                    Top = 3
                    Width = 62
                    Height = 22
                    Cursor = crHandPoint
                    Cancel = True
                    Caption = #44592#49324#49688#51221
                    LookAndFeel.SkinName = 'Sharp'
                    TabOrder = 5
                    OnClick = btn_wkModifyClick
                  end
                end
              end
              object BtnLClose1: TcxButton
                Left = 111
                Top = 118
                Width = 16
                Height = 24
                Cursor = crHandPoint
                Hint = #44592#49324#49324#51652
                Anchors = [akLeft, akBottom]
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
                  00000000000000000000707070B3A0A0A0FF0000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000A0A0A0FFD3D3D3FFA0A0A0FF00000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000A0A0A0FFD8D8D8FFD8D8D8FFA0A0A0FF000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000A0A0A0FFDDDDDDFFDDDDDDFFDDDDDDFFA0A0A0FF0000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000A0A0A0FFD8D8D8FFDADADAFFDDDDDDFFE1E1E1FFA0A0
                  A0FF000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000A0A0A0FFDCDCDCFFDFDFDFFFE2E2E2FFE6E6E6FFA0A0
                  A0FF000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000A0A0A0FFECECECFFECECECFFECECECFFA0A0A0FF0000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000A0A0A0FFF1F1F1FFF1F1F1FFA0A0A0FF000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000A0A0A0FFF1F1F1FFA0A0A0FF00000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000707070B3A0A0A0FF0000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000}
                ParentShowHint = False
                ShowHint = True
                TabOrder = 3
                OnClick = BtnLClose1Click
              end
              object PnlWorkImg: TPanel
                Left = 0
                Top = 14
                Width = 113
                Height = 128
                Anchors = [akLeft, akBottom]
                BevelKind = bkFlat
                BevelOuter = bvNone
                TabOrder = 2
                object cxiWkImg: TWebImage
                  Left = 0
                  Top = 19
                  Width = 109
                  Height = 105
                  Animate = False
                  Async = False
                  AutoSize = False
                  CheckContentLength = False
                  NoCache = False
                  WebPicture.Stretch = False
                  WebPicture.Frame = 0
                  PictureLayout = plStretched
                  Align = alBottom
                  Color = clNone
                  ParentColor = False
                  OnDownLoadError = cxiWkImgDownLoadError
                  Version = '1.4.0.0'
                  ExplicitLeft = 4
                  ExplicitTop = 22
                end
                object cxLblWkNm: TcxLabel
                  Left = 0
                  Top = 0
                  Align = alTop
                  Properties.Alignment.Horz = taCenter
                  Transparent = True
                  AnchorX = 55
                end
              end
            end
          end
        end
      end
    end
    object lbTitle: TListBox
      Left = 17
      Top = 181
      Width = 121
      Height = 134
      ImeName = 'Microsoft Office IME 2007'
      ItemHeight = 15
      Items.Strings = (
        'No'
        #52572#52488#51217#49688#51068#49884
        #49345#53468
        #52636#48156#51648
        #48373#49688#53084
        #46020#52265#51648
        #44592#49324
        #50836#44552
        #47560#51068#47532#51648
        #52712#49548#49324#50976
        #51201#50836
        #51217#49688#51088
        #45824#54364#48264#54840
        #44256#44061#47700#47784
        #51217#49688#48264#54840
        #51217#49688#51068#49884
        #49345#53468#53076#46300'2'
        #44256#44061#51204#54868
        #52636#51340#54364'X'
        #52636#51340#54364'Y'
        #52636'1'
        #52636'2'
        #52636'3'
        #52636'4'
        #52636'5'
        #46020#51340#54364'X'
        #46020#51340#54364'Y'
        #46020'1'
        #46020'2'
        #46020'3'
        #46020'4'
        #46020'5'
        #51648#49324#47749
        #53084#49468#53552#53076#46300
        #50724#45908#53440#51077
        #48176#52264#49884#44036
        #50756#47308#49884#44036
        #44592#49324#49324#48264
        #44592#49324#48376#49324#53076#46300
        #44592#49324#51648#49324#53076#46300
        #44592#49324#53084#49468#53552
        #51217#49688#44396#48516
        #51201#50836'2'
        #44221#50976#50836#44552
        #53084#49468#53552'2'
        #48372#51221#50836#44552
        #45824#44592#50836#44552
        #44221#50976#51648
        #44221#50976#51648#51221#48372)
      TabOrder = 1
      Visible = False
    end
  end
  object grpSetBrch_select: TcxGroupBox
    Left = 8
    Top = 296
    Caption = ' SMS Charge'
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Sharp'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Sharp'
    TabOrder = 1
    Visible = False
    Height = 93
    Width = 225
    object Shape13: TShape
      Left = 3
      Top = 17
      Width = 219
      Height = 67
      Align = alClient
      Brush.Color = 13285815
      Pen.Color = 13285815
      ExplicitLeft = 6
      ExplicitTop = 20
    end
    object cxComboBox1: TcxComboBox
      Left = 3
      Top = 35
      AutoSize = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        '1'
        '1')
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Sharp'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Sharp'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 0
      Height = 19
      Width = 219
    end
    object cxLabel1: TcxLabel
      Left = 10
      Top = 18
      Caption = #51648#49324#49440#53469
      Style.BorderStyle = ebsNone
      Style.Shadow = False
      Transparent = True
    end
    object Lbl_SmsCash: TcxLabel
      Left = 10
      Top = 60
      Caption = 'SMS'#52880#49772
      Style.BorderStyle = ebsNone
      Style.Shadow = False
      Transparent = True
    end
    object btn2: TcxButton
      Left = 130
      Top = 58
      Width = 45
      Height = 23
      Cursor = crHandPoint
      Caption = #54869'  '#51064
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 1
      OnClick = btn2Click
    end
    object btn3: TcxButton
      Left = 176
      Top = 58
      Width = 45
      Height = 23
      Cursor = crHandPoint
      Caption = #52712#49548
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 2
      OnClick = btn3Click
    end
  end
  object pnlColorSet: TcxGroupBox
    Left = -158
    Top = 126
    Style.BorderStyle = ebsFlat
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Sharp'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Sharp'
    TabOrder = 2
    Visible = False
    Height = 124
    Width = 251
    object lblColorTelSe: TcxLabel
      Left = 5
      Top = 89
      Hint = 'Color'
      AutoSize = False
      Caption = ' '#51204#54868#48264#54840'2'#51032' '#50724#45908' '#48176#44221#49353
      ParentColor = False
      ParentShowHint = False
      ShowHint = False
      Style.BorderStyle = ebsOffice11
      Style.Color = 3211263
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      OnClick = lblColorTodayClick
      Height = 27
      Width = 210
      AnchorY = 103
    end
    object lblColorMulti: TcxLabel
      Left = 5
      Top = 62
      Hint = 'Color'
      AutoSize = False
      Caption = ' '#53440#44592#49324#51032' '#48373#49688#53084' '#48176#44221#49353
      ParentColor = False
      ParentShowHint = False
      ShowHint = False
      Style.BorderStyle = ebsOffice11
      Style.Color = 16724223
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      OnClick = lblColorTodayClick
      Height = 27
      Width = 210
      AnchorY = 76
    end
    object lblColorToday: TcxLabel
      Left = 5
      Top = 6
      Hint = 'Color'
      AutoSize = False
      Caption = ' '#45817#51068#50724#45908#51032' '#48176#44221#49353
      ParentColor = False
      ParentShowHint = False
      ShowHint = False
      Style.BorderStyle = ebsOffice11
      Style.Color = 16686752
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      OnClick = lblColorTodayClick
      Height = 27
      Width = 210
      AnchorY = 20
    end
    object lblColorUpdate: TcxLabel
      Left = 5
      Top = 34
      Hint = 'Color'
      AutoSize = False
      Caption = ' '#49688#51221#50724#45908#51032' '#48176#44221#49353
      ParentColor = False
      ParentShowHint = False
      ShowHint = False
      Style.BorderStyle = ebsOffice11
      Style.Color = 16776993
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      OnClick = lblColorTodayClick
      Height = 27
      Width = 210
      AnchorY = 48
    end
    object BtnpnlColorSetClose: TcxButton
      Left = 217
      Top = 7
      Width = 28
      Height = 109
      Cursor = crHandPoint
      Caption = #45803#13#10#13#10#44592
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 0
      OnClick = BtnpnlColorSetCloseClick
    end
  end
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 843
    Height = 33
    Cursor = crSizeAll
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Color = 12566463
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #44404#47548
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    OnMouseDown = pnlTitleMouseDown
    OnResize = pnlTitleResize
    DesignSize = (
      843
      33)
    object cxLblActive: TLabel
      Left = 0
      Top = 0
      Width = 843
      Height = 5
      Align = alTop
      AutoSize = False
      Color = 33023
      ParentColor = False
      Transparent = False
      OnMouseDown = pnlTitleMouseDown
      ExplicitWidth = 713
    end
    object lbl8: TcxLabel
      Left = 234
      Top = 10
      Cursor = crSizeAll
      Caption = #52636'/'#46020'/'#50836'/'#51201' '#53364#47533#51088#46041#51077#47141
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #47569#51008#44256#46357
      Style.Font.Style = [fsBold]
      Style.TextColor = clTeal
      Style.IsFontAssigned = True
      Transparent = True
      OnMouseDown = pnlTitleMouseDown
    end
    object btnClose: TcxButton
      Left = 811
      Top = 6
      Width = 29
      Height = 25
      Cursor = crHandPoint
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
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      OnClick = btnCloseClick
    end
    object BtnSheet1: TcxButton
      Left = 3
      Top = 6
      Width = 110
      Height = 25
      Cursor = crHandPoint
      Caption = #44284#44144#51060#50857#45236#50669
      Colors.Default = 16635384
      Colors.Normal = 16773362
      Colors.Hot = 16360076
      Colors.Pressed = 16644080
      Colors.Disabled = 4227327
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Sharp'
      SpeedButtonOptions.GroupIndex = 1
      SpeedButtonOptions.AllowAllUp = True
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      OnClick = BtnSheet1Click
    end
    object BtnSheet2: TcxButton
      Left = 117
      Top = 6
      Width = 110
      Height = 25
      Cursor = crHandPoint
      Caption = #44592#49324#51221#48372'+'#45817#51068#50868#54665
      Colors.Default = 16635384
      Colors.Normal = 16773362
      Colors.Hot = 16360076
      Colors.Pressed = 16644080
      Colors.Disabled = 4227327
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Sharp'
      SpeedButtonOptions.GroupIndex = 1
      SpeedButtonOptions.AllowAllUp = True
      TabOrder = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      OnClick = BtnSheet2Click
    end
    object cxBtnOldSelect: TcxButton
      Left = 616
      Top = 6
      Width = 86
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #44284#44144#45236#50669#51312#54924
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      OnClick = cxBtnOldSelectClick
    end
    object cxBtnColorSet: TcxButton
      Left = 751
      Top = 6
      Width = 32
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #49353#49345
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      OnClick = cxBtnColorSetClick
    end
    object cbStatesView: TcxComboBox
      Left = 363
      Top = 3
      Anchors = [akTop, akRight]
      AutoSize = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        #51204#52404
        #50756#47308
        #52712#49548
        #47928#51032)
      Properties.OnChange = cbStatesViewPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = []
      Style.LookAndFeel.SkinName = 'Sharp'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      StyleFocused.LookAndFeel.SkinName = 'Sharp'
      StyleHot.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 5
      Text = #51204#52404
      Visible = False
      Height = 25
      Width = 47
    end
    object cxBtnFixPos: TcxButton
      Left = 786
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
      TabOrder = 6
      OnClick = cxBtnFixPosClick
    end
    object lb_wkname_title: TcxLabel
      Left = 233
      Top = 9
      Cursor = crSizeAll
      Caption = '3000*'#54861#44600#46041' / '#54540#47084#49828#44592#49324' or '#51068#48152#44592#49324
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #47569#51008#44256#46357
      Style.Font.Style = [fsBold]
      Style.TextColor = 4150140
      Style.IsFontAssigned = True
      Transparent = True
      OnMouseDown = pnlTitleMouseDown
    end
    object btn_SelStCd: TcxButton
      Left = 703
      Top = 6
      Width = 47
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #49345#53468
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      WordWrap = True
      OnClick = btn_SelStCdClick
    end
    object cxChkTitle: TcxCheckComboBox
      Left = 508
      Top = 5
      Anchors = [akTop, akRight]
      AutoSize = False
      Properties.EmptySelectionText = ' '
      Properties.DropDownRows = 16
      Properties.Items = <
        item
          Description = #52572#52488#51217#49688#51068#49884
        end
        item
          Description = #49345#53468
        end
        item
          Description = #52636#48156#51648
        end
        item
          Description = #48373#49688#53084
        end
        item
          Description = #46020#52265#51648
        end
        item
          Description = #44592#49324
        end
        item
          Description = #50836#44552
        end
        item
          Description = #47560#51068#47532#51648
        end
        item
          Description = #52712#49548#49324#50976
        end
        item
          Description = #51201#50836
        end
        item
          Description = #51217#49688#51088
        end
        item
          Description = #45824#54364#48264#54840
        end
        item
          Description = #44256#44061#47700#47784
        end
        item
          Description = #51217#49688#48264#54840
        end
        item
          Description = #51648#49324#47749
        end
        item
          Description = #50756#47308#49884#44036
        end
        item
          Description = #48176#52264#49884#44036
        end
        item
          Description = #51217#49688#44396#48516
        end
        item
          Description = #51201#50836'2'
        end
        item
          Description = #44221#50976#50836#44552
        end
        item
          Description = #48372#51221#50836#44552
        end
        item
          Description = #45824#44592#50836#44552
        end
        item
          Description = #44221#50976#51648
        end>
      Properties.OnChange = cxChkTitlePropertiesChange
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
      Height = 26
      Width = 109
    end
  end
  object grpSetExcel: TcxGroupBox
    Left = 240
    Top = 325
    Caption = #50641#49472#51064#51613
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Sharp'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Sharp'
    TabOrder = 4
    Visible = False
    Height = 64
    Width = 220
    object Label32: TLabel
      Left = 178
      Top = 0
      Width = 36
      Height = 15
      Caption = #51064#51613#53412
      Visible = False
    end
    object Shape5: TShape
      Left = 3
      Top = 17
      Width = 214
      Height = 38
      Align = alClient
      Brush.Color = 13285815
      Pen.Color = 13285815
      ExplicitLeft = 6
      ExplicitTop = 20
    end
    object Edit1: TcxCurrencyEdit
      Left = 8
      Top = 25
      AutoSize = False
      Properties.AssignedValues.DisplayFormat = True
      Properties.AssignedValues.EditFormat = True
      Style.HotTrack = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Sharp'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Sharp'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 0
      Height = 20
      Width = 71
    end
    object btn_sms_con: TcxButton
      Left = 88
      Top = 21
      Width = 60
      Height = 28
      Cursor = crHandPoint
      Caption = #51064#51613#54869#51064
      Enabled = False
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 1
      OnClick = btn_sms_conClick
    end
    object btn1: TcxButton
      Left = 150
      Top = 21
      Width = 60
      Height = 28
      Cursor = crHandPoint
      Caption = #45803#44592
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 2
      OnClick = btn1Click
    end
  end
  object cxBtnAccept: TcxButton
    Left = 646
    Top = 6
    Width = 56
    Height = 25
    Cursor = crHandPoint
    Anchors = [akTop, akRight]
    Caption = #51217#49688#54616#44592
    LookAndFeel.SkinName = 'Sharp'
    TabOrder = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
    OnClick = cxBtnAcceptClick
  end
  object splOrderHis: TcxSplitter
    Left = 0
    Top = 453
    Width = 843
    Height = 6
    AlignSplitter = salBottom
    MinSize = 1
  end
  object ImageList1: TImageList
    Left = 400
    Top = 88
    Bitmap = {
      494C01010B000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
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
      00009CCEFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000800000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000031000000
      630000CEFF000000000000003100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000052C6B50039CEBD004ACEBD0000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000003100639CCE000000
      6300009CFF0000000000639CCE00000031000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000800
      000042C6B50052C6B5004ACEBD0042CEBD004ACEB5004ACEBD004ACEB5000000
      00000000000000000000000000000000000000000000000000000094FF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000316300639CCE000000
      6300000031009CCEFF0031639C00003131000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000042CE
      B5004ACEBD004ACEB5005AFFEF005AFFE7005AFFEF004ACEB50042CEBD0042CE
      BD000800000000000000000000000000000000000000000000000094FF0000FF
      FF0000FFFF00000000000000000000000000000000000094FF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000003163009CCEFF000000
      630000003100639CCE00639CCE00000031000000310000003100000000000000
      00000000000000000000000000000000000000000000080000004AC6B50039CE
      B50052FFE7005AFFE70052FFE70052FFE70052FFE70052FFEF005AFFE70042CE
      BD004ACEB500000000000000000000000000000000000000000000B5FF0000FF
      FF000000000000FFFF0000FFFF0000FFFF0000FFFF000094FF000094FF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000031639C009CCEFF000000
      63000031630031639C009CCEFF000000310031639C00639CCE00000031000031
      31000000000000000000000000000000000000000000000000004AD6BD0039C6
      BD005AFFEF00005ACE00005AD6000073F70052FFEF004AFFE7005AFFE7004ACE
      BD0039CEB50000000000000000000000000000000000000000000094FF0000FF
      FF000000000000FFFF000094FF000094FF000094FF0000B5FF000094FF000094
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000003163000000
      6300009CFF00000000009CCEFF009CCEFF00000031000000310031639C000000
      310000000000000000000000000000000000000000001000000042CEAD004AC6
      BD005AFFEF005AFFE70052FFEF00005ACE0063FFEF0052FFEF004AFFE70042C6
      B50052CEBD0008000000000000000000000000000000000000000094FF0000FF
      FF000000000000FFFF000094FF0000B5FF000094FF000094FF000094FF0000B5
      FF000863EF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000031639C000000
      630000CEFF00000000009CCEFF00CEFFFF009CCEFF00639CCE00000031000000
      000000000000000000000000000000000000000000000000000052CEC6004ACE
      B5005AFFEF0042FFE7005AFFE7000063CE005AFFEF005AFFE70052FFE70039D6
      BD0042CEB5000000000000000000000000000000000000000000000000000000
      0000000000000094FF000863EF000094FF000094FF000094FF000094FF000094
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      630000CEFF0000000000639CCE009CCEFF00CEFFFF00639CCE00000000005252
      520000000000000000000000000000000000000000000000000042C6BD0039D6
      BD0052FFE70063FFEF0052FFE7000063D60052FFDE005AFFE70052FFE70052CE
      B50042CEB5000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000863EF000094FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      6300DEDEDE000000000031639C0031639C0000316300639CCE0000000000ADAD
      AD00525252000000000000000000000000000000000000000000000000004ACE
      BD0052CEBD004ACEB5005AFFF700005AC6005AFFF7004ACEB50039CEB50042CE
      B500000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000094FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005252
      5200525252005252520000000000000000000000000000316300000000005252
      5200ADADAD0000000000000000000000000000000000000000005AFFE7000000
      000042CEB50042CEB50042D6BD0039C6BD004ACEB5004ACEBD0052CEB5000800
      000063FFE7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003131
      9C006363CE003100630000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005AFFE7005AFF
      E70000000800000000004ACEBD0052C6B50042C6C60000000000000000005AFF
      E7005AFFE7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003131
      9C00310063003100630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000080000000000000000000000000000000000
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
      0000000000000000000008000000000000000000000000000000000008000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000010007B0000007B0000007B0008007B0008007300080084000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000080008008C3952008C3952008C395200943952008C3952008C3152000800
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      7B00000084002131E7001039E7001842E7002131EF002139EF001831F7000000
      7B0000008400000000000000000000000000000000000000000000000000E7C6
      D600DEBDDE00D684A500C68CA500FFFFFF00FFFFFF00C684A500D684AD008C39
      520084394A000800000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B3100006B3100006B3100006B3100006B3100006B3100006B3100006B31
      00006B3100006B3100006B3100006B310000000000000000000000007B003131
      EF002129E7002939F7003121F7002131F7003129EF002129F7003929E7003131
      E7004239E700080084000000000000000000000000000000000000000000FFC6
      D600CE84A500CE8CAD00CE84A500FFFFFF0000000000CE8CA500CE84A500CE84
      9C008C3952000800080000000000000000000000000000000000000000000000
      0000000000000000000000B5F70000ADD60000ADD60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B6BFF000894FF006B94D600CE52210039A53100297B180021631000CE52
      21006B94D6000894FF002173C6006B310000000000000000000000007B002929
      E700FFFFF700FFFFF7002139E7001039EF002131DE003139DE00FFFFFF00E7FF
      FF003131E70000007B0000000000000000000000000000000000EFC6D600D684
      A500D684AD00CE84A500BD84A500C68CA500CE8C9C00CE84A500BD84AD00D684
      A500D684A5008431520000000800000000000000000000000000000000000000
      0000000000000000000000D6FF0000B5F70000ADD60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B94D60042C6FF006B94BD00CE5221008C4210008C4210008C4210006B31
      00006B94BD0042C6FF006B94D6006B31000000000000080073002131F7002131
      DE00FFFFF700F7FFFF00FFFFF7001039EF002931E700FFFFFF00FFFFFF00FFFF
      FF003929E7001831F70008008400000000000000000000000000EFC6D600BD8C
      9C00D68C9C00D6849C00D68C9C00FFFFFF00FFFFFF00CE849C00D684A500CE84
      A500D684A500CE849C0000000000000000000000000000000000000000000000
      0000000000000000000031FFFF0000D6FF0000C6FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B94D60042C6FF006B94BD00CE5221008C4210008C4210008C4210006B31
      00006B94BD0042C6FF006B94D6006B3100000000000000007B001831EF001831
      E7003131EF00F7FFFF00FFF7FF00FFF7FF00FFF7F700EFFFFF00FFFFFF002939
      DE002129F7002139EF0008007300000000000000000000000000EFC6D600CE84
      A500CE84A500C684A500DE84A500C68C9C00FFFFFF00FFFFFF00D6849C00D684
      9C00C68CA50084395200000000000000000000000000000000000000000031FF
      FF0018FFFF0031FFFF0018FFFF0000C6FF0000C6FF0000C6FF0000B5F70000AD
      D600000000000000000000000000000000000000000000000000000000000000
      00006B3100006B3100006B3100006B310000BD4A1000CE522100CE522100CE52
      21006B3100006B3100006B3100006B3100000000000000007B001831EF002939
      DE003131E7003129EF00FFFFFF00FFF7FF00FFFFEF00FFFFF7002931EF001831
      DE003129EF002131EF0000007B00000000000000000000000000F7C6D600D684
      A500DE8CAD00CE849C00CE849C00D684A500D684A500FFFFFF00FFFFFF00D68C
      A500CE84A5008C395A00080000000000000000000000000000000000000018FF
      FF0031FFFF0052FFFF0031FFFF0000D6FF0000D6FF0000C6FF0000B5F70000AD
      D600000000000000000000000000000000000000000000000000000000000000
      0000E7840000BD4A10009C632100CE732900CE944200CE944200CE944200C684
      39009C632100CE5221006B3100000000000000000000080084001839E7001031
      E7002131F7001839E700FFFFFF00F7F7FF00FFF7FF00FFF7FF000839EF001039
      E7002929F7001839E70000007B00000000000000000000000000E7BDD600CE8C
      A500B58C9C00FFFFFF00FFFFFF00C68CA500CE84AD00F7FFF700FFFFFF00DE84
      A500CE84A5009431520000000000000000000000000000000000000000009CFF
      FF00CEFFFF00CEFFFF009CFFFF0052FFFF0031FFFF0031FFFF0000D6FF0000B5
      F7000000000000000000000000000000000000000000000000002118F7000000
      0000EF840000BD4A1000CE944200FFFFFF0000000000FFFFFF00FFFFFF000000
      0000C68439009C3110006B3100000000000000000000080073002131EF002931
      EF003929DE00EFFFFF00FFFFF700FFFFFF00FFFFFF00FFF7FF00FFFFF7002139
      E7003121F7001839E70000007B00000000000000000000000000F7C6D600D684
      A500C68C9C0000000000F7FFFF00FFFFFF00FFFFFF00FFFFFF00F7F7FF00CE84
      A500C684A50084395A0000000800000000000000000000000000000000000000
      00000000000000000000CEFFFF0052FFFF0031FFFF0000000000000000000000
      00000000000000000000000000000000000000000000000000002118F7000000
      0000EF840000BD4A1000CE944200FFFFFF0000000000FFFFFF00FFFFFF000000
      0000C68439009C3110006B310000000000000000000000007B001839E7002931
      E700FFFFF700FFFFFF00EFFFFF001839E7003129EF00FFFFFF00F7FFFF00F7FF
      F7002931F7002131E70010007B0000000000000000000000000008000000FFBD
      DE00D684A500C6849C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D68CA500CE84
      A5009C3152000800080000000000000000000000000000000000000000000000
      000000000000000000009CFFFF0031FFFF0018FFFF0000000000000000000000
      000000000000000000000000000000000000000000002118F7002118F7002118
      F70000000000EF840000CE732900D6B59400948C8400FFFFFF00FFFFFF00948C
      8400CE7329006B31000000000000000000000000000000000000000084002929
      E700FFFFFF00FFFFF7003929DE002131F7003131E7003131EF00FFFFF700FFFF
      FF002129E700080084000000000000000000000000000000000000000000DEC6
      D600F7BDDE00CE84AD00CE84A500D68CA500CE849C00CE8CA500D684A5008439
      52008C394A000000000000000000000000000000000000000000000000000000
      00000000000000000000CEFFFF0052FFFF0031FFFF0000000000000000000000
      0000000000000000000000000000000000002118F7002118F7002118F7002118
      F70000000000E7840000BD4A1000CE732900D6BD9C00DEBDA500DEBDA500DEBD
      A500BD4A10006B3100000000000000000000000000000000000000007B003131
      E7002929E7002931E7002931EF001031E7002939DE002131DE002139E7002929
      EF003131EF000000730000000000000000000000000000000000000000000000
      000000000000E7C6DE00EFBDD600EFBDD600F7C6DE00F7BDD600EFBDD6000000
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002118F7000000
      00000000000000000000BD730000BD4A1000CE522100BD4A1000CE522100BD4A
      10006B3100000000000000000000000000000000000000000000000000000000
      7B00000084001839E7002131EF001839E7001831EF002131EF002131F7000000
      7B00080073000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000008000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002118F7000000
      00000000000000000000BD730000BD4A1000CE522100BD4A1000CE522100BD4A
      10006B3100000000000000000000000000000000000000000000000000000000
      00000000000000007B00080073000800840000007B0000007B00000073000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002118
      F7002118F7000000000000000000E7840000E7840000E7840000E7840000E784
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
      000000000000000000009C949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000008008C9494008C9494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E79C5A00000000009C9C8C008C94940000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000FF0000ADFF0000000000FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000006B3100006B3100006B31
      00006B3100006B3100006B3100006B3100006B3100006B3100006B3100006B31
      00006B3100006B3100006B31000000000000000000000000000008000000CEFF
      FF00CEFFFF004A4A4A00CEFFFF0031EFFF0000D6FF0000000000CEFFFF00CEFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000C6CECE00DEB58C00DEA55A00080000008C8C940094949400000000000000
      000000000000000000000000000000000000000000000000000000000000F7FF
      FF0000000000000000000000000008ADFF0008ADFF00089CEF0000000000FFFF
      FF00FFFFFF0000000000000000000000000000000000E78400006B6BFF000894
      FF006B94D600CE52210039A53100297B180021631000CE522100CE5221006B94
      D6000894FF002173C6006B31000000000000000000000000000000000000CEFF
      F700C6FFFF004A4A4200C6FFFF0000D6FF0000D6FF0000000000CEFFFF00CEFF
      FF0000000000000000000000000000000000000000000000000000000800C6C6
      DE00FFD69C00CECECE00EFA59400EFA55A000000000094949400949C94000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000010B5FF0000A5FF0008ADFF000000
      0000FFFFFF0000000000000000000000000000000000E78400006B94D60042C6
      FF006B94BD00CE5221008C4210008C4210008C4210006B310000CE5221006B94
      BD0042C6FF006B94D6006B31000000000000000000000000000008DEEF00CEFF
      FF00CEFFFF0042424A0000080000080000000000000000000000CEFFF700CEFF
      FF0008D6FF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00F7D69400FFCE9C00FFCE9400D6A5630000000000949494000000
      000000000000000000000000000000000000000000000000000000000000F7FF
      F700000000000000000008000800000000000000000010B5FF00089CEF0010AD
      FF000000000000000000000000000000000000000000E78400006B3100006B31
      00006B3100006B310000BD4A1000CE522100CE522100CE5221006B3100006B31
      00006B3100006B3100006B31000000000000000000000000080008D6FF0000D6
      FF00BDFFFF00D6FFFF00C6FFFF00DEFFFF00C6FFFF00CEFFFF00D6FFFF0000CE
      FF0000D6F700000000000000000000000000000000000000000000000000D6A5
      5A00FFFFFF00CECED600D6A55A00000008000800000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700F7FFF700FFFFFF000000000000ADFF0010AD
      FF000000000000000000000000000000000000000000FFFFFF00E7840000BD4A
      10009C632100CE732900CE944200CE944200CE944200C6843900CE7329009C63
      2100CE5221006B310000FFFFFF000000000000000000000000000000000000CE
      F70000D6FF00CEFFFF00D6FFFF00C6FFFF00CEFFFF00C6FFFF0000D6FF0000D6
      FF00000008000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFD69400DEA55A000000000094949C0000000000000000000000
      000000000000000000000800000000000000000000000000000000000000FFFF
      FF0000000000000008000000000000000000FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00EF840000BD4A
      1000CE944200FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFF700C684
      39009C3110006B310000FFFFFF00000000000000000000000000000000000000
      080000D6FF0000D6FF00CEFFFF00CEFFFF00C6FFFF0000D6FF0000D6FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00C6C6C600DE9C5A00100000009C9C8C0000000000000000000000
      0000000000008C949C000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000800FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00EF84
      0000CE732900D6B59400948C8400FFFFFF00FFFFFF00948C8400D6B59400CE73
      29006B310000FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000008D6FF0000D6FF00CEFFFF0000D6FF0000D6FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000800
      0000FFFFFF00F7D6A500DEA55A0000000000848C9C008C949C00000000000000
      000094948C00000000000000000000000000000000000000000000000000FFFF
      FF0000000000080000000000000008000000FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00E784
      0000BD4A1000CE732900D6BD9C00DEBDA500DEBDA500DEBDA500CE732900BD4A
      10006B310000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000080000CEFF0000D6FF0000DEF700000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0800FFCE9400FFFFFF00F7D69C00DEA55A000000000094948C008C9C94009C94
      840008000000D6A55A000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFF700FFFFFF00FFFFFF00F7FFFF0000000000FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00BD730000BD4A1000CE522100BD4A1000CE522100BD4A1000BD4A10006B31
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000800000000D6FF0000000000000000003100FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFF700EFCEA500DE9C5A0000000000000029000000
      0800DE9C5A000000000000000000000000000000000000000000100000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E7840000E7840000E7840000E7840000E78400006B310000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000800000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009494940000000000F7CE9C00FFFFFF00FFFFF700F7CEA500FFD69C00C69C
      6300000008000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000080000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000F7FFFFFFFFFF0000
      E3FFCC67C3FF0000C1FFC007813F000080FFE00F811F000080FFC007800F0000
      803F800380070000800F800380030000C00B800380030000C0038003B0070000
      E0038003B80F0000E003C007BD1F0000E3838003BD3F0000E3E38003C3FF0000
      E3FBCC67FFFF0000FFFFFFFFFFFF0000FFFFFFFFF3F8FFFFF81FFFFFF3F8F81F
      E007FFFFF3F8E007C003F83FF000C003C083F83FF000C0038001F83FF0008001
      8001C007F00080018001C007F00080018001C007F00180018001C007D0018001
      8401C007D0018001C003F83F8803C003C003F83F0803C003E007F83FDC07E007
      F81FFFFFDC07F81FFFFFFFFFE60FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF
      FFFFF00FFFFFF8FFE007F00FC007F07FC0078001C007E03FC0078001C007C01F
      C00780018003A01FC00780018003803FC0078001C007E07DC0078241E00FE079
      C0078001F00FE031C0078001F80FE001C0078001FC4FF003C0478001FECFF007
      FFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    OnPopup = PopupMenu1Popup
    Left = 400
    Top = 140
    object pm_Cancel: TMenuItem
      Tag = 1
      Caption = #50724' '#45908'  '#52712' '#49548
      OnClick = pm_CancelClick
    end
    object pm_CanReAcc: TMenuItem
      Caption = #50724#45908#52712#49548'+'#51116#51217#49688
      OnClick = pm_CanReAccClick
    end
    object pm_Panelty: TMenuItem
      Caption = #48176#52264#52712#49548'('#54056#45328#54000')'
      OnClick = pm_PaneltyClick
    end
    object pm_CanRes: TMenuItem
      Tag = 5
      Caption = #50724#45908#52712#49548'+'#45824#44592
      OnClick = pm_CanResClick
    end
    object pm_ReAccept: TMenuItem
      Tag = 3
      Caption = #51116'    '#51217'   '#49688
      OnClick = pm_ReAcceptClick
    end
    object pm_complete: TMenuItem
      Tag = 6
      Caption = #50756'          '#47308
      OnClick = pm_completeClick
    end
    object pm_reservation: TMenuItem
      Tag = 5
      Caption = #45824'          '#44592
      OnClick = pm_reservationClick
    end
    object pm_cancellation: TMenuItem
      Tag = 6
      Caption = #45824' '#44592'  '#54644' '#51228
      OnClick = pm_cancellationClick
    end
    object MenuItem3: TMenuItem
      Caption = '-'
    end
    object pm_edit: TMenuItem
      Caption = #49688'          '#51221
      OnClick = pm_editClick
    end
    object pm_Recon: TMenuItem
      Tag = 2
      Caption = #44053' '#51228'  '#48176' '#52264
      OnClick = pm_ReconClick
    end
    object pm_smsRecon: TMenuItem
      Tag = 5
      Caption = #47928' '#51088'  '#48176' '#52264
      OnClick = pm_smsReconClick
    end
    object N3: TMenuItem
      Caption = #46021' '#52489'  '#47928' '#51088
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #44256' '#44061'  '#47928' '#51088
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = #51217#49688#54788#54889#51060#46041
      OnClick = N5Click
    end
    object N7: TMenuItem
      Caption = #44256#44061#48176#52264#51228#54620
      OnClick = N7Click
    end
    object N8: TMenuItem
      Tag = 1
      Caption = #48277#51064#48176#52264#51228#54620
      OnClick = N7Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Caption = #53440#51060#53952#52488#44592#54868
      OnClick = N2Click
    end
    object N6: TMenuItem
      Caption = #50641#49472#52636#47141
      OnClick = N6Click
    end
  end
  object PopupMenu2: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    OnPopup = PopupMenu2Popup
    Left = 400
    Top = 196
    object pm_Cancel1: TMenuItem
      Tag = 1
      Caption = #50724' '#45908'  '#52712' '#49548
      OnClick = pm_Cancel1Click
    end
    object pm_CanReAcc1: TMenuItem
      Caption = #50724#45908#52712#49548'+'#51116#51217#49688
      OnClick = pm_CanReAcc1Click
    end
    object pm_Panelty1: TMenuItem
      Caption = #48176#52264#52712#49548'('#54056#45328#54000')'
      OnClick = pm_Panelty1Click
    end
    object pm_CanRes1: TMenuItem
      Tag = 5
      Caption = #50724#45908#52712#49548'+'#45824#44592
      OnClick = pm_CanRes1Click
    end
    object pm_ReAccept1: TMenuItem
      Tag = 3
      Caption = #51116'    '#51217'   '#49688
      OnClick = pm_ReAccept1Click
    end
    object pm_complete1: TMenuItem
      Tag = 6
      Caption = #50756'          '#47308
      OnClick = pm_complete1Click
    end
    object pm_reservation1: TMenuItem
      Tag = 5
      Caption = #45824'          '#44592
      OnClick = pm_reservation1Click
    end
    object pm_cancellation1: TMenuItem
      Tag = 6
      Caption = #45824' '#44592'  '#54644' '#51228
      OnClick = pm_cancellation1Click
    end
    object MenuItem10: TMenuItem
      Caption = '-'
    end
    object pm_edit1: TMenuItem
      Caption = #49688'          '#51221
      OnClick = pm_edit1Click
    end
    object pm_Recon1: TMenuItem
      Tag = 2
      Caption = #44053' '#51228'  '#48176' '#52264
      OnClick = pm_Recon1Click
    end
    object pm_smsRecon1: TMenuItem
      Tag = 5
      Caption = #47928' '#51088'  '#48176' '#52264
      OnClick = pm_smsRecon1Click
    end
    object N31: TMenuItem
      Caption = #46021' '#52489'  '#47928' '#51088
      OnClick = N31Click
    end
    object N41: TMenuItem
      Caption = #44256' '#44061'  '#47928' '#51088
      OnClick = N41Click
    end
    object N51: TMenuItem
      Caption = #51217#49688#54788#54889#51060#46041
      OnClick = N51Click
    end
    object MenuItem17: TMenuItem
      Caption = '-'
    end
  end
  object tmJonClose: TTimer
    Enabled = False
    Interval = 10
    OnTimer = tmJonCloseTimer
    Left = 312
    Top = 157
  end
  object tmr_hint: TTimer
    Enabled = False
    OnTimer = tmr_hintTimer
    Left = 404
    Top = 245
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 616
    Top = 200
    PixelsPerInch = 96
    object cxstyleToday: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16686752
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
    end
    object cxstyleUpdate: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16776993
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
    end
    object cxstyleMulti: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16724223
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
    end
    object cxStyleTelSe: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
    end
  end
  object TmrChkTag: TTimer
    Tag = 100
    Enabled = False
    Interval = 500
    OnTimer = TmrChkTagTimer
    Left = 312
    Top = 208
  end
  object ColorDialog1: TColorDialog
    Left = 533
    Top = 166
  end
  object pm_SelStcd: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    TrackButton = tbLeftButton
    Left = 488
    Top = 84
    object m_StAll: TMenuItem
      Tag = 1
      Caption = #51204#52404
      OnClick = m_StAllClick
    end
    object MenuItem21: TMenuItem
      Caption = '-'
    end
    object m_St2: TMenuItem
      Tag = 2
      Caption = #50756#47308
      OnClick = m_St2Click
    end
    object m_St1: TMenuItem
      Tag = 1
      Caption = #48176#52264
      OnClick = m_St2Click
    end
    object m_St4: TMenuItem
      Tag = 4
      Caption = #47928#51032
      OnClick = m_St2Click
    end
    object m_St8: TMenuItem
      Tag = 8
      Caption = #52712#49548
      OnClick = m_St2Click
    end
  end
end

object Frm_SET06: TFrm_SET06
  Left = 717
  Top = 303
  BorderStyle = bsNone
  Caption = 'SET06'
  ClientHeight = 685
  ClientWidth = 1152
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsStayOnTop
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
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 1152
    Height = 685
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    object Panel1: TPanel
      Left = 0
      Top = 33
      Width = 1148
      Height = 648
      Align = alClient
      BevelOuter = bvNone
      Color = 16444898
      TabOrder = 0
      object cxGroupBox22: TcxGroupBox
        Left = 5
        Top = 4
        Caption = '  '#49324#50857#51088' '#51200#51109' '#51648#47749#49688#51221'/'#49325#51228
        TabOrder = 0
        Height = 640
        Width = 521
        object Shape1: TShape
          Left = 14
          Top = 27
          Width = 154
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape2: TShape
          Left = 5
          Top = 548
          Width = 154
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape3: TShape
          Left = 5
          Top = 574
          Width = 154
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape4: TShape
          Left = 5
          Top = 600
          Width = 154
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape5: TShape
          Left = 174
          Top = 548
          Width = 137
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape6: TShape
          Left = 336
          Top = 548
          Width = 154
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxLabel14: TcxLabel
          Left = 24
          Top = 31
          Caption = #51648#50669'/'#49345#49464#51648#47749
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 65
          AnchorY = 39
        end
        object cxButton3: TcxButton
          Left = 221
          Top = 27
          Width = 51
          Height = 25
          Cursor = crHandPoint
          Caption = #51312#54924
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 1
          OnClick = cxButton3Click
        end
        object edt1: TcxTextEdit
          Left = 113
          Top = 26
          AutoSize = False
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          OnKeyPress = edt1KeyPress
          OnKeyUp = edt1KeyUp
          Height = 26
          Width = 105
        end
        object ctxGrid: TcxGrid
          Left = 5
          Top = 57
          Width = 511
          Height = 483
          TabOrder = 3
          LookAndFeel.NativeStyle = False
          object sg_MapLocal: TcxGridDBTableView
            OnKeyDown = sg_MapLocalKeyDown
            OnKeyUp = sg_MapLocalKeyUp
            OnMouseDown = sg_MapLocalMouseDown
            Navigator.Buttons.CustomButtons = <>
            FilterBox.CustomizeDialog = False
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCellClick = sg_MapLocalCellClick
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            OptionsBehavior.CellHints = True
            OptionsBehavior.DragHighlighting = False
            OptionsBehavior.DragOpening = False
            OptionsBehavior.DragScrolling = False
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.ExpandMasterRowOnDblClick = False
            OptionsBehavior.ImmediateEditor = False
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnMoving = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsSelection.MultiSelect = True
            OptionsView.NoDataToDisplayInfoText = ' '
            OptionsView.DataRowHeight = 21
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 23
            Preview.RightIndent = 10
            Styles.Background = Frm_Main.cxStyle1
            Styles.Selection = Frm_Main.cxStyle11
            object sg_MapLocalColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'Sn.'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 30
            end
            object sg_MapLocalColumn2: TcxGridDBColumn
              DataBinding.FieldName = #49884#46020
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 50
            end
            object sg_MapLocalColumn3: TcxGridDBColumn
              DataBinding.FieldName = #49884#44396#44400
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 65
            end
            object sg_MapLocalColumn4: TcxGridDBColumn
              DataBinding.FieldName = #51021#47732#46041
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object sg_MapLocalColumn5: TcxGridDBColumn
              DataBinding.FieldName = #49345#49464#51648#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 143
            end
            object sg_MapLocalColumn9: TcxGridDBColumn
              DataBinding.FieldName = #51064#44540'POI'
              PropertiesClassName = 'TcxLabelProperties'
              HeaderAlignmentHorz = taCenter
              Width = 120
            end
            object sg_MapLocalColumn6: TcxGridDBColumn
              DataBinding.FieldName = #51340#54364'X'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object sg_MapLocalColumn7: TcxGridDBColumn
              DataBinding.FieldName = #51340#54364'Y'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
          end
          object cxWkConnect: TcxGridLevel
            GridView = sg_MapLocal
          end
        end
        object cxButton5: TcxButton
          Left = 301
          Top = 20
          Width = 130
          Height = 32
          Cursor = crHandPoint
          Caption = #47196#52972#45936#51060#53552' '#49352#47196#51069#44592
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 6
          OnClick = cxButton5Click
        end
        object edt2: TcxTextEdit
          Left = 72
          Top = 547
          AutoSize = False
          Properties.ReadOnly = True
          Style.Color = clMenuBar
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          Height = 26
          Width = 96
        end
        object cxLabel4: TcxLabel
          Left = 15
          Top = 552
          Caption = #49884'     '#46020
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 39
          AnchorY = 560
        end
        object cxLabel5: TcxLabel
          Left = 182
          Top = 552
          Caption = #49884#44396#44400
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 202
          AnchorY = 560
        end
        object Edit1: TcxTextEdit
          Left = 235
          Top = 547
          AutoSize = False
          Properties.ReadOnly = True
          Style.Color = clMenuBar
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 10
          Height = 26
          Width = 95
        end
        object Edit2: TcxTextEdit
          Left = 394
          Top = 547
          AutoSize = False
          Properties.ReadOnly = True
          Style.Color = clMenuBar
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 11
          Height = 26
          Width = 120
        end
        object cxLabel6: TcxLabel
          Left = 346
          Top = 551
          Caption = #51021#47732#46041
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 366
          AnchorY = 559
        end
        object cxLabel7: TcxLabel
          Left = 13
          Top = 578
          Caption = #49345#49464#51648#47749
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 39
          AnchorY = 586
        end
        object Edit3: TcxTextEdit
          Left = 72
          Top = 573
          AutoSize = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 14
          OnKeyUp = Edit3KeyUp
          Height = 26
          Width = 258
        end
        object cxLabel8: TcxLabel
          Left = 15
          Top = 605
          Caption = #51064#44540'POI'
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 39
          AnchorY = 613
        end
        object cxTextEdit1: TcxTextEdit
          Left = 72
          Top = 599
          AutoSize = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 16
          OnKeyUp = Edit3KeyUp
          Height = 26
          Width = 258
        end
        object Edit5: TcxTextEdit
          Left = 495
          Top = 573
          TabStop = False
          TabOrder = 17
          Visible = False
          Width = 24
        end
        object Edit4: TcxTextEdit
          Left = 495
          Top = 596
          TabStop = False
          TabOrder = 18
          Visible = False
          Width = 24
        end
        object Edit6: TcxTextEdit
          Left = 495
          Top = 549
          TabStop = False
          TabOrder = 19
          Visible = False
          Width = 24
        end
        object btn1: TcxButton
          Left = 433
          Top = 20
          Width = 83
          Height = 32
          Cursor = crHandPoint
          Caption = #51204#52404#49325#51228
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 20
          OnClick = btn1Click
        end
        object cxButton2: TcxButton
          Left = 338
          Top = 574
          Width = 86
          Height = 50
          Cursor = crHandPoint
          Caption = #49688#51221
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 4
          OnClick = cxButton2Click
        end
        object cxButton4: TcxButton
          Left = 426
          Top = 574
          Width = 86
          Height = 50
          Cursor = crHandPoint
          Caption = #49440#53469#49325#51228
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 5
          OnClick = cxButton4Click
        end
      end
      object btn4: TcxButton
        Left = 533
        Top = 126
        Width = 80
        Height = 48
        Cursor = crHandPoint
        Caption = #9654#9654#13#10#51204#52404#50732#47532#44592
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn4Click
      end
      object lst1: TListBox
        Left = 536
        Top = 40
        Width = 75
        Height = 81
        ImeName = 'Microsoft Office IME 2007'
        ItemHeight = 12
        TabOrder = 2
        Visible = False
      end
      object btn2: TcxButton
        Tag = 1
        Left = 533
        Top = 197
        Width = 80
        Height = 48
        Cursor = crHandPoint
        Caption = #9654#13#10#44148#48324#50732#47532#44592
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn4Click
      end
      object btn3: TcxButton
        Tag = 2
        Left = 533
        Top = 421
        Width = 80
        Height = 48
        Cursor = crHandPoint
        Caption = #9664#13#10#44148#48324#45236#47532#44592
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn4Click
      end
      object btn5: TcxButton
        Tag = 3
        Left = 533
        Top = 494
        Width = 80
        Height = 48
        Cursor = crHandPoint
        Caption = #9664#9664#13#10#51204#52404#45236#47532#44592
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn4Click
      end
      object cxGroupBox1: TcxGroupBox
        Left = 619
        Top = 4
        Caption = '  '#53685#54633'(MySQL) '#51200#51109' '#51648#47749#49688#51221'/'#49325#51228
        TabOrder = 6
        Height = 639
        Width = 524
        object Shape7: TShape
          Left = 15
          Top = 27
          Width = 154
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape8: TShape
          Left = 6
          Top = 548
          Width = 154
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape9: TShape
          Left = 6
          Top = 574
          Width = 154
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape10: TShape
          Left = 6
          Top = 600
          Width = 154
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape11: TShape
          Left = 175
          Top = 548
          Width = 137
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape12: TShape
          Left = 343
          Top = 548
          Width = 154
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxButton6: TcxButton
          Left = 223
          Top = 26
          Width = 51
          Height = 26
          Cursor = crHandPoint
          Caption = #51312#54924
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 0
          OnClick = cxButton6Click
        end
        object cxTextEdit2: TcxTextEdit
          Left = 114
          Top = 26
          AutoSize = False
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          OnKeyPress = cxTextEdit2KeyPress
          OnKeyUp = cxTextEdit2KeyUp
          Height = 26
          Width = 105
        end
        object cxGrid1: TcxGrid
          Left = 6
          Top = 57
          Width = 513
          Height = 483
          TabOrder = 2
          LookAndFeel.NativeStyle = False
          object sg_MapLocal_MySQL: TcxGridDBTableView
            OnKeyDown = sg_MapLocal_MySQLKeyDown
            OnMouseDown = sg_MapLocal_MySQLMouseDown
            Navigator.Buttons.CustomButtons = <>
            FilterBox.CustomizeDialog = False
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCellClick = sg_MapLocal_MySQLCellClick
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            OptionsBehavior.CellHints = True
            OptionsBehavior.DragHighlighting = False
            OptionsBehavior.DragOpening = False
            OptionsBehavior.DragScrolling = False
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.ExpandMasterRowOnDblClick = False
            OptionsBehavior.ImmediateEditor = False
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnMoving = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsSelection.MultiSelect = True
            OptionsView.NoDataToDisplayInfoText = ' '
            OptionsView.DataRowHeight = 20
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 23
            Preview.RightIndent = 10
            Styles.Background = Frm_Main.cxStyle1
            Styles.Selection = Frm_Main.cxStyle11
            object cxgrdbclmn1: TcxGridDBColumn
              DataBinding.FieldName = 'Sn.'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 30
            end
            object cxgrdbclmn2: TcxGridDBColumn
              DataBinding.FieldName = #49884#46020
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 50
            end
            object cxgrdbclmn3: TcxGridDBColumn
              DataBinding.FieldName = #49884#44396#44400
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 65
            end
            object cxgrdbclmn4: TcxGridDBColumn
              DataBinding.FieldName = #51021#47732#46041
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxgrdbclmn5: TcxGridDBColumn
              DataBinding.FieldName = #49345#49464#51648#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 120
            end
            object cxgrdbclmn6: TcxGridDBColumn
              DataBinding.FieldName = #51064#44540'POI'
              PropertiesClassName = 'TcxLabelProperties'
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxgrdbclmn7: TcxGridDBColumn
              DataBinding.FieldName = #51340#54364'X'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxgrdbclmn8: TcxGridDBColumn
              DataBinding.FieldName = #51340#54364'Y'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
              Width = 85
            end
            object cxgrdbclmn9: TcxGridDBColumn
              DataBinding.FieldName = #46972#51064#49692#48264
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
            object cxgrdbclmn10: TcxGridDBColumn
              DataBinding.FieldName = #49688#51221'ID'
              PropertiesClassName = 'TcxLabelProperties'
              HeaderAlignmentHorz = taCenter
              Width = 53
            end
            object cxgrdbclmn11: TcxGridDBColumn
              DataBinding.FieldName = #49688#51221#51088#47749
              PropertiesClassName = 'TcxLabelProperties'
              HeaderAlignmentHorz = taCenter
              Width = 62
            end
            object cxgrdbclmn12: TcxGridDBColumn
              DataBinding.FieldName = #49688#51221#51068#49884
              PropertiesClassName = 'TcxLabelProperties'
              HeaderAlignmentHorz = taCenter
              Width = 99
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = sg_MapLocal_MySQL
          end
        end
        object cxTextEdit3: TcxTextEdit
          Left = 75
          Top = 547
          AutoSize = False
          Properties.ReadOnly = True
          Style.Color = clMenuBar
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          Height = 26
          Width = 95
        end
        object cxTextEdit4: TcxTextEdit
          Left = 242
          Top = 547
          AutoSize = False
          Properties.ReadOnly = True
          Style.Color = clMenuBar
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          Height = 26
          Width = 95
        end
        object cxTextEdit5: TcxTextEdit
          Left = 402
          Top = 547
          AutoSize = False
          Properties.ReadOnly = True
          Style.Color = clMenuBar
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          Height = 26
          Width = 115
        end
        object cxTextEdit6: TcxTextEdit
          Left = 75
          Top = 573
          AutoSize = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 8
          OnKeyUp = Edit3KeyUp
          Height = 26
          Width = 262
        end
        object cxTextEdit7: TcxTextEdit
          Left = 75
          Top = 599
          AutoSize = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          OnKeyUp = Edit3KeyUp
          Height = 26
          Width = 262
        end
        object cxTextEdit8: TcxTextEdit
          Left = 488
          Top = 578
          TabStop = False
          TabOrder = 10
          Visible = False
          Width = 32
        end
        object cxTextEdit9: TcxTextEdit
          Left = 488
          Top = 596
          TabStop = False
          TabOrder = 11
          Visible = False
          Width = 32
        end
        object cxTextEdit10: TcxTextEdit
          Left = 488
          Top = 554
          TabStop = False
          TabOrder = 12
          Visible = False
          Width = 32
        end
        object cxButton12: TcxButton
          Left = 431
          Top = 20
          Width = 83
          Height = 32
          Cursor = crHandPoint
          Caption = #51204#52404#49325#51228
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 13
          OnClick = cxButton12Click
        end
        object cxButton9: TcxButton
          Left = 343
          Top = 574
          Width = 81
          Height = 50
          Cursor = crHandPoint
          Caption = #49688#51221
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 3
          OnClick = cxButton9Click
        end
        object cxButton10: TcxButton
          Left = 426
          Top = 574
          Width = 88
          Height = 50
          Cursor = crHandPoint
          Caption = #49440#53469#49325#51228
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 4
          OnClick = cxButton10Click
        end
        object cxLabel1: TcxLabel
          Left = 27
          Top = 31
          Caption = #51648#50669'/'#49345#49464#51648#47749
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 68
          AnchorY = 39
        end
        object cxLabel2: TcxLabel
          Left = 18
          Top = 552
          Caption = #49884'     '#46020
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 42
          AnchorY = 560
        end
        object cxLabel3: TcxLabel
          Left = 16
          Top = 578
          Caption = #49345#49464#51648#47749
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 42
          AnchorY = 586
        end
        object cxLabel9: TcxLabel
          Left = 18
          Top = 605
          Caption = #51064#44540'POI'
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 42
          AnchorY = 613
        end
        object cxLabel10: TcxLabel
          Left = 187
          Top = 552
          Caption = #49884#44396#44400
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 207
          AnchorY = 560
        end
        object cxLabel11: TcxLabel
          Left = 354
          Top = 552
          Caption = #51021#47732#46041
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 374
          AnchorY = 560
        end
      end
      object lst2: TListBox
        Left = 536
        Top = 552
        Width = 75
        Height = 81
        ImeName = 'Microsoft Office IME 2007'
        ItemHeight = 12
        TabOrder = 7
        Visible = False
      end
      object cxProgressBar1: TcxProgressBar
        Left = 529
        Top = 312
        TabOrder = 8
        Width = 87
      end
    end
    object pnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 1148
      Height = 33
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  ('#52636#48156'/'#46020#52265#51648')'#51200#51109#51648#47749' '#49688#51221'/'#49325#51228
      Color = 12566463
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      OnMouseDown = pnlTitleMouseDown
      DesignSize = (
        1148
        33)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 1148
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = False
      end
      object BtnClose: TcxButton
        Left = 1112
        Top = 6
        Width = 33
        Height = 25
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
        TabOrder = 0
        TabStop = False
        OnClick = BtnCloseClick
      end
    end
  end
end

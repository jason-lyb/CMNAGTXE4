object Frm_BTN: TFrm_BTN
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Frm_BTN'
  ClientHeight = 682
  ClientWidth = 1245
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
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
    Width = 1245
    Height = 682
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet3
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 676
    ClientRectLeft = 2
    ClientRectRight = 1239
    ClientRectTop = 27
    object cxTabSheet2: TcxTabSheet
      Tag = 402
      Caption = #50689#50629#49324#50896#44288#47532
      ImageIndex = 1
      object pnl_BTN2: TPanel
        Left = 0
        Top = 0
        Width = 1237
        Height = 649
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Shape5: TShape
          Left = 0
          Top = 65
          Width = 1237
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = -6
          ExplicitTop = 23
          ExplicitWidth = 305
        end
        object cxGrid2: TcxGrid
          Left = 0
          Top = 67
          Width = 1237
          Height = 582
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          LookAndFeel.NativeStyle = False
          object BtnView2: TcxGridDBTableView
            Tag = 2
            PopupMenu = pm_CallBell
            OnKeyDown = BtnView2KeyDown
            OnKeyUp = BtnView2KeyUp
            OnMouseDown = BtnView2MouseDown
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
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCellDblClick = BtnView2CellDblClick
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnMoving = False
            OptionsData.Editing = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.CellMultiSelect = True
            OptionsSelection.InvertSelect = False
            OptionsView.NoDataToDisplayInfoText = ' '
            OptionsView.DataRowHeight = 22
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 23
            object BtnView2Column01: TcxGridDBColumn
              DataBinding.FieldName = 'No'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 30
            end
            object BtnView2Column02: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 54
            end
            object BtnView2Column03: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 113
            end
            object BtnView2Column18: TcxGridDBColumn
              DataBinding.FieldName = #45824#54364#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object BtnView2Column04: TcxGridDBColumn
              DataBinding.FieldName = #50689#50629#49324#50896'ID'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 82
            end
            object BtnView2Column05: TcxGridDBColumn
              DataBinding.FieldName = #50689#50629#49324#50896#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 66
            end
            object BtnView2Column19: TcxGridDBColumn
              DataBinding.FieldName = #50629#49548#54644#51648#44428#54620
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 82
            end
            object BtnView2Column06: TcxGridDBColumn
              DataBinding.FieldName = #49345#53468
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 43
            end
            object BtnView2Column07: TcxGridDBColumn
              DataBinding.FieldName = #55092#45824#54256
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 93
            end
            object BtnView2Column08: TcxGridDBColumn
              DataBinding.FieldName = #51221#49328#49444#51221
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 145
            end
            object BtnView2Column09: TcxGridDBColumn
              DataBinding.FieldName = #52636#44552#44228#51340
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 172
            end
            object BtnView2Column10: TcxGridDBColumn
              DataBinding.FieldName = #47700#47784
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 203
            end
            object BtnView2Column11: TcxGridDBColumn
              DataBinding.FieldName = #46321#47197#51068#49884
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 77
            end
            object BtnView2Column12: TcxGridDBColumn
              DataBinding.FieldName = #53748#49324#51068#49884
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 78
            end
            object BtnView2Column13: TcxGridDBColumn
              DataBinding.FieldName = #51008#54665#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
            object BtnView2Column14: TcxGridDBColumn
              DataBinding.FieldName = #44228#51340#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
            object BtnView2Column15: TcxGridDBColumn
              DataBinding.FieldName = #50696#44552#51452
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
            object BtnView2Column16: TcxGridDBColumn
              DataBinding.FieldName = 'type'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
            object BtnView2Column17: TcxGridDBColumn
              DataBinding.FieldName = #51221#49328#44552#50529
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = BtnView2
          end
        end
        object cxGroupBox2: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          ParentBackground = False
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clBtnFace
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 65
          Width = 1237
          object Shape6: TShape
            Left = 6
            Top = 5
            Width = 333
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape7: TShape
            Left = 210
            Top = 32
            Width = 245
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape1: TShape
            Left = 463
            Top = 32
            Width = 130
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape2: TShape
            Left = 6
            Top = 32
            Width = 124
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object lbBTNCompany02: TcxLabel
            Left = 79
            Top = 4
            AutoSize = False
            Caption = #49548#49549
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clBtnFace
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 16711808
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 539
            AnchorX = 349
            AnchorY = 17
          end
          object btn_2_3: TcxButton
            Tag = 1
            Left = 797
            Top = 5
            Width = 83
            Height = 53
            Cursor = crHandPoint
            Caption = #49688#51221
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 4
            OnClick = btn_2_2Click
          end
          object btn_2_1: TcxButton
            Left = 623
            Top = 5
            Width = 83
            Height = 53
            Cursor = crHandPoint
            Caption = #44160'  '#49353
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 2
            OnClick = btn_2_1Click
          end
          object btn_2_2: TcxButton
            Left = 710
            Top = 5
            Width = 83
            Height = 53
            Cursor = crHandPoint
            Caption = #49888#44508#46321#47197
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 3
            OnClick = btn_2_2Click
          end
          object cxLabel4: TcxLabel
            Left = 14
            Top = 10
            Caption = #49548'     '#49549
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 43
            AnchorY = 18
          end
          object cboSearch_2: TcxComboBox
            Left = 268
            Top = 31
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
            Properties.Items.Strings = (
              #51648#49324#47749
              #50689#50629#49324#50896#47749
              #55092#45824#54256)
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
            TabOrder = 0
            Text = #51648#49324#47749
            Height = 26
            Width = 84
          end
          object cxLabel8: TcxLabel
            Left = 211
            Top = 36
            Caption = #44160#49353' '#51312#44148
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 240
            AnchorY = 44
          end
          object edtSearch_2: TcxTextEdit
            Left = 349
            Top = 31
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnKeyDown = edtSearch_2KeyDown
            OnKeyUp = edtSearch_2KeyUp
            Height = 26
            Width = 113
          end
          object btn_2_5: TcxButton
            Left = 971
            Top = 5
            Width = 83
            Height = 53
            Cursor = crHandPoint
            Caption = #50641#49472#52636#47141
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 6
            OnClick = btn_2_5Click
          end
          object btn_2_4: TcxButton
            Tag = 1
            Left = 884
            Top = 5
            Width = 83
            Height = 53
            Cursor = crHandPoint
            Caption = #53748#49324
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 5
            OnClick = btn_2_4Click
          end
          object cbKeynumber02: TcxComboBox
            Left = 79
            Top = 31
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
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
            TabOrder = 10
            OnClick = cbKeynumber02Click
            OnKeyDown = cbKeynumber02KeyDown
            OnKeyPress = edtCallBellWkHPKeyPress
            Height = 26
            Width = 131
          end
          object cboStatus_2: TcxComboBox
            Left = 523
            Top = 31
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
            Properties.Items.Strings = (
              #51204#52404
              #44540#47924#51473
              #53748#49324)
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
            TabOrder = 11
            Text = #51204#52404
            OnKeyDown = cboStatus_2KeyDown
            Height = 26
            Width = 95
          end
          object cxLabel1: TcxLabel
            Left = 473
            Top = 36
            Caption = #49345'  '#53468
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 493
            AnchorY = 44
          end
          object cxLabel2: TcxLabel
            Left = 14
            Top = 36
            Caption = #45824#54364' '#48264#54840
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 43
            AnchorY = 44
          end
        end
        object cxBrNo2: TcxTextEdit
          Left = 10
          Top = 436
          Style.Color = 15456255
          TabOrder = 1
          Text = #51648#49324#53076#46300
          Visible = False
          Width = 54
        end
        object cxHdNo2: TcxTextEdit
          Left = 62
          Top = 436
          Style.Color = 15456255
          TabOrder = 2
          Text = #48376#49324#53076#46300
          Visible = False
          Width = 54
        end
        object pnlChangeUpsoWK: TcxGroupBox
          Left = 357
          Top = 206
          Caption = '   '#50629#49548#44288#47532' '#50689#50629#49324#50896#48320#44221
          ParentBackground = False
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clBtnFace
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Visible = False
          OnMouseDown = pnlChangeUpsoWKMouseDown
          Height = 315
          Width = 356
          object Shape10: TShape
            Left = 5
            Top = 57
            Width = 82
            Height = 78
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape14: TShape
            Left = 89
            Top = 57
            Width = 80
            Height = 24
            Pen.Color = 12566402
          end
          object Shape15: TShape
            Left = 89
            Top = 84
            Width = 80
            Height = 24
            Pen.Color = 12566402
          end
          object Shape16: TShape
            Left = 89
            Top = 111
            Width = 80
            Height = 24
            Pen.Color = 12566402
          end
          object Shape17: TShape
            Left = 5
            Top = 142
            Width = 82
            Height = 52
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape19: TShape
            Left = 89
            Top = 142
            Width = 80
            Height = 24
            Pen.Color = 12566402
          end
          object Shape34: TShape
            Left = 89
            Top = 169
            Width = 80
            Height = 24
            Pen.Color = 12566402
          end
          object btnChangeUpsoWK: TcxButton
            Left = 45
            Top = 199
            Width = 127
            Height = 26
            Cursor = crHandPoint
            Caption = #54869#51064
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 0
            OnClick = btnChangeUpsoWKClick
          end
          object btnChangeUpsoWKClose: TcxButton
            Left = 186
            Top = 199
            Width = 127
            Height = 26
            Cursor = crHandPoint
            Caption = #45803#44592
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 1
            OnClick = btnChangeUpsoWKCloseClick
          end
          object cxLabel11: TcxLabel
            Left = 8
            Top = 87
            Caption = #49440#53469#50689#50629#49324#50896
            ParentColor = False
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = []
            Style.TextColor = 15076287
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorX = 46
            AnchorY = 95
          end
          object cxLabel12: TcxLabel
            Left = 8
            Top = 230
            AutoSize = False
            ParentColor = False
            ParentFont = False
            Style.BorderColor = 16349154
            Style.BorderStyle = ebsSingle
            Style.Color = clWhite
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = 33023
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = clBlack
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 74
            Width = 340
            AnchorX = 178
            AnchorY = 267
          end
          object cxLabel20: TcxLabel
            Left = 93
            Top = 61
            Caption = #49548'       '#49549
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 128
            AnchorY = 69
          end
          object cxLabel30: TcxLabel
            Left = 96
            Top = 115
            Caption = #50689#50629#49324#50896#47749
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 128
            AnchorY = 123
          end
          object cboFromBranch: TcxComboBox
            Left = 171
            Top = 56
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
            Properties.OnChange = cboFromBranchPropertiesChange
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
            Width = 177
          end
          object cxLabel43: TcxLabel
            Left = 102
            Top = 88
            Caption = #45824#54364#48264#54840
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 128
            AnchorY = 96
          end
          object cboFromKeynumber: TcxComboBox
            Left = 171
            Top = 83
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
            Properties.OnChange = cboFromKeynumberPropertiesChange
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
            TabOrder = 8
            Height = 26
            Width = 177
          end
          object cboFromUpsoWK: TcxComboBox
            Left = 171
            Top = 110
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
            Properties.OnChange = cboFromUpsoWKPropertiesChange
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
            TabOrder = 9
            Height = 26
            Width = 177
          end
          object cxLabel44: TcxLabel
            Left = 8
            Top = 161
            Caption = #45824#49345#50689#50629#49324#50896
            ParentColor = False
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = []
            Style.TextColor = clTeal
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorX = 46
            AnchorY = 169
          end
          object cxLabel47: TcxLabel
            Left = 96
            Top = 173
            Caption = #50689#50629#49324#50896#47749
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 128
            AnchorY = 181
          end
          object cxLabel48: TcxLabel
            Left = 102
            Top = 146
            Caption = #45824#54364#48264#54840
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 128
            AnchorY = 154
          end
          object cboToKeynumber: TcxComboBox
            Left = 171
            Top = 141
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
            Properties.OnChange = cboToKeynumberPropertiesChange
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
            TabOrder = 13
            Height = 26
            Width = 177
          end
          object cboToUpsoWK: TcxComboBox
            Left = 171
            Top = 168
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
            Properties.OnChange = cboToUpsoWKPropertiesChange
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
            TabOrder = 14
            Height = 26
            Width = 177
          end
          object lbResultMsg: TcxLabel
            Left = 20
            Top = 242
            Caption = #45824#54364#48264#54840
            ParentColor = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorY = 250
          end
          object Label18: TcxLabel
            Left = 8
            Top = 20
            Caption = #49440#53469#46108' '#50689#50629#49324#50896#45784#51060' '#44288#47532#54616#45716' '#50629#49548#46308#51060' '
            ParentColor = False
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = []
            Style.TextColor = clBlue
            Style.IsFontAssigned = True
            Transparent = True
          end
          object Label1: TcxLabel
            Left = 8
            Top = 37
            Caption = #45824#49345#50689#50629#49324#50896#51060' '#44288#47532#54616#45716' '#50629#49548#47196' '#51068#44292' '#48320#44221#46121#45768#45796'.'
            ParentColor = False
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = []
            Style.TextColor = clBlue
            Style.IsFontAssigned = True
            Transparent = True
          end
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Tag = 403
      Caption = #50629#49548#44288#47532
      ImageIndex = 2
      object pnl_BTN3: TPanel
        Left = 0
        Top = 0
        Width = 1237
        Height = 649
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Shape20: TShape
          Left = 0
          Top = 65
          Width = 1237
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = -6
          ExplicitTop = 23
          ExplicitWidth = 305
        end
        object cxGrid3: TcxGrid
          Left = 0
          Top = 67
          Width = 1237
          Height = 582
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          LookAndFeel.NativeStyle = False
          object BtnView3: TcxGridDBTableView
            Tag = 3
            PopupMenu = pm_CallBell
            OnKeyDown = BtnView3KeyDown
            OnKeyUp = BtnView3KeyUp
            OnMouseDown = BtnView3MouseDown
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
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCellDblClick = BtnView3CellDblClick
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnMoving = False
            OptionsData.Editing = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.CellMultiSelect = True
            OptionsSelection.InvertSelect = False
            OptionsView.NoDataToDisplayInfoText = ' '
            OptionsView.DataRowHeight = 22
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 23
            object BtnView3Column01: TcxGridDBColumn
              DataBinding.FieldName = 'No'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 30
            end
            object BtnView3Column02: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 54
            end
            object BtnView3Column03: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 113
            end
            object BtnView3Column04: TcxGridDBColumn
              DataBinding.FieldName = #45824#54364#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object BtnView3Column05: TcxGridDBColumn
              DataBinding.FieldName = #50689#50629#49324#50896'ID'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 81
            end
            object BtnView3Column06: TcxGridDBColumn
              DataBinding.FieldName = #50689#50629#49324#50896#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 79
            end
            object BtnView3Column07: TcxGridDBColumn
              DataBinding.FieldName = #50629#49548#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object BtnView3Column08: TcxGridDBColumn
              DataBinding.FieldName = #50629#49548#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 83
            end
            object BtnView3Column09: TcxGridDBColumn
              DataBinding.FieldName = #49345#53468
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 78
            end
            object BtnView3Column10: TcxGridDBColumn
              DataBinding.FieldName = #50629#49548#51204#54868#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 109
            end
            object BtnView3Column28: TcxGridDBColumn
              DataBinding.FieldName = #45824#54364#54648#46300#54256
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 92
            end
            object BtnView3Column11: TcxGridDBColumn
              DataBinding.FieldName = #49688#49688#47308#49444#51221
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 124
            end
            object BtnView3Column12: TcxGridDBColumn
              DataBinding.FieldName = #51221#49328#44552#50529
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object BtnView3Column13: TcxGridDBColumn
              DataBinding.FieldName = #51008#54665#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object BtnView3Column14: TcxGridDBColumn
              DataBinding.FieldName = #52636#44552#44228#51340
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 91
            end
            object BtnView3Column15: TcxGridDBColumn
              DataBinding.FieldName = #44228#51340
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object BtnView3Column16: TcxGridDBColumn
              DataBinding.FieldName = #50696#44552#51452
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object BtnView3Column17: TcxGridDBColumn
              DataBinding.FieldName = #49884#46020
              PropertiesClassName = 'TcxLabelProperties'
              HeaderAlignmentHorz = taCenter
            end
            object BtnView3Column18: TcxGridDBColumn
              DataBinding.FieldName = #49884#44400#44396
              PropertiesClassName = 'TcxLabelProperties'
              HeaderAlignmentHorz = taCenter
            end
            object BtnView3Column19: TcxGridDBColumn
              DataBinding.FieldName = #51021#47732#46041
              PropertiesClassName = 'TcxLabelProperties'
              HeaderAlignmentHorz = taCenter
            end
            object BtnView3Column20: TcxGridDBColumn
              DataBinding.FieldName = #49345#49464#51452#49548
              PropertiesClassName = 'TcxLabelProperties'
              HeaderAlignmentHorz = taCenter
            end
            object BtnView3Column21: TcxGridDBColumn
              DataBinding.FieldName = #51077#47141#50612
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
            object BtnView3Column22: TcxGridDBColumn
              DataBinding.FieldName = #51340#54364
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object BtnView3Column23: TcxGridDBColumn
              DataBinding.FieldName = #47700#47784
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
            end
            object BtnView3Column24: TcxGridDBColumn
              DataBinding.FieldName = #46321#47197#51068#49884
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 76
            end
            object BtnView3Column25: TcxGridDBColumn
              DataBinding.FieldName = #54644#51648#51068#49884
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 87
            end
            object BtnView3Column26: TcxGridDBColumn
              DataBinding.FieldName = #51204#54868#48264#54840#51204#52404
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
            object BtnView3Column27: TcxGridDBColumn
              DataBinding.FieldName = 'type'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = BtnView3
          end
        end
        object cxGroupBox3: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 65
          Width = 1237
          object Shape21: TShape
            Left = 6
            Top = 5
            Width = 333
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape22: TShape
            Left = 210
            Top = 32
            Width = 233
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape24: TShape
            Left = 463
            Top = 32
            Width = 150
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape4: TShape
            Left = 6
            Top = 32
            Width = 124
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object lbBTNCompany03: TcxLabel
            Left = 79
            Top = 4
            AutoSize = False
            Caption = #49548#49549
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clBtnFace
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 16711808
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 539
            AnchorX = 349
            AnchorY = 17
          end
          object btn_3_3: TcxButton
            Tag = 1
            Left = 797
            Top = 5
            Width = 83
            Height = 53
            Cursor = crHandPoint
            Caption = #49688#51221
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 6
            OnClick = btn_3_2Click
          end
          object btn_3_1: TcxButton
            Left = 623
            Top = 5
            Width = 83
            Height = 53
            Cursor = crHandPoint
            Caption = #44160'  '#49353
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 4
            OnClick = btn_3_1Click
          end
          object btn_3_2: TcxButton
            Left = 710
            Top = 5
            Width = 83
            Height = 53
            Cursor = crHandPoint
            Caption = #49888#44508#46321#47197
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 5
            OnClick = btn_3_2Click
          end
          object cxLabel18: TcxLabel
            Left = 14
            Top = 10
            Caption = #49548'     '#49549
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 43
            AnchorY = 18
          end
          object cboSearch_3: TcxComboBox
            Left = 268
            Top = 31
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
            Properties.Items.Strings = (
              #50629#49548#47749
              #50689#50629#49324#50896
              #50629#49548#51204#54868#48264#54840
              #45824#54364#55092#45824#54256)
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
            TabOrder = 0
            Text = #50629#49548#47749
            OnKeyPress = edtCallBellWkHPKeyPress
            Height = 26
            Width = 84
          end
          object cxLabel19: TcxLabel
            Left = 211
            Top = 36
            Caption = #44160#49353' '#51312#44148
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 240
            AnchorY = 44
          end
          object edtSearch_3: TcxTextEdit
            Left = 349
            Top = 31
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnKeyDown = edtSearch_3KeyDown
            Height = 26
            Width = 113
          end
          object btn_3_5: TcxButton
            Left = 971
            Top = 5
            Width = 83
            Height = 53
            Cursor = crHandPoint
            Caption = #50641#49472#52636#47141
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 8
            OnClick = btn_3_5Click
          end
          object btn_3_4: TcxButton
            Tag = 1
            Left = 882
            Top = 6
            Width = 83
            Height = 53
            Cursor = crHandPoint
            Caption = #54644#51648
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 7
            OnClick = btn_3_4Click
          end
          object cboStatus_3: TcxComboBox
            Left = 523
            Top = 31
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
            Properties.Items.Strings = (
              #51204#52404
              #46321#47197
              #54644#51648)
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
            TabOrder = 3
            Text = #51204#52404
            OnKeyDown = cboStatus_3KeyDown
            Height = 26
            Width = 95
          end
          object cxLabel17: TcxLabel
            Left = 473
            Top = 36
            Caption = #49345'  '#53468
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 493
            AnchorY = 44
          end
          object cbKeynumber03: TcxComboBox
            Left = 79
            Top = 31
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
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
            TabOrder = 2
            OnClick = cbKeynumber02Click
            OnKeyDown = cbKeynumber03KeyDown
            OnKeyPress = edtCallBellWkHPKeyPress
            Height = 26
            Width = 131
          end
          object cxLabel45: TcxLabel
            Left = 14
            Top = 36
            Caption = #45824#54364' '#48264#54840
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 43
            AnchorY = 44
          end
        end
        object cxBrNo3: TcxTextEdit
          Left = 9
          Top = 436
          Style.Color = 15456255
          TabOrder = 1
          Text = #51648#49324#53076#46300
          Visible = False
          Width = 54
        end
        object cxHdNo3: TcxTextEdit
          Left = 62
          Top = 436
          Style.Color = 15456255
          TabOrder = 2
          Text = #48376#49324#53076#46300
          Visible = False
          Width = 54
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Tag = 404
      Caption = #51648#49324#51221#49328
      ImageIndex = 3
      object pnl_BTN4: TPanel
        Left = 0
        Top = 0
        Width = 1237
        Height = 649
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Shape45: TShape
          Left = 0
          Top = 65
          Width = 1237
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = -6
          ExplicitTop = 23
          ExplicitWidth = 305
        end
        object cxGroupBox16: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 65
          Width = 1237
          object Shape46: TShape
            Left = 6
            Top = 5
            Width = 360
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape47: TShape
            Left = 428
            Top = 5
            Width = 102
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape51: TShape
            Left = 428
            Top = 32
            Width = 114
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape23: TShape
            Left = 6
            Top = 32
            Width = 243
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape3: TShape
            Left = 295
            Top = 32
            Width = 84
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
            Visible = False
          end
          object lbBTNCompany04: TcxLabel
            Left = 79
            Top = 4
            AutoSize = False
            Caption = #49548#49549
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 16711808
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 347
            AnchorX = 253
            AnchorY = 17
          end
          object cxLabel35: TcxLabel
            Left = 14
            Top = 10
            Caption = #49548'     '#49549
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 43
            AnchorY = 18
          end
          object cxLabel36: TcxLabel
            Left = 437
            Top = 10
            Caption = #45824#54364' '#48264#54840
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 466
            AnchorY = 18
          end
          object cbKeynumber04: TcxComboBox
            Left = 502
            Top = 4
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
            Properties.Items.Strings = (
              #51204#52404)
            Properties.OnChange = cbKeynumber04PropertiesChange
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 3
            Text = #51204#52404
            OnClick = cbKeynumber02Click
            Height = 26
            Width = 122
          end
          object cxDate4_1S: TcxDateEdit
            Left = 79
            Top = 31
            AutoSize = False
            BeepOnEnter = False
            EditValue = 0d
            ParentShowHint = False
            Properties.DateButtons = [btnNow, btnToday]
            Properties.DateOnError = deToday
            Properties.ImeMode = imSAlpha
            Properties.InputKind = ikStandard
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
            TabOrder = 0
            Height = 26
            Width = 86
          end
          object cxLabel82: TcxLabel
            Left = 167
            Top = 36
            Caption = '~'
            Transparent = True
          end
          object cxDate4_1E: TcxDateEdit
            Left = 182
            Top = 31
            AutoSize = False
            BeepOnEnter = False
            EditValue = 0d
            ParentShowHint = False
            Properties.DateButtons = [btnNow, btnToday]
            Properties.DateOnError = deToday
            Properties.ImeMode = imSAlpha
            Properties.InputKind = ikStandard
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
            TabOrder = 1
            Height = 26
            Width = 86
          end
          object btn_Date4_1: TcxButton
            Tag = 4
            Left = 268
            Top = 32
            Width = 25
            Height = 24
            Cursor = crHandPoint
            DropDownMenu = pm_Date
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
            TabOrder = 2
            OnMouseDown = btn_Date4_1MouseDown
          end
          object edtName_4_1: TcxTextEdit
            Left = 502
            Top = 31
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            OnKeyDown = edtName_4_1KeyDown
            Height = 26
            Width = 122
          end
          object cxLabel40: TcxLabel
            Left = 440
            Top = 37
            Caption = #51648' '#49324' '#47749
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 466
            AnchorY = 45
          end
          object cxLabel3: TcxLabel
            Left = 14
            Top = 37
            Caption = #44592'     '#44036
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 43
            AnchorY = 45
          end
          object btn_4_1: TcxButton
            Left = 626
            Top = 4
            Width = 83
            Height = 53
            Cursor = crHandPoint
            Caption = #44160'  '#49353
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 5
            OnClick = btn_4_1Click
          end
          object btn_4_2: TcxButton
            Left = 712
            Top = 4
            Width = 83
            Height = 53
            Cursor = crHandPoint
            Caption = #50641#49472#52636#47141
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 6
            OnClick = btn_4_2Click
          end
          object cxLabel52: TcxLabel
            Left = 804
            Top = 4
            Caption = '- '#53084#48296#51221#49328#51008' 09:00 '#51068#47560#44048#50640' '#51221#49328#46121#45768#45796'.'
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
          object cxLabel6: TcxLabel
            Left = 816
            Top = 17
            Caption = #45817#51068' '#51221#49328#44552#51008' '#51312#54924#46104#51648#50506#49845#45768#45796'.'
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
          object cxLabel7: TcxLabel
            Left = 804
            Top = 33
            Caption = '- '#51061#51068' '#53084#47560#45320' '#50836#52397#52712#49548#49884', '
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
          object cxLabel26: TcxLabel
            Left = 816
            Top = 46
            Caption = #53084#48296' '#51116#51221#49328' '#46104#51648#50506#49845#45768#45796'.'
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
          object cxLabel5: TcxLabel
            Left = 303
            Top = 37
            Caption = #44396'  '#48516
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            Visible = False
            AnchorX = 323
            AnchorY = 45
          end
          object cboStatus_4: TcxComboBox
            Left = 350
            Top = 31
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
            Properties.Items.Strings = (
              #51204#52404
              #53084#48296#50629#49548
              #50629#49548)
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
            TabOrder = 18
            Text = #51204#52404
            Visible = False
            OnKeyDown = cboStatus_4KeyDown
            Height = 26
            Width = 76
          end
        end
        object cxGrid4: TcxGrid
          Left = 0
          Top = 67
          Width = 1237
          Height = 582
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          LookAndFeel.NativeStyle = False
          object BtnView4: TcxGridDBTableView
            Tag = 4
            PopupMenu = pm_CallBell
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
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                OnGetText = BtnView4TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
                Column = BtnView4Column4
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = BtnView4Column5
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = BtnView4Column6
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = BtnView4Column7
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = BtnView4Column8
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = BtnView4Column14
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = BtnView4Column9
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = BtnView4Column10
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = BtnView4Column11
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = BtnView4Column12
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = BtnView4Column13
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = BtnView4Column15
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnMoving = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.NoDataToDisplayInfoText = ' '
            OptionsView.DataRowHeight = 22
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 23
            object BtnView4Column1: TcxGridDBColumn
              DataBinding.FieldName = 'No.'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 43
            end
            object BtnView4Column2: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
            end
            object BtnView4Column3: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 113
            end
            object BtnView4Column4: TcxGridDBColumn
              DataBinding.FieldName = #45824#54364#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object BtnView4Column5: TcxGridDBColumn
              DataBinding.FieldName = #52509#44148#49688
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 45
            end
            object BtnView4Column6: TcxGridDBColumn
              DataBinding.FieldName = #50756#47308#44148#49688
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 54
            end
            object BtnView4Column7: TcxGridDBColumn
              DataBinding.FieldName = #52712#49548#44148#49688
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 54
            end
            object BtnView4Column8: TcxGridDBColumn
              DataBinding.FieldName = #47928#51032#44148#49688
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 54
            end
            object BtnView4Column14: TcxGridDBColumn
              DataBinding.FieldName = #50868#54665#50836#44552
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 70
            end
            object BtnView4Column9: TcxGridDBColumn
              DataBinding.FieldName = #50756#47308'('#44592#49324#49688#49688#47308')'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 102
            end
            object BtnView4Column10: TcxGridDBColumn
              Caption = #53084#48296#49688#51061#44552
              DataBinding.FieldName = #49892#49688#51061#44552
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              Visible = False
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Styles.Content = Frm_Main.cxStyleWarning
              Styles.Header = Frm_Main.cxStyleWarning
              VisibleForEditForm = bFalse
              Width = 66
            end
            object BtnView4Column11: TcxGridDBColumn
              DataBinding.FieldName = #50689#50629#49324#50896'('#51221#49328#44552')'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Styles.Content = Frm_Main.cxStyle8
              Width = 102
            end
            object BtnView4Column12: TcxGridDBColumn
              DataBinding.FieldName = #50629#49548'('#49688#49688#47308')'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Styles.Content = Frm_Main.cxStyle8
              Width = 78
            end
            object BtnView4Column13: TcxGridDBColumn
              DataBinding.FieldName = #53084#48296#49688#49688#47308
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Styles.Content = Frm_Main.cxStyle8
              Width = 66
            end
            object BtnView4Column15: TcxGridDBColumn
              DataBinding.FieldName = #53084#48296#51221#49328#54633#44228'('#49892#49688#51061#44552')'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              Styles.Content = Frm_Main.cxStyle8
              Width = 138
            end
          end
          object cxGrid4Level1: TcxGridLevel
            GridView = BtnView4
          end
        end
        object cxBrNo4: TcxTextEdit
          Left = 33
          Top = 460
          Style.Color = 15456255
          TabOrder = 2
          Text = #51648#49324#53076#46300
          Visible = False
          Width = 54
        end
        object cxHdNo4: TcxTextEdit
          Left = 86
          Top = 460
          Style.Color = 15456255
          TabOrder = 3
          Text = #48376#49324#53076#46300
          Visible = False
          Width = 54
        end
      end
    end
    object cxTabSheet5: TcxTabSheet
      Tag = 405
      Caption = #50689#50629#49324#50896#51221#49328
      ImageIndex = 4
      object pnl_BTN5: TPanel
        Left = 0
        Top = 0
        Width = 1237
        Height = 649
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Shape60: TShape
          Left = 0
          Top = 65
          Width = 1237
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
          TabOrder = 2
          Height = 65
          Width = 1237
          object Shape25: TShape
            Left = 6
            Top = 5
            Width = 360
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape26: TShape
            Left = 428
            Top = 5
            Width = 123
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape27: TShape
            Left = 428
            Top = 32
            Width = 124
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape28: TShape
            Left = 6
            Top = 32
            Width = 243
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape8: TShape
            Left = 295
            Top = 32
            Width = 91
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object lbBTNCompany05: TcxLabel
            Left = 79
            Top = 4
            AutoSize = False
            Caption = #49548#49549
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 16711808
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 347
            AnchorX = 253
            AnchorY = 17
          end
          object cxLabel21: TcxLabel
            Left = 14
            Top = 10
            Caption = #49548'     '#49549
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 43
            AnchorY = 18
          end
          object cxLabel22: TcxLabel
            Left = 437
            Top = 10
            Caption = #45824#54364' '#48264#54840
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 466
            AnchorY = 18
          end
          object cbKeynumber05: TcxComboBox
            Left = 502
            Top = 4
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
            Properties.Items.Strings = (
              #51204#52404)
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 3
            Text = #51204#52404
            OnClick = cbKeynumber02Click
            Height = 26
            Width = 122
          end
          object cxDate5_1S: TcxDateEdit
            Left = 79
            Top = 31
            AutoSize = False
            BeepOnEnter = False
            EditValue = 0d
            ParentShowHint = False
            Properties.DateButtons = [btnNow, btnToday]
            Properties.DateOnError = deToday
            Properties.ImeMode = imSAlpha
            Properties.InputKind = ikStandard
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
            TabOrder = 0
            Height = 26
            Width = 86
          end
          object cxLabel23: TcxLabel
            Left = 167
            Top = 36
            Caption = '~'
            Transparent = True
          end
          object cxDate5_1E: TcxDateEdit
            Left = 182
            Top = 31
            AutoSize = False
            BeepOnEnter = False
            EditValue = 0d
            ParentShowHint = False
            Properties.DateButtons = [btnNow, btnToday]
            Properties.DateOnError = deToday
            Properties.ImeMode = imSAlpha
            Properties.InputKind = ikStandard
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
            TabOrder = 1
            Height = 26
            Width = 86
          end
          object btn_Date5_1: TcxButton
            Tag = 5
            Left = 268
            Top = 32
            Width = 25
            Height = 24
            Cursor = crHandPoint
            DropDownMenu = pm_Date
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
            TabOrder = 2
            OnMouseDown = btn_Date4_1MouseDown
          end
          object edtName_5_1: TcxTextEdit
            Left = 502
            Top = 31
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            OnKeyDown = edtName_5_1KeyDown
            Height = 26
            Width = 122
          end
          object cxLabel24: TcxLabel
            Left = 437
            Top = 37
            Caption = #50689#50629' '#49324#50896
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 466
            AnchorY = 45
          end
          object cxLabel25: TcxLabel
            Left = 14
            Top = 37
            Caption = #44592'     '#44036
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 43
            AnchorY = 45
          end
          object btn_5_1: TcxButton
            Left = 626
            Top = 4
            Width = 83
            Height = 53
            Cursor = crHandPoint
            Caption = #44160'  '#49353
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 5
            OnClick = btn_5_1Click
          end
          object btn_5_2: TcxButton
            Left = 712
            Top = 4
            Width = 83
            Height = 53
            Cursor = crHandPoint
            Caption = #50641#49472#52636#47141
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 6
            OnClick = btn_5_2Click
          end
          object cxLabel32: TcxLabel
            Left = 804
            Top = 4
            Caption = '- '#53084#48296#51221#49328#51008' 09:00 '#51068#47560#44048#50640' '#51221#49328#46121#45768#45796'.'
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
          object cxLabel33: TcxLabel
            Left = 816
            Top = 17
            Caption = #45817#51068' '#51221#49328#44552#51008' '#51312#54924#46104#51648#50506#49845#45768#45796'.'
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
          object cxLabel34: TcxLabel
            Left = 804
            Top = 33
            Caption = '- '#51061#51068' '#53084#47560#45320' '#50836#52397#52712#49548#49884', '
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
          object cxLabel37: TcxLabel
            Left = 816
            Top = 46
            Caption = #53084#48296' '#51116#51221#49328' '#46104#51648#50506#49845#45768#45796'.'
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
          object cboStatus_5: TcxComboBox
            Left = 350
            Top = 31
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
            Properties.Items.Strings = (
              #51204#52404
              #53084#48296#50629#49548
              #50629#49548)
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
            TabOrder = 17
            Text = #51204#52404
            OnKeyDown = cboStatus_5KeyDown
            Height = 26
            Width = 76
          end
          object cxLabel9: TcxLabel
            Left = 303
            Top = 37
            Caption = #44396'  '#48516
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 323
            AnchorY = 45
          end
        end
        object cxGrid5: TcxGrid
          Left = 0
          Top = 67
          Width = 1237
          Height = 582
          Align = alClient
          TabOrder = 3
          LookAndFeel.NativeStyle = False
          object BtnView5: TcxGridDBTableView
            Tag = 5
            PopupMenu = pm_CallBell
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
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCellDblClick = BtnView5CellDblClick
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                OnGetText = BtnView5TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
                Column = BtnView5Column5
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = BtnView5Column6
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = BtnView5Column7
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = BtnView5Column8
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = BtnView5Column9
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = BtnView5Column10
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = BtnView5Column11
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = BtnView5Column12
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = BtnView5Column14
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnMoving = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.NoDataToDisplayInfoText = ' '
            OptionsView.DataRowHeight = 22
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 23
            object BtnView5Column1: TcxGridDBColumn
              DataBinding.FieldName = 'No.'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 43
            end
            object BtnView5Column2: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object BtnView5Column3: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 117
            end
            object BtnView5Column13: TcxGridDBColumn
              DataBinding.FieldName = #50689#50629#49324#50896'ID'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 84
            end
            object BtnView5Column4: TcxGridDBColumn
              DataBinding.FieldName = #50689#50629#49324#50896#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 88
            end
            object BtnView5Column5: TcxGridDBColumn
              DataBinding.FieldName = #45824#54364#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object BtnView5Column15: TcxGridDBColumn
              DataBinding.FieldName = #44396#48516
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
            end
            object BtnView5Column6: TcxGridDBColumn
              DataBinding.FieldName = #52509#44148#49688
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 54
            end
            object BtnView5Column7: TcxGridDBColumn
              DataBinding.FieldName = #50756#47308#44148#49688
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 54
            end
            object BtnView5Column8: TcxGridDBColumn
              DataBinding.FieldName = #52712#49548#44148#49688
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 54
            end
            object BtnView5Column9: TcxGridDBColumn
              DataBinding.FieldName = #47928#51032#44148#49688
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 54
            end
            object BtnView5Column10: TcxGridDBColumn
              DataBinding.FieldName = #50868#54665#50836#44552
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              VisibleForEditForm = bFalse
              Width = 70
            end
            object BtnView5Column11: TcxGridDBColumn
              DataBinding.FieldName = #50689#50629#49324#50896'('#49688#51061#44552')'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 102
            end
            object BtnView5Column12: TcxGridDBColumn
              DataBinding.FieldName = #54788#51116#51092#50529
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 74
            end
            object BtnView5Column14: TcxGridDBColumn
              DataBinding.FieldName = #45572#51201#44552#50529'('#47560#51068#47532#51648')'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 114
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = BtnView5
          end
        end
        object cxBrNo5: TcxTextEdit
          Left = 41
          Top = 468
          Style.Color = 15456255
          TabOrder = 0
          Text = #51648#49324#53076#46300
          Visible = False
          Width = 54
        end
        object cxHdNo5: TcxTextEdit
          Left = 94
          Top = 468
          Style.Color = 15456255
          TabOrder = 1
          Text = #48376#49324#53076#46300
          Visible = False
          Width = 54
        end
      end
    end
    object cxTabSheet6: TcxTabSheet
      Tag = 406
      Caption = #50629#49548#51221#49328
      ImageIndex = 5
      object pnl_BTN6: TPanel
        Left = 0
        Top = 0
        Width = 1237
        Height = 649
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Shape29: TShape
          Left = 0
          Top = 65
          Width = 1237
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = -6
          ExplicitTop = 23
          ExplicitWidth = 305
        end
        object cxTextEdit9: TcxTextEdit
          Left = 41
          Top = 468
          Style.Color = 15456255
          TabOrder = 0
          Text = #51648#49324#53076#46300
          Visible = False
          Width = 54
        end
        object cxTextEdit10: TcxTextEdit
          Left = 94
          Top = 468
          Style.Color = 15456255
          TabOrder = 1
          Text = #48376#49324#53076#46300
          Visible = False
          Width = 54
        end
        object cxGroupBox5: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Height = 65
          Width = 1237
          object Shape30: TShape
            Left = 6
            Top = 5
            Width = 360
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape31: TShape
            Left = 428
            Top = 5
            Width = 123
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape33: TShape
            Left = 6
            Top = 32
            Width = 243
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape9: TShape
            Left = 295
            Top = 32
            Width = 109
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object lbBTNCompany06: TcxLabel
            Left = 79
            Top = 4
            AutoSize = False
            Caption = #49548#49549
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 16711808
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 347
            AnchorX = 253
            AnchorY = 17
          end
          object cxLabel27: TcxLabel
            Left = 14
            Top = 10
            Caption = #49548'     '#49549
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 43
            AnchorY = 18
          end
          object cxLabel28: TcxLabel
            Left = 437
            Top = 10
            Caption = #45824#54364' '#48264#54840
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 466
            AnchorY = 18
          end
          object cbKeynumber06: TcxComboBox
            Left = 502
            Top = 4
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
            Properties.Items.Strings = (
              #51204#52404)
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 3
            Text = #51204#52404
            OnClick = cbKeynumber02Click
            Height = 26
            Width = 122
          end
          object cxDate6_1S: TcxDateEdit
            Left = 79
            Top = 31
            AutoSize = False
            BeepOnEnter = False
            EditValue = 0d
            ParentShowHint = False
            Properties.DateButtons = [btnNow, btnToday]
            Properties.DateOnError = deToday
            Properties.ImeMode = imSAlpha
            Properties.InputKind = ikStandard
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
            TabOrder = 0
            Height = 26
            Width = 86
          end
          object cxLabel29: TcxLabel
            Left = 167
            Top = 36
            Caption = '~'
            Transparent = True
          end
          object cxDate6_1E: TcxDateEdit
            Left = 182
            Top = 31
            AutoSize = False
            BeepOnEnter = False
            EditValue = 0d
            ParentShowHint = False
            Properties.DateButtons = [btnNow, btnToday]
            Properties.DateOnError = deToday
            Properties.ImeMode = imSAlpha
            Properties.InputKind = ikStandard
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
            TabOrder = 1
            Height = 26
            Width = 86
          end
          object btn_Date6_1: TcxButton
            Tag = 6
            Left = 268
            Top = 32
            Width = 25
            Height = 24
            Cursor = crHandPoint
            DropDownMenu = pm_Date
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
            TabOrder = 2
            OnMouseDown = btn_Date4_1MouseDown
          end
          object edtName_6_1: TcxTextEdit
            Left = 508
            Top = 31
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            OnKeyDown = edtName_6_1KeyDown
            Height = 26
            Width = 116
          end
          object cxLabel31: TcxLabel
            Left = 14
            Top = 37
            Caption = #44592'     '#44036
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 43
            AnchorY = 45
          end
          object btn_6_1: TcxButton
            Left = 626
            Top = 4
            Width = 83
            Height = 53
            Cursor = crHandPoint
            Caption = #44160'  '#49353
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 5
            OnClick = btn_6_1Click
          end
          object btn_6_2: TcxButton
            Left = 712
            Top = 4
            Width = 83
            Height = 53
            Cursor = crHandPoint
            Caption = #50641#49472#52636#47141
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 6
            OnClick = btn_6_2Click
          end
          object cxLabel38: TcxLabel
            Left = 804
            Top = 4
            Caption = '- '#53084#48296#51221#49328#51008' 09:00 '#51068#47560#44048#50640' '#51221#49328#46121#45768#45796'.'
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
          object cxLabel39: TcxLabel
            Left = 816
            Top = 17
            Caption = #45817#51068' '#51221#49328#44552#51008' '#51312#54924#46104#51648#50506#49845#45768#45796'.'
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
          object cxLabel41: TcxLabel
            Left = 804
            Top = 33
            Caption = '- '#51061#51068' '#53084#47560#45320' '#50836#52397#52712#49548#49884', '
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
          object cxLabel42: TcxLabel
            Left = 816
            Top = 46
            Caption = #53084#48296' '#51116#51221#49328' '#46104#51648#50506#49845#45768#45796'.'
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
          object cboStatus_6: TcxComboBox
            Left = 350
            Top = 31
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
            Properties.Items.Strings = (
              #51204#52404
              #53084#48296#50629#49548
              #50629#49548)
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
            TabOrder = 16
            Text = #51204#52404
            OnKeyDown = cboStatus_6KeyDown
            Height = 26
            Width = 76
          end
          object cxLabel10: TcxLabel
            Left = 303
            Top = 37
            Caption = #44396'  '#48516
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 323
            AnchorY = 45
          end
          object cboStatus_6_1: TcxComboBox
            Left = 427
            Top = 31
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
            Properties.Items.Strings = (
              #50629#49548#47749
              #50629#49548#51204#54868#48264#54840
              #45824#54364#55092#45824#54256)
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
            TabOrder = 18
            Text = #50629#49548#47749
            OnKeyPress = edtCallBellWkHPKeyPress
            Height = 26
            Width = 84
          end
        end
        object cxGrid6: TcxGrid
          Left = 0
          Top = 67
          Width = 1237
          Height = 582
          Align = alClient
          TabOrder = 3
          LookAndFeel.NativeStyle = False
          object BtnView6: TcxGridDBTableView
            Tag = 6
            PopupMenu = pm_CallBell
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
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCellDblClick = BtnView6CellDblClick
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                OnGetText = BtnView6TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
                Column = BtnView6Column13
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = BtnView6Column6
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = BtnView6Column7
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = BtnView6Column8
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = BtnView6Column9
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = BtnView6Column10
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = BtnView6Column11
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = BtnView6Column12
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = BtnView6Column14
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnMoving = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.NoDataToDisplayInfoText = ' '
            OptionsView.DataRowHeight = 22
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 23
            object BtnView6Column1: TcxGridDBColumn
              DataBinding.FieldName = 'No.'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 43
            end
            object BtnView6Column2: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
            end
            object BtnView6Column3: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 117
            end
            object BtnView6Column4: TcxGridDBColumn
              DataBinding.FieldName = #45824#54364#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object BtnView6Column15: TcxGridDBColumn
              DataBinding.FieldName = #44396#48516
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
            end
            object BtnView6Column5: TcxGridDBColumn
              DataBinding.FieldName = #50629#49548#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
              Width = 54
            end
            object BtnView6Column13: TcxGridDBColumn
              DataBinding.FieldName = #50629#49548#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Width = 92
            end
            object BtnView6Column6: TcxGridDBColumn
              DataBinding.FieldName = #52509#44148#49688
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 54
            end
            object BtnView6Column7: TcxGridDBColumn
              DataBinding.FieldName = #50756#47308#44148#49688
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 54
            end
            object BtnView6Column8: TcxGridDBColumn
              DataBinding.FieldName = #52712#49548#44148#49688
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 54
            end
            object BtnView6Column9: TcxGridDBColumn
              DataBinding.FieldName = #47928#51032#44148#49688
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 54
            end
            object BtnView6Column10: TcxGridDBColumn
              DataBinding.FieldName = #50868#54665#50836#44552
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              VisibleForEditForm = bFalse
              Width = 54
            end
            object BtnView6Column11: TcxGridDBColumn
              DataBinding.FieldName = #50629#49548#49688#51061#44552
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 98
            end
            object BtnView6Column12: TcxGridDBColumn
              DataBinding.FieldName = #54788#51116#51092#50529
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 74
            end
            object BtnView6Column14: TcxGridDBColumn
              DataBinding.FieldName = #45572#51201#44552#50529
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
            end
            object BtnView6Column16: TcxGridDBColumn
              DataBinding.FieldName = 'Label'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
          end
          object cxGridLevel4: TcxGridLevel
            GridView = BtnView6
          end
        end
        object cxHdNo6: TcxTextEdit
          Left = 102
          Top = 476
          Style.Color = 15456255
          TabOrder = 4
          Text = #48376#49324#53076#46300
          Visible = False
          Width = 54
        end
        object cxBrNo6: TcxTextEdit
          Left = 49
          Top = 476
          Style.Color = 15456255
          TabOrder = 5
          Text = #51648#49324#53076#46300
          Visible = False
          Width = 54
        end
      end
    end
  end
  object pm_Date: TPopupMenu
    AutoHotkeys = maManual
    Left = 36
    Top = 380
    object N_Today: TMenuItem
      Caption = #50724#45720
      Visible = False
      OnClick = N_TodayClick
    end
    object N_Yesterday: TMenuItem
      Caption = #50612#51228
      OnClick = N_YesterdayClick
    end
    object N_Week: TMenuItem
      Caption = #52572#44540#51068#51452#51068
      OnClick = N_WeekClick
    end
    object N_Month: TMenuItem
      Caption = #52572#44540#54620#45804
      OnClick = N_MonthClick
    end
    object N_1Start31End: TMenuItem
      Caption = '1'#51068'~'#47568#51068
      OnClick = N_1Start31EndClick
    end
  end
  object pm_CallBell: TPopupMenu
    OnPopup = pm_CallBellPopup
    Left = 146
    Top = 235
    object N3: TMenuItem
      Caption = #50629#49548#44288#47532' '#50689#50629#49324#50896#48320#44221
      OnClick = N3Click
    end
    object N1: TMenuItem
      Caption = #53748#49324
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #50641#49472#52636#47141
      OnClick = N2Click
    end
  end
end

object Frm_WORA6: TFrm_WORA6
  Left = 281
  Top = 154
  BorderStyle = bsNone
  Caption = 'Frm_WORA6'
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
      Top = 165
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
      Height = 165
      Width = 993
      object Shape1: TShape
        Left = 10
        Top = 5
        Width = 413
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape4: TShape
        Left = 424
        Top = 5
        Width = 300
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
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
      object lblSosokNameA6: TcxLabel
        Left = 95
        Top = 4
        AutoSize = False
        Caption = #49548#49549
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 26
        Width = 329
        AnchorX = 260
        AnchorY = 17
      end
      object cxLabel1: TcxLabel
        Left = 436
        Top = 10
        Caption = #44592#49324#44160#49353
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 462
        AnchorY = 18
      end
      object cbPeakType: TcxComboBox
        Left = 504
        Top = 4
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #51204#52404
          #44592#49324#47749
          #51088#52404#49324#48264
          #45800#47568#44592'+'#55092#45824#54256#48264#54840)
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Text = #51204#52404
        Height = 26
        Width = 110
      end
      object edtPeakSearch: TcxTextEdit
        Left = 614
        Top = 4
        TabStop = False
        AutoSize = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        Height = 26
        Width = 111
      end
      object btnSearchA6: TcxButton
        Left = 727
        Top = 5
        Width = 63
        Height = 24
        Cursor = crHandPoint
        Caption = #51312#54924
        Colors.Default = 16773362
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        TabOrder = 5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = btnSearchA6Click
      end
      object btnUpdateA6: TcxButton
        Left = 793
        Top = 5
        Width = 63
        Height = 24
        Cursor = crHandPoint
        Caption = #49688#51221
        Colors.Default = 16773362
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        TabOrder = 6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = btnUpdateA6Click
      end
      object gbxPeakBrInfo: TcxGroupBox
        Left = 8
        Top = 34
        Caption = #49900#50556#48176#52264#51228#54620' '#51648#49324#49444#51221' '#51221#48372'('#51648#49324#47484' '#49440#53469#54644' '#51452#49464#50836'.)'
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 7
        Height = 127
        Width = 595
        object Shape12: TShape
          Left = 480
          Top = 16
          Width = 107
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape8: TShape
          Left = 238
          Top = 16
          Width = 114
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape7: TShape
          Left = 117
          Top = 16
          Width = 118
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape2: TShape
          Left = 10
          Top = 38
          Width = 342
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape5: TShape
          Left = 10
          Top = 64
          Width = 342
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape6: TShape
          Left = 10
          Top = 90
          Width = 342
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape9: TShape
          Left = 374
          Top = 38
          Width = 213
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape10: TShape
          Left = 374
          Top = 64
          Width = 213
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape11: TShape
          Left = 374
          Top = 90
          Width = 213
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object lblPeakAuthUse: TcxLabel
          Left = 481
          Top = 89
          AutoSize = False
          Caption = #51088#46041' '#48120#49324#50857' '#49444#51221
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = clDefault
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 26
          Width = 107
          AnchorY = 102
        end
        object lbl31: TcxLabel
          Left = 377
          Top = 94
          Caption = #51088#46041' '#48120#49324#50857' '#49444#51221
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 425
          AnchorY = 102
        end
        object lbl26: TcxLabel
          Left = 387
          Top = 68
          Caption = #48176#52264#51228#54620#49884#44036
          ParentColor = False
          Style.TextColor = 16512
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 425
          AnchorY = 76
        end
        object edtPeakLockSec: TcxTextEdit
          Left = 480
          Top = 63
          AutoSize = False
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Text = '1000'
          Height = 26
          Width = 81
        end
        object lbl29: TcxLabel
          Left = 563
          Top = 68
          Caption = #52488
          Transparent = True
        end
        object edtPeakLock02: TcxTextEdit
          Left = 536
          Top = 37
          AutoSize = False
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          Text = '00:00'
          Height = 26
          Width = 37
        end
        object lbl30: TcxLabel
          Left = 521
          Top = 43
          Caption = '~'
          Transparent = True
        end
        object edtPeakLock01: TcxTextEdit
          Left = 480
          Top = 37
          AutoSize = False
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          Text = '00:00'
          Height = 26
          Width = 37
        end
        object lbl25: TcxLabel
          Left = 387
          Top = 42
          Caption = #51228#54620#51201#50857#49884#44036
          ParentColor = False
          Style.TextColor = 16512
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 425
          AnchorY = 50
        end
        object lbl24: TcxLabel
          Left = 507
          Top = 19
          Caption = #48176#52264#51228#54620
          ParentColor = False
          Style.TextColor = 16512
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 533
          AnchorY = 27
        end
        object lbl12: TcxLabel
          Left = 264
          Top = 19
          Caption = #49688#51665#44592#51456'2'
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 293
          AnchorY = 27
        end
        object lbl8: TcxLabel
          Left = 145
          Top = 19
          Caption = #49688#51665#44592#51456'1'
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 174
          AnchorY = 27
        end
        object lbl10: TcxLabel
          Left = 25
          Top = 42
          Caption = #49688' '#51665' '#49884' '#44036
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 57
          AnchorY = 50
        end
        object lbl13: TcxLabel
          Left = 14
          Top = 68
          Caption = #51228#54620#44148#49688'('#50756#47308')'
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 57
          AnchorY = 76
        end
        object lbl16: TcxLabel
          Left = 14
          Top = 94
          Caption = #51228#54620#44552#50529'('#50756#47308')'
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 57
          AnchorY = 102
        end
        object edtPeakPay1: TcxTextEdit
          Left = 116
          Top = 89
          AutoSize = False
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 15
          Text = '1,000'
          Height = 26
          Width = 93
        end
        object edtPeakCount1: TcxTextEdit
          Left = 116
          Top = 63
          AutoSize = False
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 16
          Text = '1000'
          Height = 26
          Width = 93
        end
        object edtPeakTime01: TcxTextEdit
          Left = 116
          Top = 37
          AutoSize = False
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 17
          Text = '00:00'
          Height = 26
          Width = 37
        end
        object edtPeakTime02: TcxTextEdit
          Left = 172
          Top = 37
          AutoSize = False
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 18
          Text = '00:00'
          Height = 26
          Width = 37
        end
        object lbl7: TcxLabel
          Left = 156
          Top = 43
          Caption = '~'
          Transparent = True
        end
        object lbl21: TcxLabel
          Left = 211
          Top = 69
          Caption = #44148
          Transparent = True
        end
        object lbl20: TcxLabel
          Left = 211
          Top = 94
          Caption = #50896
          Transparent = True
        end
        object edtPeakTime11: TcxTextEdit
          Left = 238
          Top = 37
          AutoSize = False
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 22
          Text = '00:00'
          Height = 26
          Width = 37
        end
        object lbl19: TcxLabel
          Left = 278
          Top = 43
          Caption = '~'
          Transparent = True
        end
        object edtPeakTime12: TcxTextEdit
          Left = 294
          Top = 37
          AutoSize = False
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 24
          Text = '00:00'
          Height = 26
          Width = 37
        end
        object edtPeakCount2: TcxTextEdit
          Left = 238
          Top = 63
          AutoSize = False
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 25
          Text = '1000'
          Height = 26
          Width = 93
        end
        object edtPeakPay2: TcxTextEdit
          Left = 238
          Top = 89
          AutoSize = False
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 26
          Text = '1,000'
          Height = 26
          Width = 93
        end
        object lbl22: TcxLabel
          Left = 332
          Top = 69
          Caption = #44148
          Transparent = True
        end
        object lbl23: TcxLabel
          Left = 332
          Top = 94
          Caption = #50896
          Transparent = True
        end
      end
      object gbx1: TcxGroupBox
        Left = 607
        Top = 34
        Caption = #49900#50556#48176#52264#51228#54620' '#44592#49324' '#54788#54889
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 8
        Height = 127
        Width = 201
        object Shape13: TShape
          Left = 5
          Top = 41
          Width = 191
          Height = 23
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape14: TShape
          Left = 5
          Top = 66
          Width = 191
          Height = 23
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape15: TShape
          Left = 5
          Top = 91
          Width = 191
          Height = 23
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape16: TShape
          Left = 5
          Top = 16
          Width = 191
          Height = 23
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object lblPeakWkPassC: TcxLabel
          Left = 20
          Top = 22
          Caption = #53685'            '#44284
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 58
          AnchorY = 30
        end
        object lblPeakWkPassTodayC: TcxLabel
          Left = 15
          Top = 45
          Caption = #53685#44284'('#45817#51068#50696#50808')'
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 58
          AnchorY = 53
        end
        object lblPeakWkLockC: TcxLabel
          Left = 20
          Top = 69
          Caption = #51228'            '#54620
          ParentColor = False
          Style.TextColor = 4210816
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 58
          AnchorY = 77
        end
        object lblPeakWkLockTodayC: TcxLabel
          Left = 15
          Top = 95
          Caption = #51228#54620'('#45817#51068#50696#50808')'
          ParentColor = False
          Style.TextColor = 4210816
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 58
          AnchorY = 103
        end
        object lblPeakWkPass: TcxLabel
          Left = 113
          Top = 15
          AutoSize = False
          Caption = '0'
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = clDefault
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 25
          Width = 60
          AnchorX = 173
          AnchorY = 28
        end
        object lblPeakWkPassToday: TcxLabel
          Left = 113
          Top = 40
          AutoSize = False
          Caption = '0'
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = clDefault
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 25
          Width = 61
          AnchorX = 174
          AnchorY = 53
        end
        object lblPeakWkLock: TcxLabel
          Left = 113
          Top = 65
          AutoSize = False
          Caption = '0'
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = clDefault
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 25
          Width = 61
          AnchorX = 174
          AnchorY = 78
        end
        object lblPeakWkLockToday: TcxLabel
          Left = 113
          Top = 87
          AutoSize = False
          Caption = '0'
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = clDefault
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 28
          Width = 61
          AnchorX = 174
          AnchorY = 101
        end
        object lbl32: TcxLabel
          Left = 175
          Top = 24
          Caption = #47749
          Transparent = True
        end
        object lbl33: TcxLabel
          Left = 175
          Top = 48
          Caption = #47749
          Transparent = True
        end
        object lbl34: TcxLabel
          Left = 175
          Top = 72
          Caption = #47749
          Transparent = True
        end
        object lbl35: TcxLabel
          Left = 175
          Top = 96
          Caption = #47749
          Transparent = True
        end
      end
    end
    object cxGridA6: TcxGrid
      Left = 0
      Top = 167
      Width = 993
      Height = 574
      Align = alClient
      TabOrder = 1
      LookAndFeel.NativeStyle = True
      object cxGridPeakTime: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = cxGridPeakTimeCellDblClick
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DataController.OnSortingChanged = cxGridPeakTimeDataControllerSortingChanged
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.ColumnMoving = False
        OptionsData.Editing = False
        OptionsView.NoDataToDisplayInfoText = ' '
        OptionsView.DataRowHeight = 22
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        OnColumnHeaderClick = cxGridPeakTimeColumnHeaderClick
        object cxGridPeakTimeColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'No'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 40
        end
        object cxGridPeakTimeColumn2: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 108
        end
        object cxGridPeakTimeColumn3: TcxGridDBColumn
          DataBinding.FieldName = #49324#48264
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridPeakTimeColumn4: TcxGridDBColumn
          DataBinding.FieldName = #51088#52404#49324#48264
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridPeakTimeColumn5: TcxGridDBColumn
          DataBinding.FieldName = #49457#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxGridPeakTimeColumn6: TcxGridDBColumn
          DataBinding.FieldName = #45800#47568#44592
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxGridPeakTimeColumn7: TcxGridDBColumn
          DataBinding.FieldName = #55092#45824#54256
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxGridPeakTimeColumn8: TcxGridDBColumn
          DataBinding.FieldName = #51228#54620#49345#53468
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 72
        end
        object cxGridPeakTimeColumn9: TcxGridDBColumn
          Caption = #49688#51665#44552#50529'(1)'
          DataBinding.FieldName = #49688#51665#49884#44036'-'#50756#47308#44148#49688
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 78
        end
        object cxGridPeakTimeColumn10: TcxGridDBColumn
          Caption = #49688#51665#44148#49688'(1)'
          DataBinding.FieldName = #49688#51665#49884#44036'-'#50756#47308#44552#50529
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 77
        end
        object cxgrdbclmnGridPeakTimeColumn14: TcxGridDBColumn
          DataBinding.FieldName = #49688#51665#44552#50529'(2)'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 77
        end
        object cxgrdbclmnGridPeakTimeColumn15: TcxGridDBColumn
          DataBinding.FieldName = #49688#51665#44148#49688'(2)'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 77
        end
        object cxgrdbclmnGridPeakTimeColumn16: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#49688#51665#44552#50529'(1)'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 94
        end
        object cxgrdbclmnGridPeakTimeColumn17: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#49688#51665#44148#49688'(1)'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 94
        end
        object cxgrdbclmnGridPeakTimeColumn18: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#49688#51665#44552#50529'(2)'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 94
        end
        object cxgrdbclmnGridPeakTimeColumn19: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#49688#51665#44148#49688'(2)'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 94
        end
        object cxGridPeakTimeColumn11: TcxGridDBColumn
          DataBinding.FieldName = #48708#44256
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridPeakTimeColumn12: TcxGridDBColumn
          DataBinding.FieldName = #44036#45800#47700#47784
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridPeakTimeColumn13: TcxGridDBColumn
          DataBinding.FieldName = #51077#49324#51068
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
      end
      object cxGridA6Level1: TcxGridLevel
        GridView = cxGridPeakTime
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

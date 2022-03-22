object frm_BTN01: Tfrm_BTN01
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_BTN01'
  ClientHeight = 524
  ClientWidth = 375
  Color = clBtnFace
  Constraints.MinHeight = 475
  Constraints.MinWidth = 370
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
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
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 375
    Height = 524
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    OnMouseDown = pnlMainMouseDown
    object PnlCallBellCust: TPanel
      Left = 0
      Top = 25
      Width = 371
      Height = 495
      Align = alClient
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = 16444898
      TabOrder = 0
      object Shape25: TShape
        Left = 2
        Top = 149
        Width = 27
        Height = 80
        Pen.Color = 12566402
      end
      object Shape23: TShape
        Left = 2
        Top = 2
        Width = 80
        Height = 24
        Pen.Color = 12566402
      end
      object Shape24: TShape
        Left = 225
        Top = 123
        Width = 75
        Height = 24
        Pen.Color = 12566402
      end
      object Shape26: TShape
        Left = 2
        Top = 360
        Width = 80
        Height = 22
        Pen.Color = 12566402
      end
      object Shape27: TShape
        Left = -3
        Top = 88
        Width = 372
        Height = 1
        Pen.Color = 11184810
      end
      object Shape28: TShape
        Left = 2
        Top = 97
        Width = 80
        Height = 24
        Pen.Color = 12566402
      end
      object Shape29: TShape
        Left = 2
        Top = 232
        Width = 80
        Height = 24
        Pen.Color = 12566402
      end
      object Shape30: TShape
        Left = 2
        Top = 259
        Width = 80
        Height = 24
        Pen.Color = 12566402
      end
      object Shape31: TShape
        Left = 2
        Top = 29
        Width = 80
        Height = 24
        Pen.Color = 12566402
      end
      object Shape32: TShape
        Left = 2
        Top = 56
        Width = 80
        Height = 24
        Pen.Color = 12566402
      end
      object Shape33: TShape
        Left = 2
        Top = 286
        Width = 80
        Height = 45
        Pen.Color = 12566402
      end
      object Shape1: TShape
        Left = 2
        Top = 333
        Width = 80
        Height = 24
        Pen.Color = 12566402
      end
      object Shape2: TShape
        Left = 2
        Top = 123
        Width = 80
        Height = 24
        Pen.Color = 12566402
      end
      object cxLabel32: TcxLabel
        Left = 7
        Top = 164
        Caption = #51204#13#10#54868#13#10#48264#13#10#54840
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = clRed
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 16
        AnchorY = 190
      end
      object meoCallBellUpsoMemo: TcxMemo
        Left = 0
        Top = 383
        Align = alBottom
        ParentFont = False
        Properties.ImeMode = imSHanguel
        Properties.MaxLength = 300
        Properties.ScrollBars = ssVertical
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548#52404
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 18
        OnKeyUp = meoCallBellUpsoMemoKeyUp
        Height = 108
        Width = 367
      end
      object btnSave: TcxButton
        Left = 264
        Top = 1
        Width = 102
        Height = 53
        Cursor = crHandPoint
        Caption = #51200'   '#51109
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 20
        OnClick = btnSaveClick
      end
      object cxLabel20: TcxLabel
        Left = 6
        Top = 6
        Caption = #49548'       '#49549
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 41
        AnchorY = 14
      end
      object cxLabel21: TcxLabel
        Left = 228
        Top = 128
        Caption = #49345'       '#53468
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 263
        AnchorY = 136
      end
      object cxLabel22: TcxLabel
        Left = 9
        Top = 60
        Caption = #50689#50629#49324#50896#47749
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 41
        AnchorY = 68
      end
      object cboBranch: TcxComboBox
        Left = 84
        Top = 1
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.ImeMode = imSAlpha
        Properties.OnChange = cboBranchPropertiesChange
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
        OnKeyDown = cboBranchKeyDown
        OnKeyPress = cboBranchKeyPress
        Height = 26
        Width = 177
      end
      object cboStatus: TcxComboBox
        Left = 301
        Top = 122
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.ImeMode = imSAlpha
        Properties.Items.Strings = (
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
        TabOrder = 5
        Text = #46321#47197
        OnKeyDown = cboStatusKeyDown
        OnKeyPress = cboBranchKeyPress
        Height = 26
        Width = 65
      end
      object cxLabel23: TcxLabel
        Left = 12
        Top = 365
        Caption = #47700'     '#47784
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 41
        AnchorY = 373
      end
      object cxLabel24: TcxLabel
        Left = 5
        Top = 101
        Caption = #50629'  '#49548'  '#47749
        ParentColor = False
        Style.TextColor = clRed
        Style.TextStyle = [fsBold]
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 41
        AnchorY = 109
      end
      object edtUpsoName: TcxTextEdit
        Left = 84
        Top = 96
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.MaxLength = 40
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        OnKeyDown = edtUpsoNameKeyDown
        OnKeyUp = edtUpsoNameKeyUp
        Height = 26
        Width = 282
      end
      object rb_Declining: TcxRadioButton
        Left = 158
        Top = 236
        Width = 71
        Height = 16
        Caption = #47588#52636#48708#50984
        TabOrder = 10
        OnClick = rb_DecliningClick
        OnKeyDown = rb_DecliningKeyDown
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        Transparent = True
      end
      object rb_Straight: TcxRadioButton
        Left = 83
        Top = 236
        Width = 71
        Height = 16
        Caption = #51068#51221#44552#50529
        Checked = True
        TabOrder = 9
        TabStop = True
        OnClick = rb_StraightClick
        OnKeyDown = rb_StraightKeyDown
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        Transparent = True
      end
      object cxLabel25: TcxLabel
        Left = 9
        Top = 238
        Caption = #49688#49688#47308#49444#51221
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 41
        AnchorY = 246
      end
      object cxLabel26: TcxLabel
        Left = 347
        Top = 236
        Caption = #50896
        Transparent = True
      end
      object edtCalValue: TcxCurrencyEdit
        Left = 294
        Top = 231
        AutoSize = False
        EditValue = 5000.000000000000000000
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0'
        Properties.Nullstring = '0'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 11
        OnExit = edtCalValueExit
        OnKeyDown = edtCalValueKeyDown
        OnKeyUp = edtCalValueKeyUp
        Height = 26
        Width = 53
      end
      object edtBankNameCust: TcxTextEdit
        Left = 267
        Top = 333
        OnFocusChanged = edtBankNameCustFocusChanged
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.OnChange = edtBankNameCustPropertiesChange
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 16
        Visible = False
        OnEnter = edtBankNameCustEnter
        OnExit = edtBankNameCustExit
        Height = 26
        Width = 90
      end
      object cxLabel27: TcxLabel
        Left = 6
        Top = 263
        Caption = #52636' '#44552' '#44228' '#51340
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 41
        AnchorY = 271
      end
      object edtBankNumberCust: TcxTextEdit
        Left = 193
        Top = 258
        OnFocusChanged = edtBankNumberCustFocusChanged
        AutoSize = False
        Properties.ImeMode = imSAlpha
        Properties.MaxLength = 20
        Properties.OnChange = edtBankNumberCustPropertiesChange
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 13
        OnEnter = edtBankNumberCustEnter
        OnExit = edtBankNumberCustExit
        OnKeyDown = edtBankNumberCustKeyDown
        OnKeyPress = cboBranchKeyPress
        Height = 26
        Width = 93
      end
      object edtBankOwnerCust: TcxTextEdit
        Left = 286
        Top = 258
        OnFocusChanged = edtBankOwnerCustFocusChanged
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.MaxLength = 10
        Properties.OnChange = edtBankOwnerCustPropertiesChange
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 14
        OnEnter = edtBankOwnerCustEnter
        OnExit = edtBankOwnerCustExit
        OnKeyDown = edtBankOwnerCustKeyDown
        Height = 26
        Width = 81
      end
      object lbBankNameCust: TcxLabel
        Left = 272
        Top = 337
        Cursor = crIBeam
        Caption = #51008#54665#47749
        Style.TextColor = 10329501
        Transparent = True
        Visible = False
        OnClick = lbBankNameCustClick
      end
      object lbBankNumberCust: TcxLabel
        Left = 196
        Top = 262
        Cursor = crIBeam
        Caption = #51008#54665#44228#51340#48264#54840
        Style.TextColor = 10329501
        Transparent = True
        OnClick = lbBankNumberCustClick
      end
      object lbBankOwnerCust: TcxLabel
        Left = 290
        Top = 262
        Cursor = crIBeam
        Caption = #50696#44552#51452
        Style.TextColor = 10329501
        Transparent = True
        OnClick = lbBankOwnerCustClick
      end
      object cxLabel31: TcxLabel
        Left = 15
        Top = 33
        Caption = #45824#54364#48264#54840
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 41
        AnchorY = 41
      end
      object cboKeynumber: TcxComboBox
        Left = 84
        Top = 28
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.ImeMode = imSAlpha
        Properties.OnChange = cboKeynumberPropertiesChange
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
        OnKeyDown = cboKeynumberKeyDown
        OnKeyPress = cboBranchKeyPress
        Height = 26
        Width = 177
      end
      object cboUpsoWK: TcxComboBox
        Left = 84
        Top = 55
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.ImeMode = imSAlpha
        Properties.OnChange = cboUpsoWKPropertiesChange
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
        OnKeyDown = cboUpsoWKKeyDown
        OnKeyPress = cboBranchKeyPress
        Height = 26
        Width = 177
      end
      object cxGrid6: TcxGrid
        Left = 32
        Top = 149
        Width = 306
        Height = 80
        TabOrder = 7
        LookAndFeel.NativeStyle = False
        object cxUpsoTel: TcxGridBandedTableView
          Navigator.Buttons.CustomButtons = <>
          OnEditKeyDown = cxUpsoTelEditKeyDown
          OnEditKeyPress = cxUpsoTelEditKeyPress
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.ColumnSorting = False
          OptionsCustomize.BandMoving = False
          OptionsCustomize.BandSizing = False
          OptionsView.DataRowHeight = 22
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          OptionsView.Indicator = True
          OptionsView.BandHeaderHeight = 23
          Bands = <
            item
              Caption = #51204#54868#48264#54840
              Width = 100
            end>
          object cxUpsoTelColumn1: TcxGridBandedColumn
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.MaxLength = 14
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxUpsoTelColumn2: TcxGridBandedColumn
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #49688#49888
              #48120#49688#49888)
            Width = 80
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxUpsoTelColumn3: TcxGridBandedColumn
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxUpsoTelColumn4: TcxGridBandedColumn
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxUpsoTelColumn5: TcxGridBandedColumn
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxUpsoTelColumn6: TcxGridBandedColumn
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxUpsoTel
        end
      end
      object cxLabel33: TcxLabel
        Left = 12
        Top = 301
        Caption = #51452'    '#49548
        ParentColor = False
        Style.TextColor = clRed
        Style.TextStyle = [fsBold]
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 41
        AnchorY = 309
      end
      object meoCallBellArea: TcxTextEdit
        Left = 84
        Top = 285
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.MaxLength = 50
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 15
        OnKeyDown = meoCallBellAreaKeyDown
        OnKeyUp = meoCallBellAreaKeyUp
        Height = 26
        Width = 202
      end
      object btnAddrSearch: TcxButton
        Left = 287
        Top = 286
        Width = 79
        Height = 24
        Cursor = crHandPoint
        Caption = #44160#49353
        LookAndFeel.SkinName = 'Sharp'
        ParentShowHint = False
        ShowHint = False
        TabOrder = 17
        OnClick = btnAddrSearchClick
      end
      object lbUpsoAreaName: TcxLabel
        Left = 84
        Top = 310
        AutoSize = False
        Caption = #49436#50872
        Style.BorderStyle = ebsSingle
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Height = 22
        Width = 131
        AnchorY = 321
      end
      object RbButton23: TcxButton
        Left = 342
        Top = 149
        Width = 23
        Height = 39
        Cursor = crHandPoint
        Colors.Default = 16635384
        Colors.Normal = 16773362
        Colors.Hot = 16360076
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E0000000000000000000000000000000000000000
          000000000000032C0A4809671D9810A130E912AE35F412AE35F410A130E90967
          1D98032C0A480000000000000000000000000000000000000000000000000004
          010609731CBA19C140FF1FCE4CFF24DC58FF27DD5CFF27DD5CFF24DC58FF1FCE
          4CFF19C140FF09731CBA00040106000000000000000000000000000301050C94
          25EA1ED04EFF22D555FF21D355FF03B82CFF00A712FF00A712FF03B82CFF21D3
          55FF22D555FF1ED04EFF0C9425EA000301050000000000000000086C15BA1ECE
          4DFF21D354FF1FCC4DFF0FCC45FF00AD13FFFFFFFFFFFFFFFFFF00AD13FF0FCC
          45FF1FCC4DFF21D354FF1ECE4DFF086C15BA000000000325054617BA3FFF21DA
          5AFF1ECC51FF20D053FF0DC742FF00BE25FFFFFFFFFFFFFFFFFF00BE25FF0DC7
          42FF20D053FF1ECC51FF21DA5AFF17BA3FFF0325054605560E9A17D151FF20D4
          5FFF0BCC4AFF04CA43FF00C133FF00BC22FFFFFFFFFFFFFFFFFF00BD27FF00C2
          3BFF10CA4BFF0ECC4CFF20D45FFF17D151FF05560E9A1A8A28E933E67AFF00B6
          2DFF00AD13FF00AD13FF00AD13FF00AD13FFFFFFFFFFFFFFFFFF00AD13FF00BD
          27FF00BD23FF00AD13FF00B62DFF33E67AFF1A8B2AE9289B3AF781FCC3FF00AF
          21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF00AF21FF81FCC4FF289839F71A8C2EF785FDCCFF2AC2
          62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF2AC262FF85FDCCFF1A8C2DF71C7C26E97BFAC3FF3CD0
          7DFF71C780FF1EBF59FF21C05BFF0ABA4DFFFFFFFFFFFFFFFFFF10BC51FF22C0
          5CFF1EBF59FF71C780FF3CD07DFF7BFAC3FF1C7C26E90245019A8AE5B9FF65EA
          B0FF50DF97FF56DF9CFF41DB8DFF22C05CFFFFFFFFFFFFFFFFFF22C05CFF49DC
          93FF56DF9CFF50DF97FF65EAB0FF8AE5B9FF0245019A001A00464EB068FFAFFF
          EAFF5EE0A1FF56E19FFF45DE97FF66D589FFFFFFFFFFFFFFFFFF23C05BFF50E0
          9EFF56E19FFF5EE0A1FFAFFFEAFF4EB068FF001A004600000000004300BA7BDC
          A8FFB6FFEFFF76E5B5FF51DFA3FF66D589FFFFFFFFFFFFFFFFFF24BF59FF56E2
          A8FF76E5B5FFB6FFEFFF7BDCA8FF004300BA000000000000000000020005005D
          00EA6DD6A3FFB7FFF5FFAAF7E3FF70E0B0FF22C05CFF22C05CFF74E2B3FFABF7
          E4FFB7FFF5FF6DD6A3FF005D00EA000200050000000000000000000000000002
          0006004000BA38A75EFF7FE1B8FFA9FFECFFB9FFFBFFB9FFFBFFA9FFECFF7FE1
          B8FF38A75EFF004000BA00020006000000000000000000000000000000000000
          00000000000000160048003E00980E661CE91D7B2CF41D7B2CF40E661CE9003E
          00980016004800000000000000000000000000000000}
        TabOrder = 6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = RbButton23Click
      end
      object RbButton24: TcxButton
        Left = 342
        Top = 190
        Width = 23
        Height = 38
        Cursor = crHandPoint
        Colors.Default = 16635384
        Colors.Normal = 16773362
        Colors.Hot = 16360076
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E0000000000000000000000000000000000000000
          0000000000000000294A0200649C05039FE90803AFF40803AFF405039FE90200
          649C0000294A0000000000000000000000000000000000000000000000000000
          0609020074BA0F0BD5FF130FF4FF1611FFFF1611FFFF1611FFFF1611FFFF130F
          F4FF0F0BD5FF020074BA00000609000000000000000000000000000005080704
          9EE51512F2FF1816FEFF1615F4FF1614EFFF1514EFFF1514EFFF1614EFFF1615
          F4FF1816FEFF1512F2FF07049EE5000005080000000000000000060180B81719
          F2FF1A1DF9FF181BF0FF181BF1FF181BF1FF181BF1FF181BF1FF181BF1FF181B
          F1FF181BF0FF1A1DF9FF1719F2FF060180B800000000030034481417DFFF1C26
          FBFF1A22F0FF1B22F1FF1B22F1FF1B22F1FF1B22F1FF1B22F1FF1B22F1FF1B22
          F1FF1B22F1FF1A22F0FF1C26FBFF1417DFFF0300344806027B9D1E2AF5FF1827
          F5FF0512F0FF0412F0FF0412F0FF0412F0FF0412F0FF0412F0FF0412F0FF0412
          F0FF0412F0FF0512F0FF1827F5FF1E2AF5FF08047B9D1C1AC5E91328FBFF2125
          D0FF7573D9FF7171DAFF6F6FDAFF6F6FDAFF6F6FDAFF6F6FDAFF6F6FDAFF6F6F
          DAFF7171DAFF7573D9FF2225D0FF1930FCFF1110C1E94F4FDFF71937F7FF3E3F
          E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF4848E1FF0F2FF9FF1011D0F74C4AE4F75473F9FF5C5C
          EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF4041ECFF092AF8FF1718CDF74642D7E95A77F9FF6E71
          F7FFD8D6FDFFD4D6FBFFC4C3FBFFB3B4FAFFB3B5FBFFB4B5FBFFB4B5FBFFB4B5
          FBFFB6B7FBFFBEBCFCFF4347F7FF4460F1FF4642CAE92922909D7084FAFF5B7D
          F7FF516EF6FF526EF6FF536EF6FF4E6AF5FF3E5CF4FF3756F4FF3755F4FF3757
          F4FF4160F4FF516CF7FF6283FCFF7287ECFF2721879D110E42485E5DF4FF80A1
          FAFF5D7BF7FF6480F7FF6682F7FF6682F7FF6985F7FF6B87F7FF6B87F7FF6B87
          F7FF6884F7FF5E7CF7FF81A2FFFF5456D5FF110E4248000000002A21ABB87D86
          F8FF87A6FAFF617FF7FF6783F7FF6B85F7FF6A86F7FF6985F7FF6985F7FF6683
          F6FF617FF6FF89A7FFFF707ADEFF261EA2B80000000000000000020207083428
          D8E58087F6FF9DBCFBFF7F9FFBFF6D8BF8FF6D89F8FF6D89F8FF6D8BFAFF809F
          FCFFA0BEFDFF7984E3FF2D23C1E5020208080000000000000000000000000202
          09092A22AFBA6160F1FF94A3F4FFA2B9F9FFA2BBFAFFA2BCFAFFA2B8F7FF92A2
          EFFF5C5BDFFF271FA6BA02020909000000000000000000000000000000000000
          000000000000120F474A231C929C4844D9E94F4DE1F44E4DE0F44541D5E9211A
          8E9C110F464A00000000000000000000000000000000}
        TabOrder = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = RbButton24Click
      end
      object edtUpsoWKID: TcxTextEdit
        Left = 112
        Top = 80
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 35
        Visible = False
        Height = 26
        Width = 140
      end
      object cboBankName: TcxComboBox
        Left = 84
        Top = 258
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.ImeMode = imSAlpha
        Properties.OnChange = cboBankNamePropertiesChange
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
        TabOrder = 12
        OnKeyDown = cboBankNameKeyDown
        OnKeyPress = cboBranchKeyPress
        Height = 26
        Width = 110
      end
      object cboBankCode: TcxComboBox
        Left = 267
        Top = 358
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.ImeMode = imSAlpha
        Style.BorderStyle = ebsOffice11
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 36
        Visible = False
        Height = 26
        Width = 90
      end
      object cxLabel1: TcxLabel
        Left = 12
        Top = 338
        Caption = #51340'    '#54364
        ParentColor = False
        Style.TextColor = clRed
        Style.TextStyle = [fsBold]
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 41
        AnchorY = 346
      end
      object cxLabel2: TcxLabel
        Left = 6
        Top = 128
        Caption = #45824#54364#54648#46300#54256
        ParentColor = False
        Style.TextColor = clRed
        Style.TextStyle = [fsBold]
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 41
        AnchorY = 136
      end
      object edtUpsoHP: TcxTextEdit
        Left = 84
        Top = 122
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.MaxLength = 13
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        OnKeyDown = edtUpsoHPKeyDown
        OnKeyPress = cboBranchKeyPress
        Height = 26
        Width = 140
      end
      object edtUpsoAreaDetail: TcxLabel
        Left = 215
        Top = 310
        AutoSize = False
        Caption = #49436#50872
        ParentColor = False
        Style.BorderStyle = ebsSingle
        Style.Color = 16772863
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Height = 22
        Width = 152
        AnchorY = 321
      end
      object edtXval: TcxLabel
        Left = 84
        Top = 332
        AutoSize = False
        Caption = #49436#50872
        ParentColor = False
        Style.BorderStyle = ebsSingle
        Style.Color = 15000804
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Height = 25
        Width = 83
        AnchorY = 345
      end
      object edtYval: TcxLabel
        Left = 166
        Top = 332
        AutoSize = False
        Caption = #49436#50872
        ParentColor = False
        Style.BorderStyle = ebsSingle
        Style.Color = 15000804
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Height = 25
        Width = 83
        AnchorY = 345
      end
      object cxLabel43: TcxLabel
        Left = 238
        Top = 235
        Caption = '1'#53084#50756#47308#49884
        ParentColor = False
        Style.TextColor = clBlue
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 267
        AnchorY = 243
      end
      object btnCUT011: TcxButton
        Left = 264
        Top = 56
        Width = 102
        Height = 24
        Cursor = crHandPoint
        Caption = #44256#44061#51221#48372#49688#51221
        LookAndFeel.SkinName = 'Sharp'
        ParentShowHint = False
        ShowHint = False
        TabOrder = 43
        OnClick = btnCUT011Click
      end
    end
    object pnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 371
      Height = 25
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '   '#53084#48296' '#50629#49548' '#46321#47197
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
        371
        25)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 371
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = False
        ExplicitWidth = 431
      end
      object BtnClose: TcxButton
        Left = 335
        Top = 2
        Width = 33
        Height = 22
        Cursor = crHandPoint
        Hint = #45803#44592
        Anchors = [akTop, akRight]
        Colors.Default = 16635384
        Colors.Normal = 16773362
        Colors.Hot = 16360076
        Colors.Pressed = 16644080
        Colors.Disabled = 4227327
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
        OnClick = BtnCloseClick
      end
      object clbCuSeq: TcxLabel
        Left = 111
        Top = 5
        Caption = #44256#44061#49692#48264
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Visible = False
      end
    end
  end
end

object Frm_APP1: TFrm_APP1
  Left = 2663
  Top = 123
  BorderStyle = bsNone
  Caption = 'Frm_APP1'
  ClientHeight = 605
  ClientWidth = 969
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
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
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 969
    Height = 605
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet3
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 599
    ClientRectLeft = 2
    ClientRectRight = 963
    ClientRectTop = 27
    object cxTabSheet1: TcxTabSheet
      Tag = 813
      Caption = #50545' '#47560#51068#47532#51648' '#54788#54889
      ImageIndex = 2
      ExplicitWidth = 1116
      ExplicitHeight = 709
      object PnlMainA1: TPanel
        Left = 0
        Top = 0
        Width = 961
        Height = 572
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Shape7: TShape
          Left = 0
          Top = 171
          Width = 961
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = -6
          ExplicitTop = 23
          ExplicitWidth = 305
        end
        object cxGroupBox3: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Style.BorderStyle = ebsFlat
          TabOrder = 0
          Height = 171
          Width = 961
          object Shape6: TShape
            Left = 6
            Top = 7
            Width = 198
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape8: TShape
            Left = 356
            Top = 7
            Width = 286
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape9: TShape
            Left = 643
            Top = 8
            Width = 143
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Label6: TLabel
            Left = 518
            Top = 14
            Width = 12
            Height = 12
            Caption = #8764
            Transparent = True
          end
          object Shape12: TShape
            Left = 6
            Top = 92
            Width = 259
            Height = 77
            Brush.Color = 15856113
            Pen.Color = 12566402
          end
          object Shape13: TShape
            Left = 271
            Top = 92
            Width = 675
            Height = 77
            Pen.Color = 12566402
          end
          object cxLabel75: TcxLabel
            Left = 18
            Top = 11
            Caption = #49548'      '#49549
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 44
            AnchorY = 19
          end
          object cxLabel76: TcxLabel
            Left = 368
            Top = 12
            Caption = #44160#49353#51312#44148
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 394
            AnchorY = 20
          end
          object btnSearchA1: TcxButton
            Left = 800
            Top = 7
            Width = 72
            Height = 82
            Cursor = crHandPoint
            Caption = #51312#54924
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
          end
          object btnExcelA1: TcxButton
            Left = 874
            Top = 7
            Width = 72
            Height = 82
            Cursor = crHandPoint
            Caption = #50641#49472#45796#50868
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 3
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnExcelA1Click
          end
          object cbGubun1: TcxComboBox
            Left = 718
            Top = 7
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #51204#52404
              #44060#51064
              #50629#49548
              #48277#51064)
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            Text = #51204#52404
            Height = 26
            Width = 76
          end
          object lblSosokNameA1: TcxLabel
            Left = 81
            Top = 6
            AutoSize = False
            Caption = #49548#49549
            ParentColor = False
            Style.BorderStyle = ebsSingle
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 13719147
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 272
            AnchorX = 217
            AnchorY = 19
          end
          object cxLabel77: TcxLabel
            Left = 655
            Top = 12
            Caption = #44256#44061#44396#48516
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 681
            AnchorY = 20
          end
          object btnDateA3: TcxButton
            Left = 618
            Top = 7
            Width = 25
            Height = 24
            Cursor = crHandPoint
            DropDownMenu = pm_Date
            Kind = cxbkDropDown
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
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
            PopupMenu = pm_Date
            TabOrder = 7
          end
          object cxDtEndA1: TcxDateEdit
            Left = 532
            Top = 6
            AutoSize = False
            EditValue = 39777d
            Properties.Alignment.Vert = taBottomJustify
            Properties.InputKind = ikStandard
            Properties.ShowTime = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 8
            Height = 26
            Width = 84
          end
          object cxDtStartA1: TcxDateEdit
            Left = 432
            Top = 6
            AutoSize = False
            EditValue = 39777d
            Properties.Alignment.Vert = taBottomJustify
            Properties.InputKind = ikStandard
            Properties.SaveTime = False
            Properties.ShowTime = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 9
            Height = 26
            Width = 84
          end
          object cxBrNo1: TcxTextEdit
            Left = 899
            Top = 3
            Style.Color = 15456255
            TabOrder = 10
            Text = #51648#49324#53076#46300
            Visible = False
            Width = 54
          end
          object cxHdNo1: TcxTextEdit
            Left = 843
            Top = 3
            Style.Color = 15456255
            TabOrder = 11
            Text = #48376#49324#53076#46300
            Visible = False
            Width = 54
          end
          object cxGroupBox4: TcxGroupBox
            Left = 6
            Top = 34
            Caption = #44160#49353
            ParentBackground = False
            ParentColor = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.Color = clBtnFace
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            TabOrder = 12
            Height = 55
            Width = 788
            object Shape2: TShape
              Left = 4
              Top = 18
              Width = 75
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object Shape11: TShape
              Left = 118
              Top = 19
              Width = 160
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object Shape10: TShape
              Left = 283
              Top = 19
              Width = 166
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object Shape18: TShape
              Left = 450
              Top = 19
              Width = 143
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object Shape19: TShape
              Left = 594
              Top = 19
              Width = 188
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object cxLabel2: TcxLabel
              Left = 126
              Top = 23
              Caption = #51204#54868#48264#54840
              ParentColor = False
              ParentFont = False
              Style.Color = 16575968
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 152
              AnchorY = 31
            end
            object cxLabel24: TcxLabel
              Left = 12
              Top = 23
              Caption = #44256#44061#47749
              ParentColor = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 32
              AnchorY = 31
            end
            object edCustName01: TcxTextEdit
              Left = 56
              Top = 17
              AutoSize = False
              Properties.ImeMode = imSHanguel
              Style.BorderStyle = ebsOffice11
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 2
              Height = 26
              Width = 62
            end
            object edCustTel01: TcxTextEdit
              Left = 182
              Top = 18
              AutoSize = False
              Properties.ImeMode = imSAlpha
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 3
              Height = 26
              Width = 101
            end
            object cxLabel255: TcxLabel
              Left = 292
              Top = 23
              Caption = #52636#44552#50529
              ParentColor = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 312
              AnchorY = 31
            end
            object edCuMilet01: TcxCurrencyEdit
              Left = 340
              Top = 18
              AutoSize = False
              EditValue = 0
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taBottomJustify
              Properties.DisplayFormat = ',0'
              Properties.Nullstring = '0'
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 5
              Height = 26
              Width = 60
            end
            object cxLabel256: TcxLabel
              Left = 401
              Top = 23
              Caption = #50896' '#51060#49345
              ParentColor = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 423
              AnchorY = 31
            end
            object cxLabel1: TcxLabel
              Left = 458
              Top = 24
              Caption = #52628#52380#51064
              ParentColor = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 478
              AnchorY = 32
            end
            object cxCurrencyEdit1: TcxCurrencyEdit
              Left = 507
              Top = 18
              AutoSize = False
              EditValue = 0
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taBottomJustify
              Properties.DisplayFormat = ',0'
              Properties.Nullstring = '0'
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 8
              Height = 26
              Width = 31
            end
            object cxLabel5: TcxLabel
              Left = 543
              Top = 24
              Caption = #47749' '#51060#49345
              ParentColor = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 565
              AnchorY = 32
            end
            object cxLabel6: TcxLabel
              Left = 602
              Top = 23
              Caption = #52628#52380#51060#50857#50756#47308
              ParentColor = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 640
              AnchorY = 31
            end
            object cxCurrencyEdit2: TcxCurrencyEdit
              Left = 684
              Top = 18
              AutoSize = False
              EditValue = 0
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taBottomJustify
              Properties.DisplayFormat = ',0'
              Properties.Nullstring = '0'
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 11
              Height = 26
              Width = 47
            end
            object cxLabel7: TcxLabel
              Left = 733
              Top = 23
              Caption = #44148' '#51060#49345
              ParentColor = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 755
              AnchorY = 31
            end
          end
          object cxLabel3: TcxLabel
            Left = 13
            Top = 101
            Caption = #49444#51221'('#52572#49548#52636#44552#50529') : '
            ParentColor = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorY = 109
          end
          object cxLabel4: TcxLabel
            Left = 13
            Top = 122
            Caption = #49444#51221'('#52628#52380#44032#51077#51088' '#51201#47549#44552') : '
            ParentColor = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorY = 130
          end
          object cxLabel8: TcxLabel
            Left = 13
            Top = 144
            Caption = #49444#51221'('#52628#52380#44032#51077#51088#51060#50857#49884' '#51201#47549#44552') : '
            ParentColor = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorY = 152
          end
          object cxLabel9: TcxLabel
            Left = 120
            Top = 101
            Caption = '10,000'
            ParentColor = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorY = 109
          end
          object cxLabel10: TcxLabel
            Left = 160
            Top = 122
            Caption = '10,000'
            ParentColor = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorY = 130
          end
          object cxLabel11: TcxLabel
            Left = 196
            Top = 144
            Caption = '10,000'
            ParentColor = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorY = 152
          end
          object cxLabel12: TcxLabel
            Left = 279
            Top = 97
            Caption = #52636#44552' '#44032#45733#44552#50529' '#54633#44228' : '
            ParentColor = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorY = 105
          end
          object cxLabel13: TcxLabel
            Left = 397
            Top = 96
            Caption = '36,000'
            ParentColor = False
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -13
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorY = 105
          end
          object cxLabel14: TcxLabel
            Left = 461
            Top = 97
            Caption = #49892#51228'-'#52636#44552#50529' : '
            ParentColor = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorY = 105
          end
          object cxLabel15: TcxLabel
            Left = 540
            Top = 96
            Caption = '10,000'
            ParentColor = False
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -13
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorY = 105
          end
          object cxLabel16: TcxLabel
            Left = 603
            Top = 97
            Caption = #52628#52380#44032#51077#51088#54633#44228' : '
            ParentColor = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorY = 105
          end
          object cxLabel17: TcxLabel
            Left = 700
            Top = 96
            Caption = '10,000'
            ParentColor = False
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -13
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorY = 105
          end
          object cxLabel18: TcxLabel
            Left = 279
            Top = 119
            Caption = #52628#52380#44032#51077#51088' '#51201#47549#47560#51068' '#54633#44228' : '
            ParentColor = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorY = 127
          end
          object cxLabel19: TcxLabel
            Left = 432
            Top = 118
            Caption = '10,000'
            ParentColor = False
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -13
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorY = 127
          end
          object cxLabel20: TcxLabel
            Left = 690
            Top = 119
            Caption = #52628#52380#44032#51077#51088' '#51060#50857#51201#47549#47560#51068' : '
            ParentColor = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorY = 127
          end
          object cxLabel21: TcxLabel
            Left = 839
            Top = 118
            Caption = '10,000'
            ParentColor = False
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -13
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorY = 127
          end
          object cxLabel22: TcxLabel
            Left = 495
            Top = 119
            Caption = #52628#52380#44032#51077#51088' '#51060#50857#50756#47308' : '
            ParentColor = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorY = 127
          end
          object cxLabel23: TcxLabel
            Left = 620
            Top = 118
            Caption = '15,000'
            ParentColor = False
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -13
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorY = 127
          end
          object cxButton1: TcxButton
            Left = 570
            Top = 138
            Width = 179
            Height = 26
            Cursor = crHandPoint
            Caption = #51201#47549#44552' '#51077'/'#52636#44552' '#54788#54889
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 31
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
          end
          object cxButton2: TcxButton
            Left = 759
            Top = 138
            Width = 179
            Height = 26
            Cursor = crHandPoint
            Caption = #52628#52380#54620' '#49324#46988#46308' '#54788#54889
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 32
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
          end
        end
        object cxGrid1: TcxGrid
          Left = 0
          Top = 173
          Width = 961
          Height = 399
          Align = alClient
          TabOrder = 1
          LookAndFeel.NativeStyle = True
          ExplicitTop = 252
          ExplicitWidth = 1067
          ExplicitHeight = 412
          object CustView1: TcxGridDBTableView
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
            OptionsCustomize.ColumnGrouping = False
            OptionsData.Editing = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.CellMultiSelect = True
            OptionsSelection.InvertSelect = False
            OptionsView.NoDataToDisplayInfoText = ' '
            OptionsView.DataRowHeight = 22
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 22
            object CustView1Column1: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = 'No'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 50
            end
            object CustView1Column2: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #45824#54364#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 114
            end
            object CustView1Column3: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #44396#48516
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 54
            end
            object CustView1Column4: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #44256#44061#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 99
            end
            object CustView1Column5: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #51452#47928
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 40
            end
            object CustView1Column6: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #50756#47308
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 40
            end
            object CustView1Column7: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #52712#49548
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 40
            end
            object CustView1Column8: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #50756#47308#44552#50529
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 54
            end
            object CustView1Column9: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #52636#44552#44032#45733#50529'('#47560#51068')'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object CustView1Column10: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #52636#44552#50529'('#47560#51068')'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 76
            end
            object CustView1Column11: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #52628#52380#44032#51077#51088'('#49688')'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 88
            end
            object CustView1Column12: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #52628#52380#44032#51077#47560#51068
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 78
            end
            object CustView1Column13: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #52628#52380#51060#50857#50756#47308'('#44148')'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object CustView1Column14: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #52628#52380#51060#50857#47560#51068
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 78
            end
            object CustView1Column15: TcxGridDBColumn
              Tag = 1
              Caption = #52636#44552#51221#48372'('#44228#51340'/'#51008#54665'/'#50696#44552#51452')'
              DataBinding.FieldName = #52636#44552#51221#48372
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 160
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = CustView1
          end
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Tag = 812
      Caption = #50545#44256#44061' '#51648#50669#48324' '#54788#54889
      ImageIndex = 1
      ExplicitWidth = 1116
      ExplicitHeight = 709
      object PnlMainA3: TPanel
        Left = 0
        Top = 0
        Width = 961
        Height = 572
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 1116
        ExplicitHeight = 709
        object Shape1: TShape
          Left = 0
          Top = 66
          Width = 961
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
          TabOrder = 0
          ExplicitWidth = 1116
          Height = 66
          Width = 961
          object Shape3: TShape
            Left = 6
            Top = 7
            Width = 198
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape4: TShape
            Left = 6
            Top = 34
            Width = 286
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape5: TShape
            Left = 296
            Top = 34
            Width = 143
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Label4: TLabel
            Left = 168
            Top = 41
            Width = 12
            Height = 12
            Caption = #8764
            Transparent = True
          end
          object cxLabel72: TcxLabel
            Left = 18
            Top = 11
            Caption = #49548'      '#49549
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 44
            AnchorY = 19
          end
          object cxLabel73: TcxLabel
            Left = 18
            Top = 39
            Caption = #44160#49353#51312#44148
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 44
            AnchorY = 47
          end
          object btnSearchA2: TcxButton
            Left = 504
            Top = 6
            Width = 72
            Height = 53
            Cursor = crHandPoint
            Caption = #51312#54924
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
            OnClick = btnSearchA2Click
          end
          object btnExcelA2: TcxButton
            Left = 578
            Top = 6
            Width = 72
            Height = 53
            Cursor = crHandPoint
            Caption = #50641#49472#45796#50868
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 3
            OnClick = btnExcelA2Click
          end
          object cbKeynumberA2: TcxComboBox
            Left = 383
            Top = 33
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #51204#52404)
            Properties.OnChange = cbKeynumberA2PropertiesChange
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            Text = #51204#52404
            Height = 26
            Width = 119
          end
          object lblSosokNameA2: TcxLabel
            Left = 81
            Top = 6
            AutoSize = False
            Caption = #49548#49549
            ParentColor = False
            Style.BorderStyle = ebsSingle
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 13719147
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 421
            AnchorX = 292
            AnchorY = 19
          end
          object cxLabel74: TcxLabel
            Left = 314
            Top = 38
            Caption = #45824#54364#48264#54840
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 340
            AnchorY = 46
          end
          object btnDateA2: TcxButton
            Left = 268
            Top = 34
            Width = 25
            Height = 24
            Cursor = crHandPoint
            DropDownMenu = pm_Date
            Kind = cxbkDropDown
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
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
            TabOrder = 7
          end
          object cxDtEndA2: TcxDateEdit
            Left = 182
            Top = 33
            AutoSize = False
            EditValue = 39777d
            Properties.Alignment.Vert = taBottomJustify
            Properties.InputKind = ikStandard
            Properties.ShowTime = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 8
            Height = 26
            Width = 84
          end
          object cxDtStartA2: TcxDateEdit
            Left = 82
            Top = 33
            AutoSize = False
            EditValue = 39777d
            Properties.Alignment.Vert = taBottomJustify
            Properties.InputKind = ikStandard
            Properties.SaveTime = False
            Properties.ShowTime = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 9
            Height = 26
            Width = 84
          end
        end
        object cxGridA2: TcxGrid
          Left = 0
          Top = 68
          Width = 961
          Height = 504
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 1
          LookAndFeel.NativeStyle = True
          ExplicitWidth = 1116
          ExplicitHeight = 641
          object cxGridDBTableView1: TcxGridDBTableView
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
            Navigator.Visible = True
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0;-,0'
                Kind = skSum
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.ColumnSorting = False
            OptionsView.NoDataToDisplayInfoText = ' '
            OptionsView.DataRowHeight = 22
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 22
            object cxGridDBColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'No'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 30
            end
            object cxGridDBColumn2: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 125
            end
            object cxGridDBColumn3: TcxGridDBColumn
              DataBinding.FieldName = #51008#54665#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn4: TcxGridDBColumn
              DataBinding.FieldName = #52636#44552#44228#51340
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn5: TcxGridDBColumn
              DataBinding.FieldName = #50696#44552#51452
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 60
            end
            object cxGridDBColumn6: TcxGridDBColumn
              DataBinding.FieldName = #48376#49324#51221#49328#44552#50529
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn7: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#51221#49328#44552#50529
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn8: TcxGridDBColumn
              DataBinding.FieldName = #49444#51221#44552#50529
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn9: TcxGridDBColumn
              DataBinding.FieldName = #51092'  '#50529
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn10: TcxGridDBColumn
              Caption = #50696#50557
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Properties.NullStyle = nssUnchecked
              Properties.ReadOnly = False
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Width = 30
            end
            object cxGridDBColumn11: TcxGridDBColumn
              DataBinding.FieldName = #50696#50557#51068#51088
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DateOnError = deToday
              HeaderAlignmentHorz = taCenter
              Width = 70
            end
            object cxGridDBColumn12: TcxGridDBColumn
              DataBinding.FieldName = #50696#50557#49884#44036
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.TimeFormat = tfHourMin
              HeaderAlignmentHorz = taCenter
              Width = 70
            end
            object cxGridDBColumn13: TcxGridDBColumn
              DataBinding.FieldName = #52636#44552#50529
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.AutoSelect = False
              Properties.DisplayFormat = '#,##0'
              Properties.HideSelection = False
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxGridDBColumn14: TcxGridDBColumn
              DataBinding.FieldName = #51201' '#50836
              PropertiesClassName = 'TcxTextEditProperties'
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxGridDBColumn15: TcxGridDBColumn
              DataBinding.FieldName = #47700' '#47784
              PropertiesClassName = 'TcxTextEditProperties'
              HeaderAlignmentHorz = taCenter
              Width = 120
            end
            object cxGridDBColumn16: TcxGridDBColumn
              DataBinding.FieldName = #55092#45824#54256
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxGridDBColumn17: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Visible = False
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 123
            end
            object cxGridDBColumn18: TcxGridDBColumn
              DataBinding.FieldName = #51008#54665#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Visible = False
            end
          end
          object cxGongList: TcxGridBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0;-,0'
                Kind = skSum
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.ExpandMasterRowOnDblClick = False
            OptionsBehavior.FocusCellOnCycle = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.BandMoving = False
            OptionsCustomize.BandSizing = False
            OptionsSelection.InvertSelect = False
            OptionsView.ShowEditButtons = gsebAlways
            OptionsView.DataRowHeight = 22
            OptionsView.FooterAutoHeight = True
            OptionsView.FooterMultiSummaries = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.HeaderHeight = 22
            OptionsView.BandHeaderHeight = 22
            OptionsView.BandHeaders = False
            Bands = <
              item
                Caption = 'No'
              end
              item
                Caption = #44172#49884#47932#48264#54840
              end
              item
                Caption = #44396#48516
              end
              item
                Caption = #51228#47785
              end
              item
                Caption = #51333#47448
              end
              item
                Caption = #45236' '#50857
                Visible = False
              end
              item
                Caption = #44172#49884#51333#47308#51068
              end
              item
                Caption = #46321#47197#51088
              end
              item
                Caption = #46321#47197#51068
              end
              item
                Caption = #54392#49884#48156#49569
              end
              item
                Caption = #54392#49884#48156#49569#45236#50669
              end
              item
                Caption = #44172#49884#50668#48512
              end
              item
                Caption = 'Content'
                Visible = False
              end
              item
                Caption = #54392#49884#50668#48512
                Visible = False
              end
              item
                Caption = #48120#54045#50629#44277#51648
              end
              item
                Caption = #49688#51221
              end>
            object cxGongListColumn1: TcxGridBandedColumn
              Caption = 'No'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 25
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGongListColumn2: TcxGridBandedColumn
              Caption = #44172#49884#47932#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 67
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGongListColumn3: TcxGridBandedColumn
              Caption = #44396#48516
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 67
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGongListColumn4: TcxGridBandedColumn
              Caption = #51228#47785
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 279
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGongListColumn5: TcxGridBandedColumn
              Caption = #51333#47448
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 60
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGongListColumn10: TcxGridBandedColumn
              Caption = #45236' '#50857
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 300
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGongListColumn13: TcxGridBandedColumn
              Caption = #44172#49884#51333#47308#51068
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 70
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGongListColumn6: TcxGridBandedColumn
              Caption = #46321#47197#51088
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 67
              Position.BandIndex = 7
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGongListColumn7: TcxGridBandedColumn
              Caption = #46321#47197#51068
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 130
              Position.BandIndex = 8
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGongListColumn8: TcxGridBandedColumn
              Caption = #54392#49884#48156#49569
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Buttons = <
                item
                  Caption = #54392#49884#48156#49569
                  Default = True
                  Kind = bkText
                end>
              Properties.ViewStyle = vsButtonsAutoWidth
              HeaderAlignmentHorz = taCenter
              Options.ShowEditButtons = isebAlways
              Width = 70
              Position.BandIndex = 9
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGongListColumn9: TcxGridBandedColumn
              Caption = #54392#49884#48156#49569#45236#50669
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Buttons = <
                item
                  Default = True
                  Hint = #54392#49884#48156#49569#45236#50669#48372#44592
                  Kind = bkEllipsis
                end>
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              Options.ShowEditButtons = isebAlways
              Width = 79
              Position.BandIndex = 10
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGongListColumn19: TcxGridBandedColumn
              Caption = #44172#49884#50668#48512
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Buttons = <
                item
                  Default = True
                  Hint = #44172#49884#44544#49325#51228#54616#44592
                  Kind = bkEllipsis
                end>
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              Options.ShowEditButtons = isebAlways
              Width = 62
              Position.BandIndex = 11
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGongListColumn11: TcxGridBandedColumn
              Caption = 'Content'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Position.BandIndex = 12
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGongListColumn12: TcxGridBandedColumn
              Caption = #54392#49884#50668#48512
              Visible = False
              Position.BandIndex = 13
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGongListColumn14: TcxGridBandedColumn
              Caption = #48120#54045#50629#44277#51648
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 73
              Position.BandIndex = 14
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGongListColumn15: TcxGridBandedColumn
              Caption = #49688#51221
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Buttons = <
                item
                  Caption = #49688#51221
                  Default = True
                  Kind = bkText
                end>
              Properties.ViewStyle = vsButtonsAutoWidth
              HeaderAlignmentHorz = taCenter
              Options.ShowEditButtons = isebAlways
              Position.BandIndex = 15
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGongListColumn17: TcxGridBandedColumn
              Caption = 'ImageFile'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGongListColumn16: TcxGridBandedColumn
              Caption = 'Text'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGongListColumn18: TcxGridBandedColumn
              Caption = 'URL'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGongList
          end
        end
        object cxHdNo2: TcxTextEdit
          Left = 821
          Top = 3
          Style.Color = 15456255
          TabOrder = 2
          Text = #48376#49324#53076#46300
          Visible = False
          Width = 54
        end
        object cxBrNo2: TcxTextEdit
          Left = 875
          Top = 3
          Style.Color = 15456255
          TabOrder = 3
          Text = #51648#49324#53076#46300
          Visible = False
          Width = 54
        end
      end
    end
  end
  object pm_Date: TPopupMenu
    AutoHotkeys = maManual
    Left = 1052
    Top = 388
    object miOneWeek: TMenuItem
      Caption = '1'#51452
      OnClick = miOneWeekClick
    end
    object miTwoWeek: TMenuItem
      Caption = '2'#51452
      OnClick = miTwoWeekClick
    end
    object miOneMonth: TMenuItem
      Caption = '1'#44060#50900
      OnClick = miOneMonthClick
    end
    object miTwoMonth: TMenuItem
      Caption = '2'#44060#50900
      OnClick = miTwoMonthClick
    end
  end
end

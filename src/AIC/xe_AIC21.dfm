object frm_AIC21: Tfrm_AIC21
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 733
  ClientWidth = 1245
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  FormStyle = fsStayOnTop
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
    Height = 733
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 727
    ClientRectLeft = 2
    ClientRectRight = 1239
    ClientRectTop = 27
    object cxTabSheet1: TcxTabSheet
      Caption = 'AI-IB '#49444#51221
      ImageIndex = 0
      object pnl_Main: TPanel
        Left = 0
        Top = 0
        Width = 1237
        Height = 700
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Shape4: TShape
          Left = 0
          Top = 35
          Width = 1237
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = 2
          ExplicitTop = 27
        end
        object cxGroupBox1: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 35
          Width = 1237
          object lblSosokNameA1: TcxLabel
            Left = 95
            Top = 4
            AutoSize = False
            Caption = #49548#49549
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clBtnFace
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = clBlack
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 406
            AnchorX = 298
            AnchorY = 17
          end
          object btnSearchA1: TcxButton
            Left = 504
            Top = 5
            Width = 70
            Height = 25
            Cursor = crHandPoint
            Caption = #51312#54924
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 1
            OnClick = btnSearchA1Click
          end
          object cxLabel54: TcxLabel
            Left = 8
            Top = 5
            AutoSize = False
            Caption = #49548'   '#49549
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 24
            Width = 89
            AnchorX = 53
            AnchorY = 17
          end
          object btn_Update: TcxButton
            Tag = 1
            Left = 577
            Top = 5
            Width = 70
            Height = 25
            Cursor = crHandPoint
            Caption = #49688#51221
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 3
            OnClick = btn_UpdateClick
          end
        end
        object cxGroupBox4: TcxGroupBox
          Left = 0
          Top = 37
          Align = alClient
          TabOrder = 1
          Height = 663
          Width = 1237
          object Shape11: TShape
            Left = 348
            Top = 22
            Width = 597
            Height = 51
            Pen.Color = clSilver
          end
          object btn_AIScenarioDown: TcxButton
            Left = 652
            Top = 371
            Width = 293
            Height = 54
            Cursor = crHandPoint
            Caption = ' AI '#53084#49468#53552' '#49884#45208#47532#50724' '#45796#50868#47196#46300
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.ImageIndex = 2
            OptionsImage.Images = Frm_Main.cxSmallImages
            TabOrder = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btn_AIScenarioDownClick
          end
          object cxLabel1: TcxLabel
            Left = 21
            Top = 49
            AutoSize = False
            Caption = #49345#45812#50896' '#50672#44208' '#44032#45733' '#51333#47308#49884#44036
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 25
            Width = 200
            AnchorX = 121
            AnchorY = 62
          end
          object cxLabel10: TcxLabel
            Left = 21
            Top = 108
            AutoSize = False
            Caption = #51064#49324#47704#53944' '#49324#50857' '#51648#49324#47749
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 200
            AnchorX = 121
            AnchorY = 120
          end
          object cxLabel11: TcxLabel
            Left = 398
            Top = 108
            AutoSize = False
            Caption = #8251' '#49345#45812#50896' '#50672#44208#44032#45733' '#51060#50808#51032' '#49884#44036#50640#45716' '#51648#49324#47749' '#50504#45236#54632
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 547
            AnchorY = 120
          end
          object cxLabel12: TcxLabel
            Left = 21
            Top = 137
            AutoSize = False
            Caption = #50724#45908' '#51217#49688' '#44396#48516
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 200
            AnchorX = 121
            AnchorY = 149
          end
          object cxLabel13: TcxLabel
            Left = 21
            Top = 166
            AutoSize = False
            Caption = #46020#52265#51648' '#49324#50857' '#50668#48512
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 200
            AnchorX = 121
            AnchorY = 178
          end
          object cxLabel14: TcxLabel
            Left = 398
            Top = 166
            AutoSize = False
            Caption = #8251' '#48120#49324#50857#49884' '#48176#52264#50836#44552' '#50732#47532#45716' '#44592#45733' '#49324#50857' '#50504#54632
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 547
            AnchorY = 178
          end
          object cxLabel15: TcxLabel
            Left = 21
            Top = 195
            AutoSize = False
            Caption = #44592#48376#50836#44552
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 200
            AnchorX = 121
            AnchorY = 207
          end
          object cxLabel16: TcxLabel
            Left = 346
            Top = 195
            AutoSize = False
            Caption = #8251' '#46020#52265#51648' '#48120#49324#50857#49884' '#44592#48376#50836#44552' '#49444#51221
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 599
            AnchorY = 207
          end
          object cxLabel17: TcxLabel
            Left = 21
            Top = 224
            AutoSize = False
            Caption = #50836#44552#48320#44221' '#52628#44032#50836#44552
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 200
            AnchorX = 121
            AnchorY = 236
          end
          object cxLabel2: TcxLabel
            Left = 693
            Top = 30
            Caption = #8251' '#51060#50808#51032' '#49884#44036
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 38
          end
          object cxLabel20: TcxLabel
            Left = 21
            Top = 253
            AutoSize = False
            Caption = #44592#49324' '#50724#45908#52712#49548#49884' '#52712#49548#48268#44552' '#44284#44552#50976#47924
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 244
            AnchorX = 143
            AnchorY = 265
          end
          object cxLabel21: TcxLabel
            Left = 21
            Top = 282
            AutoSize = False
            Caption = #47560#51068#47532#51648' '#51217#49688' '#49324#50857#50668#48512
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 200
            AnchorX = 121
            AnchorY = 294
          end
          object cxLabel25: TcxLabel
            Left = 21
            Top = 311
            AutoSize = False
            Caption = #52852#46300' '#51217#49688' '#49324#50857#50668#48512
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 200
            AnchorX = 121
            AnchorY = 323
          end
          object cxLabel26: TcxLabel
            Left = 398
            Top = 311
            AutoSize = False
            Caption = #8251' '#49345#45812#50896#50640#49436' '#52852#46300' '#49324#50857#49884' AI'#50640#49436' '#52852#46300' '#49324#50857#50668#48512
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 547
            AnchorY = 323
          end
          object cxLabel27: TcxLabel
            Left = 398
            Top = 282
            AutoSize = False
            Caption = #8251' '#49345#45812#50896#50640#49436' '#47560#51068#47532#51648' '#49324#50857#49884' AI'#50640#49436' '#47560#51068#47532#51648' '#49324#50857#50668#48512
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 547
            AnchorY = 294
          end
          object cxLabel4: TcxLabel
            Left = 785
            Top = 30
            Caption = '- '#44592#49324#48176#52264' '#52712#49548#44032#45733
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 38
          end
          object cxLabel53: TcxLabel
            Left = 21
            Top = 22
            AutoSize = False
            Caption = #49345#45812#50896' '#50672#44208' '#44032#45733' '#49884#51089#49884#44036
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 25
            Width = 200
            AnchorX = 121
            AnchorY = 35
          end
          object cxLabel8: TcxLabel
            Left = 785
            Top = 49
            Caption = '- '#44256#44061' '#49345#45812#50896' '#50672#44208' '#50504#46120
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 57
          end
          object cxLabel9: TcxLabel
            Left = 21
            Top = 79
            AutoSize = False
            Caption = #51064#49324#47704#53944' '#51648#49324#47749' '#49324#50857' '#50668#48512
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 200
            AnchorX = 121
            AnchorY = 91
          end
          object edt_AddCash: TcxSpinEdit
            Left = 219
            Top = 223
            AutoSize = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.MinValue = True
            Properties.DisplayFormat = '#,##0;'
            Properties.Increment = 1000.000000000000000000
            Properties.ZeroLargeIncrement = True
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.SkinName = 'Sharp'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 20
            Value = 5000
            Height = 26
            Width = 129
          end
          object edt_BasicCash: TcxSpinEdit
            Left = 219
            Top = 194
            AutoSize = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.MinValue = True
            Properties.DisplayFormat = '#,##0;'
            Properties.Increment = 1000.000000000000000000
            Properties.ZeroLargeIncrement = True
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.SkinName = 'Sharp'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 21
            Value = 10000
            Height = 26
            Width = 129
          end
          object edt_HelloBrNm: TcxTextEdit
            Left = 219
            Top = 107
            AutoSize = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 22
            TextHint = #51064#49324#47704#53944' '#51648#49324#47749
            Height = 26
            Width = 181
          end
          object pnl_Radio1: TPanel
            Left = 220
            Top = 79
            Width = 180
            Height = 24
            BevelOuter = bvNone
            TabOrder = 23
            object Shape1: TShape
              Left = 0
              Top = 0
              Width = 180
              Height = 24
              Align = alClient
              Pen.Color = clSilver
              ExplicitLeft = -456
              ExplicitTop = -27
              ExplicitWidth = 597
              ExplicitHeight = 51
            end
            object rdo_1_0: TcxRadioButton
              Left = 3
              Top = 2
              Caption = ' '#49324#50857
              Color = clWhite
              ParentColor = False
              TabOrder = 0
              AutoSize = True
              LookAndFeel.SkinName = 'Sharp'
              ParentBackground = False
            end
            object rdo_1_1: TcxRadioButton
              Tag = 1
              Left = 63
              Top = 2
              Caption = ' '#48120#49324#50857
              Checked = True
              Color = clWhite
              ParentColor = False
              TabOrder = 1
              TabStop = True
              AutoSize = True
              LookAndFeel.SkinName = 'Sharp'
              ParentBackground = False
            end
          end
          object pnl_Radio2: TPanel
            Left = 220
            Top = 137
            Width = 180
            Height = 24
            BevelOuter = bvNone
            TabOrder = 24
            object Shape7: TShape
              Left = 0
              Top = 0
              Width = 180
              Height = 24
              Align = alClient
              Pen.Color = clSilver
              ExplicitLeft = -456
              ExplicitTop = -27
              ExplicitWidth = 597
              ExplicitHeight = 51
            end
            object rdo_2_0: TcxRadioButton
              Left = 3
              Top = 2
              Caption = ' '#51217#49688
              Checked = True
              Color = clWhite
              ParentColor = False
              TabOrder = 0
              TabStop = True
              AutoSize = True
              LookAndFeel.SkinName = 'Sharp'
              ParentBackground = False
            end
            object rdo_2_1: TcxRadioButton
              Tag = 1
              Left = 63
              Top = 2
              Caption = ' '#45824#44592
              Color = clWhite
              ParentColor = False
              TabOrder = 1
              TabStop = True
              AutoSize = True
              LookAndFeel.SkinName = 'Sharp'
              ParentBackground = False
            end
          end
          object pnl_Radio3: TPanel
            Left = 220
            Top = 166
            Width = 180
            Height = 24
            BevelOuter = bvNone
            TabOrder = 25
            object Shape10: TShape
              Left = 0
              Top = 0
              Width = 180
              Height = 24
              Align = alClient
              Pen.Color = clSilver
              ExplicitTop = -1
              ExplicitHeight = 19
            end
            object rdo_3_0: TcxRadioButton
              Left = 3
              Top = 2
              Caption = ' '#49324#50857
              Checked = True
              Color = clWhite
              ParentColor = False
              TabOrder = 0
              TabStop = True
              AutoSize = True
              LookAndFeel.SkinName = 'Sharp'
              ParentBackground = False
            end
            object rdo_3_1: TcxRadioButton
              Tag = 1
              Left = 63
              Top = 2
              Caption = ' '#48120#49324#50857
              Color = clWhite
              ParentColor = False
              TabOrder = 1
              TabStop = True
              AutoSize = True
              LookAndFeel.SkinName = 'Sharp'
              ParentBackground = False
            end
          end
          object pnl_Radio4: TPanel
            Left = 264
            Top = 253
            Width = 135
            Height = 24
            BevelOuter = bvNone
            TabOrder = 26
            object Shape12: TShape
              Left = 0
              Top = 0
              Width = 135
              Height = 24
              Align = alClient
              Pen.Color = clSilver
              ExplicitLeft = -1
            end
            object rdo_4_0: TcxRadioButton
              Left = 3
              Top = 4
              Width = 58
              Height = 17
              Caption = ' '#49324#50857
              Checked = True
              Color = clWhite
              ParentColor = False
              TabOrder = 0
              TabStop = True
              LookAndFeel.SkinName = 'Sharp'
              ParentBackground = False
            end
            object rdo_4_1: TcxRadioButton
              Tag = 1
              Left = 63
              Top = 4
              Width = 67
              Height = 17
              Caption = ' '#48120#49324#50857
              Color = clWhite
              ParentColor = False
              TabOrder = 1
              TabStop = True
              LookAndFeel.SkinName = 'Sharp'
              ParentBackground = False
            end
          end
          object pnl_Radio5: TPanel
            Left = 220
            Top = 282
            Width = 180
            Height = 24
            BevelOuter = bvNone
            TabOrder = 27
            object Shape13: TShape
              Left = 0
              Top = 0
              Width = 180
              Height = 24
              Align = alClient
              Pen.Color = clSilver
              ExplicitLeft = -456
              ExplicitTop = -27
              ExplicitWidth = 597
              ExplicitHeight = 51
            end
            object rdo_5_0: TcxRadioButton
              Left = 3
              Top = 2
              Caption = ' '#49324#50857
              Checked = True
              Color = clWhite
              ParentColor = False
              TabOrder = 0
              TabStop = True
              AutoSize = True
              LookAndFeel.SkinName = 'Sharp'
              ParentBackground = False
            end
            object rdo_5_1: TcxRadioButton
              Tag = 1
              Left = 63
              Top = 2
              Caption = ' '#48120#49324#50857
              Color = clWhite
              ParentColor = False
              TabOrder = 1
              TabStop = True
              AutoSize = True
              LookAndFeel.SkinName = 'Sharp'
              ParentBackground = False
            end
          end
          object pnl_Radio6: TPanel
            Left = 220
            Top = 311
            Width = 180
            Height = 24
            BevelOuter = bvNone
            TabOrder = 28
            object Shape14: TShape
              Left = 0
              Top = 0
              Width = 180
              Height = 24
              Align = alClient
              Pen.Color = clSilver
              ExplicitLeft = -456
              ExplicitTop = -27
              ExplicitWidth = 597
              ExplicitHeight = 51
            end
            object rdo_6_0: TcxRadioButton
              Left = 3
              Top = 2
              Caption = ' '#49324#50857
              Checked = True
              Color = clWhite
              ParentColor = False
              TabOrder = 0
              TabStop = True
              AutoSize = True
              LookAndFeel.SkinName = 'Sharp'
              ParentBackground = False
            end
            object rdo_6_1: TcxRadioButton
              Tag = 1
              Left = 63
              Top = 2
              Caption = ' '#48120#49324#50857
              Color = clWhite
              ParentColor = False
              TabOrder = 1
              TabStop = True
              AutoSize = True
              LookAndFeel.SkinName = 'Sharp'
              ParentBackground = False
            end
          end
          object tim_ETime: TTimePicker
            Left = 220
            Top = 49
            Width = 129
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = []
            MinuteIncrement = 10
            TabOrder = 29
            Time = 0.125000000000000000
            TimeFormat = '24hh:mm'
          end
          object tim_STime: TTimePicker
            Left = 220
            Top = 22
            Width = 129
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = []
            MinuteIncrement = 10
            TabOrder = 30
            Time = 0.750000000000000000
            TimeFormat = '24hh:mm'
          end
          object cxLabel19: TcxLabel
            Left = 468
            Top = 30
            Caption = '- '#48176#52264#54980' 3'#48516#51060#45236' '#44592#49324' '#48176#52264#52712#49548#44032#45733
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 38
          end
          object cxLabel28: TcxLabel
            Left = 468
            Top = 49
            Caption = '- '#44256#44061' '#49345#45812#50896' '#50672#44208' '#44032#45733
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 57
          end
          object cxLabel29: TcxLabel
            Left = 351
            Top = 30
            Caption = #8251' '#49345#45812#50672#44208#44032#45733#49884#44036
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 38
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'AI-IB '#49345#49464#45236#50669
      ImageIndex = 1
      object pnl_Main2: TPanel
        Left = 0
        Top = 0
        Width = 1237
        Height = 700
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Shape21: TShape
          Left = 0
          Top = 65
          Width = 1237
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitTop = 73
        end
        object cxGrid1: TcxGrid
          Left = 0
          Top = 67
          Width = 1237
          Height = 633
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 1
          LookAndFeel.NativeStyle = False
          object cxGridAI2_IBList1: TcxGridBandedTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.CustomizeDialog = False
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCellDblClick = cxGridAI2_IBList1CellDblClick
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridAI2_IBList1Column8
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridAI2_IBList1Column9
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridAI2_IBList1Column10
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridAI2_IBList1Column11
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridAI2_IBList1Column12
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridAI2_IBList1Column14
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridAI2_IBList1Column15
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridAI2_IBList1Column16
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridAI2_IBList1Column17
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridAI2_IBList1Column18
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridAI2_IBList1Column19
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridAI2_IBList1Column20
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridAI2_IBList1Column21
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridAI2_IBList1Column22
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridAI2_IBList1Column23
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridAI2_IBList1Column24
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridAI2_IBList1Column25
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridAI2_IBList1Column26
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridAI2_IBList1Column27
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridAI2_IBList1Column28
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnHorzSizing = False
            OptionsCustomize.BandMoving = False
            OptionsCustomize.ColumnVertSizing = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.NoDataToDisplayInfoText = '  '
            OptionsView.DataRowHeight = 22
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Header = False
            OptionsView.HeaderHeight = 20
            OptionsView.BandHeaderHeight = 23
            Bands = <
              item
                Caption = 'No'
                Width = 46
              end
              item
                Caption = #51648#49324#53076#46300
                Visible = False
                Width = 62
              end
              item
                Caption = #51648#49324#47749
                Width = 100
                OnHeaderClick = cxGridAI2_IBList1Bands2HeaderClick
              end
              item
                Caption = #45824#54364#48264#54840
                Width = 94
                OnHeaderClick = cxGridAI2_IBList1Bands3HeaderClick
              end
              item
                Caption = #51217#49688#51068#49884
                Width = 104
                OnHeaderClick = cxGridAI2_IBList1Bands4HeaderClick
              end
              item
                Caption = #51217#49688#48264#54840
                Width = 71
                OnHeaderClick = cxGridAI2_IBList1Bands5HeaderClick
              end
              item
                Caption = #44256#44061#50672#46973#52376
                Width = 94
                OnHeaderClick = cxGridAI2_IBList1Bands6HeaderClick
              end
              item
                Caption = #44256#44061#47749
                Width = 55
                OnHeaderClick = cxGridAI2_IBList1Bands7HeaderClick
              end
              item
                Caption = #45824#44592
                Width = 42
                OnHeaderClick = cxGridAI2_IBList1Bands8HeaderClick
              end
              item
                Caption = #49345#45812#50896#50672#44208
                Width = 42
                OnHeaderClick = cxGridAI2_IBList1Bands9HeaderClick
              end
              item
                Caption = #44592#49324
                Width = 42
                OnHeaderClick = cxGridAI2_IBList1Bands10HeaderClick
              end
              item
                Caption = #48176#52264#51473#44256#44061
                Width = 42
                OnHeaderClick = cxGridAI2_IBList1Bands11HeaderClick
              end
              item
                Caption = #51217#49688#51473#44256#44061
                Width = 42
                OnHeaderClick = cxGridAI2_IBList1Bands12HeaderClick
              end
              item
                Caption = #47928#51032
                Width = 42
                OnHeaderClick = cxGridAI2_IBList1Bands14HeaderClick
              end
              item
                Caption = #51217#49688
              end
              item
                Caption = #50629#49548
                Position.BandIndex = 14
                Position.ColIndex = 0
                Width = 42
                OnHeaderClick = cxGridAI2_IBList1Bands16HeaderClick
              end
              item
                Caption = #54788#44552
                Position.BandIndex = 14
                Position.ColIndex = 1
                Width = 42
                OnHeaderClick = cxGridAI2_IBList1Bands17HeaderClick
              end
              item
                Caption = #52852#46300
                Position.BandIndex = 14
                Position.ColIndex = 2
                Width = 42
                OnHeaderClick = cxGridAI2_IBList1Bands18HeaderClick
              end
              item
                Caption = #47560#51068
                Position.BandIndex = 14
                Position.ColIndex = 3
                Width = 42
                OnHeaderClick = cxGridAI2_IBList1Bands19HeaderClick
              end
              item
                Caption = #47560#44048#49345#53468
              end
              item
                Caption = #50756#47308
                Position.BandIndex = 19
                Position.ColIndex = 0
                Width = 42
                OnHeaderClick = cxGridAI2_IBList1Bands23HeaderClick
              end
              item
                Caption = #52712#49548
                Position.BandIndex = 19
                Position.ColIndex = 1
                Width = 42
                OnHeaderClick = cxGridAI2_IBList1Bands24HeaderClick
              end
              item
                Caption = #47928#51032
                Position.BandIndex = 19
                Position.ColIndex = 2
                Width = 42
                OnHeaderClick = cxGridAI2_IBList1Bands25HeaderClick
              end
              item
                Caption = #49345#53468#48320#44221
              end
              item
                Caption = #51217#49688#52712#49548
                Position.BandIndex = 23
                Position.ColIndex = 0
                Width = 54
                OnHeaderClick = cxGridAI2_IBList1Bands27HeaderClick
              end
              item
                Caption = #50836#44552#51064#49345
                Position.BandIndex = 23
                Position.ColIndex = 1
                Width = 54
                OnHeaderClick = cxGridAI2_IBList1Bands28HeaderClick
              end
              item
                Caption = #52628#44032#51217#49688
                Position.BandIndex = 23
                Position.ColIndex = 2
                Width = 54
                OnHeaderClick = cxGridAI2_IBList1Bands29HeaderClick
              end
              item
                Caption = #46021#52489#47928#51088
                Width = 41
                OnHeaderClick = cxGridAI2_IBList1Bands30HeaderClick
              end
              item
                Caption = #44592#49324#52712#49548
                Width = 41
                OnHeaderClick = cxGridAI2_IBList1Bands31HeaderClick
              end
              item
                Caption = 'LBS'#44148#49688
                Width = 33
                OnHeaderClick = cxGridAI2_IBList1Bands32HeaderClick
              end
              item
                Caption = #51221#49328#44552#50529
                Width = 54
                OnHeaderClick = cxGridAI2_IBList1Bands33HeaderClick
              end>
            object cxGridAI2_IBList1Column0: TcxGridBandedColumn
              Caption = 'No'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_IBList1Column1: TcxGridBandedColumn
              Caption = #51648#49324#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_IBList1Column2: TcxGridBandedColumn
              Caption = #51648#49324#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_IBList1Column3: TcxGridBandedColumn
              Caption = #45824#54364#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 94
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_IBList1Column4: TcxGridBandedColumn
              Caption = #51217#49688#51068#49884
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_IBList1Column5: TcxGridBandedColumn
              Caption = #51217#49688#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Styles.Content = Frm_Main.cxsInsure
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_IBList1Column6: TcxGridBandedColumn
              Caption = #44256#44061#50672#46973#52376
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 94
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_IBList1Column7: TcxGridBandedColumn
              Caption = #44256#44061#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 7
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_IBList1Column8: TcxGridBandedColumn
              Caption = #45824#44592
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 8
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_IBList1Column9: TcxGridBandedColumn
              Caption = #49345#45812#50896#50672#44208
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 9
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_IBList1Column10: TcxGridBandedColumn
              Caption = #44592#49324
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 10
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_IBList1Column11: TcxGridBandedColumn
              Caption = #48176#52264#51473#44256#44061
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 40
              Position.BandIndex = 11
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_IBList1Column12: TcxGridBandedColumn
              Caption = #51217#49688#51473#44256#44061
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 40
              Position.BandIndex = 12
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_IBList1Column14: TcxGridBandedColumn
              Caption = #47928#51032
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 13
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_IBList1Column15: TcxGridBandedColumn
              Caption = #50629#49548
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 15
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_IBList1Column16: TcxGridBandedColumn
              Caption = #54788#44552
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 16
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_IBList1Column17: TcxGridBandedColumn
              Caption = #52852#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 40
              Position.BandIndex = 17
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_IBList1Column28: TcxGridBandedColumn
              Caption = #47560#51068
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 18
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_IBList1Column18: TcxGridBandedColumn
              Caption = #50756#47308
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 40
              Position.BandIndex = 20
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_IBList1Column19: TcxGridBandedColumn
              Caption = #52712#49548
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 21
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_IBList1Column20: TcxGridBandedColumn
              Caption = #47928#51032
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 22
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_IBList1Column21: TcxGridBandedColumn
              Caption = #51217#49688#52712#49548
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 24
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_IBList1Column22: TcxGridBandedColumn
              Caption = #50836#44552#51064#49345
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 25
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_IBList1Column23: TcxGridBandedColumn
              Caption = #52628#44032#51217#49688
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 26
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_IBList1Column24: TcxGridBandedColumn
              Caption = #46021#52489#47928#51088
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 27
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_IBList1Column25: TcxGridBandedColumn
              Caption = #44592#49324#52712#49548
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 28
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_IBList1Column26: TcxGridBandedColumn
              Caption = 'LBS'#44148#49688
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 41
              Position.BandIndex = 29
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_IBList1Column27: TcxGridBandedColumn
              Caption = #51221#49328#44552#50529
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 30
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridAI2_IBList1
          end
        end
        object cxGroupBox2: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          ParentBackground = False
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 65
          Width = 1237
          object lblSosokNameA2: TcxLabel
            Left = 95
            Top = 4
            AutoSize = False
            Caption = #49548#49549
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clBtnFace
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = clBlack
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 675
            AnchorX = 433
            AnchorY = 17
          end
          object btnSearchA2: TcxButton
            Left = 776
            Top = 5
            Width = 70
            Height = 51
            Cursor = crHandPoint
            Caption = #51312#54924
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 1
            OnClick = btnSearchA2Click
          end
          object cb_KeyNumberA2: TcxComboBox
            Left = 95
            Top = 31
            AutoSize = False
            Properties.Alignment.Vert = taBottomJustify
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #45824#54364#48264#54840)
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
            Text = #45824#54364#48264#54840
            Height = 26
            Width = 112
          end
          object cxLabel22: TcxLabel
            Left = 10
            Top = 32
            AutoSize = False
            Caption = #45824#54364#48264#54840
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 16744448
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 87
            AnchorX = 54
            AnchorY = 44
          end
          object cxDtStartA1: TcxDateEdit
            Left = 281
            Top = 31
            AutoSize = False
            EditValue = 39777d
            Properties.Alignment.Vert = taBottomJustify
            Properties.SaveTime = False
            Properties.ShowTime = False
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 4
            Height = 26
            Width = 92
          end
          object cxDtEndA1: TcxDateEdit
            Left = 380
            Top = 31
            AutoSize = False
            EditValue = 39777d
            Properties.Alignment.Vert = taBottomJustify
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
            Height = 26
            Width = 94
          end
          object cxLabel75: TcxLabel
            Left = 371
            Top = 32
            AutoSize = False
            Caption = '~'
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 11
            AnchorX = 377
            AnchorY = 44
          end
          object cxLabel23: TcxLabel
            Left = 208
            Top = 32
            AutoSize = False
            Caption = #44160#49353#44592#44036
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 16744448
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 75
            AnchorX = 246
            AnchorY = 44
          end
          object edt_Slip: TcxTextEdit
            Left = 572
            Top = 31
            AutoSize = False
            Properties.ReadOnly = False
            Style.Color = clWindow
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 8
            Height = 26
            Width = 198
          end
          object cxLabel24: TcxLabel
            Left = 504
            Top = 32
            AutoSize = False
            Caption = #51217#49688#48264#54840
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 16744448
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 70
            AnchorX = 539
            AnchorY = 44
          end
          object btnDateA1: TcxButton
            Left = 474
            Top = 32
            Width = 26
            Height = 24
            Cursor = crHandPoint
            DropDownMenu = pop_dateA1
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
            TabOrder = 10
          end
          object btnExcelA2: TcxButton
            Left = 848
            Top = 5
            Width = 70
            Height = 51
            Cursor = crHandPoint
            Caption = #50641#49472#45796#50868
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 11
            OnClick = btnExcelA2Click
          end
          object cxLabel18: TcxLabel
            Left = 10
            Top = 5
            AutoSize = False
            Caption = #49548'   '#49549
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 24
            Width = 87
            AnchorX = 54
            AnchorY = 17
          end
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'AI-IB '#51068#48324#54788#54889
      ImageIndex = 2
      object pnl_Main3: TPanel
        Left = 0
        Top = 0
        Width = 1237
        Height = 700
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Shape22: TShape
          Left = 0
          Top = 65
          Width = 1237
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitTop = 73
        end
        object cxGroupBox3: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          ParentBackground = False
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 65
          Width = 1237
          object lblSosokNameA3: TcxLabel
            Left = 95
            Top = 4
            AutoSize = False
            Caption = #49548#49549
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clBtnFace
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = clBlack
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 406
            AnchorX = 298
            AnchorY = 17
          end
          object btnSearchA3: TcxButton
            Left = 508
            Top = 5
            Width = 70
            Height = 51
            Cursor = crHandPoint
            Caption = #51312#54924
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 1
            OnClick = btnSearchA3Click
          end
          object cb_KeyNumberA3: TcxComboBox
            Left = 95
            Top = 31
            AutoSize = False
            Properties.Alignment.Vert = taBottomJustify
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #45824#54364#48264#54840)
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
            Text = #45824#54364#48264#54840
            Height = 26
            Width = 112
          end
          object cxDtStartA2: TcxDateEdit
            Left = 281
            Top = 31
            AutoSize = False
            EditValue = 39777d
            Properties.Alignment.Vert = taBottomJustify
            Properties.SaveTime = False
            Properties.ShowTime = False
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
            Height = 26
            Width = 92
          end
          object cxDtEndA2: TcxDateEdit
            Left = 380
            Top = 31
            AutoSize = False
            EditValue = 39777d
            Properties.Alignment.Vert = taBottomJustify
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 4
            Height = 26
            Width = 94
          end
          object btnDateA2: TcxButton
            Left = 474
            Top = 32
            Width = 26
            Height = 24
            Cursor = crHandPoint
            DropDownMenu = pop_dateA1
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
            TabOrder = 5
          end
          object btnExcelA3: TcxButton
            Left = 580
            Top = 5
            Width = 70
            Height = 51
            Cursor = crHandPoint
            Caption = #50641#49472#45796#50868
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 6
            OnClick = btnExcelA3Click
          end
          object cxLabel3: TcxLabel
            Left = 10
            Top = 5
            AutoSize = False
            Caption = #49548'   '#49549
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 24
            Width = 87
            AnchorX = 54
            AnchorY = 17
          end
          object cxLabel5: TcxLabel
            Left = 10
            Top = 32
            AutoSize = False
            Caption = #45824#54364#48264#54840
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 16744448
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 87
            AnchorX = 54
            AnchorY = 44
          end
          object cxLabel7: TcxLabel
            Left = 208
            Top = 32
            AutoSize = False
            Caption = #44160#49353#44592#44036
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 16744448
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 75
            AnchorX = 246
            AnchorY = 44
          end
          object cxLabel6: TcxLabel
            Left = 371
            Top = 32
            AutoSize = False
            Caption = '~'
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 11
            AnchorX = 377
            AnchorY = 44
          end
        end
        object cxGrid2: TcxGrid
          Left = 0
          Top = 67
          Width = 1237
          Height = 633
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 1
          LookAndFeel.NativeStyle = False
          object cxGridAI3_IBList1: TcxGridBandedTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.CustomizeDialog = False
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridBandedColumn5
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridBandedColumn6
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridBandedColumn7
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridBandedColumn8
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridBandedColumn9
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridBandedColumn10
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridBandedColumn11
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridBandedColumn12
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridBandedColumn13
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridBandedColumn14
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridBandedColumn18
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridBandedColumn19
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridBandedColumn20
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridBandedColumn21
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridBandedColumn22
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridBandedColumn23
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridBandedColumn24
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridBandedColumn25
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridBandedColumn26
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridBandedColumn27
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridBandedColumn15
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridBandedColumn16
              end
              item
                Format = ',0;-,0;'
                Kind = skAverage
                Column = cxGridBandedColumn17
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridBandedColumn4
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnHorzSizing = False
            OptionsCustomize.BandMoving = False
            OptionsCustomize.ColumnVertSizing = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.NoDataToDisplayInfoText = '  '
            OptionsView.DataRowHeight = 22
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Header = False
            OptionsView.HeaderHeight = 20
            OptionsView.BandHeaderHeight = 23
            Bands = <
              item
                Caption = 'No'
                Width = 46
              end
              item
                Caption = #51648#49324#53076#46300
                Visible = False
                Width = 62
              end
              item
                Caption = #51648#49324#47749
                Width = 100
                OnHeaderClick = cxGridAI3_IBList1Bands2HeaderClick
              end
              item
                Caption = #45824#54364#48264#54840
                Width = 94
              end
              item
                Caption = #51217#49688#51068#51088
                Width = 104
                OnHeaderClick = cxGridAI3_IBList1Bands3HeaderClick
              end
              item
                Caption = #52509#53084#49688
                Width = 42
                OnHeaderClick = cxGridAI3_IBList1Bands4HeaderClick
              end
              item
                Caption = #45824#44592#53084#49688
                Width = 41
                OnHeaderClick = cxGridAI3_IBList1Bands5HeaderClick
              end
              item
                Caption = #49345#45812#50896#50672#44208
                Width = 42
                OnHeaderClick = cxGridAI3_IBList1Bands6HeaderClick
              end
              item
                Caption = #44592#49324
                Width = 42
                OnHeaderClick = cxGridAI3_IBList1Bands7HeaderClick
              end
              item
                Caption = #48176#52264#51473#44256#44061
                Width = 42
                OnHeaderClick = cxGridAI3_IBList1Bands8HeaderClick
              end
              item
                Caption = #51217#49688#51473#44256#44061
                Width = 42
                OnHeaderClick = cxGridAI3_IBList1Bands9HeaderClick
              end
              item
                Caption = #51221#49345#53084#49688
                Width = 41
                OnHeaderClick = cxGridAI3_IBList1Bands10HeaderClick
              end
              item
                Caption = #47928#51032
                Width = 42
                OnHeaderClick = cxGridAI3_IBList1Bands11HeaderClick
              end
              item
                Caption = #51217#49688
              end
              item
                Caption = #50629#49548
                Position.BandIndex = 13
                Position.ColIndex = 0
                Width = 42
                OnHeaderClick = cxGridAI3_IBList1Bands13HeaderClick
              end
              item
                Caption = #54788#44552
                Position.BandIndex = 13
                Position.ColIndex = 1
                Width = 42
                OnHeaderClick = cxGridAI3_IBList1Bands14HeaderClick
              end
              item
                Caption = #52852#46300
                Position.BandIndex = 13
                Position.ColIndex = 2
                Width = 42
                OnHeaderClick = cxGridAI3_IBList1Bands15HeaderClick
              end
              item
                Caption = #47560#51068
                Position.BandIndex = 13
                Position.ColIndex = 3
                Width = 42
                OnHeaderClick = cxGridAI3_IBList1Bands16HeaderClick
              end
              item
                Caption = #54633#44228
                Position.BandIndex = 13
                Position.ColIndex = 4
                Width = 42
                OnHeaderClick = cxGridAI3_IBList1Bands17HeaderClick
              end
              item
                Caption = #51217#49688#50984
                Position.BandIndex = 13
                Position.ColIndex = 5
                Width = 42
                OnHeaderClick = cxGridAI3_IBList1Bands18HeaderClick
              end
              item
                Caption = #47560#44048#49345#53468
              end
              item
                Caption = #50756#47308
                Position.BandIndex = 20
                Position.ColIndex = 0
                Width = 42
                OnHeaderClick = cxGridAI3_IBList1Bands20HeaderClick
              end
              item
                Caption = #52712#49548
                Position.BandIndex = 20
                Position.ColIndex = 1
                Width = 42
                OnHeaderClick = cxGridAI3_IBList1Bands21HeaderClick
              end
              item
                Caption = #47928#51032
                Position.BandIndex = 20
                Position.ColIndex = 2
                Width = 42
                OnHeaderClick = cxGridAI3_IBList1Bands22HeaderClick
              end
              item
                Caption = #49345#53468#48320#44221
              end
              item
                Caption = #51217#49688#52712#49548
                Position.BandIndex = 24
                Position.ColIndex = 0
                Width = 54
                OnSetStoredPropertyValue = cxGridAI3_IBList1Bands24SetStoredPropertyValue
              end
              item
                Caption = #50836#44552#51064#49345
                Position.BandIndex = 24
                Position.ColIndex = 1
                Width = 54
                OnSetStoredPropertyValue = cxGridAI3_IBList1Bands25SetStoredPropertyValue
              end
              item
                Caption = #52628#44032#51217#49688
                Position.BandIndex = 24
                Position.ColIndex = 2
                Width = 54
                OnSetStoredPropertyValue = cxGridAI3_IBList1Bands26SetStoredPropertyValue
              end
              item
                Caption = #46021#52489#47928#51088
                Width = 41
                OnSetStoredPropertyValue = cxGridAI3_IBList1Bands27SetStoredPropertyValue
              end
              item
                Caption = #44592#49324#52712#49548
                Width = 41
                OnSetStoredPropertyValue = cxGridAI3_IBList1Bands28SetStoredPropertyValue
              end
              item
                Caption = 'LBS'#44148#49688
                Width = 33
                OnSetStoredPropertyValue = cxGridAI3_IBList1Bands29SetStoredPropertyValue
              end
              item
                Caption = #51221#49328#44552#50529
                Width = 54
                OnSetStoredPropertyValue = cxGridAI3_IBList1Bands30SetStoredPropertyValue
              end>
            object cxGridBandedColumn0: TcxGridBandedColumn
              Caption = 'No'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn1: TcxGridBandedColumn
              Caption = #51648#49324#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn2: TcxGridBandedColumn
              Caption = #51648#49324#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI3_IBList1Column1: TcxGridBandedColumn
              Caption = #45824#54364#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Options.Editing = False
              Width = 94
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn3: TcxGridBandedColumn
              Caption = #51217#49688#51068#49884
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn4: TcxGridBandedColumn
              Caption = #52509#53084#49688
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn5: TcxGridBandedColumn
              Caption = #45824#44592
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn6: TcxGridBandedColumn
              Caption = #49345#45812#50896#50672#44208
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 7
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn7: TcxGridBandedColumn
              Caption = #44592#49324
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 8
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn8: TcxGridBandedColumn
              Caption = #48176#52264#51473#44256#44061
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 40
              Position.BandIndex = 9
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn9: TcxGridBandedColumn
              Caption = #51217#49688#51473#44256#44061
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 40
              Position.BandIndex = 10
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn10: TcxGridBandedColumn
              Caption = #51221#49345#53084#49688
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 40
              Position.BandIndex = 11
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn11: TcxGridBandedColumn
              Caption = #47928#51032
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 12
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn12: TcxGridBandedColumn
              Caption = #50629#49548
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 14
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn13: TcxGridBandedColumn
              Caption = #54788#44552
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 15
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn14: TcxGridBandedColumn
              Caption = #52852#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 40
              Position.BandIndex = 16
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn15: TcxGridBandedColumn
              Caption = #47560#51068
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 17
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn16: TcxGridBandedColumn
              Caption = #54633#44228
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 18
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn17: TcxGridBandedColumn
              Caption = #51217#49688#50984
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 19
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn18: TcxGridBandedColumn
              Caption = #50756#47308
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 40
              Position.BandIndex = 21
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn19: TcxGridBandedColumn
              Caption = #52712#49548
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 22
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn20: TcxGridBandedColumn
              Caption = #47928#51032
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 23
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn21: TcxGridBandedColumn
              Caption = #51217#49688#52712#49548
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 25
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn22: TcxGridBandedColumn
              Caption = #50836#44552#51064#49345
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 26
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn23: TcxGridBandedColumn
              Caption = #52628#44032#51217#49688
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 27
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn24: TcxGridBandedColumn
              Caption = #46021#52489#47928#51088
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 28
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn25: TcxGridBandedColumn
              Caption = #44592#49324#52712#49548
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 29
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn26: TcxGridBandedColumn
              Caption = 'LBS'#44148#49688
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 41
              Position.BandIndex = 30
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn27: TcxGridBandedColumn
              Caption = #51221#49328#44552#50529
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 31
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridAI3_IBList1
          end
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'AI-IB '#51217#49688#53685#44228
      ImageIndex = 3
      object pnl_Main4: TPanel
        Left = 0
        Top = 0
        Width = 1237
        Height = 700
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Shape2: TShape
          Left = 0
          Top = 65
          Width = 1237
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitTop = 73
        end
        object cxGrid3: TcxGrid
          Left = 0
          Top = 67
          Width = 1237
          Height = 633
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 1
          LookAndFeel.NativeStyle = False
          object cxGridAI4_IBList1: TcxGridBandedTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.CustomizeDialog = False
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCellDblClick = cxGridAI4_IBList1CellDblClick
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridBandedColumn37
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridBandedColumn38
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridBandedColumn39
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridBandedColumn40
              end
              item
                Format = ',0;-,0'
                Kind = skSum
              end
              item
                Format = ',0;-,0'
                Kind = skSum
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
              end
              item
                Format = ',0;-,0'
                Kind = skCount
                Column = cxGridBandedColumn36
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnHorzSizing = False
            OptionsCustomize.BandMoving = False
            OptionsCustomize.ColumnVertSizing = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.NoDataToDisplayInfoText = '  '
            OptionsView.DataRowHeight = 22
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Header = False
            OptionsView.HeaderHeight = 20
            OptionsView.BandHeaderHeight = 23
            Bands = <
              item
                Caption = 'No'
                Width = 46
              end
              item
                Caption = #51648#49324#53076#46300
                Visible = False
                Width = 62
              end
              item
                Caption = #51648#49324#47749
                Width = 100
              end
              item
                Caption = #45824#54364#48264#54840
                Width = 94
              end
              item
                Caption = #51217#49688#51068#49884
                Width = 132
              end
              item
                Caption = #51217#49688#48264#54840
                Width = 71
              end
              item
                Caption = #44256#44061#50672#46973#52376
                Width = 94
              end
              item
                Caption = #44256#44061#47749
                Width = 86
              end
              item
                Caption = #49345#53468
                Width = 71
              end
              item
                Caption = #44396#48516
                Width = 300
              end
              item
                Caption = #51217#49688#50756#47308
                Position.BandIndex = 9
                Position.ColIndex = 0
                Width = 60
              end
              item
                Caption = #49688#51221#50756#47308
                Position.BandIndex = 9
                Position.ColIndex = 1
                Width = 60
              end
              item
                Caption = #52712#49548
                Position.BandIndex = 9
                Position.ColIndex = 2
                Width = 60
              end
              item
                Caption = #47928#51032
                Position.BandIndex = 9
                Position.ColIndex = 3
                Width = 60
              end
              item
                Caption = #50836#44552#51064#49345
                Width = 243
              end>
            object cxGridBandedColumn28: TcxGridBandedColumn
              Caption = 'No'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn29: TcxGridBandedColumn
              Caption = #51648#49324#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn30: TcxGridBandedColumn
              Caption = #51648#49324#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn31: TcxGridBandedColumn
              Caption = #45824#54364#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 94
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn32: TcxGridBandedColumn
              Caption = #51217#49688#51068#49884
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn33: TcxGridBandedColumn
              Caption = #51217#49688#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Styles.Content = Frm_Main.cxsInsure
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn34: TcxGridBandedColumn
              Caption = #44256#44061#50672#46973#52376
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 94
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn35: TcxGridBandedColumn
              Caption = #44256#44061#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 7
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn36: TcxGridBandedColumn
              Caption = #49345#53468
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 8
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn37: TcxGridBandedColumn
              Caption = #51217#49688#50756#47308
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 60
              Position.BandIndex = 10
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn38: TcxGridBandedColumn
              Caption = #49688#51221#50756#47308
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 60
              Position.BandIndex = 11
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn39: TcxGridBandedColumn
              Caption = #52712#49548
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 60
              Position.BandIndex = 12
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn40: TcxGridBandedColumn
              Caption = #47928#51032
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 60
              Position.BandIndex = 13
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn41: TcxGridBandedColumn
              Caption = #50836#44552#51064#49345
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 14
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridAI4_IBList1
          end
        end
        object cxGroupBox5: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          ParentBackground = False
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 65
          Width = 1237
          object lblSosokNameA4: TcxLabel
            Left = 95
            Top = 4
            AutoSize = False
            Caption = #49548#49549
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clBtnFace
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = clBlack
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 675
            AnchorX = 433
            AnchorY = 17
          end
          object btnSearchA4: TcxButton
            Left = 776
            Top = 5
            Width = 70
            Height = 51
            Cursor = crHandPoint
            Caption = #51312#54924
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 1
            OnClick = btnSearchA4Click
          end
          object cb_KeyNumberA4: TcxComboBox
            Left = 95
            Top = 31
            AutoSize = False
            Properties.Alignment.Vert = taBottomJustify
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #45824#54364#48264#54840)
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
            Text = #45824#54364#48264#54840
            Height = 26
            Width = 112
          end
          object cxLabel31: TcxLabel
            Left = 10
            Top = 32
            AutoSize = False
            Caption = #45824#54364#48264#54840
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 16744448
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 87
            AnchorX = 54
            AnchorY = 44
          end
          object cxDtStartA3: TcxDateEdit
            Left = 281
            Top = 31
            AutoSize = False
            EditValue = 39777d
            Properties.Alignment.Vert = taBottomJustify
            Properties.SaveTime = False
            Properties.ShowTime = False
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 4
            Height = 26
            Width = 92
          end
          object cxDtEndA3: TcxDateEdit
            Left = 380
            Top = 31
            AutoSize = False
            EditValue = 39777d
            Properties.Alignment.Vert = taBottomJustify
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
            Height = 26
            Width = 94
          end
          object cxLabel32: TcxLabel
            Left = 371
            Top = 32
            AutoSize = False
            Caption = '~'
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 11
            AnchorX = 377
            AnchorY = 44
          end
          object cxLabel33: TcxLabel
            Left = 208
            Top = 32
            AutoSize = False
            Caption = #44160#49353#44592#44036
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 16744448
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 75
            AnchorX = 246
            AnchorY = 44
          end
          object edt_Slip3: TcxTextEdit
            Left = 572
            Top = 31
            AutoSize = False
            Properties.ReadOnly = False
            Style.Color = clWindow
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 8
            Height = 26
            Width = 198
          end
          object cxLabel34: TcxLabel
            Left = 504
            Top = 32
            AutoSize = False
            Caption = #51217#49688#48264#54840
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 16744448
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 24
            Width = 70
            AnchorX = 539
            AnchorY = 44
          end
          object btnDateA3: TcxButton
            Left = 474
            Top = 32
            Width = 26
            Height = 24
            Cursor = crHandPoint
            DropDownMenu = pop_dateA1
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
            TabOrder = 10
          end
          object btnExcelA4: TcxButton
            Left = 848
            Top = 5
            Width = 70
            Height = 51
            Cursor = crHandPoint
            Caption = #50641#49472#45796#50868
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 11
            OnClick = btnExcelA2Click
          end
          object cxLabel35: TcxLabel
            Left = 10
            Top = 5
            AutoSize = False
            Caption = #49548'   '#49549
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TransparentBorder = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 24
            Width = 87
            AnchorX = 54
            AnchorY = 17
          end
        end
      end
    end
  end
  object pop_dateA1: TPopupMenu
    AutoHotkeys = maManual
    Left = 980
    Top = 180
    object MiToday: TMenuItem
      Caption = #50724#45720
      OnClick = MiTodayClick
    end
    object MiYesterday: TMenuItem
      Tag = 1
      Caption = #50612#51228
      OnClick = MiTodayClick
    end
    object MiOneWeek: TMenuItem
      Tag = 2
      Caption = #52572#44540#51068#51452#51068
      OnClick = MiTodayClick
    end
    object MiOneMonth: TMenuItem
      Tag = 3
      Caption = #52572#44540#54620#45804
      OnClick = MiTodayClick
    end
    object MiStartMonth: TMenuItem
      Tag = 4
      Caption = '1'#51068'~'#47568#51068
      OnClick = MiTodayClick
    end
  end
end

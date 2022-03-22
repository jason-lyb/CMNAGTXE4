object Frm_WORA8: TFrm_WORA8
  Left = 281
  Top = 154
  BorderStyle = bsNone
  Caption = 'Frm_WORA8'
  ClientHeight = 741
  ClientWidth = 917
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 917
    Height = 741
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Shape3: TShape
      Left = 0
      Top = 191
      Width = 917
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
      TabOrder = 0
      DesignSize = (
        917
        191)
      Height = 191
      Width = 917
      object Shape1: TShape
        Left = 10
        Top = 5
        Width = 338
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object cxLabel54: TcxLabel
        Left = 22
        Top = 10
        Caption = #49548'       '#49549
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
        AnchorX = 50
        AnchorY = 18
      end
      object lblSosokNameA8: TcxLabel
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
        Width = 551
        AnchorX = 371
        AnchorY = 17
      end
      object cxGroupBox2: TcxGroupBox
        Left = 10
        Top = 32
        Anchors = [akLeft, akTop, akBottom]
        TabOrder = 2
        Height = 156
        Width = 898
        object Shape4: TShape
          Left = 340
          Top = 6
          Width = 144
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape5: TShape
          Left = 12
          Top = 6
          Width = 200
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape6: TShape
          Left = 340
          Top = 35
          Width = 146
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape7: TShape
          Left = 12
          Top = 35
          Width = 326
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape8: TShape
          Left = 520
          Top = 6
          Width = 121
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape9: TShape
          Left = 520
          Top = 35
          Width = 121
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cbInSurYn: TcxComboBox
          Left = 595
          Top = 5
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404
            #44032#51077
            #48120#44032#51077)
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
          Text = #51204#52404
          Height = 26
          Width = 70
        end
        object cbKeynumberA8: TcxComboBox
          Left = 91
          Top = 5
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404)
          Properties.OnChange = cbKeynumber01PropertiesChange
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
          Text = #51204#52404
          Height = 26
          Width = 139
        end
        object cbSmsYn: TcxComboBox
          Left = 595
          Top = 34
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404
            #49688#49888
            #48120#49688#49888)
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
          Text = #51204#52404
          Height = 26
          Width = 70
        end
        object cxBtnDate: TcxButton
          Left = 311
          Top = 35
          Width = 27
          Height = 24
          Cursor = crHandPoint
          Enabled = False
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
          PopupMenu = pop_dateA8
          TabOrder = 3
          OnMouseDown = cxBtnDateMouseDown
        end
        object cxChkDay: TcxCheckBox
          Left = 21
          Top = 38
          Caption = #44032#51077#49888#52397#51068#51088
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 4
          Transparent = True
          OnClick = cxChkDayClick
        end
        object cxDtEndA8: TcxDateEdit
          Left = 227
          Top = 34
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          Enabled = False
          ParentShowHint = False
          Properties.DateButtons = [btnNow, btnToday]
          Properties.DateOnError = deToday
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
          TabOrder = 5
          Height = 26
          Width = 83
        end
        object cxDtStartA8: TcxDateEdit
          Left = 127
          Top = 34
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          Enabled = False
          ParentShowHint = False
          Properties.DateButtons = [btnNow, btnToday]
          Properties.DateOnError = deToday
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
          TabOrder = 6
          Height = 26
          Width = 83
        end
        object cxGroupBox4: TcxGroupBox
          Left = 670
          Top = 77
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 7
          Height = 73
          Width = 213
          object cxBtnSelSMS: TcxButton
            Left = 5
            Top = 41
            Width = 200
            Height = 26
            Cursor = crHandPoint
            Caption = #49440#53469#54924#50896' '#44305#44256'SMS(11.9'#50896')'
            Colors.Normal = 12189690
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 0
            OnClick = cxBtnSelSMSClick
          end
          object chk_All_Select: TcxCheckBox
            Left = 4
            Top = 13
            Caption = #51204#52404#49440#53469
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 1
            Transparent = True
            OnClick = chk_All_SelectClick
          end
        end
        object cxGroupBox5: TcxGroupBox
          Left = 670
          Top = 6
          TabOrder = 8
          Height = 65
          Width = 213
          object cxCBN: TcxCheckBox
            Left = 5
            Top = 39
            Caption = #44032#51077#49888#52397#51068#51088' '#51060#54980' '#48120#50756#47308' '#44256#44061#47564
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 0
            Transparent = True
          end
          object cxCBY: TcxCheckBox
            Left = 5
            Top = 8
            Caption = #44032#51077#49888#52397#51068#51088' '#51060#54980' '#50756#47308' '#44256#44061#47564
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 1
            Transparent = True
          end
        end
        object cxGroupBox6: TcxGroupBox
          Left = 12
          Top = 64
          Caption = '['#48512#47476#48120' '#50504#51204' '#48372#54744' '#46041#51032']'
          TabOrder = 9
          Height = 86
          Width = 325
          object Shape10: TShape
            Left = 19
            Top = 19
            Width = 237
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape11: TShape
            Left = 19
            Top = 49
            Width = 237
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object cxCB1: TcxComboBox
            Left = 243
            Top = 18
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #51204#52404
              #46041#51032
              #48120#46041#51032)
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
            Text = #51204#52404
            Height = 26
            Width = 63
          end
          object cxCB2: TcxComboBox
            Left = 243
            Top = 48
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #51204#52404
              #46041#51032
              #48120#46041#51032)
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
            Text = #51204#52404
            Height = 26
            Width = 63
          end
          object cxLabel6: TcxLabel
            Left = 25
            Top = 54
            Caption = #44060#51064'('#49888#50857')'#51221#48372' '#51228'3'#51088' '#51228#44277' '#46041#51032
            ParentColor = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 62
          end
          object cxLabel7: TcxLabel
            Left = 25
            Top = 24
            Caption = #44060#51064'('#49888#50857')'#51221#48372#51032' '#49688#51665' '#8729' '#52712#44553#50948#53441' '#46041#51032
            ParentColor = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 32
          end
        end
        object cxGroupBox7: TcxGroupBox
          Left = 340
          Top = 64
          Caption = '['#47560#52992#54021' '#54876#50857#50640' '#44288#54620' '#49440#53469' '#46041#51032']'
          TabOrder = 10
          Height = 86
          Width = 325
          object Shape12: TShape
            Left = 13
            Top = 49
            Width = 240
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape13: TShape
            Left = 13
            Top = 19
            Width = 240
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object cxCB3: TcxComboBox
            Left = 248
            Top = 18
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #51204#52404
              #46041#51032
              #48120#46041#51032)
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
            Text = #51204#52404
            Height = 26
            Width = 66
          end
          object cxCB4: TcxComboBox
            Left = 248
            Top = 48
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #51204#52404
              #46041#51032
              #48120#46041#51032)
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
            Text = #51204#52404
            Height = 26
            Width = 66
          end
          object cxLabel8: TcxLabel
            Left = 25
            Top = 54
            Caption = #44060#51064'('#49888#50857')'#51221#48372' '#54876#50857' '#48143' '#51228'3'#51088' '#51228#44277' '#46041#51032
            ParentColor = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 62
          end
          object cxLabel9: TcxLabel
            Left = 25
            Top = 24
            Caption = #44060#51064'('#49888#50857')'#51221#48372' '#54876#50857' '#8729' '#51228#44277' '#46041#51032
            ParentColor = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 32
          end
        end
        object cxLabel1: TcxLabel
          Left = 368
          Top = 10
          Caption = #49457'    '#47749
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 390
          AnchorY = 18
        end
        object cxLabel2: TcxLabel
          Left = 348
          Top = 40
          Caption = #55092#45824#54256#48264#54840
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 380
          AnchorY = 48
        end
        object cxLabel237: TcxLabel
          Left = 212
          Top = 40
          Caption = '~'
          Transparent = True
        end
        object cxLabel27: TcxLabel
          Left = 26
          Top = 10
          Caption = #45824#54364#48264#54840
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 52
          AnchorY = 18
        end
        object cxLabel4: TcxLabel
          Left = 533
          Top = 10
          Caption = #48372#54744#44032#51077
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 559
          AnchorY = 18
        end
        object cxLabel5: TcxLabel
          Left = 530
          Top = 39
          Caption = 'SMS'#49688#49888
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 558
          AnchorY = 47
        end
        object edtHp: TcxTextEdit
          Left = 415
          Top = 34
          TabStop = False
          AutoSize = False
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
          Height = 26
          Width = 101
        end
        object edtName: TcxTextEdit
          Left = 415
          Top = 5
          TabStop = False
          AutoSize = False
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
          Height = 26
          Width = 101
        end
      end
      object btnExcelA8: TcxButton
        Left = 780
        Top = 4
        Width = 128
        Height = 25
        Cursor = crHandPoint
        Caption = #50641#49472#51200#51109
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 3
        TabStop = False
        OnClick = btnExcelA8Click
      end
      object btnSearchA8: TcxButton
        Left = 649
        Top = 4
        Width = 128
        Height = 25
        Cursor = crHandPoint
        Caption = #44160' '#49353
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 4
        TabStop = False
        OnClick = btnSearchA8Click
      end
    end
    object cxGridA8: TcxGrid
      Left = 0
      Top = 193
      Width = 917
      Height = 548
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      TabOrder = 1
      LookAndFeel.NativeStyle = False
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
        object cxGridDBColumn25: TcxGridDBColumn
          DataBinding.FieldName = 'No'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 30
        end
        object cxGridDBColumn26: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 125
        end
        object cxGridDBColumn27: TcxGridDBColumn
          DataBinding.FieldName = #51008#54665#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn28: TcxGridDBColumn
          DataBinding.FieldName = #52636#44552#44228#51340
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn29: TcxGridDBColumn
          DataBinding.FieldName = #50696#44552#51452
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 60
        end
        object cxGridDBColumn30: TcxGridDBColumn
          DataBinding.FieldName = #48376#49324#51221#49328#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn31: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#51221#49328#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn32: TcxGridDBColumn
          DataBinding.FieldName = #49444#51221#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn33: TcxGridDBColumn
          DataBinding.FieldName = #51092'  '#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn34: TcxGridDBColumn
          Caption = #50696#50557
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.NullStyle = nssUnchecked
          Properties.ReadOnly = False
          HeaderAlignmentHorz = taCenter
          Options.Moving = False
          Width = 30
        end
        object cxGridDBColumn35: TcxGridDBColumn
          DataBinding.FieldName = #50696#50557#51068#51088
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.DateOnError = deToday
          HeaderAlignmentHorz = taCenter
          Width = 70
        end
        object cxGridDBColumn36: TcxGridDBColumn
          DataBinding.FieldName = #50696#50557#49884#44036
          PropertiesClassName = 'TcxTimeEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.TimeFormat = tfHourMin
          HeaderAlignmentHorz = taCenter
          Width = 70
        end
        object cxGridDBColumn37: TcxGridDBColumn
          DataBinding.FieldName = #52636#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.AutoSelect = False
          Properties.DisplayFormat = '#,##0'
          Properties.HideSelection = False
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBColumn38: TcxGridDBColumn
          DataBinding.FieldName = #51201' '#50836
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBColumn39: TcxGridDBColumn
          DataBinding.FieldName = #47700' '#47784
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 120
        end
        object cxGridDBColumn40: TcxGridDBColumn
          DataBinding.FieldName = #55092#45824#54256
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBColumn41: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#53076#46300
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 123
        end
        object cxGridDBColumn42: TcxGridDBColumn
          DataBinding.FieldName = #51008#54665#53076#46300
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
        end
      end
      object cxViewDongBu: TcxGridBandedTableView
        PopupMenu = pm_Process
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = cxViewDongBuColumn13
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.OnSortingChanged = cxViewDongBuDataControllerSortingChanged
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ExpandMasterRowOnDblClick = False
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.BandMoving = False
        OptionsCustomize.BandSizing = False
        OptionsView.FocusRect = False
        OptionsView.DataRowHeight = 22
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderHeight = 23
        OptionsView.BandHeaderHeight = 22
        OptionsView.BandHeaders = False
        Styles.OnGetContentStyle = cxViewDongBuStylesGetContentStyle
        OnColumnHeaderClick = cxViewDongBuColumnHeaderClick
        Bands = <
          item
            Caption = #49440#53469
          end
          item
            Caption = 'No'
          end
          item
            Caption = #45824#54364#48264#54840
          end
          item
            Caption = #44032#51077#49888#52397#51068#51088
          end
          item
            Caption = #44032#51077#50976#47924
          end
          item
            Caption = #52572#44540#50756#47308#51068#51088
          end
          item
            Caption = #49457#47749
          end
          item
            Caption = #55092#45824#54256#48264#54840
          end
          item
            Caption = #51452#48124#48264#54840
          end
          item
            Caption = #49892#47749#51064#51613#50668#48512
          end
          item
            Caption = #44060#51064'('#49888#50857')'#51221#48372#51032' '#49688#51665' '#8729' '#52712#44553#50948#53441' '#46041#51032
          end
          item
            Caption = #44060#51064'('#49888#50857')'#51221#48372' '#51228'3'#51088' '#51228#44277' '#46041#51032
          end
          item
            Caption = #44060#51064'('#49888#50857')'#51221#48372' '#54876#50857' '#8729' '#51228#44277' '#46041#51032
          end
          item
            Caption = #44060#51064'('#49888#50857')'#51221#48372' '#54876#50857' '#48143' '#51228'3'#51088' '#51228#44277' '#46041#51032
          end
          item
            Caption = #48376#51064#51064#51613'CI'
          end
          item
            Caption = 'SEQ'
            Visible = False
          end
          item
            Caption = 'BrNo'
            Visible = False
          end>
        object cxViewDongBuColumn10: TcxGridBandedColumn
          Caption = #49440#53469
          DataBinding.ValueType = 'Boolean'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 30
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxViewDongBuColumn2: TcxGridBandedColumn
          Caption = 'No'
          DataBinding.ValueType = 'Integer'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 36
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxViewDongBuColumn3: TcxGridBandedColumn
          Caption = #45824#54364#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 88
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxViewDongBuColumn4: TcxGridBandedColumn
          Caption = #44032#51077#49888#52397#51068#51088
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 148
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxViewDongBuColumn5: TcxGridBandedColumn
          Caption = #44032#51077#50976#47924
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 54
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxViewDongBuColumn6: TcxGridBandedColumn
          Caption = #52572#44540#50756#47308#51068#51088
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 78
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxViewDongBuColumn7: TcxGridBandedColumn
          Caption = #49457#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 90
          Position.BandIndex = 6
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxViewDongBuColumn8: TcxGridBandedColumn
          Caption = #55092#45824#54256#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 87
          Position.BandIndex = 7
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxViewDongBuColumn9: TcxGridBandedColumn
          Caption = #51452#48124#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 94
          Position.BandIndex = 8
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxViewDongBuColumn19: TcxGridBandedColumn
          Caption = #49892#47749#51064#51613#50668#48512
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 94
          Position.BandIndex = 9
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxViewDongBuColumn1: TcxGridBandedColumn
          Caption = #44060#51064'('#49888#50857')'#51221#48372#51032' '#49688#51665' '#8729' '#52712#44553#50948#53441' '#46041#51032
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 215
          Position.BandIndex = 10
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxViewDongBuColumn11: TcxGridBandedColumn
          Caption = #44060#51064'('#49888#50857')'#51221#48372' '#51228'3'#51088' '#51228#44277' '#46041#51032
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 178
          Position.BandIndex = 11
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxViewDongBuColumn12: TcxGridBandedColumn
          Caption = #44060#51064'('#49888#50857')'#51221#48372' '#54876#50857' '#8729' '#51228#44277' '#46041#51032
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 179
          Position.BandIndex = 12
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxViewDongBuColumn13: TcxGridBandedColumn
          Caption = #44060#51064'('#49888#50857')'#51221#48372' '#54876#50857' '#48143' '#51228'3'#51088' '#51228#44277' '#46041#51032
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 222
          Position.BandIndex = 13
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxViewDongBuColumn14: TcxGridBandedColumn
          Caption = #48376#51064#51064#51613'CI'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 300
          Position.BandIndex = 14
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxViewDongBuColumn15: TcxGridBandedColumn
          Caption = 'SEQ'
          PropertiesClassName = 'TcxLabelProperties'
          HeaderAlignmentHorz = taCenter
          Options.AutoWidthSizable = False
          Width = 60
          Position.BandIndex = 15
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxViewDongBuColumn16: TcxGridBandedColumn
          Caption = #51648#49324#53076#46300
          Visible = False
          Position.BandIndex = 16
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxViewDongBu
      end
    end
  end
  object pop_dateA8: TPopupMenu
    AutoHotkeys = maManual
    AutoPopup = False
    Left = 332
    Top = 97
    object N3: TMenuItem
      Caption = #50724#45720
      OnClick = N3Click
    end
    object MenuItem2: TMenuItem
      Caption = #50612#51228
      OnClick = MenuItem2Click
    end
    object MenuItem3: TMenuItem
      Caption = #52572#44540#51068#51452#51068
      OnClick = MenuItem3Click
    end
    object MenuItem4: TMenuItem
      Caption = #52572#44540#54620#45804
      OnClick = MenuItem4Click
    end
    object MenuItem5: TMenuItem
      Caption = '1'#51068'~'#47568#51068
      OnClick = MenuItem5Click
    end
  end
  object pm_Process: TPopupMenu
    AutoHotkeys = maManual
    Left = 124
    Top = 332
    object MenuItem10: TMenuItem
      Caption = #49440#53469#44256#44061' '#48372#54744' '#44032#51077' '#52376#47532
      OnClick = MenuItem10Click
    end
    object N1: TMenuItem
      Caption = #49440#53469#44256#44061' '#48372#54744' '#48120#44032#51077' '#52376#47532
      OnClick = N1Click
    end
  end
  object cxStyleRepositoryWorker: TcxStyleRepository
    Left = 208
    Top = 640
    PixelsPerInch = 96
    object cxStyleNormal: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
    end
    object cxStyleSelected: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 4707838
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
    end
    object cxStyleSysLock: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      TextColor = clRed
    end
    object cxStyleSysLockSel: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4707838
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      TextColor = clRed
    end
  end
end

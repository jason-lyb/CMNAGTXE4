object frm_PBX01: Tfrm_PBX01
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_PBX01'
  ClientHeight = 509
  ClientWidth = 462
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  ShowHint = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 462
    Height = 509
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    BorderWidth = 1
    ParentBackground = False
    TabOrder = 0
    object PnlInBound: TPanel
      Left = 1
      Top = 33
      Width = 456
      Height = 471
      Align = alClient
      BevelKind = bkFlat
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object Shape23: TShape
        Left = 3
        Top = 2
        Width = 84
        Height = 24
        Pen.Color = 12566402
      end
      object Shape26: TShape
        Left = 227
        Top = 28
        Width = 84
        Height = 24
        Pen.Color = 12566402
      end
      object Shape27: TShape
        Left = 3
        Top = 187
        Width = 446
        Height = 1
        Pen.Color = 11184810
      end
      object Shape28: TShape
        Left = 3
        Top = 54
        Width = 84
        Height = 24
        Pen.Color = 12566402
      end
      object Shape31: TShape
        Left = 227
        Top = 2
        Width = 84
        Height = 24
        Pen.Color = 12566402
      end
      object Shape32: TShape
        Left = 3
        Top = 28
        Width = 84
        Height = 24
        Pen.Color = 12566402
      end
      object Shape3: TShape
        Left = 3
        Top = 80
        Width = 84
        Height = 24
        Pen.Color = 12566402
      end
      object Shape4: TShape
        Left = 3
        Top = 106
        Width = 446
        Height = 75
        Pen.Color = 12566402
      end
      object Shape21: TShape
        Left = 5
        Top = 438
        Width = 116
        Height = 24
        Pen.Color = 12566402
      end
      object Shape22: TShape
        Left = 157
        Top = 182
        Width = 116
        Height = 24
        Pen.Color = 12566402
        Visible = False
      end
      object cxLabel20: TcxLabel
        Left = 12
        Top = 6
        Caption = #54840#48516#48176#44536#47353
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 44
        AnchorY = 14
      end
      object cxLabel22: TcxLabel
        Left = 18
        Top = 32
        Caption = #52265#49888#48264#54840
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 44
        AnchorY = 40
      end
      object cxLabel23: TcxLabel
        Left = 243
        Top = 33
        Caption = #49436#48708#49828#47749
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 269
        AnchorY = 41
      end
      object edt_4: TcxTextEdit
        Left = 86
        Top = 53
        AutoSize = False
        Enabled = False
        Properties.ImeMode = imSHanguel
        Properties.MaxLength = 40
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        OnKeyDown = edt_4KeyDown
        Height = 26
        Width = 364
      end
      object cxLabel31: TcxLabel
        Left = 243
        Top = 6
        Caption = #45824#54364#48264#54840
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 269
        AnchorY = 14
      end
      object edt_3: TcxTextEdit
        Left = 310
        Top = 27
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        OnKeyDown = edt_3KeyDown
        Height = 26
        Width = 140
      end
      object cxLabel3: TcxLabel
        Left = 3
        Top = 59
        Caption = #47749#51032#51088'/'#53685#49888#49324
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 44
        AnchorY = 67
      end
      object edt_5: TcxTextEdit
        Left = 86
        Top = 79
        AutoSize = False
        Enabled = False
        Properties.ImeMode = imSHanguel
        Properties.MaxLength = 40
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        OnKeyDown = edt_5KeyDown
        Height = 26
        Width = 364
      end
      object cxLabel4: TcxLabel
        Left = 19
        Top = 85
        Caption = #50504#45236#47928#44396
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 45
        AnchorY = 93
      end
      object GroupBox1: TGroupBox
        Left = 2
        Top = 192
        Width = 448
        Height = 77
        Caption = #47704#53944' '#49444#51221
        Color = clBtnFace
        ParentBackground = False
        ParentColor = False
        TabOrder = 7
        object Shape5: TShape
          Left = 3
          Top = 20
          Width = 116
          Height = 24
          Pen.Color = 12566402
        end
        object Shape7: TShape
          Left = 225
          Top = 20
          Width = 116
          Height = 24
          Pen.Color = 12566402
        end
        object Shape6: TShape
          Left = 3
          Top = 46
          Width = 116
          Height = 24
          Pen.Color = 12566402
        end
        object Shape8: TShape
          Left = 225
          Top = 46
          Width = 116
          Height = 24
          Pen.Color = 12566402
        end
        object cxLabel6: TcxLabel
          Left = 6
          Top = 24
          AutoSize = False
          Caption = 'CTI-Q '#45824#44592#47704#53944
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 111
          AnchorX = 62
          AnchorY = 33
        end
        object cb_2: TcxComboBox
          Left = 118
          Top = 19
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
          TabOrder = 0
          OnKeyDown = cb_2KeyDown
          Height = 26
          Width = 107
        end
        object cb_3: TcxComboBox
          Left = 340
          Top = 19
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
          TabOrder = 1
          OnKeyDown = cb_3KeyDown
          Height = 26
          Width = 107
        end
        object cxLabel8: TcxLabel
          Left = 227
          Top = 24
          AutoSize = False
          Caption = 'VIP CTI-Q '#45824#44592#47704#53944
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 111
          AnchorX = 283
          AnchorY = 33
        end
        object cxLabel7: TcxLabel
          Left = 6
          Top = 50
          AutoSize = False
          Caption = #51060#47492#50630#45716'VIP|VR'#47704#53944
          Enabled = False
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 111
          AnchorX = 62
          AnchorY = 59
        end
        object cb_4: TcxComboBox
          Left = 118
          Top = 45
          AutoSize = False
          Enabled = False
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
          Height = 26
          Width = 107
        end
        object cb_5: TcxComboBox
          Left = 340
          Top = 45
          AutoSize = False
          Enabled = False
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
          TabOrder = 3
          Height = 26
          Width = 107
        end
        object cxLabel9: TcxLabel
          Left = 227
          Top = 50
          AutoSize = False
          Caption = #51060#47492#51080#45716'VIP|VR'#47704#53944
          Enabled = False
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 111
          AnchorX = 283
          AnchorY = 59
        end
      end
      object GroupBox2: TGroupBox
        Left = 2
        Top = 277
        Width = 448
        Height = 77
        Caption = #44060#48324' '#52265#49888' '#49444#51221' '#48143' '#51648#45733#54805' '#52265#49888#51204#54872' '#49444#51221
        Color = clBtnFace
        ParentBackground = False
        ParentColor = False
        TabOrder = 8
        object Shape1: TShape
          Left = 3
          Top = 20
          Width = 116
          Height = 24
          Pen.Color = 12566402
        end
        object Shape2: TShape
          Left = 225
          Top = 20
          Width = 116
          Height = 24
          Pen.Color = 12566402
        end
        object Shape9: TShape
          Left = 3
          Top = 46
          Width = 116
          Height = 24
          Pen.Color = 12566402
        end
        object Shape10: TShape
          Left = 225
          Top = 46
          Width = 116
          Height = 24
          Pen.Color = 12566402
        end
        object cxLabel1: TcxLabel
          Left = 6
          Top = 24
          AutoSize = False
          Caption = #44060#48324#52265#49888' '#49324#50857#50668#48512
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 111
          AnchorX = 62
          AnchorY = 33
        end
        object cb_6: TcxComboBox
          Left = 118
          Top = 19
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.ImeMode = imSAlpha
          Properties.Items.Strings = (
            #48120#49324#50857
            #44060#48324#52265#49888#49324#50857
            #51648#45733#54805#52265#49888#49324#50857)
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
          Text = #48120#49324#50857
          OnKeyDown = cb_6KeyDown
          Height = 26
          Width = 107
        end
        object cxLabel2: TcxLabel
          Left = 227
          Top = 24
          AutoSize = False
          Caption = #52265#49888#48264#54840
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 111
          AnchorX = 283
          AnchorY = 33
        end
        object cxLabel5: TcxLabel
          Left = 6
          Top = 50
          Hint = #50696')'#50500#52840'9'#49884'->0900, '#48164'9'#49884'->2100'
          AutoSize = False
          Caption = #44060#48324#52265#49888' '#49884#51089#49884#44036
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 111
          AnchorX = 62
          AnchorY = 59
        end
        object cxLabel10: TcxLabel
          Left = 227
          Top = 50
          Hint = #50696')'#50500#52840'9'#49884'->0900, '#48164'9'#49884'->2100'
          AutoSize = False
          Caption = #44060#48324#52265#49888' '#51333#47308#49884#44036
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 111
          AnchorX = 283
          AnchorY = 59
        end
        object edt_6: TcxTextEdit
          Left = 340
          Top = 19
          AutoSize = False
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          OnKeyDown = edt_6KeyDown
          OnKeyPress = edt_6KeyPress
          Height = 26
          Width = 107
        end
        object edt_7: TcxTextEdit
          Left = 118
          Top = 45
          Hint = 'ex) '#50724#54980'1'#49884'27'#48516' -> 1327'
          AutoSize = False
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          OnKeyDown = edt_7KeyDown
          OnKeyPress = edt_7KeyPress
          Height = 26
          Width = 107
        end
        object edt_8: TcxTextEdit
          Left = 340
          Top = 45
          Hint = 'ex) '#50724#54980'1'#49884'27'#48516' -> 1327'
          AutoSize = False
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          OnKeyDown = edt_8KeyDown
          OnKeyPress = edt_8KeyPress
          Height = 26
          Width = 107
        end
      end
      object GroupBox3: TGroupBox
        Left = 2
        Top = 360
        Width = 448
        Height = 77
        Caption = #44060#48324' '#54596#53552#47553
        Color = clBtnFace
        ParentBackground = False
        ParentColor = False
        TabOrder = 9
        object Shape11: TShape
          Left = 3
          Top = 20
          Width = 116
          Height = 24
          Pen.Color = 12566402
        end
        object Shape12: TShape
          Left = 225
          Top = 20
          Width = 116
          Height = 24
          Pen.Color = 12566402
        end
        object Shape13: TShape
          Left = 3
          Top = 46
          Width = 116
          Height = 24
          Pen.Color = 12566402
        end
        object Shape14: TShape
          Left = 225
          Top = 46
          Width = 116
          Height = 24
          Pen.Color = 12566402
        end
        object cxLabel11: TcxLabel
          Left = 6
          Top = 24
          AutoSize = False
          Caption = #44060#48324#54596#53552#47553' '#49324#50857#50668#48512
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 111
          AnchorX = 62
          AnchorY = 33
        end
        object cb_7: TcxComboBox
          Left = 118
          Top = 19
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.ImeMode = imSAlpha
          Properties.Items.Strings = (
            #48120#49324#50857
            #49324#50857)
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
          Text = #48120#49324#50857
          OnKeyDown = cb_7KeyDown
          Height = 26
          Width = 107
        end
        object cb_8: TcxComboBox
          Left = 340
          Top = 19
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
          TabOrder = 1
          OnKeyDown = cb_8KeyDown
          Height = 26
          Width = 107
        end
        object cxLabel12: TcxLabel
          Left = 227
          Top = 24
          AutoSize = False
          Caption = #54596#53552#47553' '#47704#53944
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 111
          AnchorX = 283
          AnchorY = 33
        end
        object cxLabel13: TcxLabel
          Left = 6
          Top = 50
          Hint = #50696')'#50500#52840'9'#49884'->0900, '#48164'9'#49884'->2100'
          AutoSize = False
          Caption = #54596#53552#47553' '#49884#51089' '#49884#44036
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 111
          AnchorX = 62
          AnchorY = 59
        end
        object cxLabel14: TcxLabel
          Left = 227
          Top = 50
          Hint = #50696')'#50500#52840'9'#49884'->0900, '#48164'9'#49884'->2100'
          AutoSize = False
          Caption = #54596#53552#47553' '#51333#47308' '#49884#44036
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 111
          AnchorX = 283
          AnchorY = 59
        end
        object edt_10: TcxTextEdit
          Left = 340
          Top = 45
          AutoSize = False
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          OnKeyDown = edt_10KeyDown
          OnKeyPress = edt_10KeyPress
          Height = 26
          Width = 107
        end
        object edt_9: TcxTextEdit
          Left = 118
          Top = 45
          AutoSize = False
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          OnKeyDown = edt_9KeyDown
          OnKeyPress = edt_9KeyPress
          Height = 26
          Width = 107
        end
      end
      object GroupBox4: TGroupBox
        Left = 262
        Top = 492
        Width = 448
        Height = 53
        Caption = '080 '#49688#49888#44144#48512
        Color = clBtnFace
        ParentBackground = False
        ParentColor = False
        TabOrder = 10
        object Shape15: TShape
          Left = 3
          Top = 20
          Width = 116
          Height = 24
          Pen.Color = 12566402
        end
        object Shape16: TShape
          Left = 225
          Top = 20
          Width = 116
          Height = 24
          Pen.Color = 12566402
        end
        object cxLabel15: TcxLabel
          Left = 6
          Top = 24
          AutoSize = False
          Caption = #49688#49888#44144#48512' '#49324#50857#50668#48512
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 111
          AnchorX = 62
          AnchorY = 33
        end
        object cb_9: TcxComboBox
          Left = 118
          Top = 19
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.ImeMode = imSAlpha
          Properties.Items.Strings = (
            #48120#49324#50857
            #49324#50857)
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Text = #48120#49324#50857
          OnKeyDown = cb_9KeyDown
          Height = 26
          Width = 107
        end
        object cxLabel16: TcxLabel
          Left = 227
          Top = 24
          AutoSize = False
          Caption = #49688#49888#44144#48512' '#47704#53944
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 111
          AnchorX = 283
          AnchorY = 33
        end
        object cb_1: TcxComboBox
          Left = 340
          Top = 19
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.ImeMode = imSAlpha
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          OnKeyDown = cb_1KeyDown
          Height = 26
          Width = 107
        end
      end
      object GroupBox5: TGroupBox
        Left = 455
        Top = 213
        Width = 448
        Height = 53
        Caption = 'VIP '#46972#50864#54021
        Color = clBtnFace
        Enabled = False
        ParentBackground = False
        ParentColor = False
        TabOrder = 11
        Visible = False
        object Shape17: TShape
          Left = 3
          Top = 20
          Width = 116
          Height = 24
          Pen.Color = 12566402
        end
        object Shape18: TShape
          Left = 225
          Top = 20
          Width = 116
          Height = 24
          Pen.Color = 12566402
        end
        object cxLabel17: TcxLabel
          Left = 6
          Top = 24
          AutoSize = False
          Caption = 'VIP'#46972#50864#54021' '#49324#50857#50668#48512
          Enabled = False
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 111
          AnchorX = 62
          AnchorY = 33
        end
        object cb_10: TcxComboBox
          Left = 118
          Top = 19
          AutoSize = False
          Enabled = False
          Properties.DropDownListStyle = lsFixedList
          Properties.ImeMode = imSAlpha
          Properties.Items.Strings = (
            #48120#49324#50857
            #49324#50857)
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Text = #48120#49324#50857
          Height = 26
          Width = 107
        end
        object cxLabel18: TcxLabel
          Left = 227
          Top = 24
          AutoSize = False
          Caption = #49324#50857#44536#47353
          Enabled = False
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 111
          AnchorX = 283
          AnchorY = 33
        end
        object cb_11: TcxComboBox
          Left = 340
          Top = 19
          AutoSize = False
          Enabled = False
          Properties.DropDownListStyle = lsFixedList
          Properties.ImeMode = imSAlpha
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Height = 26
          Width = 107
        end
      end
      object GroupBox6: TGroupBox
        Left = 450
        Top = 324
        Width = 448
        Height = 53
        Caption = 'Call '#46972#50864#54021
        Color = clBtnFace
        Enabled = False
        ParentBackground = False
        ParentColor = False
        TabOrder = 12
        Visible = False
        object Shape19: TShape
          Left = 3
          Top = 20
          Width = 116
          Height = 24
          Pen.Color = 12566402
        end
        object Shape20: TShape
          Left = 225
          Top = 20
          Width = 116
          Height = 24
          Pen.Color = 12566402
        end
        object cxLabel19: TcxLabel
          Left = 6
          Top = 24
          AutoSize = False
          Caption = 'Call'#46972#50864#54021' '#49324#50857#50668#48512
          Enabled = False
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 111
          AnchorX = 62
          AnchorY = 33
        end
        object cb_12: TcxComboBox
          Left = 118
          Top = 19
          AutoSize = False
          Enabled = False
          Properties.DropDownListStyle = lsFixedList
          Properties.ImeMode = imSAlpha
          Properties.Items.Strings = (
            #48120#49324#50857
            #49324#50857)
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Text = #48120#49324#50857
          Height = 26
          Width = 107
        end
        object cxLabel21: TcxLabel
          Left = 227
          Top = 24
          AutoSize = False
          Caption = #46356#54260#53944' '#44536#47353
          Enabled = False
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 111
          AnchorX = 283
          AnchorY = 33
        end
        object cb_13: TcxComboBox
          Left = 340
          Top = 19
          AutoSize = False
          Enabled = False
          Properties.DropDownListStyle = lsFixedList
          Properties.ImeMode = imSAlpha
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Height = 26
          Width = 107
        end
      end
      object cb_14: TcxComboBox
        Left = 120
        Top = 437
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.ImeMode = imSAlpha
        Properties.Items.Strings = (
          '1'#49692#50948
          '2'#49692#50948)
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
        Text = '1'#49692#50948
        OnKeyDown = cb_14KeyDown
        Height = 26
        Width = 107
      end
      object cxLabel24: TcxLabel
        Left = 7
        Top = 442
        AutoSize = False
        Caption = '* '#54840#48516#48176' '#50864#49440#49692#50948
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        Height = 17
        Width = 111
        AnchorX = 63
        AnchorY = 451
      end
      object cxLabel25: TcxLabel
        Left = 160
        Top = 186
        AutoSize = False
        Caption = '* '#45824#44592#51473#51064#44256#44061' '#49353#49345
        Enabled = False
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        Visible = False
        Height = 17
        Width = 111
        AnchorX = 216
        AnchorY = 195
      end
      object lb_ColorSet: TcxLabel
        Left = 271
        Top = 181
        AutoSize = False
        Caption = #49436#48708#49828#47749
        Enabled = False
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Style.Color = clWhite
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Visible = False
        OnClick = lb_ColorSetClick
        OnKeyDown = lb_ColorSetKeyDown
        Height = 26
        Width = 107
        AnchorX = 325
        AnchorY = 194
      end
      object edt_1: TcxTextEdit
        Left = 86
        Top = 1
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnKeyDown = edt_1KeyDown
        OnKeyPress = edt_1KeyPress
        Height = 26
        Width = 140
      end
      object edt_2: TcxTextEdit
        Left = 86
        Top = 27
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        OnKeyDown = edt_2KeyDown
        OnKeyPress = edt_2KeyPress
        Height = 26
        Width = 140
      end
      object edt_12: TcxTextEdit
        Left = 310
        Top = 1
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        OnKeyDown = edt_12KeyDown
        OnKeyPress = edt_12KeyPress
        Height = 26
        Width = 140
      end
      object GroupBox7: TGroupBox
        Left = 7
        Top = 110
        Width = 438
        Height = 68
        Caption = ' IPCC '#49324#50857' '#50668#48512
        Color = clWhite
        ParentBackground = False
        ParentColor = False
        TabOrder = 6
        object chk_App: TcxCheckBox
          Left = 295
          Top = 43
          Caption = ' '#50612#54540' '#50672#46041
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 7
          Transparent = True
        end
        object chk_TellTak: TcxCheckBox
          Left = 3
          Top = 43
          Caption = #53084#47560#45320#53441#49569
          ParentColor = False
          Style.Color = clWhite
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          Style.Shadow = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 4
          Transparent = True
        end
        object chk_Tell: TcxCheckBox
          Left = 3
          Top = 18
          Caption = #53084#47560#45320
          ParentBackground = False
          ParentColor = False
          Properties.OnChange = chk_TellPropertiesChange
          Style.Color = clWindow
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 0
          Transparent = True
        end
        object chk_Logi: TcxCheckBox
          Left = 99
          Top = 18
          Caption = #47196#51648#50672#46041
          ParentBackground = False
          ParentColor = False
          Style.Color = clWindow
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
        end
        object chk_CallMart: TcxCheckBox
          Left = 194
          Top = 18
          Caption = #53084#47560#53944#50672#46041
          ParentBackground = False
          ParentColor = False
          Style.Color = clWindow
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 2
          Transparent = True
        end
        object chk_ICon: TcxCheckBox
          Left = 295
          Top = 18
          Caption = #50500#51060#53080#50672#46041
          ParentBackground = False
          ParentColor = False
          Style.Color = clWindow
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 3
          Transparent = True
        end
        object chk_G365: TcxCheckBox
          Left = 99
          Top = 43
          Caption = 'G365'#50672#46041
          ParentBackground = False
          ParentColor = False
          Style.Color = clWindow
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 5
          Transparent = True
        end
        object chk_InSung: TcxCheckBox
          Left = 194
          Top = 43
          Caption = #51064#49457#50672#46041
          ParentBackground = False
          ParentColor = False
          Style.Color = clWindow
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 6
          Transparent = True
        end
      end
    end
    object PnlTitle: TPanel
      Left = 1
      Top = 1
      Width = 456
      Height = 32
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '   '#51064#48148#50868#46300' '#49444#51221' '#52628#44032'/'#49688#51221
      Color = 12566463
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      OnMouseDown = PnlTitleMouseDown
      DesignSize = (
        456
        32)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 456
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = False
        ExplicitWidth = 578
      end
      object btnCancel: TcxButton
        Left = 381
        Top = 8
        Width = 75
        Height = 22
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #52712#49548'/'#45803#44592
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        OnClick = btnCancelClick
      end
      object btnEdit: TcxButton
        Left = 304
        Top = 8
        Width = 75
        Height = 22
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #51200#51109'/'#49688#51221
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        OnClick = btnEditClick
      end
    end
  end
  object ColorDialog1: TColorDialog
    Left = 196
    Top = 593
  end
end

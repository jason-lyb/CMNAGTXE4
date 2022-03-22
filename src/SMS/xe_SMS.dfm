object Frm_SMS: TFrm_SMS
  Left = 2719
  Top = 168
  BorderStyle = bsNone
  Caption = 'SMS'
  ClientHeight = 709
  ClientWidth = 1121
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 1121
    Height = 709
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet2
    Properties.CustomButtons.Buttons = <>
    OnChange = cxPageControl1Change
    ClientRectBottom = 703
    ClientRectLeft = 2
    ClientRectRight = 1115
    ClientRectTop = 27
    object cxTabSheet1: TcxTabSheet
      Tag = 1001
      Caption = 'SMS'#48156#49569
      ImageIndex = 0
      object PnlMainA1: TPanel
        Left = 0
        Top = 0
        Width = 1113
        Height = 676
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object pnl4: TPanel
          AlignWithMargins = True
          Left = 302
          Top = 136
          Width = 808
          Height = 537
          Align = alClient
          BevelKind = bkFlat
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 3
          object cxPageControl2: TcxPageControl
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 798
            Height = 527
            Align = alClient
            TabOrder = 0
            Properties.ActivePage = cxtbsht3
            Properties.CustomButtons.Buttons = <>
            Properties.ShowFrame = True
            Properties.TabSlants.Positions = [spRight]
            ClientRectBottom = 521
            ClientRectLeft = 2
            ClientRectRight = 792
            ClientRectTop = 27
            object cxtbsht3: TcxTabSheet
              Caption = #45236#48372#44288#54632
              ImageIndex = 2
              object cxScrollBox1: TcxScrollBox
                Left = 0
                Top = 0
                Width = 790
                Height = 494
                Align = alClient
                TabOrder = 0
                object btnSetMsg1: TcxButton
                  Tag = 1
                  Left = 49
                  Top = 145
                  Width = 100
                  Height = 19
                  Cursor = crHandPoint
                  Caption = #49440#53469#54616#44592
                  LookAndFeel.Kind = lfFlat
                  LookAndFeel.NativeStyle = False
                  LookAndFeel.SkinName = 'Sharp'
                  TabOrder = 0
                  OnClick = btnSetMsg1Click
                end
                object btnSetMsg2: TcxButton
                  Tag = 2
                  Left = 195
                  Top = 145
                  Width = 100
                  Height = 19
                  Cursor = crHandPoint
                  Caption = #49440#53469#54616#44592
                  LookAndFeel.Kind = lfFlat
                  LookAndFeel.NativeStyle = False
                  LookAndFeel.SkinName = 'Sharp'
                  TabOrder = 1
                  OnClick = btnSetMsg1Click
                end
                object btnSetMsg3: TcxButton
                  Tag = 3
                  Left = 341
                  Top = 145
                  Width = 100
                  Height = 19
                  Cursor = crHandPoint
                  Caption = #49440#53469#54616#44592
                  LookAndFeel.Kind = lfFlat
                  LookAndFeel.NativeStyle = False
                  LookAndFeel.SkinName = 'Sharp'
                  TabOrder = 2
                  OnClick = btnSetMsg1Click
                end
                object btnSetMsg4: TcxButton
                  Tag = 4
                  Left = 487
                  Top = 145
                  Width = 100
                  Height = 19
                  Cursor = crHandPoint
                  Caption = #49440#53469#54616#44592
                  LookAndFeel.Kind = lfFlat
                  LookAndFeel.NativeStyle = False
                  LookAndFeel.SkinName = 'Sharp'
                  TabOrder = 3
                  OnClick = btnSetMsg1Click
                end
                object btnSetMsg5: TcxButton
                  Tag = 5
                  Left = 49
                  Top = 306
                  Width = 100
                  Height = 19
                  Cursor = crHandPoint
                  Caption = #49440#53469#54616#44592
                  LookAndFeel.Kind = lfFlat
                  LookAndFeel.NativeStyle = False
                  LookAndFeel.SkinName = 'Sharp'
                  TabOrder = 4
                  OnClick = btnSetMsg1Click
                end
                object btnSetMsg6: TcxButton
                  Tag = 6
                  Left = 195
                  Top = 306
                  Width = 100
                  Height = 19
                  Cursor = crHandPoint
                  Caption = #49440#53469#54616#44592
                  LookAndFeel.Kind = lfFlat
                  LookAndFeel.NativeStyle = False
                  LookAndFeel.SkinName = 'Sharp'
                  TabOrder = 5
                  OnClick = btnSetMsg1Click
                end
                object btnSetMsg7: TcxButton
                  Tag = 7
                  Left = 341
                  Top = 306
                  Width = 100
                  Height = 19
                  Cursor = crHandPoint
                  Caption = #49440#53469#54616#44592
                  LookAndFeel.Kind = lfFlat
                  LookAndFeel.NativeStyle = False
                  LookAndFeel.SkinName = 'Sharp'
                  TabOrder = 6
                  OnClick = btnSetMsg1Click
                end
                object btnSetMsg8: TcxButton
                  Tag = 8
                  Left = 487
                  Top = 306
                  Width = 100
                  Height = 19
                  Cursor = crHandPoint
                  Caption = #49440#53469#54616#44592
                  LookAndFeel.Kind = lfFlat
                  LookAndFeel.NativeStyle = False
                  LookAndFeel.SkinName = 'Sharp'
                  TabOrder = 7
                  OnClick = btnSetMsg1Click
                end
                object btnSetMsg9: TcxButton
                  Tag = 9
                  Left = 49
                  Top = 468
                  Width = 100
                  Height = 19
                  Cursor = crHandPoint
                  Caption = #49440#53469#54616#44592
                  LookAndFeel.Kind = lfFlat
                  LookAndFeel.NativeStyle = False
                  LookAndFeel.SkinName = 'Sharp'
                  TabOrder = 8
                  OnClick = btnSetMsg1Click
                end
                object cxLabel10: TcxLabel
                  Left = 444
                  Top = 166
                  AutoSize = False
                  ParentColor = False
                  Style.BorderStyle = ebsOffice11
                  Style.Color = 15589851
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Properties.ShadowedColor = clGray
                  Height = 140
                  Width = 145
                  AnchorX = 517
                  AnchorY = 236
                end
                object cxLabel12: TcxLabel
                  Left = 175
                  Top = 395
                  AutoSize = False
                  Caption = #51312#54633#54616#50668' '#49324#50857#54616#49464#50836
                  Transparent = True
                  Height = 17
                  Width = 299
                end
                object cxLabel15: TcxLabel
                  Left = 158
                  Top = 412
                  AutoSize = False
                  Caption = ' ex) '#39#12609#39' + '#54620#51088#53412' = '#39#65283#65286#65290'....'#39
                  Transparent = True
                  Height = 17
                  Width = 331
                end
                object cxLabel18: TcxLabel
                  Left = 152
                  Top = 5
                  AutoSize = False
                  ParentColor = False
                  Style.BorderStyle = ebsOffice11
                  Style.Color = 15589851
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Properties.ShadowedColor = clGray
                  Height = 140
                  Width = 145
                  AnchorX = 225
                  AnchorY = 75
                end
                object cxLabel19: TcxLabel
                  Left = 444
                  Top = 5
                  AutoSize = False
                  ParentColor = False
                  Style.BorderStyle = ebsOffice11
                  Style.Color = 15589851
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Properties.ShadowedColor = clGray
                  Height = 140
                  Width = 145
                  AnchorX = 517
                  AnchorY = 75
                end
                object cxLabel3: TcxLabel
                  Left = 158
                  Top = 360
                  AutoSize = False
                  Caption = #8251' '#51077#47141#48169#48277' '#47560#50864#49828' '#53364#47533#54980' '#51077#47141#54616#47732' '#51088#46041#51200#51109' '#46121#45768#45796'.'
                  Transparent = True
                  Height = 17
                  Width = 331
                end
                object cxLabel4: TcxLabel
                  Left = 156
                  Top = 378
                  AutoSize = False
                  Caption = #8251' '#53945#49688#47928#51088#45716' '#39'F5 '#53412#39' '#46608#45716' '#54620#44544' '#51088#51020#44284' '#54620#51088#53412#47484' '
                  Transparent = True
                  Height = 17
                  Width = 341
                end
                object cxLabel5: TcxLabel
                  Left = 6
                  Top = 5
                  AutoSize = False
                  ParentColor = False
                  Style.BorderStyle = ebsOffice11
                  Style.Color = 15589851
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Properties.ShadowedColor = clGray
                  Height = 140
                  Width = 145
                  AnchorX = 79
                  AnchorY = 75
                end
                object cxLabel6: TcxLabel
                  Left = 152
                  Top = 166
                  AutoSize = False
                  ParentColor = False
                  Style.BorderStyle = ebsOffice11
                  Style.Color = 15589851
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Properties.ShadowedColor = clGray
                  Height = 140
                  Width = 145
                  AnchorX = 225
                  AnchorY = 236
                end
                object cxLabel7: TcxLabel
                  Left = 298
                  Top = 5
                  AutoSize = False
                  ParentColor = False
                  Style.BorderStyle = ebsOffice11
                  Style.Color = 15589851
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Properties.ShadowedColor = clGray
                  Height = 140
                  Width = 145
                  AnchorX = 371
                  AnchorY = 75
                end
                object cxLabel8: TcxLabel
                  Left = 6
                  Top = 328
                  AutoSize = False
                  ParentColor = False
                  Style.BorderStyle = ebsOffice11
                  Style.Color = 15589851
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Properties.ShadowedColor = clGray
                  Height = 140
                  Width = 145
                  AnchorX = 79
                  AnchorY = 398
                end
                object cxLabel9: TcxLabel
                  Left = 298
                  Top = 166
                  AutoSize = False
                  ParentColor = False
                  Style.BorderStyle = ebsOffice11
                  Style.Color = 15589851
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Properties.ShadowedColor = clGray
                  Height = 140
                  Width = 145
                  AnchorX = 371
                  AnchorY = 236
                end
                object cxLabel96: TcxLabel
                  Left = 6
                  Top = 166
                  AutoSize = False
                  ParentColor = False
                  Style.BorderStyle = ebsOffice11
                  Style.Color = 15589851
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Properties.ShadowedColor = clGray
                  Height = 140
                  Width = 145
                  AnchorX = 79
                  AnchorY = 236
                end
                object lb_Cnt1: TcxLabel
                  Tag = 1
                  Left = 6
                  Top = 144
                  AutoSize = False
                  Caption = '0'#44148
                  Style.BorderStyle = ebsFlat
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Transparent = True
                  Height = 20
                  Width = 42
                  AnchorX = 27
                  AnchorY = 154
                end
                object lb_Cnt2: TcxLabel
                  Tag = 2
                  Left = 152
                  Top = 144
                  AutoSize = False
                  Caption = '0'#44148
                  Style.BorderStyle = ebsFlat
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Transparent = True
                  Height = 20
                  Width = 42
                  AnchorX = 173
                  AnchorY = 154
                end
                object lb_Cnt3: TcxLabel
                  Tag = 3
                  Left = 298
                  Top = 144
                  AutoSize = False
                  Caption = '0'#44148
                  Style.BorderStyle = ebsFlat
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Transparent = True
                  Height = 20
                  Width = 42
                  AnchorX = 319
                  AnchorY = 154
                end
                object lb_Cnt4: TcxLabel
                  Tag = 4
                  Left = 444
                  Top = 144
                  AutoSize = False
                  Caption = '0'#44148
                  Style.BorderStyle = ebsFlat
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Transparent = True
                  Height = 20
                  Width = 42
                  AnchorX = 465
                  AnchorY = 154
                end
                object lb_Cnt5: TcxLabel
                  Tag = 5
                  Left = 7
                  Top = 305
                  AutoSize = False
                  Caption = '0'#44148
                  Style.BorderStyle = ebsFlat
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Transparent = True
                  Height = 20
                  Width = 42
                  AnchorX = 28
                  AnchorY = 315
                end
                object lb_Cnt6: TcxLabel
                  Tag = 6
                  Left = 152
                  Top = 305
                  AutoSize = False
                  Caption = '0'#44148
                  Style.BorderStyle = ebsFlat
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Transparent = True
                  Height = 20
                  Width = 42
                  AnchorX = 173
                  AnchorY = 315
                end
                object lb_Cnt7: TcxLabel
                  Tag = 7
                  Left = 298
                  Top = 305
                  AutoSize = False
                  Caption = '0'#44148
                  Style.BorderStyle = ebsFlat
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Transparent = True
                  Height = 20
                  Width = 42
                  AnchorX = 319
                  AnchorY = 315
                end
                object lb_Cnt8: TcxLabel
                  Tag = 8
                  Left = 444
                  Top = 305
                  AutoSize = False
                  Caption = '0'#44148
                  Style.BorderStyle = ebsFlat
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Transparent = True
                  Height = 20
                  Width = 42
                  AnchorX = 465
                  AnchorY = 315
                end
                object lb_Cnt9: TcxLabel
                  Tag = 9
                  Left = 7
                  Top = 467
                  AutoSize = False
                  Caption = '0'#44148
                  Style.BorderStyle = ebsFlat
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Transparent = True
                  Height = 20
                  Width = 42
                  AnchorX = 28
                  AnchorY = 477
                end
                object lbMaxLen1: TcxLabel
                  Tag = 1
                  Left = 64
                  Top = 128
                  Caption = '/ 90 Byte'
                  ParentColor = False
                  Style.Color = 15589851
                  Style.LookAndFeel.NativeStyle = True
                  StyleDisabled.LookAndFeel.NativeStyle = True
                  StyleFocused.LookAndFeel.NativeStyle = True
                  StyleHot.LookAndFeel.NativeStyle = True
                end
                object lbMaxLen2: TcxLabel
                  Tag = 2
                  Left = 212
                  Top = 128
                  Caption = '/ 90 Byte'
                  ParentColor = False
                  Style.Color = 15589851
                  Style.LookAndFeel.NativeStyle = True
                  StyleDisabled.LookAndFeel.NativeStyle = True
                  StyleFocused.LookAndFeel.NativeStyle = True
                  StyleHot.LookAndFeel.NativeStyle = True
                end
                object lbMaxLen3: TcxLabel
                  Tag = 3
                  Left = 359
                  Top = 128
                  Caption = '/ 90 Byte'
                  ParentColor = False
                  Style.Color = 15589851
                  Style.LookAndFeel.NativeStyle = True
                  StyleDisabled.LookAndFeel.NativeStyle = True
                  StyleFocused.LookAndFeel.NativeStyle = True
                  StyleHot.LookAndFeel.NativeStyle = True
                end
                object lbMaxLen4: TcxLabel
                  Tag = 4
                  Left = 504
                  Top = 128
                  Caption = '/ 90 Byte'
                  ParentColor = False
                  Style.Color = 15589851
                  Style.LookAndFeel.NativeStyle = True
                  StyleDisabled.LookAndFeel.NativeStyle = True
                  StyleFocused.LookAndFeel.NativeStyle = True
                  StyleHot.LookAndFeel.NativeStyle = True
                end
                object lbMaxLen5: TcxLabel
                  Tag = 5
                  Left = 64
                  Top = 289
                  Caption = '/ 90 Byte'
                  ParentColor = False
                  Style.Color = 15589851
                  Style.LookAndFeel.NativeStyle = True
                  StyleDisabled.LookAndFeel.NativeStyle = True
                  StyleFocused.LookAndFeel.NativeStyle = True
                  StyleHot.LookAndFeel.NativeStyle = True
                end
                object lbMaxLen6: TcxLabel
                  Tag = 6
                  Left = 212
                  Top = 289
                  Caption = '/ 90 Byte'
                  ParentColor = False
                  Style.Color = 15589851
                  Style.LookAndFeel.NativeStyle = True
                  StyleDisabled.LookAndFeel.NativeStyle = True
                  StyleFocused.LookAndFeel.NativeStyle = True
                  StyleHot.LookAndFeel.NativeStyle = True
                end
                object lbMaxLen7: TcxLabel
                  Tag = 7
                  Left = 359
                  Top = 289
                  Caption = '/ 90 Byte'
                  ParentColor = False
                  Style.Color = 15589851
                  Style.LookAndFeel.NativeStyle = True
                  StyleDisabled.LookAndFeel.NativeStyle = True
                  StyleFocused.LookAndFeel.NativeStyle = True
                  StyleHot.LookAndFeel.NativeStyle = True
                end
                object lbMaxLen8: TcxLabel
                  Tag = 8
                  Left = 504
                  Top = 289
                  Caption = '/ 90 Byte'
                  ParentColor = False
                  Style.Color = 15589851
                  Style.LookAndFeel.NativeStyle = True
                  StyleDisabled.LookAndFeel.NativeStyle = True
                  StyleFocused.LookAndFeel.NativeStyle = True
                  StyleHot.LookAndFeel.NativeStyle = True
                end
                object lbMaxLen9: TcxLabel
                  Tag = 9
                  Left = 57
                  Top = 451
                  Caption = '/ 90 Byte'
                  ParentColor = False
                  Style.Color = 15589851
                  Style.LookAndFeel.NativeStyle = True
                  StyleDisabled.LookAndFeel.NativeStyle = True
                  StyleFocused.LookAndFeel.NativeStyle = True
                  StyleHot.LookAndFeel.NativeStyle = True
                end
                object lbSrtLen1: TcxLabel
                  Tag = 1
                  Left = 44
                  Top = 128
                  Caption = '00'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.Alignment.Vert = taVCenter
                  Transparent = True
                  AnchorX = 60
                  AnchorY = 136
                end
                object lbSrtLen2: TcxLabel
                  Tag = 2
                  Left = 192
                  Top = 128
                  Caption = '00'
                  ParentColor = False
                  Style.Color = 15589851
                  Properties.Alignment.Horz = taRightJustify
                  Properties.Alignment.Vert = taVCenter
                  AnchorX = 208
                  AnchorY = 136
                end
                object lbSrtLen3: TcxLabel
                  Tag = 3
                  Left = 339
                  Top = 128
                  Caption = '00'
                  ParentColor = False
                  Style.Color = 15589851
                  Properties.Alignment.Horz = taRightJustify
                  Properties.Alignment.Vert = taVCenter
                  AnchorX = 355
                  AnchorY = 136
                end
                object lbSrtLen4: TcxLabel
                  Tag = 4
                  Left = 484
                  Top = 128
                  Caption = '00'
                  ParentColor = False
                  Style.Color = 15589851
                  Properties.Alignment.Horz = taRightJustify
                  Properties.Alignment.Vert = taVCenter
                  AnchorX = 500
                  AnchorY = 136
                end
                object lbSrtLen5: TcxLabel
                  Tag = 5
                  Left = 44
                  Top = 289
                  Caption = '00'
                  ParentColor = False
                  Style.Color = 15589851
                  Properties.Alignment.Horz = taRightJustify
                  Properties.Alignment.Vert = taVCenter
                  AnchorX = 60
                  AnchorY = 297
                end
                object lbSrtLen6: TcxLabel
                  Tag = 6
                  Left = 192
                  Top = 289
                  Caption = '00'
                  ParentColor = False
                  Style.Color = 15589851
                  Properties.Alignment.Horz = taRightJustify
                  Properties.Alignment.Vert = taVCenter
                  AnchorX = 208
                  AnchorY = 297
                end
                object lbSrtLen7: TcxLabel
                  Tag = 7
                  Left = 339
                  Top = 289
                  Caption = '00'
                  ParentColor = False
                  Style.Color = 15589851
                  Properties.Alignment.Horz = taRightJustify
                  Properties.Alignment.Vert = taVCenter
                  AnchorX = 355
                  AnchorY = 297
                end
                object lbSrtLen8: TcxLabel
                  Tag = 8
                  Left = 484
                  Top = 289
                  Caption = '00'
                  ParentColor = False
                  Style.Color = 15589851
                  Properties.Alignment.Horz = taRightJustify
                  Properties.Alignment.Vert = taVCenter
                  AnchorX = 500
                  AnchorY = 297
                end
                object lbSrtLen9: TcxLabel
                  Tag = 9
                  Left = 37
                  Top = 451
                  Caption = '00'
                  ParentColor = False
                  Style.Color = 15589851
                  Properties.Alignment.Horz = taRightJustify
                  Properties.Alignment.Vert = taVCenter
                  AnchorX = 53
                  AnchorY = 459
                end
                object Memo1: TcxMemo
                  Tag = 1
                  Left = 11
                  Top = 10
                  ParentFont = False
                  Properties.ImeMode = imSHanguel
                  Properties.MaxLength = 0
                  Properties.ScrollBars = ssVertical
                  Properties.OnChange = Memo1PropertiesChange
                  Style.BorderStyle = ebsNone
                  Style.Color = 15589851
                  Style.Edges = []
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = #44404#47548
                  Style.Font.Style = []
                  Style.LookAndFeel.SkinName = 'Sharp'
                  Style.IsFontAssigned = True
                  StyleDisabled.LookAndFeel.SkinName = 'Sharp'
                  StyleFocused.LookAndFeel.SkinName = 'Sharp'
                  StyleHot.LookAndFeel.SkinName = 'Sharp'
                  TabOrder = 49
                  OnKeyDown = mm_messageKeyDown
                  OnKeyPress = mm_messageKeyPress
                  OnKeyUp = Memo1KeyUp
                  OnMouseUp = mm_messageMouseUp
                  Height = 116
                  Width = 133
                end
                object Memo10: TcxMemo
                  Tag = 8
                  Left = 449
                  Top = 171
                  ParentFont = False
                  Properties.ImeMode = imSHanguel
                  Properties.MaxLength = 0
                  Properties.ScrollBars = ssVertical
                  Properties.OnChange = Memo1PropertiesChange
                  Style.BorderStyle = ebsNone
                  Style.Color = 15589851
                  Style.Edges = []
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = #44404#47548
                  Style.Font.Style = []
                  Style.LookAndFeel.SkinName = 'Sharp'
                  Style.IsFontAssigned = True
                  StyleDisabled.LookAndFeel.SkinName = 'Sharp'
                  StyleFocused.LookAndFeel.SkinName = 'Sharp'
                  StyleHot.LookAndFeel.SkinName = 'Sharp'
                  TabOrder = 50
                  OnKeyDown = mm_messageKeyDown
                  OnKeyPress = mm_messageKeyPress
                  OnKeyUp = Memo1KeyUp
                  OnMouseUp = mm_messageMouseUp
                  Height = 116
                  Width = 133
                end
                object Memo11: TcxMemo
                  Tag = 9
                  Left = 11
                  Top = 334
                  ParentFont = False
                  Properties.ImeMode = imSHanguel
                  Properties.MaxLength = 0
                  Properties.ScrollBars = ssVertical
                  Properties.OnChange = Memo1PropertiesChange
                  Style.BorderStyle = ebsNone
                  Style.Color = 15589851
                  Style.Edges = []
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = #44404#47548
                  Style.Font.Style = []
                  Style.LookAndFeel.SkinName = 'Sharp'
                  Style.IsFontAssigned = True
                  StyleDisabled.LookAndFeel.SkinName = 'Sharp'
                  StyleFocused.LookAndFeel.SkinName = 'Sharp'
                  StyleHot.LookAndFeel.SkinName = 'Sharp'
                  TabOrder = 51
                  OnKeyDown = mm_messageKeyDown
                  OnKeyPress = mm_messageKeyPress
                  OnKeyUp = Memo1KeyUp
                  OnMouseUp = mm_messageMouseUp
                  Height = 116
                  Width = 133
                end
                object Memo2: TcxMemo
                  Tag = 2
                  Left = 157
                  Top = 10
                  ParentFont = False
                  Properties.ImeMode = imSHanguel
                  Properties.MaxLength = 0
                  Properties.ScrollBars = ssVertical
                  Properties.OnChange = Memo1PropertiesChange
                  Style.BorderStyle = ebsNone
                  Style.Color = 15589851
                  Style.Edges = []
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = #44404#47548
                  Style.Font.Style = []
                  Style.LookAndFeel.SkinName = 'Sharp'
                  Style.IsFontAssigned = True
                  StyleDisabled.LookAndFeel.SkinName = 'Sharp'
                  StyleFocused.LookAndFeel.SkinName = 'Sharp'
                  StyleHot.LookAndFeel.SkinName = 'Sharp'
                  TabOrder = 52
                  OnKeyDown = mm_messageKeyDown
                  OnKeyPress = mm_messageKeyPress
                  OnKeyUp = Memo1KeyUp
                  OnMouseUp = mm_messageMouseUp
                  Height = 116
                  Width = 133
                end
                object Memo3: TcxMemo
                  Tag = 3
                  Left = 303
                  Top = 10
                  ParentFont = False
                  Properties.ImeMode = imSHanguel
                  Properties.MaxLength = 0
                  Properties.ScrollBars = ssVertical
                  Properties.OnChange = Memo1PropertiesChange
                  Style.BorderStyle = ebsNone
                  Style.Color = 15589851
                  Style.Edges = []
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = #44404#47548
                  Style.Font.Style = []
                  Style.LookAndFeel.SkinName = 'Sharp'
                  Style.IsFontAssigned = True
                  StyleDisabled.LookAndFeel.SkinName = 'Sharp'
                  StyleFocused.LookAndFeel.SkinName = 'Sharp'
                  StyleHot.LookAndFeel.SkinName = 'Sharp'
                  TabOrder = 53
                  OnKeyDown = mm_messageKeyDown
                  OnKeyPress = mm_messageKeyPress
                  OnKeyUp = Memo1KeyUp
                  OnMouseUp = mm_messageMouseUp
                  Height = 116
                  Width = 133
                end
                object Memo5: TcxMemo
                  Tag = 4
                  Left = 449
                  Top = 10
                  ParentFont = False
                  Properties.ImeMode = imSHanguel
                  Properties.MaxLength = 0
                  Properties.ScrollBars = ssVertical
                  Properties.OnChange = Memo1PropertiesChange
                  Style.BorderStyle = ebsNone
                  Style.Color = 15589851
                  Style.Edges = []
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = #44404#47548
                  Style.Font.Style = []
                  Style.LookAndFeel.SkinName = 'Sharp'
                  Style.IsFontAssigned = True
                  StyleDisabled.LookAndFeel.SkinName = 'Sharp'
                  StyleFocused.LookAndFeel.SkinName = 'Sharp'
                  StyleHot.LookAndFeel.SkinName = 'Sharp'
                  TabOrder = 54
                  OnKeyDown = mm_messageKeyDown
                  OnKeyPress = mm_messageKeyPress
                  OnKeyUp = Memo1KeyUp
                  OnMouseUp = mm_messageMouseUp
                  Height = 116
                  Width = 133
                end
                object Memo6: TcxMemo
                  Tag = 5
                  Left = 11
                  Top = 171
                  ParentFont = False
                  Properties.ImeMode = imSHanguel
                  Properties.MaxLength = 0
                  Properties.ScrollBars = ssVertical
                  Properties.OnChange = Memo1PropertiesChange
                  Style.BorderStyle = ebsNone
                  Style.Color = 15589851
                  Style.Edges = []
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = #44404#47548
                  Style.Font.Style = []
                  Style.LookAndFeel.SkinName = 'Sharp'
                  Style.IsFontAssigned = True
                  StyleDisabled.LookAndFeel.SkinName = 'Sharp'
                  StyleFocused.LookAndFeel.SkinName = 'Sharp'
                  StyleHot.LookAndFeel.SkinName = 'Sharp'
                  TabOrder = 55
                  OnKeyDown = mm_messageKeyDown
                  OnKeyPress = mm_messageKeyPress
                  OnKeyUp = Memo1KeyUp
                  OnMouseUp = mm_messageMouseUp
                  Height = 116
                  Width = 133
                end
                object Memo7: TcxMemo
                  Tag = 6
                  Left = 157
                  Top = 171
                  ParentFont = False
                  Properties.ImeMode = imSHanguel
                  Properties.MaxLength = 0
                  Properties.ScrollBars = ssVertical
                  Properties.OnChange = Memo1PropertiesChange
                  Style.BorderStyle = ebsNone
                  Style.Color = 15589851
                  Style.Edges = []
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = #44404#47548
                  Style.Font.Style = []
                  Style.LookAndFeel.SkinName = 'Sharp'
                  Style.IsFontAssigned = True
                  StyleDisabled.LookAndFeel.SkinName = 'Sharp'
                  StyleFocused.LookAndFeel.SkinName = 'Sharp'
                  StyleHot.LookAndFeel.SkinName = 'Sharp'
                  TabOrder = 56
                  OnKeyDown = mm_messageKeyDown
                  OnKeyPress = mm_messageKeyPress
                  OnKeyUp = Memo1KeyUp
                  OnMouseUp = mm_messageMouseUp
                  Height = 116
                  Width = 133
                end
                object Memo9: TcxMemo
                  Tag = 7
                  Left = 303
                  Top = 171
                  ParentFont = False
                  Properties.ImeMode = imSHanguel
                  Properties.MaxLength = 0
                  Properties.ScrollBars = ssVertical
                  Properties.OnChange = Memo1PropertiesChange
                  Style.BorderStyle = ebsNone
                  Style.Color = 15589851
                  Style.Edges = []
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = #44404#47548
                  Style.Font.Style = []
                  Style.LookAndFeel.SkinName = 'Sharp'
                  Style.IsFontAssigned = True
                  StyleDisabled.LookAndFeel.SkinName = 'Sharp'
                  StyleFocused.LookAndFeel.SkinName = 'Sharp'
                  StyleHot.LookAndFeel.SkinName = 'Sharp'
                  TabOrder = 57
                  OnKeyDown = mm_messageKeyDown
                  OnKeyPress = mm_messageKeyPress
                  OnKeyUp = Memo1KeyUp
                  OnMouseUp = mm_messageMouseUp
                  Height = 116
                  Width = 133
                end
              end
            end
            object cxtbsht4: TcxTabSheet
              AlignWithMargins = True
              Caption = #51204#49569#47700#49884#51648'(20'#44148' '#48120#47532#48372#44592')'
              ImageIndex = 0
              object AdvProgress1: TAdvProgressBar
                Left = 0
                Top = 468
                Width = 784
                Height = 20
                Align = alBottom
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = []
                Level0ColorTo = 14811105
                Level1ColorTo = 13303807
                Level2Color = 5483007
                Level2ColorTo = 11064319
                Level3ColorTo = 13290239
                Level1Perc = 70
                Level2Perc = 90
                Position = 0
                ShowBorder = True
                Version = '1.3.1.0'
                ExplicitTop = 557
                ExplicitWidth = 816
              end
              object Shape8: TShape
                Left = 0
                Top = 465
                Width = 784
                Height = 3
                Align = alBottom
                Pen.Style = psClear
                ExplicitTop = 546
                ExplicitWidth = 790
              end
              object cbbSelect: TcxComboBox
                Left = 10
                Top = 34
                Properties.DropDownListStyle = lsFixedList
                TabOrder = 2
                Width = 86
              end
              object chkAll: TcxCheckBox
                Left = 867
                Top = 39
                TabStop = False
                Caption = #51204#52404
                TabOrder = 5
                Transparent = True
              end
              object cxedKey: TcxTextEdit
                Left = 102
                Top = 34
                Properties.ImeMode = imSHanguel
                TabOrder = 3
                Width = 120
              end
              object cxlb1: TcxLabel
                Left = 10
                Top = 9
                AutoSize = False
                Caption = #49548#49549
                ParentColor = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 16441805
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Height = 18
                Width = 80
                AnchorX = 50
                AnchorY = 18
              end
              object cxGridMsgList: TcxGrid
                Left = 0
                Top = 0
                Width = 784
                Height = 465
                Align = alClient
                BevelInner = bvNone
                BevelOuter = bvNone
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #44404#47548
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                LookAndFeel.NativeStyle = False
                object cxViewMsgList: TcxGridDBTableView
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
                  OptionsCustomize.ColumnMoving = False
                  OptionsCustomize.ColumnSorting = False
                  OptionsData.Editing = False
                  OptionsSelection.MultiSelect = True
                  OptionsSelection.CellMultiSelect = True
                  OptionsSelection.InvertSelect = False
                  OptionsView.FocusRect = False
                  OptionsView.NoDataToDisplayInfoText = '  '
                  OptionsView.DataRowHeight = 22
                  OptionsView.ExpandButtonsForEmptyDetails = False
                  OptionsView.GridLineColor = clSilver
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderHeight = 23
                  OnColumnHeaderClick = cxViewColumnHeaderClick
                  object cxColViewMsgListColumn5: TcxGridDBColumn
                    Caption = #51088#49324#53076#46300
                    Visible = False
                  end
                  object cxColViewMsgListColumn4: TcxGridDBColumn
                    Caption = #45824#54364#48264#54840
                    Visible = False
                  end
                  object cxColViewMsgListColumn1: TcxGridDBColumn
                    Caption = #48156#49888'('#45824#54364')'#48264#54840
                    DataBinding.FieldName = 'No'
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
                    FooterAlignmentHorz = taRightJustify
                    HeaderAlignmentHorz = taCenter
                    Width = 132
                  end
                  object cxColViewMsgListColumn2: TcxGridDBColumn
                    Caption = #49688#49888'('#44256#44061')'#48264#54840
                    DataBinding.FieldName = #51648#49324#47749
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Vert = taVCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 110
                  end
                  object cxColViewMsgListColumn3: TcxGridDBColumn
                    Caption = #47700#49464#51648
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Vert = taVCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 529
                  end
                  object cxColViewMsgListColumn6: TcxGridDBColumn
                    Caption = #48156#49888'('#45824#54364')'#48264#54840
                    Visible = False
                  end
                  object cxColViewMsgListColumn7: TcxGridDBColumn
                    Caption = #45824#54364'+'#44256#44061#48264#54840
                    Visible = False
                  end
                end
                object cxLevelMsgList: TcxGridLevel
                  GridView = cxViewMsgList
                end
              end
              object cxGridSendSms: TcxGrid
                Left = 60
                Top = 33
                Width = 763
                Height = 113
                BevelInner = bvNone
                BevelOuter = bvNone
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #44404#47548
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                Visible = False
                LookAndFeel.NativeStyle = False
                object cxViewSendSms: TcxGridDBTableView
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
                  OptionsCustomize.ColumnMoving = False
                  OptionsCustomize.ColumnSorting = False
                  OptionsData.Editing = False
                  OptionsSelection.MultiSelect = True
                  OptionsSelection.CellMultiSelect = True
                  OptionsSelection.InvertSelect = False
                  OptionsView.FocusRect = False
                  OptionsView.NoDataToDisplayInfoText = '  '
                  OptionsView.DataRowHeight = 22
                  OptionsView.ExpandButtonsForEmptyDetails = False
                  OptionsView.Footer = True
                  OptionsView.GridLineColor = clSilver
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderHeight = 22
                  object cxCol1: TcxGridDBColumn
                    Caption = #51088#49324#53076#46300
                  end
                  object cxCol2: TcxGridDBColumn
                    Caption = #45824#54364#48264#54840
                  end
                  object cxCol3: TcxGridDBColumn
                    Caption = #48156#49888'('#45824#54364')'#48264#54840
                    DataBinding.FieldName = 'No'
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
                    FooterAlignmentHorz = taRightJustify
                    HeaderAlignmentHorz = taCenter
                    Width = 108
                  end
                  object cxCol4: TcxGridDBColumn
                    Caption = #49688#49888'('#44256#44061')'#48264#54840
                    DataBinding.FieldName = #51648#49324#47749
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Vert = taVCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 116
                  end
                  object cxCol5: TcxGridDBColumn
                    Caption = #47700#49464#51648
                    PropertiesClassName = 'TcxLabelProperties'
                    HeaderAlignmentHorz = taCenter
                    Width = 115
                  end
                  object cxCol6: TcxGridDBColumn
                    Caption = #48156#49888'('#45824#54364')'#48264#54840
                    Width = 103
                  end
                  object cxCol7: TcxGridDBColumn
                    Caption = #45824#54364'+'#44256#44061#48264#54840
                    Width = 104
                  end
                end
                object cxLevelSendSms: TcxGridLevel
                  GridView = cxViewSendSms
                end
              end
              object cxGridKeyNum: TcxGrid
                Left = 60
                Top = 265
                Width = 763
                Height = 109
                BevelInner = bvNone
                BevelOuter = bvNone
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #44404#47548
                Font.Style = []
                ParentFont = False
                TabOrder = 7
                Visible = False
                LookAndFeel.NativeStyle = False
                object cxViewKeyNum: TcxGridDBTableView
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
                  OptionsCustomize.ColumnMoving = False
                  OptionsCustomize.ColumnSorting = False
                  OptionsData.Editing = False
                  OptionsSelection.MultiSelect = True
                  OptionsSelection.CellMultiSelect = True
                  OptionsSelection.InvertSelect = False
                  OptionsView.FocusRect = False
                  OptionsView.NoDataToDisplayInfoText = '  '
                  OptionsView.DataRowHeight = 22
                  OptionsView.ExpandButtonsForEmptyDetails = False
                  OptionsView.Footer = True
                  OptionsView.GridLineColor = clSilver
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderHeight = 22
                  object cxColViewKeyNumColumn1: TcxGridDBColumn
                    Caption = #51648#49324#53076#46300
                  end
                  object cxColViewKeyNumColumn2: TcxGridDBColumn
                    Caption = #45824#54364#48264#54840
                  end
                  object cxColViewKeyNumColumn3: TcxGridDBColumn
                    DataBinding.FieldName = #49324#50857#51088#49688
                  end
                end
                object cxLevelKeyNum: TcxGridLevel
                  GridView = cxViewKeyNum
                end
              end
              object cxGridSms: TcxGrid
                Left = 60
                Top = 152
                Width = 763
                Height = 107
                BevelInner = bvNone
                BevelOuter = bvNone
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #44404#47548
                Font.Style = []
                ParentFont = False
                TabOrder = 6
                Visible = False
                LookAndFeel.NativeStyle = False
                object cxViewSms: TcxGridDBTableView
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
                  DataController.DataModeController.SmartRefresh = True
                  DataController.Filter.Options = [fcoShowOperatorDescription, fcoSoftNull]
                  DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
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
                  OptionsCustomize.ColumnMoving = False
                  OptionsData.Editing = False
                  OptionsSelection.MultiSelect = True
                  OptionsSelection.CellMultiSelect = True
                  OptionsSelection.InvertSelect = False
                  OptionsView.FocusRect = False
                  OptionsView.NoDataToDisplayInfoText = '  '
                  OptionsView.DataRowHeight = 22
                  OptionsView.ExpandButtonsForEmptyDetails = False
                  OptionsView.GridLineColor = clSilver
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderHeight = 22
                  object cxColViewSmsColumn1: TcxGridDBColumn
                    Caption = #51648#49324#53076#46300
                    Width = 77
                  end
                  object cxColViewSmsColumn2: TcxGridDBColumn
                    Caption = #45824#54364#48264#54840
                    Width = 80
                  end
                  object cxColViewSmsColumn3: TcxGridDBColumn
                    Caption = #44256#44061#48264#54840
                  end
                  object cxColViewSmsColumn4: TcxGridDBColumn
                    Caption = #44256#44061#47749
                    Width = 57
                  end
                  object cxColViewSmsColumn5: TcxGridDBColumn
                    Caption = #47700#49464#51648
                  end
                  object cxColViewSmsColumn6: TcxGridDBColumn
                    Caption = #49688#49888#48264#54840
                    Width = 96
                  end
                  object cxColViewSmsColumn7: TcxGridDBColumn
                    Caption = #47560#51068#47532#51648
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = ',0;-,0'
                    HeaderAlignmentHorz = taCenter
                  end
                end
                object cxLevelSms: TcxGridLevel
                  GridView = cxViewSms
                end
              end
              object mmo_log: TMemo
                Left = 380
                Top = 462
                Width = 185
                Height = 89
                ImeName = 'Microsoft IME 2003'
                Lines.Strings = (
                  'mm_log')
                TabOrder = 8
                Visible = False
              end
            end
          end
        end
        object pnl_Char: TPanel
          Left = 904
          Top = 274
          Width = 212
          Height = 238
          BevelKind = bkFlat
          BevelOuter = bvNone
          BorderWidth = 2
          TabOrder = 0
          Visible = False
          object lbl41: TcxLabel
            Left = 2
            Top = 2
            Cursor = crSizeAll
            Align = alTop
            AutoSize = False
            Caption = #53945#49688#47928#51088
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            OnMouseMove = lbl41MouseMove
            Height = 19
            Width = 204
            AnchorX = 104
            AnchorY = 12
          end
          object cxPageControl3: TcxPageControl
            Left = 4
            Top = 23
            Width = 204
            Height = 183
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Properties.ActivePage = cxtbsht2
            Properties.CustomButtons.Buttons = <>
            ClientRectBottom = 177
            ClientRectLeft = 2
            ClientRectRight = 198
            ClientRectTop = 27
            object cxtbsht2: TcxTabSheet
              Caption = #53945#49688#47928#51088
              Color = 15587527
              ImageIndex = 0
              ParentColor = False
              object lbl43: TcxLabel
                Left = 8
                Top = 5
                AutoSize = False
                Caption = #9829
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 22
                AnchorY = 18
              end
              object lbl44: TcxLabel
                Left = 34
                Top = 5
                AutoSize = False
                Caption = #9825
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 48
                AnchorY = 18
              end
              object lbl45: TcxLabel
                Left = 60
                Top = 5
                AutoSize = False
                Caption = #9733
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 74
                AnchorY = 18
              end
              object lbl46: TcxLabel
                Left = 86
                Top = 5
                AutoSize = False
                Caption = #9734
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 100
                AnchorY = 18
              end
              object lbl47: TcxLabel
                Left = 112
                Top = 5
                AutoSize = False
                Caption = #9824
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 126
                AnchorY = 18
              end
              object lbl48: TcxLabel
                Left = 138
                Top = 5
                AutoSize = False
                Caption = #9829
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 152
                AnchorY = 18
              end
              object lbl49: TcxLabel
                Left = 164
                Top = 5
                AutoSize = False
                Caption = #9670
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 178
                AnchorY = 18
              end
              object lbl50: TcxLabel
                Left = 8
                Top = 29
                AutoSize = False
                Caption = #9827
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 22
                AnchorY = 42
              end
              object lbl51: TcxLabel
                Left = 34
                Top = 29
                AutoSize = False
                Caption = #9831
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 48
                AnchorY = 42
              end
              object lbl52: TcxLabel
                Left = 60
                Top = 29
                AutoSize = False
                Caption = #9742
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 74
                AnchorY = 42
              end
              object lbl53: TcxLabel
                Left = 86
                Top = 29
                AutoSize = False
                Caption = #12927
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 100
                AnchorY = 42
              end
              object lbl54: TcxLabel
                Left = 112
                Top = 29
                AutoSize = False
                Caption = #8482
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 126
                AnchorY = 42
              end
              object lbl55: TcxLabel
                Left = 138
                Top = 29
                AutoSize = False
                Caption = #8481
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 152
                AnchorY = 42
              end
              object lbl56: TcxLabel
                Left = 164
                Top = 29
                AutoSize = False
                Caption = #8719
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 178
                AnchorY = 42
              end
              object lbl57: TcxLabel
                Left = 8
                Top = 53
                AutoSize = False
                Caption = #9836
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 22
                AnchorY = 66
              end
              object lbl58: TcxLabel
                Left = 34
                Top = 53
                AutoSize = False
                Caption = #9834
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 48
                AnchorY = 66
              end
              object lbl59: TcxLabel
                Left = 60
                Top = 53
                AutoSize = False
                Caption = #9758
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 74
                AnchorY = 66
              end
              object lbl60: TcxLabel
                Left = 86
                Top = 53
                AutoSize = False
                Caption = #9794
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 100
                AnchorY = 66
              end
              object lbl61: TcxLabel
                Left = 112
                Top = 53
                AutoSize = False
                Caption = #9792
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 126
                AnchorY = 66
              end
              object lbl62: TcxLabel
                Left = 138
                Top = 53
                AutoSize = False
                Caption = #9654
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 152
                AnchorY = 66
              end
              object lbl63: TcxLabel
                Left = 164
                Top = 53
                AutoSize = False
                Caption = #9655
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 178
                AnchorY = 66
              end
              object lbl64: TcxLabel
                Left = 8
                Top = 77
                AutoSize = False
                Caption = #9679
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 22
                AnchorY = 90
              end
              object lbl65: TcxLabel
                Left = 34
                Top = 77
                AutoSize = False
                Caption = #9632
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 48
                AnchorY = 90
              end
              object lbl66: TcxLabel
                Left = 60
                Top = 77
                AutoSize = False
                Caption = #9650
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 74
                AnchorY = 90
              end
              object lbl67: TcxLabel
                Left = 86
                Top = 77
                AutoSize = False
                Caption = #65340
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 100
                AnchorY = 90
              end
              object lbl68: TcxLabel
                Left = 112
                Top = 77
                AutoSize = False
                Caption = #8721
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 126
                AnchorY = 90
              end
              object lbl69: TcxLabel
                Left = 138
                Top = 77
                AutoSize = False
                Caption = #9756
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 152
                AnchorY = 90
              end
              object lbl70: TcxLabel
                Left = 164
                Top = 77
                AutoSize = False
                Caption = #8251
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 178
                AnchorY = 90
              end
              object lbl71: TcxLabel
                Left = 8
                Top = 101
                AutoSize = False
                Caption = #8765
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 22
                AnchorY = 114
              end
              object lbl72: TcxLabel
                Left = 34
                Top = 101
                AutoSize = False
                Caption = #12513
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 48
                AnchorY = 114
              end
              object lbl73: TcxLabel
                Left = 60
                Top = 101
                AutoSize = False
                Caption = #9618
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 74
                AnchorY = 114
              end
              object lbl74: TcxLabel
                Left = 86
                Top = 101
                AutoSize = False
                Caption = #9832
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 100
                AnchorY = 114
              end
              object lbl75: TcxLabel
                Left = 112
                Top = 101
                AutoSize = False
                Caption = #12302
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 126
                AnchorY = 114
              end
              object lbl76: TcxLabel
                Left = 138
                Top = 101
                AutoSize = False
                Caption = #12303
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 152
                AnchorY = 114
              end
              object lbl77: TcxLabel
                Left = 164
                Top = 101
                AutoSize = False
                Caption = #9635
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 178
                AnchorY = 114
              end
              object lbl78: TcxLabel
                Left = 8
                Top = 125
                AutoSize = False
                Caption = #9672
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 22
                AnchorY = 138
              end
              object lbl79: TcxLabel
                Left = 34
                Top = 125
                AutoSize = False
                Caption = #8857
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 48
                AnchorY = 138
              end
              object lbl80: TcxLabel
                Left = 60
                Top = 125
                AutoSize = False
                Caption = #9660
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 74
                AnchorY = 138
              end
              object lbl81: TcxLabel
                Left = 86
                Top = 125
                AutoSize = False
                Caption = #9633
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 100
                AnchorY = 138
              end
              object lbl82: TcxLabel
                Left = 112
                Top = 125
                AutoSize = False
                Caption = #9675
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 126
                AnchorY = 138
              end
              object lbl83: TcxLabel
                Left = 138
                Top = 125
                AutoSize = False
                Caption = #9664
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 152
                AnchorY = 138
              end
              object lbl84: TcxLabel
                Left = 164
                Top = 125
                AutoSize = False
                Caption = #9665
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 25
                Width = 27
                AnchorX = 178
                AnchorY = 138
              end
            end
            object cxtbsht1: TcxTabSheet
              Caption = #51060#47784#54000#53080
              Color = 15587527
              ImageIndex = 1
              ParentColor = False
              object lbl85: TcxLabel
                Left = 10
                Top = 5
                AutoSize = False
                Caption = '^_^'
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 45
                AnchorX = 33
                AnchorY = 14
              end
              object lbl86: TcxLabel
                Left = 54
                Top = 5
                AutoSize = False
                Caption = '^0^'
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 45
                AnchorX = 77
                AnchorY = 14
              end
              object lbl87: TcxLabel
                Left = 98
                Top = 5
                AutoSize = False
                Caption = '(/^^)/'
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 45
                AnchorX = 121
                AnchorY = 14
              end
              object lbl88: TcxLabel
                Left = 142
                Top = 5
                AutoSize = False
                Caption = '^o^~'#9836
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 45
                AnchorX = 165
                AnchorY = 14
              end
              object lbl89: TcxLabel
                Left = 10
                Top = 21
                AutoSize = False
                Caption = '*^^*'
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 45
                AnchorX = 33
                AnchorY = 30
              end
              object lbl90: TcxLabel
                Left = 54
                Top = 21
                AutoSize = False
                Caption = #12622'.'#12622
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 45
                AnchorX = 77
                AnchorY = 30
              end
              object lbl91: TcxLabel
                Left = 98
                Top = 21
                AutoSize = False
                Caption = '^.~'
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 45
                AnchorX = 121
                AnchorY = 30
              end
              object lbl92: TcxLabel
                Left = 142
                Top = 21
                AutoSize = False
                Caption = '^'#9661'^'
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 45
                AnchorX = 165
                AnchorY = 30
              end
              object lbl93: TcxLabel
                Left = 10
                Top = 37
                AutoSize = False
                Caption = '(^^)'#947
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 45
                AnchorX = 33
                AnchorY = 46
              end
              object lbl94: TcxLabel
                Left = 54
                Top = 37
                AutoSize = False
                Caption = '(~^^)~'
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 45
                AnchorX = 77
                AnchorY = 46
              end
              object lbl95: TcxLabel
                Left = 98
                Top = 37
                AutoSize = False
                Caption = '=^.^='
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 45
                AnchorX = 121
                AnchorY = 46
              end
              object lbl96: TcxLabel
                Left = 142
                Top = 37
                AutoSize = False
                Caption = '(*^o^*)'
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 45
                AnchorX = 165
                AnchorY = 46
              end
              object lbl97: TcxLabel
                Left = 10
                Top = 53
                AutoSize = False
                Caption = '~_~'
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 45
                AnchorX = 33
                AnchorY = 62
              end
              object lbl98: TcxLabel
                Left = 54
                Top = 53
                AutoSize = False
                Caption = '('#9832'_'#9832')'
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 45
                AnchorX = 77
                AnchorY = 62
              end
              object lbl99: TcxLabel
                Left = 98
                Top = 53
                AutoSize = False
                Caption = '(=_=;)'
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 45
                AnchorX = 121
                AnchorY = 62
              end
              object lbl100: TcxLabel
                Left = 142
                Top = 53
                AutoSize = False
                Caption = #8839'.'#8838
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 45
                AnchorX = 165
                AnchorY = 62
              end
              object lbl101: TcxLabel
                Left = 10
                Top = 69
                AutoSize = False
                Caption = #8857#8857#12672
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 45
                AnchorX = 33
                AnchorY = 78
              end
              object lbl102: TcxLabel
                Left = 54
                Top = 69
                AutoSize = False
                Caption = #8857'.'#8857
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 45
                AnchorX = 77
                AnchorY = 78
              end
              object lbl103: TcxLabel
                Left = 98
                Top = 69
                AutoSize = False
                Caption = 'O_O'
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 45
                AnchorX = 121
                AnchorY = 78
              end
              object lbl104: TcxLabel
                Left = 142
                Top = 69
                AutoSize = False
                Caption = '(@.@)'
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 45
                AnchorX = 165
                AnchorY = 78
              end
              object lbl105: TcxLabel
                Left = 10
                Top = 101
                AutoSize = False
                Caption = '(*^}{^*)'
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 60
                AnchorX = 40
                AnchorY = 110
              end
              object lbl106: TcxLabel
                Left = 69
                Top = 101
                AutoSize = False
                Caption = #9435#9438#9445#9428
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 60
                AnchorX = 99
                AnchorY = 110
              end
              object lbl107: TcxLabel
                Left = 128
                Top = 101
                AutoSize = False
                Caption = #8598'(^'#9661'^)'#8599
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 59
                AnchorX = 158
                AnchorY = 110
              end
              object lbl108: TcxLabel
                Left = 10
                Top = 85
                AutoSize = False
                Caption = '('#9825'.'#9825')'
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 45
                AnchorX = 33
                AnchorY = 94
              end
              object lbl109: TcxLabel
                Left = 54
                Top = 85
                AutoSize = False
                Caption = '(*_*)'
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 45
                AnchorX = 77
                AnchorY = 94
              end
              object lbl110: TcxLabel
                Left = 98
                Top = 85
                AutoSize = False
                Caption = #9829'.'#9829
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 45
                AnchorX = 121
                AnchorY = 94
              end
              object lbl111: TcxLabel
                Left = 142
                Top = 85
                AutoSize = False
                Caption = #9758#9825#9756
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 45
                AnchorX = 165
                AnchorY = 94
              end
              object lbl112: TcxLabel
                Left = 10
                Top = 117
                AutoSize = False
                Caption = '(/^o^)/'#9825
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 60
                AnchorX = 40
                AnchorY = 126
              end
              object lbl113: TcxLabel
                Left = 69
                Top = 117
                AutoSize = False
                Caption = '(=^'#9661'^)/'
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 60
                AnchorX = 99
                AnchorY = 126
              end
              object lbl114: TcxLabel
                Left = 128
                Top = 117
                AutoSize = False
                Caption = '('#12494'^_^)'#12494
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 59
                AnchorX = 158
                AnchorY = 126
              end
              object lbl115: TcxLabel
                Left = 10
                Top = 133
                AutoSize = False
                Caption = '@-m-m--'
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 89
                AnchorX = 55
                AnchorY = 142
              end
              object lbl116: TcxLabel
                Left = 98
                Top = 133
                AutoSize = False
                Caption = '>>------'#9655#9825
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsOffice11
                Style.Color = 15191501
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #44404#47548
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                OnClick = lbl43Click
                Height = 17
                Width = 89
                AnchorX = 143
                AnchorY = 142
              end
            end
          end
          object cxButton12: TcxButton
            Left = 3
            Top = 206
            Width = 206
            Height = 25
            Cursor = crHandPoint
            Caption = #45803#44592
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 2
            OnClick = cxButton12Click
          end
        end
        object pnl1: TPanel
          Left = 0
          Top = 0
          Width = 1113
          Height = 133
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 1
          ParentColor = True
          TabOrder = 1
          object cxGridBranchSms: TcxGrid
            AlignWithMargins = True
            Left = 303
            Top = 4
            Width = 806
            Height = 125
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvSpace
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TabStop = False
            LookAndFeel.NativeStyle = False
            object cxViewBranchSms: TcxGridDBTableView
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
              OptionsCustomize.ColumnMoving = False
              OptionsCustomize.ColumnSorting = False
              OptionsData.Editing = False
              OptionsSelection.MultiSelect = True
              OptionsSelection.CellMultiSelect = True
              OptionsSelection.InvertSelect = False
              OptionsView.FocusRect = False
              OptionsView.NoDataToDisplayInfoText = '  '
              OptionsView.DataRowHeight = 22
              OptionsView.ExpandButtonsForEmptyDetails = False
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 23
              Styles.Selection = Frm_Main.cxStyle11
              object cxGridDBColumn1: TcxGridDBColumn
                DataBinding.FieldName = #51648#49324
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                FooterAlignmentHorz = taRightJustify
                HeaderAlignmentHorz = taCenter
                Width = 108
              end
              object cxGridDBColumn2: TcxGridDBColumn
                DataBinding.FieldName = #51648#49324#48324#51204#49569#44148#49688
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                FooterAlignmentHorz = taRightJustify
                HeaderAlignmentHorz = taCenter
                Width = 149
              end
              object cxColViewBranchSmsColumn1: TcxGridDBColumn
                DataBinding.FieldName = 'SMS'#52880#49772
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                FooterAlignmentHorz = taRightJustify
                HeaderAlignmentHorz = taCenter
                Width = 135
              end
              object cxColViewBranchSmsColumn2: TcxGridDBColumn
                DataBinding.FieldName = #51204#49569#54980'SMS'#52880#49772
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                FooterAlignmentHorz = taRightJustify
                HeaderAlignmentHorz = taCenter
                Width = 134
              end
              object cxColViewBranchSmsColumn3: TcxGridDBColumn
                DataBinding.FieldName = #48708#44256
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 129
              end
              object cxColViewBranchSmsColumn4: TcxGridDBColumn
                DataBinding.FieldName = #51648#49324#53076#46300
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Visible = False
                MinWidth = 0
                VisibleForCustomization = False
                Width = 50
              end
              object cxViewBranchSmsColumn1: TcxGridDBColumn
                DataBinding.FieldName = #44148#45817#44552#50529
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Visible = False
                HeaderAlignmentHorz = taCenter
                Width = 78
              end
            end
            object cxLevelBranchSms: TcxGridLevel
              GridView = cxViewBranchSms
            end
          end
          object pnl3: TPanel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 293
            Height = 125
            Align = alLeft
            BevelKind = bkFlat
            BevelOuter = bvNone
            BorderWidth = 1
            ParentColor = True
            TabOrder = 0
            object mmoBefore: TMemo
              Left = 96
              Top = 20
              Width = 89
              Height = 31
              TabStop = False
              Alignment = taRightJustify
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ImeName = 'Microsoft IME 2003'
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
            object mmoAfter: TMemo
              Left = 196
              Top = 20
              Width = 89
              Height = 31
              TabStop = False
              Alignment = taRightJustify
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ImeName = 'Microsoft IME 2003'
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
            object lbl13: TcxLabel
              Left = 1
              Top = 28
              Caption = #51204#52404#51204#49569#44148#49688
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #44404#47548
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl6: TcxLabel
              Left = 142
              Top = 1
              Caption = #51312#54633#51204
              Transparent = True
            end
            object lbl11: TcxLabel
              Left = 241
              Top = 1
              Caption = #51312#54633#54980
              Transparent = True
            end
            object lblSMSCaption: TcxLabel
              Left = 27
              Top = 59
              Caption = '('#44305#44256' SMS'#45716' '#44148#45817' 16'#50896' (VAT'#54252#54632'))'
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #44404#47548
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
              Visible = False
            end
            object lbl12: TcxLabel
              Left = 1
              Top = 85
              Caption = #8251' '#51312#54633#45800#44228#50640#49436' PC'#45236' '#49688#49888#44144#48512' '#54028#51068#51012' '#48708#44368#54633#45768#45796'.'
              Transparent = True
            end
            object lbl5: TcxLabel
              Left = 1
              Top = 100
              Caption = #8251' SMS'#47484' '#48372#45236#44592' '#51204' '#51648#49324#48324' SMS'#52880#49772#47484' '#54869#51064#54616#49464#50836'.'
              Transparent = True
            end
            object btnGetList: TcxButton
              Left = 1
              Top = 1
              Width = 14
              Height = 10
              TabOrder = 8
              Visible = False
              OnClick = btnGetListClick
            end
          end
        end
        object pnl2: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 136
          Width = 293
          Height = 537
          Align = alLeft
          BevelKind = bkFlat
          BevelOuter = bvNone
          BorderWidth = 1
          ParentColor = True
          TabOrder = 2
          object img1: TImage
            Left = 6
            Top = 92
            Width = 140
            Height = 200
            AutoSize = True
            Picture.Data = {
              0D546478536D617274496D616765FFD8FFE000104A46494600010101012C012C
              0000FFDB0043000503040404030504040405050506070C08070707070F0B0B09
              0C110F1212110F111113161C1713141A1511111821181A1D1D1F1F1F13172224
              221E241C1E1F1EFFDB0043010505050706070E08080E1E1411141E1E1E1E1E1E
              1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E
              1E1E1E1E1E1E1E1E1E1E1E1EFFC000110800C8008C03012200021101031101FF
              C4001F0000010501010101010100000000000000000102030405060708090A0B
              FFC400B5100002010303020403050504040000017D0102030004110512213141
              0613516107227114328191A1082342B1C11552D1F02433627282090A16171819
              1A25262728292A3435363738393A434445464748494A535455565758595A6364
              65666768696A737475767778797A838485868788898A92939495969798999AA2
              A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7
              D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101
              010101010101010000000000000102030405060708090A0BFFC400B511000201
              0204040304070504040001027700010203110405213106124151076171132232
              8108144291A1B1C109233352F0156272D10A162434E125F11718191A26272829
              2A35363738393A434445464748494A535455565758595A636465666768696A73
              7475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8
              A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4
              E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FA274E
              B7B13A7DB97B3B666312162625249DA3AF153FD9B4FF00F9F1B4FF00BF2BFE15
              C56B9E2E1A16A5A0E922CD671A82C61A437010C79654E060EEEBED5C4EA7E3AD
              4EFF00C3F34D71A9ADA3457C2347B07684906373B58E4E7915EE61326C4E2929
              2564EDAFAB6BF3478B8CCDF0F85E64EEDABE8BC927F933DA523D21E79214874D
              9268BEFC6BE5B3AF38E40E453BECDA7FFCF8DA7FDF95FF000AF32F096B1609E3
              BD71E59ADA165898CB348EA9D5E3EAC7DEBBF8AE92589668A48E589C651D1C32
              B0F504706B931B847849A8BD6E93FBD5CDF038BFAD53726AD66D7DCEC5EFB369
              FF00F3E369FF007E57FC28FB369FFF003E369FF7E57FC2A9F9FF00ED51E7FF00
              B55C973B4B9F66D3FF00E7C6D3FEFCAFF851F66D3FFE7C6D3FEFCAFF008553F3
              FF00DAA3CFFF006A8B8173ECDA7FFCF8DA7FDF95FF000A3ECDA7FF00CF8DA7FD
              F95FF0AA7E7FFB5479FF00ED51702E7D9B4FFF009F1B4FFBF2BFE150C51C33CB
              2C76BA02DC08E4F28BAAC0A0B6D57C00CC09E1876A87CFFF006AB43C3244961A
              9F991F9B1B5F9DCA14924F931630474FAF6A0433FB36EBFE85293F2B6FFE3955
              AE923B501EEFC3BE4A7991C6CC56DDB69760AB90AE4F53E95A824D456408B752
              7923A33213285FEE83D0FA6E3CD57F13848FC324430B4482EED99C367717F3A3
              CB127EF7D685B89E88CFD56F3C3FA540B36A49636F1B1DAACD12F27AF61597FF
              000967817FE7F34BFF00BF3FFD6AE4FC77A6CFAB78AACAD754D49A0D1EE83246
              19D5638DD62918920F3B8E38E718ACEFF856BE14FF00A18ACFFF000217FC6BC1
              CD3399606AAA6A9F35D5F738B158BA9467CB18DFE677A3C57E063C0BCD37FEFC
              FF00F5AA0F119B56BB824B4102C2F02B2945003649E781E98AE21BE1D785A08D
              E75F105AB3468CEAA265E4804FAD7456B279FA268F2EEEBA7407FF001DADF2AC
              CE58E536E1CB6B7E25E13113AC9B946D6F3255D7F4BC22C96B24EF0FEEC3FF00
              67B4BB594E0ED6DA71C8ED47F6EE8B8C7F647CA4E4AFF639C13EA46CC67DE9DE
              16331D20450CAD1B49A8DC2E43103264C0CE2BA84D26F360DDAA481B1C80A48C
              FD735EE45CD2D247538C7B1CA3EB9A2C81849A53481FEFEED1C9DDDF9CA73F8D
              3D3C45A7471AC715A5EC51A8C2A269F22281E8005C0AEA7FB26EBFE8272FE47F
              C68FEC9BAFFA09CBF91FF1A4F99AB360925B2396FF008492CBFE796A1FF8052F
              FF001347FC24965FF3CB50FF00C0297FF89AEA7FB26EBFE8272FE47FC68FEC9B
              AFFA09CBF91FF1A5CA3B9CB7FC24965FF3CB50FF00C0297FF89A3FE124B2FF00
              9E5A87FE014BFF00C4D753FD9375FF0041397F23FE347F64DD7FD04E5FC8FF00
              8D1CA17396FF008492CBFE796A1FF8052FFF001347FC24965FF3CB50FF00C029
              7FF89AEA7FB26EBFE8272FE47FC68FEC9BAFFA09CBF91FF1A3942E72DFF09259
              7FCF2D43FF0000A5FF00E26A09758D1A590C92D85CC8E7AB369CE49EDD4AD761
              FD9375FF0041397F23FE347F64DD7FD04E5FC8FF008D1CBE60F5E871BFDA7A17
              FD02E6FF00C163FF00F134A9AAE86AC1D74D9C329CA91A738208E847CB5D8FF6
              4DD7FD04E5FC8FF8D1FD9375FF0041397F23FE3459F71597638ED4356D135080
              417FA7CF771021824FA73C8BB8700E0AE33CD50D9E0CFF00A1620FFC131FFE22
              BD03FB26EBFE8272FE47FC68FEC9BAFF00A09CBF91FF001A397CC7F2380F2FC1
              9FF42C41FF008263FF00C455FF00B75B5F1DD69BD12202228F118CA90338C100
              F422BA4D52D6F6C42CBF6E9248C90BF7981C9C9E99F6AE54FF00C86F5AFF00AF
              E3FF00A2D2938D868D0F07FF00C79C1FF6149FFF0047577B5C1783FF00E3CE0F
              FB0A4FFF00A3ABBDAB5B0828A28A061451450014514500145145001451450014
              5145001451450065789BFE3C22FF00AEA3FF00416AE1CFFC86F5AFFAFE3FFA2D
              2BB8F137FC7845FF005D47FE82D5C39FF90DEB5FF5FC7FF45A529F412343C1FF
              00F1E707FD8527FF00D1D5DED705E0FF00F8F383FEC293FF00E8EAEF69AD8028
              A28A0614514500145145001451450014514500145145001451450065789BFE3C
              22FF00AEA3FF00416AE1CFFC86F5AFFAFE3FFA2D2BB8F137FC7845FF005D47FE
              82D5C39FF90DEB5FF5FC7FF45A529F412343C1FF00F1E707FD8527FF00D1D5DE
              D705E0FF00F8F383FEC293FF00E8EAEF69AD8028A28A06145145001451450014
              51450014514500145145001451450065789BFE3C22FF00AEA3FF00416AE1CFFC
              86F5AFFAFE3FFA2D2BB8F137FC7845FF005D47FE82D5C39FF90DEB5FF5FC7FF4
              5A529F412343C1FF00F1E707FD8527FF00D1D5DED705E0FF00F8F383FEC293FF
              00E8EAEF69AD8028A28A06145145001451450014514500145145001451450014
              51450065789BFE3C22FF00AEA3FF00416AE1CFFC86F5AFFAFE3FFA2D2BB8F137
              FC7845FF005D47FE82D5C39FF90DEB5FF5FC7FF45A529F412343C1FF00F1E707
              FD8527FF00D1D5DED705E0FF00F8F383FEC293FF00E8EAEF69AD8028A28A0614
              514500145145001451450014514500145145001451450065789BFE3C22FF00AE
              A3FF00416AE1CFFC86F5AFFAFE3FFA2D2BB8F137FC7845FF005D47FE82D5C39F
              F90DEB5FF5FC7FF45A529F412343C1FF00F1E707FD8527FF00D1D5DED705E0FF
              00F8F383FEC293FF00E8EAEF69AD8028A28A0614514500145145001451450014
              514500145145001451450065789BFE3C22FF00AEA3FF00416AE1CFFC86F5AFFA
              FE3FFA2D2BB8F137FC7845FF005D47FE82D5C39FF90DEB5FF5FC7FF45A529F41
              2343C1FF00F1E707FD8527FF00D1D5DED705E0FF00F8F383FEC293FF00E8EAEF
              69AD8028A28A0614514500145145001451450014514500145145001451450065
              789BFE3C22FF00AEA3FF00416AE1CFFC86F5AFFAFE3FFA2D2BB8F137FC7845FF
              005D47FE82D5C39FF90DEB5FF5FC7FF45A529F412343C1FF00F1E707FD8527FF
              00D1D5DED705E0FF00F8F383FEC293FF00E8EAEF69AD8028A28A061451450014
              5145001451450014514500145145001451450065789BFE3C22FF00AEA3FF0041
              6AE1CFFC86F5AFFAFE3FFA2D2BB8F137FC7845FF005D47FE82D5C39FF90DEB5F
              F5FC7FF45A529F412343C1FF00F1E707FD8527FF00D1D5DED705E0FF00F8F383
              FEC293FF00E8EAEF69AD8028A28A061451450014514500145145001451450014
              5145001451450065789BFE3C22FF00AEA3FF00416AE1CFFC86F5AFFAFE3FFA2D
              2BB8F137FC7845FF005D47FE82D5C39FF90DEB5FF5FC7FF45A529F412343C1FF
              00F1E707FD8527FF00D1D5DED705E0FF00F8F383FEC293FF00E8EAEF69AD8028
              A28A0614514500145145001451450014514500145145001451450065789BFE3C
              22FF00AEA3FF00416AE1CFFC86F5AFFAFE3FFA2D2BB8F137FC7845FF005D47FE
              82D5C39FF90DEB5FF5FC7FF45A529F41225D224D5B4D8CC2DE1ED46631DE4D32
              32EC0ADBA42C3AB67F4ADBFF00849F5CFF00A15AFBF24FFE2E8A2B35276283FE
              127D73FE856BEFC93FF8BA3FE127D73FE856BEFC93FF008BA28A399807FC24FA
              E7FD0AD7DF927FF1747FC24FAE7FD0AD7DF927FF0017451473300FF849F5CFFA
              15AFBF24FF00E2E8FF00849F5CFF00A15AFBF24FFE2E8A28E6601FF093EB9FF4
              2B5F7E49FF00C5D1FF00093EB9FF0042B5F7E49FFC5D1451CCC03FE127D73FE8
              56BEFC93FF008BA3FE127D73FE856BEFC93FF8BA28A399807FC24FAE7FD0AD7D
              F927FF001747FC24FAE7FD0AD7DF927FF17451473300FF00849F5CFF00A15AFB
              F24FFE2E8FF849F5CFFA15AFBF24FF00E2E8A28E66056BED7358BD856297C31A
              880ADBBE411E7FF43F7ACDB4B5D425BBBFBB9B4BBBB737373E62A3AE4E36203F
              7723A8345145DB03FFD9}
          end
          object mm_message: TcxMemo
            Tag = 20
            Left = 17
            Top = 125
            ParentFont = False
            Properties.ImeMode = imSHanguel
            Properties.MaxLength = 0
            Properties.ScrollBars = ssVertical
            Properties.OnChange = mm_messagePropertiesChange
            Style.BorderStyle = ebsNone
            Style.Color = 15589851
            Style.Edges = []
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = []
            Style.LookAndFeel.SkinName = 'Sharp'
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 0
            OnKeyDown = mm_messageKeyDown
            OnKeyPress = mm_messageKeyPress
            OnKeyUp = mm_messageKeyUp
            OnMouseUp = mm_messageMouseUp
            Height = 143
            Width = 118
          end
          object lbMaxLen: TcxLabel
            Left = 73
            Top = 271
            Caption = '/ 900 Byte'
            Transparent = True
          end
          object btnInsertChar: TcxButton
            Tag = 6
            Left = 151
            Top = 271
            Width = 132
            Height = 20
            Cursor = crHandPoint
            Caption = #53945#49688#47928#51088'(F5)'
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 1
            OnClick = btnInsertCharClick
          end
          object lbSrtLen: TcxLabel
            Left = 53
            Top = 271
            Caption = '00'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorX = 69
            AnchorY = 279
          end
          object grp2: TcxGroupBox
            Left = 151
            Top = 92
            Caption = #51088#46041#49341#51077#54616#44592
            TabOrder = 4
            Height = 177
            Width = 132
            object chkBrAdd: TcxCheckBox
              Left = 7
              Top = 30
              Caption = #51648#49324#47749' '#45347#44592
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 0
              Transparent = True
              OnClick = chkBrAddClick
            end
            object chkMileAdd: TcxCheckBox
              Left = 7
              Top = 66
              Caption = #44256#44061#47560#51068#47532#51648#45347#44592
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 1
              Transparent = True
              OnClick = chkMileAddClick
            end
            object chkNameAdd: TcxCheckBox
              Left = 7
              Top = 12
              Caption = #44256#44061#47749' '#45347#44592
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 2
              Transparent = True
              OnClick = chkNameAddClick
            end
            object chkTelAdd: TcxCheckBox
              Left = 7
              Top = 48
              Caption = #45824#54364#48264#54840' '#45347#44592
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 3
              Transparent = True
              OnClick = chkTelAddClick
            end
            object lbl10: TcxLabel
              Left = 5
              Top = 155
              Caption = #51060' '#51077#47141#46121#45768#45796'.'
              Transparent = True
            end
            object lbl7: TcxLabel
              Left = 5
              Top = 107
              Caption = #44256#44061#47749', '#51648#49324#47749' '#45347#44592#47484
              Transparent = True
            end
            object lbl8: TcxLabel
              Left = 5
              Top = 123
              Caption = #52404#53356#54616#49884#47732' '#51204#49569#49884
              Transparent = True
            end
            object lbl9: TcxLabel
              Left = 5
              Top = 139
              Caption = #44536#50948#52824#50640' '#44256#44061', '#51648#49324#47749
              Transparent = True
            end
            object chk4Number: TcxCheckBox
              Left = 7
              Top = 84
              Caption = #44256#44061#48264#54840' '#46263' 4'#51088#47532
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 8
              Transparent = True
              OnClick = chk4NumberClick
            end
          end
          object grp1: TcxGroupBox
            Left = 6
            Top = 295
            TabOrder = 5
            Height = 152
            Width = 277
            object btnPreView: TcxButton
              Left = 17
              Top = 100
              Width = 100
              Height = 45
              Cursor = crHandPoint
              Caption = #48120#47532#48372#44592'('#51312#54633')'
              Colors.Normal = 12189690
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              TabOrder = 0
              OnClick = btnPreViewClick
            end
            object btnSendMsg: TcxButton
              Left = 157
              Top = 100
              Width = 100
              Height = 45
              Cursor = crHandPoint
              Caption = 'SMS '#51204#49569
              Colors.Normal = 12189690
              Enabled = False
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              TabOrder = 1
              OnClick = btnSendMsgClick
            end
            object chkBalsin: TcxCheckBox
              Left = 178
              Top = 13
              Caption = #45824#54364#48264#54840#49440#53469
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 2
              Transparent = True
              OnClick = chkBalsinClick
            end
            object chkSplit: TcxCheckBox
              Left = 18
              Top = 68
              Caption = #48516#54624#51204#49569
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 3
              Transparent = True
              OnClick = chkSplitClick
            end
            object cxLabel2: TcxLabel
              Left = 12
              Top = 11
              AutoSize = False
              Caption = #48372#45236#45716#51060
              ParentColor = False
              Style.BorderStyle = ebsOffice11
              Style.Color = clWhite
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Height = 23
              Width = 60
              AnchorX = 42
              AnchorY = 23
            end
            object dtp_date: TcxDateEdit
              Left = 69
              Top = 43
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 5
              Width = 87
            end
            object ed_send: TcxTextEdit
              Left = 69
              Top = 11
              AutoSize = False
              TabOrder = 6
              Text = #51088#46041#49341#51077
              OnKeyPress = ed_sendKeyPress
              Height = 23
              Width = 107
            end
            object edtSplitCnt: TcxTextEdit
              Left = 169
              Top = 68
              Enabled = False
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 7
              OnKeyPress = edtSplitMinKeyPress
              Width = 36
            end
            object edtSplitMin: TcxTextEdit
              Left = 89
              Top = 68
              Enabled = False
              Properties.MaxLength = 2
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 8
              OnKeyPress = edtSplitMinKeyPress
              Width = 36
            end
            object rbchk_re: TcxCheckBox
              Left = 18
              Top = 44
              Caption = #50696#50557
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 9
              Transparent = True
              OnClick = rbchk_reClick
            end
            object se_time1: TSpinEdit
              Left = 157
              Top = 44
              Width = 43
              Height = 21
              MaxValue = 23
              MinValue = 0
              TabOrder = 10
              Value = 0
            end
            object se_time2: TSpinEdit
              Left = 200
              Top = 44
              Width = 42
              Height = 21
              MaxValue = 59
              MinValue = 0
              TabOrder = 11
              Value = 0
            end
            object cbKeynumber01: TcxComboBox
              Left = 69
              Top = 11
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
              TabOrder = 12
              Text = #51204#52404
              Visible = False
              Height = 23
              Width = 108
            end
            object Label2: TcxLabel
              Left = 126
              Top = 73
              Caption = #48516' '#47560#45796
              Transparent = True
            end
            object Label3: TcxLabel
              Left = 206
              Top = 73
              Caption = #44148' '#51204#49569
              Transparent = True
            end
            object lbl4: TcxLabel
              Left = 126
              Top = 115
              Caption = '-->'
              Transparent = True
            end
          end
          object cxCBAdA: TcxCheckBox
            Left = 6
            Top = 70
            Caption = '['#44305#44256#54364#44592#51032#47924#49324#54637' '#51201#50857']'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.SkinName = 'Sharp'
            Style.TextColor = clRed
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 6
            Transparent = True
            OnClick = cxCBAdAClick
          end
          object cxBtnHelp: TcxButton
            Left = 182
            Top = 69
            Width = 101
            Height = 21
            Cursor = crHandPoint
            Caption = #49464#48512#45236#50669#48372#44592
            Colors.Normal = 12189690
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 7
            OnClick = cxBtnHelpClick
          end
          object btn_Terms: TcxButton
            Left = 6
            Top = 450
            Width = 276
            Height = 25
            Cursor = crHandPoint
            Caption = #49436#48708#49828' '#51060#50857' '#50557#44288
            Colors.Normal = 12189690
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 8
            OnClick = btn_TermsClick
          end
          object lbl1: TcxLabel
            Left = 8
            Top = 4
            Caption = #51088#46041#49341#51077#51004#47196'  '#44256#44061#47749' '#46321#51012' '#45347#50612' '#44600#50612#51648#45716' '#44221#50864
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object Label7: TcxLabel
            Left = 8
            Top = 23
            Caption = #13#10#8251' '#51204#49569' '#49692#49436#45716' '#44256#44061' '#51204#54868#48264#54840' '#49692#49436#51077#45768#45796'.'#13#10#8251' '#50724#54980' 8'#49884' 40'#48516#44620#51648' '#51204#49569' '#44032#45733#54633#45768#45796'.'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object Label8: TcxLabel
            Left = 8
            Top = 20
            Caption = '90 Bytes'#50473' '#45208#45572#50612' 2'#44148#51060#49345#51004#47196' '#51204#49569#46121#45768#45796'.'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.TextColor = clBlue
            Style.IsFontAssigned = True
            Transparent = True
          end
          object lb_Cnt: TcxLabel
            Left = 17
            Top = 271
            Caption = '0'#44148
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 279
          end
        end
        object PnlHelp: TcxGroupBox
          Left = 365
          Top = 281
          Alignment = alTopCenter
          Caption = '*** '#44305#44256' '#54364#44592' '#51032#47924' '#49324#54637' '#50504#45236' ***'
          TabOrder = 4
          Visible = False
          OnMouseDown = PnlHelpMouseDown
          DesignSize = (
            411
            290)
          Height = 294
          Width = 411
          object Label1: TLabel
            Left = 3
            Top = 14
            Width = 405
            Height = 273
            Align = alClient
            Caption = 
              #13#10' 1. '#52376#51020' '#48512#48516#50640' ('#44305#44256') '#54364#44592'. '#48152#46300#49884' '#46181#44540' '#44292#54840' '#39'('#39#47484' '#49324#50857#54644#50556' '#54633#45768#45796'.'#13#13#10' 2. '#54924#49324#47749#54364#49884':  ex,' +
              ' '#54861#44600#46041' '#45824#47532', 1588-XXXX'#45824#47532#13#13#10' 3. '#50672#46973#52376' '#54364#44592': '#54924#49888#48264#54840#44032' '#50672#46973#52376#51064' '#44221#50864' '#49373#47029' '#44032#45733#13#13#10' 4. '#47924#47308#49688 +
              #49888#44144#48512' '#54364#44592': '#45149#48512#48516#50640' '#54364#49884#54616#44256' '#39#47924#47308#39#46972#45716' '#45800#50612#50752' '#39#44144#48512#39#46972#45716' '#13#10'  '#45800#50612#44032' '#44845' '#46308#50612#44032#50556' '#54633#45768#45796'.  080'#48264#54840#46020' ' +
              #45347#50612' '#51452#49464#50836'.'#13#10#13#10'         '#9679' '#50732#48148#47480' '#50696#49884' '#9679#13#10#13#10'  ('#44305#44256') 1588-XXXX '#45824#47532#50868#51204#13#10'  '#50504#51204#54616#44172' ' +
              #47784#49884#44192#49845#45768#45796'. '#13#10'  '#47924#47308#44144#48512':080XXXXXXXX'#13#13#10#13#13#10
            Color = 15269887
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            ExplicitWidth = 390
            ExplicitHeight = 228
          end
          object cxButton1: TcxButton
            Left = 388
            Top = 14
            Width = 20
            Height = 20
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Cancel = True
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
            TabOrder = 0
            OnClick = cxButton1Click
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Tag = 1002
      Caption = #45824#47049#54028#51068'SMS'#48156#49569
      ImageIndex = 1
      object PnlMainA2: TPanel
        Left = 0
        Top = 0
        Width = 1113
        Height = 676
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object cxGroupBox1: TcxGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Align = alLeft
          Alignment = alTopCenter
          Caption = 'SMS '#54028#51068#51204#49569
          TabOrder = 1
          Height = 670
          Width = 364
          object cxLabel41: TcxLabel
            Left = 7
            Top = 402
            Caption = 
              #52280#51312')'#13#10'1, *'#45716' '#54596#49688' '#51648#51221#54644#50556' '#54633#45768#45796'.'#13#10'2, '#55092#45824#54256#48264#54840#51032' '#51088#47532#49688#44032' '#47582#51648#50506#44144#45208', '#49885#48324#48264#54840'(010,019'#46321') '#13#10 +
              '    '#44032' '#55092#45824#54256#51060' '#50500#45772' '#44221#50864#45716' '#51088#46041#51004#47196' '#51228#44144#46121#45768#45796'.'#13#10'3, '#50641#49472#54028#51068#50640' '#48156#49888'('#45824#54364')'#48264#54840#50752' '#49688#49888#44256#44061#47749'('#47928#51088#45236#50857')'#51012' '#51649 +
              #51217' '#13#10'    '#51089#49457#54616#50668' '#51204#49569#46020' '#44032#45733#54633#45768#45796'. '#13#10'4. ['#49688#49888#44144#48512#50741#49496']'#50640#49436' '#8216#45824#47532#54924#49324#8217', '#8217#44592#49324#8217#45716' '#54596#49688#47196' '#51228#44144' '#13#10' ' +
              '   '#54616#49884#45716' '#44163#51060' '#51339#49845#45768#45796'. '#8216#48169#53685#50948#8217#45716' '#54596#50836#50640' '#46384#46972#49436' '#54876#50857'.'#13#10'5. '#8216#48276#50857#44144#48512#8217#45716' '#51088#49324#44256#44061#46308#51060' '#50500#45772' '#45796#47480' '#44256#44061#46308#50640 +
              ' '#13#10'    '#54861#48372#54624' '#46412' '#49324#50857#54644' '#48372#49884#44600' '#44428#51109#54633#45768#45796'.'
            Transparent = True
          end
          object lblFileSms: TcxLabel
            Left = 3
            Top = 22
            Caption = '('#50641#49472#54028#51068#47196' '#51221#47532#46108' '#45796#49688#51032' '#49688#49888#51088#50640#44172' '#47928#51088#51204#49569#54616#45716' '#44592#45733#51077#45768#45796')'#13#10'('#44148#45817':11.9'#50896')'
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Visible = False
            AnchorX = 361
          end
          object cxLabel1: TcxLabel
            Left = 7
            Top = 57
            AutoSize = False
            Caption = #45800#44228
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clGray
            Style.TextColor = clWhite
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 23
            Width = 57
            AnchorX = 36
            AnchorY = 69
          end
          object cxLabel11: TcxLabel
            Left = 63
            Top = 57
            AutoSize = False
            Caption = #51089#50629
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clGray
            Style.TextColor = clWhite
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 23
            Width = 77
            AnchorX = 102
            AnchorY = 69
          end
          object cxLabel13: TcxLabel
            Left = 139
            Top = 57
            AutoSize = False
            Caption = #49324' '#50857' '#48277
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clGray
            Style.TextColor = clWhite
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 23
            Width = 154
            AnchorX = 216
            AnchorY = 69
          end
          object cxLabel14: TcxLabel
            Left = 292
            Top = 57
            AutoSize = False
            Caption = #51652#54665#51473
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clGray
            Style.TextColor = clWhite
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 23
            Width = 66
            AnchorX = 325
            AnchorY = 69
          end
          object cxLabel20: TcxLabel
            Left = 7
            Top = 79
            AutoSize = False
            Caption = #51456'  '#48708
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clWhite
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 48
            Width = 57
            AnchorX = 36
            AnchorY = 103
          end
          object cxLabel21: TcxLabel
            Left = 63
            Top = 79
            AutoSize = False
            Caption = #50641#49472#54028#51068#51221#47532
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clWhite
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 48
            Width = 77
            AnchorX = 102
            AnchorY = 103
          end
          object cxLabel22: TcxLabel
            Left = 139
            Top = 79
            AutoSize = False
            Caption = #55092#45824#54256#48264#54840#47532#49828#53944#47484#13#10#50641#49472'('#49464#47196')'#47196' '#51096' '#51221#47532#54616#44592
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clWhite
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 48
            Width = 155
            AnchorX = 217
            AnchorY = 103
          end
          object cxLabel42: TcxLabel
            Left = 293
            Top = 79
            AutoSize = False
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clWhite
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.PenWidth = 0
            Height = 48
            Width = 65
            AnchorX = 326
            AnchorY = 103
          end
          object cxLabel23: TcxLabel
            Left = 7
            Top = 126
            AutoSize = False
            Caption = '1'#45800#44228
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clWhite
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 48
            Width = 57
            AnchorX = 36
            AnchorY = 150
          end
          object cxLabel24: TcxLabel
            Left = 63
            Top = 126
            AutoSize = False
            Caption = #51648#49324#49440#53469
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clWhite
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 48
            Width = 77
            AnchorX = 102
            AnchorY = 150
          end
          object cxLabel25: TcxLabel
            Left = 139
            Top = 126
            AutoSize = False
            Caption = 'SMS'#52880#49772#44032' '#52264#44048#46112' '#51648#49324#47484#13#10#49440#53469#54644' '#51452#49464#50836
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clWhite
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 48
            Width = 155
            AnchorX = 217
            AnchorY = 150
          end
          object lblFileStep1: TcxLabel
            Left = 293
            Top = 126
            AutoSize = False
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clWhite
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.PenWidth = 0
            Height = 48
            Width = 65
            AnchorX = 326
            AnchorY = 150
          end
          object lblFileStep2: TcxLabel
            Left = 293
            Top = 173
            AutoSize = False
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clWhite
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.PenWidth = 0
            Height = 48
            Width = 65
            AnchorX = 326
            AnchorY = 197
          end
          object lblFileStep3: TcxLabel
            Left = 293
            Top = 220
            AutoSize = False
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clWhite
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.PenWidth = 0
            Height = 54
            Width = 65
            AnchorX = 326
            AnchorY = 247
          end
          object lblFileStep4: TcxLabel
            Left = 293
            Top = 273
            AutoSize = False
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clWhite
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.PenWidth = 0
            Height = 54
            Width = 65
            AnchorX = 326
            AnchorY = 300
          end
          object lblFileStep5: TcxLabel
            Left = 293
            Top = 326
            AutoSize = False
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clWhite
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.PenWidth = 0
            Height = 66
            Width = 65
            AnchorX = 326
            AnchorY = 359
          end
          object cxLabel26: TcxLabel
            Left = 7
            Top = 173
            AutoSize = False
            Caption = '2'#45800#44228
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clWhite
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 48
            Width = 57
            AnchorX = 36
            AnchorY = 197
          end
          object cxLabel27: TcxLabel
            Left = 63
            Top = 173
            AutoSize = False
            Caption = #54028#51068#49440#53469
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clWhite
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 48
            Width = 77
            AnchorX = 102
            AnchorY = 197
          end
          object cxLabel28: TcxLabel
            Left = 139
            Top = 173
            AutoSize = False
            Caption = '['#44160#49353']'#48260#53948' '#53364#47533#54616#50668#13#10#51221#47532#54644#46164' '#50641#49472#54028#51068' '#49440#53469
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clWhite
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 48
            Width = 155
            AnchorX = 217
            AnchorY = 197
          end
          object cxLabel29: TcxLabel
            Left = 7
            Top = 220
            AutoSize = False
            Caption = '3'#45800#44228
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clWhite
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 54
            Width = 57
            AnchorX = 36
            AnchorY = 247
          end
          object cxLabel30: TcxLabel
            Left = 63
            Top = 220
            AutoSize = False
            Caption = #48156#49888'/'#49688#49888#13#10#51204#54868#48264#54840#49440#53469
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clWhite
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 54
            Width = 77
            AnchorX = 102
            AnchorY = 247
          end
          object cxLabel31: TcxLabel
            Left = 139
            Top = 220
            AutoSize = False
            Caption = #48156#49888#48264#54840'/'#49688#49888#48264#54840#47484#13#10#51077#47141' '#46608#45716' '#49440#53469#54620' '#54980#13#10'['#51473#48373#51228#44144']'#48260#53948#51012' '#45572#47480#45796
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clWhite
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 54
            Width = 155
            AnchorX = 217
            AnchorY = 247
          end
          object cxLabel32: TcxLabel
            Left = 7
            Top = 273
            AutoSize = False
            Caption = '4'#45800#44228
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clWhite
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 54
            Width = 57
            AnchorX = 36
            AnchorY = 300
          end
          object cxLabel33: TcxLabel
            Left = 63
            Top = 273
            AutoSize = False
            Caption = #49688#49888#44144#48512#50741#49496
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clWhite
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 54
            Width = 77
            AnchorX = 102
            AnchorY = 300
          end
          object cxLabel34: TcxLabel
            Left = 139
            Top = 273
            AutoSize = False
            Caption = #48372#45236#45716' DB'#51333#47448#50640' '#46384#46972#49436#13#10#51201#45817#54620' '#49688#49888#44144#48512#47484' '#52404#53356#13#10'('#44208#44284' '#45796#50868#47196#46300' '#44032#45733')'
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clWhite
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 54
            Width = 155
            AnchorX = 217
            AnchorY = 300
          end
          object cxLabel35: TcxLabel
            Left = 7
            Top = 326
            AutoSize = False
            Caption = '5'#45800#44228
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clWhite
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 66
            Width = 57
            AnchorX = 36
            AnchorY = 359
          end
          object cxLabel36: TcxLabel
            Left = 63
            Top = 326
            AutoSize = False
            Caption = #47928#51088#45236#50857#51077#47141
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clWhite
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 66
            Width = 77
            AnchorX = 102
            AnchorY = 359
          end
          object cxLabel37: TcxLabel
            Left = 139
            Top = 326
            AutoSize = False
            Caption = #51204#49569#46112' '#44148#49688#47484' '#54869#51064' '#54980#13#10'['#47928#51088#45236#50857#51077#47141'] '#48260#53948#51012' '#53364#47533#13#10#47928#51088' '#45236#50857' '#51077#47141' '#48143' '#50696#50557#51008#13#10#45796#51020#54868#47732#50640#49436' '#54633#45768#45796
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clWhite
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 66
            Width = 155
            AnchorX = 217
            AnchorY = 359
          end
          object btnMenual2: TcxButton
            Left = 44
            Top = 562
            Width = 276
            Height = 25
            Cursor = crHandPoint
            Caption = #49436#48708#49828' '#51060#50857' '#50557#44288
            Colors.Normal = 12189690
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 30
            OnClick = btn_TermsClick
          end
        end
        object PnlRight: TPanel
          Left = 370
          Top = 0
          Width = 743
          Height = 676
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          object cxGroupBox2: TcxGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Align = alClient
            Caption = #45800#44228#48324' '#51652#54665' '#51089#50629
            TabOrder = 0
            Height = 670
            Width = 737
            object Gauge1: TAdvProgressBar
              Left = 61
              Top = 421
              Width = 553
              Height = 20
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              Level0ColorTo = 14811105
              Level1ColorTo = 13303807
              Level2Color = 5483007
              Level2ColorTo = 11064319
              Level3ColorTo = 13290239
              Level1Perc = 70
              Level2Perc = 90
              Position = 0
              ShowBorder = True
              Version = '1.3.1.0'
            end
            object btnFileSearch: TcxButton
              Left = 529
              Top = 172
              Width = 85
              Height = 26
              Cursor = crHandPoint
              Caption = #44160#49353
              Colors.Default = 16635384
              Colors.Normal = 12189690
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 0
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btnFileSearchClick
            end
            object btnRemove: TcxButton
              Left = 501
              Top = 446
              Width = 112
              Height = 37
              Cursor = crHandPoint
              Hint = #48376#49324#45236' '#47784#46304#51648#49324#51032' '#49688#49888#44144#48512' '#44256#44061' '#51228#44144#46121#45768#45796'.'
              Caption = #49688#49888#44144#48512#13#10#50741#49496#51228#44144
              Colors.Default = 16635384
              Colors.Normal = 12189690
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btnRemoveClick
            end
            object btnRemoveDuplicate: TcxButton
              Left = 517
              Top = 234
              Width = 96
              Height = 37
              Cursor = crHandPoint
              Hint = #48376#49324#45236' '#47784#46304#51648#49324#51032' '#49688#49888#44144#48512' '#44256#44061' '#51228#44144#46121#45768#45796'.'
              Caption = #51473#48373'/'#49688#49888#44144#48512#13#10#51228#44144
              Colors.Default = 16635384
              Colors.Normal = 12189690
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btnRemoveDuplicateClick
            end
            object btnSelBranch: TcxButton
              Left = 529
              Top = 23
              Width = 85
              Height = 29
              Cursor = crHandPoint
              Caption = #51648#49324#49440#53469
              Colors.Default = 16635384
              Colors.Normal = 12189690
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 3
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btnSelBranchClick
            end
            object btnSendFile: TcxButton
              Left = 505
              Top = 556
              Width = 109
              Height = 53
              Cursor = crHandPoint
              Caption = #47928#51088#45236#50857#51077#47141
              Colors.Default = 16635384
              Colors.Normal = 12189690
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 4
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btnSendFileClick
            end
            object btnSMSLog: TcxButton
              Left = 538
              Top = 401
              Width = 76
              Height = 17
              Cursor = crHandPoint
              Caption = #47196#44536#48372#44592
              Colors.Default = 16773362
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              Enabled = False
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 5
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548
              Font.Style = []
              ParentFont = False
              OnClick = btnSMSLogClick
            end
            object btnSMSResultDown: TcxButton
              Left = 501
              Top = 486
              Width = 113
              Height = 41
              Cursor = crHandPoint
              Caption = #50668#44592#44620#51648#13#10#52376#47532#44208#44284#45796#50868#47196#46300
              Colors.Default = 16773362
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 6
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btnSMSResultDownClick
            end
            object cbb_level: TComboBox
              Left = 3
              Top = 629
              Width = 145
              Height = 20
              Style = csDropDownList
              ImeName = 'Microsoft IME 2003'
              TabOrder = 10
              Visible = False
              OnChange = cbb_levelChange
              Items.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5')
            end
            object chkFileRecordTelNo: TcxCheckBox
              Left = 314
              Top = 212
              Caption = #48264#54840#49440#53469
              State = cbsChecked
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 11
              Transparent = True
              OnClick = chkFileRecordTelNoClick
            end
            object chkRemoveAll: TcxCheckBox
              Left = 175
              Top = 454
              Caption = #51204#52404#49440#53469
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 12
              Transparent = True
              OnClick = chkRemoveAllClick
            end
            object chkRemoveKISA: TcxCheckBox
              Left = 199
              Top = 479
              Caption = #48169#53685#50948#44288#47144' '#48264#54840#51228#44144
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 13
              Transparent = True
            end
            object chkRemoveMember: TcxCheckBox
              Left = 61
              Top = 479
              Caption = #45824#47532#54924#49324' '#48264#54840#51228#44144
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.SkinName = 'Sharp'
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 14
              Transparent = True
            end
            object chkRemoveSpamAll: TcxCheckBox
              Left = 199
              Top = 498
              Caption = #48276#50857#44144#48512'(400'#47564#44148') '#48264#54840#51228#44144
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 15
              Transparent = True
            end
            object chkRemoveTel: TcxCheckBox
              Left = 401
              Top = 212
              Caption = #51068#48152#51204#54868#48264#54840' '#51648#50864#44592
              State = cbsChecked
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 16
              Transparent = True
              Visible = False
            end
            object chkRemoveUser: TcxCheckBox
              Left = 343
              Top = 477
              Caption = #49688#49888#44144#48512#44288#47532' '#48264#54840#51228#44144
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 17
              Transparent = True
              OnClick = chkRemoveUserClick
            end
            object chkRemoveWorker: TcxCheckBox
              Left = 61
              Top = 498
              Caption = #51204#52404#44592#49324' '#48264#54840#51228#44144
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.SkinName = 'Sharp'
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 18
              Transparent = True
            end
            object chkSMSLog: TcxCheckBox
              Left = 409
              Top = 400
              Caption = #51473#48373#51228#44144' '#47196#44536' '#44592#47197
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 19
              Transparent = True
              OnClick = chkSMSLogClick
            end
            object cxGridFileBranch: TcxGrid
              Left = 61
              Top = 54
              Width = 553
              Height = 109
              BevelInner = bvNone
              BevelOuter = bvNone
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548
              Font.Style = []
              ParentFont = False
              TabOrder = 20
              LookAndFeel.NativeStyle = False
              object cxViewFileBranch: TcxGridDBTableView
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
                OnCellDblClick = cxViewFileBranchCellDblClick
                DataController.DataModeController.SmartRefresh = True
                DataController.Filter.Options = [fcoShowOperatorDescription, fcoSoftNull]
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = ',0;-,0'
                    Kind = skSum
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
                    Format = ',0.;-,0.'
                    Kind = skCount
                    Column = cxCol8
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                  end>
                DataController.Summary.SummaryGroups = <>
                Filtering.MRUItemsList = False
                Filtering.ColumnMRUItemsList = False
                Filtering.ColumnMRUItemsListCount = 0
                OptionsBehavior.CellHints = True
                OptionsBehavior.CopyCaptionsToClipboard = False
                OptionsBehavior.CopyPreviewToClipboard = False
                OptionsBehavior.ExpandMasterRowOnDblClick = False
                OptionsCustomize.ColumnFiltering = False
                OptionsCustomize.ColumnHorzSizing = False
                OptionsCustomize.ColumnMoving = False
                OptionsCustomize.ColumnSorting = False
                OptionsData.Editing = False
                OptionsSelection.CellSelect = False
                OptionsView.FocusRect = False
                OptionsView.NoDataToDisplayInfoText = '  '
                OptionsView.CellAutoHeight = True
                OptionsView.ExpandButtonsForEmptyDetails = False
                OptionsView.GridLineColor = clSilver
                OptionsView.GroupByBox = False
                OptionsView.HeaderHeight = 23
                Styles.Selection = Frm_Main.cxStyle11
                object cxCol8: TcxGridDBColumn
                  Caption = #51648#49324
                  DataBinding.FieldName = 'No'
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  FooterAlignmentHorz = taRightJustify
                  HeaderAlignmentHorz = taCenter
                  Width = 110
                end
                object cxCol9: TcxGridDBColumn
                  Caption = 'SMS'#52880#49772
                  DataBinding.FieldName = #51648#49324#47749
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = '###,##0.#'
                  HeaderAlignmentHorz = taCenter
                  Width = 128
                end
                object cxCol12: TcxGridDBColumn
                  DataBinding.FieldName = #47928#51088#44552#50529
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = '##0.#'
                  HeaderAlignmentHorz = taCenter
                end
                object cxCol10: TcxGridDBColumn
                  Caption = #51204#49569#44032#45733#54620#44148#49688
                  DataBinding.FieldName = #44592#49324#49324#48264
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = ',0;-,0'
                  HeaderAlignmentHorz = taCenter
                  Width = 123
                end
                object cxCol11: TcxGridDBColumn
                  Caption = #51648#49324#53076#46300
                  DataBinding.FieldName = #51088#52404#49324#48264
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Width = 90
                end
              end
              object cxLevelFileBranch: TcxGridLevel
                GridView = cxViewFileBranch
              end
            end
            object cxGridFileExcelList: TcxGrid
              Left = 61
              Top = 274
              Width = 553
              Height = 125
              BevelInner = bvNone
              BevelOuter = bvNone
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548
              Font.Style = []
              ParentFont = False
              TabOrder = 21
              LookAndFeel.NativeStyle = False
              object cxViewFileExcelList: TcxGridDBTableView
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
                OptionsCustomize.ColumnMoving = False
                OptionsData.Editing = False
                OptionsSelection.MultiSelect = True
                OptionsSelection.CellMultiSelect = True
                OptionsSelection.InvertSelect = False
                OptionsView.FocusRect = False
                OptionsView.NoDataToDisplayInfoText = '  '
                OptionsView.DataRowHeight = 22
                OptionsView.ExpandButtonsForEmptyDetails = False
                OptionsView.GridLineColor = clSilver
                OptionsView.GroupByBox = False
                OptionsView.HeaderHeight = 22
                Styles.Selection = Frm_Main.cxStyle11
                OnColumnHeaderClick = cxViewColumnHeaderClick
                object cxColXls1: TcxGridDBColumn
                  Caption = '1'#50676
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Vert = taVCenter
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Width = 64
                end
                object cxColXls2: TcxGridDBColumn
                  Caption = '2'#50676
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Vert = taVCenter
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Width = 64
                end
                object cxColXls3: TcxGridDBColumn
                  Caption = '3'#50676
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Vert = taVCenter
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Width = 64
                end
                object cxColXls4: TcxGridDBColumn
                  Caption = '4'#50676
                  Visible = False
                end
                object cxColXls5: TcxGridDBColumn
                  Caption = '5'#50676
                  Visible = False
                end
                object cxColXls6: TcxGridDBColumn
                  Caption = '6'#50676
                  Visible = False
                end
                object cxColXls7: TcxGridDBColumn
                  Caption = '7'#50676
                  Visible = False
                end
                object cxColXls8: TcxGridDBColumn
                  Caption = '8'#50676
                  Visible = False
                end
                object cxColXls9: TcxGridDBColumn
                  Caption = '9'#50676
                  Visible = False
                end
                object cxColXls10: TcxGridDBColumn
                  Caption = '10'#50676
                  Visible = False
                end
                object cxColXls11: TcxGridDBColumn
                  Caption = '11'#50676
                  Visible = False
                end
                object cxColXls12: TcxGridDBColumn
                  Caption = '12'#50676
                  Visible = False
                end
                object cxColXls13: TcxGridDBColumn
                  Caption = '13'#50676
                  Visible = False
                end
                object cxColXls14: TcxGridDBColumn
                  Caption = '14'#50676
                  Visible = False
                end
                object cxColXls15: TcxGridDBColumn
                  Caption = '15'#50676
                  Visible = False
                end
                object cxColXls16: TcxGridDBColumn
                  Caption = '16'#50676
                  Visible = False
                end
                object cxColViewFileExcelListColumn4: TcxGridDBColumn
                  DataBinding.FieldName = #44256#44061#45824#54364#48264#54840
                  Visible = False
                end
                object cxColViewFileExcelListColumn5: TcxGridDBColumn
                  DataBinding.FieldName = #44256#44061'+'#45824#54364
                  Visible = False
                end
              end
              object cxLevelLeveFilelExcelList: TcxGridLevel
                GridView = cxViewFileExcelList
              end
            end
            object cxLabel38: TcxLabel
              Left = 9
              Top = 448
              AutoSize = False
              Caption = '4'
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsOffice11
              Style.Color = 13756393
              Style.LookAndFeel.Kind = lfFlat
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 26
              Width = 47
              AnchorX = 33
              AnchorY = 461
            end
            object cxLabel39: TcxLabel
              Left = 59
              Top = 448
              AutoSize = False
              Caption = #49688#49888#44144#48512#50741#49496
              ParentColor = False
              ParentFont = False
              Style.BorderColor = clGray
              Style.BorderStyle = ebsOffice11
              Style.Color = 14280402
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = []
              Style.LookAndFeel.Kind = lfFlat
              Style.LookAndFeel.NativeStyle = False
              Style.Shadow = False
              Style.TextStyle = []
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 26
              Width = 106
              AnchorX = 112
              AnchorY = 461
            end
            object cxLabel43: TcxLabel
              Left = 9
              Top = 24
              AutoSize = False
              Caption = '1'
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsOffice11
              Style.Color = 13756393
              Style.LookAndFeel.Kind = lfFlat
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 26
              Width = 47
              AnchorX = 33
              AnchorY = 37
            end
            object cxLabel44: TcxLabel
              Left = 59
              Top = 24
              AutoSize = False
              Caption = '*SMS'#52880#49772#49324#50857#51648#49324
              ParentColor = False
              ParentFont = False
              Style.BorderColor = clGray
              Style.BorderStyle = ebsOffice11
              Style.Color = 14280402
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = []
              Style.LookAndFeel.Kind = lfFlat
              Style.LookAndFeel.NativeStyle = False
              Style.Shadow = False
              Style.TextStyle = []
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 26
              Width = 123
              AnchorX = 121
              AnchorY = 37
            end
            object cxLabel45: TcxLabel
              Left = 9
              Top = 172
              AutoSize = False
              Caption = '2'
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsOffice11
              Style.Color = 13756393
              Style.LookAndFeel.Kind = lfFlat
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 26
              Width = 47
              AnchorX = 33
              AnchorY = 185
            end
            object cxLabel46: TcxLabel
              Left = 59
              Top = 172
              AutoSize = False
              Caption = '*'#54028#51068#49440#53469
              ParentColor = False
              ParentFont = False
              Style.BorderColor = clGray
              Style.BorderStyle = ebsOffice11
              Style.Color = 14280402
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = []
              Style.LookAndFeel.Kind = lfFlat
              Style.LookAndFeel.NativeStyle = False
              Style.Shadow = False
              Style.TextStyle = []
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 26
              Width = 99
              AnchorX = 109
              AnchorY = 185
            end
            object cxLabel47: TcxLabel
              Left = 9
              Top = 208
              AutoSize = False
              Caption = '3'
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsOffice11
              Style.Color = 13756393
              Style.LookAndFeel.Kind = lfFlat
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 26
              Width = 47
              AnchorX = 33
              AnchorY = 221
            end
            object cxLabel48: TcxLabel
              Left = 59
              Top = 208
              AutoSize = False
              Caption = '*'#48156#49888'('#45824#54364')'#48264#54840
              ParentColor = False
              ParentFont = False
              Style.BorderColor = clGray
              Style.BorderStyle = ebsOffice11
              Style.Color = 14280402
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = []
              Style.LookAndFeel.Kind = lfFlat
              Style.LookAndFeel.NativeStyle = False
              Style.Shadow = False
              Style.TextStyle = []
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 26
              Width = 119
              AnchorX = 119
              AnchorY = 221
            end
            object cxLabel49: TcxLabel
              Left = 59
              Top = 240
              AutoSize = False
              Caption = '*'#49688#49888'('#44256#44061')'#48264#54840
              ParentColor = False
              ParentFont = False
              Style.BorderColor = clGray
              Style.BorderStyle = ebsOffice11
              Style.Color = 14280402
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = []
              Style.LookAndFeel.Kind = lfFlat
              Style.LookAndFeel.NativeStyle = False
              Style.Shadow = False
              Style.TextStyle = []
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 26
              Width = 119
              AnchorX = 119
              AnchorY = 253
            end
            object cxLabel50: TcxLabel
              Left = 255
              Top = 240
              AutoSize = False
              Caption = #49688#49888#44256#44061#47749
              ParentColor = False
              ParentFont = False
              Style.BorderColor = clGray
              Style.BorderStyle = ebsOffice11
              Style.Color = 14280402
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = []
              Style.LookAndFeel.Kind = lfFlat
              Style.LookAndFeel.NativeStyle = False
              Style.Shadow = False
              Style.TextStyle = []
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 26
              Width = 95
              AnchorX = 303
              AnchorY = 253
            end
            object cxLabel51: TcxLabel
              Left = 9
              Top = 526
              AutoSize = False
              Caption = '5'
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsOffice11
              Style.Color = 13756393
              Style.LookAndFeel.Kind = lfFlat
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 26
              Width = 47
              AnchorX = 33
              AnchorY = 539
            end
            object cxLabel52: TcxLabel
              Left = 59
              Top = 526
              AutoSize = False
              Caption = #47928#51088#45236#50857#51077#47141
              ParentColor = False
              ParentFont = False
              Style.BorderColor = clGray
              Style.BorderStyle = ebsOffice11
              Style.Color = 14280402
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = []
              Style.LookAndFeel.Kind = lfFlat
              Style.LookAndFeel.NativeStyle = False
              Style.Shadow = False
              Style.TextStyle = []
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 26
              Width = 106
              AnchorX = 112
              AnchorY = 539
            end
            object edtFilename: TcxTextEdit
              Left = 162
              Top = 172
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
              TabOrder = 34
              Height = 26
              Width = 361
            end
            object edtSelBranch: TcxTextEdit
              Left = 186
              Top = 24
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
              TabOrder = 35
              Height = 26
              Width = 335
            end
            object lst_tel: TListBox
              Left = 620
              Top = 42
              Width = 37
              Height = 89
              TabStop = False
              ImeName = 'Microsoft IME 2003'
              ItemHeight = 12
              TabOrder = 37
              Visible = False
            end
            object cbb_Balsin: TcxComboBox
              Left = 181
              Top = 208
              AutoSize = False
              Properties.DropDownListStyle = lsFixedList
              TabOrder = 7
              Height = 26
              Width = 126
            end
            object cbKeynumber02: TcxComboBox
              Left = 181
              Top = 208
              AutoSize = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                #51204#52404)
              Properties.OnChange = cbKeynumber02PropertiesChange
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
              TabOrder = 38
              Text = #51204#52404
              Visible = False
              Height = 26
              Width = 126
            end
            object cbb_cust_tel: TcxComboBox
              Left = 181
              Top = 240
              AutoSize = False
              Properties.DropDownListStyle = lsFixedList
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 9
              Height = 26
              Width = 64
            end
            object cbb_cust_name: TcxComboBox
              Left = 354
              Top = 240
              AutoSize = False
              Properties.DropDownListStyle = lsFixedList
              Properties.OnChange = cbb_cust_namePropertiesChange
              Style.Color = clWhite
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 8
              Height = 26
              Width = 73
            end
            object grp3: TcxGroupBox
              Left = 57
              Top = 556
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              TabOrder = 36
              Height = 52
              Width = 440
              object lblSendCount: TLabel
                Left = 8
                Top = 11
                Width = 389
                Height = 13
                AutoSize = False
                Caption = #51204#49569' '#50696#49345' '#44148#49688#45716'  0'#44148' '#51077#45768#45796'.'
                Transparent = True
              end
              object Label4: TLabel
                Left = 8
                Top = 31
                Width = 429
                Height = 13
                AutoSize = False
                Caption = '['#47928#51088#45236#50857#51077#47141'] '#48260#53948#51012' '#53364#47533#54616#47732' '#45796#51020#54868#47732#50640#49436' '#47700#51648#49884' '#51089#49457' '#54980' '#51204#49569#54633#45768#45796'.'
                Transparent = True
              end
            end
            object lblFileSmsTotal: TcxLabel
              Left = 433
              Top = 250
              AutoSize = False
              Caption = #52509' 0000 '#44148
              Transparent = True
              Height = 16
              Width = 61
            end
            object lblFileExcelStatus: TcxLabel
              Left = 61
              Top = 402
              AutoSize = False
              Transparent = True
              Height = 16
              Width = 332
            end
          end
        end
        object pnlSMSLog: TPanel
          Left = 659
          Top = 625
          Width = 328
          Height = 210
          BevelKind = bkFlat
          BevelOuter = bvNone
          BorderWidth = 2
          TabOrder = 0
          Visible = False
          DesignSize = (
            324
            206)
          object cxLabel40: TcxLabel
            Left = 2
            Top = 2
            Cursor = crSizeAll
            Align = alTop
            AutoSize = False
            Caption = #45824#50857#47049' SMS '#51473#48373#51228#44144' '#47196#44536
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 15191501
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            OnMouseDown = cxLabel40MouseDown
            Height = 25
            Width = 320
            AnchorX = 162
            AnchorY = 15
          end
          object mmoSMSLog: TcxMemo
            Left = 2
            Top = 27
            Align = alClient
            Properties.ScrollBars = ssVertical
            TabOrder = 1
            Height = 177
            Width = 320
          end
          object BtnClose: TcxButton
            Left = 296
            Top = 5
            Width = 22
            Height = 20
            Cursor = crHandPoint
            Hint = #45803#44592
            Anchors = [akTop, akRight]
            Colors.Default = 16635384
            Colors.Normal = 16773362
            Colors.Hot = 16360076
            Colors.Pressed = 16644080
            Colors.Disabled = 4227327
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
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            TabStop = False
            OnClick = BtnCloseClick
          end
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Tag = 1003
      Caption = #51312#54924#44208#44284'('#49345#49464')'
      ImageIndex = 2
      object PnlMainA3: TPanel
        Left = 0
        Top = 0
        Width = 1113
        Height = 676
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object cxGridResultList: TcxGrid
          AlignWithMargins = True
          Left = 3
          Top = 77
          Width = 1107
          Height = 596
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          PopupMenu = pm3
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object cxViewResultList: TcxGridDBTableView
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
            OnCellClick = cxViewResultListCellClick
            DataController.DataModeController.SmartRefresh = True
            DataController.Filter.Options = [fcoShowOperatorDescription, fcoSoftNull]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = cxColView1Column1
              end
              item
                Format = ',0.;-,0.'
                Kind = skSum
                Column = cxColView1Column7
              end
              item
                Format = ',0.;-,0.'
                Kind = skSum
                Column = cxColView1Column8
              end
              item
                Format = ',0.;-,0.'
                Kind = skSum
                Column = cxColView1Column9
              end
              item
                Format = ',0.;-,0.'
                Kind = skSum
                Column = cxColView1Column10
              end>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            Filtering.ColumnMRUItemsListCount = 0
            OptionsBehavior.CellHints = True
            OptionsBehavior.CopyCaptionsToClipboard = False
            OptionsBehavior.CopyPreviewToClipboard = False
            OptionsBehavior.ExpandMasterRowOnDblClick = False
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.ColumnSorting = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.FocusRect = False
            OptionsView.NoDataToDisplayInfoText = '  '
            OptionsView.DataRowHeight = 22
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.Footer = True
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 23
            Styles.Selection = Frm_Main.cxStyle11
            OnColumnHeaderClick = cxViewColumnHeaderClick
            object cxColView1Column1: TcxGridDBColumn
              DataBinding.FieldName = 'No.'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 47
            end
            object cxColView1Column2: TcxGridDBColumn
              DataBinding.FieldName = #45216#51676
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 147
            end
            object cxColView1Column3: TcxGridDBColumn
              DataBinding.FieldName = #51204#49569#49884#44036'('#50696#50557')'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 143
            end
            object cxColView1Column4: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 130
            end
            object cxColView1Column5: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 96
            end
            object cxColView1Column6: TcxGridDBColumn
              DataBinding.FieldName = #48156#49888#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 101
            end
            object cxColView1Column7: TcxGridDBColumn
              DataBinding.FieldName = #51204#49569#54943#49688
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
            end
            object cxColView1Column8: TcxGridDBColumn
              DataBinding.FieldName = #51204#49569#49457#44277
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
            end
            object cxColView1Column9: TcxGridDBColumn
              DataBinding.FieldName = #51204#49569#49892#54056
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
            end
            object cxColView1Column10: TcxGridDBColumn
              DataBinding.FieldName = #52264#44048#44552#50529
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 119
            end
            object cxViewResultListColumn1: TcxGridDBColumn
              Caption = #49345#49464#45796#50868#47196#46300
              PropertiesClassName = 'TcxHyperLinkEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              Width = 84
            end
            object cxViewResultListColumn2: TcxGridDBColumn
              Caption = 'M-Index'
              Visible = False
            end
            object cxViewResultListColumn3: TcxGridDBColumn
              DataBinding.FieldName = 'PushSeq'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxLevelResultList: TcxGridLevel
            GridView = cxViewResultList
          end
        end
        object pnl5: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1107
          Height = 68
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 1
          object cxGroupBox3: TcxGroupBox
            Left = 0
            Top = 0
            Align = alClient
            Style.BorderStyle = ebsFlat
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Height = 68
            Width = 1107
            object Shape1: TShape
              Left = 6
              Top = 37
              Width = 276
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object Shape2: TShape
              Left = 6
              Top = 7
              Width = 267
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object Shape9: TShape
              Left = 325
              Top = 37
              Width = 142
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object btnDateA3: TcxButton
              Tag = 2
              Left = 296
              Top = 37
              Width = 25
              Height = 24
              Cursor = crHandPoint
              DropDownMenu = pop_Date
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
              TabOrder = 0
            end
            object btnExcelA3: TcxButton
              Left = 566
              Top = 37
              Width = 80
              Height = 25
              Cursor = crHandPoint
              Caption = #50641#49472#45796#50868
              Colors.Default = 16773362
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548
              Font.Style = []
              ParentFont = False
              OnClick = btnExcelA3Click
            end
            object btnSearchA3: TcxButton
              Left = 482
              Top = 37
              Width = 80
              Height = 25
              Cursor = crHandPoint
              Caption = #44160#49353
              Colors.Default = 16773362
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 2
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548
              Font.Style = []
              ParentFont = False
              OnClick = btnSearchA3Click
            end
            object cxLabel53: TcxLabel
              Left = 649
              Top = 11
              Caption = 'SMS, '#44277#51648'PUSH '#48156#49569' '#44208#44284' '#45796#50868#47196#46300#45716' '#52572#44540'3'#44060#50900' '#44620#51648#47564' '#44032#45733' '#54633#45768#45796'.'
              Transparent = True
            end
            object cxDtEndA3: TcxDateEdit
              Left = 205
              Top = 36
              AutoSize = False
              EditValue = 41640d
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
              Width = 89
            end
            object cxDtStartA3: TcxDateEdit
              Left = 99
              Top = 36
              AutoSize = False
              EditValue = 41640d
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
              Width = 89
            end
            object lblSosokNameA3: TcxLabel
              Left = 99
              Top = 6
              AutoSize = False
              Caption = #49548#49549
              ParentColor = False
              Style.BorderStyle = ebsSingle
              Style.LookAndFeel.NativeStyle = False
              Style.TextColor = 16711808
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Height = 26
              Width = 547
              AnchorX = 373
              AnchorY = 19
            end
            object cxLabel54: TcxLabel
              Left = 33
              Top = 11
              Caption = #49548'    '#49549
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 55
              AnchorY = 19
            end
            object cxLabel55: TcxLabel
              Left = 29
              Top = 42
              Caption = #44160#49353#44592#44036
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 55
              AnchorY = 50
            end
            object cxLabel56: TcxLabel
              Left = 185
              Top = 42
              Caption = #8764
              Transparent = True
            end
            object cboSearchGubun: TcxComboBox
              Left = 396
              Top = 36
              AutoSize = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'SMS'#48156#49569
                'PUSH'#48156#49569)
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 10
              Text = 'SMS'#48156#49569
              Height = 26
              Width = 84
            end
            object cxLabel63: TcxLabel
              Left = 336
              Top = 42
              Caption = #44160#49353#44396#48516
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 362
              AnchorY = 50
            end
          end
        end
        object cxGrid1: TcxGrid
          AlignWithMargins = True
          Left = 216
          Top = 160
          Width = 617
          Height = 364
          BevelInner = bvNone
          BevelOuter = bvNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          PopupMenu = pm3
          TabOrder = 2
          Visible = False
          LookAndFeel.NativeStyle = False
          object cxViewResultExcel: TcxGridDBTableView
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
            OnCellClick = cxViewResultListCellClick
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
            OptionsView.HeaderHeight = 22
            Styles.Selection = Frm_Main.cxStyle11
            OnColumnHeaderClick = cxViewColumnHeaderClick
            object cxGridDBColumn01: TcxGridDBColumn
              DataBinding.FieldName = 'No.'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 47
            end
            object cxGridDBColumn02: TcxGridDBColumn
              DataBinding.FieldName = #48156#49888#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 147
            end
            object cxGridDBColumn03: TcxGridDBColumn
              DataBinding.FieldName = #49688#49888#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 143
            end
            object cxGridDBColumn04: TcxGridDBColumn
              DataBinding.FieldName = #47700#49884#51648
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 130
            end
            object cxGridDBColumn05: TcxGridDBColumn
              DataBinding.FieldName = #51077#47141#49884#44036
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 96
            end
            object cxGridDBColumn06: TcxGridDBColumn
              DataBinding.FieldName = #50696#50557#49884#44036
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 101
            end
            object cxGridDBColumn07: TcxGridDBColumn
              DataBinding.FieldName = #51204#49569#49884#44036
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
            end
            object cxGridDBColumn08: TcxGridDBColumn
              DataBinding.FieldName = #51204#49569#44208#44284
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxViewResultExcel
          end
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Tag = 1004
      Caption = #51312#54924#44208#44284'('#51068#48324')'
      ImageIndex = 3
      object PnlMainA4: TPanel
        Left = 0
        Top = 0
        Width = 1113
        Height = 676
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object pnl14: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1107
          Height = 129
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          object cxGroupBox4: TcxGroupBox
            Left = 0
            Top = 0
            Align = alClient
            Style.BorderStyle = ebsFlat
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Height = 129
            Width = 1107
            object Shape3: TShape
              Left = 6
              Top = 7
              Width = 267
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object Shape4: TShape
              Left = 6
              Top = 37
              Width = 347
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object Shape10: TShape
              Left = 366
              Top = 38
              Width = 142
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object btnDateA4: TcxButton
              Tag = 3
              Left = 339
              Top = 37
              Width = 25
              Height = 24
              Cursor = crHandPoint
              DropDownMenu = pop_Date
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
              TabOrder = 0
            end
            object btnExcelA4: TcxButton
              Left = 548
              Top = 67
              Width = 80
              Height = 56
              Cursor = crHandPoint
              Caption = #50641#49472#45796#50868
              Colors.Default = 16773362
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548
              Font.Style = []
              ParentFont = False
              OnClick = btnExcelA4Click
            end
            object btnSearchA4: TcxButton
              Left = 548
              Top = 7
              Width = 80
              Height = 56
              Cursor = crHandPoint
              Caption = #44160'    '#49353
              Colors.Default = 16773362
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 2
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548
              Font.Style = []
              ParentFont = False
              OnClick = btnSearchA4Click
            end
            object cxLabel57: TcxLabel
              Left = 24
              Top = 74
              Caption = 'SMS, '#44277#51648'PUSH '#48156#49569' '#44208#44284' '#45796#50868#47196#46300#45716' '#52572#44540'3'#44060#50900' '#44620#51648#47564' '#44032#45733' '#54633#45768#45796'.'
              Transparent = True
            end
            object cxDtEndA4: TcxDateEdit
              Tag = 3
              Left = 211
              Top = 36
              TabStop = False
              AutoSize = False
              ParentShowHint = False
              Properties.DateButtons = [btnToday]
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
              TabOrder = 4
              Height = 26
              Width = 88
            end
            object cxDtStartA4: TcxDateEdit
              Tag = 3
              Left = 77
              Top = 36
              TabStop = False
              AutoSize = False
              EditValue = 39717d
              ParentShowHint = False
              Properties.DateButtons = [btnToday]
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
              Width = 88
            end
            object lbl28: TcxLabel
              Left = 165
              Top = 41
              Caption = '09:00 ~ '
              Transparent = True
            end
            object lbl29: TcxLabel
              Left = 301
              Top = 41
              Caption = '09:00'
              Transparent = True
            end
            object lblSosokNameA4: TcxLabel
              Left = 77
              Top = 6
              AutoSize = False
              Caption = #49548#49549
              ParentColor = False
              Style.BorderStyle = ebsSingle
              Style.LookAndFeel.NativeStyle = False
              Style.TextColor = 16711808
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Height = 26
              Width = 468
              AnchorX = 311
              AnchorY = 19
            end
            object cxGroupBox5: TcxGroupBox
              Left = 634
              Top = 7
              Alignment = alTopCenter
              Caption = #52880#49772#51221#48372
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = False
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              TabOrder = 9
              Height = 119
              Width = 440
              object edtDayBranchCash: TcxTextEdit
                Left = 295
                Top = 18
                AutoSize = False
                Enabled = False
                Properties.Alignment.Horz = taRightJustify
                Style.LookAndFeel.SkinName = 'Sharp'
                StyleDisabled.LookAndFeel.SkinName = 'Sharp'
                StyleFocused.LookAndFeel.SkinName = 'Sharp'
                StyleHot.LookAndFeel.SkinName = 'Sharp'
                TabOrder = 0
                Height = 21
                Width = 99
              end
              object edtDayComCount: TcxTextEdit
                Left = 209
                Top = 66
                AutoSize = False
                Enabled = False
                Properties.Alignment.Horz = taRightJustify
                Style.LookAndFeel.SkinName = 'Sharp'
                StyleDisabled.LookAndFeel.SkinName = 'Sharp'
                StyleFocused.LookAndFeel.SkinName = 'Sharp'
                StyleHot.LookAndFeel.SkinName = 'Sharp'
                TabOrder = 1
                Height = 21
                Width = 60
              end
              object edtDayComPrice: TcxTextEdit
                Left = 83
                Top = 66
                AutoSize = False
                Enabled = False
                Properties.Alignment.Horz = taRightJustify
                Style.LookAndFeel.SkinName = 'Sharp'
                StyleDisabled.LookAndFeel.SkinName = 'Sharp'
                StyleFocused.LookAndFeel.SkinName = 'Sharp'
                StyleHot.LookAndFeel.SkinName = 'Sharp'
                TabOrder = 2
                Height = 21
                Width = 60
              end
              object edtDayNmlCount: TcxTextEdit
                Left = 209
                Top = 42
                AutoSize = False
                Enabled = False
                Properties.Alignment.Horz = taRightJustify
                Style.LookAndFeel.SkinName = 'Sharp'
                StyleDisabled.LookAndFeel.SkinName = 'Sharp'
                StyleFocused.LookAndFeel.SkinName = 'Sharp'
                StyleHot.LookAndFeel.SkinName = 'Sharp'
                TabOrder = 3
                Height = 21
                Width = 60
              end
              object edtDayNmlPrice: TcxTextEdit
                Left = 83
                Top = 42
                AutoSize = False
                Enabled = False
                Properties.Alignment.Horz = taRightJustify
                Style.LookAndFeel.SkinName = 'Sharp'
                StyleDisabled.LookAndFeel.SkinName = 'Sharp'
                StyleFocused.LookAndFeel.SkinName = 'Sharp'
                StyleHot.LookAndFeel.SkinName = 'Sharp'
                TabOrder = 4
                Height = 21
                Width = 60
              end
              object edtDaySmsCash: TcxTextEdit
                Left = 83
                Top = 18
                AutoSize = False
                Enabled = False
                Properties.Alignment.Horz = taRightJustify
                Style.LookAndFeel.SkinName = 'Sharp'
                StyleDisabled.LookAndFeel.SkinName = 'Sharp'
                StyleFocused.LookAndFeel.SkinName = 'Sharp'
                StyleHot.LookAndFeel.SkinName = 'Sharp'
                TabOrder = 5
                Height = 21
                Width = 99
              end
              object lbl30: TcxLabel
                Left = 6
                Top = 18
                AutoSize = False
                Caption = 'SMS'#52880#49772
                ParentColor = False
                Style.BorderStyle = ebsOffice11
                Style.Color = clWhite
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Height = 21
                Width = 80
                AnchorX = 46
                AnchorY = 29
              end
              object lbl31: TcxLabel
                Left = 6
                Top = 42
                AutoSize = False
                Caption = #51068#48152' SMS'
                ParentColor = False
                Style.BorderStyle = ebsOffice11
                Style.Color = clWhite
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Height = 21
                Width = 80
                AnchorX = 46
                AnchorY = 53
              end
              object lbl32: TcxLabel
                Left = 6
                Top = 66
                AutoSize = False
                Caption = #44305#44256' SMS'
                ParentColor = False
                Style.BorderStyle = ebsOffice11
                Style.Color = clWhite
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Height = 21
                Width = 80
                AnchorX = 46
                AnchorY = 77
              end
              object lbl33: TcxLabel
                Left = 218
                Top = 18
                AutoSize = False
                Caption = #51648#49324#52880#49772
                ParentColor = False
                Style.BorderStyle = ebsOffice11
                Style.Color = clWhite
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Height = 21
                Width = 80
                AnchorX = 258
                AnchorY = 29
              end
              object cxLabel64: TcxLabel
                Left = 6
                Top = 89
                AutoSize = False
                Caption = #44277#51648' PUSH'
                ParentColor = False
                Style.BorderStyle = ebsOffice11
                Style.Color = clWhite
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Height = 21
                Width = 80
                AnchorX = 46
                AnchorY = 100
              end
              object edtDayPushPrice: TcxTextEdit
                Left = 83
                Top = 89
                AutoSize = False
                Enabled = False
                Properties.Alignment.Horz = taRightJustify
                Style.LookAndFeel.SkinName = 'Sharp'
                StyleDisabled.LookAndFeel.SkinName = 'Sharp'
                StyleFocused.LookAndFeel.SkinName = 'Sharp'
                StyleHot.LookAndFeel.SkinName = 'Sharp'
                TabOrder = 11
                Height = 21
                Width = 60
              end
              object edtDayPushCount: TcxTextEdit
                Left = 209
                Top = 89
                AutoSize = False
                Enabled = False
                Properties.Alignment.Horz = taRightJustify
                Style.LookAndFeel.SkinName = 'Sharp'
                StyleDisabled.LookAndFeel.SkinName = 'Sharp'
                StyleFocused.LookAndFeel.SkinName = 'Sharp'
                StyleHot.LookAndFeel.SkinName = 'Sharp'
                TabOrder = 12
                Height = 21
                Width = 60
              end
              object lbl34: TcxLabel
                Left = 187
                Top = 24
                Caption = #50896
                Transparent = True
              end
              object lbl35: TcxLabel
                Left = 398
                Top = 24
                Caption = #50896
                Transparent = True
              end
              object lbl36: TcxLabel
                Left = 149
                Top = 46
                Caption = #50896' / '#44148#45817
                Transparent = True
              end
              object lbl37: TcxLabel
                Left = 149
                Top = 70
                Caption = #50896' / '#44148#45817
                Transparent = True
              end
              object lbl38: TcxLabel
                Left = 270
                Top = 48
                Caption = #44148' ('#51068#48152'SMS'#51204#49569' '#44032#45733#44148#49688')'
                Transparent = True
              end
              object lbl39: TcxLabel
                Left = 270
                Top = 72
                Caption = #44148' ('#44305#44256'SMS'#51204#49569' '#44032#45733#44148#49688')'
                Transparent = True
              end
              object Label5: TcxLabel
                Left = 149
                Top = 93
                Caption = #50896' / '#44148#45817
                Transparent = True
              end
              object Label6: TcxLabel
                Left = 270
                Top = 95
                Caption = #44148' ('#44277#51648'PUSH'#51204#49569' '#44032#45733#44148#49688')'
                Transparent = True
              end
            end
            object cxLabel58: TcxLabel
              Left = 20
              Top = 11
              Caption = #49548'    '#49549
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 42
              AnchorY = 19
            end
            object cxLabel59: TcxLabel
              Left = 16
              Top = 42
              Caption = #44160#49353#44592#44036
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 42
              AnchorY = 50
            end
            object cboSearchGubun4: TcxComboBox
              Left = 451
              Top = 37
              AutoSize = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'SMS'#48156#49569
                'PUSH'#48156#49569)
              Properties.OnChange = cboSearchGubun4PropertiesChange
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 12
              Text = 'SMS'#48156#49569
              Height = 26
              Width = 95
            end
            object cxLabel65: TcxLabel
              Left = 387
              Top = 42
              Caption = #44160#49353#44396#48516
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 413
              AnchorY = 50
            end
            object lblCntA4: TcxLabel
              Left = 24
              Top = 97
              Caption = #52509'    00 '#44148
              Transparent = True
            end
          end
        end
        object pnl15: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 138
          Width = 1107
          Height = 535
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object Shape7: TShape
            Left = 0
            Top = 474
            Width = 1107
            Height = 5
            Align = alBottom
            Pen.Style = psClear
            ExplicitLeft = 6
            ExplicitTop = 485
          end
          object Shape11: TShape
            Left = 0
            Top = 219
            Width = 1107
            Height = 5
            Align = alBottom
            Pen.Style = psClear
            ExplicitLeft = -5
            ExplicitTop = 264
          end
          object cxGridDayResult: TcxGrid
            Left = 0
            Top = 0
            Width = 1107
            Height = 219
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            PopupMenu = pm3
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            object cxViewDayResult: TcxGridDBTableView
              OnMouseDown = cxViewDayResultMouseDown
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
              Styles.Selection = Frm_Main.cxStyle11
              OnColumnHeaderClick = cxViewColumnHeaderClick
              object cxColViewDaySchColumn1: TcxGridDBColumn
                DataBinding.FieldName = #45216#51676
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 123
              end
              object cxColViewDaySchColumn2: TcxGridDBColumn
                DataBinding.FieldName = #48516#47448
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 78
              end
              object cxColViewDaySchColumn3: TcxGridDBColumn
                DataBinding.FieldName = #52509#44148#49688
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 117
              end
              object cxColViewDaySchColumn4: TcxGridDBColumn
                DataBinding.FieldName = #49457#44277#44148#49688
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 92
              end
              object cxColViewDaySchColumn5: TcxGridDBColumn
                DataBinding.FieldName = #49892#54056#44148#49688
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 78
              end
              object cxColViewDaySchColumn6: TcxGridDBColumn
                DataBinding.FieldName = #49457#44277#47456'(%)'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = #8361',0.0;-'#8361',0.0'
                HeaderAlignmentHorz = taCenter
                Width = 98
              end
              object cxColViewDaySchColumn7: TcxGridDBColumn
                DataBinding.FieldName = #49324#50857#44552#50529'('#50896')'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                HeaderAlignmentHorz = taCenter
                Width = 116
              end
              object cxViewDayResultColumn1: TcxGridDBColumn
                DataBinding.FieldName = #49892#54056#54872#44553#50529
                PropertiesClassName = 'TcxCurrencyEditProperties'
                HeaderAlignmentHorz = taCenter
                Width = 116
              end
              object cxColViewDaySchColumn8: TcxGridDBColumn
                DataBinding.FieldName = #49345#49464#45236#50669
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 128
              end
            end
            object cxLevelDayResult: TcxGridLevel
              GridView = cxViewDayResult
            end
          end
          object cxGridDaySum: TcxGrid
            Left = 0
            Top = 479
            Width = 1107
            Height = 56
            Align = alBottom
            BevelInner = bvNone
            BevelOuter = bvNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            LookAndFeel.NativeStyle = True
            object cxViewDaySum: TcxGridDBTableView
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
              OnCellClick = cxViewDaySumCellClick
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
              OptionsView.Header = False
              OptionsView.HeaderHeight = 22
              Styles.Selection = Frm_Main.cxStyle11
              object cxGridDBColumn3: TcxGridDBColumn
                DataBinding.FieldName = #45216#51676
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.CellMerging = True
                Width = 123
              end
              object cxGridDBColumn4: TcxGridDBColumn
                DataBinding.FieldName = #48516#47448
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 78
              end
              object cxGridDBColumn5: TcxGridDBColumn
                DataBinding.FieldName = #52509#44148#49688
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 117
              end
              object cxGridDBColumn6: TcxGridDBColumn
                DataBinding.FieldName = #49457#44277#44148#49688
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 92
              end
              object cxGridDBColumn7: TcxGridDBColumn
                DataBinding.FieldName = #49892#54056#44148#49688
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 78
              end
              object cxGridDBColumn8: TcxGridDBColumn
                DataBinding.FieldName = #49457#44277#47456'(%)'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                HeaderAlignmentHorz = taCenter
                Width = 98
              end
              object cxGridDBColumn9: TcxGridDBColumn
                DataBinding.FieldName = #49324#50857#44552#50529'('#50896')'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                HeaderAlignmentHorz = taCenter
                Width = 116
              end
              object cxViewDaySumColumn1: TcxGridDBColumn
                DataBinding.FieldName = #49892#54056#54872#44553#50529
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Width = 116
              end
              object cxGridDBColumn10: TcxGridDBColumn
                DataBinding.FieldName = #49345#49464#45236#50669
                PropertiesClassName = 'TcxHyperLinkEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.StartKey = 0
                Properties.UseLeftAlignmentOnEditing = False
                HeaderAlignmentHorz = taCenter
                Width = 128
              end
            end
            object cxLevelDaySum: TcxGridLevel
              GridView = cxViewDaySum
            end
          end
          object cxGridBranchResult: TcxGrid
            Left = 0
            Top = 224
            Width = 1107
            Height = 250
            Align = alBottom
            BevelInner = bvNone
            BevelOuter = bvNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            PopupMenu = pm3
            TabOrder = 3
            LookAndFeel.NativeStyle = False
            object cxViewBranchResult: TcxGridDBTableView
              OnMouseDown = cxViewBranchResultMouseDown
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
              Styles.Selection = Frm_Main.cxStyle11
              OnColumnHeaderClick = cxViewColumnHeaderClick
              object cxGridDBColumn11: TcxGridDBColumn
                DataBinding.FieldName = #51648#49324'('#53076#46300')'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 123
              end
              object cxGridDBColumn12: TcxGridDBColumn
                DataBinding.FieldName = #48516#47448
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 78
              end
              object cxGridDBColumn13: TcxGridDBColumn
                DataBinding.FieldName = #52509#44148#49688
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 117
              end
              object cxGridDBColumn14: TcxGridDBColumn
                DataBinding.FieldName = #49457#44277#44148#49688
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 92
              end
              object cxGridDBColumn15: TcxGridDBColumn
                DataBinding.FieldName = #49892#54056#44148#49688
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 78
              end
              object cxGridDBColumn16: TcxGridDBColumn
                DataBinding.FieldName = #49457#44277#47456'(%)'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = #8361',0.0;-'#8361',0.0'
                HeaderAlignmentHorz = taCenter
                Width = 98
              end
              object cxGridDBColumn17: TcxGridDBColumn
                DataBinding.FieldName = #49324#50857#44552#50529'('#50896')'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                HeaderAlignmentHorz = taCenter
                Width = 116
              end
              object cxGridDBColumn18: TcxGridDBColumn
                DataBinding.FieldName = #49892#54056#54872#44553#50529
                PropertiesClassName = 'TcxCurrencyEditProperties'
                HeaderAlignmentHorz = taCenter
                Width = 116
              end
              object cxGridDBColumn19: TcxGridDBColumn
                DataBinding.FieldName = #49345#49464#45236#50669
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 128
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxViewBranchResult
            end
          end
          object pnlDayDown: TPanel
            Left = 128
            Top = 248
            Width = 673
            Height = 141
            Caption = 'pnlDayDown'
            TabOrder = 1
            Visible = False
            object cxGridDayDown: TcxGrid
              Left = 1
              Top = 1
              Width = 671
              Height = 139
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              LookAndFeel.NativeStyle = True
              object cxViewDayDown: TcxGridDBTableView
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
                OptionsView.HeaderHeight = 22
                Styles.Selection = Frm_Main.cxStyle11
                object cxColViewDayDownColumn1: TcxGridDBColumn
                  DataBinding.ValueType = 'String'
                  PropertiesClassName = 'TcxLabelProperties'
                end
                object cxColViewDayDownColumn2: TcxGridDBColumn
                  DataBinding.ValueType = 'String'
                  PropertiesClassName = 'TcxLabelProperties'
                end
                object cxColViewDayDownColumn3: TcxGridDBColumn
                  DataBinding.ValueType = 'String'
                  PropertiesClassName = 'TcxLabelProperties'
                end
                object cxColViewDayDownColumn4: TcxGridDBColumn
                  DataBinding.ValueType = 'String'
                  PropertiesClassName = 'TcxLabelProperties'
                end
                object cxColViewDayDownColumn5: TcxGridDBColumn
                  DataBinding.ValueType = 'String'
                  PropertiesClassName = 'TcxLabelProperties'
                end
                object cxColViewDayDownColumn6: TcxGridDBColumn
                  DataBinding.ValueType = 'String'
                  PropertiesClassName = 'TcxLabelProperties'
                end
                object cxColViewDayDownColumn7: TcxGridDBColumn
                  DataBinding.ValueType = 'String'
                  PropertiesClassName = 'TcxLabelProperties'
                end
                object cxColViewDayDownColumn8: TcxGridDBColumn
                  DataBinding.ValueType = 'String'
                  PropertiesClassName = 'TcxLabelProperties'
                end
                object cxColViewDayDownColumn9: TcxGridDBColumn
                  DataBinding.ValueType = 'String'
                  PropertiesClassName = 'TcxLabelProperties'
                end
                object cxColViewDayDownColumn10: TcxGridDBColumn
                  DataBinding.ValueType = 'String'
                  PropertiesClassName = 'TcxLabelProperties'
                end
              end
              object cxLevelDayDown: TcxGridLevel
                GridView = cxViewDayDown
              end
            end
          end
        end
      end
    end
    object cxTabSheet5: TcxTabSheet
      Tag = 1005
      Caption = #49688#49888#44144#48512#44288#47532
      ImageIndex = 4
      object PnlMainA5: TPanel
        Left = 0
        Top = 0
        Width = 1113
        Height = 676
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object pnl6: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1107
          Height = 41
          Align = alTop
          BevelKind = bkFlat
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 1
          object Shape5: TShape
            Left = 561
            Top = 8
            Width = 150
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object btnNoRecvSearch: TcxButton
            Left = 776
            Top = 7
            Width = 62
            Height = 25
            Cursor = crHandPoint
            Caption = #44160#49353
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 0
            OnClick = btnNoRecvSearchClick
          end
          object cxLabel60: TcxLabel
            Left = 574
            Top = 12
            Caption = #51204#54868#48264#54840
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 600
            AnchorY = 20
          end
          object edtNoRecvSearch: TcxTextEdit
            Left = 649
            Top = 7
            AutoSize = False
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 2
            OnKeyDown = edtNoRecvSearchKeyDown
            OnKeyUp = edtNoRecvSearchKeyUp
            Height = 26
            Width = 121
          end
          object lbl16: TcxLabel
            Left = 71
            Top = 12
            Caption = 'PC'#45236' '#49688#49888#44144#48512#54028#51068'('#48376'PC'#50640#49436#47564' '#46041#51089'/'#51648#49324#50640' '#44288#44228#50630#51060' '#44144#48512#46120')'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Transparent = True
          end
        end
        object pnl7: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 50
          Width = 1107
          Height = 41
          Align = alTop
          BevelKind = bkFlat
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 2
          object btnRegNoRecv: TcxButton
            Left = 304
            Top = 5
            Width = 469
            Height = 26
            Cursor = crHandPoint
            Caption = #49688#49888#44144#48512' '#51204#54868#48264#54840'(.txt) '#49688#49888#44144#48512#54028#51068'( PC )'#50640' '#46321#47197#54616#44592
            Colors.Default = 16773362
            Colors.Normal = 16743805
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            OptionsImage.Margin = 1
            TabOrder = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnRegNoRecvClick
          end
          object btnDelNoRecv: TcxButton
            Left = 776
            Top = 5
            Width = 149
            Height = 26
            Cursor = crHandPoint
            Caption = #49440#53469#54924#50896' '#49325#51228'('#49688#49888#46041#51032')'
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 1
            OnClick = btnDelNoRecvClick
          end
          object lblNoRecvCount: TcxLabel
            Left = 16
            Top = 21
            Caption = #52509'    0 '#47749
            Transparent = True
          end
        end
        object pnl8: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 97
          Width = 1107
          Height = 576
          Align = alClient
          BevelKind = bkFlat
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 3
          object lstNoRecvList: TcxListBox
            Left = 40
            Top = 16
            Width = 185
            Height = 445
            ImeName = 'Microsoft IME 2003'
            ItemHeight = 13
            MultiSelect = True
            ParentFont = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 0
          end
          object lbl18: TcxLabel
            Left = 236
            Top = 28
            AutoSize = False
            Caption = 
              #8251' '#39'0100, 0101..0200'#39#51008' '#49325#51228#46104#51648' '#50506#49845#45768#45796'.'#13#10'  - '#49688#49888#44144#48512#51088' '#52404#53356#49884' '#44160#49324#54616#44592' '#50948#54644#49436' '#54596#50836#54633#45768#45796'.'#13 +
              #10#13#10#8251' '#51020#50689' '#54364#49884' '#51460#51060' '#39#49440#53469#39#46108' '#51460#51077#45768#45796'.'#13#10'  - '#47560#50864#49828' '#46300#47000#44536'('#45132#44592')'#49440#53469#44032#45733'/CTRL+'#47560#50864#49828#53364#47533#49884' '#48373#49688#49440#53469#44032 +
              #45733
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
            Height = 73
            Width = 441
          end
          object lbl19: TcxLabel
            Left = 418
            Top = 110
            AutoSize = False
            Caption = #49688#49888#44144#48512#48264#54840' '#51649#51217#51077#47141
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Color = 13560543
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = False
            Style.TextStyle = [fsBold]
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 32
            Width = 199
            AnchorX = 518
            AnchorY = 126
          end
          object btnAddNoRecv: TcxButton
            Left = 264
            Top = 227
            Width = 109
            Height = 42
            Cursor = crHandPoint
            Caption = '<<< '#52628#44032#54616#44592
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 4
            OnClick = btnAddNoRecvClick
          end
          object pnlNoRecvMsg: TPanel
            Left = 44
            Top = 180
            Width = 177
            Height = 65
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 5
            Visible = False
            object cxLabel61: TcxLabel
              Left = 0
              Top = 0
              Align = alClient
              AutoSize = False
              Caption = #47700#47784#47532#47484' '#49324#50857#54616#50668' '#13#10#49688#49888#44144#48512' '#47785#47197' '#44288#47532#13#10#54633#45768#45796'.'
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #44404#47548
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              Height = 65
              Width = 177
              AnchorX = 89
              AnchorY = 33
            end
          end
          object grp5: TcxGroupBox
            Left = 648
            Top = 6
            Caption = '  '#53084#47560#45320' '#44305#44256' '#49688#49888#44144#48512#51088'  '
            Style.BorderStyle = ebsFlat
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            TabOrder = 6
            Height = 97
            Width = 294
            object chkNotSms: TcxCheckBox
              Left = 35
              Top = 29
              Caption = #44305#44256' '#51204#49569#49884' '#51228#44144
              State = cbsChecked
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
              OnClick = chkNotSmsClick
            end
            object lbl21: TcxLabel
              Left = 21
              Top = 60
              Caption = #8251' '#53084#47560#45320' '#49324#50857#51088#51473#50640' '#49688#49888#44144#48512#51088' '#51228#44144
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = 16744448
              Style.Font.Height = -13
              Style.Font.Name = #44404#47548
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
          end
          object mmoAddNoRecv: TcxMemo
            Left = 420
            Top = 147
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 2
            Height = 309
            Width = 197
          end
        end
        object pnl_file_add: TPanel
          Left = 799
          Top = 246
          Width = 482
          Height = 422
          BevelKind = bkFlat
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 0
          Visible = False
          object cxGroupBox6: TcxGroupBox
            Left = 0
            Top = 0
            Align = alClient
            Caption = '  '#49688#49888#44144#48512#51088' PC'#45236' '#54028#51068#52628#44032
            ParentBackground = False
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clBtnFace
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnMouseDown = cxGroupBox6MouseDown
            Height = 418
            Width = 478
            object pnl_WkList: TPanel
              Left = 3
              Top = 14
              Width = 472
              Height = 366
              Align = alClient
              BevelOuter = bvNone
              ParentBackground = False
              TabOrder = 0
              object pnl_WkList_Condition: TPanel
                Left = 0
                Top = 0
                Width = 472
                Height = 88
                Align = alTop
                BevelOuter = bvNone
                BevelWidth = 2
                Color = 15658732
                TabOrder = 0
                object Shape6: TShape
                  Left = 25
                  Top = 54
                  Width = 267
                  Height = 24
                  Pen.Color = 12566402
                  Shape = stRoundRect
                end
                object cxLabel62: TcxLabel
                  Left = 38
                  Top = 58
                  Caption = #54028#51068#49440#53469
                  ParentColor = False
                  Style.TextColor = clBlack
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Properties.ShadowedColor = clGray
                  Transparent = True
                  AnchorX = 64
                  AnchorY = 66
                end
                object lbl22: TcxLabel
                  Left = 24
                  Top = 17
                  Caption = '1. '#49688#49888#44144#48512#51088' '#55092#45824#54256#48264#54840#44032' '#51080#45716' '#54028#51068'(Text'#47564' '#44032#45733') '#49440#53469
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -15
                  Style.Font.Name = #44404#47548
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  Transparent = True
                end
              end
              object btn3: TcxButton
                Left = 374
                Top = 54
                Width = 62
                Height = 24
                Cursor = crHandPoint
                Caption = #44160#49353
                Colors.Normal = 16773362
                LookAndFeel.Kind = lfFlat
                LookAndFeel.NativeStyle = False
                LookAndFeel.SkinName = 'Sharp'
                OptionsImage.Layout = blGlyphBottom
                TabOrder = 1
                OnClick = btn3Click
              end
              object btn4: TcxButton
                Left = 285
                Top = 326
                Width = 151
                Height = 25
                Cursor = crHandPoint
                Caption = #49440#53469#48264#54840#49325#51228
                Colors.Normal = 16773362
                LookAndFeel.Kind = lfFlat
                LookAndFeel.NativeStyle = False
                LookAndFeel.SkinName = 'Sharp'
                OptionsImage.Layout = blGlyphBottom
                TabOrder = 2
                OnClick = btn4Click
              end
              object lstNoRecvFileAdd: TcxListBox
                Left = 24
                Top = 84
                Width = 193
                Height = 267
                ImeName = 'Microsoft Office IME 2007'
                ItemHeight = 12
                TabOrder = 3
              end
              object mmo_file_path: TcxMemo
                Left = 100
                Top = 53
                Lines.Strings = (
                  'mmo_file_path')
                Style.LookAndFeel.SkinName = 'Sharp'
                StyleDisabled.LookAndFeel.SkinName = 'Sharp'
                StyleFocused.LookAndFeel.SkinName = 'Sharp'
                StyleHot.LookAndFeel.SkinName = 'Sharp'
                TabOrder = 4
                Height = 26
                Width = 272
              end
            end
            object pnl12: TPanel
              Left = 3
              Top = 380
              Width = 472
              Height = 31
              Align = alBottom
              BevelOuter = bvNone
              ParentBackground = False
              TabOrder = 1
              object pnl13: TPanel
                Left = 328
                Top = 0
                Width = 144
                Height = 31
                Align = alRight
                BevelOuter = bvNone
                ParentBackground = False
                TabOrder = 0
                object btn5: TcxButton
                  Left = 6
                  Top = 2
                  Width = 71
                  Height = 25
                  Cursor = crHandPoint
                  Caption = #52628#44032#54616#44592
                  Colors.Normal = 16773362
                  LookAndFeel.Kind = lfFlat
                  LookAndFeel.NativeStyle = False
                  LookAndFeel.SkinName = 'Sharp'
                  OptionsImage.Layout = blGlyphBottom
                  TabOrder = 0
                  OnClick = btn5Click
                end
                object btn6: TcxButton
                  Left = 78
                  Top = 2
                  Width = 62
                  Height = 25
                  Cursor = crHandPoint
                  Caption = #45803#44592
                  Colors.Normal = 16773362
                  LookAndFeel.Kind = lfFlat
                  LookAndFeel.NativeStyle = False
                  LookAndFeel.SkinName = 'Sharp'
                  OptionsImage.Layout = blGlyphBottom
                  TabOrder = 1
                  OnClick = btn6Click
                end
              end
              object lbl_excel_cnt: TcxLabel
                Left = 13
                Top = 8
                Caption = #52509'   000 '#47749
                Transparent = True
              end
            end
          end
        end
      end
    end
  end
  object pnlSmsStatus: TPanel
    Left = -122
    Top = 646
    Width = 389
    Height = 73
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = #51221#53685#48512#51648#51221' '#49688#49888#44144#48512' '#54028#51068' '#48143' PC'#45236' '#49688#49888#44144#48512' '#54028#51068' '#48708#44368' '#51228#44144' '#51473
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #44404#47548
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    Visible = False
    object pb1: TAdvProgressBar
      Left = 0
      Top = 49
      Width = 385
      Height = 20
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      Level0ColorTo = 14811105
      Level1ColorTo = 13303807
      Level2Color = 5483007
      Level2ColorTo = 11064319
      Level3ColorTo = 13290239
      Level1Perc = 70
      Level2Perc = 90
      Position = 0
      ShowBorder = True
      Version = '1.3.1.0'
    end
  end
  object tmrFileSms: TTimer
    Enabled = False
    Interval = 400
    OnTimer = tmrFileSmsTimer
    Left = 968
    Top = 220
  end
  object dlgOpen: TOpenDialog
    Filter = #50641#49472'|*.xls|'#50641#49472'(2007'#51060#49345')|*.xlsx'
    Left = 880
    Top = 244
  end
  object ilDown: TImageList
    Height = 12
    Width = 12
    Left = 971
    Top = 244
    Bitmap = {
      494C01010500090004000C000C00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000300000001800000001002000000000000012
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
      0000DBD5CF006048300060504000C9C0B7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007058
      4000E4DFDB00D2C8C300E1DEDB00E4DEDB006048300000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007058
      4000000000007050400060484000000000006048300000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008068
      5000000000007060500070504000000000006050400000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009078
      6000000000008070600080605000000000007058400000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A080
      7000000000009078700090706000000000008068500000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A080
      7000000000009080700090706000000000008070600000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DBD2C900A088700090807000D5CFC90000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F4F100A0503000A0502000F3E9E3000000000000000000000000000000
      000000000000000000000000000000000000F2F4FB00657BC8002F4FB100F0F2
      F9000000000000000000000000000000000000000000C0908000C0908000C080
      8000B0808000B0787000B0787000B0707000B0707000A0706000A06060000000
      00000000000080A8C00040709000306880003068800030608000305870003058
      700030587000305060003048600000000000000000000000000000000000F9F4
      F100B0603000E0805000D0785000A0502000F3E9E30000000000000000000000
      000000000000000000000000000000000000EDF0F9006080F0002048D000D2D6
      EA000000000000000000000000000000000000000000C0909000FFF8D000FFF0
      C000FFE8B000FFD8A000FFC09000F0B08000F0A87000E0906000A06860000000
      00000000000080A8C000A0E8FF0080E0F00080D8F00070D0F00070C8F00070C8
      F00070C8F00060C8F00030506000000000000000000000000000F9F4F100B058
      3000F0A07000F0A07000E0805000D0704000B0583000F9F4F100000000000000
      00000000000000000000000000000000000000000000C3CCE700A4B2E3000000
      00000000000000000000000000000000000000000000D0989000D0908000F0F0
      E000FFFFF000FFF8E000FFF0D000FFE8B000F0D0A000C0806000A07070000000
      00000000000080A8C000B0F8FF0090F0FF0090F0FF0090F0FF0090F0FF0090F0
      FF0090F0FF0080E0FF0030506000000000000000000000000000E9B29C00E5A4
      8A00E0907000FFA88000F0885000B0603000A0502000A0502000000000000000
      000000000000000000000000000000000000000000009DB2EA008F9FDF000000
      00000000000000000000000000000000000000000000D0A09000F0D8B000C0A0
      A000F0F0E000FFF0E000F0E8D000F0D0B000C0787000F0D0B000A07870000000
      00000000000080B0C00090E0F00090F8FF0090F0FF0080E8FF0080E8FF0080E8
      FF0090F0FF0070D8F00040586000000000000000000000000000000000000000
      0000E0906000FFA88000F0906000B05830000000000000000000000000000000
      000000000000000000000000000000000000F3F5FC004970E5002F5CD800DFE4
      F1000000000000000000000000000000000000000000D0A8A000D0989000A0F8
      FF00C0A09000C0989000C0888000B090900070D8FF00B0989000B08080000000
      00000000000090B0C00060B8D00080E8FF0070E0F00050B0E0003090C00070D0
      F00070D8F0004098C00040587000000000000000000000000000000000000000
      0000E0907000FFB09000FF906000A05020000000000000000000000000000000
      0000000000000000000000000000000000009FB3E7003060F0000040FF009FB1
      E7000000000000000000000000000000000000000000D0A8A000C0FFFF00C0FF
      FF00B0F8FF00B0F8FF0090E8FF0080E0FF0070D8FF0070D8FF00A07870000000
      00000000000090C0D00090E8F00060B8E00080E0F000A0F8FF0090F0FF0090E8
      FF0050A8D00080E0F00040607000000000000000000000000000000000000000
      0000E0907000FFB89000FF986000A05020000000000000000000000000000000
      0000000000000000000000000000000000006383E5004B78F0000048FF001F50
      D5000000000000000000000000000000000000000000D0A8A000A0E8FF00A0E8
      FF00A0E8FF0090E0FF0080D8F00070D0F00070C8F00060C8F000B47F87000000
      00000000000090C0D00060C0E00090E0F000A0F8FF00A0F8FF00A0F8FF0090F0
      FF0090E8FF0050A0C00050687000000000000000000000000000000000000000
      0000E0987000FFB89000FF987000A05020000000000000000000000000000000
      0000000000000000000000000000000000005078E0006088FF003060FF000038
      D0000000000000000000000000000000000000000000F6EEED00E0FFFF00E0FF
      FF00F0FFFF00F0FFFF00C0F8FF00A0F0FF0080E8FF0080E0FF00F3EBEA000000
      00000000000090C8D000C0F0FF00C0FFFF00C0F8FF00B0F8FF00B0F8FF00A0F8
      FF0090F0FF0090E8FF0050687000000000000000000000000000000000000000
      0000F0A08000FFC0A000FFB89000A05020000000000000000000000000000000
      0000000000000000000000000000000000007088E00090A8FF006088FF002050
      D000000000000000000000000000000000000000000000000000F6EEED00CBA4
      A400F0FFFF00F0FFFF00E0FFFF00B0F8FF00B47F8700F3EBEA00000000000000
      00000000000090C8D000E0FFFF00E0FFFF00E0FFFF00E0FFFF00E0FFFF00D0FF
      FF00D0FFFF00B0F8FF0050708000000000000000000000000000000000000000
      0000F0A57800E1A57800E19E7800D28769000000000000000000000000000000
      000000000000000000000000000000000000D2D9F000788FE100697FE100DBE2
      F60000000000000000000000000000000000000000000000000000000000F6EE
      ED00C7A49D00C3A5A500C0989000C0989000EFE5E30000000000000000000000
      00000000000090C8D00090C8D00090C8D00090C0D00090C0D00090B8C00080B0
      C00080B0C00080A8C00080A8C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000030000000180000000100010000000000C00000000000000000000000
      000000000000000000000000FFFFFF00FFF0000000000000FFF0000000000000
      F0F0000000000000E070000000000000E970000000000000E970000000000000
      E970000000000000E970000000000000E970000000000000F870000000000000
      FFF0000000000000FFF0000000000000FFFFFFFFFFFF0000F0FF0F8018010000
      E07F0F8018010000C03F9F8018010000C03F9F8018010000F0FF0F8018010000
      F0FF0F8018010000F0FF0F8018010000F0FF0F8018010000F0FF0FC038010000
      F0FF0FE078010000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object dlgSave: TSaveDialog
    Filter = #50641#49472#54028#51068'(*.xls)|*.xls'
    Left = 1017
    Top = 244
  end
  object pm3: TPopupMenu
    AutoHotkeys = maManual
    Left = 1022
    Top = 332
    object mniN1: TMenuItem
      Caption = #50641' '#49472' '#45796' '#50868
      OnClick = mniN1Click
    end
  end
  object itcSMS: TIdTCPClient
    ConnectTimeout = 0
    IPVersion = Id_IPv4
    Port = 5114
    ReadTimeout = 0
    Left = 973
    Top = 204
  end
  object IdEncoderMIME1: TIdEncoderMIME
    FillChar = '='
    Left = 1028
    Top = 396
  end
  object pop_Date: TPopupMenu
    AutoHotkeys = maManual
    Left = 964
    Top = 340
    object MiToday: TMenuItem
      Caption = #50724#45720
      OnClick = MiTodayClick
    end
    object MiYesterday: TMenuItem
      Caption = #50612#51228
      OnClick = MiYesterdayClick
    end
    object MiOneWeek: TMenuItem
      Caption = #52572#44540#51068#51452#51068
      OnClick = MiOneWeekClick
    end
    object MiOneMonth: TMenuItem
      Caption = #52572#44540#54620#45804
      OnClick = MiOneMonthClick
    end
    object MiStartMonth: TMenuItem
      Caption = '1'#51068'~'#47568#51068
      OnClick = MiStartMonthClick
    end
  end
end

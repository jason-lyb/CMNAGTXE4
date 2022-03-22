object Frm_WOR17: TFrm_WOR17
  Left = 754
  Top = 309
  Caption = #44592#49324' '#51060#46041' '#47196#44536
  ClientHeight = 701
  ClientWidth = 1191
  Color = clBtnFace
  Constraints.MinHeight = 700
  Constraints.MinWidth = 970
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
    Width = 1191
    Height = 701
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    object PnlBtm: TPanel
      Left = 680
      Top = 95
      Width = 507
      Height = 602
      Align = alClient
      BevelKind = bkFlat
      BevelOuter = bvNone
      DoubleBuffered = False
      ParentDoubleBuffered = False
      TabOrder = 0
      OnResize = PnlBtmResize
      object mMap_WKmoveLog: TTalMapXCtrl
        Left = 0
        Top = 0
        Width = 503
        Height = 598
        Align = alClient
        TabOrder = 0
        OnCreate = mMap_WKmoveLogCreate
        OnStateChange = mMap_WKmoveLogStateChange
        OnUI_MouseUp = mMap_WKmoveLogUI_MouseUp
        OnUI_MouseMove = mMap_WKmoveLogUI_MouseMove
        OnUI_MouseLeave = mMap_WKmoveLogUI_MouseLeave
        OnUI_MouseHover = mMap_WKmoveLogUI_MouseHover
        OnPOI_DblClick = mMap_WKmoveLogPOI_DblClick
        ExplicitLeft = -1
        ExplicitWidth = 521
        ExplicitHeight = 529
        ControlData = {00090000}
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 674
      Top = 95
      Width = 6
      Height = 602
      AlignSplitter = salTop
      Control = PnlTop
    end
    object pnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 1187
      Height = 95
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      OnMouseDown = pnlTitleMouseDown
      object Shape4: TShape
        Left = 144
        Top = 8
        Width = 165
        Height = 24
        Pen.Color = 13353605
        Shape = stRoundRect
      end
      object Shape7: TShape
        Left = 784
        Top = 8
        Width = 131
        Height = 24
        Pen.Color = 13353605
        Shape = stRoundRect
      end
      object Shape1: TShape
        Left = 651
        Top = 8
        Width = 131
        Height = 24
        Pen.Color = 13353605
        Shape = stRoundRect
      end
      object Shape6: TShape
        Left = 479
        Top = 8
        Width = 170
        Height = 24
        Hint = #50948#52824#50629#45936#51060#53944' '#44221#44284#49884#44036
        Pen.Color = 13353605
        Shape = stRoundRect
      end
      object Shape5: TShape
        Left = 311
        Top = 8
        Width = 166
        Height = 24
        Pen.Color = 13353605
        Shape = stRoundRect
      end
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 1187
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = False
        ExplicitWidth = 934
      end
      object Shape3: TShape
        Left = 1
        Top = 8
        Width = 117
        Height = 24
        Pen.Color = 13353605
        Shape = stRoundRect
      end
      object cxGroupBox1: TcxGroupBox
        Left = 1
        Top = 34
        Caption = #44160#49353
        TabOrder = 7
        Height = 59
        Width = 425
        object Shape20: TShape
          Left = 58
          Top = 22
          Width = 258
          Height = 24
          Pen.Color = 13353605
          Shape = stRoundRect
        end
        object cb_WKmove_Option: TcxComboBox
          Left = 115
          Top = 21
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #45817#51068
            #50612#51228
            '2'#51068#51204
            '3'#51068#51204
            '4'#51068#51204
            '5'#51068#51204
            '6'#51068#51204
            #51068#51452#51068#51204)
          Properties.OnChange = cb_WKmove_OptionPropertiesChange
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 0
          Text = #45817#51068
          Height = 26
          Width = 80
        end
        object chk_WKHIS_AllSearch: TcxCheckBox
          Left = 4
          Top = 24
          Caption = #51312#44148
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = []
          Style.LookAndFeel.SkinName = 'Sharp'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 1
          Transparent = True
          OnClick = chk_WKHIS_AllSearchClick
        end
        object cxButton1: TcxButton
          Left = 354
          Top = 22
          Width = 63
          Height = 25
          Cursor = crHandPoint
          Cancel = True
          Caption = #51312#54924
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          OnClick = cxButton1Click
        end
        object cxLabel1: TcxLabel
          Left = 63
          Top = 25
          Caption = #51312#54924#51068#51088
          ParentColor = False
          ParentFont = False
          Style.Color = clBtnFace
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = 16744448
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 89
          AnchorY = 33
        end
        object cxLabel75: TcxLabel
          Left = 261
          Top = 25
          Caption = '~'
          Transparent = True
        end
        object cxTimeEnd: TcxTimeEdit
          Left = 276
          Top = 21
          AutoSize = False
          EditValue = 0.0416550925925926d
          ParentFont = False
          Properties.Alignment.Horz = taLeftJustify
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
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
          TabOrder = 5
          Height = 26
          Width = 71
        end
        object cxTimeStart: TcxTimeEdit
          Left = 194
          Top = 21
          AutoSize = False
          EditValue = 0.0416550925925926d
          ParentFont = False
          Properties.Alignment.Horz = taLeftJustify
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
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
          TabOrder = 6
          Height = 26
          Width = 68
        end
      end
      object btn_WKSabun: TcxButton
        Left = 58
        Top = 8
        Width = 84
        Height = 24
        Cursor = crHandPoint
        Caption = #54788#51116#50948#52824
        LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnClick = btn_WKSabunClick
      end
      object cxLabel2: TcxLabel
        Left = 319
        Top = 13
        Caption = #50948#52824#53440#51077
        ParentColor = False
        ParentFont = False
        Style.Color = clBtnFace
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 16744448
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 345
        AnchorY = 21
      end
      object cxLabel3: TcxLabel
        Left = 480
        Top = 13
        Hint = #50948#52824#50629#45936#51060#53944' '#44221#44284#49884#44036
        Caption = #44221#44284#49884#44036
        ParentColor = False
        ParentFont = False
        Style.Color = clBtnFace
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 16744448
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 506
        AnchorY = 21
      end
      object cxLabel4: TcxLabel
        Left = 659
        Top = 13
        Caption = #50948#46020
        ParentColor = False
        ParentFont = False
        Style.Color = clBtnFace
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 16744448
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 673
        AnchorY = 21
      end
      object cxLabel5: TcxLabel
        Left = 794
        Top = 13
        Caption = #44221#46020
        ParentColor = False
        ParentFont = False
        Style.Color = clBtnFace
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 16744448
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 808
        AnchorY = 21
      end
      object cxLabel6: TcxLabel
        Left = 4
        Top = 13
        Caption = #44592#49324#49324#48264
        ParentColor = False
        ParentFont = False
        Style.Color = clBtnFace
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 16744448
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 30
        AnchorY = 21
      end
      object cxLabel7: TcxLabel
        Left = 151
        Top = 13
        Caption = #51217#49549#49345#53468
        ParentColor = False
        ParentFont = False
        Style.Color = clBtnFace
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 16744448
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 177
        AnchorY = 21
      end
      object cxGroupBox2: TcxGroupBox
        Left = 428
        Top = 34
        Caption = #50741#49496
        TabOrder = 8
        Height = 59
        Width = 387
        object btnMapPos: TcxButton
          Left = 277
          Top = 21
          Width = 102
          Height = 25
          Cursor = crHandPoint
          Caption = #51648#46020#50948#52824#48320#44221
          Colors.Default = 16635384
          Colors.Normal = 16773362
          Colors.Hot = 16360076
          Colors.Pressed = 16644080
          Colors.Disabled = 4227327
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.ImageIndex = 0
          OptionsImage.Images = cxImageList1
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          TabStop = False
          OnClick = btnMapPosClick
        end
        object chkCenter: TcxCheckBox
          Left = 76
          Top = 24
          Caption = #44592#49324#50948#52824' '#49440#53469#49884' '#51473#49900#51340#54364#51060#46041
          ParentFont = False
          State = cbsChecked
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = []
          Style.LookAndFeel.SkinName = 'Sharp'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 1
          Transparent = True
        end
        object chk_Search_Route: TcxCheckBox
          Left = 3
          Top = 24
          Caption = #44221#47196#53456#49353
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = []
          Style.LookAndFeel.SkinName = 'Sharp'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 2
          Transparent = True
          OnClick = chk_Search_RouteClick
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 917
        Top = 8
        TabOrder = 9
        Height = 85
        Width = 268
        object cxLabel8: TcxLabel
          Left = 4
          Top = 5
          Caption = #8251' '#44060#48324#49440#53469' [ Ctrl + '#49440#53469' ] '#48143
          ParentColor = False
          ParentFont = False
          Style.Color = clBtnFace
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = 16744448
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorY = 13
        end
        object btnRView: TcxButton
          Left = 126
          Top = 59
          Width = 137
          Height = 22
          Cursor = crHandPoint
          Cancel = True
          Caption = #44221' '#47196' '#48372' '#44592
          Enabled = False
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          OnClick = btnRViewClick
        end
        object cxLabel10: TcxLabel
          Left = 11
          Top = 38
          Caption = '( '#50864#52769' '#47560#50864#49828' '#54045#50629' '#47700#45684' '#46608#45716' '#44221#47196#48372#44592' '#48260#53948' )'
          ParentColor = False
          ParentFont = False
          Style.Color = clBtnFace
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = 16744448
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorY = 46
        end
        object cxLabel9: TcxLabel
          Left = 20
          Top = 21
          Caption = #48512#48516#49440#53469' [ Shift + '#49440#53469' ] '#54980' '#44221#47196#48372#44592
          ParentColor = False
          ParentFont = False
          Style.Color = clBtnFace
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = 16744448
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorY = 29
        end
      end
      object lb_ConnState: TcxLabel
        Left = 203
        Top = 12
        AutoSize = False
        Caption = #51217#49549#51333#47308
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        Height = 16
        Width = 100
        AnchorX = 253
        AnchorY = 20
      end
      object lb_LocElapseTime: TcxLabel
        Left = 537
        Top = 12
        Hint = #50948#52824#50629#45936#51060#53944' '#44221#44284#49884#44036
        AutoSize = False
        Caption = '99'#52488
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        Height = 16
        Width = 108
        AnchorX = 591
        AnchorY = 20
      end
      object lb_LocLat: TcxLabel
        Left = 689
        Top = 12
        AutoSize = False
        Caption = '129.36258411'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        Height = 16
        Width = 88
        AnchorX = 733
        AnchorY = 20
      end
      object lb_LocLng: TcxLabel
        Left = 821
        Top = 12
        AutoSize = False
        Caption = '129.36258411'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        Height = 16
        Width = 91
        AnchorX = 867
        AnchorY = 20
      end
      object lb_LocType: TcxLabel
        Left = 372
        Top = 12
        AutoSize = False
        Caption = #47196#44536#51064#52488#44592#44050
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        Height = 16
        Width = 102
        AnchorX = 423
        AnchorY = 20
      end
      object cxGroupBox4: TcxGroupBox
        Left = 817
        Top = 34
        Caption = #44221#47196#51116#49373
        TabOrder = 15
        Height = 59
        Width = 98
        object btnMapPlay: TcxButton
          Left = 36
          Top = 33
          Width = 28
          Height = 20
          Cursor = crHandPoint
          Hint = #54788#50948#52824#48512#53552' '#51116#49373
          Colors.Default = 16635384
          Colors.Normal = 16773362
          Colors.Hot = 16360076
          Colors.Pressed = 16644080
          Colors.Disabled = 4227327
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C00000011744558745469746C6500506C61793B53746172743B5D
            61407A000001F049444154785EAD904B6B13511886DF938C4E5A31C560A5174C
            68E3056C91D07A5D98B6D616BC54105CC4DB527F801050BA511411A550D14271
            2314ACC5955D14A90B770A820B15A9422B0DB69149C64E9C2493CB3973267E84
            5884566DC0071E38B3380FEF1CFC3746A74FAA2353273A50252E54D035AB160C
            6F1F4C1D7F32FCEC58A0EA407231EB9692B160735784B9F07978F2E8D0ED89FE
            4D6B0E64CCA28B0B81B6C03E74EF8978B636745E56143677F7697FF4EAC821F5
            9F01291D0821912E7C43412CC1DF588F03A1015F53C3EE3B5E9F3A736BBCF7EC
            91D3ADAE3F066CDB814D811C37A0673EA168E7A0281C417F13426D875B37FB82
            8FC30381D7D71F75F7ACBE409420B8036E5BC88B3434F3030C2B46A13C366E50
            B06BFB36ECDC71707F9DB7F9E5E068F81C2A28CB0B245D1692E667E82C40C0CC
            C7CBAE73D7C0343D48680652BAF62A9DE2EF0030B2A4FCFE0B8253C0CE4250E0
            17564E85AE99588ACF7E492C583726EE7D9C0460AD5820CB6FE0A0C0CB0BE8DB
            83F822C7F785989ED20B43CFC7E6C68C643E0D809336595A1110E547CC607E5E
            428F7DCD657FF0876F5EC4EFCFBE3792008AA4241DAC465FA465CBA59B1DA58B
            D742F6F968FBF8DEDEC610002FB9BEF2D80C7FA3EF4C4BFD852BEDD35DA7FC3D
            00EA489574930C6B44216BC99ACA99A14AD8F2D42AF809500AE0796F04355100
            00000049454E44AE426082}
          OptionsImage.ImageIndex = 0
          OptionsImage.Images = cxImageList1
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TabStop = False
          OnClick = btnMapPlayClick
        end
        object btnMapStop: TcxButton
          Left = 66
          Top = 33
          Width = 28
          Height = 20
          Cursor = crHandPoint
          Hint = #47688#52644
          Colors.Default = 16635384
          Colors.Normal = 16773362
          Colors.Hot = 16360076
          Colors.Pressed = 16644080
          Colors.Disabled = 4227327
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C0000000B744558745469746C650053746F703BBA6D204F000001
            2449444154785EAD91B14A03411086E74E4E7C085FC3C25EED62E1C3D8D8D9F8
            08DA59F80C4284086A9D46EC4451825828B990E4727BBB3BB371FE42482EE79E
            A0071F2C33DFFCECECA5F4C7EFDF0292D36EE7F2ECAAE394790B0E2E661603D2
            2061676FEB30DBDF3EA21870D4DDC5CC5280E7B09EA58106A3EB2870D4CDEA01
            093BD146452212050EDCFA0AE4BC36C51007890107EEEA5FF09A6AFC98583806
            1CB8AB014E8B63F346D61724411A410F8E6B0CB0B8C18446664093EA9D2C17C4
            C1019C51430F0EDCE615D0F4E2A9B0390D67AFF4317D0438A3861E9C1F56F042
            959BB6BD019CE647642B3E3725AD251B517263E0723D606E2ABEEDF79EE5AEFB
            4231FABD2751F706338B01E1E2E4E1E0FCF87EF337C0C5CC5280522A43E5B305
            38E577C017B8899A7278A6B7920000000049454E44AE426082}
          OptionsImage.ImageIndex = 0
          OptionsImage.Images = cxImageList1
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          TabStop = False
          OnClick = btnMapStopClick
        end
        object btnMapFPlay: TcxButton
          Left = 5
          Top = 33
          Width = 28
          Height = 20
          Cursor = crHandPoint
          Hint = #52376#51020#48512#53552' '#51116#49373
          Colors.Default = 16635384
          Colors.Normal = 16773362
          Colors.Hot = 16360076
          Colors.Pressed = 16644080
          Colors.Disabled = 4227327
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000002A744558745469746C65004C6173743B4172726F773B466F72776172
            643B536B69703B4E6578743B526577696E643B5B449245000002934944415478
            5EA5935B48555D10C767EB399AA961178D34CE8B45F8701E7D2814CACA820A7A
            AAB07CA80CC98C0A310C4384B0A8C0822C8C48EA80DD03C920132F64A99C13A2
            562A1C022D341F3C712CB57D599769D66EE9F7E1AB1B8659336BE6B7FEB358DB
            404458CAE751CEA08F5CACCEC992FA01293882400152227086208504EEE6A4BB
            7E5195F38FA01578CF0786B0B82ED47EE0E2B32D14C791C51CAD0D41E1B52014
            5CE98583353DEE59641EBDEF75630D882F7BF01987C767B1FAF1081EB9DCD1B8
            F3445DD63CA87F8A4170D2720FAA080C7415DFEAC3A2DA9E2E17A401CBCEDE1F
            C4A88338FA1BB1E5D34F2CADEBB7F65F7873C7BFB364BD0619AAAEF2D110466D
            C4E33743AA312146CF6D7021C06208C3510989A9295074C81FBF2FDF7F322BB7
            6028EFD4D3CAD40D9B572B90BA9BEE71073897A0D479E6018201581261C61230
            3D479B845EEB5B03C70EAF5AD1FD31B5CABBBCBA68EAFBC80D468D8CEA045B04
            501B730E82C904086980C3054428A724666665802F332DBDB73BED3AA3BC2324
            384CB87DFF0128316B23FC21B292E948A042044E8B191B002D06B3A60D711E2F
            D8046142BA80853BB02D0ED3247F8E4C414C9B8394125030180C7E85E70F3B26
            42ADCDE596C941A9E56C1140C9FA4500D396A0D450278407C6E055E3BB99BEB6
            CE4BE196EAECB1CE9A80693B341E02D70A3C0B0022462D3709DFC293F0251876
            223FC6029191E6ABD3A3ED1394B6C9924D4B2B20C8FF5F624A7E791B963D19C5
            9C92D7B871CFEDA6347F6136E513F513372A5A23A0E26DA79BDE6F3FD78AB9C5
            2F3F509C340F48DE7AE62D6EDA5BDFBB2EBB74B78AF593357CF90D90B1E31EA4
            E7DD050D4B225BA97DACA10086E18E92A0C7B1C8B86F57034A2900258224A3C0
            F552485775A4A7D42D5EF2EFFC17EABC8B701AFC8B800000000049454E44AE42
            6082}
          OptionsImage.ImageIndex = 0
          OptionsImage.Images = cxImageList1
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          TabStop = False
          OnClick = btnMapFPlayClick
        end
        object chk_RView: TcxCheckBox
          Left = 7
          Top = 13
          Caption = #44221#47196#44536#47532#44592
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = []
          Style.LookAndFeel.SkinName = 'Sharp'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 3
          Transparent = True
        end
      end
    end
    object PnlTop: TPanel
      Left = 0
      Top = 95
      Width = 674
      Height = 602
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 3
      object cxGrdMV: TcxGrid
        Left = 0
        Top = 0
        Width = 674
        Height = 602
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object cxGrdMV_List: TcxGridDBTableView
          PopupMenu = PopupMenu1
          OnKeyUp = cxGrdMV_ListKeyUp
          OnMouseMove = cxGrdMV_ListMouseMove
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCellClick = cxGrdMV_ListCellClick
          OnCellDblClick = cxGrdMV_ListCellDblClick
          OnCustomDrawCell = cxGrdMV_ListCustomDrawCell
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.PullFocusing = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnMoving = False
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 20
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 23
          Styles.OnGetContentStyle = cxGrdMV_ListStylesGetContentStyle
          object cxGrdMV_ListColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 35
          end
          object cxGrdMV_ListColumn2: TcxGridDBColumn
            DataBinding.FieldName = #50948#52824#51333#47448
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 83
          end
          object cxGrdMV_ListColumn3: TcxGridDBColumn
            Caption = '-'#50948#46020
            DataBinding.FieldName = 'Lat'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 36
          end
          object cxGrdMV_ListColumn4: TcxGridDBColumn
            Caption = '-'#44221#46020
            DataBinding.FieldName = 'Lon'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 36
          end
          object cxGrdMV_ListColumn5: TcxGridDBColumn
            DataBinding.FieldName = #50948#52824#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 246
          end
          object cxGrdMV_ListColumn6: TcxGridDBColumn
            DataBinding.FieldName = #46321#47197#51068#49884
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 147
          end
          object cxGrdMV_ListColumn7: TcxGridDBColumn
            DataBinding.FieldName = #50948#52824#53440#51077
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 91
          end
          object cxGrdMV_ListColumn8: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#49345#53468
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 93
          end
          object cxGrdMV_ListColumn9: TcxGridDBColumn
            DataBinding.FieldName = #50724#45908#51221#48372
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 134
          end
          object cxGrdMV_ListColumn10: TcxGridDBColumn
            DataBinding.FieldName = #51217#49688#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
          end
        end
        object cxGrdMV_Level: TcxGridLevel
          GridView = cxGrdMV_List
        end
      end
      object pnlRView: TPanel
        Left = 0
        Top = 0
        Width = 674
        Height = 602
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        Visible = False
        DesignSize = (
          674
          602)
        object cxLabel11: TcxLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Align = alTop
          AutoSize = False
          Caption = #44221' '#47196' '#48372' '#44592
          ParentColor = False
          Style.Color = 12615935
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 30
          Width = 668
          AnchorX = 337
          AnchorY = 18
        end
        object cxGrdMC: TcxGrid
          AlignWithMargins = True
          Left = 3
          Top = 39
          Width = 668
          Height = 560
          Align = alClient
          TabOrder = 1
          LookAndFeel.NativeStyle = False
          object cxGrdMC_List: TcxGridDBTableView
            OnKeyUp = cxGrdMV_ListKeyUp
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCellClick = cxGrdMC_ListCellClick
            OnCellDblClick = cxGrdMV_ListCellDblClick
            OnCustomDrawCell = cxGrdMV_ListCustomDrawCell
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.PullFocusing = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnMoving = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.NoDataToDisplayInfoText = ' '
            OptionsView.DataRowHeight = 20
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 20
            Styles.OnGetContentStyle = cxGrdMV_ListStylesGetContentStyle
            object cxGridDBColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'No'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 35
            end
            object cxGridDBColumn2: TcxGridDBColumn
              DataBinding.FieldName = #50948#52824#51333#47448
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 83
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = '-'#50948#46020
              DataBinding.FieldName = 'Lat'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 36
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = '-'#44221#46020
              DataBinding.FieldName = 'Lon'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 36
            end
            object cxGridDBColumn5: TcxGridDBColumn
              DataBinding.FieldName = #50948#52824#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 246
            end
            object cxGridDBColumn6: TcxGridDBColumn
              DataBinding.FieldName = #46321#47197#51068#49884
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 147
            end
            object cxGridDBColumn7: TcxGridDBColumn
              DataBinding.FieldName = #50948#52824#53440#51077
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 91
            end
            object cxGridDBColumn8: TcxGridDBColumn
              DataBinding.FieldName = #44592#49324#49345#53468
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 93
            end
            object cxGridDBColumn9: TcxGridDBColumn
              DataBinding.FieldName = #50724#45908#51221#48372
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 134
            end
            object cxGridDBColumn10: TcxGridDBColumn
              DataBinding.FieldName = #51217#49688#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGrdMC_List
          end
        end
        object btnExit: TcxButton
          Left = 606
          Top = 5
          Width = 64
          Height = 26
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Cancel = True
          Caption = #45803' '#44592
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          TabOrder = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          OnClick = btnExitClick
        end
      end
    end
    object pnlHint: TPanel
      Left = 537
      Top = 350
      Width = 289
      Height = 43
      ParentCustomHint = False
      BevelKind = bkFlat
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Caption = #47196#44536#51064' '#51473#50640#45716' '#54788#51116' '#50948#52824#44050#51060' '#50630#49845#45768#45796'.'
      Color = 16744703
      Ctl3D = True
      DoubleBuffered = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentBiDiMode = False
      ParentBackground = False
      ParentCtl3D = False
      ParentDoubleBuffered = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 4
      Visible = False
    end
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 23986888
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000015744558745469746C65004E6578743B4172726F773B446F776E297B
          C1030000037D49444154785E3D8C7B4C957518C73FBFF77D0F1773719B02C1E1
          102097230C9C3587D60823896A1660FFB8C5269A290E2B1BA5560CE75CD91CB4
          590B128D59CD052CDBD208D72C98A6B8B4B2292574104F19729103C8B9BCB75F
          676CB567CF67CFF67D3E5F06EF1EE6E66C27B7E6BE04105B0F65A6341CCB6B7C
          FB84BBBFA92BFF465377FE4863A7FBE29EE3EE03DB5B96E5012A20BC73DDDCF0
          B5C2B0AF3D2C770328F51F64EF7EF3B31581EE813AF9A3E7A01C9A3A213DBE2F
          E4C0E82179F24ABD6CEA5C117AB52DA7C55D1C1B058891D9E308CF4C0735B56F
          380A1E8DE97067BA3796AFAE463A66B1AC1974398B108208713F114A0C86BE88
          3303DD0C8F0EF55EFC7A6AC3A59EC9790128B5EF64EF75E764EF5FBFF669C683
          BF806270B4A39FE1913190829C65C96C79A114A144921059444FDF29AE0EFE76
          E448C3D00EAD7297CB191D15B567EDEAC7F0CE9D435114C2C388778C0F770EA2
          08D87138174BEA9866106FA88FD2552578FEF2D456BFE66AD722A2B59A82DC82
          453EE31AA61D42450519A60A591949A88A40750874DB04DBC2B46D2643577928
          EF617562ECEC360DEC75C9C98BB967DCA1B9E53B141514452234404A2C1B842A
          D97FF024D202D396EC6E28277EE9034828D52C8B74256A9E90318F2B398547B2
          77B232F71980B02C11029A370F22A5E4F2EF3DFC70BD19DDF0B338CA8FB4A553
          B12C3B6226348E69195456E7D3D57F80F87893F4B4C48502D392B89C4B898D33
          17B20DCF1762D8063EFF3F18A6B415CB6474DA378D6E06993727A8AACAE7ADD6
          1A1C1AE88624FC84AA4263DB269EAB7413641CDD08F3EE1496614F287A409EFF
          FB6610BFE1C7AFDF23664988A4F47B7CDAF3EE8228047CFEED7B2C71FA884DD4
          0984FC048C79C6BC3A21BFBCA4266546DF364CB638B354D516062133C083AE38
          BEF9FE0CF9AE35CCF9EFF049EFEB945538990D4EA29B216C137E3EEF67F276F0
          150138CAB73ADF4FCD8AA82B2AD110428657E0301338DB3B8D6D49CA9E4AC0D0
          EE0236A0F0EB399DD13FF4AF7A5BBD1B35C01CBCE0DB2394B8E5367649C11A0D
          4D03C531CDF22207524A8CF06DDB36C180CDB50B3A63B7ACEB9E2B73DB81107D
          DE4D004A4ACE7DB18FD7A61E5DBF2B5DD67F9C21F79DCA901FFD5428DB2E17CA
          7DA733E5CBED19F2D970F6C48BCED3992B63920175C10DE3FF1220B2B82AB1B8
          AC36F558F94BCE3F2BEA5CF2C9BA34B96E5B9AB76C736AD7AAAAA40A201A50FE
          F3FE051EFDB1AFB7CF174E0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000012744558745469746C6500466F72776172643B4E657874EB6FF6E100
          00038E49444154785E358C5B6C945517869FBDBF3DE30C944E5B69A1353D4E18
          284D632D8E841AFE5A423A09171E5A4C4C631B5A954889891CF243438C371843
          3C26201E20140D5149893181009A68448BC84122125A1529E050DA32ED74A665
          CEF3EDEDF4C2B5B256DE8BF779D470782F6EB5082914150BDAC4C6B7BD659E22
          E70B2EB7586B29B91881436B3D9149F25D642A73E4C32DD7FF027470F69849D8
          9328877423859C83E52BFB7CFFCF2F98FFFA234B56B9CA8A2B29F65460599250
          34587577EAF6CA2B7F0F6EDFF2F1D2FDDF1C9EE82B5FB03E7573E633A3A45074
          6CD8ECD8F4BEEFB0AF727947A0A91DE398C1B6A3C4CC158411E47BF25958584B
          6DC50AE7B7E78FBDBAB693DABC02B5BE3ABF2BA66A3C1B64CF9BBE1DDE0A5F47
          6075807BC941B033EC7C6D005F7905DDDD4DB85C11ECB446C80758F7BF364E9D
          391148ACB9FAEE8553939BD5335B2BCBDD2E57DF9AA62708CE0E22A5646E2D65
          F07B7B7963F71E9EEF6CA4DA5B48369B24983A43CBCA6646EE8CF4B46FAB3CA8
          9C6ED555BFAC7E5E24738DAC4E616181C97D0BDA039DD47957B0F7E8566A9607
          696DF5A1314CA67EE7D15ABF151AFFFE6505BAB5B4348FFB990906062E716734
          82942095216F9E8B86BA0676F70EF0F9E9F7D8B7F728EB9FABA3A0284D514919
          065A946D53255D31529918A339784FCF552C2910B9B3B5414A4969E942363CB9
          934B434D7CDABF0BFF6A374DFE028C36E53981764653F7508E0CC212F81FAEE2
          BF89C65200600C8B8A3D54961503001691F81899ACD1CACE727B3A325DE229B4
          A8A92A615DDF8239114218FAB785B07279BE4B72E4E45B9CBEF8095D3D8D4877
          9C89D014764687543A61CE8EDE4AFA1D798240602979CEC740083E387C1CA743
          108B8FB26BFF463C8BC3747537124D8C914C24180F422A6E2EA8FBD3E9433786
          639B1F5AE2764CE89B848444590A210C17878F73E0C40ED6B454E32929606CE6
          3AB66D83B6B83E9460269CF9480D1E1DFF23B0B1FCC06F83A2B7A15961848D36
          5990822FCF6EE7A9362F313B4C3896043420B9F2739CE9C9F4D73F7D31F6A302
          B2C3E7227D4216D6697473FDE30AA5A0F3D995C4B3B962F22EDA680482644273
          ED5C9AF17FECA191CBB39B80943A13EC36CDE5FDF7EDB47E3A932E7C676ADCF4
          542E934C978D90FFA04408884E19C263865B439AF8AC7D72E4F2CC8B377E8D86
          72AC56007321279919FD33D6BBAA6DD1C178C4F192E510CDD292350683D6DCD1
          19FDCBEC74F6D0F9AFC67F0052730CC0BF1D299325183BB1F70000000049454E
          44AE426082}
      end>
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 712
    Top = 439
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13629363
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13290239
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
    end
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 711
    Top = 287
    object N1: TMenuItem
      Caption = #44221#47196#48372#44592
      OnClick = N1Click
    end
  end
end

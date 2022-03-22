object Frm_SMSA5: TFrm_SMSA5
  Left = 2719
  Top = 168
  BorderStyle = bsNone
  Caption = 'SMS'
  ClientHeight = 735
  ClientWidth = 1121
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object PnlMainA5: TPanel
    Left = 0
    Top = 0
    Width = 1121
    Height = 735
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnl6: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1115
      Height = 41
      Align = alTop
      BevelKind = bkFlat
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object lbl16: TLabel
        Left = 71
        Top = 12
        Width = 447
        Height = 16
        AutoSize = False
        Caption = 'PC'#45236' '#49688#49888#44144#48512#54028#51068'('#48376'PC'#50640#49436#47564' '#46041#51089'/'#51648#49324#50640' '#44288#44228#50630#51060' '#44144#48512#46120')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape1: TShape
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
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 0
        OnClick = btnNoRecvSearchClick
      end
      object cxLabel1: TcxLabel
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
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        OnKeyPress = edtNoRecvSearchKeyPress
        Height = 26
        Width = 121
      end
    end
    object pnl7: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 50
      Width = 1115
      Height = 41
      Align = alTop
      BevelKind = bkFlat
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 2
      object lblNoRecvCount: TLabel
        Left = 16
        Top = 24
        Width = 50
        Height = 12
        Caption = #52509'    0 '#47749
      end
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
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 1
        OnClick = btnDelNoRecvClick
      end
    end
    object pnl8: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 97
      Width = 1115
      Height = 635
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
        object Label4: TcxLabel
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
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 6
        Height = 97
        Width = 294
        object chkNotSms: TcxCheckBox
          Left = 35
          Top = 29
          Caption = #44305#44256' '#51204#49569#49884' '#51228#44144
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
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
        ImeName = 'Microsoft IME 2003'
        TabOrder = 2
        Height = 309
        Width = 197
      end
    end
    object pnl_file_add: TPanel
      Left = 623
      Top = 211
      Width = 482
      Height = 422
      BevelKind = bkFlat
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      Visible = False
      object cxGroupBox1: TcxGroupBox
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
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnMouseMove = cxGroupBox1MouseMove
        Height = 418
        Width = 478
        object pnl_WkList: TPanel
          Left = 3
          Top = 14
          Width = 472
          Height = 363
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
            object lbl22: TLabel
              Left = 24
              Top = 17
              Width = 465
              Height = 16
              AutoSize = False
              Caption = '1. '#49688#49888#44144#48512#51088' '#55092#45824#54256#48264#54840#44032' '#51080#45716' '#54028#51068'(Text'#47564' '#44032#45733') '#49440#53469
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Shape2: TShape
              Left = 25
              Top = 54
              Width = 267
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object cxLabel3: TcxLabel
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
            TabOrder = 4
            Height = 26
            Width = 272
          end
        end
        object pnl12: TPanel
          Left = 3
          Top = 377
          Width = 472
          Height = 31
          Align = alBottom
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 1
          object lbl_excel_cnt: TLabel
            Left = 13
            Top = 8
            Width = 58
            Height = 12
            Caption = #52509'   000 '#47749
          end
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
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 1
              OnClick = btn6Click
            end
          end
        end
      end
    end
  end
  object pnlSmsStatus: TPanel
    Left = 299
    Top = 626
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
      Version = '1.2.1.1'
    end
  end
  object dlgOpen: TOpenDialog
    Filter = #50641#49472'|*.xls|'#50641#49472'(2007'#51060#49345')|*.xlsx'
    Left = 372
    Top = 400
  end
  object ilDown: TImageList
    Height = 12
    Width = 12
    Left = 372
    Top = 468
    Bitmap = {
      494C01010500090040000C000C00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
end

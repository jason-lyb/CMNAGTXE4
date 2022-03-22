object Frm_JON34B: TFrm_JON34B
  Left = 1096
  Top = 408
  BorderStyle = bsNone
  Caption = #52852#46300#44208#51116'(KCP'#50672#46041')'
  ClientHeight = 442
  ClientWidth = 587
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  FormStyle = fsStayOnTop
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 587
    Height = 442
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 2
    Color = 6326199
    ParentBackground = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 32
      Width = 583
      Height = 408
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object pnl2: TcxGroupBox
        Left = 2
        Top = 1
        TabOrder = 0
        Height = 60
        Width = 576
        object medCardNum: TMaskEdit
          Left = 54
          Top = 3
          Width = 188
          Height = 26
          AutoSize = False
          BevelKind = bkFlat
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          EditMask = '!9999/9999/9999/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImeName = 'Microsoft Office IME 2007'
          MaxLength = 19
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          Text = '    -    -    -    '
          OnKeyUp = medCardNumKeyUp
        end
        object medLimiteDate: TMaskEdit
          Left = 298
          Top = 3
          Width = 53
          Height = 27
          AutoSize = False
          BevelKind = bkFlat
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          EditMask = '!99/99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImeName = 'Microsoft Office IME 2007'
          MaxLength = 5
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 1
          Text = '  -  '
          OnKeyUp = medLimiteDateKeyUp
        end
        object cxCurDRate: TcxCurrencyEdit
          Left = 138
          Top = 32
          HelpType = htKeyword
          HelpKeyword = '500000'
          AutoSize = False
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          Properties.Nullable = False
          Properties.OnChange = cxCurDRatePropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -19
          Style.Font.Name = 'MS Serif'
          Style.Font.Style = [fsBold]
          Style.TextStyle = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 16701439
          StyleFocused.TextColor = clBlack
          TabOrder = 2
          OnKeyUp = cxCurDRateKeyUp
          Height = 26
          Width = 80
        end
        object cxCurDecRate: TcxCurrencyEdit
          Left = 271
          Top = 32
          HelpType = htKeyword
          HelpKeyword = '500000'
          AutoSize = False
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          Properties.Nullable = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -19
          Style.Font.Name = 'MS Serif'
          Style.Font.Style = [fsBold]
          Style.TextStyle = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 16701439
          StyleFocused.TextColor = clBlack
          TabOrder = 3
          OnKeyUp = cxCurDecRateKeyUp
          Height = 26
          Width = 80
        end
        object cxCurTerm: TcxCurrencyEdit
          Left = 380
          Top = 2
          AutoSize = False
          EditValue = 12.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          Properties.MaxValue = 60.000000000000000000
          Properties.Nullable = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -19
          Style.Font.Name = 'MS Serif'
          Style.Font.Style = [fsBold]
          Style.TextStyle = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 16701439
          StyleFocused.TextColor = clBlack
          TabOrder = 4
          Visible = False
          OnKeyUp = cxCurTermKeyUp
          Height = 28
          Width = 31
        end
        object cxLabel7: TcxLabel
          Left = 244
          Top = 3
          Caption = #50976#54952#44592#44036#13#10'('#50900'-'#45380')'
          ParentColor = False
          Style.Color = clBtnFace
          Properties.Alignment.Horz = taCenter
          Transparent = True
          AnchorX = 270
        end
        object cxLabel211: TcxLabel
          Left = 24
          Top = 0
          Caption = #52852#46300#13#10#48264#54840
          ParentColor = False
          Style.Color = clBtnFace
          Transparent = True
        end
        object cxLabel1: TcxLabel
          Left = 56
          Top = 37
          Caption = #45824#47532#50836#44552'('#52852#46300')'
          ParentColor = False
          Style.Color = clBtnFace
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 219
          Top = 37
          Caption = #44208#51228#44552#50529
          ParentColor = False
          ParentFont = False
          Style.Color = clBtnFace
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxLabel6: TcxLabel
          Left = 352
          Top = 0
          Caption = #54624#48512#13#10#44060#50900
          ParentColor = False
          Style.Color = clBtnFace
          Transparent = True
          Visible = False
        end
        object btn_wRef1: TcxButton
          Left = 3
          Top = 3
          Width = 22
          Height = 28
          Cursor = crHandPoint
          Hint = #44208#51116#51221#48372#51116#51312#54924
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E0000000000000000000000000000000000000000
            000000000000713B0783A04A06C3B75400FFB85500FFB65300FF9F4905C36F39
            068300000000000000000000000000000000D9710BFF00000000000000000000
            0000D16008FFE39200FFE49600FFE19300FFED9E00FFF9A200FFFDB00DFFFFBB
            17FFD56908FFD86F0AFF00000000D9700AFFEC951CFF0000000000000000B552
            00FFE79B00FFE29300FFDE8F00FFE39000FFFAA500FFF8A708FFF9B01AFFFCB2
            21FFFFC737FFF6AB28FFD46502FFF6AF2DFFED9621FF00000000C85809FFE89C
            00FFDF8F00FFE39200FFF0A100FFF19005FFEF8F05FFEC8600FFFFC129FFFFBE
            2EFFFFC845FFFFCE50FFFFD964FFFFDC6DFFF3A224FFA24000FFE29100FFE193
            00FFE39200FFF2A300FFC35508FFC25202FFD2670AFFD06508FFD16407FFFFD9
            65FFFFC945FFFFD058FFFFD767FFFFDC71FFF4A629FFA74200FFEA9C00FFEC9C
            00FFF0A100FFC35508FF00000000000000000000000000000000F1A83EFFFFE3
            93FFFFD055FFFFD563FFFFDE78FFFFE486FFF8AE2DFFB35000FFDE8100FFDB7D
            00FFDD8000FFC65908FF000000000000000000000000DE7508FFFFCF56FFFFEB
            A7FFFFF2C9FFFFEBA7FFFFDF7DFFFFE78DFFFCB52EFF00000000000000000000
            0000000000000000000000000000000000000000000000000000DD7306FFDB6E
            00FFED900DFFEF8E0AFFFDC552FFFCC24FFFFECB56FFD47314FFDA7E21FFD97D
            21FFB24300FFC24F00FFE17803FFE0780AFF0000000000000000000000000000
            00000000000000000000000000000000000000000000B75300FFEA9900FFF39A
            00FFFFD858FFFFEA9AFFFFF2C9FFFFDA52FFE0790CFF00000000000000000000
            0000F19718FFEF900FFFFFB71EFFFFB61DFFFEBD2CFFBC5700FFF5A000FFF8A3
            03FFFCAD10FFF9A814FFFFB517FFD36503FF0000000000000000000000000000
            0000EF8E0AFFFFED97FFFFEB9DFFFFF2C9FFFFB61FFFC65C00FFFBA600FFF8A3
            08FFFBB321FFFAB525FFFFCF4CFFDE740FFFE4810BFFEE9618FFEC9014FFEF8E
            0AFFFFED97FFFFE386FFFFE9A7FFFFF6EAFFFFB921FFC95F00FFFBA904FFFCAE
            10FFFEB825FFFEB729FFFFC53FFFFFD44EFFFFD75DFFFFD359FFFFCD50FFFFE3
            83FFFFE385FFFFE17EFFFFF6EAFFFFD053FF00000000D16500FFFEAE12FFC759
            05FFD66B08FFFFC834FFFFC53DFFFFC948FFFFD35EFFFFD765FFFFDC79FFFFDC
            71FFFFE8A0FFFFF6EAFFFFD053FF0000000000000000D46800FFCB6007FF0000
            000000000000D56805FFFFD456FFFFD24EFFFFD45EFFFFDB68FFFFDF72FFFFE7
            9CFFFFF6EAFFFFD156FF000000000000000000000000DC750DFF000000000000
            000000000000000000007A480A83B3690DC3F09212FFF8AA29FFF8A318FFC182
            10C3836B2B8300000000000000000000000000000000}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnClick = cxButton2Click
        end
        object Label3: TcxLabel
          Left = 449
          Top = 1
          Caption = '- '#51068#49884#48520' 0'#44060#50900
          ParentColor = False
          Transparent = True
          Visible = False
        end
        object lblCardStatus: TcxLabel
          Left = 353
          Top = 43
          Caption = #49849#51064#50756#47308
          ParentColor = False
          Transparent = True
        end
        object lbl12: TcxLabel
          Left = 450
          Top = 42
          Caption = #51452#47928#48264#54840
          ParentColor = False
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorY = 52
        end
        object lblPaySeq: TcxLabel
          Left = 496
          Top = 42
          Caption = #44208#51116#51068#47144#48264#54840
          ParentColor = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 572
          AnchorY = 52
        end
        object lblTranNo: TcxLabel
          Left = 352
          Top = 30
          AutoSize = False
          Caption = #44144#47000#48264#54840
          ParentColor = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          Height = 15
          Width = 220
          AnchorX = 462
          AnchorY = 38
        end
        object lbl11: TcxLabel
          Left = 409
          Top = 8
          Caption = #44060#50900
          ParentColor = False
          Transparent = True
          Visible = False
        end
        object cxLabel5: TcxLabel
          Left = 449
          Top = 14
          Caption = '- 5'#47564#50896#51060#49345' '#54624#48512#44032#45733
          ParentColor = False
          Transparent = True
          Visible = False
        end
        object lb_BillKey: TcxLabel
          Left = 53
          Top = 1
          AutoSize = False
          ParentColor = False
          ParentFont = False
          Style.BorderColor = 12566463
          Style.BorderStyle = ebsFlat
          Style.Color = 16777192
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = #44404#47548
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Properties.Alignment.Vert = taVCenter
          Properties.LineOptions.OuterColor = clInactiveCaption
          Properties.LineOptions.Visible = True
          Properties.PenWidth = 3
          Visible = False
          Height = 31
          Width = 299
          AnchorY = 17
        end
        object chk_AgreeYn: TcxCheckBox
          Left = 6
          Top = 28
          Hint = #51200#51109#46108' '#52852#46300#51221#48372#47196' '#44208#51228#46121#45768#45796
          Caption = #51200#51109#46041#51032
          ParentFont = False
          ParentShowHint = False
          Properties.MultiLine = True
          ShowHint = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.LookAndFeel.SkinName = 'Sharp'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 19
          Transparent = True
          Width = 69
        end
      end
      object pnl4: TcxGroupBox
        Left = 2
        Top = 119
        TabOrder = 3
        DesignSize = (
          576
          61)
        Height = 61
        Width = 576
        object cxCurDecRate_Cash: TcxCurrencyEdit
          Left = 332
          Top = 9
          AutoSize = False
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          Properties.Nullable = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -19
          Style.Font.Name = 'MS Serif'
          Style.Font.Style = [fsBold]
          Style.TextStyle = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 16701439
          StyleFocused.TextColor = clBlack
          TabOrder = 0
          Height = 30
          Width = 91
        end
        object btn_CashSMS: TcxButton
          Left = 430
          Top = 30
          Width = 143
          Height = 29
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #54788#44552#50689#49688#51613' '#47928#51088#51204#49569
          Enabled = False
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 1
          OnClick = btn_CashSMSClick
        end
        object cxDBRadioGroup2: TcxDBRadioGroup
          Left = 3
          Top = 3
          Properties.Items = <>
          TabOrder = 2
          Height = 41
          Width = 114
          object rg_charge_ser2: TcxRadioButton
            Left = 2
            Top = 4
            Width = 91
            Height = 17
            Caption = #54788#44552#50689#49688#51613
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = rg_charge_ser2Click
            LookAndFeel.SkinName = 'Sharp'
            Transparent = True
          end
          object rg_charge_ser1: TcxRadioButton
            Left = 2
            Top = 22
            Width = 108
            Height = 17
            Caption = #51648#52636#51613#48729#50689#49688#51613
            TabOrder = 1
            OnClick = rg_charge_ser2Click
            LookAndFeel.SkinName = 'Sharp'
            Transparent = True
          end
        end
        object cxLabel8: TcxLabel
          Left = 120
          Top = 11
          Caption = #51613#48729#13#10#48264#54840
          ParentColor = False
          Style.Color = clBtnFace
          Transparent = True
        end
        object cxLabel9: TcxLabel
          Left = 302
          Top = 11
          Caption = #44208#51228#13#10#44552#50529
          ParentColor = False
          ParentFont = False
          Style.Color = clBtnFace
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object medtCashCardNum: TMaskEdit
          Left = 149
          Top = 9
          Width = 150
          Height = 30
          AutoSize = False
          BevelKind = bkFlat
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImeName = 'Microsoft Office IME 2007'
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 5
          Text = ''
          OnKeyPress = medtCashCardNumKeyPress
        end
        object lbl20: TcxLabel
          Left = 3
          Top = 43
          Caption = #54788#44552#50689#49688#51613' '#46321#47197#51012' '#50948#54620' '#48264#54840' : '#51452#48124#46321#47197#48264#54840', '#55092#45824#54256#48264#54840', '#54788#44552#50689#49688#51613#52852#46300' '#46321
          ParentColor = False
          Transparent = True
        end
        object lblCardStatus_Cash: TcxLabel
          Left = 424
          Top = 14
          Caption = #49849#51064#50756#47308
          ParentColor = False
          Transparent = True
        end
        object lblPaySeq_Cash: TcxLabel
          Left = 499
          Top = 14
          Caption = #44208#51116#51068#47144#48264#54840
          ParentColor = False
          Transparent = True
        end
        object lblTranNo_Cash: TcxLabel
          Left = 523
          Top = 2
          Caption = #44144#47000#48264#54840
          ParentColor = False
          Transparent = True
        end
        object edt_CustTel: TMaskEdit
          Left = 430
          Top = 2
          Width = 143
          Height = 26
          AutoSize = False
          BevelKind = bkFlat
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImeName = 'Microsoft Office IME 2007'
          MaxLength = 12
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 11
          Text = ''
          Visible = False
        end
        object lb_CustTel: TcxLabel
          Left = 543
          Top = 2
          Cursor = crIBeam
          Caption = #47928#51088#48264#54840
          Style.TextColor = 10329501
          Properties.WordWrap = True
          Transparent = True
          Visible = False
          Width = 28
        end
      end
      object pnl6: TcxGroupBox
        Left = 2
        Top = 182
        TabOrder = 4
        Height = 61
        Width = 576
        object cxCurDec_Coupon: TcxCurrencyEdit
          Left = 71
          Top = 33
          AutoSize = False
          EditValue = 500000.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          Properties.MaxValue = 500000.000000000000000000
          Properties.Nullable = False
          Properties.ReadOnly = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -19
          Style.Font.Name = 'MS Serif'
          Style.Font.Style = [fsBold]
          Style.TextStyle = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 16701439
          StyleFocused.TextColor = clBlack
          TabOrder = 0
          Height = 26
          Width = 141
        end
        object cxCurDec_Coupon1: TcxCurrencyEdit
          Left = 412
          Top = 33
          AutoSize = False
          EditValue = 500000.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          Properties.MaxValue = 500000.000000000000000000
          Properties.Nullable = False
          Properties.ReadOnly = True
          Style.BorderStyle = ebsOffice11
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = 16744448
          Style.Font.Height = -19
          Style.Font.Name = 'MS Serif'
          Style.Font.Style = [fsBold]
          Style.TextStyle = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 16701439
          StyleFocused.TextColor = clBlack
          TabOrder = 1
          Visible = False
          Height = 26
          Width = 73
        end
        object cxCurDecRate_Coupon: TcxCurrencyEdit
          Left = 280
          Top = 33
          AutoSize = False
          EditValue = 500000.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          Properties.MaxValue = 500000.000000000000000000
          Properties.Nullable = False
          Properties.ReadOnly = True
          Properties.OnChange = cxCurDecRate_CouponPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -19
          Style.Font.Name = 'MS Serif'
          Style.Font.Style = [fsBold]
          Style.TextStyle = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 16701439
          StyleFocused.TextColor = clBlack
          TabOrder = 2
          Height = 26
          Width = 133
        end
        object medtCouponNum: TMaskEdit
          Left = 71
          Top = 4
          Width = 141
          Height = 28
          AutoSize = False
          BevelKind = bkFlat
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImeName = 'Microsoft Office IME 2007'
          MaxLength = 12
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 3
          Text = '123456789'
          OnChange = medtCouponNumChange
          OnKeyDown = medtCouponNumKeyDown
        end
        object sb_ApproveRed: TcxButton
          Left = 215
          Top = 4
          Width = 61
          Height = 28
          Cursor = crHandPoint
          Caption = #51064#51613#50836#52397
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 4
          OnClick = sb_ApproveRedClick
        end
        object cxLabel14: TcxLabel
          Left = 12
          Top = 38
          Caption = #53216#54256#44552#50529
          Transparent = True
        end
        object cxLabel15: TcxLabel
          Left = 219
          Top = 38
          Caption = #44208#51116#44552#50529
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxLabel10: TcxLabel
          Left = 12
          Top = 11
          Caption = #53216#54256#48264#54840
          ParentColor = False
          Style.Color = clBtnFace
          Transparent = True
        end
        object Label1: TcxLabel
          Left = 349
          Top = 17
          Caption = #50896' '#47560#51068#47532#51648' '#51088#46041' '#51204#54872#46120
          ParentColor = False
          Transparent = True
        end
        object Label4: TcxLabel
          Left = 495
          Top = 4
          AutoSize = False
          Caption = #53216#54256#51068#47144#48264#54840
          ParentColor = False
          Transparent = True
          Height = 16
          Width = 76
        end
        object Lbl_ChangeMile: TcxLabel
          Left = 340
          Top = 17
          Caption = '0'
          ParentColor = False
          Transparent = True
        end
        object lblCouponStatus: TcxLabel
          Left = 522
          Top = 41
          Caption = #49849#51064#50756#47308
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblPaySeq_Coupon: TcxLabel
          Left = 495
          Top = 23
          AutoSize = False
          Caption = #53216#54256#51068#47144#48264#54840
          ParentColor = False
          Transparent = True
          Height = 16
          Width = 80
        end
        object Label2: TcxLabel
          Left = 282
          Top = 3
          Caption = #8251' '#53216#54256' '#51092#50529
          ParentColor = False
          Transparent = True
        end
        object lb_CouponNotice: TcxLabel
          Left = 551
          Top = 45
          Caption = #53216#54256#49324#50857' '#49884' '#52712#49548#44032' '#46104#51648' '#50506#49845#45768#45796'.'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clRed
          Style.Font.Height = -19
          Style.Font.Name = #44404#47548
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 2
        Top = 63
        TabOrder = 5
        Height = 53
        Width = 373
        object lbResultMsg: TcxLabel
          Left = 3
          Top = 1
          AutoSize = False
          Caption = #44208#44284' '#47700#49884#51648' '#54364#49884
          ParentColor = False
          Transparent = True
          Height = 52
          Width = 371
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 377
        Top = 63
        TabOrder = 6
        Height = 53
        Width = 201
        object sb_ApproveCancle: TcxButton
          Left = 3
          Top = 27
          Width = 52
          Height = 23
          Cursor = crHandPoint
          Caption = #49849#51064#52712#49548
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 2
          OnClick = sb_ApproveCancleClick
        end
        object sb_ApproveOK: TcxButton
          Left = 57
          Top = 2
          Width = 89
          Height = 23
          Cursor = crHandPoint
          Caption = #44208#51228#50756#47308'('#45803#44592')'
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 1
          OnClick = sb_ApproveOKClick
        end
        object sb_ApproveReceipt: TcxButton
          Left = 57
          Top = 27
          Width = 89
          Height = 23
          Cursor = crHandPoint
          Hint = #52852#46300#49849#51064#50689#49688#51613#47928#51088#51204#49569
          Caption = #50689#49688#51613#47928#51088
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 3
          OnClick = sb_ApproveReceiptClick
        end
        object sb_ApproveReq: TcxButton
          Left = 3
          Top = 2
          Width = 52
          Height = 23
          Cursor = crHandPoint
          Caption = #49849#51064#50836#52397
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 0
          OnClick = sb_ApproveReqClick
        end
        object cxConfigSet: TcxButton
          Left = 148
          Top = 2
          Width = 50
          Height = 23
          Cursor = crHandPoint
          Caption = #49444#51221
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 4
          OnClick = cxConfigSetClick
        end
        object sb_Exit: TcxButton
          Left = 148
          Top = 27
          Width = 50
          Height = 23
          Cursor = crHandPoint
          Hint = #45803#44592
          Caption = #45803#44592
          Colors.Default = 16635384
          Colors.Normal = 16773362
          Colors.Hot = 16360076
          Colors.Pressed = 16644080
          Colors.Disabled = 4227327
          LookAndFeel.SkinName = 'Sharp'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = sb_ExitClick
        end
        object btn_Coupon: TcxButton
          Left = 107
          Top = 31
          Width = 143
          Height = 49
          Cursor = crHandPoint
          Hint = #53216#54256#49324#50857
          Caption = #53216#54256#49324#50857
          Colors.Default = 16635384
          Colors.Normal = 16773362
          Colors.Hot = 16360076
          Colors.Pressed = 16644080
          Colors.Disabled = 4227327
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = btn_CouponClick
        end
      end
      object pnConfigSet: TcxGroupBox
        Left = 2
        Top = 246
        Caption = #44208#51116#44552#50529' '#48512#44032#49464' '#51201#50857#50668#48512#47484' '#49444#51221' '#54633#45768#45796'.'
        TabOrder = 2
        Visible = False
        Height = 61
        Width = 576
        object rbConfigVATset2: TcxRadioButton
          Left = 100
          Top = 19
          Width = 101
          Height = 17
          Caption = '          %'#51201#50857
          Checked = True
          TabOrder = 3
          TabStop = True
          OnClick = rbConfigVATset1Click
          LookAndFeel.SkinName = 'Sharp'
          Transparent = True
        end
        object cxConfigSave: TcxButton
          Left = 338
          Top = 18
          Width = 67
          Height = 32
          Cursor = crHandPoint
          Caption = #51200#51109
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 0
          OnClick = cxConfigSaveClick
        end
        object chkConfigCardset: TcxCheckBox
          Left = 7
          Top = 37
          Caption = #52852#46300#49849#51064#49884' '#44208#51116#52852#46300#47749' '#51217#49688#52285' '#51201#50836'1'#50640' '#54364#49884
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.LookAndFeel.SkinName = 'Sharp'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 1
          Transparent = True
        end
        object rbConfigVATset1: TcxRadioButton
          Left = 7
          Top = 19
          Width = 83
          Height = 17
          Caption = #49324#50857#50504#54632
          TabOrder = 2
          OnClick = rbConfigVATset1Click
          LookAndFeel.SkinName = 'Sharp'
          Transparent = True
        end
        object rbConfigVATset3: TcxRadioButton
          Left = 207
          Top = 19
          Width = 98
          Height = 17
          Caption = #49436#48260#49444#51221#49324#50857
          TabOrder = 4
          OnClick = rbConfigVATset1Click
          LookAndFeel.SkinName = 'Sharp'
          Transparent = True
        end
        object cxCurVATvalue: TcxTextEdit
          Left = 117
          Top = 16
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taBottomJustify
          Properties.MaxLength = 3
          Properties.OnChange = cxCurDRatePropertiesChange
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 5
          OnKeyPress = cxCurVATvalueKeyPress
          Height = 21
          Width = 40
        end
      end
      object pnApproveCancle: TcxGroupBox
        Left = 2
        Top = 309
        Caption = #52712#49548' '#49324#50976#47484' '#51077#47141' '#54616#49464#50836'!'
        TabOrder = 1
        Height = 90
        Width = 327
        object medCancel: TMemo
          Left = 3
          Top = 15
          Width = 249
          Height = 66
          ImeMode = imSHanguel
          ImeName = 'Microsoft Office IME 2007'
          Lines.Strings = (
            'medCancel')
          TabOrder = 0
          WantReturns = False
        end
        object btnApproveCancelReq: TcxButton
          Left = 258
          Top = 18
          Width = 61
          Height = 30
          Cursor = crHandPoint
          Caption = #49849#51064#52712#49548
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 1
          OnClick = btnApproveCancelReqClick
        end
        object btnSubClose: TcxButton
          Left = 258
          Top = 51
          Width = 61
          Height = 30
          Cursor = crHandPoint
          Caption = #45803#44592
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 2
          OnClick = btnSubCloseClick
        end
      end
      object pnl_BillKeyMng: TPanel
        Left = 335
        Top = 306
        Width = 582
        Height = 115
        BevelOuter = bvNone
        Color = 121
        ParentBackground = False
        TabOrder = 7
        Visible = False
        object pnl_BillKeyMng1: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 576
          Height = 109
          Align = alClient
          BevelInner = bvLowered
          BevelOuter = bvNone
          Color = clWhite
          Locked = True
          ParentBackground = False
          TabOrder = 0
          object Panel3: TPanel
            Left = 1
            Top = 1
            Width = 574
            Height = 34
            Align = alTop
            BevelOuter = bvNone
            Color = clYellow
            Locked = True
            ParentBackground = False
            TabOrder = 0
            Visible = False
            object MaskEdit2: TMaskEdit
              Left = 41
              Top = 3
              Width = 190
              Height = 26
              AutoSize = False
              BevelKind = bkFlat
              BiDiMode = bdLeftToRight
              BorderStyle = bsNone
              EditMask = '!9999/9999/9999/9999;1;_'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ImeName = 'Microsoft Office IME 2007'
              MaxLength = 19
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 0
              Text = '    -    -    -    '
              OnKeyUp = medCardNumKeyUp
            end
            object cxImage2: TcxImage
              Left = 2
              Top = 3
              ParentColor = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000040
                000000400806000000AA6971DE0000000473424954080808087C086488000000
                0970485973000001BB000001BB013AECE3E20000001974455874536F66747761
                7265007777772E696E6B73636170652E6F72679BEE3C1A000002204944415478
                9CED9BB16B53511847CF77FB12B10607515442410B220597422705E926B48B20
                5D5D1CDA4567FF84CE0A924504A58BC549ECE2923FA010B042E9102804515B51
                D0A89834EF738920127929DAF76B78F78C4908E73BBC7B73E1BD98BB5364825A
                404D0CA016501303A805D4C4006A013531805A404D32E8C589DAF76A99BDE914
                ABE42D741004BCDD2169B4968EBEF9F33DFB751436B073B5F66D73EE02677376
                CC8BB76E2C6F2F55EE3B38F4034C3CFC7CA2D409CF8059AD5F6ED4BBE5F446EB
                D6F18F01A0F423DCA338C303CCF667C6266B5FE73C4D5FA88D145808F301F705
                B5880CF785E0EE336A0F15EE3E138029B58890A9A4B2DB18535B08194BCE6C3D
                564B4829FC513806500BA88901D4026A6200B5809A18402DA0267977F1A6DA41
                4AD23E35AD769052F8251003A805D4C4006A0135850F30F0D6D8EF5CAE06AE5F
                0894820DF5851BBB298F367A8CCAA357990196AF269C3E36DCF000739381C67B
                A7B193FE93585E642E81E7CD94BD7DCCF2FA83B3F569348607B0F30FBE8CCAD5
                7A20C44D30EB03E325B8520D94FFD3DD83573B4EEB105D7499019ECC97B97472
                F84D308B9EC3B5A79D4313A1F04B2073132CC212E8017F1DEF5B175E6E8FCECF
                DA3EE90560536D21643398D9BADA428599AD07CC56D52232CC564373717C0D67
                45ED923BCE4A73717C2D00748FA47780BAD62857EAFD99E3839236E84F53857C
                54B6A814FE281C03A805D4C4006A013531805A404D0CA01650F313A492A86901
                6226300000000049454E44AE426082}
              Properties.FitMode = ifmFill
              Style.LookAndFeel.Kind = lfOffice11
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.Kind = lfOffice11
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.Kind = lfOffice11
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.Kind = lfOffice11
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              Height = 27
              Width = 39
            end
            object MaskEdit1: TMaskEdit
              Left = 237
              Top = 3
              Width = 53
              Height = 27
              AutoSize = False
              BevelKind = bkFlat
              BiDiMode = bdLeftToRight
              BorderStyle = bsNone
              EditMask = '!99/99;1;_'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ImeName = 'Microsoft Office IME 2007'
              MaxLength = 5
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 2
              Text = '  -  '
              OnKeyUp = medLimiteDateKeyUp
            end
            object btn_AddBillKey: TcxButton
              Left = 296
              Top = 3
              Width = 78
              Height = 26
              Cursor = crHandPoint
              Caption = #52852#46300#46321#47197
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 3
            end
          end
          object cxGrid6: TcxGrid
            Left = 1
            Top = 35
            Width = 574
            Height = 73
            Align = alClient
            TabOrder = 1
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Office2010Silver'
            object cxGridBillKey: TcxGridDBTableView
              Tag = 6
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
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.CellHints = True
              OptionsBehavior.CopyCaptionsToClipboard = False
              OptionsBehavior.CopyPreviewToClipboard = False
              OptionsBehavior.ExpandMasterRowOnDblClick = False
              OptionsCustomize.ColumnFiltering = False
              OptionsSelection.InvertSelect = False
              OptionsView.NoDataToDisplayInfoText = ' '
              OptionsView.DataRowHeight = 30
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 23
              object cxGridBillKeyColumn01: TcxGridDBColumn
                DataBinding.FieldName = #45824#54364#52852#46300
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                Width = 54
              end
              object cxGridBillKeyColumn02: TcxGridDBColumn
                DataBinding.FieldName = #52852#46300#48264#54840
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 191
              end
              object cxGridBillKeyColumn03: TcxGridDBColumn
                DataBinding.FieldName = #49325#51228
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Buttons = <
                  item
                    Default = True
                    ImageIndex = 59
                    Kind = bkGlyph
                  end>
                Properties.Images = Frm_Main.cxSmallImages
                Properties.ViewStyle = vsButtonsAutoWidth
                Properties.OnButtonClick = cxGridBillKeyColumn03PropertiesButtonClick
                HeaderAlignmentHorz = taCenter
                Options.ShowEditButtons = isebAlways
              end
              object cxGridBillKeyColumn04: TcxGridDBColumn
                DataBinding.FieldName = #52852#46300#49324
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                Width = 103
              end
              object cxGridBillKeyColumn05: TcxGridDBColumn
                DataBinding.FieldName = 'BillSeq'
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
            end
            object cxGridLevel4: TcxGridLevel
              GridView = cxGridBillKey
            end
          end
        end
      end
    end
    object pnl5: TPanel
      Left = 2
      Top = 2
      Width = 583
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object cxGroupBox4: TcxGroupBox
        Left = 0
        Top = 1
        TabOrder = 0
        Height = 27
        Width = 584
        object cb_BillKey: TcxComboBox
          Left = 94
          Top = 2
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #52852#46300' '#51221#48372' '#51649#51217' '#51077#47141)
          Properties.OnChange = cb_BillKeyPropertiesChange
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 0
          Text = #52852#46300' '#51221#48372' '#51649#51217' '#51077#47141
          Height = 23
          Width = 240
        end
        object cxLabel3: TcxLabel
          Left = 9
          Top = 6
          Caption = #51200#51109#46041#51032#52852#46300
          ParentColor = False
          Style.Color = clBtnFace
          Transparent = True
        end
        object cxBtnCardDel: TcxButton
          Left = 334
          Top = 3
          Width = 20
          Height = 21
          Cursor = crHandPoint
          Hint = #49440#53469#52852#46300#51221#48372#49325#51228
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000010000000100403000000EDDDE2
            520000000373424954080808DBE14FE000000009704859730000006F0000006F
            01F1A2DC430000001974455874536F667477617265007777772E696E6B736361
            70652E6F72679BEE3C1A00000027504C5445FFFFFFFF0000DD515EDF5060E14E
            5EDF5060E04E5FE04F5EE04F5FE04F5FE04F5FE46573F0A7AFD217BCD9000000
            0A74524E53000126707F80B3B5E6F66C90669B0000004D49444154085B636060
            50CD680B620002E159AB56AD34646060AC5A0504CB0518985781810183268431
            89210AC258C29005612C63E85A7D060876AD4030E05270C570ED7003E156C02D
            85390300695B419B3C902E2C0000000049454E44AE426082}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = cxBtnCardDelClick
        end
        object btn_Billkey: TcxButton
          Left = 486
          Top = 3
          Width = 88
          Height = 21
          Cursor = crHandPoint
          Caption = #52852#46300#44288#47532#50676#44592
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 3
          OnClick = btn_BillkeyClick
        end
        object chk_BaRo_Card: TcxCheckBox
          Left = 371
          Top = 4
          Caption = #48148#47196#52852#46300#44208#51228
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.LookAndFeel.SkinName = 'Sharp'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 4
          Transparent = True
          Visible = False
          OnClick = chk_BaRo_CardClick
        end
      end
    end
  end
  object trm_ChekRecive: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = trm_ChekReciveTimer
    Left = 332
    Top = 111
  end
end

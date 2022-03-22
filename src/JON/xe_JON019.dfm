object Frm_JON019: TFrm_JON019
  Left = 637
  Top = 166
  BorderStyle = bsNone
  Caption = 'Frm_JON019'
  ClientHeight = 352
  ClientWidth = 553
  Color = clBtnFace
  Constraints.MaxHeight = 600
  Constraints.MaxWidth = 1112
  Constraints.MinHeight = 318
  Constraints.MinWidth = 553
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poDesigned
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 553
    Height = 352
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object cxTextEdit14: TcxTextEdit
      Left = 80
      Top = 5
      Properties.ImeMode = imSHanguel
      TabOrder = 3
      Width = 100
    end
    object cxComboBox2: TcxComboBox
      Left = 5
      Top = 5
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        #44256#44061#47749
        #51204#54868#48264#54840)
      TabOrder = 2
      Text = #44256#44061#47749
      Width = 73
    end
    object cxComboBox3: TcxComboBox
      Left = 181
      Top = 5
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        #51204#52404
        #50756#47308
        #52712#49548
        #47928#51032)
      TabOrder = 4
      Text = #51204#52404
      Width = 50
    end
    object cxCheckBox2: TcxCheckBox
      Left = 232
      Top = 7
      Caption = #51060#50857#44592#44036
      TabOrder = 5
      Transparent = True
    end
    object cxDate20: TcxDateEdit
      Left = 302
      Top = 4
      AutoSize = False
      BeepOnEnter = False
      EditValue = 0d
      ParentShowHint = False
      Properties.DateButtons = [btnNow, btnToday]
      Properties.DateOnError = deToday
      Properties.InputKind = ikStandard
      Properties.SaveTime = False
      Properties.ShowTime = False
      ShowHint = True
      Style.BorderStyle = ebsOffice11
      TabOrder = 0
      Height = 20
      Width = 75
    end
    object cxDate21: TcxDateEdit
      Left = 381
      Top = 4
      AutoSize = False
      BeepOnEnter = False
      EditValue = 0d
      ParentShowHint = False
      Properties.DateButtons = [btnNow, btnToday]
      Properties.DateOnError = deToday
      Properties.InputKind = ikStandard
      Properties.SaveTime = False
      Properties.ShowTime = False
      ShowHint = True
      Style.BorderStyle = ebsOffice11
      TabOrder = 1
      Height = 20
      Width = 75
    end
    object pnl3: TPanel
      Left = 0
      Top = 33
      Width = 549
      Height = 157
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 6
      OnMouseDown = pnl3MouseDown
      object cxLabel16: TcxLabel
        Left = 13
        Top = 36
        AutoSize = False
        Caption = #52636#48156#51648
        ParentColor = False
        Style.BorderColor = 13353605
        Style.BorderStyle = ebsSingle
        Style.Color = clWhite
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 24
        Width = 55
        AnchorX = 41
        AnchorY = 48
      end
      object cxLabel2: TcxLabel
        Left = 13
        Top = 60
        AutoSize = False
        Caption = #46020#52265#51648
        ParentColor = False
        Style.BorderColor = 13353605
        Style.BorderStyle = ebsSingle
        Style.Color = clWhite
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 24
        Width = 55
        AnchorX = 41
        AnchorY = 72
      end
      object cxLabel18: TcxLabel
        Left = 349
        Top = 36
        Hint = 'Color'
        AutoSize = False
        Caption = #51064#44540#44592#49324
        ParentColor = False
        Style.BorderColor = 13353605
        Style.BorderStyle = ebsSingle
        Style.Color = 16635846
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 24
        Width = 67
        AnchorX = 383
        AnchorY = 48
      end
      object lb_NearWKCnt: TcxLabel
        Left = 413
        Top = 36
        Hint = 'Color'
        AutoSize = False
        Caption = '12'#47749
        ParentColor = False
        ParentFont = False
        Style.BorderColor = 13353605
        Style.BorderStyle = ebsSingle
        Style.Color = 16635846
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 24
        Width = 122
        AnchorX = 474
        AnchorY = 48
      end
      object cxLabel20: TcxLabel
        Left = 349
        Top = 60
        Hint = 'Color'
        AutoSize = False
        Caption = #45824#44592#53084
        ParentColor = False
        Style.BorderColor = 13353605
        Style.BorderStyle = ebsSingle
        Style.Color = 12698111
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 24
        Width = 67
        AnchorX = 383
        AnchorY = 72
      end
      object lb_NearStandByCallCnt: TcxLabel
        Left = 413
        Top = 60
        Hint = 'Color'
        AutoSize = False
        Caption = '18'#44148
        ParentColor = False
        ParentFont = False
        Style.BorderColor = 13353605
        Style.BorderStyle = ebsSingle
        Style.Color = 12698111
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 24
        Width = 122
        AnchorX = 474
        AnchorY = 72
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 549
        Height = 22
        Align = alTop
        BevelOuter = bvNone
        Color = 10528165
        ParentBackground = False
        TabOrder = 6
        object Image1: TImage
          Left = 200
          Top = -3
          Width = 25
          Height = 23
          AutoSize = True
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000019
            00000017080200000071817344000000017352474200AECE1CE9000000046741
            4D410000B18F0BFC61050000000970485973000017110000171101CA26F33F00
            00000774494D4507DE040F063630E24BBC020000000774455874417574686F72
            00A9AECC480000000C744558744465736372697074696F6E0013092123000000
            0A74455874436F7079726967687400AC0FCC3A0000000E744558744372656174
            696F6E2074696D650035F70F090000000974455874536F667477617265005D70
            FF3A0000000B74455874446973636C61696D657200B7C0B48F00000008744558
            745761726E696E6700C01BE6870000000774455874536F7572636500F5FF83EB
            0000000874455874436F6D6D656E7400F6CC96BF00000006744558745469746C
            6500A8EED227000004B449444154384F7D94694F1B571486F3C3AAB0A508F543
            5BB51FAB166C97B648A149D8318B298A1A08A42506C49AB42A812C109186121A
            144221988029A2019BD5181BB003D8C6E359EF3643CF1D9B8434528FAE66461E
            DF67DEF39E73CFB993D3304E8331CA74C2CC1B5C530FBA0137623E1ABAC1175C
            4E8CD46633DE67F1FD9412AA334C75CCF87E4C01AD134A11251AC7E949DCBBA8
            332C1E06BC867F52CA18A2FAB128CB94208320AAC14F0AC64789840444438780
            3F26D5A5F6022BF96C2A824FC16B9D10A4612A635673AD71DEB3A2184454654C
            A984E90FD79BA6FF5E500D83028C32FE5DD8C525A45849482A4C7788469884F5
            969EDB1D7DBF493AB93378FF4810BC3B81DCC2427F24022C0C8952EE20D0C03F
            539F710EF62759602AD119D8A41102E988585FF0AE1556DAC3427C7064E4B590
            181819ADBFE914982E220256125E8833AC1303743158903DD80B4E23C6544A37
            0381E7B37331559B5BF61C88E26E34164A88ABFB61CFEE9E37107C3C360E204C
            18C200254916AC148B30A2622423143A8A88708D456F0FDC8DCAAA6BE99F9F7B
            7F69E8E8AE6CB8D1DA3FE88BC45D4BCBAFBCEB08D3A3583C7470A061042ADFB2
            4C51BC54BE60B0A8C2DED3D7BFE10FC8984CBE74770E0CCEAC6E8F2FAE3A071E
            E57C75A9B0BE251815A309F1E1E8585155755B5797C6D365BCE5CC9E00853C73
            44A9A8AA2FE6DC8EABD76E76F6040FA2ADB7FAFE9C5FFEE24ADD47D6E21C4B71
            765E59766E517BDF9077CB5F5CED181A7DB21B0E29BCE6E4AD5F601FB011212A
            5FEC5852F722C77F4C4C4FB85F7D57DD949D577AC162CFCCB367D96AB2F22A2C
            C58EE0610C4A21602C231531B38F932CE893648E80D7281364C5E55EDC8B1D77
            DDB9E7DEDCFDF8EBD28CDCF2344B4DBACD71DEEAC8B0567DF66D89673B383EE3
            7A3A358519580515334FC21B56B215A0821121F1E0D1E3AD70B87BE0BE6BD5FF
            69416586B5223DDF71DE56FB81AD36CD6A079637B0E7F1EF787C3EA0F04366FA
            056793B3A0EDA8A183F70A5F4C24342408BF4FFE55E7ECFCA4A03CCB569166AB
            3E6FAD4ACBAFCAB0965B4BEB7623B1CDFDB04498E9098634532C0374997EC10B
            11E345EF6A636B5B5357F7CE71FCCB4BA53996CB99D6B2749B3DDD5699662DF9
            D056D2DA3FB41EDC2B2CB7B7F5FEEA0B048125238D1F2993956A5460F9F7F72F
            96965E6F6B5F58DB80FE1E9D5DF8BCA02CDB569C6929C9B2965CC8BB5CF8A333
            10972292EC5A5CAA6F6CEEE8E99535151A13EC4EE6C8BB1678D0130955DD3F3C
            8CABEA91240D8E3E0989F2F4CA7A554B775ED9D56F6A9BDB1E8C6C4413B3CB9E
            E1B1319920415162710128C965EA3A3D8CD013448781C58D03E2BDE1E1C38408
            02C3A2E28F4B3B7165FDF0D8BDB6158EC79F3E9F9091422881230427921F235E
            C713531757C60F01DC61C10C001724A4F982BB05578AFCE1D7CF665EAEF8B6C7
            5D7325350E51D310CC44A89E69F49BED105CD7D9E02CF8A20E938FDC1D7AD870
            E3A784A24C4E4FADACAD8563F1FC8BDFAF6C6C98AD002CDEE4FFC78280110A99
            2A84343B9D33F36E90A968AA863449C3EDDDB79E4DBDC0BA0EE324356ACEC4FB
            BAF8B734CCC721CC6818642013C63F2158455880B2110A6381A63C7987F65F56
            5237DF6DAA8305AE508A09D11004CC6F78C5FB9B8F4EE8A7D43608C3F817952F
            E14DE6236B3C0000000049454E44AE426082}
          Transparent = True
        end
        object cxLabel3: TcxLabel
          Left = 247
          Top = 4
          Caption = #8451
          ParentColor = False
          ParentFont = False
          Style.Color = clBtnFace
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = 10485760
          Style.Font.Height = -13
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lb_WeatherArea: TcxLabel
          Left = 277
          Top = 2
          Caption = #50517#44396#51221#46041
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          AnchorY = 13
        end
        object lb_WeatherTemp: TcxLabel
          Left = 230
          Top = 1
          Hint = 'Color'
          Caption = '12'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = 10485760
          Style.Font.Height = -13
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = [fsBold]
          Style.TextColor = clBlue
          Style.IsFontAssigned = True
        end
        object lb_Today: TcxLabel
          Left = 8
          Top = 2
          Caption = '31'#51068'('#49688')'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          AnchorY = 12
        end
        object lb_Weather: TcxLabel
          Left = 166
          Top = 3
          Hint = 'Color'
          Caption = #47569#51020
          ParentColor = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = 10485760
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = [fsBold]
          Style.TextColor = clBlue
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 194
          AnchorY = 13
        end
      end
      object cxLabel5: TcxLabel
        Left = 416
        Top = 21
        AutoSize = False
        Caption = '('#48152#44221' 1Km)'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        Height = 16
        Width = 119
        AnchorX = 476
        AnchorY = 29
      end
      object cxLabel25: TcxLabel
        Left = 349
        Top = 86
        Hint = 'Color'
        AutoSize = False
        Caption = #44396#44036
        ParentColor = False
        Style.BorderColor = 13353605
        Style.BorderStyle = ebsSingle
        Style.Color = 16706530
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 25
        Width = 67
        AnchorX = 383
        AnchorY = 99
      end
      object cxLabel4: TcxLabel
        Left = 349
        Top = 108
        Hint = 'Color'
        AutoSize = False
        Caption = #47588#52845#44148#49688
        ParentColor = False
        Style.BorderColor = 13353605
        Style.BorderStyle = ebsSingle
        Style.Color = 16706530
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 25
        Width = 67
        AnchorX = 383
        AnchorY = 121
      end
      object cxLabel17: TcxLabel
        Left = 349
        Top = 130
        Hint = 'Color'
        AutoSize = False
        Caption = #49828#47560#53944#50836#44552
        ParentColor = False
        Style.BorderColor = 13353605
        Style.BorderStyle = ebsSingle
        Style.Color = 16706530
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 24
        Width = 67
        AnchorX = 383
        AnchorY = 142
      end
      object cxLabel24: TcxLabel
        Left = 413
        Top = 86
        AutoSize = False
        Caption = #44396#44036
        ParentColor = False
        ParentFont = False
        Style.BorderColor = 13353605
        Style.BorderStyle = ebsSingle
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 25
        Width = 122
        AnchorX = 474
        AnchorY = 99
      end
      object lb_Sample: TcxLabel
        Left = 413
        Top = 108
        AutoSize = False
        Caption = #44396#44036
        ParentColor = False
        ParentFont = False
        Style.BorderColor = 13353605
        Style.BorderStyle = ebsSingle
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 25
        Width = 122
        AnchorX = 474
        AnchorY = 121
      end
      object lb_SmartTitle: TcxLabel
        Left = 413
        Top = 130
        AutoSize = False
        Caption = #44396#44036
        ParentColor = False
        ParentFont = False
        Style.BorderColor = 13353605
        Style.BorderStyle = ebsSingle
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 24
        Width = 122
        AnchorX = 474
        AnchorY = 142
      end
      object cxLabel26: TcxLabel
        Left = 13
        Top = 86
        Hint = 'Color'
        AutoSize = False
        Caption = #49828#47560#53944#50836#44552
        ParentColor = False
        ParentFont = False
        Style.BorderColor = 13353605
        Style.BorderStyle = ebsSingle
        Style.Color = 12703487
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 24
        Width = 104
        AnchorX = 65
        AnchorY = 98
      end
      object lb_RankSmart: TcxLabel
        Left = 13
        Top = 109
        Hint = 'Color'
        AutoSize = False
        ParentColor = False
        ParentFont = False
        Style.BorderColor = 13353605
        Style.BorderStyle = ebsSingle
        Style.Color = 12703487
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        OnDblClick = lb_RankSmartDblClick
        Height = 45
        Width = 104
        AnchorX = 65
        AnchorY = 132
      end
      object cxLabel10: TcxLabel
        Left = 116
        Top = 86
        AutoSize = False
        Caption = #50756#47308'1'#50948
        ParentColor = False
        ParentFont = False
        Style.BorderColor = 13353605
        Style.BorderStyle = ebsSingle
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 24
        Width = 78
        AnchorX = 155
        AnchorY = 98
      end
      object lb_Rank1: TcxLabel
        Left = 116
        Top = 109
        AutoSize = False
        ParentColor = False
        ParentFont = False
        Style.BorderColor = 13353605
        Style.BorderStyle = ebsSingle
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        OnDblClick = lb_RankSmartDblClick
        Height = 45
        Width = 78
        AnchorX = 155
        AnchorY = 132
      end
      object cxLabel9: TcxLabel
        Left = 193
        Top = 86
        AutoSize = False
        Caption = #50756#47308'2'#50948
        ParentColor = False
        ParentFont = False
        Style.BorderColor = 13353605
        Style.BorderStyle = ebsSingle
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 24
        Width = 78
        AnchorX = 232
        AnchorY = 98
      end
      object lb_Rank2: TcxLabel
        Left = 193
        Top = 109
        AutoSize = False
        ParentColor = False
        ParentFont = False
        Style.BorderColor = 13353605
        Style.BorderStyle = ebsSingle
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        OnDblClick = lb_RankSmartDblClick
        Height = 45
        Width = 78
        AnchorX = 232
        AnchorY = 132
      end
      object lb_Rank3: TcxLabel
        Left = 270
        Top = 109
        AutoSize = False
        ParentColor = False
        ParentFont = False
        Style.BorderColor = 13353605
        Style.BorderStyle = ebsSingle
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        OnDblClick = lb_RankSmartDblClick
        Height = 45
        Width = 78
        AnchorX = 309
        AnchorY = 132
      end
      object cxLabel8: TcxLabel
        Left = 270
        Top = 86
        AutoSize = False
        Caption = #50756#47308'3'#50948
        ParentColor = False
        ParentFont = False
        Style.BorderColor = 13353605
        Style.BorderStyle = ebsSingle
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 24
        Width = 78
        AnchorX = 309
        AnchorY = 98
      end
      object lb_SAddr: TcxRichEdit
        Left = 67
        Top = 36
        ParentFont = False
        Lines.Strings = (
          #12609#12609#12609#12609#12609)
        Style.BorderColor = 13353605
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.SkinName = 'Office2010Silver'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
        StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
        StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
        TabOrder = 22
        Height = 24
        Width = 281
      end
      object lb_DAddr: TcxRichEdit
        Left = 67
        Top = 60
        ParentFont = False
        Style.BorderColor = 13353605
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 23
        Height = 24
        Width = 281
      end
    end
    object pnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 549
      Height = 33
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  '#49828#47560#53944#50836#44552#54364
      Color = 12566463
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 7
      OnMouseDown = pnlTitleMouseDown
      DesignSize = (
        549
        33)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 549
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = False
        OnMouseDown = pnlTitleMouseDown
      end
      object BtnClose: TcxButton
        Left = 514
        Top = 6
        Width = 33
        Height = 25
        Cursor = crHandPoint
        Hint = #45803#44592
        Anchors = [akTop, akRight]
        Colors.Default = 16635384
        Colors.Normal = 16773362
        Colors.Hot = 16360076
        Colors.Pressed = 16644080
        Colors.Disabled = 4227327
        LookAndFeel.Kind = lfOffice11
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
      object btn_Setting: TcxButton
        Left = 387
        Top = 6
        Width = 66
        Height = 25
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #49444#51221
        Colors.Default = 16635384
        Colors.Normal = 16773362
        Colors.Hot = 16360076
        Colors.Pressed = 16644080
        Colors.Disabled = 4227327
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_SettingClick
      end
      object cxButton3: TcxButton
        Left = 455
        Top = 6
        Width = 57
        Height = 25
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #53356#44172#48372#44592
        Colors.Default = 16635384
        Colors.Normal = 16773362
        Colors.Hot = 16360076
        Colors.Pressed = 16644080
        Colors.Disabled = 4227327
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton3Click
      end
      object btn_sntest: TcxButton
        Left = 272
        Top = 6
        Width = 49
        Height = 25
        Cursor = crHandPoint
        Caption = #51201#50857
        Colors.Default = 16635384
        Colors.Normal = 16773362
        Colors.Hot = 16360076
        Colors.Pressed = 16644080
        Colors.Disabled = 4227327
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 4
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
        OnClick = btn_sntestClick
      end
      object cxBtnFixPos: TcxButton
        Left = 363
        Top = 6
        Width = 22
        Height = 24
        Cursor = crHandPoint
        Hint = #50948#52824#44256#51221
        Anchors = [akTop, akRight]
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E0000000000000000000083817FAB2B2929660000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002E2E2D38B1ADACFF403E
          3D8F000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000005755546FB2AD
          ADFF2D2D2D760000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000005F5D
          5C85AAA7A9FF302D1E6B0000000000000000040231330B089AA00D09B3BA0302
          2526000000000000000000000000000000000000000000000000000000000000
          00006D6A6994BCB486FF15184560080ABABA1513F5FF120CF6FF120CF6FF0F0A
          CDD4000000000000000000000000000000000000000000000000000000000000
          0000000000006E6E75A81F34F3FF1524F9FF171DF6FF1411F8FF120BF8FF110B
          F8FF03022E300000000000000000000000000000000000000000000000000000
          000000000000152EC0C12241FEFF2138F6FF1624F7FF1419EEFF100AE7FF1109
          F2FF040234350000000000000000000000000000000000000000000000000000
          000016256668496EFAFF4566F9FF2946FAFF2B4AF5FF1A2DEBFF1316E3FF0F0A
          DFFA010112140000000000000000000000000000000000000000000000000000
          0000304CBABE7294FAFF5C7EFAFF4F74F8FF6F9DFDFF294DF7FF1B2FEEFF1319
          E5FF0A05889B0000000000000000000000000000000000000000000000000000
          00002841B4B8476CF9FF3C5FF9FF2C4CF7FF6E9CFDFF6B97FDFF2D51F6FF1B2F
          EEFF1217E3FF0505545D01011515010016170000000000000000000000000000
          000002030B0B2037B3B7233DDDE3192CDAE1223BE4E96A98FDFF6D9AFDFF3052
          F8FF1C36F2FF2C3DF8FF2B34F8FF282CF7FF0B0A3F4100000000000000000000
          000000000000000000000102090901020A0A02020D0D1B30AEB26490FBFF608E
          FCFF4C6EFBFF324AFAFF3151F9FF426CFBFF4461E5EA00000000000000000000
          00000000000000000000000000000000000000000000000000002F49AFB287AC
          FDFF1D20F5FF121FF7FF2138F7FF2A4AF8FF3F68F9FF00000000000000000000
          00000000000000000000000000000000000000000000000000002944ACB03B40
          F8FF0500F6FF1A20F6FF1D2FF7FF233DF8FF2339B0B400000000000000000000
          00000000000000000000000000000000000000000000000000001525868A130B
          F7FF1009F6FF1617F6FF1721F7FF1F32EEF60507181900000000000000000000
          0000000000000000000000000000000000000000000000000000000000001A1A
          9A9F0D03F0F9100EEDF60F108B9002030F0F00000000}
        ParentShowHint = False
        ShowHint = True
        SpeedButtonOptions.GroupIndex = 60
        SpeedButtonOptions.AllowAllUp = True
        TabOrder = 5
        OnClick = cxBtnFixPosClick
      end
      object edt_sntest: TcxTextEdit
        Left = 133
        Top = 5
        AutoSize = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Visible = False
        Height = 27
        Width = 138
      end
    end
    object pnl_Grid: TPanel
      Left = 14
      Top = 190
      Width = 521
      Height = 158
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 8
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 521
        Height = 128
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object cxGridOrderSTview: TcxGridBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCellDblClick = cxGridOrderSTviewCellDblClick
          OnCustomDrawCell = cxGridOrderSTviewCustomDrawCell
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.BandMoving = False
          OptionsCustomize.BandSizing = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.ShowEditButtons = gsebAlways
          OptionsView.ColumnAutoWidth = True
          OptionsView.DataRowHeight = 30
          OptionsView.GridLineColor = 4194432
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          OptionsView.HeaderHeight = 30
          OptionsView.BandHeaderHeight = 20
          Preview.AutoHeight = False
          Styles.Background = Frm_Main.cxStyleGridBackColor
          Styles.OnGetContentStyle = cxGridOrderSTviewStylesGetContentStyle
          OnCustomDrawColumnHeader = cxGridOrderSTviewCustomDrawColumnHeader
          Bands = <
            item
              Caption = #44552#50529
              Options.Moving = False
              Options.Sizing = False
              Width = 100
            end
            item
              Caption = #51204#52404
              Width = 142
            end
            item
              Caption = #51217#49688
              Position.BandIndex = 1
              Position.ColIndex = 0
              Width = 38
            end
            item
              Caption = #52712#49548#50984
              Position.BandIndex = 1
              Position.ColIndex = 1
              Width = 49
            end
            item
              Caption = #48176#52264#49884#44036
              Position.BandIndex = 1
              Position.ColIndex = 2
              Width = 56
            end
            item
              Caption = #45230'(09'#49884'~18'#49884')'
              Width = 142
            end
            item
              Caption = #51217#49688
              Position.BandIndex = 5
              Position.ColIndex = 0
              Width = 38
            end
            item
              Caption = #52712#49548#50984
              Position.BandIndex = 5
              Position.ColIndex = 1
              Width = 49
            end
            item
              Caption = #48176#52264#49884#44036
              Position.BandIndex = 5
              Position.ColIndex = 2
              Width = 56
            end
            item
              Caption = #51200#45377'(18~22'#49884')'
              Visible = False
              Width = 142
            end
            item
              Caption = #51217#49688
              Position.BandIndex = 9
              Position.ColIndex = 0
              Visible = False
              Width = 38
            end
            item
              Caption = #52712#49548#50984
              Position.BandIndex = 9
              Position.ColIndex = 1
              Visible = False
              Width = 49
            end
            item
              Caption = #48176#52264#49884#44036
              Position.BandIndex = 9
              Position.ColIndex = 2
              Visible = False
              Width = 56
            end
            item
              Caption = #54588#53356'(22~01'#49884')'
              Visible = False
              Width = 438
            end
            item
              Caption = #50557#54588#53356
              Position.BandIndex = 13
              Position.ColIndex = 0
              Visible = False
              Width = 147
            end
            item
              Caption = #51473#54588#53356
              Position.BandIndex = 13
              Position.ColIndex = 1
              Visible = False
              Width = 147
            end
            item
              Caption = #44053#54588#53356
              Position.BandIndex = 13
              Position.ColIndex = 2
              Visible = False
              Width = 147
            end
            item
              Caption = #49352#48317'(01~09'#49884')'
              Visible = False
              Width = 142
            end
            item
              Caption = #51217#49688
              Position.BandIndex = 17
              Position.ColIndex = 0
              Visible = False
              Width = 38
            end
            item
              Caption = #52712#49548#50984
              Position.BandIndex = 17
              Position.ColIndex = 1
              Visible = False
              Width = 49
            end
            item
              Caption = #48176#52264#49884#44036
              Position.BandIndex = 17
              Position.ColIndex = 2
              Visible = False
              Width = 56
            end>
          object cxGridOrderSTviewColumn1: TcxGridBandedColumn
            Caption = #44552#50529
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Width = 71
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridOrderSTviewColumn2: TcxGridBandedColumn
            Caption = #51217#49688
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Width = 38
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridOrderSTviewColumn3: TcxGridBandedColumn
            Caption = #52712#49548#50984
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Width = 49
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridOrderSTviewColumn4: TcxGridBandedColumn
            Caption = #48176#52264#49884#44036
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Width = 56
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridOrderSTviewColumn5: TcxGridBandedColumn
            Caption = #51217#49688
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Width = 38
            Position.BandIndex = 6
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridOrderSTviewColumn6: TcxGridBandedColumn
            Caption = #52712#49548#50984
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Width = 49
            Position.BandIndex = 7
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridOrderSTviewColumn7: TcxGridBandedColumn
            Caption = #48176#52264#49884#44036
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Width = 56
            Position.BandIndex = 8
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridOrderSTviewColumn8: TcxGridBandedColumn
            Caption = #51217#49688
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Width = 38
            Position.BandIndex = 10
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridOrderSTviewColumn9: TcxGridBandedColumn
            Caption = #52712#49548#50984
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Width = 49
            Position.BandIndex = 11
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridOrderSTviewColumn10: TcxGridBandedColumn
            Caption = #48176#52264#49884#44036
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Width = 56
            Position.BandIndex = 12
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridOrderSTviewColumn11: TcxGridBandedColumn
            Caption = #51217#49688
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Width = 38
            Position.BandIndex = 14
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridOrderSTviewColumn12: TcxGridBandedColumn
            Caption = #52712#49548#50984
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Width = 49
            Position.BandIndex = 14
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridOrderSTviewColumn13: TcxGridBandedColumn
            Caption = #48176#52264#49884#44036
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Width = 56
            Position.BandIndex = 14
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridOrderSTviewColumn14: TcxGridBandedColumn
            Caption = #51217#49688
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Width = 38
            Position.BandIndex = 15
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridOrderSTviewColumn15: TcxGridBandedColumn
            Caption = #52712#49548#50984
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Width = 49
            Position.BandIndex = 15
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridOrderSTviewColumn16: TcxGridBandedColumn
            Caption = #45824#44592
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Width = 56
            Position.BandIndex = 15
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridOrderSTviewColumn17: TcxGridBandedColumn
            Caption = #51217#49688
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Width = 38
            Position.BandIndex = 16
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridOrderSTviewColumn18: TcxGridBandedColumn
            Caption = #52712#49548#50984
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Width = 49
            Position.BandIndex = 16
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridOrderSTviewColumn19: TcxGridBandedColumn
            Caption = #48176#52264#49884#44036
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Width = 56
            Position.BandIndex = 16
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridOrderSTviewColumn20: TcxGridBandedColumn
            Caption = #51217#49688
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Width = 38
            Position.BandIndex = 18
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridOrderSTviewColumn21: TcxGridBandedColumn
            Caption = #52712#49548#50984
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Width = 49
            Position.BandIndex = 19
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridOrderSTviewColumn22: TcxGridBandedColumn
            Caption = #48176#52264#49884#44036
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Width = 56
            Position.BandIndex = 20
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridOrderSTview
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 128
        Width = 521
        Height = 30
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object rb_Auto: TcxRadioButton
          Left = 77
          Top = 7
          Width = 55
          Height = 17
          Caption = #51088#46041
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744448
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          OnClick = rb_AutoClick
          LookAndFeel.SkinName = 'Sharp'
          ParentBackground = False
          Transparent = True
        end
        object rb_DongDong: TcxRadioButton
          Left = 138
          Top = 7
          Width = 66
          Height = 17
          Caption = #46041'->'#46041
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744448
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = rb_DongDongClick
          LookAndFeel.SkinName = 'Sharp'
          Transparent = True
        end
        object rb_DongGu: TcxRadioButton
          Left = 205
          Top = 7
          Width = 66
          Height = 17
          Caption = #46041'->'#44396
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744448
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = rb_DongGuClick
          LookAndFeel.SkinName = 'Sharp'
          Transparent = True
        end
        object rb_GuDong: TcxRadioButton
          Left = 272
          Top = 7
          Width = 66
          Height = 17
          Caption = #44396'->'#46041
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744448
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = rb_GuDongClick
          LookAndFeel.SkinName = 'Sharp'
          Transparent = True
        end
        object rb_GuGu: TcxRadioButton
          Left = 340
          Top = 7
          Width = 66
          Height = 17
          Caption = #44396'->'#44396
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744448
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = rb_GuGuClick
          LookAndFeel.SkinName = 'Sharp'
          Transparent = True
        end
        object rb_GuSi: TcxRadioButton
          Left = 412
          Top = 7
          Width = 66
          Height = 17
          Caption = #49884
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744448
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 5
          OnClick = rb_GuSiClick
          LookAndFeel.SkinName = 'Sharp'
          ParentBackground = False
          Transparent = True
        end
        object cxLabel1: TcxLabel
          Left = 0
          Top = 3
          Hint = 'Color'
          AutoSize = False
          Caption = #44396#44036#48320#44221
          ParentColor = False
          ParentFont = False
          Style.BorderColor = 13353605
          Style.BorderStyle = ebsSingle
          Style.Color = 16635846
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 24
          Width = 67
          AnchorX = 34
          AnchorY = 15
        end
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 190
      Width = 14
      Height = 158
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 9
    end
    object Panel2: TPanel
      Left = 535
      Top = 190
      Width = 14
      Height = 158
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 10
    end
  end
  object grpSetting: TcxGroupBox
    Left = -518
    Top = 63
    Caption = #49444#51221
    Style.LookAndFeel.SkinName = 'Sharp'
    StyleDisabled.LookAndFeel.SkinName = 'Sharp'
    TabOrder = 1
    Visible = False
    Height = 232
    Width = 549
    object Shape7: TShape
      Left = 3
      Top = 17
      Width = 543
      Height = 206
      Align = alClient
      Brush.Color = 13285815
      Pen.Color = 13285815
      ExplicitLeft = 6
      ExplicitWidth = 256
      ExplicitHeight = 139
    end
    object cxLabel6: TcxLabel
      Left = 68
      Top = 18
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.BorderColor = 13353605
      Style.BorderStyle = ebsSingle
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548#52404
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 106
      Width = 478
      AnchorX = 307
      AnchorY = 71
    end
    object cxLabel19: TcxLabel
      Left = 68
      Top = 123
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.BorderColor = 13353605
      Style.BorderStyle = ebsSingle
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548#52404
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 98
      Width = 478
      AnchorX = 307
      AnchorY = 172
    end
    object chk_AllPopUpSmartCharge: TcxCheckBox
      Left = 70
      Top = 102
      Caption = #49828#47560#53944#50836#44552#52285' '#51088#46041#54045#50629
      Style.LookAndFeel.SkinName = 'Sharp'
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      StyleFocused.LookAndFeel.SkinName = 'Sharp'
      StyleHot.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 0
      Transparent = True
      OnClick = chk_AllPopUpSmartChargeClick
    end
    object chk_AutoSmartCharge: TcxCheckBox
      Left = 70
      Top = 50
      Caption = '0'#50896#51060#44144#45208' '#50836#44552#51060' '#45796#47484#44221#50864' '#49828#47560#53944#50836#44552' '#51217#49688#52285#50836#44552' '#51088#46041#51201#50857
      Style.LookAndFeel.SkinName = 'Sharp'
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      StyleFocused.LookAndFeel.SkinName = 'Sharp'
      StyleHot.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 1
      Transparent = True
      OnClick = chk_AutoSmartChargeClick
    end
    object chk_PopUpSmartCharge: TcxCheckBox
      Left = 70
      Top = 76
      Caption = '0'#50896#51060#44144#45208' '#50836#44552#51060' '#45796#47484#44221#50864' '#49828#47560#53944#50836#44552#52285' '#51088#46041#54045#50629
      Style.LookAndFeel.SkinName = 'Sharp'
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      StyleFocused.LookAndFeel.SkinName = 'Sharp'
      StyleHot.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 2
      Transparent = True
      OnClick = chk_PopUpSmartChargeClick
    end
    object chk_RealTimeWeather: TcxCheckBox
      Left = 77
      Top = 183
      Caption = #49892#49884#44036' '#52636#48156#51648' '#45216#50472' '#50672#46041
      Style.LookAndFeel.SkinName = 'Sharp'
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      StyleFocused.LookAndFeel.SkinName = 'Sharp'
      StyleHot.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 3
      Transparent = True
      OnClick = chk_RealTimeWeatherClick
    end
    object chk_RealTimeWorker: TcxCheckBox
      Left = 77
      Top = 148
      Caption = #49892#49884#44036' '#44277#50976#53084', '#45824#44592#44592#49324' '#50672#46041' '
      Style.LookAndFeel.SkinName = 'Sharp'
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      StyleFocused.LookAndFeel.SkinName = 'Sharp'
      StyleHot.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 4
      Transparent = True
      OnClick = chk_RealTimeWorkerClick
    end
    object chkSmartRate: TcxCheckBox
      Left = 70
      Top = 24
      Caption = #49828#47560#53944#50836#44552' '#44053#51228#51201#50857' ('#49828#47560#53944#50836#44552' '#50630#51012#44221#50864' '#54364#51456#50836#44552#51201#50857' OR '#50629#52404#49444#51221#50836#44552#51201#50857')'
      Style.LookAndFeel.SkinName = 'Sharp'
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      StyleFocused.LookAndFeel.SkinName = 'Sharp'
      StyleHot.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 5
      Transparent = True
      OnClick = chkSmartRateClick
    end
    object cxLabel11: TcxLabel
      Left = 3
      Top = 18
      AutoSize = False
      Caption = #44592#48376
      ParentColor = False
      Style.BorderColor = 13353605
      Style.BorderStyle = ebsSingle
      Style.Color = clWhite
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 106
      Width = 68
      AnchorX = 37
      AnchorY = 71
    end
    object cxLabel14: TcxLabel
      Left = 3
      Top = 123
      AutoSize = False
      Caption = #49828#47560#53944#13#10#50836#44552#13#10#49444#51221
      ParentColor = False
      Style.BorderColor = 13353605
      Style.BorderStyle = ebsSingle
      Style.Color = clWhite
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 98
      Width = 68
      AnchorX = 37
      AnchorY = 172
    end
    object cxLabel21: TcxLabel
      Left = 77
      Top = 130
      Caption = '['#54788#51116#54588#53356#50984' '#49444#51221']'#8251' '#54588#53356#46321#44553#51008' '#44552#50836#51068#51060' '#45458#44256', '#54588#53356#49884#44036#51068#49688#47197' '#45458#49845#45768#45796
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Transparent = True
    end
    object cxLabel22: TcxLabel
      Left = 94
      Top = 165
      Caption = '('#8251' '#44277#50976#53084#51060' '#47566#44256', '#45824#44592#44592#49324#44032' '#51201#51012#49688#47197' '#54588#53356#46321#44553#51012' '#45458#51077#45768#45796')'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Transparent = True
    end
    object cxLabel23: TcxLabel
      Left = 94
      Top = 200
      Caption = '('#8251' '#45216#50472#44032' '#45208#49248#49688#47197' '#54588#53356#46321#44553#51012' '#45458#51077#45768#45796')'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Transparent = True
    end
  end
  object TmrChkTag: TTimer
    Tag = 100
    Enabled = False
    Interval = 500
    OnTimer = TmrChkTagTimer
    Left = 280
    Top = 272
  end
  object tmr_gHighlight: TTimer
    Enabled = False
    Interval = 500
    OnTimer = tmr_gHighlightTimer
    Left = 125
    Top = 264
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    Height = 24
    Width = 24
    FormatVersion = 1
    DesignInfo = 17105104
    ImageInfo = <
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFCFFFDFDFCFFFBFBFBFFFCFBFAFFFDFC
          F9FFFDFCF9FFFDFDFBFFF9FBFBFFF7FAFAFFF8F8F8FFFAFAF8FFFBFBF8FFFDFD
          FAFFFCFCFBFFFAFCFDFFFCFDFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFCFFFAF9F7FFFCFAF7FFF4F2
          EEFFF9F9F5FFFBFAF9FFFAFBFBFFF9FAFAFFF9F8F6FFF7F4F0FFFBFAF6FFFEFD
          F9FFFEFEFBFFFEFEFDFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFCFBFBFFFDFCF9FFFAFAF5FF9292
          8CFFCAC9C4FFFCFBF9FFF6F7F5FFF7F8F7FFF9F7F3FF9D9A95FFC3C1BCFFFDFD
          F9FFFCFCF8FFFDFEFCFFFEFEFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFDFDFFFBFAF9FFFCFDFAFFFAF9F5FFADAC
          A7FF8E8D88FFF5F5F1FFC1C2BFFFD7D7D3FFEFEDE6FF6E6C65FFD9D9D3FFFBFC
          F9FFFAFCF9FFFCFDFDFFFCFDFDFFFDFDFDFFFDFDFDFFFEFEFEFFFDFDFDFFFDFD
          FDFFFEFEFEFFFEFEFDFFFEFDFDFFFEFDFDFFFCFBF9FFF9FAF6FFF7F8F3FFE2E1
          DCFF727169FFE7E6DEFFC7C4BCFFDDDCD3FFC8C5BAFF7F7D74FFF7F7F2FFF8FB
          F8FFFAFCFBFFFBFDFDFFFCFDFDFFFDFDFDFFFDFDFDFFFEFEFEFFFEFEFEFFFDFD
          FDFFFCFDFCFFFAFAF8FFFDFDFAFFFDFCF9FFFBFBF7FFE9E9E4FFAFAFA8FFF2F1
          E9FFD9D7CBFFF5F2E6FFF3EFDEFFF5EFDFFFEEE9D8FFDBD7CAFFEFEFE6FFBDBE
          B9FFF5F8F4FFFAFBFAFFF9FAF9FFFCFCFCFFFAFBF9FFFDFDFCFFFDFDFDFFFEFE
          FDFFFEFDFCFFFBFBF8FFF6F6F1FFE9E9E4FFF6F6EFFFF3F3EAFFB6B5ABFFF4F2
          E5FFD8D3C2FF9A907BFF847660FF8C7E66FFB3AA94FFF1ECD9FFD4D2C6FFB7B7
          AFFFF8FAF4FFF5F5F0FFF0EFEDFFFBFCFAFFFBFCFAFFFBFCFAFFFCFDFEFFFCFE
          FDFFFCFCFAFFFAFAF6FFE4E4DEFF75756CFF95948AFFD9D7CBFFFDFCF0FFCBC6
          B5FF766953FF736346FF746142FF746243FF706044FF92866DFFF3EFE0FFF4F3
          EBFFCFCDC5FF8C8982FF9C9B97FFF6F7F4FFF8F9F6FFFBFCFAFFFBFDFEFFFCFD
          FDFFFCFDFBFFFAFAF6FFF9F9F2FFD6D5CDFF949389FF9A998BFFEFEEDFFF756F
          5DFF706148FF766242FF7A6340FF796340FF74623FFF746345FFACA593FFE3E1
          D8FF7A776DFFA09C94FFE1E0DCFFF9FAF6FFF7F8F4FFFDFDFBFFFBFDFDFFFBFD
          FCFFFDFEFBFFFBFBF7FFFBFBF5FFFCFBF5FFFBFAF2FFF0F0E5FFC0BFB1FF9892
          80FF77694FFF786343FF7C633FFF7B623EFF7B653FFF776241FF807562FFEDEB
          E2FFE6E4DAFFFCFAF3FFFAFAF6FFF9FAF6FFFBFCF8FFFDFEFCFFFBFDFDFFFCFE
          FDFFFCFDFBFFFAFAF7FFFBFBF6FFF1F0EBFFB2B0AAFFE6E6DBFFA9A69AFFDED6
          C5FF796950FF786241FF7F6540FF7E633EFF7E633CFF7A623FFF746752FFE3E0
          D5FFDFDED4FFDCDCD4FFFBFCF9FFFCFCF9FFFCFDFAFFFDFEFCFFFBFDFDFFFCFE
          FDFFFBFCFAFFFAFBF9FFFCFBF7FFF5F4F0FFCDCAC5FFEEEDE3FFA8A499FFE2DA
          CAFF75644EFF775F41FF7D613FFF7F6340FF7F623EFF7B6241FF746752FFE1DD
          D4FFC5C4BAFFC1C1B9FFFAFCF9FFFCFDF9FFFBFCF9FFFDFDFCFFFCFEFEFFFCFD
          FDFFFCFDFBFFFAFAF8FFFAFAF6FFFCFAF6FFF6F3EEFFEEEBE3FFC2BDB4FFD1CA
          BDFF8B7C68FF756046FF7A6144FF7A6042FF7D6343FF786043FF7F7361FFEDE9
          E1FFF1F0E7FFF9F9F0FFF6F8F4FFFBFCF8FFFCFCFAFFFEFEFDFFFDFFFFFFFCFE
          FDFFFCFCFBFFFBFBF8FFF6F6F2FFCAC8C3FF87847FFF9B9891FFECE8E1FFA39D
          93FFD2C9B8FF80715BFF73624AFF736148FF766046FF725F46FFACA395FFDEDB
          D5FF7F7C73FFB6B5ACFFE5E6E2FFF7F8F5FFFAFBF9FFFEFEFDFFFCFEFEFFFCFE
          FDFFFBFCFAFFFBFBF7FFE1E1DCFF7A7872FFA5A39BFFE0DED9FFFAF9F4FFCAC7
          BFFFABA698FFDDD6C4FFD6CDBAFFB0A692FF6F5E48FF90826DFFF2ECE1FFF2F1
          ECFFB7B5ADFF7C7B72FF999994FFF9FAF7FFFCFDFBFFFDFEFCFFFCFEFEFFFCFE
          FEFFFAFCFAFFF8F9F6FFF8F8F4FFEBEAE5FFF8F8F2FFECEDE5FFA7A69EFFF6F4
          ECFFD0CFC5FF9F9C8FFF9A9788FF8D8879FFABA593FFEFEBDCFFD2CFC5FFD8D5
          D1FFFBF9F8FFEFEDEAFFE8E8E5FFF8F9F7FFF9FAF8FFFEFEFDFFFCFEFEFFFCFE
          FEFFFCFEFDFFFCFCFAFFFCFCF9FFFCFCF8FFFBFBF6FFE0E0DAFFC8C6BEFFF7F6
          EDFFD4D2C8FFF2F2E8FFEDECE2FFF2F1E5FFE6E4D6FFE3E2D4FFE1E0D5FFBAB7
          B2FFFCFAFAFFFCFAF9FFFAF9F8FFFAFBF9FFFDFEFCFFFEFEFDFFFDFDFDFFFEFE
          FEFFFDFDFDFFFCFDFCFFFCFDFAFFFCFDFBFFFAFAF7FFF9F9F5FFFDF9F2FFD7D5
          CBFF7A796DFFEFF0E6FFB3B3ABFFF1F0E7FFB5B3A6FF929182FFFDFCF0FFFAF8
          F2FFFDFBF9FFFCFAFAFFFCFCFBFFFDFDFCFFFDFEFCFFFEFEFDFFFEFEFEFFFEFE
          FEFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFFAFCFBFFFCFAF7FFFDF9F3FF9E9B
          90FFA2A397FFFAFDF3FFA9ABA4FFF0F0EAFFE0DFD5FF6D6D5FFFEBEBDEFFFEFE
          F6FFFCFBF9FFFEFBFDFFFCFBFCFFFDFDFCFFFDFEFCFFFEFEFDFFFFFEFEFFFFFF
          FFFFFEFEFEFFFEFEFEFFFDFDFEFFFDFDFEFFF8FAFAFFFBF9F7FFFCF9F4FF8987
          7DFFD3D4C9FFFAFEF5FFF4F6F2FFFBFBF9FFFBF9F3FF8B8A81FFCBCCC2FFFEFE
          F6FFFDFDFBFFFCFBFDFFFDFCFEFFFEFEFDFFFEFFFEFFFFFFFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFFFFFCFEFFFFFBFDFDFFFCFCFBFFFDFBF8FFF4F2
          EEFFFAFBF4FFFAFEF8FFF7FBF8FFFCFBFBFFF9F9F5FFF1F1EAFFFBFBF3FFFDFE
          F8FFFDFDFDFFFDFCFEFFFEFDFEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFFFEFEFEFFFDFEFEFFFCFCFCFFFAFBFBFFFCFDFBFFFDFB
          F9FFFCFCF9FFFBFCFAFFFAFBF9FFFDFCFCFFFBFBFAFFFAFBF8FFFBFCF7FFFDFD
          FCFFFEFDFEFFFEFDFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFBFCFCFFFAFDFCFFFCFCFCFFFDFC
          FBFFFCFCFCFFFCFCFCFFFDFCFBFFFEFDFCFFFCFBFCFFFBFCFAFFFCFDFCFFFEFD
          FEFFFEFDFEFFFEFEFEFFFEFFFDFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FDFEFEFFFDFE
          FEFFFEFEFDFFF7F5EEFFBAB6ACFFB5B0A4FFFAF8EFFFFBF8F1FFD3CCC3FFA9A2
          97FFE9E7DDFFFBFBF1FFE5E5DAFFA19F93FFD5D4C9FFFBFAF5FFFAFAF9FFFEFE
          FEFFFDFFFEFFFEFEFEFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFEFEFFFAFE
          FDFFFCFEFDFFE6E1DEFF686154FF655E4BFFDAD3C6FFF7F1EAFF83776BFF6C60
          51FFB2ACA0FFFCFBF1FFA09B8FFF696051FF8B8579FFF9F6F0FFFCFCFAFFFAFE
          FDFFFAFFFCFFFAFFFEFFFBFFFEFFFEFFFFFFFFFFFFFFFFFFFFFFFAFDFEFFFBFF
          FBFFFCFEFDFFEAE6E6FF6A6454FF6C664EFFE7E3D5FFFCF8F2FF8D8174FF6C5D
          4DFFC0B9ADFFFDFCF4FFB1AA9EFF6C5F4FFF9A9086FFFBF8F2FFF8FAF7FFF8FE
          FCFFF8FFFBFFF9FFFDFFFBFEFEFFFEFFFFFFFFFFFFFFFFFFFFFFFBFDFDFFFAFE
          F9FFFCFDFCFFFAF6F8FF999688FF8E8A74FFFBF9EFFFFBFAF7FFC2BBB0FF776C
          5DFFEEEBE1FFFBFBF4FFE6E2D6FF706657FFCEC8BFFFFBF9F5FFFBFDFBFFF7FD
          FBFFF6FDFAFFF9FDFCFFFCFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFCFFFDFE
          F8FFFBFCFAFFFBF9FAFFD7D5CCFFD8D7C9FFFCFAF4FFFBFCF9FFF5F2EAFFBEB9
          AEFFFBFCF2FFFBFDF5FFF8F7EDFFBBB7ABFFF5F4EDFFFBFAF7FFF9FBF9FFF7FB
          F9FFFAFCFAFFFBFBFBFFFEFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFDFBF9FFFDFD
          F7FFFCFCF7FFFCFAF4FFF8F5EBFFFCF9EEFFFBF8F3FFF8F7F2FFF1EFEAFFEEED
          E6FFF9F9EFFFFBFBF1FFF3F2E9FFEFEEE7FFF8F9F0FFFDFDF8FFFAFBF7FFF9F9
          F6FFDADAD7FFC3C2C0FFFCFBFBFFFBFBFBFFFDFDFDFFFCFCFCFFFDFBF7FFFBFA
          F5FFECEBE4FFABA79BFF968F81FFB3ABA1FFD7D0C8FF99958CFF7B7873FF7F7D
          78FFA29F94FFA4A092FF817E74FF82817AFFAFB0A5FFF2F2EAFFFCFCF5FFFCFC
          F5FF999991FFB7B8B3FFFAFAF9FFFAFAFAFFFDFDFDFFFDFDFDFFFAFAF6FFF2F0
          E9FF878378FF8D887CFFB5AFA3FF877E74FF736A5EFFA09C90FFC9C7BEFFC5C3
          BBFF918D81FF938E81FFC7C5BBFFBCBBB5FF7C7B72FF98988CFFF7F6ECFFF4F3
          EBFF7B7C73FFE8EAE1FFF8F9F6FFF8F8F7FFFAFBF9FFFDFDFCFFFBFCF7FFCCCA
          C0FF827C71FFF4F1E8FFFEFBF4FFF3F0E8FFDBD7CEFFF9F9EFFFFBFAF2FFFBFA
          F2FFFBF9EFFFFCF9F0FFFAF9F3FFF9FAF6FFEAE9E4FF777669FFCECCC1FFF7F6
          EDFFD8D7CDFFF0EEE6FFB9B7B4FFF8F8F7FFF8F8F5FFF9FAF8FFFCFBF4FFB4B1
          A7FFA5A095FFFCFBF4FFFDFCF7FFFCFBF7FFFCFCF9FFFCFDF7FFFBFDF8FFFBFC
          F8FFFDFCF7FFFDFCF7FFF9FBF8FFF7FBFAFFFAF9F5FFB1ACA1FFA09D92FFF1EF
          E5FFBFB9ADFFE9E3D8FFD3D1CDFFF1F2F0FFD3D4D0FFEBEBE8FFFCFAF5FFC0BD
          B5FF8A857CFFFBF9F0FFFBFAF4FFFBFBF7FFFBFCF8FFFAFBF7FFFAFCFAFFFBFD
          FCFFFCFDF9FFFBFBF7FFFAFBFBFFF7FBFAFFF8F7F1FFC5C0B4FF949183FFEDEB
          DCFF796C5BFFC4B9ABFFEAE9E1FF8C8C87FF7D7D77FFD9DAD4FFFCFAF7FFEDEB
          E6FF7B766EFFAAA499FFD2CEC3FFA8A59CFFE9E7E0FFFCFDF8FFFCFDFAFFF8F9
          F7FFF1F1ECFFFBFAF5FFF9F9F5FFF9FAF8FFFAFAF2FFACA697FFA9A494FFE2DD
          C9FF786750FF867864FFE3E0D4FFBFBFB8FFECEDE4FFF9FAF4FFFAFAF9FFFCFB
          F8FFDCD9D2FF8A8377FF6C6455FF948E80FFEFEDE1FFFDFDF7FFFDFCF8FFDFDF
          D9FF8E8C84FFE9E7DDFFFCFBF2FFFBFAF2FFDBD9CDFF7B7464FFD9D5C2FFC0B8
          9FFF736143FF76674FFFDAD7C9FFE1E0D9FFF0F0E8FFFCFCF6FFFBFBFBFFFBFB
          FAFFFDFBF7FFE8E3D8FF7A7262FFE9E5D7FFFAFAF0FFFDFCF6FFFCFCF8FFF3F2
          EBFF929085FF827D70FFABA79BFFA5A397FF747265FFAEAA9AFFEFE8D7FF897B
          62FF766444FF72644BFFDBD7CAFFB4B2ACFFD7D5CEFFFBFBF5FFFCFDFDFFFBFC
          FCFFFEFDF9FFF8F5EBFF8E897CFFB5B3A8FFFCFCF6FFFCFBF7FFFBFBF7FFFAFA
          F3FFF3F2E6FFB8B4A5FF686354FF8F8A7DFFCBC8BDFFEFEDDFFFA09585FF7261
          4AFF746244FF7D7058FFE7E1D5FFEAE8E2FFFCFBF3FFFCFBF5FFFDFDFDFFFEFE
          FEFFFEFEFBFFFDFCF7FFD0CEC7FF6E6C64FFCBCAC4FFF9F8F5FFFBFAF5FFFBFA
          F3FFF2EFE5FFA7A295FF857E71FFEDE9DDFFF0EDE3FFADA59CFF7A6E61FF7264
          4EFF716348FFA99F88FFE0DBCDFF7D7A71FFA9A79FFFEEEDE7FFFEFEFEFFFEFF
          FEFFFEFFFDFFF9FAF7FFF8F8F4FFBCBCB6FF706E69FF8D8A83FFB4B1A9FFADAB
          A1FF7C7A6FFF827F74FFE2DFD4FFF1F0E6FFAAA79CFFBCB7AFFFC3BBB2FF7E73
          62FF978C77FFEFEADBFFF1EFE5FFDCD9D3FFA09D98FFDFDFDBFFFEFEFEFFFEFE
          FEFFFEFEFDFFFAF9F8FFFAF9F7FFFAF9F6FFE0DEDAFFAEAAA0FF928E84FF9593
          88FFBCBBB1FFECEBE2FFFAFBF3FFF8F8F0FFEBEADFFFCDCBC3FFC4BEB7FFD7D0
          C5FFF4F0E4FFDAD5CFFFAFACA9FFF9F7F5FFFAF9F7FFFAFAF8FFFEFEFEFFFEFE
          FEFFFEFEFEFFFAFAFAFFFBFAFAFFFBFAFAFFFCFBF9FFFCFAF3FFF9F8F2FFF9F9
          F1FFFCFBF4FFFBFCF6FFFAFBF6FFE0E2DCFF929287FFF4F2EBFFD6D3CDFFE9E5
          DFFF908B83FFF5F3EFFFEDECECFFFBFBFAFFFAFAFAFFFAFAFAFFFEFEFEFFFEFE
          FEFFFEFEFEFFFCFCFCFFFCFCFCFFFDFCFCFFFBFBFBFFFCFBFBFFFBFBFAFFFCFC
          FBFFF9FAF7FFFDFCF9FFFCFCF8FFB3B2ADFF9E9B96FFF6F4EFFFABA8A3FFFAF6
          F0FF817E76FFD7D5D1FFFAFBF9FFFAFDFBFFFAFCFBFFFBFCFAFFFFFFFFFFFFFF
          FFFFFEFEFEFFFDFDFDFFFEFEFEFFFDFDFDFFFCFBFCFFFAFCFEFFFAFCFEFFFBFB
          FDFFFDFCFDFFFCFCFBFFFDFCF9FFA3A19DFFD4D1CDFFFBFAF6FFF8F7F2FFFCF9
          F4FFC1BEB9FFB6B5AFFFFBFCF8FFFBFEFAFFFCFDFBFFFDFEFCFFFFFEFFFFFEFE
          FEFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFDFDFDFFFAFCFDFFFAFCFDFFFCFC
          FEFFFDFCFEFFFCFCFCFFFCFDFBFFF8F8F6FFFCFBF9FFF8FAF6FFF9FBF7FFFAF9
          F6FFF8F6F5FFF6F6F2FFFBFCF9FFFEFFFDFFFEFFFDFFFEFFFDFFFEFDFFFFFFFE
          FFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFEFCFFFEFEFDFFFEFEFEFFFDFD
          FEFFFBFCFDFFFAFCFCFFFBFDFDFFFBFCFBFFFBFCF9FFFAFEF9FFF8FCFAFFFAFD
          FCFFFAFAFBFFFBFBFBFFFDFDFDFFFFFEFDFFFEFFFDFFFEFEFEFF}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FDFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFDFEFEFFFDFDFCFFFBFCFEFFFCFC
          FEFFFBFAFAFFFDFBF7FFFDFDFAFFFDFBFBFFFDFDFBFFFBFCFBFFFBFBFCFFFEFD
          FEFFFEFDFDFFFEFDFDFFFEFEFEFFFFFFFEFFFEFFFEFFFDFFFFFFFEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFEFEFFFAFDFCFFF9FCF9FFF9FBFCFFFCFB
          FDFFFBF8F8FFFCFBF5FFFAF8EEFFFAF7EFFFFAF8F2FFFBFAF7FFFBFAFAFFFBFB
          FBFFFAFAFBFFF8FAFDFFFBFDFEFFFEFEFDFFFEFEFDFFFCFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFFFDFEFEFFFCFEFEFFF9FCFBFFF5FBF7FFFBFCFBFFF9F6
          F5FFE3DEDAFFA8A297FF847C6CFF7F7666FF9C9488FFDAD4CBFFFBF9F5FFFBFA
          F9FFF8FAFBFFF8FBFEFFFBFDFDFFFEFEFDFFFEFEFDFFFCFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFFFCFDFDFFFDFFFFFFF7FBFBFFF8FBF9FFFBFAF4FFD3CD
          C0FF726A59FF6A6150FF726857FF756858FF6D6253FF706556FFBDB4A8FFF9F6
          F0FFFBFBFAFFF7FAF9FFFBFDFDFFFEFEFDFFFEFEFDFFFCFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFFFCFEFEFFFBFEFEFFF9FDFDFFFBFBF8FFEEE9DEFF776E
          59FF716951FFB5AF9CFFEDE8DAFFF0E8DEFFC5BFB0FF7A6D5BFF756755FFD6CF
          C3FFFBFBF7FFF9FCFAFFFBFDFBFFFEFEFDFFFEFEFEFFFCFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFCFEFEFFFCFEFEFFFAFEFEFFF9FDFCFFFCFAF4FFB0A799FF6F63
          4EFFBFB9A5FFFBFAEDFFFAF9F4FFFBFAF7FFFBF9F2FFDFD5C5FF72634FFF968C
          7CFFF7F5EEFFFAFCFBFFFAFCFBFFFDFEFDFFFEFEFEFFFCFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFCFEFEFFFCFEFEFFFAFEFDFFF9FEFCFFFBF8EFFF887F6FFF7E72
          60FFF7F4E9FFF8FAF6FFF5FBFAFFF4F9FBFFF9FBFAFFFCF9EDFF9E8F7BFF7469
          59FFF0EEE7FFF9FDFCFFFAFEFEFFFDFEFDFFFDFEFEFFFCFEFEFFFFFEFFFFFFFF
          FEFFFFFFFEFFFEFEFCFFFDFEFDFFFAFEFDFFF8FDFCFFF3F1E8FF827363FF9887
          7BFFFDFBF7FFF8FCFBFFF5FBFAFFF7FCFBFFFAFBF9FFFDFCF3FFB6AD9AFF6E61
          4CFFE7E4D9FFF8FCFAFFF9FEFDFFFBFDFDFFFCFEFEFFFCFEFEFFFFFEFFFFFFFF
          FEFFFFFFFDFFFDFEFAFFFCFEFCFFFAFFFDFFF9FDFDFFF4F1E9FF847464FF9787
          79FFFCFCF7FFF9FDFAFFF9FCFAFFFBFCFBFFFDFBF7FFFDFCF4FFB2A898FF6E60
          4BFFE9E4D8FFF9FCFAFFF9FEFDFFFCFEFEFFFCFEFEFFFCFEFEFFFFFEFFFFFFFF
          FEFFFFFFFDFFFDFEFBFFFBFEFCFFF9FEFDFFF9FEFDFFFBFAF3FF908574FF7D6F
          60FFF8F5EDFFFCFDF9FFFBFBFAFFFDFBFBFFFCFBF7FFFAF8F1FF968C7DFF796C
          5BFFF1EDE4FFF9FBFBFFFAFDFDFFFCFEFEFFFDFFFFFFFDFFFFFFFFFFFFFFFFFF
          FEFFFFFFFEFFFDFFFDFFFBFFFEFFF8FEFDFFF8FDFCFFFAFBF3FFADA596FF6E64
          51FFD6D2C4FFFDFDF5FFFDFCFBFFFCFAFBFFFBFBF6FFF2EFE4FF746A5AFF9287
          79FFFAF8F1FFFAFAFAFFFBFDFEFFFCFEFEFFFCFEFEFFFCFEFEFFFEFEFEFFFEFE
          FEFFFEFFFEFFFCFEFCFFFBFFFEFFF9FEFDFFF9FDFBFFFDFAF4FFDED8CCFF6D62
          4FFFA39E8BFFFCFCF1FFF9FAF7FFFCFDFAFFFDFCF4FFC7C2B2FF6A614FFFBCB5
          A7FFFEFDF6FFFDFDFBFFFBFDFDFFFCFEFEFFFCFEFEFFFCFEFEFFFFFFFFFFFFFF
          FFFFFEFFFEFFFCFEFDFFFBFEFEFFFAFEFDFFF8FBF9FFFDFAF6FFFBF7F0FF867C
          6CFF786F5BFFE7E4D8FFF9FBF5FFFAFBF5FFFAF7ECFF8A826EFF776F5CFFE8E6
          DAFFFEFDF6FFFCFCF9FFFBFDFDFFFCFEFEFFFDFFFFFFFDFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFFFEFEFEFFFDFDFDFFFBFCFBFFFAFAF7FFFCFBF8FFC2BB
          AFFF6C5F4CFFB5AD9FFFFAFAF0FFFCFCF3FFD1CCC0FF6F634FFFA69E8CFFFCFB
          F2FFFDFDF8FFFDFDFBFFFCFDFDFFFCFEFFFFFDFEFEFFFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFCFDFCFFFAFCFBFFF4F8F6FFF3F0
          E7FF837563FF7B7060FFF0EDE1FFF9F6EAFF91897EFF70634FFFE6E0D2FFFDFD
          F8FFFCFCFAFFFDFDFCFFFCFDFEFFFCFDFFFFFDFDFEFFFEFDFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFCFDFDFFF8FCFCFFF9FDFDFFFDFB
          F7FFBDB6AAFF6B5F50FFB9AD9AFFD6CCB7FF726353FF9E9488FFFDFAF5FFFDFE
          FDFFFEFEFEFFFEFEFEFFFEFEFFFFFDFEFEFFFEFDFEFFFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFDFDFDFFFAFCFCFFFBFCFCFFFEFC
          FAFFF1ECE5FF807667FF7D6E59FF917F67FF746554FFE2DCD3FFFEFCFAFFFCFE
          FEFFFEFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFEFEFFFEFE
          FDFFFDFBF6FFB9B3A5FF72644FFF6F6048FFA39788FFFBF8F1FFFDFCFBFFFCFE
          FEFFFEFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFDFFFDFEFEFFFCFE
          FEFFFAFAF8FFF1EEE4FF7A715EFF746952FFDFDACDFFFBFBF5FFFBFCFCFFFCFE
          FEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFDFFFDFEFDFFFBFE
          FEFFF9FBFAFFFCFCF4FFB0AB9AFF938E7BFFF9F7EDFFFBFBF8FFFAFCFCFFFDFE
          FEFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFDFFFEFFFEFFFBFD
          FDFFF9FBFBFFF9FAF5FFE1DFD4FFC7C5BAFFFCFCF5FFFAFCFAFFFAFCFDFFFEFE
          FFFFFFFEFFFFFEFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFEFEFFFEFEFEFFFDFD
          FDFFFCFCFBFFFBFCF8FFF8F9F3FFF3F4EEFFFCFCF8FFFBFCFCFFFCFCFEFFFEFD
          FEFFFFFFFFFFFEFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFCFEFEFFFEFEFEFFFEFE
          FEFFFCFCFBFFF9FBF9FFF9FCFAFFF9FCF9FFFCFDFAFFFBFDFDFFFCFCFEFFFEFE
          FFFFFFFFFEFFFEFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FEFEFEFFFEFE
          FEFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFDFDFFFDFDFEFFFBFD
          FDFFFBFCFCFFFCFCFBFFFCFCFBFFFCFBFCFFF9FBFCFFFCFCFCFFFBFBFBFFFCFD
          FEFFFCFDFEFFFDFCFDFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFEFFFEFEFEFFFEFE
          FEFFFDFEFEFFFCFEFEFFFCFDFDFFFCFEFEFFFCFEFDFFFBFAFBFFFBFBFDFFFAFB
          FCFFF9F9F8FFF9F8F4FFFCFCF6FFF7F6F0FFFBFBF8FFF8F9F7FFF7F9F9FFFAFD
          FEFFF8FBFCFFFBFCFDFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFEFF
          FFFFFDFFFFFFFCFEFEFFFCFEFDFFFCFEFDFFFBFEFCFFFBFBFDFFFCFBFDFFFDFD
          FBFFEFEDE8FFEAE8E0FFDEDACEFFABA595FFF2EEE2FFE3E2DBFFF4F6F3FFFAFD
          FDFFF8FCFBFFFBFDFDFFFCFDFDFFFDFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFEFE
          FEFFFDFEFEFFFCFEFEFFFBFDFCFFFCFEFBFFFBFCFAFFF8FAF8FFFBFAF6FFFCFA
          F3FF9A968CFF797163FFA79A87FF776750FFAFA38EFF6A6455FFC8C7BEFFF9FA
          F4FFF9FAF5FFF7F9F6FFFBFDFDFFFBFEFDFFFCFEFDFFFDFEFEFFFFFFFEFFFEFE
          FEFFFDFEFEFFFBFDFDFFFCFEFCFFFDFDFAFFFAFBF6FFEFF0E7FFAFADA2FFF1EE
          E2FFCFC9BCFF736A5BFF71614CFF766449FF72634AFF827966FFEEEBDFFFDBD8
          CCFFBAB7ACFFFBFCF5FFFBFDF9FFFBFEFCFFFCFEFEFFFCFEFEFFFFFFFEFFFEFE
          FEFFFCFDFDFFF9FAFAFFFCFCFBFFFEFDFAFFF9F7F0FFD4D2C5FF696353FFCFCA
          BAFFFCFBEEFFC6C0B3FF716552FF6F6149FF857964FFE6E2D3FFFEFCEFFF9D97
          86FF78715EFFFCF9ECFFFBFCF6FFFAFDFBFFFBFDFDFFFBFDFDFFFFFFFEFFFEFE
          FFFFFEFEFEFFFCFCFCFFFDFBFAFFFCFAF5FFCBC6BEFFB7B0A2FF726654FFB5AC
          9BFFFDFCF2FFFAFAF1FFA9A595FF6D6652FFD6D2C5FFFDFCF3FFF9F6EAFF8A80
          6DFF897E67FFBEB7A5FFE3E2D8FFFAFDFAFFF9FCFAFFFAFDFCFFFEFEFEFFFEFD
          FFFFFCFEFEFFF9FBFAFFFBFAF9FFFCF8F3FF998E82FF6E5D4DFF715F4AFF988B
          77FFFCFAEFFFFDFBF4FFB8B4A7FF756D5BFFE6E2D7FFF9FAEFFFEBE6D9FF7E6B
          56FF756247FF6E604DFFC6BEB6FFFCFCF8FFFCFCFAFFF9FBF9FFFEFEFDFFFEFD
          FFFFFDFEFEFFF9FDF8FFFAF9F8FFF7F3EEFFCABFB0FF7A6651FF725F45FF7969
          50FFC5BCAAFFF5EEE1FFADA591FF71654FFFD7CEBEFFEDEAD6FFA59985FF7860
          48FF776143FF8C7A64FFE1D7CEFFFAF8F3FFFDFBF9FFFCFCFBFFFCFFFCFFFFFE
          FFFFFFFEFEFFF9FAF6FFFAF8F7FFB7B2AFFF696152FF70634CFF857960FF8175
          5DFF71634DFF8C7E6AFF746750FF7E715CFF7E6F5AFF84765DFF73654EFF8E7C
          65FF827054FF72624AFF72675AFFE4E1DFFFFCFAF9FFFBFBFBFFFCFEFCFFFFFE
          FFFFFFFEFEFFFCFBF9FFFBF9FAFFCDCAC8FFA29E92FFD0CCBAFFF2F0E0FFE8E5
          D6FF9F9583FF6E614DFFC5BCABFFEFE6D9FFA09483FF73644EFFBFB6A3FFF4F0
          E3FFECE3D4FFC6BEADFF9B978DFFEBE9E8FFFAFAF9FFFBFBFBFFFCFEFDFFFFFD
          FFFFFFFDFFFFFDFBFBFFFBF8FBFFFCF9F9FFFEFCF3FFFBFBEEFFFCFBF2FFFDFC
          F4FFDAD3C6FF726556FFF4EDE1FFFEF9F2FFCAC0B4FF776C5AFFFDFAEEFFFDFC
          F6FFFEFCF3FFFCFBF0FFFCFCF5FFFAF8F7FFFBFBFAFFFBFBFBFFFDFEFEFFFFFD
          FFFFFEFCFEFFFAFAFAFFFAF8FAFFCECBCAFF9F9A8FFFD2CABAFFF3EEE2FFE8E3
          D9FF9A9082FF6A5D4DFFC3BAABFFEBE2D7FF9D9283FF6C6150FFB7B1A4FFF4F0
          E6FFE8E3D6FFBFB8AAFF9C988FFFEAE9E7FFFBFCFAFFFAFAFAFFFEFEFDFFFEFD
          FFFFFEFDFDFFF9FCF8FFF9F9F8FFB9B6B1FF6C6454FF74634BFF887561FF8271
          61FF6F6252FF8A7E6DFF746755FF7F705DFF7D6E5CFF827966FF6C6051FF8876
          65FF7F6D56FF6F614BFF736C5FFFE2E2DDFFF9FAF6FFFAFCFAFFFEFEFDFFFEFE
          FEFFFDFEFBFFF7FCF6FFF9FBF6FFF6F5ECFFCAC0ACFF7F694EFF775F47FF7A66
          54FFC9BFB0FFF5F1E3FFAEA492FF756551FFD9CDBBFFEEEAD9FFA99D8FFF765E
          4BFF7A6447FF8B7B61FFE2D9CBFFF8F9F2FFFBFDF8FFF9FBFAFFFEFEFEFFFEFE
          FEFFFEFEFCFFFAFBFBFFFAF8FAFFFCFBF5FF958F7DFF726347FF716147FF988D
          78FFF9F6EBFFF9F7F0FFBAB5A9FF736755FFE6E2D1FFFCFBEFFFE8E5D9FF7A6C
          57FF746348FF70624CFFC2BBB0FFFBFCF9FFF9FAF8FFFDFDFDFFFDFEFEFFFEFE
          FDFFFEFEFDFFFAFAFDFFFBFAFDFFFBF9F7FFD1CCBEFFBCB29DFF756A54FFB4AD
          9CFFFCFBF0FFFBF9F0FFABA493FF72664FFFD6D1BFFFFBFAEEFFF6F5EBFF867E
          6CFF8A7D67FFC0B7A6FFE9E5DDFFFAFBF9FFFCFCFCFFFBFBFCFFFDFFFEFFFFFF
          FEFFFEFFFEFFFBFCFEFFFAFBFEFFFCFBFAFFFCFBF3FFD7D2C8FF645D50FFD1CD
          C0FFFAF8EEFFC5C1B2FF72664DFF746445FF847860FFE5E1D3FFF8F8EEFF9B96
          8AFF746C5DFFFBF9EEFFFDFCF6FFFCFCFBFFFDFDFDFFFDFCFEFFFDFFFEFFFEFF
          FDFFFDFEFDFFF9FCFDFFF8FBFDFFFBFDFCFFFBFCF6FFEDECE9FFB6B3ADFFF5F1
          E8FFCCC7BCFF706855FF716245FF796545FF706046FF807868FFEAE8E1FFDDDA
          D3FFBFBCB5FFF8F6F2FFFCFCFAFFFDFDFCFFFDFDFDFFFEFDFEFFFDFFFEFFFEFF
          FDFFFEFEFDFFFAFEFEFFFAFEFEFFFBFEFEFFFCFDFCFFF8FBFAFFFBFCF9FFFAFA
          F5FF9B978EFF797162FFAFA28CFF78674CFFB7A892FF6E6658FFC8C5C0FFFDFC
          F8FFFDFCF8FFFDFDFBFFFCFEFEFFFDFEFEFFFBFDFDFFFDFDFEFFFDFFFEFFFFFF
          FEFFFFFFFEFFFBFFFFFFFAFEFEFFFBFFFFFFFBFDFDFFF7FBFAFFF9FDFBFFFCFD
          FCFFEFEEEAFFECE9E0FFE0D9CCFFB4A899FFF6F1E3FFE7E2DAFFF6F5F2FFFDFD
          FCFFFDFCFCFFFDFEFEFFFDFFFFFFFDFFFFFFFCFEFEFFFCFEFEFFFDFEFFFFFFFE
          FFFFFFFEFFFFFDFFFEFFFBFFFEFFFBFFFEFFFDFEFEFFFCFEFDFFFBFEFEFFF9FD
          FDFFF9FBFAFFF8F7F4FFFDFCF9FFFCF9F5FFFDFBF8FFFBFBF9FFFBFBFBFFFEFE
          FDFFFDFDFDFFFDFEFEFFFCFEFEFFFDFFFFFFFCFEFEFFFCFEFEFFFDFEFFFFFFFE
          FFFFFFFEFFFFFDFFFEFFFBFFFEFFFCFFFEFFFEFEFEFFFEFDFEFFFBFDFEFFF9FD
          FEFFF7FBFCFFFAFDFDFFFAFDFCFFF8FCFCFFF9FBFDFFF7F9FAFFFBFBFBFFFEFE
          FEFFFEFEFEFFFEFEFEFFFCFEFEFFFBFFFFFFFCFFFFFFFDFFFFFF}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FEFEFFFFFEFF
          FEFFFFFFFEFFFCFDFEFFFBFCFBFFFDFCFBFFFCFBF5FFE7E5DFFFB9B4AAFFFBF9
          F3FFF8FAF7FFFBFBF6FFDAD7CFFFC3C0BAFFFBF9F3FFFAF9F7FFFBFAF7FFC7C3
          BDFFDBD8CFFFFBFBF6FFF9FCFAFFFAFCFCFFFDFEFEFFFEFEFEFFFBFFFFFFFBFF
          FEFFFDFFFEFFFCFEFDFFFDFDFBFFFDFBF5FFC4BFB5FFAFA89DFF9A9081FFADA5
          9AFFE3DFD7FFB0AA9DFFB4A99AFF9A9284FFAAA296FFF1EFE5FFA6A198FF9E96
          89FFAFA797FFABA79BFFFAFAF4FFF8FBFAFFFDFEFEFFFEFEFEFFFAFFFFFFFCFF
          FEFFFDFFFEFFFDFFFEFFFBFBF9FFFDFCF5FFCAC4BAFF897F72FF988C7BFF9F94
          87FFEDE7DEFFC3B9A9FF8D7F6BFF978B79FFA79D8EFFF5EFE4FFA7A093FF948A
          79FF89806CFFB8B2A1FFFBFAF2FFF9FBFAFFFDFEFEFFFEFEFEFFFEFFFEFFFEFF
          FEFFFFFFFEFFFCFDFEFFFDFEFDFFF6F6F3FFAEAAA4FF81796FFF908576FF837B
          70FFDED9D1FFA2998BFF8C7E6BFF8D8170FF888174FFEEECE2FF878276FF8880
          6FFF867F6CFF9C9889FFF8F8EFFFF8FAF9FFFDFDFDFFFDFDFDFFFFFEFEFFFFFE
          FDFFFFFEFDFFFCFDFEFFF9FCFDFFF8FAF9FFDDDAD8FFC4BFB9FF958E82FFD3CF
          C7FFF2F0ECFFD7D3CAFFC1B6A7FFA1988BFFD0CDC5FFF2F2EBFFD1CFC7FFA19D
          8FFFBBB5A6FFD5D3C9FFFAFBF7FFFAFCFCFFFDFEFEFFFEFEFEFFFEFEFEFFFEFD
          FCFFFEFEFDFFFBFEFEFFF9FCFDFFF6F7F6FFFBFAF6FFF1F0E9FFE2DFD5FFF9F9
          F1FFFAFBF9FFFDFCF4FFF4EFE1FFE6E2D6FFFBFAF4FFF9FAF5FFFAFAF3FFE6E4
          D9FFF0EEE1FFFCFCF4FFFAFBF9FFFAFCFCFFFCFDFDFFFEFEFEFFFDFEFEFFFCFE
          FDFFFDFEFDFFFBFEFDFFFBFCFBFFF9F9F4FFFDFCF3FFFCFAF1FFFEFCF0FFFAFA
          F2FFF9FBF5FFF9F8F0FFF5F1E3FFF4F0E1FFFAF7EFFFFCFBF4FFF7F7EEFFF2F0
          E4FFF8F4E8FFFBFAF3FFFAFAF8FFF9FBFAFFFDFEFEFFFDFEFEFFFDFEFEFFFCFE
          FDFFFBFEFDFFFCFDFCFFFDFDF9FFF4F1E8FFBFB9AAFF9C9583FFA8A08DFFDAD5
          C5FFD4CFC0FF9B9380FF887E66FF8B8068FFA59B88FFC2BBAAFF968E7CFF8A7E
          6AFF968A77FFC8C0B3FFF6F3EAFFFAFAF3FFFAFDFDFFFCFDFDFFFFFFFEFFFCFD
          FCFFFBFDFCFFFBFDFBFFF8F5F1FFA0998CFF6A5F4BFF726149FF726148FF7767
          4FFF76654CFF746147FF766245FF746042FF736045FF716046FF746248FF7762
          46FF786247FF72604CFFACA190FFF7F6E9FFFBFDFCFFFBFDFDFFFDFFFFFFFAFC
          FCFFFAFCFBFFFDFCF9FFCEC8BFFF6D6250FF726147FF796142FF7B6244FF7861
          43FF786143FF7A6243FF7D6242FF7C6241FF7A6143FF796045FF7A6244FF7E62
          41FF816344FF785E45FF74614CFFD3CBBCFFFDFDFBFFFDFDFDFFFCFEFFFFFAFD
          FDFFFAFBFAFFFEFDF9FFA9A094FF71624BFF745F41FF7D6340FF7C6341FF7B63
          41FF796240FF7A6340FF7C633FFF7C633FFF7B6141FF7A6244FF7A6142FF7F62
          3FFF80623FFF7B6144FF776149FF978A7AFFFEFDFAFFFEFEFDFFFCFDFFFFF9FD
          FDFFF9FCFAFFFDFBF7FFA69C8FFF716047FF76613FFF7C633FFF7C633FFF7A63
          3FFF796340FF7A6341FF7A633FFF7B6340FF7B6341FF786242FF7A6342FF7F63
          3FFF80633FFF7C6343FF745F44FF7F6F5DFFFEFDF9FFFDFDFCFFFDFEFEFFF9FC
          FCFFFAFEFCFFFEFDFBFFC3BBB0FF6E5F48FF796445FF7B613DFF7D623FFF7D62
          40FF7C6240FF7C6341FF7C6340FF7D6340FF7D6241FF7C6243FF7D6241FF8162
          3FFF83633FFF7C6141FF755F45FF786958FFFEFDFAFFFDFDFDFFFFFEFFFFFCFE
          FEFFFBFFFEFFFCFDFCFFF0EBE4FF887C6BFF726145FF7D6342FF7D6240FF7C62
          40FF7D6240FF7D6341FF7D6341FF7D6341FF7E6241FF7C6243FF7E6241FF8162
          3FFF80623EFF7C6243FF746046FF918675FFFEFEFAFFFDFEFEFFFFFEFEFFFCFE
          FEFFFAFEFEFFF9FBFCFFFCFCF9FFE4DFD3FFA0927BFF7A6545FF786240FF7963
          40FF7A6340FF7A6340FF796340FF796340FF7C6240FF7A6241FF7A6340FF7D63
          3EFF7C623DFF7A6545FF716348FFC2BDACFFFEFDFBFFFDFDFDFFFCFEFEFFFDFF
          FDFFFCFEFEFFFAFDFEFFFAFEFDFFFBFBF6FFF4EEE1FF887961FF746144FF7962
          41FF7C633FFF7B623EFF796341FF786242FF7C6242FF7D6240FF7D633FFF7C63
          3FFF776241FF736248FF9A907EFFF5F3EAFFFEFEFAFFFEFDFCFFFCFFFFFFFEFF
          FDFFFDFEFDFFFBFEFEFFF9FDFEFFFBFCFAFFFDFBF1FFAAA08BFF706047FF7963
          44FF7F6440FF7E623EFF7E6240FF7C6241FF7D6342FF7D6240FF7B6340FF7460
          40FF87785FFFB0A693FFF3F0E4FFF8F9F4FFFDFEFBFFFEFEFDFFFDFFFFFFFEFE
          FEFFFDFEFDFFFAFEFEFFF9FDFCFFF9FBF8FFFCFCF4FFDDD9C9FF746B55FF7665
          48FF7A623FFF7F633FFF80633FFF7E6240FF796240FF7A6442FF746143FF8F83
          6AFFEEE7D8FFFBFAF2FFF7FAF5FFFCFCFBFFFDFDFCFFFDFDFDFFFEFFFFFFFEFE
          FEFFFDFEFEFFFBFEFEFFFBFDFCFFFCFDF9FFFCFEF7FFFCFBF1FFB7B4A3FF6F63
          4CFF736144FF786141FF7C6342FF7A6242FF756244FF726246FF7C6F59FFE0DA
          CAFFF9F8EFFFF9FCFBFFF7FCFCFFF9FCFCFFFCFEFEFFFBFDFDFFFFFEFEFFFEFF
          FFFFFCFEFEFFFDFEFEFFFEFEFCFFFCFDF9FFFDFEFAFFFDFCF9FFF9F7EEFFC0BA
          ACFF776B58FF6E5F48FF6F6147FF6F6048FF6C5F4AFF8A7F6EFFE0D8CBFFFBF8
          EFFFFBFAF6FFFBFDFDFFFAFDFDFFFBFEFEFFFCFEFEFFFCFEFEFFFFFFFEFFFDFE
          FEFFFCFEFEFFFDFEFDFFFFFFFCFFFEFEFBFFFDFEFDFFFBFBFBFFFBFAF8FFFCFB
          F5FFEFEDE1FFC5C0B3FFB0AB9BFFB1AC9DFFD5CFC3FFF4F1E9FFFDFCF6FFFDFA
          F8FFFCFBFBFFFDFEFEFFFDFEFDFFFDFEFEFFFEFEFFFFFEFEFFFFFEFEFEFFFCFD
          FEFFFAFDFDFFFCFEFCFFFFFFFAFFFFFFFBFFFDFFFEFFFCFEFEFFFBFBFBFFFCFB
          F8FFFDFCF7FFFDFDF7FFFEFDF7FFFEFCF6FFFEFCF5FFFBFBF6FFFAFBFBFFFAFC
          FCFFFBFCFDFFFEFEFEFFFDFEFDFFFEFEFDFFFFFEFFFFFFFEFFFFFEFFFDFFFCFE
          FFFFFAFEFEFFFEFEFCFFFFFFFAFFFFFFFBFFFDFFFEFFFCFEFDFFFBFDFBFFFCFE
          FCFFFDFDFCFFFCFCFAFFFEFDFBFFFEFDFAFFFDFDF7FFFCFDFAFFF8FBFCFFF7FB
          FEFFF8FCFDFFFCFEFEFFFDFEFDFFFEFEFDFFFFFFFEFFFFFFFFFF}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FEFEFFFFFEFE
          FFFFFEFFFFFFFEFFFEFFFDFEFDFFFEFEFDFFFEFEFDFFFDFDFDFFFDFDFDFFFDFD
          FDFFFBFDFDFFFCFEFEFFFDFFFFFFFDFFFEFFFFFFFDFFFFFEFEFFFFFEFFFFFFFE
          FFFFFEFEFEFFFEFDFEFFFEFEFFFFFEFEFEFFFEFEFDFFFEFFFDFFFFFFFEFFFFFF
          FEFFFFFFFEFFFEFEFDFFFDFEFCFFFDFEFCFFFCFEFDFFFBFDFDFFFCFDFDFFFCFE
          FEFFFCFEFEFFFCFEFEFFFCFEFEFFFCFEFDFFFDFEFDFFFDFDFEFFFDFDFEFFFDFD
          FEFFFDFEFEFFFDFEFFFFFDFEFEFFFDFEFEFFFCFEFDFFFDFFFDFFFFFFFCFFFFFF
          FEFFFFFFFEFFFFFEFDFFFCFCFCFFFBFEFCFFFAFDFCFFF9FDFCFFF9FCFCFFFBFD
          FDFFFAFCFCFFFBFEFDFFFBFDFCFFFBFDFCFFFBFDFCFFFBFCFDFFFCFCFDFFFCFD
          FDFFFCFEFDFFFBFEFEFFFAFDFDFFFBFEFDFFFDFFFEFFFDFFFEFFFDFFFCFFFDFE
          FEFFFEFEFEFFFEFDFEFFFBFBFBFFFBFDFBFFF9FDF9FFF9FCF9FFFAFBF9FFFAFB
          F9FFFBFBF8FFFDFEF9FFFEFDF9FFFDFDF9FFFDFDF8FFFEFDFAFFFFFDFAFFFEFE
          F7FFFDFEF9FFF9FEFAFFF9FDFCFFFBFDFDFFFCFEFEFFFCFEFEFFFCFFFEFFFCFE
          FEFFFCFCFEFFFDFCFDFFFBFBF9FFFBFAF5FFF2F0E8FFECEBE2FFF4F1E9FFFCFA
          F1FFF6F3E8FFE5E0D4FFD6CFC4FFE5DFD4FFF6F3E6FFF3EEE2FFDFD9CCFFD9D5
          C7FFEDEBDEFFFAFBF2FFF9FBF6FFFAFCFCFFFBFDFDFFFCFCFDFFFDFEFEFFFDFD
          FDFFFDFDFEFFFDFCFBFFF7F5F0FFBCB3A8FF7D7162FF706653FF897D6BFFBEB3
          9FFF8D7E6AFF71614CFF72614CFF706049FF918169FF86745EFF73614AFF7060
          49FF786D57FFB7B09EFFF4F3E9FFF9FBF9FFFDFEFDFFFDFDFEFFFFFEFDFFFEFD
          FCFFFEFDFCFFFEFDF8FFC1BBAFFF726250FF745F48FF756247FF766245FF7560
          43FF796144FF7A6143FF7C6243FF7C6242FF7C6243FF7E6345FF7D6244FF7961
          43FF796548FF70624BFFB7AEA0FFFBFBF7FFFEFEFBFFFEFEFDFFFEFEFDFFFDFC
          FAFFFCFDFCFFF5F4EFFF897C6AFF7A6549FF786143FF7A613FFF7C6442FF7B61
          3FFF7E6340FF7D623DFF7F6440FF7C6140FF7F6342FF7B6240FF7D6340FF7F63
          41FF7C6141FF776248FF786B59FFEAE7DFFFFEFEF9FFFBFDFBFFFEFEFDFFFCFC
          F8FFFAFCFBFFECEBE7FF7A6A56FF786041FF7D6544FF7E633FFF7D613FFF7D62
          3FFF7C613DFF7F643FFF7E6340FF7B6242FF7C6142FF786241FF7A6341FF7E63
          3FFF7E6241FF786144FF6F614BFFC5C0B5FFFDFEF7FFFAFEFBFFFEFEFCFFFCFB
          F8FFFBFCFBFFEFEDE7FF7A6E5BFF766044FF796243FF7D6340FF7E6240FF7E62
          40FF7E633FFF7D623EFF7D6240FF7C6243FF7C6143FF7A6243FF7A6241FF7E63
          3FFF7F6441FF7A6344FF71624AFFB1AC9EFFFEFDF6FFFAFDFBFFFEFEFDFFFBFB
          F9FFFCFCFBFFF9F8F3FF9D9483FF736249FF766144FF7B6141FF7E6241FF7F62
          40FF7E623FFF7E633FFF7D6141FF7C6142FF7F6143FF7C6142FF7D6240FF7E63
          3EFF7E633FFF786242FF6F6045FFBCB6A6FFFEFDF7FFFCFDFCFFFDFEFCFFFAFC
          FBFFFCFDFBFFFDFCF7FFE4DFD4FF837764FF726048FF796245FF7D6142FF7E62
          40FF7D6240FF7C623FFF7D6142FF7F6142FF816140FF806141FF7F613FFF7F63
          3FFF7C6340FF766141FF73644BFFDCD8CAFFFEFDF7FFFCFDFDFFFEFEFDFFFBFD
          FDFFFCFEFBFFFEFEF9FFFBFBF5FFE9E4D9FFA69985FF735F46FF796143FF7E62
          41FF7D6240FF7A6241FF7D6142FF806240FF82623FFF80613FFF7F6241FF7B63
          42FF776343FF706045FF978C79FFF7F6ECFFFDFDF9FFFCFDFDFFFEFFFDFFFDFF
          FFFFFEFFFCFFFEFFFBFFFAFDFBFFFBFBF6FFDFD9CAFF71614BFF755E43FF7F63
          43FF7B6040FF796242FF7D6240FF7F613EFF80613EFF826444FF7B6245FF715F
          44FF6F624BFF8A8070FFE8E2D8FFFEFCF7FFFDFDFCFFFBFDFDFFFEFFFDFFFCFF
          FFFFFEFFFDFFFEFFFBFFF6FBFBFFF8FCF9FFF6F3E8FF8A7D6AFF776249FF795F
          3FFF7B6141FF7A6241FF7E6340FF7F623FFF7E6240FF7B6043FF776149FF887B
          67FFC0BAABFFEEEBE4FFFEFCFAFFFEFDFCFFFCFDFDFFFBFDFDFFFEFFFDFFFEFF
          FEFFFEFFFDFFFCFFFDFFF9FCFBFFF9FCFBFFFAF9F4FFC9C1B3FF72614CFF7862
          44FF7D6441FF7D633FFF7C623FFF7E6241FF7D6343FF786247FF786955FFDAD2
          C5FFFBFAF3FFFCFBF9FFFCFBFAFFFDFCFCFFFEFEFEFFFDFEFDFFFFFFFEFFFFFF
          FEFFFEFFFEFFFCFFFDFFFAFDFBFFFAFDFBFFF9FAF7FFFAF7F0FFB2AA9BFF7061
          49FF786243FF7C6342FF7B6041FF7C6246FF745E46FF776754FFC5BDAFFFFBF9
          F2FFFCFBF8FFFDFDFDFFFBFCFCFFFDFDFDFFFFFFFFFFFEFFFEFFFFFFFEFFFFFF
          FEFFFFFFFEFFFDFFFEFFFCFEFEFFFAFDFCFFF9FBFBFFFAFAF9FFF9F7F0FFCFC9
          B9FF91846DFF76664CFF74634AFF786852FF998D7EFFDBD6CAFFFBF9F2FFFBFB
          F8FFFBFDFCFFFAFCFDFFF9FBFBFFFCFCFCFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFEFEFFFCFDFDFFFBFDFDFFFBFDFDFFFCFAFCFFFBF9F8FFFCFA
          F3FFF7F5E8FFEDE9DAFFE8E4D5FFF0EBDFFFF6F3EDFFFAF8F5FFFBFCFAFFFAFB
          FBFFFBFCFDFFFDFCFDFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFFFDFEFEFFFDFEFEFFFBFDFDFFFCFCFDFFFBFCFCFFFCFD
          F9FFFAFCF7FFF9FBF7FFFCFCF9FFFAFBF8FFF9FAF8FFFBFCFBFFFAFCFCFFF9FB
          FBFFFDFDFDFFFEFDFDFFFEFEFDFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFBFDFDFFF8FEFCFFF9FEFDFFF9FE
          FDFFF9FDFDFFFBFCFCFFFDFBFDFFFEFCFDFFFDFDFDFFFDFDFDFFFCFDFDFFFDFD
          FDFFFEFEFEFFFFFEFDFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFFFEFEFEFFFFFFFFFFFDFEFDFFFAFFFDFFFAFFFDFFF9FE
          FDFFF9FEFEFFFCFDFEFFFEFBFDFFFFFCFDFFFEFDFDFFFEFEFEFFFDFEFEFFFEFE
          FEFFFEFEFEFFFEFEFDFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFFFEFEFEFFFFFFFFFFFEFFFEFFFEFFFEFFFEFEFDFFFCFE
          FEFFF9FEFDFFFAFEFDFFFCFEFDFFFFFEFEFFFEFDFDFFFEFDFDFFFEFEFEFFFDFE
          FEFFFDFEFEFFFDFEFEFFFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end>
  end
end

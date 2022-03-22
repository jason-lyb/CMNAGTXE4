object Frm_AdminMap01: TFrm_AdminMap01
  Left = 355
  Top = 171
  Width = 1283
  Height = 757
  VertScrollBar.Range = 120
  Caption = '  '#44277#50976' '#44592#49324' '#54788#54889
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 15
  object cxLblActive: TLabel
    Left = 0
    Top = 0
    Width = 1267
    Height = 5
    Align = alTop
    AutoSize = False
    Color = 33023
    ParentColor = False
    Transparent = True
    ExplicitWidth = 949
  end
  object pnlBottom: TPanel
    Left = 323
    Top = 5
    Width = 944
    Height = 713
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object pnl_TalMap: TPanel
      Left = 0
      Top = 199
      Width = 944
      Height = 514
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object mMap: TTalMapXCtrl
        Left = 0
        Top = 0
        Width = 944
        Height = 514
        Align = alClient
        PopupMenu = pmAcceptMap
        TabOrder = 0
        OnCreate = mMapCreate
        OnMouseMove = mMapMouseMove
        OnStateChange = mMapStateChange
        OnUI_MouseDown = mMapUI_MouseDown
        OnUI_MouseUp = mMapUI_MouseUp
        OnUI_MouseMove = mMapUI_MouseMove
        OnUI_MouseLeave = mMapUI_MouseLeave
        OnUI_MouseHover = mMapUI_MouseHover
        OnPOI_DblClick = mMapPOI_DblClick
        ExplicitTop = 2
        ExplicitWidth = 934
        ExplicitHeight = 534
        ControlData = {00090000}
      end
    end
    object pnl_NaverMap: TPanel
      Left = 0
      Top = 199
      Width = 944
      Height = 514
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      object webNaverMap: TWebBrowser
        Left = 0
        Top = 0
        Width = 944
        Height = 514
        Align = alClient
        TabOrder = 0
        OnNavigateComplete2 = webNaverMapNavigateComplete2
        OnDocumentComplete = webNaverMapDocumentComplete
        ExplicitWidth = 608
        ExplicitHeight = 515
        ControlData = {
          4C00000091610000203500000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
    object pnlLargeMenu: TPanel
      Left = 0
      Top = 0
      Width = 944
      Height = 127
      Align = alTop
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 2
      object cxGroupBox1: TcxGroupBox
        Left = 1
        Top = 0
        Caption = #44160#49353#51312#44148
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 125
        Width = 900
        object cb_UpDate: TcxComboBox
          Left = 816
          Top = 40
          AutoSize = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #49688#46041#44081#49888
            ' 3 '#52488
            ' 5 '#52488)
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
          OnClick = cb_UpDateClick
          Height = 26
          Width = 75
        end
        object cxCEdt: TcxCurrencyEdit
          Left = 816
          Top = 40
          TabStop = False
          AutoSize = False
          BeepOnEnter = False
          EditValue = 8.000000000000000000
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taBottomJustify
          Properties.AutoSelect = False
          Properties.DisplayFormat = ',0.;-,0.'
          Properties.ReadOnly = True
          Properties.UseLeftAlignmentOnEditing = False
          Properties.ValidateOnEnter = False
          Style.BorderColor = clWhite
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 1
          Visible = False
          Height = 25
          Width = 58
        end
        object btnSearch: TcxButton
          Left = 757
          Top = 71
          Width = 134
          Height = 26
          Caption = #44160#49353'('#52488#44592#54868#44160#49353')'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 2
          OnClick = btnSearchClick
        end
        object GrpWorkerSch: TcxGroupBox
          Left = 4
          Top = 37
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Height = 60
          Width = 435
          object Panel1: TPanel
            Left = 59
            Top = 4
            Width = 106
            Height = 24
            BevelKind = bkFlat
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object chkAttendA: TcxCheckBox
              Left = 4
              Top = 1
              Caption = #45824#44592
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 0
              Transparent = True
            end
            object chkAttendB: TcxCheckBox
              Left = 50
              Top = 1
              Caption = #50868#54665
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 1
              Transparent = True
            end
          end
          object Panel2: TPanel
            Left = 224
            Top = 4
            Width = 207
            Height = 24
            BevelKind = bkFlat
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object chkStateA: TcxCheckBox
              Left = 50
              Top = 1
              Caption = #45800#49692#51217#49549
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 0
              Transparent = True
              OnClick = chkStateAClick
            end
            object chkStateB: TcxCheckBox
              Left = 123
              Top = 1
              Caption = #50724#45908#51217#49549
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 1
              Transparent = True
              OnClick = chkStateAClick
            end
            object chkWKWAITAll: TcxCheckBox
              Left = 1
              Top = 1
              Caption = #51204#52404
              State = cbsChecked
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 2
              Transparent = True
              OnClick = chkWKWAITAllClick
            end
          end
          object Panel3: TPanel
            Left = 59
            Top = 31
            Width = 372
            Height = 24
            BevelKind = bkFlat
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 2
            object rbWKWAIT5: TcxRadioButton
              Left = 5
              Top = 2
              Width = 50
              Height = 17
              Caption = #51204#52404
              TabOrder = 0
              OnClick = rbWKWAIT5Click
              LookAndFeel.SkinName = 'Sharp'
              Transparent = True
            end
            object rbWKWAIT6: TcxRadioButton
              Left = 73
              Top = 2
              Width = 56
              Height = 17
              Caption = #51088#44592#49324
              TabOrder = 1
              OnClick = rbWKWAIT6Click
              LookAndFeel.SkinName = 'Sharp'
              Transparent = True
            end
            object rbWKWAIT7: TcxRadioButton
              Left = 153
              Top = 2
              Width = 56
              Height = 17
              Caption = #53440#44592#49324
              TabOrder = 2
              OnClick = rbWKWAIT7Click
              LookAndFeel.SkinName = 'Sharp'
              Transparent = True
            end
          end
          object Label1: TcxLabel
            Left = 3
            Top = 3
            AutoSize = False
            Caption = #50868#54665#49345#53468
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 26
            Width = 58
            AnchorX = 32
            AnchorY = 16
          end
          object Label3: TcxLabel
            Left = 3
            Top = 30
            AutoSize = False
            Caption = #44592#49324#44396#48516
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 26
            Width = 58
            AnchorX = 32
            AnchorY = 43
          end
          object Label2: TcxLabel
            Left = 168
            Top = 3
            AutoSize = False
            Caption = #51217#49549#49345#53468
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 26
            Width = 58
            AnchorX = 197
            AnchorY = 16
          end
        end
        object ChkWorkerSch: TcxCheckBox
          Left = 3
          Top = 16
          Caption = #44592#49324' '#54788#54889' '#51312#54924
          State = cbsChecked
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 4
          Transparent = True
          OnClick = ChkWorkerSchClick
        end
        object ChkGongUCall: TcxCheckBox
          Left = 757
          Top = 16
          Caption = #44277#50976#53084#54788#54889#51312#54924
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 5
          Transparent = True
          OnClick = ChkWorkerSchClick
        end
        object GrpShuttleSch: TcxGroupBox
          Left = 445
          Top = 37
          Enabled = False
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 6
          Height = 60
          Width = 306
          object Panel4: TPanel
            Left = 61
            Top = 4
            Width = 241
            Height = 24
            BevelKind = bkFlat
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object rbStateSA: TcxRadioButton
              Left = 2
              Top = 2
              Width = 47
              Height = 17
              Caption = #51204#52404
              Checked = True
              TabOrder = 0
              TabStop = True
              LookAndFeel.SkinName = 'Sharp'
              Transparent = True
            end
            object rbStateSB: TcxRadioButton
              Left = 61
              Top = 2
              Width = 47
              Height = 17
              Caption = #50868#54665
              TabOrder = 1
              LookAndFeel.SkinName = 'Sharp'
              Transparent = True
            end
            object rbStateSC: TcxRadioButton
              Left = 121
              Top = 2
              Width = 47
              Height = 17
              Caption = #51333#47308
              TabOrder = 2
              LookAndFeel.SkinName = 'Sharp'
              Transparent = True
            end
            object rbStateSD: TcxRadioButton
              Left = 181
              Top = 2
              Width = 48
              Height = 17
              Caption = #45824#44592
              TabOrder = 3
              LookAndFeel.SkinName = 'Sharp'
              Transparent = True
            end
          end
          object Panel5: TPanel
            Left = 61
            Top = 31
            Width = 241
            Height = 24
            BevelKind = bkFlat
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object rbWKWAITS5: TcxRadioButton
              Left = 2
              Top = 2
              Width = 50
              Height = 17
              Caption = #51204#52404
              Checked = True
              TabOrder = 0
              TabStop = True
              LookAndFeel.SkinName = 'Sharp'
              Transparent = True
            end
            object rbWKWAITS6: TcxRadioButton
              Left = 61
              Top = 2
              Width = 53
              Height = 17
              Caption = #51088#49324
              TabOrder = 1
              LookAndFeel.SkinName = 'Sharp'
              Transparent = True
            end
            object rbWKWAITS7: TcxRadioButton
              Left = 121
              Top = 2
              Width = 56
              Height = 17
              Caption = #53440#49324
              TabOrder = 2
              LookAndFeel.SkinName = 'Sharp'
              Transparent = True
            end
          end
          object btnShSch: TcxButton
            Left = 692
            Top = 6
            Width = 95
            Height = 65
            Caption = #44160#49353
            LookAndFeel.NativeStyle = False
            TabOrder = 2
          end
          object cb_SUpDate: TcxComboBox
            Left = 616
            Top = 5
            AutoSize = False
            Properties.Alignment.Horz = taRightJustify
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #49688#46041#44081#49888
              ' 3 '#52488
              ' 5 '#52488)
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            Height = 21
            Width = 75
          end
          object cxCESdt: TcxCurrencyEdit
            Left = 619
            Top = 6
            TabStop = False
            AutoSize = False
            BeepOnEnter = False
            EditValue = 8.000000000000000000
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taBottomJustify
            Properties.AutoSelect = False
            Properties.DisplayFormat = ',0.;-,0.'
            Properties.ReadOnly = True
            Properties.UseLeftAlignmentOnEditing = False
            Properties.ValidateOnEnter = False
            Style.BorderColor = clWhite
            Style.BorderStyle = ebsNone
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 4
            Visible = False
            Height = 20
            Width = 58
          end
          object Label6: TcxLabel
            Left = 3
            Top = 3
            AutoSize = False
            Caption = #50868#54665#49345#53468
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 26
            Width = 60
            AnchorX = 33
            AnchorY = 16
          end
          object Label7: TcxLabel
            Left = 3
            Top = 30
            AutoSize = False
            Caption = #44592#49324#44396#48516
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 26
            Width = 60
            AnchorX = 33
            AnchorY = 43
          end
        end
        object ChkShuttleSch: TcxCheckBox
          Left = 445
          Top = 16
          Caption = #49492#53952' '#54788#54889' '#51312#54924
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 7
          Transparent = True
          OnClick = ChkShuttleSchClick
        end
        object pnl7: TPanel
          Left = 547
          Top = 18
          Width = 18
          Height = 16
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 8
          object Image1: TImage
            Left = 0
            Top = 0
            Width = 18
            Height = 16
            Cursor = crHandPoint
            Align = alClient
            AutoSize = True
            ParentShowHint = False
            Picture.Data = {
              055449636F6E0000010001001010000001002000680400001600000028000000
              1000000020000000010020000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000002D1F122B3A2918A10000006F00000010000000000000000000000000
              000000000000000000000000000000000000000000000000000000050000000C
              0000001CBE9266EA9F744BE00000006E00000014000000000000000000000000
              00000000000000000000000000000000000000060000001A0000003A0000005E
              987858C1DCB792FF907356DF000000940000004A0000001D0000000800000000
              0000000000000000000000000000000F00000044453526A47E644BD5987F67E6
              C6A989FFEAC49FFFBB9A77F5463625D1000000AD0000008F0000004E00000014
              00000000000000000000000D634D377EA68A6DF2C1A48AFFCFAF92FFDEBF9DFF
              F3CEAAFFFFE7C0FFE4C3A0FFC4A685FFAF8D6BF9513D28D3000000A300000060
              000000130000000495785A85B9A289FFDCC3A9FFFCDCBDFFFFEFCEFFE3B693FF
              9D3A11FFC87547FFFFDDB8FFFFDEBAFFE4C5A5FFC3A486FF74583BDF000000A2
              0000004EA686673BB8A590FFE3CDB7FFFFEACDFFFFE8CBFFFFF4D7FFD3A988FF
              490000FF701F00FFFFE1BCFFFFE8C7FFFFE3BFFFEDCDAFFFC2A587FF4B3A29CE
              0000009AC4A98DBFD9C7B5FFFFECD4FFFFEBD1FFFFE6CDFFFFE9CFFFFFEFD6FF
              DCB699FFF1D1B6FFFFEFD2FFFFE3C5FFFFE3C5FFFFE5C6FFE5CAADFFB29476F4
              000000BBCAB8A9FFF6E2D1FFFFF1DDFFFFEBD6FFFFEAD5FFFFEBD4FFFFFBE6FF
              CB8960FFE8BF9FFFFFFFE9FFFFE7CDFFFFE4CAFFFFE8CBFFFBE1C4FFD6BBA0FF
              33302CCACFC5B9FFFBECDDFFFFF3E3FFFFEEDEFFFFEEDCFFFFF1DFFFFFFFF8FF
              CEA082FFA54619FFFFEBCFFFFFF8E4FFFFE9D3FFFFEAD0FFFFE8CEFFDEC6B0FF
              6F675EDAD2C9BFFFFCF1E6FFFFF7EBFFFFF2E5FFFFF4E7FFFFF6E7FFFFF2DEFF
              FFFEEFFF88340FFFA73B0FFFEDD2B8FFFFF8E7FFFFEDD9FFFFF0DAFFDDC7B2FF
              605A54CCDDCFC2D6F4EFE9FFFFFFF6FFFFF7EDFFFFFFFFFFC5997FFF8D1D00FF
              EBD3BEFFAB7A5EFF640000FFBD886AFFFFFFF8FFFFF9E9FFFAF0E1FFD6C0ABFF
              1514146FE5D0BA56E3E2E0FFFFFEFCFFFFFFFBFFFFFFFFFFBD9885FF5C0000FF
              E2C5B2FF853E21FF570000FFD2B39DFFFFFFFFFFFFFFFDFFF0E5DAFF998673B9
              0000001D00000000E6D9CC9DEBEBECFFFFFFFFFFFFFFFFFFFFFFFFFFC59A84FF
              B9714DFF904E36FFC2A797FFFFFFFFFFFFFFFFFFF5F1EDFFCDBCABD900000021
              000000000000000000000000E7DDD386EFEDECFFFAFCFEFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F0ECFFCFC1B3B50000001300000000
              00000000000000000000000000000000EDDFCE26E9E3DD9AEEEAE6EBF5F5F6FF
              F6F9FAFFF8F9F9FFF3EEE9F2E5DDD5AEBEB2A541000000050000000000000000
              00000000FF0F0000F80F0000E0030000C00100008000000B00001C47000044B8
              00006EFA00007FFF000085FF000085FF000083FF000086FF80018CFFC00394FF
              E0079FFF}
            ShowHint = False
            OnClick = Image1Click
            ExplicitTop = -1
          end
        end
        object cxLabel29: TcxLabel
          Left = 494
          Top = -33
          AutoSize = False
          Caption = #8251' '#49492#53952#52264#47049#51008' '#49492#53952#51648#49324#49444#51221', '#49492#53952#45432#49440#46321#47197', '#49492#53952#44592#49324'TagID'#13#10'   '#46321#47197#51060' '#46104#50612#50556' '#44288#51228#47605#50640#49436' '#52264#47049#50948#52824#44032' '#45208#53440#45225#45768#45796'.'
          ParentColor = False
          Style.Color = 15269887
          Visible = False
          Height = 54
          Width = 341
        end
        object cxbtnHInt: TcxButton
          Left = 862
          Top = 99
          Width = 29
          Height = 20
          LookAndFeel.NativeStyle = False
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            424D360900000000000036000000280000001800000018000000010020000000
            000000000000C40E0000C40E0000000000000000000000000000000000000000
            0000000000001C06003C501000AF000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000001A0500358F2200FF4E0F00A90000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000019050033B53D02FFBE4602FF551200A800000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000019060030B43E03FFD97405FFCE5E04FF6E1701D2000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000340C0063B54004FFD77207FFD67207FFD16405FF791B02E40200
            0003000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000005F16
            01AAA53204FFBB4906FFCB6008FFD97A0BFFD7750AFFD97909FFD16807FFB843
            05FFB54105FFB54104FFB74104FF992902FF9C2A03FF9A2A02FF9A2802FF9A28
            02FF992702FF932602F6420E018200000000000000000D030015A93405FFD97C
            0DFFE28E10FFDF850FFFDE840EFFDC800DFFDA810DFFDA7E0CFFDE7C0BFFCC5E
            07FFC04602FFB84101FFD67009FFDC8009FFDA7C09FFDA7C08FFD97908FFD976
            07FFD97607FFDA7807FFCC5C05FF8D2703E700000000992D05E8E69614FFE28F
            14FFE18C13FFDF8912FFDF8911FFDE8811FFDE8510FFDF8810FFCC6609FFEDEA
            D6FFFFFFFFFFEDEAD6FF951F00FFD97A0CFFDA790CFFDA790BFFDA780BFFD778
            0AFFD7750AFFD67509FFD77809FFD77107FF5213019AC5560AFFE6A01AFFE295
            17FFE19317FFE19315FFE18F15FFE18E14FFE18E13FFE29013FFC95404FFFFFF
            FFFFFFFFFFFFFFFFFFFFB23B04FFCE6309FFDF8710FFDC810FFFDC810EFFDA80
            0DFFDA810CFFDA7D0CFFDA790CFFDF820BFFA63105FFCB630CFFE6A31EFFE49A
            1BFFE2991AFFE2991AFFE29819FFE29818FFE29518FFE49918FFC95A05FFFFFF
            FFFFFFFFFFFFFFFFFFFFB24C0FFFD4760EFFE18E12FFDF8912FFDE8811FFDE88
            11FFDE8510FFDE8410FFDE840FFFE18910FFAB3605FFCE670DFFE9A820FFE6A0
            1FFFE6A01FFFE69F1EFFE69F1DFFE69D1CFFE49A1CFFE69C1CFFDC8712FFC963
            0EFFC66E1BFFC66E1BFFB74004FFE79F19FFE19317FFE18F15FFE18F15FFE18E
            14FFE18E13FFE18C13FFDF8C11FFE49012FFAE3605FFD37D19FFECB83AFFE6A2
            1FFFE7A522FFE7A322FFE7A522FFE7A321FFE7A320FFE7A320FFD97D11FFCB69
            11FFCC7D1FFFC8721FFFB23B04FFE9A51EFFE2991AFFE2991AFFE29819FFE298
            18FFE29517FFE29315FFDF8F13FFE7A621FFC55A0EFFD99027FFF2DE9DFFEFD3
            7AFFECBD44FFE7AC27FFE9A923FFE9AB23FFE7A824FFE9A825FFDA7D0FFFF7EC
            E4FFFFFFFFFFFFFFFFFFB23B04FFEDAF23FFE6A01FFFE69D1CFFE69D1AFFE699
            18FFE49A1AFFE7AF30FFEDC962FFF2D984FFD1811FFFDC9528FFF5DE98FFF4D6
            8FFFF1D795FFF1DA95FFEFD17CFFEDC85BFFECBA3FFFEAB835FFDF8411FFDF84
            11FFFFFFFFFFFFFFFFFFBB5C14FFEAB733FFEAB733FFE9B234FFEAC34CFFEDCC
            6BFFF1D487FFF1D380FFEFD17AFFF1D780FFD3811FFFDF9C2CFFF5DF9FFFF4DA
            8EFFF4DA8EFFF4DA8FFFF4DC8FFFF5D992FFF5D995FFF5D998FFF2DC98FFDEAE
            53FFFFFFFFFFFFFFFFFFFDFFFFFFC9873AFFEFD382FFF2D790FFF2D489FFF1D4
            87FFEFD382FFEFD382FFEFD180FFF1D788FFD68821FFE1A030FFF7E2A3FFF5DE
            99FFF5DC99FFF5DC95FFF5DC95FFF4DA93FFF4DA93FFF4DA8FFFF5DC92FFECC8
            71FFDEB164FFFFFFFFFFFFFFFFFFFAF9FFFFBB691FFFF2D98EFFF1D48BFFF1D4
            88FFF1D488FFF1D485FFF1D385FFF2D990FFD98E25FFE2A934FFF7E4ABFFF5DF
            9AFFF5DE9AFFF5DE99FFF5DE99FFF5DE99FFF7DF9AFFF5DC92FFF7DE9CFFF7E1
            9CFFE4B253FFF7ECE4FFFFFFFFFFFFFFFFFFF7ECE4FFC8802AFFF5DA92FFF4D7
            8EFFF4D78CFFF4D68CFFF1D689FFF2DC95FFDC9327FFDC901FFFF9E9AFFFF7E1
            A0FFF7E19FFFF7E19FFFF7E19DFFF5E19FFFECC871FFE6B54CFFE6B54CFFF5DF
            93FFF5DE98FFD69C47FFFFFFFFFFFFFFFFFFF7F5F7FFC6822CFFFAE49FFFF4DA
            93FFF4DA93FFF4DA8EFFF4DA8FFFF5DF9AFFDE9A2AFFDF9824FFF9E9B4FFF7E2
            A5FFF7E2A3FFF7E2A3FFF7E1A3FFF9E2A8FFE6B54CFFF7ECE4FFF7ECE4FFE2BA
            6EFFD79D3EFFEADCC3FFFFFFFFFFFFFFFFFFF7F5F7FFC6822CFFF9E4A2FFF5DE
            99FFF5DE98FFF5DE99FFF5DC99FFF7E1A0FFDF9D2AFFE19A27FFFAECC3FFF9E4
            A5FFF9E2A6FFF9E2A6FFF9E2A5FFF9E6ACFFE9BE52FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7ECE4FFC8802AFFF9E2A3FFF5DF
            9DFFF5DF9AFFF5DE9AFFF5DE9AFFF7E19FFFE4B859FFC68920E0FDF7ECFFF9E4
            A5FFF9E6A9FFF9E6A9FFF9E4ABFFF9E2A2FFEDC969FFE6B54CFFF7ECE4FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7ECE4FFC8802AFFF9E4A3FFF7E1A5FFF7E1
            A0FFF7E1A0FFF7E1A0FFF7E19CFFF9EAC3FFE4B856FF753F0588F7F2DFFFFCED
            CCFFF9E4A8FFF9E4A9FFF9E4A8FFF9E6A9FFF9E7AEFFF7DE93FFE6B54CFFDA9F
            36FFE6B54CFFE6B54CFFC97D28FFC8802AFFF9E9A5FFF9E2A5FFF9E1A0FFF7E1
            A0FFF7E1A0FFF7E19FFFF9E4B1FFFFFFFFFFC17010E500000000E6A524FFFDFD
            FFFFFDFAF5FFFDF5EDFFFDF5EDFFFDF5EDFFFDF5EDFFFDF5EFFFFFF9F4FFFFFA
            F5FFFFF9F2FFFFFAF2FFFFFDF9FFFFFAF5FFFDF5EFFFFDF5EDFFFDF5ECFFFDF5
            ECFFFDF5ECFFFDF7EFFFFFFFFFFFE7BA4AFF3119023C0000000003020003AC6C
            0EC0EAC550FFEDCF74FFEDCE70FFEDCC70FFEDCC70FFEDCC6EFFEDCC70FFEDCC
            6EFFEDCC6EFFEDCC6EFFEDCC6EFFEDCC6EFFEDCB6BFFEDCB70FFECC96CFFECC9
            6CFFECCB6DFFE9C35EFFC88014E5331A033C00000000}
          TabOrder = 10
          OnClick = cxbtnHIntClick
        end
        object cxLabel12: TcxLabel
          Left = 7
          Top = 101
          Caption = #8251' '#44592#49324#51221#48372' '#54364#44592#45716' '#44288#51228#51648#46020#51032' ['#49444#51221']'#51032' '#50741#49496#50640' '#46384#46972' '#51201#50857#46121#45768#45796'. '#48320#44221#46108' '#49444#51221#51008' '#44160#49353'('#52488#44592#54868#44160#49353')'#49884' '#51201#50857#46121#45768#45796'.'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.TextColor = 12615680
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object rbo_UseNaverMap: TcxCheckBox
          Left = 757
          Top = 100
          Caption = #45348#51060#48260#47605
          ParentFont = False
          Properties.OnChange = rbo_UseNaverMapPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
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
          TabOrder = 12
          Transparent = True
        end
        object Label5: TcxLabel
          Left = 763
          Top = 47
          Caption = #51088#46041#44081#49888
          ParentColor = False
          Transparent = True
        end
      end
      object cxButton1: TcxButton
        Left = 907
        Top = 31
        Width = 29
        Height = 25
        Caption = 'T'
        TabOrder = 1
        Visible = False
        OnClick = cxButton1Click
      end
      object cxCheckBox1: TcxCheckBox
        Left = 884
        Top = 6
        TabOrder = 2
        Visible = False
      end
    end
    object pnlHint: TPanel
      Left = 0
      Top = 127
      Width = 944
      Height = 72
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object cxGroupBox3: TcxGroupBox
        Left = 1
        Top = 0
        Caption = #44592#49324#54788#54889
        TabOrder = 0
        Height = 69
        Width = 475
        object Image9: TImage
          Left = 51
          Top = 18
          Width = 17
          Height = 18
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
            0000001008060000001FF3FF610000033449444154388D55934B685D551486BF
            73CE7D2437373724B169081A95A6416B1221A9D60E7CC4E04045D081DA220E8A
            D48A13A1034550A82038108A1347828262C107D2818F89E844A894164DC41AA3
            4D9368539AE43E4FCED9EFBD1D84A0FEB0E01FAC6F0D167C11FF499214E3EA9E
            893BFA6E3BFE6275E4E0D1A454EB8B428C4C1BC175AE2F6D2C9E79CFA7E7DFCF
            DA579ABB4CB45BE2A4ABFB96D9D75E9979F2F8CB7377F7770F241E2D1C2AB748
            61D8AC4B16161A5C3C377FB9BDF2F189F6FAB7DF056F43029014CA5D37CEBD71
            FAF9B74E9E7CE4CE5A29DAF6648D80EC3854E6C9528BD78EFE5AC2D0F0E0404B
            8D3DA683FF59B5172F2700C353C79E79F6CDD74FCD0C7715EAEB1E93060E8F17
            98DE5F62E2D6127BFB13FE5C1334DB9AE02DB55AA97BB333F4A06A5CF82C498A
            BDB50347DE3DF3F8ECC80D8D754FDA7088DC72DF640967037D3D31237B8AF474
            C5FC70B181901A6B0D7114F536DB3E14F6EE7BF481F1F1D17D5B1B867C332073
            8FCA2D6F7F244953C3A18932471FEE6768A048BA6D305AA3B4A65C8672DFD489
            4253540E57BAA1B5A111AD80121E291C4A1A82778CDDD40BC0B99F5AA4A94249
            85320AEF348562B1A760434F6295A6AD1D6A3BECC0C221A565EE502FD3B75798
            5F4CF9F0EC5FA4A9446B89F70AEF24118602DE90B625499C60F280C81D79E688
            F1DC3F53C5BAC0E90F96B9BA9E62AC22C68097382F714653288496BABE9E91F4
            9530C223738F948E521CF8F58F0EBFFCEE595EEDA095C23A451476C63989568A
            78B062BF5A59AA87762723CB04520A94922825D9CE0C1B5B122104C62A700A6F
            15464B8C9158ABAE2559BA5A2FF5DE336B93EA681C1CC6188C324CEEEFE1D517
            C63938D9CF37DFAFB055EFEC1CF012E72442E688E6E2A92478635DBE76C514A6
            9FB0212A5B6B505A91678A03633596D7DA7CF1F51242E478B7F340172469AB79
            3EBBFAF94BD18E07A5B8367AE45861F0A1772AD5AE6A1241E41DE5620067505A
            139C22048DF58AB4D558CAFEFEE4292B56E71380105CD0E96F0BB113F32E0CDE
            E57D3C1845066B15C648829368231142F84EBB7E56AC7FFA9C136B97FE67E3BF
            56566A5D83F73E1DF74C4D95AA370F1185A2D726CBE5A56B51BAF8A56A5EF811
            2FF5EEFE3FD1C40BB84D025ED20000000049454E44AE426082}
          Transparent = True
        end
        object Image10: TImage
          Left = 150
          Top = 18
          Width = 17
          Height = 18
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
            0000001008060000001FF3FF610000031749444154388D6593DB6B5C5514C6BF
            BDCF653A939949939934C124ED18C58AA606D314C5D07889D8177D1291EA8BE0
            4315C14B11FC0704E9A35A149FFA265141C537855A122D86922A296D494A1B6D
            6BE3CC9C8967CE755FCED97BFB30A656F2C182F5B0D66FC1F7B108EE90ED968B
            8313CF3EBFE7C0EBAFD062F571EA946D2D33F0D0CB55E42D76AE9C3A1535CF7C
            ADF3946DEF90EDA63C3439F5C0D14F3E7AF2C8C1C307F639C4CE1448AE91C619
            C230C3662BC5CA4ADBACAFFEB6E45D3EF1A688AE5D00000B00FA86261F7EE49D
            CFBF79F78D99A9B1924DF2C0E0BE410B871A0EF6D61CDCFC4B204972ECA9B9A4
            7FA0D6F0C5BD47987F715149BF65D96EB96FEAD5852F8EBF363D29B60C829606
            911ACF4CBB2815082A250A0BC0F94B31589AC1A21A7D95EA40978D3F94B61717
            ECFEC6732F3DF1F4D4A37147216E69B058C381823185DBDE70A1118612424848
            2951B081E1D1C663C19FB347AD7D4F7DFCE9FCFCE868E26944BE4212E730CAA0
            E00043BB2D4489C6E9E52E6E6E320491006302291320542164F511DB38D599B8
            2B213A804834EA558AB75E1C806DF5AE175C0BC75E18C1DCC10ADE7EFF021817
            50B980D2190C7166284C8106BE4010088491C4F81001BD9DCD7F9A182B627799
            82310EC17B658CA654B20481CF11C51C51CCB077C4C1F54DB103B0B61161FAC1
            0AA4E09042F4002A0395413BDEDA4A11850C9C0934EE72B17229D801F8F95C1B
            7387EA909CFF0B61D04AC694B756167EFF23429CA4A8F51B140B04E72FFEBD03
            B074EE16EEBFA71FC3350B79C6C03943166F2CD074F3CB9337D69BACE9C518AC
            12AC6D84F0837407A0ED7571E35688FD136528CDC112C6847FE6A4A564D773EC
            92CDCDF8E18E2FE82FBFB6214586FD7757D0F45234BD04CD76826FBF5FC3E99F
            AEE2DAF516BA61AC626FF503D95DFE8A0000A16EB13CF6F289E2F0FCB15D25D7
            B58806D10A3039A073189DC11809A30518E732F2563FE3ADEFDE335AB25EDA46
            E55974F947A2922B0A8393B9421D268356BDCC33C9C118431A47EB8977F6B8E8
            FCF0A1D192FFEF1BB745AD5265577D76562967CE68D88006212627245B12FEF2
            59A3D2E8CEF97F007D98C4793B26AC140000000049454E44AE426082}
          Transparent = True
        end
        object Image11: TImage
          Left = 261
          Top = 18
          Width = 17
          Height = 18
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
            0000001008060000001FF3FF610000033B49444154388D65925B4C9B0518869F
            FFD0B21668D8D8A04081325858751D0332186262E1C68B199D9AB864263A134F
            8987EC423313BD5C4C8CDE716154668287388DD30B35660A2C125094C3066C6A
            8050686B29A3A5961E6869FFFFF362998EF9DE3FEFF77CF93E85DBA25B6CD6A6
            BB7AEE6969ED3DDDD6B2EEDB53B2EE328D75331451FDC3239583F3F3331F44D7
            AECE493E6770679C35CDAED7DFBCF86978359617898BC89F22E6B088F19148FE
            55C9263AE5AB2FDB33DD271E7BDB5EEA2ABBC56900CEEA66D7BBEF0F7CF6DC93
            3DC71D8E900A53F8032B7C3398241A3771553B28DAE5C1D36CB5F4B44F1EF347
            0E37FAFDE91F0ADB9B394DB7D8AC2FBED2D7F7FC53BE07346D1A98603399E285
            371486C784915F616F5912CFFE3850C4EEDD654AFBDDD39ED1A9E64238E41F51
            9B0EF674BDF4EC7D2735ED0A300A1223BCBAC15F1105804201AE5E2F204618CC
            351083C6C62AF5E5676E9C29717436A8ED9DBDA79D155B3A3204120323425D65
            10774D1A45015D37E93AEC4731C360864122A0283C74BFEA68F4384FE96DDE84
            0F990556C03449A5B639FFC57E4AEC3934CD469923CB4F13159416AFD3DDBA00
            AA80A252525ACED136AB4F77D883B50820093073FC3C5DC185EFDC88DC5C21BA
            61E7F26F6E16030EBABCBFA0EA1650351095FA1A5B9D2A46D4C458048983C4B8
            3E5F4C9135BFE3C4564B81F8E62EFC411B480ACC0C6000AAA8C188B28C3977B3
            8024D7162AF01E08EC28D0B402871AFD8CCF79801C900529B01CB2F9D5A919E7
            D0767611D820F6B785F08D328E7A17EE7833850EEF1F8CCD7801054427B7AD33
            392B43EAE4C46CFFA5CBF539CC104B413B765B96869AB51D78A1A0D1E15D6029
            5445245A0E8A9D6F87EB638BD7C62FA8B1D59999BEFEF6F78201AB64B652F83A
            AEA069D9FF1954EC4D70A479898D4425C98CDBE81F287D2B9D080515005B89AB
            FCC4A347CE9F3B3BFA60AD2BA3AC459DFC38D6098A0202AA6272EAF8282276B2
            F93AE3ECB9960F3F19F8FA4C6A3390F97786ADD4B5A7BBF7F1772E7EEE496FC5
            DC22E98322E95A91548348EA80E41387E4D2F70FC71F39F9F46BF6E2BAE2FFDC
            6E17556CDABEAA568FBB69DF13F71EC3575B9D77812E2B216D69745C1D9CFF7D
            FAE3643CB02C6298B7987F00E571754E3BAB38510000000049454E44AE426082}
          Transparent = True
        end
        object Image12: TImage
          Left = 375
          Top = 18
          Width = 17
          Height = 18
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
            0000001008060000001FF3FF610000032449444154388D6593CF6F547514C53F
            DFEFFB353FE94CA7D35A9AC11128B4D0046C955A6940038606818D86851195A0
            894BFE0462A271E1CA85899118576ED4C4A42151379A081AC440DA8AFCB02DAD
            D301D2CEBC99F766E6CDBC376FDE7331A98ADEE4E66EEEB9B927E71CC17F4B2A
            4624FFF4B1FC93CFBD3E30D037258DC8008AE236ABD6EDC5855F67CDE2FC6741
            717185300801C423D8546E78E8C0B10FF63F73F064B22729D023108B831E01CD
            A08360E5F75BA5DF2E7D7EA171FBF2451A5557D9048B546E74F08537BE18DA37
            71C8119AA8042AA63028873AA630A8AA71AA5A1CFA876289DCAEA3B615867E71
            E14AF780914C46A6CF7C1AD931FA6CADE971625F9E9D29837C3A4ABE37C61399
            04DB7BE3ECCE2678E8AB146452517AD253CDC2DA9C0A4076E4453FD57F646379
            9913A38FB1707D9E9F96D6614B0A9229E8C940324534DDCB9B13435C7BD0C14D
            0D1AEC39FCAE443534B2BB5E93C57B8A6E9B8C8FE4F9FE66012710DDF6031CAF
            8DD372295B357E295438D023D01C1BE2C9BD2A88049A31FED6CB47397B7C0A5D
            55D833FC3848098A0A8AF2AFA9118F686C8DEBD427D21C7FEF2E2AA06244B35F
            DD58E1E4E17132E924A72647D014F93F85010A158752C3E5E31F6E6257AAA808
            116244FDBEFE3EDD130AEF5C9AE3E29983DC7A6831B766FE23B110BC3AB983D9
            F955EE6DD8EC4D1B84AD262AE021E59F44623BA787079919CBA1299272D3C75C
            2A11061DF07D7AA31AA9A8CEDB874608C2908F667F06C746D269D7310B3F0A29
            1142A02A92B59A47DCD0C9F76D414A890C039EDA96A150B2B09D16AA9488B607
            353B5409FC80CA1F9F9856FDF4B2E5C61DCBE7F92F97F0EB16D46DA855C12A73
            C1AE805DE5A5C9DD7C78FE3477960AE036BEEE5A59D155A6CFBE1F9B79E57C27
            3BA4B89D101A35B04DA86E80B90EE575A896116E8B84A1D2705AF783D5EB47BA
            4E0C3B0156E96A3BB135D7C90C8CA1EA1229C173A15907A70E76159C06B43D3C
            AF7D3F2CDD3DC7FAC2D5BFB340CB7259BEF61DADB64924B99FBA956093865DE9
            7ED4723A78CEB7AC5E3E4769F10A61103E92C6AE5EAA20BDAD9F81ED33A4F263
            C4D21A753BA478A342BBF90D1B77E6E878EEE6FA5F9F41504CD155F2E9000000
            0049454E44AE426082}
          Transparent = True
        end
        object Image13: TImage
          Left = 51
          Top = 42
          Width = 17
          Height = 18
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
            0000001008060000001FF3FF610000031649444154388D6D935B4CDB7514C73F
            FFDFAFFDFF4B2FB48C52264EE82A10908B97CD69D818A323594834C44427F136
            7961466362A266BE2CC66962E2E50123D1478DC6071FF4CD2D2C74238A1A6236
            0296ADE000079416563A0ABDFD7BF9FB400471FBBE9EF339E7E47BCE51F88FA4
            A22A55DA21DF61E799571ACAFCBD2EB756A559A448AF934FC5980CAD0E7F3592
            39F7CD52EEF778011D006507D6B443EEB7FBFDCDCFBF5FD75CE1CCAD9B498555
            0A9B2AF63D0287078419E647098DFCFDE56B43A9372EE58D6C510208A19A9B2A
            FBCEF674F79EB35A356BF0A2CEDA8C24BD62261B33B11156589D81C432F88EE2
            DEA71D7CC288B92766F58B7F290095EECEA74E9E78FD3B2D596E59BE62A61417
            8F75FD4CDD23E3584A3244AFB772F58797C9245C08133476C3D2384B03931D6D
            52CA125B4B73EFD70D3EDFBEA95F1268453B3655727AF034F54702DCF3C038B5
            ED43ECA99E2578FE198C22DCBE09F55D94EA33D552F1B8DB8FF5F49CBAB4724D
            5008BB7016F6E22896D374708A54B88E66FF05BADF39435ED7F8A06513C3D8B2
            EDFE0EB87583A4105276BA5C36565736B6B761180A37C6DA585BF06E018A41F4
            7AEB360CB07815F636611326B32CD1B379EEA6AAA6718EF67F4C26E1E4C2879F
            EC8A6513A0D940601828CA9DB09005DAFB3EC351112130F01E0B57DAEEDA44E4
            7285755533F3FF1A26358BBD7C9544F45E428127778D0F6073432A0ED2E9F426
            3D15B5FD76E954F4B88AC5B0A31A5664C14632E2656EF40491E0018CAD93D996
            EF082C4F704B44A36353D7A6162E37B4789072A74BF97DF39CFAE224CF0D3E4D
            F581D15D70890B543B0497870744A190CE442263EFDE9CBDBDFED0E14A84D82A
            92D735926B6ED28932F4947D1B56AD50DF057F5E8E4D0436CE0E4A80CDE4E2A2
            1E7745F67B5A8F373EEC5193114926E6663AD0C3C48F7DAC845AC1109479A1F6
            18CCFFCADCD0F4472F4EE6BF9DDD7926A1C946E70BDD9D35AF7EFAE0A335F526
            348A4933A2A022A582E680D41AC5E9B1D8D0F7E197DE9ACF0D07F364EF301FAF
            F097D638FCCF7678DE7C5C45DD2F0C61312031B7F15B28B479FEA73F529F8FA4
            8D78E6DFFC7F001BD32F6291DFFDB80000000049454E44AE426082}
          Transparent = True
        end
        object Image14: TImage
          Left = 150
          Top = 42
          Width = 17
          Height = 18
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
            0000001008060000001FF3FF610000031B49444154388D6593DB6B5C5514C6BF
            BDCFC93939393371324E4862D3C2C4A68654694434912824582AA64A4B1151F0
            C53ED4472FF80FF8AE883EF96041A562B514510AA58AA5DA626DAD62A5750A35
            A1B9B4B1E94C3233E7B2EF7BFB10E22DDFD37AF9FDD662C147F0AF447E1C4DDE
            FDCCFE677B5F3E18BBD254E0157C6124EA6245D571E7EB6F1A1F7EF05BFBCC49
            6172B1C1908DE1DEEEFB47DFDCFEDEBBD3D3E34FC4631D44755808A9C1B906CF
            24D69632D42EDC76BFCEFFF2D517F5B75F5D66B33700C05B87778EBE3F76E4F8
            CC1B138F78559FE4DA02BD14DD0FFAF0CA14CD4509652DBA074252EA2C8F14D7
            AA938BF2EAA954375B5EE4C7D15BA31F7FF4D46BE3E3CC0149CB4038877BF606
            082B145D033E94B058BE9241720512007150DC12B607B6D6F2735FFA93E5A7F7
            4D3DFEF06EA60DDA6D07C60C5CC18186FFFCC62B5064A982140A4A2A04450FDB
            4A430746D247A7E881CAA183E190479A7585A42591B615D616051A3509384073
            8BD9EF5BC81289ACAD902512792A11DF15D0AD64D70B7E648AD319934838C0B8
            85ED04465E2C22EEF7600D004230F67C059D15820B47E621B8805602C66A6C89
            86F7508F74F9EB9B05D24422DE46511EEE40D84D417DC00F098AFD011ED8D70B
            A914F25C804B01A604E050A65C0BA42D8E2C11C8138EC220056F1BFC3F22D3A8
            EC88D661C9C1058776DAD106AFABA4C990270C79CAD03314E0D6E5649360EEE2
            2AAA132508C9202407971CD2C806AD933BDF369652E429038D2DA28A8F1B979A
            9B04D7CE2E63C763BDD04442680E21186EF1EBA7E899F62787E767575DB29A23
            EEA7C8D7241A0B9B2FB8FED34D74F584E81BEE82361C1963E64FFBFBA7F44AF2
            DD8959513BB9B2D442EB76869F3F5B80C8D926419AA63877F42AAC93908A21CD
            578EFDC12F9E2500D01F5687670AAF1CEB8B067779014558F631F8500F8CD350
            56837816974FCF412A06AD0556DB8D1FCEE79F3F57D70B37FF2E535F58DDBE3B
            3EF44E89F6ED0D228F586A6188868682750A4A4B30C16DC692E3E7F9D1D7EB66
            61E93F6D04808046E17D9D13333B833D2FF9089E74B081710606866BD53C51D3
            3F1E9E93974E4B30B9C1FC05E206B4B2BF47D2A50000000049454E44AE426082}
          Transparent = True
        end
        object Image15: TImage
          Left = 261
          Top = 42
          Width = 17
          Height = 18
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
            0000001008060000001FF3FF610000031449444154388D65915D4C95051CC67F
            EF0BE795C311860A7888348E7C2D9CCBAD450846D640D9DC5837D4CC8DE9855B
            EBBAE6D6876EDD74D34D56DE20AEA4D656CC4D670D53E29B95858893228D5041
            F99273E41CCF39EFF978DFA70BFBB0CEB3FD2F7FBFFFB33D068FC422774D6DC1
            EE96B6B2B68355BBEE37AD5F9FF0C95D66E94E227265A0B8E7F4CC8513BFA446
            FB93C493FC3F9B7DD5151DFBBE391BB91E76A490A4DF24B74F72BAA4D46139E1
            7A5DEF7A29FD4ECDDB5F161981D20CF8FB4F2E8DBBC9F443506764CF9C51E8DB
            4185072FC88D774ACE3129F5BA225375FAA8F9CD81222350F24FEDCE57CF9D75
            134949972475C8899DD0E40BD31A7B22ADCBE58E964E9E975247A5D45B52F290
            22534FEB68CD9153165E8F595BB0BBE595F71AF61AD63830085A41F125EC3F7C
            00286D12FF3517DCBBE02E0229D6060AD87FF8EABE1AABBECE7CB9B2ED80AF3C
            6CA25E50109C050CCF1DBCD50B6080E14993BBED323877FF92CC03A2BC7531BB
            29F0EC7EB3EAF96833BA06DC047719271266FE5823963F8EE171B0FCCB44C7AA
            58BD5803CE02B80BE0AE62E678D9F99CD398BD2E6FD587E640ABE026880C6D65
            B1730FB8B98087C46C0989D912223F3C45FECEAF302C13CC6C90436199B3D194
            56C0B9010A0141A21325986BEC8C995DDB223619004541312005A647E6D29C1D
            C1BD06BA0F0A13BD52816FFB788660EDF651C2234DA024C80699046F672D9813
            831B7BDCF834B0423A9443E2D663E4D78D6608F276F4121E6E010C5016724C46
            86B2FBCDD333BD9DD3E71A1CDC39EC1B1B302C1B6FF55486207FC73089D932EC
            9B158097DB7DB5A9BEE91FBBCCC9D4485FD7FBCF743F9859871B8D52F0622F86
            15CB10646D5821AF7698F4BD2D2463659C3C5EF4E9987D710C806223F0F8C7CD
            6F0C85AF6E9213CA556A769382DDED0A761F78785F1F941BF2CB59AE54727E97
            BE78ED831E7F5645E17F3E141B81D277B71EF9FCF7537BD24E3020452BA568A9
            F460B314A994BBFAA4E6BE3B943CDEFA61873FFB5FD87854E2C16B6DB31AEADB
            CB5BDBB734DE6A2A2E730B0D238B7B73E6E2D040CEF9BEE99F3F9B88F5FF6413
            4BFFCDFC0989B7A6E344E62AC60000000049454E44AE426082}
          Transparent = True
        end
        object Image16: TImage
          Left = 375
          Top = 42
          Width = 17
          Height = 18
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
            0000001008060000001FF3FF610000032449444154388D5D934D6F945500859F
            FBBEEF743AD319DA4E9A91B69162AB486B53292E50828A1A2244BB331A830635
            A95B63FC0D2E74E1C2C484A51B312CDCF885314AA910D12A3416B5800CB18ED6
            B6633B9DE97CDCEFEB4688E949CEEE3CAB738E609BB2493EFF64E1F8F454F1C4
            894E72E3719C895AA64145AD6D5DAE5D3855B2B3272FD52E5CF1C13900F17F78
            3C77E0F0DBF79F7CEFC0D1D1B1E86E810E0EA91D4A1ADA75C5EA8D063F5F2AB7
            CE6F7EF1CEECCA876F6E34CB32BE054FE41E7AFCFDC73E38FDE01B7B77D31FA1
            33011D818B023E09901174F6251487F3A9A9570F3D1CAD0FF4CCDDF8FA2B0150
            48EF2C9E3A7866E6D1D727C614010604B5B2C118F79F2DD65A442A2012875186
            E2FE2EFFCA53AFBD94001CE97E767AF2893D638DAA25DE1BB37251D2AA59A4B4
            286DD1DA6094421BCDAE8339CAF355D285383A343CF556924DF2B9A7079F7FAE
            6322C2F70A42CA432610C7D0A105C208621B913209290BB2651939DC47B32AF1
            F5A83FC145997494BDAF513514F6256406120A93A9EDE5DC5608D05CD7CC9D2E
            E171242244023AA24645D3B991E2FA6775C65EE8A1BD6969540CC107BCF70411
            189CC873F9A332CD9A424A855292241068CA366DA9E91AECE6AEA33952194175
            C9B2F45D1DEB1CD63A3AF2823BF7ED60CF2345AC75CC9FB989328A2444CE575A
            FFA866BD279D6423327D090085914E88C148870F9E7CB1832811F40C6600F0C1
            D25692C4A26A8BB585B3F7FED97F2CB880DAB27CF3EE124A3ACA0B9BD42A6D8C
            33DC319A255388183FD2CFE4B121B4D234DB6D621F9CCF75F6B67754469E51EB
            36BA76768DAB33AB2C5FAB51AFB69052225B92B57295BF7EAB509A5F66B954E1
            FB8F7F6575756D360658D1A5DF7BC4D0A8BE9A19DBF8A389D61AA535DA288CD5
            98A070686C906CD5B7B8B95066FDEF5AF54AE3D3E331800BD6364465B6570C4D
            46263DECBDC57885F11A1B3436288C9758AF704ED26AC8EAF5E6C5E945F3EDCC
            ED2FD44CA559D23F7E92D0D59136DDFB7DB08943E350382F5146D292ED506B6E
            CE2D36CEBFFC8B39F7A5C705B17D28B1484583E97B7615187A71B778A0A72FBB
            33529AF093FADC18D13857D23FCCEAD06EDDCAFF0B2551CBA27FFF939A000000
            0049454E44AE426082}
          Transparent = True
        end
        object cxLabel8: TcxLabel
          Left = 68
          Top = 42
          AutoSize = False
          Caption = '- '#48120#51217#49549#44592#49324
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 17
          Width = 77
        end
        object cxLabel10: TcxLabel
          Left = 391
          Top = 42
          AutoSize = False
          Caption = '- '#50868#54665#51473#44592#49324
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 17
          Width = 77
        end
        object cxLabel9: TcxLabel
          Left = 391
          Top = 18
          AutoSize = False
          Caption = '- '#50868#54665#51473#44592#49324
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 17
          Width = 77
        end
        object cxLabel7: TcxLabel
          Left = 68
          Top = 18
          AutoSize = False
          Caption = '- '#48120#51217#49549#44592#49324
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 17
          Width = 76
        end
        object cxLabel6: TcxLabel
          Left = 6
          Top = 42
          Caption = '['#53440#49324']'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxLabel5: TcxLabel
          Left = 168
          Top = 42
          AutoSize = False
          Caption = '- '#45800#49692#51217#49549#44592#49324
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 17
          Width = 90
        end
        object cxLabel4: TcxLabel
          Left = 279
          Top = 42
          AutoSize = False
          Caption = '- '#50724#45908#51217#49549#44592#49324
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 17
          Width = 90
        end
        object cxLabel3: TcxLabel
          Left = 279
          Top = 18
          AutoSize = False
          Caption = '- '#50724#45908#51217#49549#44592#49324
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 17
          Width = 90
        end
        object cxLabel2: TcxLabel
          Left = 168
          Top = 18
          AutoSize = False
          Caption = '- '#45800#49692#51217#49549#44592#49324
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 17
          Width = 90
        end
        object cxLabel1: TcxLabel
          Left = 6
          Top = 18
          Caption = '['#51088#49324']'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
      end
      object cxGroupBox4: TcxGroupBox
        Left = 480
        Top = 0
        Caption = #49492#53952#54788#54889
        TabOrder = 1
        Height = 69
        Width = 329
        object Image3: TImage
          Left = 219
          Top = 16
          Width = 17
          Height = 33
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D494844520000001A
            0000003B080600000065BA9A5D0000001974455874536F667477617265004164
            6F626520496D616765526561647971C9653C0000032269545874584D4C3A636F
            6D2E61646F62652E786D7000000000003C3F787061636B657420626567696E3D
            22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B63
            3964223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A
            6E733A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F72
            6520352E332D633031312036362E3134353636312C20323031322F30322F3036
            2D31343A35363A32372020202020202020223E203C7264663A52444620786D6C
            6E733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F30
            322F32322D7264662D73796E7461782D6E7323223E203C7264663A4465736372
            697074696F6E207264663A61626F75743D222220786D6C6E733A786D703D2268
            7474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C
            6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861
            702F312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E
            732E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F7572
            6365526566232220786D703A43726561746F72546F6F6C3D2241646F62652050
            686F746F73686F7020435336202857696E646F7773292220786D704D4D3A496E
            7374616E636549443D22786D702E6969643A4138373945343238333737393131
            4536394645454230463638413234314244362220786D704D4D3A446F63756D65
            6E7449443D22786D702E6469643A413837394534323933373739313145363946
            4545423046363841323431424436223E203C786D704D4D3A4465726976656446
            726F6D2073745265663A696E7374616E636549443D22786D702E6969643A4138
            3739453432363337373931314536394645454230463638413234314244362220
            73745265663A646F63756D656E7449443D22786D702E6469643A413837394534
            3237333737393131453639464545423046363841323431424436222F3E203C2F
            7264663A4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A
            786D706D6574613E203C3F787061636B657420656E643D2272223F3EEAF10C80
            00000E6D4944415478DAA4585B8C5DD759FEF6DE6BDFF7B9CE9C33638FEDB1C7
            8E6F6952A749DD12B5124D824454B5940AA13E04082A12126AD420848A8007F7
            011521019578E00190820A6A1E5AC51409BF10276DD3D697406C4F125F928CAF
            733B733BB77DBFF1ADE3E3C84AEB26215B5A73CE9CB3F7FAD7FAFFEFFBFE6F1D
            E5F71FFB147421464355544001CAB21C8DA22850ABD7F18D3FFB739CF8CE73F8
            F5A79E4263D74E1B15B74430B40A45EB2EFCEC47F8CE5FFF15F67CE2413CF1E5
            A770FCF8714CEEDE8DAFFCD133C8FD006518A1E05C6269E9166CD7836559109A
            C680FA28A87C1F85218EFECAA3186C6ED46D9757BDFEE934CB3EA30C875B4559
            68591C894B67CFFC1B5778C5B46D07C000E305BEF712BFF3B56731FFEA192C5C
            BA888D4E07AAA6C2AD54F9AAA1596FB4F6EDDBFFCC95F3E79D951BD78FBCF4FC
            770F2B65D6AC562B6692A7585F5D5DBA7171FE70A5513DBB63CF7D22CB8B5C18
            E6F3B6E3BE0345A607EF4654648AE415473D5C797D1EF3674EE3CCC9FFC6EACA
            F2B4AE6A7FF289B9B93FCE3B4B9AE87761643E1C5D41120EE0D69BD01DBBCC55
            155D0D4A282A48ADE6CDCAAE5DAF3DFAE493C71F38FAE88932F4570AA64E4610
            40CA9712A6E5E081473E331A07E6F61EF8D6B1BF782E58BC7AA8B3B9A86DD752
            ECAC9830151F4659C06B9980EE43D7636510C6187606AC83814B9D6487B9F7F0
            CEBD0F3C30373B7DF54DD3B257846EC8A2E376F5EFBAD617AF4DBD7EFEB56F14
            83FED13692DA23B32DCCD5052AC5066A9CBC623040D185A37287FCCCC9B6B0CB
            D4709FCBE194CAE0F2057CF7DB7F87CDCECA6342E893E53880BA7E6D0151BFFF
            6E3AAFBEFDD6E75F3CF15F8F171B6BEAFDDBDB1041176AB805534D09901C8A28
            9121479286CC430283A9F4CA186238C0A196877DB640EFAD8543AFBD72EA0F85
            AE3F5516C5A838E2F2A933508506A75A45B5DD6A6C2DDDFADAFAC2C28E8F4DB5
            30E938C807ABD014B92805A984A92A1888FFA92674C341A92AAC558C8A562266
            BD661C1B373B1BDAC2E9B3B3EB4F3EF9447D7ADB3FA7793E1429D163EA82050E
            B178F1F2A1CD1BB71ED293186D6F0A659641982E03A808E46E54E65A1128341D
            85EEC2B3EBD0F8AC5D0BA0C7259C4485621758DAF4912C2D21EBF973DA4E634F
            9C06F362E9FA3568E48D619AA8D61B8D5B57AFDE6401777659E46ACD86A44456
            08E45C504C0425212723D7E4E25AAA4142D7A0DB06BCBA8BC33BF660F55A0717
            165611C411FC8DCDC5344CB42429B83C55BB0DEF30C05013699CA5694C0A0CC8
            A32B7E84B5B50DF8698690BB2C796B69E8D0CC12554FA029524C28098AB80F87
            00D94A0DB8449F52ABA11786659EC4DBD2383E420A5D165E7B02FDCD2E324E86
            24094A5DF71243C1357F88B58D2E56B742442C9153613D140DA6A8A2E279085D
            0B9BDCD916D3B8B112E2D695B7F1CAFC220E6F6F2124E7CC464B19E6D9814C55
            BF9067D9F7C4635F7C82B215A0B3D4C1DB6FBED5ADB55B932BFD01265A2DDC8C
            2228758F75301195DC89E1C2B05CC0F6909A0A4A93F5F26A28277623AAF6F0EA
            EA2A3AD1004DA3C461EA9D365183E2BA178BA11FAB6992C2B22D345AF529D331
            0EF507BD9E37D9429739D63C4E4A22C7A9CE3A39500B0B45484044E46BAEC02C
            B9D59C79B7DA882D0F49DD4244620794BDCC735058C69BA98A93B92552214120
            84F8ADA59BB7BEE0F7B60EF65697239B0FC7490EAD50D10BFC118C4D5B21C063
            A884B7A22544A04DEAA948720A7996B08629D44C83281D341A0DF48649F1C6FC
            BC1A2AFA23DB66667E2C32A24ACDD32BAA59359A93D30F0A4DB724840D8D3B48
            026A54C185684C1F559980480B123637909536945C258F74A8651F22E17D8902
            8780D0628DBB57D4CDD5F5BDEAE54B9F5F5B5CFC477173C0D56AE53B66DDF9CF
            F6AC32E1B4CFFFDAD2D68F4635728549EE0F9172D5E93084412D5018B80C0873
            92D81175D4340576D3C39ACBF6A23AB058BBC1A08BB9837B3137B7CFAE4D4F75
            82208804B3ACC5B9B2BD529DB04237BCD90DD232D374A524CB059520DEDC1A89
            6EC9894D4B8CDEE7941C4FA9C3B118CC771112A1DAA043D1D560905B41CC9D67
            39EACD09ECD83367336BD342E59486E5F4AE5E3A775ED7CC03D0D45B9C6A6732
            ECC22B52EC761880BCF20CA6532D880D1B8EEB32680957F55163DAAA8E8A62AA
            82EE7A1F36A5A897C608194C21F4A338212D452C979812A8EB57CEFDB4E3D59A
            FB55357B5A27098D2CC2C1A9494C6DABC1CC23D814539D69626FE3EE0AB8AEC0
            4445C78E0333683FF430563A9BF8C9C99FE2C2E5EBE460C81662C176BC0B86B0
            5EC88A6C5DC84E9A4441C1B6AC46FE60BDE2A86D3519C03655B4B41833540227
            09611609C5959C26C204DF383995210B510F56D12E02B4B63530DC3B8373AFCD
            93FCF968E75CD4A9348A64AB87E82C5DC7D2F52B2486AEE8B6B92BE6A464B26C
            5410217B0E05D58A289A5260D9C34C3E34FD29793B61FDEA0083B7125CD8A24C
            C1C4D5351F5A1E234F8864D6380EA2BC9F6FB5B32CEF88FEE62ABA1B4B301D2F
            2708B2A050FBA9625723062C893643A285E9D2A520CAFEC00007BFCE36C1CF2F
            FD01FF653DB6566E617590A09B18606A407093672C68C10AA4D970D4F8AEAD6C
            2237EA249E8A5CB30C3F67DFB66D50009069546DEE8894403E16815DBFADC0DD
            4DED9B05267F43EE5B835B64F0F8564B13CAA5AC9F2EB3A2289AF0A228A09087
            1071C2652ABA5CA21274FD41916B0D02858801559BE961ADEC9A8AC6017ABC83
            C0FEAF96EFB6FDEDBFC725DB19ACB781E11B24EC4081263D217D489AA64A9C44
            EB45912BB57AA3149E61B06805995ED211A9A64E9BC480C8193B0A327CF69B29
            0E7F39C52FBA44A5C4F457434CF3FD7D1C53DFD370FA1985224DB961BA4D4D13
            078F3CC4BBCABE2A73AD1379B6AE17139EEB2A693A242C681E990AA6EDCC3FD8
            587C05EF7B754E0B9CF89686FE90A2CBC2EA1ACA66B33947DF208461A8AAC732
            9BB278D430C7B427D4A42827BD2AE839D813A90C14CB17FF54C1CAE97B07E9FD
            AF81537F59451469AC27E09163964549328C7691E553D99010AB9835DAA80A26
            84ABE6C368A36A57D8D2B8438A1341C7165180DCC6F97FB977A0C5E79BC85393
            48638D28019A605D2D4B318426D7DA2EF35CA5F7A002B3CF90EEF42499611A96
            1AB317D9B4C692782A9B5E2C913473EF40622A27220D0280D5905A43E9324D0B
            59CC090D2B13BA5D8A34EB3145029A66248EA55AD08785E2646A16306D845E49
            96D2CFC39B2E46829A9215D75F606FE25267BFC420B4F6625BC8D6C15EC42ED7
            901C20905C4BA1D70F7FB0F0C64FE64DBB528A8C046368BAD661D99E9E6EC6D9
            20D16DC54AFC62A4D6292D94C5D5EA5A84F37F03DCF83EC3252C38FBDEC2F302
            B3BFC95479D96D72139C2AA76B4D9A94B0228FE39E1D0783FEB0BB0A21F32A8D
            3ED7A82CDD5A1AF8BDA19EFAE4AC7ADBBBCA74300CCEFE6D0683964B824423B7
            44C6E77A26AEFF878E3E0367ACA734A2524932D6B58873CDF59A5A6D720F6BC7
            635012A4A3E2318E35E80FB292DA39A49CD89CB1C8E8C674878D8F2708FA8392
            AACEF307E55E1D413F67BA14122E28E567BC97FEB05635B0ECC78807A112FAFE
            72AB3547419B28457FBD07621DBA65C4F22F71832C2310E84A130A6342BF1072
            856C5A0C96B06EA5ECB16CED2A4DA73EB2CB197D5E44EE999EC943808EA58E4C
            153BAFDB9CD60DDBC9D3D817B28925510CBF3B28BC4AD5EA75FB59D5B3E9D97D
            2C6DF988D929D532638DD8F4B87393164BBA26D90C1D06F7C8CC68480FB83E40
            DC63AD18D46D36B87323B52D27CF92A8546852C5DEFDF7F11016817D9D3D5F78
            3CB5D127126D5CF1CA20C62A3D1F3736E2944500543C9D5D55BE3AA8B36D6FA7
            C7DB58F1F1C6CD75A2BAA4670026F64C21D58C4255B50962A052A44920EAB506
            4A3E99E7B99B664967FFE143E2D40F5F82E53A701D8B844DA885E9E85C1A5068
            057721C8028744CFA8FA9959C17ABA8C9C8DCED22C04894FF392A03EB5DDCC15
            C5A6F8D80A3929029E7304F942C4A83A137AFF831F53F61D3A84A51B37D01B0C
            516D54E0476C843CB9F1A8C30EAB61E8670481CF3E16E2E675A0CF3497349A11
            3934C80B7CF2E0FD98D835ABF84974B6B7B6BC65D03A8B41CCAEC81C2AA932E4
            C95C69D2277CF689C771E1D5FF41BFDF63CA32B879C683178F5FD43D79BC5089
            B2C897CD9081E92514BB49E29A9C47C5E1E90771E0E8C3B027DB693F8AB22C4D
            FA7281A25AAFF32411CA2349E96E6FB3ABE4CB1FFFE4C3DB2CA66D656515913C
            4590657C806864C02024280C5A316920520612289966C774A429C3CCEE1DD8B1
            6F379CC9D645DBAB2DC7C1B02CF21C627A760725A62020621E7BC4A9322B7E50
            9F0CBF3233B7B76AD7EA8A3CAE30D7F089AC8C3BB3A87DD2A4E4DC61E2D3C9D2
            736B0C4492C120B427A62630B56BF69D46ABFD4F2CEEC93491C71C0BCAF2DA8D
            91304A33C1FEAE077DFF4077A3F7789445ABC2B27E776BABF7E924E7612ACBAA
            526CA9222B123896617A8A3C6116A2671A26CFC50CE9B95A9CA6FF3EB363FB8B
            B66D9F90F7F27C34323BE28E028F7F96E171B3783D49E2D7AB130DC76B3416ED
            4AF528091A6FF5BA8BB44F7BF2B2F075A1B7F3345D9E9C6CCFA864B1A98A2A6D
            D81AD539F603FFFBEC752BA31F31A4BB759CDB0A7F2FE9971D9D36E915DEFC63
            B9133EA353FB527203296BEA542A2677421DCAC880A45035D58C9284DF2B8546
            1ECA20A3C58F7FAE79F797930F72BDA4286C0C788EA3C6F1438E2F7DAE2CBB1F
            E4D90F148801EA7C39C6F1F5F776718EA719ECF8FBCDA17E8020BFCA97737705
            F9264763BC23B9B31778CFB73FD28EC613DC09707EBCFA73777DFF2C5FFEFEAE
            EF652AAF7DE0409C805E14321D1FBFB30B4E70EC1E8B3932BE77F697A5F25EA8
            93057E76FCFEDA9D558E1720C17064FC7A4CEE701CEC698EFA78FCFFC070579A
            8E8DEB727EBCDB9F4BE74701439DE3E5712DE44E3FC7898F8C412183BDCCEF9F
            FEA860B89B37FF2AD379376FC6887C6E5C9F9FFBFEC3043A32CE79F73D683B72
            E7FF31C7EED4F3657EFEF247AAD12FD8C1875206F5430491407849A29083B611
            1281D7C6C1DFFFBAF363FABDC6494EC8718EA3CBF1EC5D9FD7398E73941CC7DE
            6F9E0F95BA5F56C77BD5E6CEF57F020C00895C6741592ECE900000000049454E
            44AE426082}
          Stretch = True
          Transparent = True
        end
        object Image4: TImage
          Left = 44
          Top = 16
          Width = 17
          Height = 33
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D494844520000001A
            0000003B080600000065BA9A5D0000001974455874536F667477617265004164
            6F626520496D616765526561647971C9653C0000032269545874584D4C3A636F
            6D2E61646F62652E786D7000000000003C3F787061636B657420626567696E3D
            22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B63
            3964223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A
            6E733A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F72
            6520352E332D633031312036362E3134353636312C20323031322F30322F3036
            2D31343A35363A32372020202020202020223E203C7264663A52444620786D6C
            6E733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F30
            322F32322D7264662D73796E7461782D6E7323223E203C7264663A4465736372
            697074696F6E207264663A61626F75743D222220786D6C6E733A786D703D2268
            7474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C
            6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861
            702F312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E
            732E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F7572
            6365526566232220786D703A43726561746F72546F6F6C3D2241646F62652050
            686F746F73686F7020435336202857696E646F7773292220786D704D4D3A496E
            7374616E636549443D22786D702E6969643A4437383645443643333434443131
            4536393137434433423730393934344131412220786D704D4D3A446F63756D65
            6E7449443D22786D702E6469643A443738364544364433343444313145363931
            3743443342373039393434413141223E203C786D704D4D3A4465726976656446
            726F6D2073745265663A696E7374616E636549443D22786D702E6969643A4437
            3836454436413334344431314536393137434433423730393934344131412220
            73745265663A646F63756D656E7449443D22786D702E6469643A443738364544
            3642333434443131453639313743443342373039393434413141222F3E203C2F
            7264663A4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A
            786D706D6574613E203C3F787061636B657420656E643D2272223F3E5F75659C
            00000E654944415478DAA4585B8C5DD759FED6DA6B5FCF3EB7993933B6677C1B
            3BF1254DEA34A9295191681224A2AAA8201EFA1050784242AD08E2A1085ECC03
            8227E81B0FF0105450FB00AA5524F2429DB44D8BEB04C5F624F12589EF73E63E
            736EFB7EE35BC7C7954971E390335ADEC7E7ECBDFEDBF77DFFBF8EF883677F05
            A652E3258504045055D57895658966AB856FFED99FE3D56FBF82DF7CF145B4F7
            ED7551AF5508474E298CDEB5FFFA11BEFD377F85839F7B02CFFFCE8B387DFA34
            660E1CC0D7FEE81B2882105514A3E45EAADBBD03B7E6C3711C28C3A041736C54
            BF8FA308277FF5190CB7B75A6E8DAF56EB0B599E7F518C463B65551A7912ABCB
            6F9EFB677A78D5765D0FC01013073FFA52BFF7F597B1F4D6395CBB7C095BEBEB
            908644ADDEE0D5C054ABDD397CF8D16F5CBD70C15BBD75F3C46BDFFDCE7151E5
            538D46DD4E8B0C9B6B6BDD5B97968ED7DB8D37170E3EA2F2A22C94657FD7F56A
            1F42E8F4E0E716854E917E25711F57DF59C2D2B99FE1DC99FFC4DAEACA2E531A
            7FFAB9C5C53F29D6BB861AF460E5013C53208D86A8B5A6607A6E5548899E0111
            A93A3267EA767DDFBEB79F79E185D38F9F7CE6D52A0A564BA64E5B5040C64B05
            DBF1F0F8D35F1CAF238B878EFCF5A9BF78255CBE7E6C7D7BD9D86364D85BB761
            8B005655C2EFD88019C03413318C128CD687AC8385CBEBE9827DE8F8DE438F3F
            BEB87FD7F5F76CC75D55A6A58B8EBBD5BFEFB5B97C63EE9D0B6F7FB31C0E4ECE
            226D3EBDBF83C59642BDDC42939BD72D1A287BF02423E4675EBE837DB681476A
            5C5E2586572EE23BDFFA5B6CAFAF3EAB9439534D0CC8CD1BD7100F063F4FE7F5
            0FDEFFF20F5EFD8FE7CAAD0DF9D89E59A8B00719EDC09619015240A80A390AA4
            59C43CA4B0984ABF4AA046431CEBF838EC2AF4DFBF76ECED37CEFEA132CD17AB
            B21C17475D397B0E5219F01A0D34663BED9DEE9DAF6F5EBBB6F099B90E663C0F
            C5700D86D04E09641AA652D110FF276D9896874A0AD62A41DDA890B05EF39E8B
            DBEB5BC6B59FBDB97FF385179E6FEDDAFD8F59518C5446F4D8A66281232C5FBA
            726CFBD69D27CD34C1AC3F872ACFA1EC1A0D48843A1AC95C0B85D230519A35F8
            6E0B069F759B21CCA482974A08B744773B40DAED22EF078BC65EEB6092854BAA
            7BF3060CF2C6B26D345AEDF69DEBD76FB3807B7B2C72A3E94253222F150A3A94
            104169C4CDC835ED5C475A247413A66BC16FD5707CE120D66EACE3E2B5358449
            8C606B7B398B52234D4BBA278DBBF08E428C0C9525799625A4C0903CBA1AC4D8
            D8D84290E5881865C55B2BCB84615768F80A532AC3B4485126037804C84E66A1
            46F4896613FD28AA8A34D99D25C90952E88AF267A731D8EE21E76648D3B0324D
            3FB5046E04236C6CF5B0B613216689BC3AEB210CD8AA81BAEF23AA39D866643B
            4CE3D66A843B573FC01B4BCB38BEA783889CB3DB1D312AF223B9945F29F2FC5F
            D5B3BFF53C652BC47A771D1FBCF77EAF39DB99591D0C31DDE9E0761C43B47CD6
            C1465C3112AB06CBA901AE8FCC16A86CD6CB6FA29A3E80B8D1C75B6B6B588F87
            98B22A1CA7DE19D34D885AED52390A1299A5191CD741BBD39AB33DEBD860D8EF
            FB331DF49863C3E7A624729299AC9307593A28230222265F0B01BB62A805F3EE
            CC22717CA42D0731891D52F672DF43E958EF6512670A47654A834029F5BBDDDB
            77BE12F4778EF6D75662970F276901A394E887C118C6B62B08F00492F016464A
            04BAA49E445A50C8F39435CC207303AAF2D06EB7D11FA5E5BB4B4B3212E6D3BB
            E7E77FAC72A24A16D9556937ACA9995D4F28C37434842D8311A42135AAA42306
            D347552620B292842D2CE4950B5148F2C884AC065029EF4B053C02C2480C462F
            E4F6DAE62179E5F297379697FF5EDD1ED25BA3FAD06E79FF3EBB5F4C7BB3177E
            A3BBF3A3718D6ACA26F747C8E875368A60510B040D5721614E127BAA85A621E0
            4EF9D8A8B1BD480F0E6B371CF6B078F41016170FBBCD5D73EB6118C68A593692
            42ECA937A69DA816DDEE8559951BA6A8C872452548B677C6A25B7163DB51E3F7
            0525C7172D780E8D05354444A8315CA7E81AB0C8AD3061E47981D6D434160E2E
            BACCDA2E25B9A5E578FDEB97CF5F300DFB080C79875BED4D473DF86586031E0D
            9057BEC574CA92D870E1D56A345AA126033499B6862751CED5D1DB1CC0A514F5
            B304118D09423F4E52D25225DAC58C40DDBC7AFEA7EB7E73EA5129F3974C92D0
            CA631C9D9BC1DCEE26EC22864B31359926F6364657A2565398AE9B5838328FD9
            279FC2EAFA367E72E6A7B878E5263918B18538703DFFA2A59CEFE565BEA97427
            4DE3B0645B967130DCAC7B7256A643B8B644C748304F25F0D2087699525CC969
            224CF18D575019F208AD700DB36588CEEE364687E671FEED2592BF18474EA7CE
            6671AC5B3DD47AF726BA37AF9218A6305D7B5FC24DC964DDA8A022F61C0AAA13
            5334B5C0B287D9FA21EABE453E211B62F87E8A8B3B9429D8B8BE11C028121429
            91CC1A27615C0C8A9DD93C2FD6D5607B0DBDAD2E6CCF2F08823C2CE520136E23
            A6C18A68B3345A982E530B2255AA92775B9924D7A8ABB0588F9DD53B581BA6E8
            A516981A10DCE4190B5AB202593E1A0F273756B721AC168957C2301C2B28D8B7
            5D17D130426E50B5C97E52028528C6E2ABD127B8F4954FF01303B53287CF1418
            594AB9D4F5B374568430941FC761A8A9AE92946E0AFACBA7C35E302C0BA34DA0
            1031A06A93F5ACD5D843C148A4364492F24DCAABE24D2E25DD2E724A52A10710
            187A26E41C92659948D278B32C0BD16CB52BE55BB4CEA69357152722699B1C93
            6810056DC7610EA36533AA72DC5DAB527023228F60C8E965A16738D670FCC7E8
            2138E8F09E7044B961BA6DC350474F3C59E79303A5BBB4A90747214AD7B26A22
            CB4684851F471937E5065501FDA7F5733C373132A25B9BD175A0E032A56C8C29
            231A45290623C6CBC29A06AAA9A9A945CE0D8ACF4AE9B3CCB64E0D35CCB3DD69
            9996D58CDFA061668AE4CBAA6C3C17943A6DF2EEB82C18A160165839F25BD74F
            674551AA0C1D107C72CC71284996355BE6C55C3E0A4B55B79B6CD7B95E321FC5
            5B0DB7CE964629513A3554F14C97FCEE60628C8D8CC1A733336EEF95A5DBAE03
            CD152123E80C1A4AC2751C612943FB3A9B17C515CE1E2C2EFB0C73C39924B76C
            CB91097B91CBD158134FB2E9256939E615CB38469C311ECEF48C4DF49506155D
            C726090056432382D265DB0EF2841B5A4EAE4CB75259DE1F17D230ACD473A403
            73540A8FD1851454A2AA224BF5667ADAB4985E93F4D0FC61F150B07D8C0C4E3C
            74801A0AC52ED7D62C20906A0E935B46DFBFF6EE4F966CB75EC99C044B930061
            B85DB99E9A4AF2616AB2C9A5AC8356EB2CD5F0B6C83C7221E75CA76B53946364
            645A928C1C9919DF2537412713A0E3DB94B0B24892BE1B8783C1D6CA07A40273
            3B2E3093D2BDD31D06FD919905E4ACBC3BBBEA74587431E79F46A0D0EAC0B42A
            1AB6329B75A142D3815CD38C116A25C959D732298C9A3F6534670EF21E1E83D2
            301B178F769CE1609857D4CE11E5C425ECCA9CD398E9114D629C9E8AAAAED190
            91AC1AFA05512648B8B0D29FF15ECE87CD8685952041328C4414042B9DCE2205
            6DBA5283CD3E8875988E95E87F75A9F39C40600D524237E5BC10D143362D1A4B
            59B76A0C04C3941C3ACDF1B89C73CE8BA92E365356A7DA77D7D7A009EAD6A676
            9996EB15591228DDC4D23841D01B967EBDE1F47B83BCE1BB9CD90374770224AC
            B2AC2831069B1E23B73962E9A94937438FC67D32331E7106DC1C22E9E71CC1D8
            10A7DA8CDCCA5CC72BF234A66A716839F4E8233C84C504035B81543E4F6D9C13
            89367ABC3A4CB0C6998F818D39E570F0A9FB26BBAABE7A68B16DEFE18CB7B51A
            E0DDDB9B4475C59901983E3887CCB04A298D6962A05E6669A85ACD362A3E5914
            452DCBD3F5478F1F53677FF81A9C9A879AE790B029599F8DCFA52151AE188522
            0B3C123DA7EAE7761D9BD90A0A363AC77010A601879714ADB93D7621846B49E9
            0A0D9E90E71CADC2448C3499D0C79EF88C387CEC18BAB76EA13F1CA1D1AE2388
            89389EDC78D461872577024A6A11B08F45B87D131830CD1507CD981C1A12FA9F
            3FFA18A6F7ED17411ABFD9DF58D9B1383AAB213944A1A0F08A114FE6628A73C2
            AF3DFF1C2EBEF5DF180CFA4C598E1ADB40CAD9BC48B53A131844591CE86648C3
            6CB7C29D82F2ECB1EE1DDFF5048E9C7C0AEECC6C3688E33CCFD2817650355A2D
            9E24227D24A96A7B66DF2D51AC7CF6F34FED7698B6D5D535C4FA144196F101A2
            9106C388A0B0A02599D66948A1629A3DDBD34319E60F2C60E1F00178339D4BAE
            DF5C49C25155EA5EB56BFF0225A62420121E7BD4D92A2FBFDF9A89BE36BF78A8
            E1365B421F57986B044456CEC81C6A9F1E520A4698069C6439731B34A4FB8845
            684FCF4D636EDFFE0FDB9DD97F6071CF64A93EE638102B1BB7C62D5A0F13ECEF
            6638088EF4B6FACFC579BCA61CE7F77776FA5F480B1EA6F2BCA1C5962AB2AA81
            E358B62FF409B3547DDBB2792EA649BF662459F62FF30B7B7EE0BAEEABFA5E9E
            8FC6C38EBA771A9FFC2CC3E366F94E9A26EF34A6DB9EDF6E2FBBF5C6491234D9
            E9F796393E1D64B70D4C65CE1659B63233333B2FC9625BAA06C7B00DAA731284
            C1BFB1D7AD8E7FC4D0D3ADE7DDFDE5040F78E98ECE31E90DDEFC631D099F31A9
            7D19B9818C35F5EA759B9150877232202DA521ED384DF9BD280DF2703CC08CDB
            7FF9BF7F397998D76B427C959757B89A5C3FE4FAEA97AAAAF730CF3E94211A68
            F1728AEB8F3FF2559FEB251A3BFD717BC88730F2EBBC9CBFCFC85F72B52711E9
            C8BEC77BBEF5A9229A6C70CFC08589F7E7EFFBFE655EFEEEBEEF752A6F3CB421
            6E7080179D8ECFDE8B821B9C7A80332726F7EEFF65A97C10EA74815F9EBCBF71
            CFCB89031A0C2726D7533AC289B197B85A93F5FF03C37D693A35A9CB8549B4BF
            90CE4F038616D7EB935AE848BFC48D4F4C40A18DBDCEEF5FFAB460B89F37FFA4
            D3793F6F26887C65529F5FF8FE93183A31C979EF23683B71EFFF138EDDABE7EB
            FCFCF54F55A3FF23824FA40CF21318D140784DA390EBB7B934026F4C8C7FFCEB
            DE8FE90F5A67B821D779AE1ED7CBF77DDEE23ACD55719DFAB87D3E51EA7E591D
            1F549B7BAFFF1160006934A374CCD099CF0000000049454E44AE426082}
          Stretch = True
          Transparent = True
        end
        object Image5: TImage
          Left = 299
          Top = 16
          Width = 17
          Height = 33
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D494844520000001A
            0000002D0806000000B0357BDB0000001974455874536F667477617265004164
            6F626520496D616765526561647971C9653C0000032269545874584D4C3A636F
            6D2E61646F62652E786D7000000000003C3F787061636B657420626567696E3D
            22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B63
            3964223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A
            6E733A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F72
            6520352E332D633031312036362E3134353636312C20323031322F30322F3036
            2D31343A35363A32372020202020202020223E203C7264663A52444620786D6C
            6E733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F30
            322F32322D7264662D73796E7461782D6E7323223E203C7264663A4465736372
            697074696F6E207264663A61626F75743D222220786D6C6E733A786D703D2268
            7474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C
            6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861
            702F312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E
            732E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F7572
            6365526566232220786D703A43726561746F72546F6F6C3D2241646F62652050
            686F746F73686F7020435336202857696E646F7773292220786D704D4D3A496E
            7374616E636549443D22786D702E6969643A4132304531454437333737393131
            4536393945413946304343303434323431312220786D704D4D3A446F63756D65
            6E7449443D22786D702E6469643A413230453145443833373739313145363939
            4541394630434330343432343131223E203C786D704D4D3A4465726976656446
            726F6D2073745265663A696E7374616E636549443D22786D702E6969643A4132
            3045314544353337373931314536393945413946304343303434323431312220
            73745265663A646F63756D656E7449443D22786D702E6469643A413230453145
            4436333737393131453639394541394630434330343432343131222F3E203C2F
            7264663A4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A
            786D706D6574613E203C3F787061636B657420656E643D2272223F3ECF9BA63C
            000009404944415478DA8498DB4F55F915C77F7B9F0D9C73B85FE422838AA2C8
            0451C7CBA8D587C24C9A74E243933E34B16DFA561FDA87A626FD377C6F1FFA20
            6DCDB4E9C4269D9A89A6897598165398422118010D204740B98A1C2EE7F4FBF9
            B1D7093535DDC966EFB3F76FADF55DDF75F9AD4D70E3C60D1745912B2E2E7661
            183A8E7C3EEFCF5C2EE72A2B2BDDB56BD7DCC3870FDDC58B175D5555554AEBF3
            DBDBDB492D5D9A9C9C74B76FDF76C78E1DF3EFFBFAFADCBE7DFB5C7777B7D31A
            B7B3B3E375454F9E3C71151515AEB4B4D4151515798318E6FEF5EBD7EECC9933
            5CAB92C964692A95BA20C1CB02B028E18414454F9F3EBD1504C1E3929292B40C
            AF1AC0B78FE8FAF5EB6E7474D48D8C8CB8E9E9699748245C7575B537565757B7
            6FFFFEFD3F9D9A9A4ACFCDCD9D7AF4E8D1FB5254934EA74B40BBB4B4F45C1EBD
            5F5E5EDEDFD0D010C9C08E00FE4E46C7651C7A0A160310706C6C6C38297450D1
            DFDFEF6666661A25F4F3CECECE9FADACAC243637373D0D78BCBEBEEE2995C23C
            F2920DA05DBFA76A6A6A064E9E3CF9D99123473EDFDADACA20E33D32375170F4
            E8517F363535B5DFBC79F3D732DC216489B2B23227059E12143636367ACFE575
            F0E6CD1BB7B8B8E8A4D489C6F70E1D3AD472E0C081C37A36229D1998014C2845
            FFC5E5AB57AF1A24F00BC5E5BCE25649906B6B6BBD371861BD79C7150AA19A04
            1080606C6CCCF5F6F63AB1D02D307532E20D842F5FBEF4B41985994CE6937BF7
            EEF52C2F2F87C78F1FF7CAB2D9AC3760A030C233AE2006001EB5B4B4B8E6E666
            373131D1313E3EFE6319FA7E7EF770648D5FA8AC22F3AA65E027CAC4F7DADBDB
            7D1C50689E986228E4AA2C2C300195ACC1B3E7CF9F27A4E3E08913273E5246FF
            4A726B915102A2F9F9F90E65D2691429E3BC4200B0C6BC612D4A157847ECB867
            8DC55A19891E32129D8705A855F243D1C2C28205D67B24EAA6A4A4657575D52B
            000071E08462CB3CDE4109C6308277D08601D1E6D72B5166744D4826880C29B1
            10DA2D0E0BF4ECECAC3FD7D6D6FC6914A1148F45B3CF460A1BA0280704EF9575
            748F26A93B254063111D81852CD2C375192BE39E9A522DF913A36A3D9E36320C
            45C48EB40628B5373030E0DB504747877FAE7581F4B50BDB5579FCFB4801F342
            A0136D4B4A803A8CA81EA80BCFB9C5822BED4A9DC03F873EEED5157C0BA3CFD1
            5D5873E5CA156B67A362281B829EBEA6850D7AD8A1D82CABED504F5E31E82DDB
            5867696D0771B23E4982BC958523BABDAFFBAD8805BAF9AE145F556B39AEBADA
            404005E7854916505BF6A1C0D29D230EBAA79F03A3070F1E74029C1333A1809C
            551C1F708382C7525A2CDABA746DC280D16548B9C71B1472B502C72099C9C13A
            40E1BDD6870AC7111A800A3819C505392EC57F9270ADAC7F4C8CD4AF0ACAF084
            74C718A96C3125069CF43EDA14050E30EA8882570852323CA7F51B11744A78BF
            0C25F5604AF4A13DB0C2843A0CA200451C2852E32DD417F1A47E4810D60182E7
            D0A8324849BE1143A1502D2B5BBE96E27651312DC32DA4281450847BBB005743
            6E498037A4B5F62CFF9B9851DC71C7C9EA9AC510042FA816E624784CF73F821E
            6A07F7D961F91D274D616B261B4963028F77972E5D728383836E7878D82712E0
            74FE4B727F94CC42885529CDC9D550D42DE8653D683850066ABC40907860CCB6
            7B4E4B7D3A05B547B20032EE7F5F49EF2D01CB45F00BE7321848E00081B65AC1
            E0DE2D02509C6D6D4F5C42D7A9E94EDFA288095E421DDEDB06493793E17AFD9E
            8B40C04221DE913201D85E91C10A50216C9966135218E6DCC7DD7F56BA38D7FB
            DB4EDB2CBD0EF326AE35DA79B1647D930C596415AD97BCD8C26D3CD97BD80876
            E683BF2BF8F3AEB666DE9DEC7AE83D353A798F216227C0646E997EAF53671169
            18531308D1AA0C55D3A9890BC658944E6FA8265EB8C6868CBBF28D0705E31F9E
            FB8B4B9624DC8BB92637315959D8AF90D149535D90BE40699F8FF026E6959E52
            4245E32535418CAE7E72D79D3BFB0FF7BF8E6472DD7D78FED3C2EF2FFB4E6974
            6BF653524C7BA40429D7FD4A680D50699893F2523885BA787F7277BFF8961B7B
            7CD8FDBF6362B2DDDDFEF4828F531CA3BC58398C311D61486A5A8314CFB53294
            A748AD796E6CE4DCADDF7CC78D4FB4BED3C8CC4C87FBECCE0F1497D0B343BF83
            29E926E31A44612E8C0B8B3394172F5537A5FCB66E0DDF9B9B0977FFAF17DE69
            6870E8DBA22A592801C04B3E200C3A301646644B3C58142931F4B33824193044
            A2E019B1AAAE5A7CA7A1F2B205FDDDED7DB67500965A91D16DE9C847208E1BE8
            A69427A9E270777828EC3F1C35D52BFE9ACD96B87F0E9CF5E84F9FEE7725C559
            974A66A4B4C37B42B6F28E98CBCE9D67CF9E0D097C3E32144C796A96356A889B
            5A9424734045F6E0B55A9D12E3233730784E54EED2F4655F8FFBE0F423974AEF
            6699C59BD94E0077541E298563C50F2FBC601175A48EBDAA8745745F3CE1B9D5
            D9DD2FBE59D8A295509E855CBECC0D7CDD134FBAB9C246197FBA2494C5091B6A
            FCCC408CF4322903DB7CF7D04E6CBBB6DDD57EEF9DD5ED43CB86473C620B810D
            7913E89C95B18067210FF1807D430B932844D894F0DB92C2C6DEBD1F5B7BFB20
            F1616FB20EA1EEDF2899B41FA1414CE06590824D6A2FD956CB8FD8BA354317E6
            031B8389175D83AB6D1F8065A3A4C8518A31261F1AB58EBC37C47EBF5B2BBE13
            94F1C290638839CDC7438B510A0D04DBB675F62CCA616868C8AF01009B21CE4A
            47ADCE72E95C0F4187905094AAEBCE69DAF4DED08101C1644A4D61DC32144A79
            66C5CE7AE2C378CC3B3E8524C7E7604A8652BE88AD8EA81D294BB5B6B606972F
            5FF6DFB46C88A027867B9AAFF780A1858144A394BF470714D290D9D66534104B
            FDA27ED17F44D81021CB6B4ACD803ED5D3D3E3D1D927239E112BDB0C39306E83
            3D32B6CD336374757511C72DC96CCBC3151F23A88B6394175DFFD6C3D9B6B6B6
            263CC023DB00EDF3056096F236A8503B50C9C1A012CFE2A38ADFACE477BFF8C8
            106ED8A824FC950CDD51367DAFBEBEBE420B03F3020FECDBC8BEFE006199B8B7
            8E94B5E302FD4BC9DD079C678CC059DE4BB84888DBD51D7A64F88590FE50BC5F
            883FA62AF04AC2198129D5BBB260B77A9775AF0D27A455F24F8E5ED17E4FC63F
            67AD3584E8AD99604B0F87F57258AEA775CE48F8BC9E67657046EF5A75BE669F
            91E159C5A659EF36C5448564E6191405F40FFA9DB1B9DCE691E85DAD5F8BD6A5
            EC6FBA3E8887F82280D84C200525EC9C329C95113A3EFF4DE17DCEDAD5DE0EF2
            1F010600B51C8BF69AAAA09B0000000049454E44AE426082}
          Stretch = True
          Transparent = True
        end
        object Image6: TImage
          Left = 260
          Top = 16
          Width = 17
          Height = 33
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D494844520000001A
            0000002D0806000000B0357BDB0000001974455874536F667477617265004164
            6F626520496D616765526561647971C9653C0000032269545874584D4C3A636F
            6D2E61646F62652E786D7000000000003C3F787061636B657420626567696E3D
            22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B63
            3964223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A
            6E733A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F72
            6520352E332D633031312036362E3134353636312C20323031322F30322F3036
            2D31343A35363A32372020202020202020223E203C7264663A52444620786D6C
            6E733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F30
            322F32322D7264662D73796E7461782D6E7323223E203C7264663A4465736372
            697074696F6E207264663A61626F75743D222220786D6C6E733A786D703D2268
            7474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C
            6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861
            702F312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E
            732E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F7572
            6365526566232220786D703A43726561746F72546F6F6C3D2241646F62652050
            686F746F73686F7020435336202857696E646F7773292220786D704D4D3A496E
            7374616E636549443D22786D702E6969643A4146323939313438333737393131
            4536393032304239423530344541353138452220786D704D4D3A446F63756D65
            6E7449443D22786D702E6469643A414632393931343933373739313145363930
            3230423942353034454135313845223E203C786D704D4D3A4465726976656446
            726F6D2073745265663A696E7374616E636549443D22786D702E6969643A4146
            3239393134363337373931314536393032304239423530344541353138452220
            73745265663A646F63756D656E7449443D22786D702E6469643A414632393931
            3437333737393131453639303230423942353034454135313845222F3E203C2F
            7264663A4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A
            786D706D6574613E203C3F787061636B657420656E643D2272223F3E99621B20
            00000C8B4944415478DA8C58CD6F5CD77D3DEFBEFBBEE78BE49022297E88B225
            59B2E4CA80630468174594450123050A0448D3164977CD2259045D74914DD055
            FB37B4408B2001B268D0D65E04299AA4808BD6899C388E6D4AB424523249F173
            389CE1BCEFF7EEEDB98FB153A0111A12230CC979F7F775CEF99D2BEB9B7FFB65
            4869372F6159305F5AF365BE954218B5F0C52F7C11FF75F7DFF0EA2B77D06ECF
            0680AF6B643E9438EDCAE7F0DB7CC9E3C1313CCF87EBBAB06D0169CB26A8795F
            1405AEBDB08A3819F77CD78F02BFF5E9AAAA7F0F5636544AD9755DC8377EFA37
            DFBEB7F1CE874B2BD7C23FB9F3D767CF0CF4079FFD236C6E6D6077FF238CC7A7
            B02C01DF0F218440A7DD9A5D5ABCF8B5EDDDCD70303CB8FDF3777F7CA3B6EAE9
            280CBCA2AC713A1E3EDD3BDCBAE187E1DDF9FE45B9F1F407F5DB6FBFFDDD3FFD
            C36F3C4AD48108C505F571204BD7A3E64D52C4F868778B41EF637DE3E738199E
            CC4B5BFCE5F35716BE9EAB014B8C51CB0CD203F22A45E0B759B9AB552D7016C3
            127900B7EA6C87E1EC3B376FBCFA2F57D66E7C3F940BFB9F5454A1365361EB7C
            BCB076B3792D2F2D5EFBD677FFE11F936CFFFAD3D3811DCD54E8CE3A504EC627
            34BCC0818D0C4296569E9428B204B576B0B35D2EB59CD5E5C5C5B5CBE3647F3D
            ECFCAF4016AC66F01F7F0D460717361F3FFCAB5AC7AF06539558BA3A87CA3D45
            E98C61790AB5AD51DA3967E8B01F7CD6AF303DE7A02E0474A9ADE3279BF8F71F
            7F0F8B8B5FF94CE06F3C82B6065DEFAA16C3D153E46C9BC6793BF7F6775FFBD9
            3B3FBD53A991B8B8DAE3C11394D604DAADF99E812C8DAA56C8AA02A5AE603155
            E197B0EC04B32B0166166D24F1DEF5AD87F7FFC2B6E59F99204D453B3B1BCC8C
            00F04284616F6A3439FAEA68BCB7B470A98B4EC783AA87B05D34355715FFB16D
            10DB701C07110726B4C5D995B003CDA002337D0FC9D1D87EBAB7B13A1E7DEAB3
            AAA5FFBEE33E3F91259F761D8F8714180CB6AF4FC6C72F5B7689A9DE144FADE1
            DA3E2B10A833C53E339C6533AA8D50FBE8F92D08064EDC9C4134646D215AD018
            0F3214D580496697A5906B3CE83D793438802D0C611DB4A2D6D4E1F1FEB663CB
            E57852C20D5DB04B286B1B85AA919705EACA2210244A9701BB0E091D2225F75A
            818FD5D505A4C321F63787D079813C3BDB5555650F26F79B0E37B329CA1C496A
            976559F12590A502FB3B05CE46677C80418A92C842530D3B84566823EA54548A
            0AB14EE07A84FFC441DB97549808E3B8D0952A17AABABCADA037A4177490C613
            28A5C1F126D0B25530EBC3FD944126CC909995E0412490166C73042FF499998B
            2CE6EB4C92E8058E8E77B1FDC1311657BAC808AEC0E95A595A5FAB6BEB735491
            7F92D76FBF8C22CF71363CC5E1D3DDD330EAF64F4F1202A18BC151C9B9046CAD
            03ABB0E1091FBEF4E121601FC825060DBD36142572C0C39F7C3824D153B81D8D
            E7572E103811ABF3EF4165B9ACAB9A087211B45B1784E35C8F93781406DDA949
            5C52867CD89AC82A5891E5F273862B847225615A6E69966A84577709C990D029
            91529AAC8C48AC895825D7359C1F5DE85F2AA58129C1F0F993C1F1E792ECEC85
            B3F824F3D9A58A0F38C2626B727844A5E50AF2A9E67C4852D7FA957E69125573
            8615D5A162E81A91ED61BADD421157EAF1932DA10BE795B3FEE84D613851EBEA
            435F846EAF3DFD92B4ED054908076C91A4B012BD8D926B22A0408594599775D9
            804210F69A902E44461AD42048D1F52442A2D8169688CFC6CFEDEE3F79EDC1C3
            755FA8430FFAD87FD475FA6F2CF456DEEC7A730D0F3C19A145E10C1A105076CA
            94816BF69CAC65CB8AE28C5AC2CF851A53732D786D06E898CA2D9C2513743B1D
            2CCE2F0673B37387AE2B3349B9B25581C56ED0F10B2BD94ECF4AF6C3667F3805
            A36BE5A4115D4680E59C53215525A28064F5D842778CB32C45619FB2C582422B
            9111A675A5D06E7530DB9F0F38C67949C40A4F7AA3C7FB8FDE75847D8D27EE54
            D0CB5935A1ACD4E8CE53A7788017D864BF82C3056916251CAAB89FC189127443
            0BB33A4036497818E71B9B8A09268E80BCCCD9C85C3241C2481F3FDC593F8C82
            F65565AB3F5794A05A16985FEEA0D38B987501E16A664B34313DC5564A9F72D3
            9198EFCFA0DFBB8AD1708C871FAC6377F39050CFE150200337F8A527DD7FAEEA
            FA58DA14D4BCCC55459DCF8AE4D80EC45C255268B6C5E99608FA144B2F67B0CA
            682F15C42835FBED5321DA05748B2DEB6558ECB591A67D3C7EB44580A8C61A30
            A9B756965EFA76A3DE47A707D81BEC34ABC996EE4A4629AA6B3374B6805BB570
            2C78144D216B28DBB4D1C2CAD429A1A8F1B498C2808B6FB43586CE1C9CEE67F4
            2B6C99322315A44851AFAFFFC7DC8D1BBF7F28C7E9082793017C970351B2AA73
            31B66B729B022A4C8BD82EF3247513863D16B1F6BBCB4F9A1FFE75BBC7B99598
            4C8E100F2BCE4882FA66A06D96A262035C55D7064D1083FD114274C9096954C0
            45E594AC012C8C32CF12CCC789408A77B387AECF1E723DA4E87929AE778E1A85
            707DAE93C0AC35C2A832F3935485DAB22CBB75F3D69DA40954172C8492A162DB
            9A9C26675C9B53660E46BFAA8CF036368155CCB7C7B839BF8F5796763E59FBBF
            33F3116E7576B1DC1922F20BCE4E51B6F80C894D5B6671AD1CFFE4EE1B8D8C48
            9F4683EACAB968C31DCFA0A3CA3290E8504CE233B71EE2A595EDDFE8D53CBBC2
            EDE907E73F5C047ED65BC077EEAF52EB8C0B61958E902BCBCFB7F9D771634E6D
            CA8BEB49D5E9F891B6CA894BD271A63493026F6E5CC1D671EFFF75A2DBA733F8
            C1DD35E884210CB92574BBDDBE4CDF2047A34D215C925072D8A2B15CCE8C5095
            EE757DAA82198DA6DF5378FD1757F1D1B0FBCC2007F10C7E78EF36345709D71A
            894EE8BB9CB974E668FC2E74BB979508A9DE217F19F1EC2A4F06A1EF451E9D94
            248FD851282A525109BCB5B9F8CC400F061414E53231CBEC4682C2323CB22455
            99A23C7772F2BE900E2318A4301587FBC475F857EE72D80C64886771E9950CD6
            F5F367068AEC94CF4F35E73447110C1E771CD778E548A792742ED4002E7087A9
            0776217B815F785A25963124EC7569961BE745884FFD2A5041C8FFE2E902DED9
            5B68DEA37160631E5AC3E74C3B2D9227249C03A85CE7AF3FD85B7FCF6FAD6969
            768BF94EB5D6BDDED4F4A44C0B252DBF646AB6433964DB1CB6D621617FB2B982
            FB8773DC49144B26F3D6DE0A5EBC7088C8AC0F06247D60043EA23BD2AEAEE322
            0E5E7EEEB571036F9C2F0112D9B28683C15991A58E718A4685CD60352B13ACEA
            BF3FBC4419AA1A85109C01690097DFEF1D5CA6A5D1888C85E7A294E6EF7CC6D2
            CA6EFB1DFBE3F60A4DCF603553D77E9AA6157DA0AD520A28BF25C5CDB53C5645
            DF503272E9D22FB88D0312393D414A9465366AB3042A56CFB5E044A47745C297
            B95514E9DEE9C98373C216DC868269D2B4E79E2D7DA3E616D7B3B964A8CAC883
            8F92BEC0166E7340416098BC8CEADAA69F46D78CE123B47D223808F9BBC1B0A9
            3A723BF352389C186269965859195719ABD00FFC344E2A3FF2649D6618196B5B
            9EB0AF353D0335CCB59AB919D764F3BD4B691481B919D2499C72D5D3D0E41C84
            4FABECF027DFF32838E5B9C95F585C227C0B64995956564BD56632F43354A4F8
            A4C478989BDB49538566D724330E98A3177A885A12DD9900E538C3F1E3111A6B
            CECFF89D1E67EB285B8819F2C3485022DB5144DCF355ABA8ACABC38B1757E407
            F7DE65C6BCD7FA2E0CA7F87B0666CB72E3F1B9D0D8465E69E1D62DBE029C8C4E
            988847E2BB48A89331AF339D68C6A38007B671A0A6D3496324D81A86E6AC8295
            4B97AC8B8B2B5C8392F79CD4C848539D112F628A60100400EFE423B6F66080C7
            F77730D8CBE8EF785D99D0018D1566A757D1EBCC596956DC3D3A391936AD9B70
            162CD1A06CE2B88E15B6BB78F1D6CB78BCF900932446C9451472DF54261956A6
            9B94CCF05573553177261F6D2AB9DD5CB067672FE3D2D215DAB45E992405795C
            9DF3280A230EBC306B57B7C3E90F6AADF6D62E5F5930031FF20A626E118668B5
            691F83F2735CEDB2E191F1353561AD79570A5CA7E1E3747F0EFDFE3CEDD8F4BD
            D00BF7562FDD3C07C3CCEC42B38F4AE29E107F4BABEAF5B255FCF16C7FA1437D
            B58C47D394A0D45C88A97DBE6B20CDD8266895371735E3D10D1024D9DA999AC2
            5C7FF151B73DF5779CEA8F3EB9FE1F9E6C9DBF217F98B59325F1B52C8EEF6445
            79E0B8C197E2F1E4D36C9F4D2FDEE1D5C998D67DAEE9882BA575EE0CD4C8751C
            4999F68320B0E947BE3333DBFFA1E779DF9F5FB8FCEB5BF9AF35D8E80D41AFF4
            FB44DAFBAD56370CC3F6AEEF04AF12D9F96492EC2AADD6488C98FE7C4EE97AAF
            DBEE5CA4B4140CC324AA23B22C4F45F6BDD54BD7F7FFCFFF9C3C4BFA297D09D1
            F89F7CF366C939B16087D6B96C6C545D909481C715202CA5F3E5B517D5D6A35F
            7A15CDC68D5B9F52BFE9BCFF116000AA9A4720721504C80000000049454E44AE
            426082}
          Stretch = True
          Transparent = True
        end
        object Image7: TImage
          Left = 128
          Top = 16
          Width = 17
          Height = 33
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D494844520000001A
            0000002D0806000000B0357BDB0000001974455874536F667477617265004164
            6F626520496D616765526561647971C9653C0000032269545874584D4C3A636F
            6D2E61646F62652E786D7000000000003C3F787061636B657420626567696E3D
            22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B63
            3964223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A
            6E733A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F72
            6520352E332D633031312036362E3134353636312C20323031322F30322F3036
            2D31343A35363A32372020202020202020223E203C7264663A52444620786D6C
            6E733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F30
            322F32322D7264662D73796E7461782D6E7323223E203C7264663A4465736372
            697074696F6E207264663A61626F75743D222220786D6C6E733A786D703D2268
            7474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C
            6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861
            702F312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E
            732E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F7572
            6365526566232220786D703A43726561746F72546F6F6C3D2241646F62652050
            686F746F73686F7020435336202857696E646F7773292220786D704D4D3A496E
            7374616E636549443D22786D702E6969643A3432454542393734333737343131
            4536383933393939463130343543323433412220786D704D4D3A446F63756D65
            6E7449443D22786D702E6469643A343245454239373533373734313145363839
            3339393946313034354332343341223E203C786D704D4D3A4465726976656446
            726F6D2073745265663A696E7374616E636549443D22786D702E6969643A3432
            4545423937323337373431314536383933393939463130343543323433412220
            73745265663A646F63756D656E7449443D22786D702E6469643A343245454239
            3733333737343131453638393339393946313034354332343341222F3E203C2F
            7264663A4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A
            786D706D6574613E203C3F787061636B657420656E643D2272223F3EC4940CB0
            000008954944415478DA7498C96F144714C6AB7BDAF68CF77DC536C6E0058121
            224280CCC54E4E516E3944228A720B87E4100529FF06F7E49003968294281139
            7032178240329249ECD832C22CF21A2F78375E67F2FDCAFD46134B69A9DC3DD5
            F5DEFBDEF796AA7670EBD62D174591CBCFCF7761183AAE4C26E3473A9D766565
            65EEC68D1BEED1A347EEEAD5ABAEBCBC3CA5F599838383A496AEBE7AF5CADDBD
            7BD7757474F8F78F1F3F76353535AEAFAFCF698D3B3C3CF4BAA2172F5EB8D2D2
            52575454E4F2F2F2BC410CF3BCB5B5E52E5DBAC4BD3C994C16A552A92B12EC15
            80150927A4287AFDFAF59D20089E17141414CAF086013C7E45376FDE74E3E3E3
            6E6C6CCC4D4F4FBB4422E12A2A2ABCB1EAEAEA9AC6C6C6AFA7A6A60A1716162E
            3E7DFAF4AC1455161616168076757575561E9D2D292919AAABAB8B64E050007F
            92D14919879EACC500045C3B3B3B4E0A1D540C0D0DB99999997A097D7BEEDCB9
            6FD6D7D7137B7B7B9E063CDEDEDEF6944A610679C906D0AEDF53959595C3172E
            5CF8ADBDBDFDFEFEFEFE3C32DE2373130567CE9CF1A3A1A1A1F3F6EDDB3FCA70
            B790258A8B8B9D14784A50585F5FEF3D97D7C1BB77EFDCCACA8A9352271A4F9C
            3C79B2B9A5A5E594E6C6A4731E6600134AD17FB87CFBF66D9D04BE535C2E2B6E
            6504B9AAAACA7B8311D69B77DCA110AA49000108262626DCC0C080130B7D0253
            2D23DE40B8BCBCEC69330AE7E7E73F1A1C1CEC5F5B5B0BBBBABABCB2DDDD5D6F
            C040618439EE2006001E353737BBA6A626F7F2E5CBEEC9C9C92F65E8B3CCD1E5
            C81ABF505945E655C8C057CAC4139D9D9D3E0E28344F4C31147257166699804A
            D6E0D9ECEC6C423A5ACF9F3FFF8132FA07C96D46460988161717BB9549EFA148
            19E715028035E60D6B51AAC03B62C7336B2CD6CA48F49091E83C25406D921F89
            9696962CB0DE2351372525CD1B1B1B5E01008803038A2DF378072518C308DE41
            1B06449B5FAF4499D13D21992032A4C44268F7B92CD07373737E6C6E6EFA6114
            A1148F45B3CF460A1BA0280704EF9575748F06A9BB284013111D81852CD2E4B6
            8C15F34C4DA996FCC0A85A8FA78D0C4311B123AD014AED0D0F0FFB36D4DDDDED
            E7B52E90BE4E61FB581EFF1C29605E0874A26D5509508D11D50375E139B75870
            A75DA913F879E8E3595DC1B730FA1CDD8535D7AF5FB776362E867643D0D3D7B4
            B04E93DD8ACD9ADA0EF5E41583DEB28D7596D6761127EB9324C8B12C1CD3E303
            3DEF472CD0C32752FCB15A4B97EA6A0701159C172659406DD987024B77AE38E8
            9E7E2E8CB6B6B63A014E8B995040DE571C1FF28082E7529A2FDA7A746FC080D1
            654879C61B1472B702C72099C9C53A40E1BDD6870A473B0D40059C8CE2829C94
            E2DF255C25EB1F1223F5ABAC323C21DD31462A5B4C890183DE479BA2C001461D
            51F00A414A8617B47E27824E0937CA50521353A20FED811526D461100528E242
            911A6FB6BE8827F54382B00E10CC43A3CA2025F97A0C8542B5A66CF9538A3B45
            C5B40C3793A2504011E67601EE86DC92006F486BED59FE3731A3B8E38EB3ABFB
            2E86207849B5B020C10E3D7F013DD40EEEB3C3F23B4E9AECD64C3692C6041EEF
            AE5DBBE69E3D7BE64647477D22014EE32FC9FD2A99A510AB529A96ABA1A85BD2
            CB5AD070A10CD4788120F1C0986DF70C4B7D3A05B547B20032EE7F4FA4F78E80
            A523F88573190C24D042A0AD563098BB4500CA065EA29416454CF012EA98B70D
            926EA635B5FABD10B19885427C28650270B02E83A5A042D832CD4E48D933406C
            38DE2CBD0EF326AE35DA79BE647D930C596415AD97BCD8C76D3CC9BDEC0866C3
            0C71373A99C710B1136032B758BFB7A9B3D0CE5E321008D186EE15D6A931C622
            A38361B56506AD0C72F72B643468AA4BE8C591883FB112561650D178494D1023
            026D345A0FCB3D60E66E8676714A8A698F9420257A5E0F4D58699896F2223885
            BA787FF202786D868E5369ED8767EB79718C32CAD65318D315862036B7C57395
            0C6528526B9EB98A6CD8EFDCB382CDE125FDCED31545645C9D74A4B3D4695128
            2F965537453647ECCC909D1B2CB5B9E3A9CD99419E012F5602C2A0AB563A2622
            B225E63A4F82FA991F920CD0872214102B3A8351793CFBEC62BDDD014BADC8E8
            817464229F7A4788F6A43C491587478787ECFE63756367389E8D3A40B106E5BC
            A78BF09E986BEEDE9B376F46043E13190A4E796A96950AE89E1625C91C50A110
            AFF128F71069F13040FE9018C79BB39D8C1FAA3C520AC7BA3FBC183ADD0375EC
            0D4DE6913D96C61687E385CAB0466B275DDB286310096571C20E35BE60E36448
            CAC001DF3DB413A3C87657FB7D3C2671B11F7D31C823B610D8903781C69C8C05
            CC854CE201FB8616265188B029B1ECC29865566EB1E6F641E2C3DE6445ACEE5F
            2F99427F8406313CCB20059BD45E72A0961FB175EB0C9D3D1FD8319878D135B8
            DBF60158364A8A1CA518E3E443A3D695F186D8EF31147782625E18720C714EB3
            DA412934106CDBD6D9B3C8BC919111BF06006C86382B1D551A25D2B91D820E21
            A12852D75DD069D37B4307060427536ACA52D88A97B97817F50717E2C3F19877
            7C0A498ECFC1940CA57C115B1D513B52966A6B6B0B7A7B7BFD372D1B22E88961
            4EF3F51E7068E140A2A3947F460714D290D9D66534104B43A27EC57F44D82142
            9637959A017DAABFBFDFA3B34F463C2356B95D1CE376B047C6B679CE183D3D3D
            C4715F3207F270DDC708EAE2186544D7DF9A9C3B7DFA74031EE0916D80F6F902
            304B792B546A072AB938A8C467F171C56F4EF2475F7C6448DCEE69824F64E89E
            B2E9D3DADADA522D0CCC0B3CB06F23FBFA038465626E1D296B2705FA7BC93D00
            9C678CC059DE4B384F883BD51DFA65F81F21FD5CBC5F893FA64AF14AC2F30253
            A477C5C151F5AEE9591B4E48ABE49F1C03A27D50C6EFB3D61A42746C23DBD7E4
            A85E8ECAF5428D19095FD6FCAE0CCEE85D9BC616FB8C0CCF29364D7AB727264A
            25B3C84151407FD1EF796BC4761E89DCFF5C5AB42D657FE8FE30DE93F200629B
            A11414B073CAF0AE8CD0F1F96F0AEFD3B91DDE3AC8BF020C00BB1ACCA07FA261
            EA0000000049454E44AE426082}
          Stretch = True
          Transparent = True
        end
        object Image8: TImage
          Left = 85
          Top = 16
          Width = 17
          Height = 33
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D494844520000001A
            0000002D0806000000B0357BDB0000001974455874536F667477617265004164
            6F626520496D616765526561647971C9653C0000032269545874584D4C3A636F
            6D2E61646F62652E786D7000000000003C3F787061636B657420626567696E3D
            22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B63
            3964223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A
            6E733A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F72
            6520352E332D633031312036362E3134353636312C20323031322F30322F3036
            2D31343A35363A32372020202020202020223E203C7264663A52444620786D6C
            6E733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F30
            322F32322D7264662D73796E7461782D6E7323223E203C7264663A4465736372
            697074696F6E207264663A61626F75743D222220786D6C6E733A786D703D2268
            7474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C
            6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861
            702F312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E
            732E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F7572
            6365526566232220786D703A43726561746F72546F6F6C3D2241646F62652050
            686F746F73686F7020435336202857696E646F7773292220786D704D4D3A496E
            7374616E636549443D22786D702E6969643A3530413645333632333737343131
            4536423045444144413032313439313835462220786D704D4D3A446F63756D65
            6E7449443D22786D702E6469643A353041364533363333373734313145364230
            4544414441303231343931383546223E203C786D704D4D3A4465726976656446
            726F6D2073745265663A696E7374616E636549443D22786D702E6969643A3530
            4136453336303337373431314536423045444144413032313439313835462220
            73745265663A646F63756D656E7449443D22786D702E6469643A353041364533
            3631333737343131453642304544414441303231343931383546222F3E203C2F
            7264663A4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A
            786D706D6574613E203C3F787061636B657420656E643D2272223F3E323FC0E8
            00000C7D4944415478DA8C584B6F65D9555EFB71DEF7E1C7B5CB76B9ECAA4A77
            5757A53AEA969256060C109501220A5224240820604606C92062C080096204BF
            0124100A520644A0F420024182D4088574935627DDEE767755B93A552EBB6C5F
            5FDFC779EF07DF3AEE4E902012B64EF9D4F5397BADFDADEFFBD6DA167FFA17BF
            4F5AABEE9242107F798F8BBF9DA334EBD1577EF32BF41F6FFC33BDFAD97BD4EF
            AF2544B1B754C5E4E4C5507F8AFE3F5FFA6C7C465114531886A49424AD741794
            EF9BA6A15B2FEE525ECC96E230CE92B8F77963EC2F91A826CE39656DA35FFBE1
            9F7FF3BDFDB73ED8DEB995FEF6BD3F9BFFC240BFFA852FD3C3837D3A3CFE29CD
            66172484A4384E494A49837E6F6D7BEBEAD71F1F3E4CC793672FFFE8EDEFDFB1
            C2AE64691235ADA58BD9E4E9D1C9C19D384DDFD8185DD5FB4FFFC9BEF9E69BDF
            FA9D5FFF9307857B265379C57D1248783BED6E8A26A79F1E1E20E8FBB4B7FF23
            3A9F9C6F6825FFE8B9E737BF51BB31B69893D515E988A8362525711F3B0FBDB3
            92E639095927149AC1E3345D7BEBEE9D57FFF1F91B77BE9BEACDE39FEDC890E5
            AA00BA985EBC71B7BBAE6D6FDDFADB6FFDF5DF14D5F1EDA7176395AD1A1AAE05
            E4820A6F788A9280145524752BEAA2A5A62AC8FA809E3C6EB77BC1EEB5ADAD1B
            3767C5F15E3AF81F810489AEF09F7C8DA7CFAE3C7C74FF8FADCF5F4D968DDC7E
            619D4C78416D30231139B2CA53AB6AD430001E783736B4B21E906D24F9D68BB3
            8F1ED2BF7CFFDBB4B5F5D55F49E2FD07E4C57818BDE0E564FA946AC0E6E912CE
            A3E3C32FFED75B3FBC67DC545EDD5DC2C20B6AC5827C68718F40C293B18E2AD3
            50EB0D09A42AE396842A686D27A1D52D45457E74FBE0FEFB7FA894FE5D0ED2ED
            E8C9937D6406024429A5E9D2F27471FAB5E9EC687BF3FA900683889C9D900AA9
            DBB331F8472902B7290802CA5030E9056AD7924A3C824A5A1D45549CCED4D3A3
            FDDDD9F4735F703DFF5783F0B9856EF176184458A4A1F1F8F1EDC5ECEC15A15A
            5A5E5AC6AA9642156307926CE58033C20985A88A521FD352DC2389C045582388
            276D05659B9E66E38A1A334692D54D2DF50D2CF4137D3A7E464AB26003EA65BD
            E593B3E3C781D2D7F2454B611A1250A2D62A6A9CA5BA6DC81A0122686A43041C
            0610744A25B4D74B62DADDDDA47232A1E38713F2754375353F74C6A8F1E2FD0E
            E1AE364D5B5351AAB66D0D2E495529E9F84943F3E91C2F2048D38259D4ED0608
            512F55940D0C9CC250EE0B0A23D07F11503FD670988C6679E38D6B378D6D5F76
            E4F775940CA8CC17E49C2794B720AF7B0DB23E392E1164810C91594B580802F2
            12306714A531320BA9CA71CD3584DED0E9D9213D7EF78CB6768654815C493014
            55696F592BBE0417F97B7DFBE557A8A96B9A4F2EE8E4E9E1459A0D4717E70588
            30A4F1698BBA24803620D1288A644CB18E29A20438404B089A467D72B0C83116
            FFE88309845E5238F0F4DCCE151027C3EEE2F7C855B5B6C682412125FDDE1519
            04B7F3229FA6C9707991B7B0A1989407B31AEC4884788EB5022A1B4D0CB9F0D8
            2A1BAF1F829229A8D352096B12159868C158A7F73C05DFBB32BADE6AA629C8F0
            1BE7E3B32F15D5FCC5797E5EC540C9E085400A40535304568A50424F16F58148
            43F1B17F7908D5A38606EE6010DA52A6225AE9F7A8C98D7BF4D181F44DF0D9F9
            68FABA644D586F3E88651A2EF5573EA395DAD4A0700288348C15ECED9CDC8301
            0D192A91756BDB8E1412B4F7A074232BC8C012484AC348530A162B29643E9F7D
            EAF0F8A32F7E787F2F96EE24227F163F1806A3D73697765E1F46EB9D0E229D51
            0FC699742480EDB425025B600ED502B2A699C34BF05CEA6979BD47511F0106BC
            7341F36241C3C180B636B692F5B5F59330D495865D29D7D0D63019C48D281E97
            F3167828E0832AB0AFB58BCE74118144702985D2B59425106B0408C319CDAB92
            1A750188258C5653059A5AE3A8DF1BD0DA682341193734182B231D4D1F1D3F78
            3B90EA16567C62C85FABCC02B66269B8019FC20251A2A07E47011A24374A0AE0
            E271454156D03015B4E613AA160516437D73DE31C8841240973580AC3512048D
            FCD9FD277B2759D27FC129F7070E166475431BD7063458CA90754332F4C8166C
            427A0E50EA187633D0B4315AA5D1D20B349DCCE8FEBB7B74F8F00454AF298041
            2661F2E34887FF60AC3DD30A865AB7B533F0F9AA29CE5422D78D2CC9039660D8
            5232825946358219F65E38083B35F08EE110FD867C0F902D55B4B5D4A7B21CD1
            A307072088EB460324F5839DEDCF7CB373EFD38B6774347ED2B526A5C39D0A56
            642D171D10A0AB3681A008A629B525A7184671E9AB3051A886C6687CD38319F9
            2AA08BE30AF30A20735C52098934766FEFDFD6EFDCF9E5133D2BA774BE18531C
            A2204E1B5BCB99B2D0360C543244808BDF846F92E826A4CBCEC57E87198664D0
            D262714AF9C4A0469AE06F4C6D6E8A0E8F84CE5A6613C9F1F194521A42139A5D
            202413B4D8036163B079ACC48F838130EFAE0F39F61B5C8259042DB1438431DA
            49C26D0D34325C3F8DE7AC1042F5EEBE74AFE802D9061B8165B85C89C5453147
            DB5CE63AF07AA6023C15BB04346F4577392319532CA82127CD8E076BC2EEC048
            810E2C25436AD0DFAC405B39FBCF375EEB6C44C71834E0AE58C4B376226687A9
            2A529C3D92E0D9807FEFA053183CE0C263EE7287ECF8BC5B868AA9EC886D08BB
            AD780AC12E03A977AE3DD7479C190B16F8C36AB47071A8332FDA45A8754FB606
            8BC26284A31681BAE6FAF120C380B9EE5B926B513FFE0402751CA04008163736
            DCEFF76F626ED0D3E94329436C594B7E8547AE60553AE39786315C81938561F2
            A0C0730102B98FC9E0BBA8F8C9EFF16E1C9A1DEA29012B6F5241DC3A44CD75B0
            8EC1EFCA7078D3E91400BB2E4F274D5D8CD338CA22606E41636C0419F39B3C99
            7045B9C572ADF0116E5BC613840828E4E68E0404F7469042B08E84862BC394D7
            CFCFDFD9D74116774C412A01FA4918E0B7E8E5A42058169E40D36B118C3B83E7
            206C8EEAB23ED2F1FCC0E4901D3B799D6E296415A1C7A18D9B40074663728107
            A08107483D518D5E4AE226F2AE103C9000EB969B1B60C122DCEAD00150606617
            663C2E373E1F97154D9B0A8B5A8A51D3410FCFA4D87C42AEF6F5773E3CDAFB49
            DCBBE125F796CA5434ABE7E09C5A59B465E320D216A9A9006546B6B1D468E1B0
            24E0C5F415B23BD474735E890E3D376D37E2403EC4069F613AF2A1B779932777
            6FFEDAACD3115D3601085988C9783C6FAA32E015980C1D7BB133E95980B2AB0D
            3342424F6CFB3DC5D50144E8B2DDEFD028D1253A6209EF543F1EA84F466DE991
            91E8AAEEE3B22C0D2C4CB9D27454D630B75044D815E68616FEDF86A071D84D40
            B2C64C50423B9522CB4D002256D052902129ECD0B5B5689AF2E8E2FCC34BC136
            E88612460661D691D231BBB940C67CC87086ED21A616192B19760B342006E7C5
            AEAB02DDFDECB88F2929068393149F8D271DEDB370B0A165808A51AEB989B586
            A7CADCA57112977961E22CD2968BCCA36D7B0E5C6DE7D63A145DDD786A52B80F
            618D32E1932126890BB47A0C3435608B312A07F85F1C45309CF672C8DFDCDA06
            7D1BAA2A6E56A2E72C5706F58048F3F39666939A4F27DD2E3C50D3C838418E51
            1A51D6D3345C4DA89D5574F6687AE91E78261E2CA1B6815352AE82396C4185EE
            6719EA8BCBBAACB5E6E4EAD51DFDEE7B6F23639C6BE3905853F81C810159CD33
            3E1A1A60C4919642DBC395D0F9F41C89449882422AE093398E33836C35828127
            8A275046BAE806095685808C75B273FDBAB8BAB58336A871CE29D946BADDB179
            756A629BC12C5E4D01EDB3313D7AFF098D8F2ACC7738AE2C3001CD1CADADECD2
            D2605D9455F3C6E9F9F9A4836E815A608BCCB245100622ED0FE9D32FBD428F1E
            7E488B2287CD605E43BF319C0C76E6E95247385E744715D6524C7D8A60177CC0
            5E5BBB49D7B79FC798B6D41645031D9B4E473A4B3314BCE1B6EBFBE9CABBD6BB
            A31B379FDFE4824F7004E153040BCD327C088AE7D0DA75D72E78AEB1DC9B7056
            4AC2A0D3E3CA689D46A30D8C632BEFA5517AB47BFDEE251956D736BB7ED382F7
            A0F80FBC33DF697BCD6FAD8D3607F057C1339A87584B3E10C3FBD04A3A997B0E
            6AEAEEA0C6333A134143AD83E5655A1F6D3D18F697FF1255FDDECF8EFF27E707
            973782956F82AAC86F55797EAF6ADA674198FC5E3E5B7C1EF029CCE2031C9D78
            683D469BCED0527A9793819B8641A061D37192240AF3C8DFADAE8DFE358AA2EF
            6E6CDEFCF9A9FCE77FDB60BF01E99D7F074C7BA7D71BA669DA3F8C83E45530BB
            5E2C8A43E7DD0D0823C77CBEEEBC3D1AF60757612D0DC22009730A95D5A5ACBE
            BD7BFDF6F1FFFACBC92FFA930AACAF001BFF1D37AFB7A813361C60746EBB31CA
            36106512A10548E17C7DEDC6A7DDC1831F4706C3C69D973EE7FEAFF5FE5B8001
            00072A7F6604ABBDF00000000049454E44AE426082}
          Stretch = True
          Transparent = True
        end
        object cxLabel11: TcxLabel
          Left = 209
          Top = 47
          Caption = '['#50868#54665']'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxLabel14: TcxLabel
          Left = 32
          Top = 47
          Caption = '['#50868#54665']'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxLabel15: TcxLabel
          Left = 175
          Top = 15
          Caption = '['#53440#49324']'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxLabel16: TcxLabel
          Left = 249
          Top = 47
          Caption = '['#45824#44592']'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxLabel17: TcxLabel
          Left = 288
          Top = 47
          Caption = '['#51333#47308']'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxLabel18: TcxLabel
          Left = 115
          Top = 47
          Caption = '['#51333#47308']'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxLabel19: TcxLabel
          Left = 74
          Top = 47
          Caption = '['#45824#44592']'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxLabel20: TcxLabel
          Left = 1
          Top = 14
          Caption = '['#51088#49324']'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
      end
      object cxGroupBox5: TcxGroupBox
        Left = 813
        Top = 0
        Caption = #44277#50976#53084#54788#54889
        TabOrder = 2
        Height = 70
        Width = 87
        object Image2: TImage
          Left = 7
          Top = 23
          Width = 17
          Height = 21
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000050
            0000001808060000006D1A7AAC000000097048597300000EC400000EC401952B
            0E1B00000A4D6943435050686F746F73686F70204943432070726F66696C6500
            0078DA9D53775893F7163EDFF7650F5642D8F0B1976C81002223AC08C81059A2
            1092006184101240C585880A561415119C4855C482D50A489D88E2A028B86741
            8A885A8B555C38EE1FDCA7B57D7AEFEDEDFBD7FBBCE79CE7FCCE79CF0F801112
            2691E6A26A003952853C3AD81F8F4F48C4C9BD80021548E0042010E6CBC26705
            C50000F00379787E74B03FFC01AF6F00020070D52E2412C7E1FF83BA50265700
            209100E02212E70B01905200C82E54C81400C81800B053B3640A009400006C79
            7C422200AA0D00ECF4493E0500D8A993DC1700D8A21CA908008D010099284724
            0240BB00605581522C02C0C200A0AC40222E04C0AE018059B632470280BD0500
            768E58900F4060008099422CCC0020380200431E13CD03204C03A030D2BFE0A9
            5F7085B8480100C0CB95CD974BD23314B895D01A77F2F0E0E221E2C26CB14261
            1729106609E4229C979B231348E7034CCE0C00001AF9D1C1FE383F90E7E6E4E1
            E666E76CEFF4C5A2FE6BF06F223E21F1DFFEBC8C020400104ECFEFDA5FE5E5D6
            0370C701B075BF6BA95B00DA560068DFF95D33DB09A05A0AD07AF98B7938FC40
            1E9EA150C83C1D1C0A0B0BED2562A1BD30E38B3EFF33E16FE08B7EF6FC401EFE
            DB7AF000719A4099ADC0A383FD71616E76AE528EE7CB0442316EF7E723FEC785
            7FFD8E29D1E234B15C2C158AF15889B850224DC779B952914421C995E212E97F
            32F11F96FD0993770D00AC864FC04EB607B5CB6CC07EEE01028B0E58D2760040
            7EF32D8C1A0B91001067343279F7000093BFF98F402B0100CD97A4E30000BCE8
            185CA894174CC608000044A0812AB041070CC114ACC00E9CC11DBCC017026106
            44400C24C03C104206E4801C0AA11896411954C03AD804B5B0031AA0119AE110
            B4C131380DE7E0125C81EB70170660189EC218BC86090441C8081361213A8811
            628ED822CE0817998E04226148349280A420E988145122C5C872A402A9426A91
            5D4823F22D7214398D5C40FA90DBC820328AFC8ABC47319481B25103D4027540
            B9A81F1A8AC6A073D174340F5D8096A26BD11AB41E3D80B6A2A7D14BE8757400
            7D8A8E6380D1310E668CD9615C8C87456089581A26C71663E55835568F35631D
            583776151BC09E61EF0824028B8013EC085E8410C26C82909047584C5843A825
            EC23B412BA085709838431C2272293A84FB4257A12F9C478623AB1905846AC26
            EE211E219E255E270E135F9348240EC992E44E0A21259032490B496B48DB482D
            A453A43ED210699C4C26EB906DC9DEE408B280AC209791B7900F904F92FBC9C3
            E4B7143AC588E24C09A22452A494124A35653FE504A59F324299A0AA51CDA99E
            D408AA883A9F5A496DA076502F5387A91334759A25CD9B1643CBA42DA3D5D09A
            696769F7682FE974BA09DD831E4597D097D26BE807E9E7E983F4770C0D860D83
            C7486228196B197B19A718B7192F994CA605D39799C85430D7321B9967980F98
            6F55582AF62A7C1591CA12953A9556957E95E7AA545573553FD579AA0B54AB55
            0FAB5E567DA64655B350E3A909D416ABD5A91D55BBA936AECE5277528F50CF51
            5FA3BE5FFD82FA630DB2868546A08648A35463B7C6198D2116C63265F15842D6
            725603EB2C6B984D625BB2F9EC4C7605FB1B762F7B4C534373AA66AC6691669D
            E671CD010EC6B1E0F039D99C4ACE21CE0DCE7B2D032D3F2DB1D66AAD66AD7EAD
            37DA7ADABEDA62ED72ED16EDEBDAEF75709D409D2C9DF53A6D3AF77509BA36BA
            51BA85BADB75CFEA3ED363EB79E909F5CAF50EE9DDD147F56DF4A3F517EAEFD6
            EFD11F373034083690196C313863F0CC9063E86B9869B8D1F084E1A811CB68BA
            91C468A3D149A327B826EE8767E33578173E66AC6F1C62AC34DE65DC6B3C6162
            6932DBA4C4A4C5E4BE29CD946B9A66BAD1B4D374CCCCC82CDCACD8ACC9EC8E39
            D59C6B9E61BED9BCDBFC8D85A5459CC54A8B368BC796DA967CCB05964D96F7AC
            98563E567956F556D7AC49D65CEB2CEB6DD6576C501B579B0C9B3A9BCBB6A8AD
            9BADC4769B6DDF14E2148F29D229F5536EDA31ECFCEC0AEC9AEC06ED39F661F6
            25F66DF6CF1DCC1C121DD63B743B7C727475CC766C70BCEBA4E134C3A9C4A9C3
            E957671B67A1739DF33517A64B90CB1297769717536DA78AA76E9F7ACB95E51A
            EEBAD2B5D3F5A39BBB9BDCADD96DD4DDCC3DC57DABFB4D2E9B1BC95DC33DEF41
            F4F0F758E271CCE39DA79BA7C2F390E72F5E765E595EFBBD1E4FB39C269ED630
            6DC8DBC45BE0BDCB7B603A3E3D65FACEE9033EC63E029F7A9F87BEA6BE22DF3D
            BE237ED67E997E07FC9EFB3BFACBFD8FF8BFE179F216F14E056001C101E501BD
            811A81B3036B031F049904A50735058D05BB062F0C3E15420C090D591F72936F
            C017F21BF96333DC672C9AD115CA089D155A1BFA30CC264C1ED6118E86CF08DF
            107E6FA6F94CE9CCB60888E0476C88B81F69199917F97D14292A32AA2EEA51B4
            53747174F72CD6ACE459FB67BD8EF18FA98CB93BDB6AB6727667AC6A6C526C63
            EC9BB880B8AAB8817887F845F1971274132409ED89E4C4D8C43D89E37302E76C
            9A339CE49A54967463AEE5DCA2B917E6E9CECB9E773C593559907C3885981297
            B23FE5832042502F184FE5A76E4D1D13F2849B854F45BEA28DA251B1B7B84A3C
            92E69D5695F638DD3B7D43FA68864F4675C633094F522B79911992B923F34D56
            44D6DEACCFD971D92D39949C949CA3520D6996B42BD730B728B74F662B2B930D
            E479E66DCA1B9387CAF7E423F973F3DB156C854CD1A3B452AE500E164C2FA82B
            785B185B78B848BD485AD433DF66FEEAF9230B82167CBD90B050B8B0B3D8B878
            59F1E022BF45BB16238B5317772E315D52BA647869F0D27DCB68CBB296FD50E2
            585255F26A79DCF28E5283D2A5A5432B82573495A994C9CB6EAEF45AB9631561
            956455EF6A97D55B567F2A17955FAC70ACA8AEF8B046B8E6E2574E5FD57CF579
            6DDADADE4AB7CAEDEB48EBA4EB6EACF759BFAF4ABD6A41D5D086F00DAD1BF18D
            E51B5F6D4ADE74A17A6AF58ECDB4CDCACD03356135ED5BCCB6ACDBF2A136A3F6
            7A9D7F5DCB56FDADABB7BED926DAD6BFDD777BF30E831D153BDEEF94ECBCB52B
            78576BBD457DF56ED2EE82DD8F1A621BBABFE67EDDB847774FC59E8F7BA57B07
            F645EFEB6A746F6CDCAFBFBFB2096D52368D1E483A70E59B806FDA9BED9A77B5
            705A2A0EC241E5C127DFA67C7BE350E8A1CEC3DCC3CDDF997FB7F508EB48792B
            D23ABF75AC2DA36DA03DA1BDEFE88CA39D1D5E1D47BEB7FF7EEF31E36375C735
            8F579EA09D283DF1F9E48293E3A764A79E9D4E3F3DD499DC79F74CFC996B5D51
            5DBD6743CF9E3F1774EE4CB75FF7C9F3DEE78F5DF0BC70F422F762DB25B74BAD
            3DAE3D477E70FDE148AF5B6FEB65F7CBED573CAE74F44DEB3BD1EFD37FFA6AC0
            D573D7F8D72E5D9F79BDEFC6EC1BB76E26DD1CB825BAF5F876F6ED17770AEE4C
            DC5D7A8F78AFFCBEDAFDEA07FA0FEA7FB4FEB165C06DE0F860C060CFC3590FEF
            0E09879EFE94FFD387E1D247CC47D52346238D8F9D1F1F1B0D1ABDF264CE93E1
            A7B2A713CFCA7E56FF79EB73ABE7DFFDE2FB4BCF58FCD8F00BF98BCFBFAE79A9
            F372EFABA9AF3AC723C71FBCCE793DF1A6FCADCEDB7DEFB8EFBADFC7BD1F9928
            FC40FE50F3D1FA63C7A7D04FF73EE77CFEFC2FF784F3FB25D29F330000002063
            48524D00007A25000080830000F9FF000080E9000075300000EA6000003A9800
            00176F925FC54600000D304944415478DAEC597974547596FEDEABF76A495295
            A42AA9AC64252434182448D844A288D2080A8C08B229A32232DA6ABBA083234D
            8B761FB41D045A59956E6907901E4150100141DB05241882095B56925A52FBBE
            BCEDCE1F244C0801D1E973A64F1FEF39DF39EF54D577DFFD7DEFDEDFBBF7570C
            11A19BA900DC4DC0CCD0F1DABCA0A5F57A5EAD8926F42BAE4F2C2C3E08601D80
            06FC6C178DE91290804C06D869DBB8A692FDCB06E8151554A480584096597853
            9390F8FC6F43A9C347CD03B0BDBB93EE8F8001FA0A3EEF6C6A6D992CD59FC98F
            B9EC29BCC1007551D16914F7DDA9C9CEDDC400A7FFA9042440C5005F591F7BB0
            D2D450873834389F9681507111B4C1085467EBD08F1521070308DEFF643463EE
            DC61004EF614900106C71ACF6D09FF696D3FDABE15B236118A5E0F261C06E3F5
            801F390CEA479FFB3E61E8F0B92CCB7CF7CF9481735A9F7FF2CF39278EA24DC5
            21FCD46F50567533B8CE1FC5007CBDFC15941FD80B4EF2417A79ED76D3F011D3
            7AF832449A1BF7C45E5A3C5255578DE08DBF8438780844B3199CC70BE55C1D92
            F7ED829AE3815756EED08F18358F057C5D64B973FF003034D6D2B448D8B1AD8A
            EA4F99244102C332E09293C0DE32EE1BCDB8896FF25ACDE61E89FFFF674484B0
            AB63777B7602397F39824E1CF996888814924922224591A9CBF62E7B91A45B87
            51CBD0EB2244A42322101124224E269A7EFEE139A1F088323ABD7431D91C4EEA
            6E1E49A2637F5C49F611FDC933F5B668B8A9695C17BFD30788283F7AAAEEA4E7
            DE89E428CFA3C649B7D1B95F3F4A0D0FCCA1C6E1E5E41B564A9ED77FE71225E9
            662262BAF33BC1288A3229F2D5E79FF89F7A34EC9A332DEE987D4FDC73FFCC78
            70E5F286B8DDF62C11252A8A825EB83F09202258FEF8466B3C574F471F9C4B67
            DA2D24C94AE7B265A2CECB784CA2DAC6463AFA8B42F2641B28D8DA725D97938E
            0FFF5BE738FACD2AFF90126AA81A42F58DCD9D7C85645248512E38B1466374EC
            8947C8C28082DBFEEB91EE8128449AB8DBF5826DDA78728F2EA7C64DEBC965B5
            92CFE723BFCB45E76B6BE8D4BC19E41B5642EECD7FDAA788624ACFC5C8B25C19
            FE78C759CF2D43A8FD9661D4B8E8096A7EF937D474DF0CB2549651E0F187A2D1
            F6B6871522D5DF4B40160094DA9A7481E5112A2983DFEB85DFE7EDCC4F16602E
            5C793C1D08FBC310FA0F04C702D19AE3995D599CD8279F918E7E93C9FB83700D
            A8405C12108EC6003060C180611890A2409415840AFA2196C843693C93DDBD12
            BC47BF3684FF7668321DD80BEFD4594898791F4C5959484E4E86C16442D67583
            203DFD22BCE61C08CB978D143B6C393DAB2976E2BBFB224B1797444C1960566F
            44C6B2D790F9FC12A4AD5A87D023BF46E0CBC35A61CD1B0FC6FDFE5FF45A8D00
            A348D294D0BB1BBE74DD3BD965BB77AADB79F7444FF8B565D562C0FF2F31F9F2
            5D8305A02699748C4C9044091EA70B569B154E9713D16814E1480456AB1576BB
            031D4E2778150756244051741705BCBE42CD318C5E8CC4202425C3E370C16EB3
            201C09439115C405010E8703ED4DCD888281363901E4F1E82F092412E1853D1F
            17213B1FF6920150F3FC2581728A027DBF3258F24AC1B83B54919AE3053D1723
            7CB07550D4E144E0BE8791DA7F00123915B40CA0D7EB9132EB7E382A4723B2E5
            2F05F217872A7A1350168431A1352B5E0FBFBD6664ACBCC24433661B6337DF9A
            EAF964574574F9D2D7C8EF1BD293C30110505226733BFFAA4A6A3A8BBA927E50
            09228440186CA2169C440845237078038871325427EA20882234FD073A2F3E39
            5996657316CBF15AE8DA5AD162B3809364C44361F00909405C84CBEB859565A0
            B359408E10545939E1EE81E8070F51C7DE785D2F26A5C04780ADB905EA742392
            920C9064197E8F0B16771042722A785D22E4B6F3C6CBDE88E7CEF0A1AC1CB853
            4CC888C7A0D3682F08A3288886A208E6F7453AC7A9949AEA3E9878D765028677
            6E9B12797B5D41FCB1A791396F3E34002400B60103E17E7241415A76FE5D58F8
            78754F01913A6BEE56EF6F5F985978F0739C1A7A134E87DD307BCCE0352C8880
            B018433012455AFD199486DCE83098ECC5A5A5355D4E226EAF9078EBF8CFA269
            E9A3730E7EA6FD7E78154EC50230BB4CE0D52AC88A0CAF1043C417C2C8133550
            8932A86F59EDA58F925798AC1C567BAA0ED1D62634E80D80CF079D410F926438
            9D6E58540C4CADE741A128547945E1CBCA4993A462627174D82C50371A516834
            82D76A10F0F9D1E0F1410C04C013C3302A8EEFB584F7ECCE0C261A10A9BC11B9
            17DA32F000A4F2A1F0E4F645EAC17DC558F8F8651988A49CAC25F63BEF999E7F
            609FEAC6752BF0C58CF9A8E75AA0E6542085A0E174C86F6FC3C8AD9B208704E8
            D6AF7B1540B4CB49429A310E965DDD7EC79419C6B56F950F7F773DFE366516EA
            B43EF09C0A0416490A8B4187F7A3E0D38388CF9EB39F1B35FACB4BF6AF683CA0
            9B34796F6CDDC609995F1D41B5391D810E167A8D1632C9F00A22C8DE818ABA13
            8819529CE6F241B59765E0E0A1DE948FF600C7AA519BA487A7BD1D6A8E835F10
            E00EF8D1FF783578510E31836FA8EF4D404E9DC02932A1A5A519DAE4646425E8
            10880B38DD6E855192A1D270EADE4A18001A72DEDEB0D19E6E9E9FEB8A60D28A
            5770FEFA4A74A49900C8C83C771625CD2D50731AB416E5784AA74D5D7749E02C
            0B00C18C254BD63B77ED5E9E7BDEAA9BB86625DA060E82CB980A3E1242C1E9D3
            C8B377C0653229DAE9F76CD11953DB2F9921D56A1F7FC3D03F84C7DD36F6BA8F
            3FD444552AD40E18080B23816539A485E3A8DCBF0729F5A7406BDF59CD66669E
            BF4CC0DBC7BFA779E79D1B2ADEDF96F239AFC109733A5886A05680B263DFA2F8
            9B2FC13CFC6FBBB9AA5B3EE94D4076DC8433C6CFBE50B07F1F7B58A5420A1844
            18065C6D0D4AEABF97D985BF3ADE6B1FD8899C96679F8B874C2914CC2FA0488E
            99C239B914CBCEA2686E3E05F38BC9ADD591F3D89117AFF25AE76C6F6FAAF19A
            D32898974791EC0C8A6667533C2B8BA27945E451F1D4F1D8A387638A5C7005BE
            C177E8D066BB4E4731A3915A060DA22313EEA0EA9BABC85E5844A25647AD5563
            EC82D7932FF7D2CBC98A6276BFB5E6236F62223973B2E9D8D8B174E8AE3BE964
            E5500A1A0CE4AA1C6AB77FFAE93841927A8D3F160C9579172C38D69E66A45D73
            66D3DA45CFD0D6050BE86C613E79AAC65407DB2D85BDF6811703205A71569F42
            C1DC7CF2E515922F2F8FFCB9F914E8934B810C339DBA694C90888C3FD01BCD6E
            B87E483C989943BEBCA20B3EF20A29684CA5F68202D1B57FFFAFAEC6173C9E31
            B67F7DC0E70148C8CB2331CD44527A0689397DC8C671E4FD68F7BF4B446AE90A
            FC70BB6586EDB6DBDD41B586E2999924A46790909E411E83819CAF2EDF189365
            4E14855EB90A118235350B3D8585422431813CC5C51432A65120492F7BDE7BEF
            99F095FAC06E3DCDCBEAA79E0931FE005899C0D0854F198543CC1D40D6EAD5AB
            01787E60B8D96C58BAB456F206C1CA32188505AB3010BD61A8C78DFF2E79ECD8
            0FAF46E65353AB7533676D8918D32086A2082519104ED223E2B042BE63A24D37
            6CF8070C205CA18F832E277B1F377DC6E1A83609719941342109D1B800A1A49F
            9BBF6BF2760624817A9F0265007CF9A00FE469B3AA85A80C6D300284C2888E1E
            7D9ABFFDF61DDC9546B9EE108996B5A853C99F994DFEAC02F267E751D094490D
            23AB224494792DDDB94234A9B1B45C09A565923FBB80020613D9F28A44E7BE03
            2F5C0B5F08866EEA98F7A0D50D5028BF98C2E66CB2AA75E4FBEB07CB64228D7C
            A15A7ACD202242C4D631C55675ABCBA74DA440563EB9130DD4F1D2EFB7111123
            45A21023D1DEEF2B2B9088103CF6DD02479FBEB25F9B48CE4423B9376D7E4920
            42FC4AA35C0F24373EBBC81D4A48257F662EF933FA90036AB21D39BAEAC78C38
            1D3B767EE1044BBEAC7C7241436D53A79D8C11155C235FEBDEB96B95D59C4121
            7D1A795996DAC64F688BD8EC9552E7DC2C5D41C04EE85DABDE7CDFA14BA2009F
            48967EA5BE609B6542E736D5ABF85DF3B84C045194D21D0F2DF8DA0D907D5455
            53C8E9EC2F5D48AE6B1210F1B8B4B8193CB9CCB9143264D1A9D2017122CAFB31
            024A8238B6293397FC3A2339D2FB88B62DDB7EF763F882C77B93F5CE292D1E30
            645369C9F1D69A952251C2D504BC642F6C6C9E68ADA874BA552AB23FBDE84389
            889764055DE88D2376422642E0D3030F59131224F7ABAFFDA14B58E95A0524A2
            A496A9F7D8FC09E9E45225906DCBFB1B7EEC90AD4812677DF53F3F7601641959
            D5108BC50AC46E418A3FC0978978D7C64D2BECBC9AEC43865943E71A6F123BCB
            AC0B57C940884409AE279E79BF35C9A0048F1DBF5BBA867B777D271121D26ECD
            3D3F67DEBBC1A3DF8E50AE92B9575C80B3E6C4E34EA8A951972AC5894A7FCA49
            45E4CCD9510DE014DBE225AB1522083DD043B04BA010215A5F3FA2253BDF6999
            377F7B3C1A4F16882028FF0BBA8A0F85089EF7B6DDDB3C7FE19FFD674E9B034D
            4D0834365EC4DFEB348621BAE2B9A4FA5C7A9F73BAC993BECE5DFFE68C9F72D6
            28B9DC86E6252F3F9776FFF42D6C72F265934372BFB28BD74ACFA6188068B39B
            3AD66C784833B0AC465751BE9704E992735443FF01FF38FF89F4660DFFB1EC01
            E394F1478D15379CFCF9EFA39F20E0CFF6C3C6FE2CC1FFCDFE6700AABF6302DA
            4904700000000049454E44AE426082}
          Transparent = True
        end
        object cxLabel13: TcxLabel
          Left = 24
          Top = 26
          AutoSize = False
          Caption = '- '#44277#50976#53084
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 17
          Width = 53
        end
      end
    end
  end
  object lb_Title_List: TListBox
    Left = 361
    Top = 220
    Width = 93
    Height = 149
    ImeName = 'Microsoft IME 2003'
    ItemHeight = 15
    Items.Strings = (
      'No'
      #51648#49324#47749
      #51088#52404#49324#48264
      #44592#49324#47749
      #50948#52824'X'
      #50948#52824'Y'
      #51648#49324#53076#46300
      #44592#49324#49345#53468
      #50672#46973#52376
      #53084#47560#45320#49324#48264)
    TabOrder = 1
    Visible = False
  end
  object pnlLeft: TPanel
    Left = 0
    Top = 5
    Width = 317
    Height = 713
    Align = alLeft
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 2
    object cxGridWkConnect: TcxGrid
      Left = 0
      Top = 33
      Width = 317
      Height = 680
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelInner = bvNone
      BevelOuter = bvNone
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      object cxViewWkConnect: TcxGridDBTableView
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
        OnCellDblClick = cxViewWkConnectCellDblClick
        DataController.DataModeController.SmartRefresh = True
        DataController.Filter.Options = [fcoShowOperatorDescription, fcoSoftNull]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DataController.OnSortingChanged = cxViewWkConnectDataControllerSortingChanged
        Filtering.MRUItemsList = False
        Filtering.ColumnMRUItemsList = False
        Filtering.ColumnMRUItemsListCount = 0
        OptionsBehavior.CellHints = True
        OptionsBehavior.CopyCaptionsToClipboard = False
        OptionsBehavior.CopyPreviewToClipboard = False
        OptionsBehavior.ExpandMasterRowOnDblClick = False
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsSelection.CellSelect = False
        OptionsView.FocusRect = False
        OptionsView.NoDataToDisplayInfoText = '  '
        OptionsView.DataRowHeight = 22
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.GridLineColor = clSilver
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 23
        Styles.Selection = Frm_Main.cxStyle8
        OnColumnHeaderClick = cxViewWkConnectColumnHeaderClick
        object cxGVeOrderListColumnGridDBTableViewViewWkConnectColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'No'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 29
        end
        object cxGVeOrderListColumnGridDBTableViewViewWkConnectColumn2: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 67
        end
        object cxGVeOrderListColumnGridDBTableViewViewWkConnectColumn4: TcxGridDBColumn
          DataBinding.FieldName = #51088#52404#49324#48264
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 54
        end
        object cxGVeOrderListColumnGridDBTableViewViewWkConnectColumn5: TcxGridDBColumn
          DataBinding.FieldName = #44592#49324#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 60
        end
        object cxGVeOrderListColumnGridDBTableViewViewWkConnectColumn10: TcxGridDBColumn
          DataBinding.FieldName = #50948#52824'X'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 60
        end
        object cxGVeOrderListColumnGridDBTableViewViewWkConnectColumn11: TcxGridDBColumn
          DataBinding.FieldName = #50948#52824'Y'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 47
        end
        object cxGVeOrderListColumnGridDBTableViewViewWkConnectColumn16: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#53076#46300
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object cxGVeOrderListColumnGridDBTableViewViewWkConnectColumn17: TcxGridDBColumn
          DataBinding.FieldName = #44592#49324#49345#53468
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
        end
        object cxViewWkConnectColumn1: TcxGridDBColumn
          DataBinding.FieldName = #50672#46973#52376
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxViewWkConnectColumn2: TcxGridDBColumn
          DataBinding.FieldName = #53084#47560#45320#49324#48264
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 66
        end
      end
      object cxGridLevel4: TcxGridLevel
        GridView = cxViewWkConnect
      end
    end
    object cxLabel21: TcxLabel
      Left = 74
      Top = 1
      AutoSize = False
      Caption = #44592#49324#44160#49353
      ParentColor = False
      Style.BorderStyle = ebsFlat
      Style.Color = clWhite
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 26
      Width = 58
      AnchorX = 103
      AnchorY = 14
    end
    object txtSearch: TcxTextEdit
      Left = 129
      Top = 1
      TabStop = False
      AutoSize = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.ImeMode = imSHanguel
      Style.Color = clWhite
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = clDefault
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.Color = 11796479
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnKeyDown = txtSearchKeyDown
      Height = 26
      Width = 93
    end
    object btnSearch2: TcxButton
      Left = 224
      Top = 1
      Width = 57
      Height = 25
      Caption = #44160#49353
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 3
      OnClick = btnSearch2Click
    end
    object btnHint1: TcxButton
      Left = 283
      Top = 1
      Width = 34
      Height = 25
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360900000000000036000000280000001800000018000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000001C06003C501000AF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001A0500358F2200FF4E0F00A90000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000019050033B53D02FFBE4602FF551200A800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000019060030B43E03FFD97405FFCE5E04FF6E1701D2000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000340C0063B54004FFD77207FFD67207FFD16405FF791B02E40200
        0003000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000005F16
        01AAA53204FFBB4906FFCB6008FFD97A0BFFD7750AFFD97909FFD16807FFB843
        05FFB54105FFB54104FFB74104FF992902FF9C2A03FF9A2A02FF9A2802FF9A28
        02FF992702FF932602F6420E018200000000000000000D030015A93405FFD97C
        0DFFE28E10FFDF850FFFDE840EFFDC800DFFDA810DFFDA7E0CFFDE7C0BFFCC5E
        07FFC04602FFB84101FFD67009FFDC8009FFDA7C09FFDA7C08FFD97908FFD976
        07FFD97607FFDA7807FFCC5C05FF8D2703E700000000992D05E8E69614FFE28F
        14FFE18C13FFDF8912FFDF8911FFDE8811FFDE8510FFDF8810FFCC6609FFEDEA
        D6FFFFFFFFFFEDEAD6FF951F00FFD97A0CFFDA790CFFDA790BFFDA780BFFD778
        0AFFD7750AFFD67509FFD77809FFD77107FF5213019AC5560AFFE6A01AFFE295
        17FFE19317FFE19315FFE18F15FFE18E14FFE18E13FFE29013FFC95404FFFFFF
        FFFFFFFFFFFFFFFFFFFFB23B04FFCE6309FFDF8710FFDC810FFFDC810EFFDA80
        0DFFDA810CFFDA7D0CFFDA790CFFDF820BFFA63105FFCB630CFFE6A31EFFE49A
        1BFFE2991AFFE2991AFFE29819FFE29818FFE29518FFE49918FFC95A05FFFFFF
        FFFFFFFFFFFFFFFFFFFFB24C0FFFD4760EFFE18E12FFDF8912FFDE8811FFDE88
        11FFDE8510FFDE8410FFDE840FFFE18910FFAB3605FFCE670DFFE9A820FFE6A0
        1FFFE6A01FFFE69F1EFFE69F1DFFE69D1CFFE49A1CFFE69C1CFFDC8712FFC963
        0EFFC66E1BFFC66E1BFFB74004FFE79F19FFE19317FFE18F15FFE18F15FFE18E
        14FFE18E13FFE18C13FFDF8C11FFE49012FFAE3605FFD37D19FFECB83AFFE6A2
        1FFFE7A522FFE7A322FFE7A522FFE7A321FFE7A320FFE7A320FFD97D11FFCB69
        11FFCC7D1FFFC8721FFFB23B04FFE9A51EFFE2991AFFE2991AFFE29819FFE298
        18FFE29517FFE29315FFDF8F13FFE7A621FFC55A0EFFD99027FFF2DE9DFFEFD3
        7AFFECBD44FFE7AC27FFE9A923FFE9AB23FFE7A824FFE9A825FFDA7D0FFFF7EC
        E4FFFFFFFFFFFFFFFFFFB23B04FFEDAF23FFE6A01FFFE69D1CFFE69D1AFFE699
        18FFE49A1AFFE7AF30FFEDC962FFF2D984FFD1811FFFDC9528FFF5DE98FFF4D6
        8FFFF1D795FFF1DA95FFEFD17CFFEDC85BFFECBA3FFFEAB835FFDF8411FFDF84
        11FFFFFFFFFFFFFFFFFFBB5C14FFEAB733FFEAB733FFE9B234FFEAC34CFFEDCC
        6BFFF1D487FFF1D380FFEFD17AFFF1D780FFD3811FFFDF9C2CFFF5DF9FFFF4DA
        8EFFF4DA8EFFF4DA8FFFF4DC8FFFF5D992FFF5D995FFF5D998FFF2DC98FFDEAE
        53FFFFFFFFFFFFFFFFFFFDFFFFFFC9873AFFEFD382FFF2D790FFF2D489FFF1D4
        87FFEFD382FFEFD382FFEFD180FFF1D788FFD68821FFE1A030FFF7E2A3FFF5DE
        99FFF5DC99FFF5DC95FFF5DC95FFF4DA93FFF4DA93FFF4DA8FFFF5DC92FFECC8
        71FFDEB164FFFFFFFFFFFFFFFFFFFAF9FFFFBB691FFFF2D98EFFF1D48BFFF1D4
        88FFF1D488FFF1D485FFF1D385FFF2D990FFD98E25FFE2A934FFF7E4ABFFF5DF
        9AFFF5DE9AFFF5DE99FFF5DE99FFF5DE99FFF7DF9AFFF5DC92FFF7DE9CFFF7E1
        9CFFE4B253FFF7ECE4FFFFFFFFFFFFFFFFFFF7ECE4FFC8802AFFF5DA92FFF4D7
        8EFFF4D78CFFF4D68CFFF1D689FFF2DC95FFDC9327FFDC901FFFF9E9AFFFF7E1
        A0FFF7E19FFFF7E19FFFF7E19DFFF5E19FFFECC871FFE6B54CFFE6B54CFFF5DF
        93FFF5DE98FFD69C47FFFFFFFFFFFFFFFFFFF7F5F7FFC6822CFFFAE49FFFF4DA
        93FFF4DA93FFF4DA8EFFF4DA8FFFF5DF9AFFDE9A2AFFDF9824FFF9E9B4FFF7E2
        A5FFF7E2A3FFF7E2A3FFF7E1A3FFF9E2A8FFE6B54CFFF7ECE4FFF7ECE4FFE2BA
        6EFFD79D3EFFEADCC3FFFFFFFFFFFFFFFFFFF7F5F7FFC6822CFFF9E4A2FFF5DE
        99FFF5DE98FFF5DE99FFF5DC99FFF7E1A0FFDF9D2AFFE19A27FFFAECC3FFF9E4
        A5FFF9E2A6FFF9E2A6FFF9E2A5FFF9E6ACFFE9BE52FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7ECE4FFC8802AFFF9E2A3FFF5DF
        9DFFF5DF9AFFF5DE9AFFF5DE9AFFF7E19FFFE4B859FFC68920E0FDF7ECFFF9E4
        A5FFF9E6A9FFF9E6A9FFF9E4ABFFF9E2A2FFEDC969FFE6B54CFFF7ECE4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7ECE4FFC8802AFFF9E4A3FFF7E1A5FFF7E1
        A0FFF7E1A0FFF7E1A0FFF7E19CFFF9EAC3FFE4B856FF753F0588F7F2DFFFFCED
        CCFFF9E4A8FFF9E4A9FFF9E4A8FFF9E6A9FFF9E7AEFFF7DE93FFE6B54CFFDA9F
        36FFE6B54CFFE6B54CFFC97D28FFC8802AFFF9E9A5FFF9E2A5FFF9E1A0FFF7E1
        A0FFF7E1A0FFF7E19FFFF9E4B1FFFFFFFFFFC17010E500000000E6A524FFFDFD
        FFFFFDFAF5FFFDF5EDFFFDF5EDFFFDF5EDFFFDF5EDFFFDF5EFFFFFF9F4FFFFFA
        F5FFFFF9F2FFFFFAF2FFFFFDF9FFFFFAF5FFFDF5EFFFFDF5EDFFFDF5ECFFFDF5
        ECFFFDF5ECFFFDF7EFFFFFFFFFFFE7BA4AFF3119023C0000000003020003AC6C
        0EC0EAC550FFEDCF74FFEDCE70FFEDCC70FFEDCC70FFEDCC6EFFEDCC70FFEDCC
        6EFFEDCC6EFFEDCC6EFFEDCC6EFFEDCC6EFFEDCB6BFFEDCB70FFECC96CFFECC9
        6CFFECCB6DFFE9C35EFFC88014E5331A033C00000000}
      TabOrder = 4
      OnClick = btnHint1Click
    end
    object chkWKView: TcxCheckBox
      Left = 1
      Top = 4
      Caption = #44592#49324' '#54364#49884
      State = cbsChecked
      Style.LookAndFeel.SkinName = 'Sharp'
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      StyleFocused.LookAndFeel.SkinName = 'Sharp'
      StyleHot.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 5
      Transparent = True
      OnClick = ChkWorkerSchClick
    end
  end
  object splAcceptMap: TcxSplitter
    Left = 317
    Top = 5
    Width = 6
    Height = 713
    MinSize = 1
    Control = pnlLeft
  end
  object tmr_dis: TTimer
    Enabled = False
    Interval = 1300
    OnTimer = tmr_disTimer
    Left = 532
    Top = 220
  end
  object pmAcceptMap: TPopupMenu
    AutoHotkeys = maManual
    Left = 472
    Top = 276
    object N2: TMenuItem
      Caption = #50668#44592' '#51452#49548#54869#51064
      OnClick = N2Click
    end
    object mniIconCaption: TMenuItem
      Caption = '500m'#51060#45236#44592#49324' '#48143' '#44277#50976#53084' '#54788#54889
      OnClick = mniIconCaptionClick
    end
    object N1Km1: TMenuItem
      Caption = '1Km'#51060#45236#44592#49324' '#48143' '#44277#50976#53084' '#54788#54889
      OnClick = N1Km1Click
    end
    object N3Km1: TMenuItem
      Caption = '3Km'#51060#45236#44592#49324' '#48143' '#44277#50976#53084' '#54788#54889
      OnClick = N3Km1Click
    end
    object N5Km1: TMenuItem
      Caption = '5Km'#51060#45236#44592#49324' '#48143' '#44277#50976#53084' '#54788#54889
      OnClick = N5Km1Click
    end
    object N15Km1: TMenuItem
      Caption = '15Km'#51060#45236#44592#49324' '#48143' '#44277#50976#53084' '#54788#54889
      OnClick = N15Km1Click
    end
    object N30Km1: TMenuItem
      Caption = '30Km'#51060#45236#44592#49324' '#48143' '#44277#50976#53084' '#54788#54889
      OnClick = N30Km1Click
    end
    object N1: TMenuItem
      Caption = #51064#44540#44592#49324#44160#49353#52712#49548
      OnClick = N1Click
    end
  end
  object trm_Naver: TTimer
    Enabled = False
    Interval = 500
    OnTimer = trm_NaverTimer
    Left = 471
    Top = 220
  end
  object tmrDongPolygon: TTimer
    Enabled = False
    OnTimer = tmrDongPolygonTimer
    Left = 483
    Top = 500
  end
end

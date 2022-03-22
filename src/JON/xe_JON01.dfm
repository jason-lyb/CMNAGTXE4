object Frm_JON01: TFrm_JON01
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Frm_JON01'
  ClientHeight = 680
  ClientWidth = 1234
  Color = clBtnFace
  Constraints.MinWidth = 607
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  ScreenSnap = True
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  DesignSize = (
    1234
    680)
  PixelsPerInch = 96
  TextHeight = 12
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 1234
    Height = 680
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    object LblBottom: TLabel
      Left = 0
      Top = 673
      Width = 1230
      Height = 3
      Align = alBottom
      AutoSize = False
      Color = 14740970
      ParentColor = False
      Transparent = True
      ExplicitLeft = -9
      ExplicitTop = 295
      ExplicitWidth = 1008
    end
    object LblLeft: TLabel
      Left = 0
      Top = 32
      Width = 3
      Height = 641
      Align = alLeft
      AutoSize = False
      Color = 14740970
      ParentColor = False
      Transparent = True
      ExplicitTop = 601
      ExplicitHeight = 677
    end
    object LblRigth: TLabel
      Left = 1227
      Top = 32
      Width = 3
      Height = 641
      Align = alRight
      AutoSize = False
      Color = 14740970
      ParentColor = False
      Transparent = True
      ExplicitLeft = 8
      ExplicitTop = 6
      ExplicitHeight = 598
    end
    object LblTop: TLabel
      Left = 0
      Top = 29
      Width = 1230
      Height = 3
      Align = alTop
      AutoSize = False
      Color = clBtnFace
      ParentColor = False
      Transparent = True
      ExplicitTop = 0
      ExplicitWidth = 677
    end
    object pnlJonMain: TPanel
      Left = 3
      Top = 32
      Width = 1224
      Height = 641
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object Shape12: TShape
        Left = 0
        Top = 0
        Width = 1224
        Height = 2
        Align = alTop
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitTop = 8
        ExplicitWidth = 1090
      end
      object GbViaArea: TPanel
        Left = 0
        Top = 259
        Width = 1224
        Height = 37
        Align = alClient
        BevelKind = bkFlat
        BevelOuter = bvNone
        Color = 5815460
        ParentBackground = False
        TabOrder = 4
        object cxLblBar2: TLabel
          Left = 4
          Top = -1
          Width = 583
          Height = 3
          AutoSize = False
          Color = clSilver
          ParentColor = False
          Transparent = True
        end
        object BtnViaMinus1: TAdvGlowButton
          Tag = 1
          Left = 554
          Top = 5
          Width = 33
          Height = 20
          Hint = #49325#51228'(F6)'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            61000001344944415478DAED92B14A03411086FFBDC410130F2C2C2485A86023
            58FA04762216FA14161641F0E9AC04C1070801B1108984808981BD8BB9CBEDEE
            F8EFED450B4B0B2D3C989BB9B9F9FE999B3D851F5EEA5F004A4ECEFAD8EDB431
            2FBECB89A32DFBB8E0ACBF31D9A80383D14CC97557707A088C5E81951AEB222F
            1B8ABC19CF5A7A0A385A41B34CB65877FB00652F2F7474B41763302448F5590A
            4CC740A21967804E081130F60BCE1993774F3A51F3AB6ED23C585FC3FD1DF0E6
            C134742B6C00BD374BABF2992B9BE9179D2A7D7EACE31D13A3F7083457592015
            5C41DE5B025935415E7D86118C27EF89EA6D6FCAD6FE06CC704255EEC014E54B
            111BC4D8558C7C423E162B8838DCF32287BA6934FA9D56BD9D670B4EA5089667
            53FA6055EC17EA142C1F1C6A88B8D829B7F4077EA45F17F800233FB8939EF41E
            570000000049454E44AE426082}
          Spacing = 4
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BtnViaMinus1Click
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
        end
        object cxViaAreaName1: TcxLabel
          Left = 224
          Top = 3
          AutoSize = False
          Caption = 'cxViaAreaName1'
          ParentColor = False
          Properties.Alignment.Vert = taVCenter
          Height = 22
          Width = 326
          AnchorY = 14
        end
        object meoViaArea1: TcxMemo
          Tag = 1
          Left = 26
          Top = 4
          TabStop = False
          Lines.Strings = (
            'meoViaArea1')
          ParentFont = False
          Properties.WantReturns = False
          Properties.WantTabs = True
          Properties.OnChange = meoViaArea1PropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          OnEnter = meoViaArea1Enter
          OnExit = meoViaArea1Exit
          OnKeyDown = meoViaArea1KeyDown
          OnKeyUp = meoViaArea1KeyUp
          OnMouseDown = meoStartAreaMouseDown
          Height = 20
          Width = 200
        end
        object BtnViaLock1: TAdvGlowButton
          Left = 4
          Top = 2
          Width = 22
          Height = 21
          Cursor = crHandPoint
          Hint = 'F4)'#49688#51221
          ImageIndex = 0
          Images = cxImgLock
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          WordWrap = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = BtnViaLock1Click
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Style = bsCheck
        end
      end
      object GBTop1: TPanel
        Left = 0
        Top = 2
        Width = 1224
        Height = 35
        Align = alTop
        BevelKind = bkFlat
        BevelOuter = bvNone
        Color = 15790320
        ParentBackground = False
        TabOrder = 0
        object cxLblBar1: TLabel
          Left = 5
          Top = 26
          Width = 586
          Height = 5
          AutoSize = False
          Color = 5815460
          ParentColor = False
          Transparent = True
        end
        object BtnCall: TAdvGlowButton
          Left = 146
          Top = 2
          Width = 22
          Height = 22
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000029E4944415478DA8D925B4893611CC69FEFDBF19B53DB349DDADAC83C
            8CB2322A8D86E5BA28214A6FA2D2A4BA3323C812BA28AFBA31F022A26E23A303
            049AAC2E22570D44C3C80358CE360F6DDF4E4E77D09DBE7DDFB6A660D081B5E7
            E27DE181E7F7FE79FE2F81340A41A02535BB4E138A82169E522E004120E95E4C
            7016CF6BC262E9A2B03A4BFC2B188670274A2B9F893A5AAAC83C12480490F0F9
            8038074290E2F0F958793E0AD668D2FD050882BC2C38D7FC40D8DE80C4F03B24
            693B1061011E0F48A62EA918BE050F3E8D5A5043C9F11BC00FF22AD5DE764FD8
            508EB8BE0FA4980244C25430012E1C83204702CF8C0B9F07C6A0BBA845CC488F
            FD022C41DC2AB970E631D5B803F1BE9720E572B0DE28824336A7482D2BCAAA2D
            C6F2A403A36FA7A06BAD41C840DB23567FF93AC003094F7058CBE55E3F81F88B
            5E9005F9609C2178FB4CAF4A584F934350789FDDA7B862B3DA505D5B86951197
            3DEC582D2D8597590738A48AA1A2DEAE43F1FE27EB05B1A1245C7AF3803AE26E
            DC987012390F8BAB8BDB1847703EE409575724BC81359F30037B159DD7BE48C5
            1E7053DF000905BB7E8E56AF38957F163C2DC83F087E725C13598E6E78C45CBE
            FAAEEA567367C2A0072F4B8AA5992538C61D657B10B42003110B75F536956EDB
            16E683117CB90CAB740096B1C5EEFD71FFCD8C00CEA65351852C2662A6530F0A
            451051422CBA2298989837F079FC9347E3C1705A007DFC185392CD0A23662BC4
            120998288BE1A979684A36E33BEDBB7D840DDE490B98A8D05877572A959CC90C
            5228C67BD302B4AA2204A21C4668777D13988F69016F449B3AEAABB6F750013F
            8C3FEC3850A84020C6C2E0A62FB5008FFEDB417F6AF3D9B2BCD90296DB5A41E5
            C2CBC630E877769F07322B71ED788AD437077F5025CEA9FB1AF5F69C056E6412
            5ED34FC4BB10A6701482790000000049454E44AE426082}
          Spacing = 4
          TabOrder = 5
          OnClick = BtnCallClick
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
        end
        object cxtCuTel: TcxTextEdit
          Left = 37
          Top = 2
          AutoSize = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          TextHint = #44256#44061#44160#49353
          OnKeyDown = cxtCuTelKeyDown
          OnKeyPress = cxtCuTelKeyPress
          OnMouseDown = cxtCuTelMouseDown
          Height = 24
          Width = 108
        end
        object BtnCall2: TAdvGlowButton
          Left = 253
          Top = 2
          Width = 22
          Height = 22
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000029E4944415478DA8D925B4893611CC69FEFDBF19B53DB349DDADAC83C
            8CB2322A8D86E5BA28214A6FA2D2A4BA3323C812BA28AFBA31F022A26E23A303
            049AAC2E22570D44C3C80358CE360F6DDF4E4E77D09DBE7DDFB6A660D081B5E7
            E27DE181E7F7FE79FE2F81340A41A02535BB4E138A82169E522E004120E95E4C
            7016CF6BC262E9A2B03A4BFC2B188670274A2B9F893A5AAAC83C12480490F0F9
            8038074290E2F0F958793E0AD668D2FD050882BC2C38D7FC40D8DE80C4F03B24
            693B1061011E0F48A62EA918BE050F3E8D5A5043C9F11BC00FF22AD5DE764FD8
            508EB8BE0FA4980244C25430012E1C83204702CF8C0B9F07C6A0BBA845CC488F
            FD022C41DC2AB970E631D5B803F1BE9720E572B0DE28824336A7482D2BCAAA2D
            C6F2A403A36FA7A06BAD41C840DB23567FF93AC003094F7058CBE55E3F81F88B
            5E9005F9609C2178FB4CAF4A584F934350789FDDA7B862B3DA505D5B86951197
            3DEC582D2D8597590738A48AA1A2DEAE43F1FE27EB05B1A1245C7AF3803AE26E
            DC987012390F8BAB8BDB1847703EE409575724BC81359F30037B159DD7BE48C5
            1E7053DF000905BB7E8E56AF38957F163C2DC83F087E725C13598E6E78C45CBE
            FAAEEA567367C2A0072F4B8AA5992538C61D657B10B42003110B75F536956EDB
            16E683117CB90CAB740096B1C5EEFD71FFCD8C00CEA65351852C2662A6530F0A
            451051422CBA2298989837F079FC9347E3C1705A007DFC185392CD0A23662BC4
            120998288BE1A979684A36E33BEDBB7D840DDE490B98A8D05877572A959CC90C
            5228C67BD302B4AA2204A21C4668777D13988F69016F449B3AEAABB6F750013F
            8C3FEC3850A84020C6C2E0A62FB5008FFEDB417F6AF3D9B2BCD90296DB5A41E5
            C2CBC630E877769F07322B71ED788AD437077F5025CEA9FB1AF5F69C056E6412
            5ED34FC4BB10A6701482790000000049454E44AE426082}
          Spacing = 4
          TabOrder = 6
          OnClick = BtnCall2Click
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
        end
        object cboBranch: TcxComboBox
          Left = 380
          Top = 2
          TabStop = False
          AutoSize = False
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 10
          Properties.ImeMode = imSHanguel
          Properties.ImmediateDropDownWhenActivated = True
          Properties.Items.Strings = (
            #51648#49324'+'#45824#54364#48264#54840)
          Properties.OnChange = cboBranchPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #44404#47548
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Text = #51648#49324'+'#45824#54364#48264#54840
          OnClick = cboBranchClick
          OnMouseDown = cboBranchMouseDown
          Height = 24
          Width = 171
        end
        object cboBrOnly: TcxComboBox
          Left = 332
          Top = 2
          TabStop = False
          AutoSize = False
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51648#49324#51221#48372)
          Properties.OnChange = cboBrOnlyPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Text = #51648#49324#51221#48372
          TextHint = #51648#49324#51221#48372
          OnClick = cboBrOnlyClick
          OnEnter = cboBrOnlyEnter
          OnKeyPress = cboBrOnlyKeyPress
          OnMouseDown = cxtCuTelMouseDown
          Height = 24
          Width = 49
        end
        object cxButton1: TAdvGlowButton
          Left = 4
          Top = 2
          Width = 31
          Height = 22
          Cursor = crHandPoint
          Caption = #44284#44144
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Spacing = 4
          TabOrder = 7
          OnClick = cxButton1Click
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
        end
        object cxImage1: TcxImage
          Left = 133
          Top = 3
          Cursor = crHandPoint
          TabStop = False
          Picture.Data = {
            055449636F6E0000010001000707000001002000080100001600000028000000
            070000000E0000000100200000000000E0000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000004B79FFFF
            00000000000000000000000000000000000000004B79FFFF4B79FFFF00000000
            0000000000000000000000004B79FFFF4B79FFFF4B79FFFF0000000000000000
            000000004B79FFFF4B79FFFF4B79FFFF4B79FFFF00000000000000004B79FFFF
            4B79FFFF4B79FFFF4B79FFFF4B79FFFF000000004B79FFFF4B79FFFF4B79FFFF
            4B79FFFF4B79FFFF4B79FFFF4B79FFFF4B79FFFF4B79FFFF4B79FFFF4B79FFFF
            4B79FFFF4B79FFFFFC000000F8000000F0000000E0000000C000000080000000
            00000000}
          Style.BorderStyle = ebsNone
          TabOrder = 8
          OnClick = cxImage1Click
          Height = 12
          Width = 12
        end
        object cxTxtBrNameCaption: TcxTextEdit
          Left = 597
          Top = 2
          TabStop = False
          AutoSize = False
          ParentFont = False
          Properties.AutoSelect = False
          Properties.ImeMode = imSHanguel
          Properties.ReadOnly = True
          Style.Color = clBlack
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #44404#47548
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = 8454143
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = clWhite
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.TextColor = 4934475
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          Text = 'NS'#45824#47532#50629#52404#47749' / '#45824#54364#48264#54840
          Visible = False
          OnMouseEnter = cxTxtBrNameCaptionMouseEnter
          Height = 24
          Width = 289
        end
        object cxtCuTel2: TcxTextEdit
          Left = 169
          Top = 2
          TabStop = False
          AutoSize = False
          ParentFont = False
          Properties.OnChange = cxtCuTel2PropertiesChange
          TabOrder = 1
          TextHint = #44256#44061#51204#54868'2'
          OnMouseDown = cxtCuTelMouseDown
          Height = 24
          Width = 84
        end
        object cxTSearchMainTel: TcxTextEdit
          Left = 550
          Top = 2
          TabStop = False
          AutoSize = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          TextHint = #44160'  '#49353
          OnExit = cxTSearchMainTelExit
          OnKeyDown = cxTSearchMainTelKeyDown
          OnKeyUp = cxTSearchMainTelKeyUp
          OnMouseDown = cxTSearchMainTelMouseDown
          OnMouseLeave = cxTSearchMainTelMouseLeave
          OnMouseMove = cxTSearchMainTelMouseMove
          Height = 24
          Width = 41
        end
        object cbTelView: TcxComboBox
          Left = 275
          Top = 2
          TabStop = False
          AutoSize = False
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#54868'1'
            #51204#54868'2'
            #49345#54889#49892)
          Properties.OnChange = cbTelViewPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 10
          Text = #51204#54868'1'
          TextHint = #51648#49324#51221#48372
          Height = 24
          Width = 58
        end
      end
      object GBTop2: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 40
        Width = 1218
        Height = 147
        Align = alTop
        BevelKind = bkFlat
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        DesignSize = (
          1214
          143)
        object shpModifyTitle: TShape
          Left = 0
          Top = 0
          Width = 1214
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitTop = 8
          ExplicitWidth = 666
        end
        object cxLblCuLevel: TcxLabel
          Left = 192
          Top = 75
          TabStop = False
          AutoSize = False
          Caption = #52572#50864#49688#44256#44061
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = 12704475
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 17
          Width = 75
          AnchorX = 230
          AnchorY = 84
        end
        object mmoCbMemo: TcxMemo
          Left = 451
          Top = 2
          Lines.Strings = (
            #48277#51064#47700#47784)
          Properties.ImeMode = imSHanguel
          Properties.MaxLength = 0
          Properties.ScrollBars = ssVertical
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 12
          Visible = False
          OnKeyUp = mmoCbMemoKeyUp
          OnMouseDown = cxtCuTelMouseDown
          Height = 56
          Width = 138
        end
        object CbCuGb: TcxComboBox
          Left = 0
          Top = 53
          AutoSize = False
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.ImeMode = imSHanguel
          Properties.Items.Strings = (
            #44060#51064
            #50629#49548
            #48277#51064)
          Properties.OnChange = CbCuGbPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Text = #44060#51064
          OnClick = CbCuGbPropertiesChange
          OnMouseDown = cxtCuTelMouseDown
          Height = 22
          Width = 64
        end
        object cboCuLevel: TcxComboBox
          Left = 0
          Top = 29
          AutoSize = False
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.ImeMode = imSHanguel
          Properties.Items.Strings = (
            '0.'#48520#47049':'#48744#44053
            '1.'#51452#51032':'#51452#54889
            '2.'#51068#48152':'#54616#45720
            '3.'#50864#49688':'#46041#49353
            '4.'#52572#50864#49688':'#51008#49353
            '5.VIP:'#54889#44552#49353)
          Properties.OnChange = cboCuLevelPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Text = '0.'#48520#47049':'#48744#44053
          OnMouseDown = cxtCuTelMouseDown
          Height = 22
          Width = 99
        end
        object pnlMileage: TPanel
          Left = 0
          Top = 76
          Width = 192
          Height = 37
          BevelKind = bkFlat
          BevelOuter = bvNone
          Color = 12704475
          ParentBackground = False
          TabOrder = 17
          object lblCuMile: TLabel
            Left = -1
            Top = 5
            Width = 41
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = '100,000'
            Transparent = True
          end
          object lblCuMileUnit: TLabel
            Left = 58
            Top = 5
            Width = 34
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = '10,000'
            Transparent = True
          end
          object Label5: TLabel
            Left = 41
            Top = 5
            Width = 12
            Height = 13
            AutoSize = False
            Caption = #50896
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label1: TLabel
            Left = 97
            Top = 5
            Width = 88
            Height = 12
            Caption = #45800#50948' '#51648#44553'      '#54924
            Transparent = True
          end
          object lblCuMileCnt: TLabel
            Left = 152
            Top = 5
            Width = 18
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = '999'
            Transparent = True
          end
          object lblMoCuMile: TLabel
            Left = -1
            Top = 18
            Width = 41
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = '100,000'
            Transparent = True
          end
          object Label9: TLabel
            Left = 41
            Top = 18
            Width = 12
            Height = 13
            AutoSize = False
            Caption = #50896
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label11: TLabel
            Left = 68
            Top = 18
            Width = 116
            Height = 12
            Caption = #49548#47736#50696#51221'              '#50896
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblCuMileLost: TLabel
            Left = 130
            Top = 18
            Width = 40
            Height = 12
            Alignment = taRightJustify
            Caption = '100,000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4194432
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
        end
        object PnlOCC: TPanel
          Left = 0
          Top = 115
          Width = 266
          Height = 27
          BevelKind = bkFlat
          BevelOuter = bvNone
          Color = 12704475
          ParentBackground = False
          TabOrder = 18
          object Label6: TLabel
            Left = 2
            Top = 6
            Width = 28
            Height = 12
            Caption = #51217#49688':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblCuCntTotal: TLabel
            Left = 32
            Top = 6
            Width = 27
            Height = 15
            AutoSize = False
            Caption = '256'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label8: TLabel
            Left = 118
            Top = 6
            Width = 40
            Height = 12
            Caption = #52712#49548#50984':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblCuCancelR: TLabel
            Left = 159
            Top = 6
            Width = 31
            Height = 15
            AutoSize = False
            Caption = '100%'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label10: TLabel
            Left = 61
            Top = 6
            Width = 28
            Height = 12
            Caption = #50756#47308':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblCoCntTotal: TLabel
            Left = 90
            Top = 6
            Width = 27
            Height = 15
            AutoSize = False
            Caption = '272'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object chkCenterMng: TcxCheckBox
            Left = 198
            Top = 2
            Caption = #49345#54889#49892
            TabOrder = 0
            Transparent = True
            OnClick = chkCenterMngClick
          end
        end
        object ChkCuSmsNo: TcxCheckBox
          Left = 97
          Top = 31
          Caption = 'SMS'#44144#48512
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Transparent = True
          OnClick = ChkCuSmsNoClick
        end
        object btnBubinSch: TcxButton
          Left = 269
          Top = 53
          Width = 35
          Height = 20
          Cursor = crHandPoint
          Hint = #48277#51064#51312#54924
          Enabled = False
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E0000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000265EB219376EF52C130E6700000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000033571C2008EECFF009AF4FF1F4B80FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            010108468AD82BA7F5FF16C0FFFF00A0F3FF01356EAA00000000000000000000
            0000000000000000000000000000000000000000000000000000000001010C57
            9EE268C4F8FF6BD4FFFF279CE6FF0434679E0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000186AB1DBA4E3
            FEFFB5EEFFFF4CAAE7FF01386C9A000000000000000000000000000000000100
            0002270F0F86482727BD65443FD1482728C12C10107B57464F9D359EE8FFBDF5
            FFFF77C4EFFF003E779C000000000000000000000000000000001207073A7B55
            54FCDFD3CBFFFFFFF7FFFFFFE7FFFFFEDBFFD6BB9EFF90584DFF817B8EFF1794
            E4FF014B7F95000000000000000000000000000000000904041B886565FFFFFF
            FFFFFFFFFFFFFDF8E8FFFAF2DCFFF8EDCFFFFFF1CFFFF6DEBAFF9F5945FF1A21
            305A00000000000000000000000000000000000000003F24249BF6EFEAFFFFFF
            FFFFFEFBF5FFFBF7E8FFF9F4DAFFF5EBCCFFE6CEACFFF3DAB8FFE2BD99FF5131
            34A60000000000000000000000000000000000000000886A68F4FFFFFFFFFDFB
            F1FFFCF8EEFFFAF3E1FFFCF5E3FFF7F0D7FFF0DFC1FFE7C9A9FFF0D1ABFF946A
            61EC0806060F00000000000000000000000000000000907471F7FFFFFCFFF9F2
            E1FFFAF3DEFFFAF7E5FFFAF1DCFFF1DFC0FFEDD9BAFFECD8B9FFEDCAA5FFAF86
            79FF1510122800000000000000000000000000000000957974F9FFFFEBFFF9EE
            D5FFFAF1D7FFF9F2DAFFF2E3C6FFFEFBF9FFFFFFF0FFEFDFC0FFE9C69EFFA57A
            70F40F0C0D1A00000000000000000000000000000000604646B0F7EAC8FFF9EB
            CCFFEFDCBEFFF4E4C7FFF0E1C5FFFDFCECFFFAF5DDFFEFDCBCFFDFB087FF8165
            65CB000000000000000000000000000000000000000021181A43BA998CFFFDEC
            C4FFEDD4B0FFE5CAA8FFEFDBBFFFF2E3C4FFF2DEBCFFEABF93FFBB8E7DFF2E27
            29470000000000000000000000000000000000000000000000003A2A316BBE9A
            8DFFE6C7A5FFEFCBA3FFECC8A2FFE8BE94FFDCAA86FFBE9585FF433A3C640000
            000000000000000000000000000000000000000000000000000000000000201A
            1C366D5758A3B3958DF9B7948AF3B6968DF7776563AB1F1C1E2E000000000000
            00000000000000000000000000000000000000000000}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 19
          OnClick = btnBubinSchClick
          OnMouseDown = cxtCuTelMouseDown
        end
        object cxBtnCuDel: TcxButton
          Left = 271
          Top = 29
          Width = 33
          Height = 22
          Cursor = crHandPoint
          Caption = #49325#51228
          TabOrder = 10
          OnClick = cxBtnCuDelClick
          OnMouseDown = cxtCuTelMouseDown
        end
        object cxBtnCuNew: TcxButton
          Left = 238
          Top = 29
          Width = 32
          Height = 22
          Cursor = crHandPoint
          Caption = #49888#44508
          TabOrder = 9
          OnClick = cxBtnCuNewClick
          OnMouseDown = cxtCuTelMouseDown
        end
        object cxBtnCuUpdate: TcxButton
          Left = 205
          Top = 29
          Width = 32
          Height = 22
          Cursor = crHandPoint
          Caption = #49688#51221
          TabOrder = 8
          OnClick = cxBtnCuUpdateClick
          OnMouseDown = cxtCuTelMouseDown
        end
        object cxBtnSpSave: TcxButton
          Left = 171
          Top = 29
          Width = 33
          Height = 22
          Cursor = crHandPoint
          Caption = #51200#51109
          TabOrder = 7
          OnClick = cxBtnSpSaveClick
          OnMouseDown = cxtCuTelMouseDown
        end
        object cxBtnHoTrans: TcxButton
          Left = 269
          Top = 3
          Width = 35
          Height = 24
          Cursor = crHandPoint
          Hint = #54840#51204#54872
          Caption = #54840
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = cxBtnHoTransClick
        end
        object BtnCustAdd: TcxButton
          Left = 233
          Top = 3
          Width = 35
          Height = 24
          Cursor = crHandPoint
          Hint = #44256#44061#54633#52824#44592
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E0000000000000000000000000000000000000000
            000000000000000000000A0A0B165254609B8F7F78F68C7050EF423E3A9B0606
            0719000000000000000000000000000000000000000000000000000000000000
            0000000000000B0A0C189F9AA1F8C18D50FFD38519FFBD650AFFA9672CFF7463
            57FB0707081A0000000000000000000000000000000000000000000000000000
            00000A0A0B19A29898F3CE8935FFD78B0FFFD48D1FFFBF6D10FFC16907FFB766
            18FF77614DF709080A1F00000000000000000000000000000000000000000606
            070F8E8589EBD5923EFFDA9727FFD99E37FFD4912EFFC0711AFFC4761CFFC672
            11FFB96519FF6E5B4CF5060506110000000000000000000000000404040A7071
            7FD7D7A060FFDE9A2FFFDDA245FFDEA23FFFDA9933FFC7771BFFC77A20FFC579
            20FFCB7412FFB16928FF534B48CF03030309000000000000000035363F78B99F
            8DFFE29D37FFE2AB4DFFDFA648FFCA934AFFCA9147FFBA7228FFBE7221FFCA7C
            24FFCA7D25FFCB7418FF8D6440FF2A26287400000000000000007C7981E3E8C1
            89FFE4A949FFE3AF58FFE0A645FFD8A76CFFFDFFFFFFFAF0D2FFCD914DFFC778
            1DFFCA812AFFD07E22FFB77836FF776853E40000000000000000A19696DFD699
            45FFECBE63FFE5B259FFE0A33DFFDBAA64FFFDFFFFFFF6EBCCFFCC8C44FFC772
            11FFCB812AFFD2882DFFBF7022FF77604AE10000000000000000ADA5A3E1DB9C
            41FFEBB960FFE1C8A9FFE7D3BCFFEDDDCBFFFEFDFBFFF6EACAFFDDBA88FFD7AD
            79FFD1A26BFFD28A2FFFC97925FF7A6147E10000000000000000B7B2B1E1EAC5
            87FFEFC67EFFECDAC5FFFFFFFFFFFFFFFFFFFDFAF5FFF6EACAFFF6EACAFFF6EA
            CAFFDEBA86FFD08320FFC87923FF776046E10000000000000000B8B4B2E1F0D1
            9FFFF5DBACFFEDD1B1FFF9EEDEFFF9F0E2FFFDFAF9FFF6EACAFFF6EACAFFF6EA
            CAFFD9AD6EFFDA9A48FFD59449FF8B755EE10000000000000000B9B4B2E1F1D0
            9BFFF7E0B2FFF2D4A0FFEDCA8BFFEFD1A1FFFFFEFFFFF6EBD7FFE4BE86FFDDAB
            67FFE1B679FFEBC996FFE6BF89FF9E8E7CE10000000000000000BCB6B4E1F2D3
            9EFFF8E1B4FFF8DFB4FFF5DEADFFF5DFBAFFFDFFFFFFF3E7D2FFEAC998FFE9C4
            88FFEAC58EFFEAC489FFE5BB7DFF9C8C76E10000000000000000BEB8B6E1F4D5
            A0FFFAE4B8FFF8E1B5FFF7DFB2FFF3DAACFFF3DDB4FFE8C590FFE7C187FFEAC5
            8CFFEBC58CFFEDC78DFFEABE81FF9F8E78E10000000000000000C0BAB8E1F9DB
            A1FFFDE4B3FFFBE2B0FFFBE0AFFFFBE1B0FFF9DAA3FFEDC485FFEEC88BFFEEC8
            8DFFEEC78CFFF0C98EFFEFC181FFA39079E10000000000000000B7B4B8D6E1D7
            D0FFD2C9C2F2D1C8C1F3CFC6C0F3CEC5BFF3CAC0B7F3BEA789F3BEA88CF3BCA6
            89F3BAA487F3B7A187F2C1AA8CFF988A78D600000000}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = BtnCustAddClick
          OnMouseDown = cxtCuTelMouseDown
        end
        object edtCuName: TcxTextEdit
          Left = 0
          Top = 3
          AutoSize = False
          ParentFont = False
          TabOrder = 0
          TextHint = #44256#44061#47749
          OnKeyUp = edtCuNameKeyUp
          OnMouseDown = cxtCuTelMouseDown
          Height = 23
          Width = 231
        end
        object cxtCuBubin: TcxTextEdit
          Left = 65
          Top = 53
          AutoSize = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          TextHint = #48277#51064#47749'/'#48512#49436#47749
          OnMouseDown = cxtCuTelMouseDown
          Height = 22
          Width = 202
        end
        object pnlBubinState: TPanel
          Left = 680
          Top = 123
          Width = 280
          Height = 145
          BevelOuter = bvNone
          BorderWidth = 3
          Color = clRed
          ParentBackground = False
          TabOrder = 20
          Visible = False
          object pnlBubinState1: TPanel
            Left = 3
            Top = 3
            Width = 274
            Height = 139
            Align = alClient
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            DesignSize = (
              274
              139)
            object lbBubinStateName: TcxLabel
              Left = 0
              Top = 28
              AutoSize = False
              Caption = 'rkrkrk'
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
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 23
              Width = 273
              AnchorX = 137
              AnchorY = 40
            end
            object lbBubinStateMemo: TcxLabel
              Left = 6
              Top = 94
              AutoSize = False
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -19
              Style.Font.Name = #44404#47548
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = True
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Height = 23
              Width = 265
              AnchorY = 106
            end
            object cxLabel2: TcxLabel
              Left = 3
              Top = 7
              Cursor = crIBeam
              Caption = #48277#51064#44228#50557#49345#53468
              Style.TextColor = 10329501
              Transparent = True
              OnClick = cxLCuCCMemoFlgClick
            end
            object cxLabel4: TcxLabel
              Left = 3
              Top = 74
              Cursor = crIBeam
              Caption = #48277#51064#44228#50557#49345#53468'('#47700#47784')'
              Style.TextColor = 10329501
              Transparent = True
              OnClick = cxLCuCCMemoFlgClick
            end
            object SpeedButton2: TcxButton
              Left = 251
              Top = 1
              Width = 22
              Height = 22
              Anchors = [akTop, akRight]
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
              TabOrder = 4
              OnClick = SpeedButton1Click
            end
          end
        end
        object meoCuWorMemo: TcxMemo
          Left = 311
          Top = 59
          OnFocusChanged = meoCuWorMemoFocusChanged
          Properties.ImeMode = imSHanguel
          Properties.MaxLength = 0
          Properties.ScrollBars = ssVertical
          Properties.OnChange = meoCuWorMemoPropertiesChange
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 13
          OnEnter = meoCuWorMemoEnter
          OnExit = meoCuWorMemoExit
          OnKeyUp = meoCuWorMemoKeyUp
          OnMouseDown = cxtCuTelMouseDown
          Height = 51
          Width = 278
        end
        object meoCuCCMemo: TcxMemo
          Left = 311
          Top = 2
          OnFocusChanged = meoCuCCMemoFocusChanged
          Lines.Strings = (
            '')
          Properties.ImeMode = imSHanguel
          Properties.MaxLength = 0
          Properties.ScrollBars = ssVertical
          Properties.OnChange = meoCuCCMemoPropertiesChange
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 11
          OnEnter = meoCuCCMemoEnter
          OnExit = meoCuCCMemoExit
          OnKeyUp = meoCuCCMemoKeyUp
          OnMouseDown = cxtCuTelMouseDown
          Height = 56
          Width = 140
        end
        object cxLCuCCMemoFlg: TcxLabel
          Left = 313
          Top = 5
          Cursor = crIBeam
          Caption = #49345#45812#47700#47784' ( '#45236#48512#47700#47784' )'
          Style.TextColor = 10329501
          Transparent = True
          OnClick = cxLCuCCMemoFlgClick
        end
        object cxLCuWorMemoFlg: TcxLabel
          Left = 316
          Top = 63
          Cursor = crIBeam
          Caption = #44592#49324#47700#47784' ( '#48176#52264#49884' '#44592#49324#50640#44172' '#48372#51076' )'
          Style.TextColor = 10329501
          Transparent = True
          OnClick = cxLCuWorMemoFlgClick
        end
        object BtnViewMemo: TAdvGlowButton
          Left = 1065
          Top = 6
          Width = 16
          Height = 16
          Cursor = crHandPoint
          Anchors = [akRight, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D494844520000000A0000000A08060000008D32CF
            BD000001A54944415478DA019A0165FE0185D3F3F312090305E7F4FDFDD2E7F8
            8BEAF4FC82FD000000160A037D2E1A0876160C0403DCEDFBF80192D9F5F80909
            0407D5E8F7E5C5D7F359CB5F1DC3000000003FA6E545412A0EA716120613D8E7
            F8F6016FC4EDF5FC0101F80D0B050CD9E1F4AED5DCF173FFE5FA0A53521B9B11
            130739DDEAF9ECF6FAFD14013B9BDC7EF0F2FCC927230E761D1A0B3FD9DEF1B5
            2815071113150A39C1D4EFACE5E5F496100F06600100000000000000001B58BD
            242F4F24A01D1F0F3B0801FF00D3D7EEAC7E3D156E40250EE71678CD02010000
            0000000000002252B42433572BA005150D3BF6FAFE00E7DCEEAC8841156E412B
            13E70054B502012B7AC87EFCF7FBC92B331A7601120C3FDBD2E8B5060905110F
            1D1139E7D9EBACF9E3ED960B130A60013B98D9F5030603F8090F080CE0D1E8AE
            F2DDEA73FAE6EF0A17472C9B0719113908F7F7EC02FCFD14012F9DDDF8F60809
            07F8E2EDE5FBD2DE57E8A74FC5000000001E60B5440C3222A8F9130F13FBE0EC
            F7011C7AC7F0F904050400F8FC0400E8ECA503ECEE66F5FF0400141F1199031A
            135BEFFA02FD02F1F4F8021AB63258FCD92D0000000049454E44AE426082}
          Spacing = 4
          TabOrder = 24
          OnClick = BtnViewMemoClick
          OnMouseDown = cxtCuTelMouseDown
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
        end
        object cxLCuCCMemoFlg1: TcxLabel
          Left = 316
          Top = 113
          Cursor = crIBeam
          Caption = #49900#54540#47700#47784
          Style.TextColor = 10329501
          Transparent = True
          OnClick = cxLCuCCMemoFlg1Click
        end
        object chkViewLevel: TcxCheckBox
          Left = 571
          Top = 64
          Hint = #44592#49324#47700#47784'+'#44256#44061#47749' '#44592#49324#45800#47568' '#48120#54364#49884
          AutoSize = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 26
          OnClick = chkViewLevelClick
          Height = 16
          Width = 16
        end
        object edt_CardMemo: TcxMemo
          Left = 311
          Top = 111
          OnFocusChanged = edt_CardMemoFocusChanged
          Lines.Strings = (
            '1'
            '2'
            '3')
          Properties.MaxLength = 300
          Properties.ScrollBars = ssVertical
          Properties.OnChange = edt_CardMemoPropertiesChange
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 14
          OnEnter = edt_CardMemoEnter
          OnExit = edt_CardMemoExit
          OnKeyUp = edt_CardMemoKeyUp
          OnMouseDown = cxtCuTelMouseDown
          Height = 29
          Width = 278
        end
        object BtnSimMemo: TAdvGlowButton
          Left = 1165
          Top = 116
          Width = 18
          Height = 18
          Cursor = crHandPoint
          Anchors = [akRight, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000000473424954080808087C086488000000097048597300000B1200000B
            1201D2DD7EFC0000001C74455874536F6674776172650041646F626520466972
            65776F726B732043533398D6460300000015744558744372656174696F6E2054
            696D6500322F31372F3038209CAA580000041174455874584D4C3A636F6D2E61
            646F62652E786D70003C3F787061636B657420626567696E3D22202020222069
            643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E0A3C
            783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D657461
            2F2220783A786D70746B3D2241646F626520584D5020436F726520342E312D63
            3033342034362E3237323937362C20536174204A616E20323720323030372032
            323A31313A34312020202020202020223E0A2020203C7264663A52444620786D
            6C6E733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F
            30322F32322D7264662D73796E7461782D6E7323223E0A2020202020203C7264
            663A4465736372697074696F6E207264663A61626F75743D22220A2020202020
            20202020202020786D6C6E733A7861703D22687474703A2F2F6E732E61646F62
            652E636F6D2F7861702F312E302F223E0A2020202020202020203C7861703A43
            726561746F72546F6F6C3E41646F62652046697265776F726B73204353333C2F
            7861703A43726561746F72546F6F6C3E0A2020202020202020203C7861703A43
            7265617465446174653E323030382D30322D31375430323A33363A34355A3C2F
            7861703A437265617465446174653E0A2020202020202020203C7861703A4D6F
            64696679446174653E323030382D30332D32345431393A30303A34325A3C2F78
            61703A4D6F64696679446174653E0A2020202020203C2F7264663A4465736372
            697074696F6E3E0A2020202020203C7264663A4465736372697074696F6E2072
            64663A61626F75743D22220A202020202020202020202020786D6C6E733A6463
            3D22687474703A2F2F7075726C2E6F72672F64632F656C656D656E74732F312E
            312F223E0A2020202020202020203C64633A666F726D61743E696D6167652F70
            6E673C2F64633A666F726D61743E0A2020202020203C2F7264663A4465736372
            697074696F6E3E0A2020203C2F7264663A5244463E0A3C2F783A786D706D6574
            613E0A2020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020200A202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020200A20202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020351D52640000010949444154388DC593BF4E024110C6BFB9
            9033111329576A1B1B626263636D03AFE04B90F81026BE842F40B1D750DBD090
            181A1A1B1BFF745C027840E4A31897BB650F0A30719A9DD9DDF9E5FB66EF8424
            0E89E8A0EEBF00545C2222C1A1B14200F86C31385C5B2789B239182BECA46027
            051D68134012E29A8B0A8C153EDE10E95CEBD318683F8BA764DDB7093056787F
            AD7BA3995EAE1DE9FAD0CB21A50063857757B9DA74FAABE03897FED457480038
            4B22DE367CABE389AE2755DF7F7720F8682E0528BC0280A43B90A62B2E2F882C
            535B939878197A0F91B864EB10EBE7C472A47B518D787F2D1F625181175F0B20
            CE349F2FB6DDDA01F879137CBB621C7E6481857DE3FF7FA61506197DA0A17B68
            3C0000000049454E44AE426082}
          Spacing = 4
          TabOrder = 25
          OnClick = BtnSimMemoClick
          OnMouseDown = cxtCuTelMouseDown
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
        end
        object pnlBrNoMent: TPanel
          Left = 584
          Top = 32
          Width = 589
          Height = 24
          BevelKind = bkFlat
          BevelOuter = bvNone
          BorderWidth = 2
          Color = clWindow
          ParentBackground = False
          TabOrder = 15
          Visible = False
          object lblBrNoMent: TLabel
            Left = 2
            Top = 2
            Width = 337
            Height = 15
            Align = alClient
            Alignment = taCenter
            Caption = #52572#49440#51012' '#45796#54616#44192#49845#45768#45796'.  '#44415#49436#48708#49828' '#9675#9675#9675#51077#45768#45796'.'
            Color = 16766935
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4210816
            Font.Height = -15
            Font.Name = #44404#47548
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Layout = tlCenter
          end
        end
        object pnlNewCustYN: TPanel
          Left = 672
          Top = 61
          Width = 589
          Height = 24
          BevelKind = bkFlat
          BevelOuter = bvNone
          BorderWidth = 2
          ParentBackground = False
          ParentColor = True
          TabOrder = 16
          Visible = False
          object Label3: TLabel
            Left = 449
            Top = 2
            Width = 16
            Height = 13
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lblNewCustYN: TLabel
            Left = 2
            Top = 2
            Width = 327
            Height = 15
            Cursor = crHandPoint
            Align = alClient
            Alignment = taCenter
            Caption = #9675#9675#9675#9675#9675' / 000000000 '#51032' '#49888#44508#44256#44061' '#51077#45768#45796'.'
            Color = 12510951
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clOlive
            Font.Height = -15
            Font.Name = #44404#47548
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Layout = tlCenter
            OnClick = lblNewCustYNClick
          end
        end
        object cb_CarType: TcxComboBox
          Left = 192
          Top = 92
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.ImeMode = imSAlpha
          Properties.Items.Strings = (
            #52264#51333'- 1'#51333
            #52264#51333'- 2'#51333)
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 30
          Text = #52264#51333'- 2'#51333
          OnKeyPress = cboBrOnlyKeyPress
          OnMouseDown = cxtCuTelMouseDown
          Width = 75
        end
        object btnMileGive: TcxButton
          Left = 269
          Top = 74
          Width = 35
          Height = 17
          Cursor = crHandPoint
          Caption = #51648#44553
          TabOrder = 31
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          OnClick = btnMileGiveClick
          OnMouseDown = cxtCuTelMouseDown
        end
        object btnMileCharge: TcxButton
          Tag = 1
          Left = 269
          Top = 91
          Width = 35
          Height = 17
          Cursor = crHandPoint
          Caption = #52649#51204
          TabOrder = 32
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          OnClick = btnMileGiveClick
          OnMouseDown = cxtCuTelMouseDown
        end
        object btnMileList: TcxButton
          Left = 269
          Top = 108
          Width = 35
          Height = 17
          Cursor = crHandPoint
          Caption = #47560#51068
          TabOrder = 33
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          OnClick = btnMileListClick
          OnMouseDown = cxtCuTelMouseDown
        end
        object btnCustAppinfo: TcxButton
          Left = 269
          Top = 125
          Width = 35
          Height = 17
          Cursor = crHandPoint
          Caption = #50612#54540
          TabOrder = 34
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          OnClick = btnCustAppinfoClick
          OnMouseDown = cxtCuTelMouseDown
        end
        object pnl_MileOut: TPanel
          Left = 708
          Top = 91
          Width = 306
          Height = 139
          BevelKind = bkFlat
          BevelOuter = bvNone
          BorderWidth = 2
          Color = 7697781
          ParentBackground = False
          TabOrder = 35
          Visible = False
          OnClick = lb_LockMentClick
          DesignSize = (
            302
            135)
          object Shape5: TShape
            Left = 4
            Top = 45
            Width = 76
            Height = 27
            Pen.Color = 13353605
            Shape = stRoundRect
          end
          object Shape8: TShape
            Left = 4
            Top = 74
            Width = 76
            Height = 27
            Pen.Color = 13353605
            Shape = stRoundRect
          end
          object Shape4: TShape
            Left = 4
            Top = 104
            Width = 76
            Height = 27
            Pen.Color = 13353605
            Shape = stRoundRect
          end
          object lb_MileTitle: TcxLabel
            Left = 3
            Top = 2
            AutoSize = False
            Caption = #47560#51068#47532#51648' '#51648#44553
            ParentColor = False
            ParentFont = False
            Style.Color = 16769186
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -21
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Height = 41
            Width = 184
            AnchorY = 23
          end
          object cbbCuProduct: TcxComboBox
            Left = 65
            Top = 44
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ReadOnly = False
            Properties.OnChange = cbbCuProductPropertiesChange
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnKeyDown = cbbCuProductKeyDown
            Height = 29
            Width = 122
          end
          object cxLabel19: TcxLabel
            Left = 7
            Top = 50
            Caption = #51648#44553#49345#54408
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = clBlack
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorX = 35
            AnchorY = 59
          end
          object edtMileMemo: TcxTextEdit
            Tag = 1
            Left = 65
            Top = 103
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Properties.MaxLength = 50
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            OnKeyDown = edtMileMemoKeyDown
            Height = 29
            Width = 235
          end
          object curOutMileMny: TcxCurrencyEdit
            Left = 65
            Top = 73
            AutoSize = False
            EditValue = 990000.000000000000000000
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.;-,0.'
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.TextStyle = []
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnKeyDown = curOutMileMnyKeyDown
            Height = 29
            Width = 122
          end
          object cxLabel22: TcxLabel
            Left = 8
            Top = 109
            Caption = #47700'      '#47784
            ParentColor = False
            ParentFont = False
            Style.Color = 16441805
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorX = 35
            AnchorY = 118
          end
          object lbMileCaption: TcxLabel
            Left = 7
            Top = 79
            Caption = #51648#44553#47560#51068
            ParentColor = False
            ParentFont = False
            Style.Color = 16441805
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorX = 35
            AnchorY = 88
          end
          object btn_MileOut_Close: TcxButton
            Left = 278
            Top = 4
            Width = 22
            Height = 22
            Cursor = crHandPoint
            Hint = #45803#44592
            Anchors = [akTop, akRight]
            Colors.Default = 16635384
            Colors.Normal = 16773362
            Colors.Hot = 16360076
            Colors.Pressed = 16644080
            Colors.Disabled = 4227327
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
            TabOrder = 8
            TabStop = False
            OnClick = btn_MileOut_CloseClick
          end
          object btnMileOut: TcxButton
            Left = 187
            Top = 44
            Width = 113
            Height = 58
            Caption = #51648#44553
            LookAndFeel.NativeStyle = True
            TabOrder = 3
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnMileOutClick
          end
          object GrpCoupon: TcxGroupBox
            Left = 278
            Top = 128
            Caption = #44221#54408' '#51648#44553' '#51204#49569
            Style.BorderStyle = ebsFlat
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            TabOrder = 9
            Visible = False
            Height = 72
            Width = 259
            object Shape11: TShape
              Left = 3
              Top = 13
              Width = 76
              Height = 22
              Pen.Color = 13353605
              Shape = stRoundRect
            end
            object edtCouponHP: TcxTextEdit
              Tag = 1
              Left = 75
              Top = 12
              AutoSize = False
              Properties.ImeMode = imSHanguel
              Properties.MaxLength = 11
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 0
              Height = 24
              Width = 122
            end
            object btnCouponSend: TcxButton
              Left = 201
              Top = 14
              Width = 56
              Height = 22
              Cursor = crHandPoint
              Caption = #51204#49569
              Colors.Default = 16635384
              Colors.Normal = 16773362
              Colors.Hot = 16360076
              Colors.Pressed = 16644080
              Colors.Disabled = 4227327
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              TabOrder = 1
            end
            object btnCouponClose: TcxButton
              Left = 201
              Top = 42
              Width = 56
              Height = 22
              Cursor = crHandPoint
              Caption = #45803#44592
              Colors.Default = 16635384
              Colors.Normal = 16773362
              Colors.Hot = 16360076
              Colors.Pressed = 16644080
              Colors.Disabled = 4227327
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              TabOrder = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              ParentFont = False
            end
            object lblCouponDesc: TcxLabel
              Left = -2
              Top = 38
              Caption = #8251' '#51473#48373' ('#51116')'#51204#49569#49884' '#52880#49772'/'#47560#51068#47532#51648#44032' '#13#10'    '#51473#48373' '#52264#44048' '#46112#49688' '#51080#49845#45768#45796'.'
              ParentColor = False
              Style.BorderStyle = ebsNone
              Style.Color = 16441805
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorY = 52
            end
            object cxLabel25: TcxLabel
              Left = 9
              Top = 17
              Caption = #54648#46300#54256#48264#54840
              ParentColor = False
              ParentFont = False
              Style.Color = clBtnFace
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = False
              Style.TextColor = clBlack
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              AnchorX = 41
              AnchorY = 25
            end
          end
          object cxButton9: TcxButton
            Left = 187
            Top = 2
            Width = 91
            Height = 41
            Caption = #51312#54924
            LookAndFeel.NativeStyle = True
            TabOrder = 10
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = cxButton9Click
          end
        end
        object pnlCallBell: TPanel
          Left = 625
          Top = 36
          Width = 241
          Height = 30
          BevelKind = bkFlat
          BevelOuter = bvNone
          Caption = '+++++'#53084#48296' '#50629#49548' - '#53084#47553'+++++'
          Color = 8404992
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 29
          Visible = False
        end
        object pnlCallBellAll: TPanel
          Left = 786
          Top = 100
          Width = 308
          Height = 143
          Cursor = crHandPoint
          BevelKind = bkFlat
          BevelOuter = bvNone
          Color = 8404992
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 27
          Visible = False
          OnClick = pnlCallBellAllClick
          object cxLabel6: TcxLabel
            Left = -1
            Top = 64
            Cursor = crHandPoint
            AutoSize = False
            ParentColor = False
            Style.BorderColor = clRed
            Style.Color = clRed
            Height = 11
            Width = 306
          end
          object lbUpsoName: TcxLabel
            Left = 2
            Top = 17
            Cursor = crHandPoint
            Caption = 'lbUpsoName'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -24
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.TextColor = clWhite
            Style.IsFontAssigned = True
          end
          object lbUpsoPee: TcxLabel
            Left = 0
            Top = 84
            Cursor = crHandPoint
            AutoSize = False
            Caption = #53084#48296' '#50629#49548' - '#53084#47553
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -37
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.TextColor = clWhite
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 40
            Width = 305
            AnchorX = 153
            AnchorY = 104
          end
        end
      end
      object GBTop3: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 193
        Width = 1218
        Height = 63
        Align = alTop
        BevelKind = bkFlat
        BevelOuter = bvNone
        Color = 9432062
        ParentBackground = False
        TabOrder = 2
        object Shape_LBS: TShape
          Left = 522
          Top = 7
          Width = 42
          Height = 24
          Hint = #53084#47560#45320'IPCC'#50752' '#47560#49696#54588#47532' '#51060#50857#49884#50640#47564' '#49324#50857#51060' '#44032#45733#54633#45768#45796'.'
          ParentShowHint = False
          Pen.Color = 9432062
          ShowHint = True
          OnMouseEnter = Shape_LBSMouseEnter
          OnMouseLeave = Shape_LBSMouseLeave
        end
        object lblStartAreaName: TcxRichEdit
          Left = 1
          Top = 31
          TabStop = False
          Enabled = False
          ParentFont = False
          Properties.ReadOnly = True
          Properties.OnChange = lblStartAreaNamePropertiesChange
          Lines.Strings = (
            #49436#50872' '#50689#46321#54252#44396' '#50689#46321#54252#46041)
          Style.Color = clBtnFace
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = 7171437
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Height = 22
          Width = 185
        end
        object cxtStartAreaDetail: TcxRichEdit
          Left = 185
          Top = 31
          TabStop = False
          ParentFont = False
          Properties.ReadOnly = False
          Lines.Strings = (
            #50689#46321#54252#50669)
          Style.Color = 12316900
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = 7171437
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          OnMouseDown = cxtCuTelMouseDown
          Height = 22
          Width = 132
        end
        object meoStartArea: TcxMemo
          Left = 28
          Top = 6
          OnFocusChanged = meoStartAreaFocusChanged
          Lines.Strings = (
            #50689#46321#54252#49884#51109#50669
            #50689#46321#54252)
          ParentFont = False
          Properties.ImeMode = imSHanguel
          Properties.WantReturns = False
          Properties.OnChange = meoStartAreaPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = #44404#47548
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnEnter = meoStartAreaEnter
          OnExit = meoStartAreaExit
          OnKeyDown = meoStartAreaKeyDown
          OnKeyUp = meoStartAreaKeyUp
          OnMouseDown = meoStartAreaMouseDown
          OnMouseEnter = AutoSelectMouseEnter
          OnMouseLeave = AutoSelectMouseMouseLeave
          Height = 26
          Width = 490
        end
        object cb_00: TAdvGlowButton
          Left = 347
          Top = 32
          Width = 24
          Height = 21
          Cursor = crHandPoint
          Hint = #53441#49569
          AntiAlias = aaNone
          Caption = #53441
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImageIndex = 18
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = cb_00Click
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Style = bsCheck
        end
        object cb_01: TAdvGlowButton
          Left = 403
          Top = 32
          Width = 24
          Height = 21
          Cursor = crHandPoint
          Hint = #51221#51109
          AntiAlias = aaNone
          Caption = #51221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImageIndex = 18
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = cb_00Click
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Style = bsCheck
        end
        object cb_03: TAdvGlowButton
          Left = 453
          Top = 32
          Width = 24
          Height = 21
          Cursor = crHandPoint
          Hint = #51201#50836
          AntiAlias = aaNone
          Caption = #51201
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImageIndex = 18
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = cb_00Click
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Style = bsCheck
        end
        object cb_02: TAdvGlowButton
          Left = 428
          Top = 32
          Width = 24
          Height = 21
          Cursor = crHandPoint
          Hint = #44221#50976
          AntiAlias = aaNone
          Caption = #44221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImageIndex = 18
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = cb_00Click
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Style = bsCheck
        end
        object cb_04: TAdvGlowButton
          Left = 478
          Top = 32
          Width = 24
          Height = 21
          Cursor = crHandPoint
          Hint = #49828#54001
          AntiAlias = aaNone
          Caption = #49828
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImageIndex = 18
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = cb_00Click
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Style = bsCheck
        end
        object cxLStartAreaFlag: TcxLabel
          Left = 41
          Top = 6
          Cursor = crIBeam
          Caption = #52636#48156#51648
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.TextColor = 10329501
          Style.IsFontAssigned = True
          Transparent = True
          OnClick = cxLStartAreaFlagClick
        end
        object BtnStLock: TAdvGlowButton
          Left = 2
          Top = 7
          Width = 24
          Height = 24
          Cursor = crHandPoint
          Hint = 'F4)'#49688#51221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImageIndex = 0
          Images = cxImgLock
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          WordWrap = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnClick = BtnStLockClick
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Style = bsCheck
        end
        object btnSBigo1: TAdvGlowButton
          Left = 565
          Top = 6
          Width = 24
          Height = 25
          Cursor = crHandPoint
          Hint = #49444#51221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548#52404
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            61000003594944415478DA7D536B4C9357187ECE47EF7E40592B52855229DE36
            200223389DB72C363A34448C252E43E6A241C36674F80316AFB3A8D9E2BC04DD
            6046826E4CBCD4186546882ECECB46844D86A373B5B1149012562C507BEF77FC
            FA19132F89273939276F9EF7F2BCEFF312BC728A2FB80A9508D7110E890FFC48
            E24D345D8641CA10BB1B311B9B0A55175FC4935703ACF8F9D1A56D459A02CAFF
            4D4D8EFEA86D6BB176521468320F349F5D3571E96B01E69E18C8F7B946F77B82
            5EB3422C371E2F9F961FB57B83CF400AC9B3F7D323F7DBBC21DF6956A22892AB
            E22A6EACD6B4919C630E893214F8EF8B65E9A94E370725CB208601F69DE9C6D8
            C80838CA21365E892AE33BE038C0EDE190A464F0EDC5073D6EB1742AC9A8B1A6
            A58889ADCAA8479C02B8DAE9C7778DAD88043CE02261207A41C14815D8505A08
            C34C3946BDC0DED336F486A85EA0A0AF6A5E342F27BBC590AB81A9B153701628
            F4598457AA4EE60345C0C858EC5C3B1F2D1D03F8EDCFBF0CB6BD05AD44B7F9CC
            EEF0F0D092F56B4B725D6341DCB6383168BD0B2EE085A37E9D9040BBE687684F
            C1EA666241B616C92A1647EB1A3A446F8DBF4CDEDBFF0FAD2C7E1B119EDF95F6
            41DCEC76C2EFB4C256B3F2A509E9379EA3225685D9D953B1344F039188EF5353
            374886A993EEF8280B019EAAA56F14CD6D3D70DDBB86DE9F36BD144057F6238D
            D56662F1BB29C8D2254026067635FE0DA2F9E4D06EDFC3AE251F966DCF9D9731
            11EDD621980FEF44DCF4B9B0D77E4C9E3B7B1D9D58BEAE023953D4B8DEF508BF
            D47ED5219F9C795900C4193E5B943CA7B4658B3117224260BE6DC7F5FA6AC4A6
            0B7280C7DE810FD65462E5FBA9F007A3A5B7A3EF568361B4A5A695A85755A749
            39B16DEB979B04B04422C28478827B761F2C8E61C19695A64266AA0CCEC75171
            4540796D98F61C448009E94962C9D71232E6B12E2F2DD7F6BA9EC0CF37637E96
            06D327B1484C00784D616804B8DFEFC5B5BBFD90F20952D4E370BEE18883C6B2
            53040A9AB2EFF3FD0F2DDF84BDC3FF3321AED0505ECD08A5FBC2FC7428125809
            42118AAB472BC14965A744F2F824996E46D540DDFA3F5E5BA6E4929AAEBC8505
            1941DEF1CEF95A44F59B57B4019218823BBF5EFAB7EFE4E733DEB88DA9156717
            50F7E37AEA7FA2A34AE52C01E476FF0E464C18F5F8153D078CE617F14F01002D
            5610FE51288A0000000049454E44AE426082}
          PopupMenu = pmSpop
          Spacing = 4
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnClick = btnSBigo1Click
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
        end
        object BtnViaAdd: TAdvGlowButton
          Left = 528
          Top = 32
          Width = 62
          Height = 22
          Cursor = crHandPoint
          Hint = #52628#44032'(F5)'
          Caption = #44221#50976#51648
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            61000003264944415478DA8D935D6C53651CC67F6F4FDB9DD26E5D194559619B
            9B0337BF264AD0A14125EDA6817D7921C131A30425042EC444634C144D085E41
            0C0461485486860B65A32CCAB6882C866982289A089165848DB4A454E8C7DA9D
            D3F69CD6C359B26C5EF15CBD79FFCFFB4BFE799F47F07FB5D04C396D95B2BBDD
            ED713BEF5C256289F4B89AE8254C1F414ECFB68B99531776B2F477B53EE9DFD0
            D8C41315F5B829354709E2FC3671896F4606387AF2D721C3B996A3867B06B005
            1B3AA19EB7B67B3BEA5EE4B63AC985C808DF5E0B9AE397AB3B78CCBB128FECE2
            C4E5EFD9B8775F14091F07C94D033A193CBEF37D7F53CD2A46C267B99D1D253C
            E5E59DFA43E678C3D95A5A6B96532C55D158FE2C0363E758BF73D710C708085E
            25B0A5BD65E0E3D6D7F861BC97BC5051F51849E5BE1940E7F0FDACA97A1821EC
            580A322F54B6F3C1C92F38D81B6C12E26DA9FBF48EDD9B15DB2837D25163173B
            092DCA1FA1717A568F99808DC335AC5CBC0C87544CCE587D91D38B23574BF39E
            F70E8BFA4F2A238776742E1CBC348CA4ACE01FF53B2C4222998D10F4A74D40C7
            8F1E9CD6F9E8058D65F24BE88EF304EA57F3E69E633745C3A73EE5F36D5BE503
            E7BEE6C8337F7337DAF4F3836C5DF50AAFEF3FA08AA7BFAC537677AE97BB4E7D
            C8D5B6C25D01AAFB043DEB3EE2DDAF8EABE2A1CF16475A5AEF5978EAE205C2CA
            5CE3BF1DD3C00527040B8C4868C6391E877207AC6B789CFE60E4A6B877AFDCFD
            D4F3EECD259283A81A2593CF1057346239185B330D78E08C01B041A95C8AB0E4
            2993E793D4157E3993382C3CBB9C814756B8067C55F350923A16AB8598728BEB
            CA24579E9B062CFD49B0C4518CC751465ECBE32891085D9BE2AFF3A92633484B
            F63B071B1ACBFC4536894C268F6A44F7F7F1C49C159657BA918D68171559C8E4
            742E8EDC1ABABE2D1D300115FB9CB6792596D0D2473DDE229B15F2052E872608
            C7741350EE91A8F35560FCAFF158E3CA9FB1E85432EF9BD89ECECD94A9BADB61
            B759ADFD8B6A5C7E57B11D57890DAB91873BD20A3AA9648ED464961B63A9A19C
            A6ADBDFA8632AB4CB3547BC4D9EC2AB5B65925A9DD6217669DF3D9425AD3F5DE
            545CEB1BDD949E53E7FF00E0CB305493330DEC0000000049454E44AE426082}
          Spacing = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          OnClick = BtnViaAddClick
          OnMouseDown = cxtCuTelMouseDown
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphRight
        end
        object btnStartLocalSave: TAdvGlowButton
          Left = 317
          Top = 32
          Width = 22
          Height = 21
          Cursor = crHandPoint
          Hint = #52636#48156#51648' '#51221#48372#47484' '#51200#51109' '#54633#45768#45796'. '#45796#51020#48264' '#51060#50857#49884' '#51088#46041#51004#47196' '#48520#47084#50741#45768#45796'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548#52404
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            61000002FE4944415478DA95925F685B6518879F2F39499BA66B9B6C599BC476
            AD2DAB69A754A1BB9A4C8AAD28DE88C2840D2F1C6C08DE886C302F64838DA228
            BB90C960E08DA20C1DEC622BAB5AB4F8675BBBBA4DCD96D4A66CB39DB4F9B7C4
            989C9C34E7F56BBAC16E64EE85C33907CE79BEE7FDBDAF3AF4734A946150C1C0
            5B2DD0585F87ED903CB634A1140A703A0D5C860B44C866EE7021E7E2CFA5A27F
            FAF54D59F5EE8F29D931E0E79B8CE2D97F12F43F16D41FAEFEA64BF4E5F09098
            BFC1746289C1EE56DC756E3EB7424C5C5A249B2E87D481EF97E5D1CE26A6724E
            5EF83BC6737DADE4AB8EDAC9555B086E6CE1C0D12FB8DEB58D91F4143DFD11BE
            5BFF043EBBC8F8A5346ADFB74B12E96A663AEF62247795677A03146C43034477
            21B4FB1B193D7591F4F030FD3F8C110A0418F30FD2596F3113CBA0DE1E5F949E
            2E5F0D309C996168B306C85D803668D706FB8F9D26D63BC2D0AD71225B229CF3
            6F25E432D7007B4ECEC9E30321A6B21A903ACFF37D01F2E2AE01C48675EBBC4C
            FC7A93E4DC2C2D1D9DD4D51B7CDD3C4858037EB9AE5BD8FB65427AFA824C573C
            3C199B64A8BD9EA25A03DCCBD1DBE0C1ED04A352E6CC6C8E68DF76DAAC02BF45
            97506F7C352F6D9BC3FCF1D3058C8538F64A057138B8BFE4EEDD616B25A70B77
            672F75035B895FBD85DAF5694C7CDD6DECF5A5F408BBF93F158D253878DBCF72
            5C1BBCF6595C5C1DADBC154811F0B530767602D11645B348A96462954A94AC32
            15D324994C32FAC128C9EC1DF6DDF0918B2FA2767E724D64532BEF84B235033D
            B9D5057CA0C19B734D1462B751AF9EF85D4C6D70B823F75006BBA38D58F105D4
            CB1F5F914247880FBBF38483EB49EB5D77EA1045AB8892B5B5D6CF4AE75A29AF
            B061839FBF96B3ECB8EC85591DE24BC76624190C733C52A8198C9F9B64A56251
            32F5C9C522E55513B38C5536C9A4D31C79EF70CDE0C5F31E5C090D78FAA3A894
            7B42BCDF3CCFF6A71EA194CEE370AEF5AAEE8D703518FD56AD5669F0FB98BCB2
            C02B37DBF15CBE860AEF9F145B6B5AC50A396BE5BEA8FE3B49B7E1C0AB34ACB9
            817F011E8D71A0A8082DC50000000049454E44AE426082}
          Spacing = 4
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
          OnClick = btnStartLocalSaveClick
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
        end
        object cb_05: TAdvGlowButton
          Left = 503
          Top = 32
          Width = 24
          Height = 21
          Cursor = crHandPoint
          AntiAlias = aaNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImageIndex = 18
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 14
          OnClick = cb_00Click
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Style = bsCheck
        end
        object cb_06: TAdvGlowButton
          Left = 372
          Top = 32
          Width = 30
          Height = 21
          Cursor = crHandPoint
          Hint = #53441#54869
          AntiAlias = aaNone
          Caption = #53441#54869
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImageIndex = 18
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 15
          OnClick = cb_00Click
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Style = bsCheck
        end
        object btn_LBS: TcxButton
          Left = 522
          Top = 7
          Width = 42
          Height = 24
          Cursor = crHandPoint
          Hint = #53084#47560#45320'IPCC'#50752' '#47560#49696#54588#47532' '#51060#50857#49884#50640#47564' '#49324#50857#51060' '#44032#45733#54633#45768#45796'.'
          Caption = 'LBS'
          Enabled = False
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000000473424954080808087C08648800000009704859730000005F000000
            5F012A9EED1D0000001974455874536F667477617265007777772E696E6B7363
            6170652E6F72679BEE3C1A0000025449444154388D85935D48935118C7FFE7EC
            9D73D34DB39CD3771FB95512ACA994D9C80B2906124AE94D168451D045603729
            481762DD844137EBE32288E8A69BBA8AA08B3E2E1224A5D187A3A998A5D362AE
            B97A17B3F9BE7B9F2EC2A5EFD41E3817E77F7ECF8F731E388C88A0AD3D4EA7C7
            AA536E944211C1C07F90F0757EB9F0C2F8FCF48496655A41BDC7D95043E947C7
            F8A253C0DF33050C4FD4B2B988623A199A9D1D5ACD73ADB13C2BDFEEE009A700
            C22209F84E7A124038CA13769B6E39A8E5D708DC6E778587FDAEE400265563FA
            9E6ABB765FADB8F2918A520CC02EB6E470BBDDAE0D055CE6E62D4C3102C00C15
            26E7140C260D45D7BF504112002C504C06995936144C45A7A652E01300E0D749
            62A33EF3D29B597CD5C4250700FC242112897E1A5BDD2368DF9484309C01F717
            238B4E1EAF5DC9653024987E78D31900C09B14BF3CA216C7B4F9A86A4E7C3314
            0EFC57301E8FA726611C91C17259160CD382F1EDF3C85C625381D7EB2D38D4E8
            085EEC4DB942A5FF6615B298D17749AA6F3F2C3E70381CC675050D75DBEB7DAE
            C4D0DDFED8B94063BA56DC0F242140820E65751C7EDFD2D69BBD0B9D817DF268
            D35EFB813C41B959EE39D32679AB2B6503009CEF923066B7E043A505DD672500
            806855D8E9566987A5083DB92B10516EB536570D04FB4A162804A210E8C52D23
            3D1E34D1CAFE4E7F49BCADB9EAEAEA9E35022242E0A0FD48F709EBE7F430CB35
            665E33EAEDDA36D3D2646FD7F279022282CFE7AA3EDE627B1F7D2AA8B1673A3A
            D5660BD7EDB6EF5C8FCDFB8D2B258AA2A9A1861EEA04E827DE95758417C2BFD6
            E3FE00CAF724D51E73E4D40000000049454E44AE426082}
          OptionsImage.Spacing = 0
          ParentShowHint = False
          ShowHint = False
          TabOrder = 16
          OnClick = btn_LBSClick
        end
        object GBStartXYView: TPanel
          Left = 595
          Top = 8
          Width = 235
          Height = 24
          BevelKind = bkFlat
          BevelOuter = bvNone
          TabOrder = 13
          Visible = False
          object cxLabel7: TLabel
            Left = 0
            Top = 4
            Width = 29
            Height = 12
            Caption = '[Lat]'
            Transparent = True
          end
          object cxLabel8: TLabel
            Left = 98
            Top = 4
            Width = 33
            Height = 12
            Caption = '[Lon]'
            Transparent = True
          end
          object cxtStartXval: TcxTextEdit
            Left = 33
            Top = -1
            TabStop = False
            AutoSize = False
            ParentFont = False
            Properties.ReadOnly = True
            Properties.OnChange = cxtStartYvalPropertiesChange
            Style.Color = clWindow
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Text = '99999'
            OnClick = cxtStartXvalClick
            Height = 22
            Width = 63
          end
          object cxtStartYval: TcxTextEdit
            Left = 132
            Top = -1
            TabStop = False
            AutoSize = False
            ParentFont = False
            Properties.ReadOnly = True
            Properties.OnChange = cxtStartYvalPropertiesChange
            Style.Color = clWindow
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Text = '99999'
            OnClick = cxtStartXvalClick
            Height = 22
            Width = 63
          end
          object btnSClose: TcxButton
            Left = 197
            Top = 0
            Width = 34
            Height = 20
            Cursor = crHandPoint
            Caption = #45803#44592
            ParentShowHint = False
            ShowHint = False
            TabOrder = 2
            OnClick = btnSCloseClick
          end
        end
        object PnlHint: TPanel
          Left = 596
          Top = 40
          Width = 317
          Height = 26
          BevelKind = bkFlat
          BevelOuter = bvNone
          Color = 14155775
          ParentBackground = False
          TabOrder = 17
          Visible = False
          object Lbl_Hint: TLabel
            Left = 6
            Top = 4
            Width = 301
            Height = 12
            Caption = #53084#47560#45320'IPCC'#50752' '#47560#49696#54588#47532' '#51060#50857#49884#50640#47564' '#49324#50857#51060' '#44032#45733#54633#45768#45796'.'
          end
        end
        object btnTakAlly: TAdvGlowButton
          Left = 343
          Top = 48
          Width = 28
          Height = 22
          Cursor = crHandPoint
          Hint = #53441#49569#50672#54633#53084
          AntiAlias = aaNone
          Caption = #53441#53084
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImageIndex = 18
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 18
          OnClick = btnTakAllyClick
          OnMouseDown = cxtCuTelMouseDown
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Style = bsCheck
        end
      end
      object GBTop5: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 368
        Width = 1218
        Height = 200
        Align = alBottom
        BevelKind = bkFlat
        BevelOuter = bvNone
        Color = 15790320
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 5
        object BtnCenterMng: TAdvGlowButton
          Left = 523
          Top = 7
          Width = 38
          Height = 22
          Cursor = crHandPoint
          Hint = #49345#54889#49892
          AntiAlias = aaNone
          Caption = #49345#54889#49892
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImageIndex = 18
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = BtnCenterMngClick
          OnMouseDown = cxtCuTelMouseDown
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Style = bsCheck
        end
        object BtnOptionSexF: TAdvGlowButton
          Left = 409
          Top = 7
          Width = 18
          Height = 22
          Cursor = crHandPoint
          Hint = #50668#44592#49324
          AntiAlias = aaNone
          Caption = #63873
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImageIndex = 18
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = BtnOptionSexFClick
          OnMouseDown = cxtCuTelMouseDown
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Style = bsCheck
        end
        object BtnOptionSexM: TAdvGlowButton
          Left = 392
          Top = 7
          Width = 18
          Height = 22
          Cursor = crHandPoint
          Hint = #45224#44592#49324
          AntiAlias = aaNone
          Caption = #30007
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImageIndex = 18
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnClick = BtnOptionSexMClick
          OnMouseDown = cxtCuTelMouseDown
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Style = bsCheck
        end
        object BtnPlusYN: TAdvGlowButton
          Left = 495
          Top = 7
          Width = 27
          Height = 22
          Cursor = crHandPoint
          Hint = #48277#51064#53084
          AntiAlias = aaNone
          Caption = #48277#51064
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImageIndex = 18
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnClick = BtnPlusYNClick
          OnMouseDown = cxtCuTelMouseDown
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Style = bsCheck
        end
        object cxLabel13: TcxLabel
          Left = 48
          Top = 7
          AutoSize = False
          ParentColor = False
          Style.BorderStyle = ebsUltraFlat
          Style.Color = 15263954
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Height = 22
          Width = 247
        end
        object cxLblRate1: TcxLabel
          Left = 142
          Top = 11
          AutoSize = False
          Caption = '1'#50948' \200,000'
          Style.TextColor = 4210816
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          Height = 16
          Width = 76
          AnchorX = 180
          AnchorY = 19
        end
        object cxLblRate2: TcxLabel
          Left = 216
          Top = 11
          AutoSize = False
          Caption = '2'#50948' \200,000'
          Style.TextColor = 8404992
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          Height = 16
          Width = 79
          AnchorX = 256
          AnchorY = 19
        end
        object cxLblSmartRate: TcxLabel
          Left = 48
          Top = 11
          AutoSize = False
          Caption = #49828#47560#53944' \150,000'
          Style.TextColor = clFuchsia
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          Height = 16
          Width = 95
          AnchorX = 96
          AnchorY = 19
        end
        object Pnl_BubinV: TPanel
          Left = 3
          Top = 56
          Width = 595
          Height = 24
          BevelOuter = bvNone
          TabOrder = 14
          Visible = False
          object cxTBubinMemo: TcxTextEdit
            Left = 356
            Top = 1
            TabStop = False
            OnFocusChanged = cxTBubinMemoFocusChanged
            AutoSize = False
            ParentFont = False
            Properties.ImeMode = imSHanguel
            Properties.OnChange = cxTBubinMemoPropertiesChange
            Style.Color = 16375788
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            OnEnter = cxTBubinMemoEnter
            OnExit = cxTBubinMemoExit
            OnMouseDown = cxtCuTelMouseDown
            Height = 21
            Width = 232
          end
          object cxCurPathRate: TcxCurrencyEdit
            Left = 2
            Top = 1
            TabStop = False
            OnFocusChanged = cxCurPathRateFocusChanged
            AutoSize = False
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,'
            Properties.ImeMode = imSHanguel
            Properties.UseLeftAlignmentOnEditing = False
            Properties.UseNullString = True
            Properties.OnChange = cxCurPathRatePropertiesChange
            Style.BorderStyle = ebsUltraFlat
            Style.Color = 16375788
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnEnter = cxCurPathRateEnter
            OnExit = cxCurPathRateExit
            OnKeyDown = cxCurPathRateKeyDown
            OnMouseDown = cxtCuTelMouseDown
            Height = 21
            Width = 111
          end
          object cxTmWaitTime: TcxTimeEdit
            Left = 113
            Top = 1
            Hint = #45824#44592#49884#44036
            TabStop = False
            Constraints.MinHeight = 21
            ParentFont = False
            Properties.Alignment.Vert = taBottomJustify
            Properties.AutoSelect = False
            Properties.ImeMode = imSHanguel
            Properties.ShowDate = True
            Properties.TimeFormat = tfHourMin
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.Color = 16773362
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.TextColor = clBlack
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnKeyDown = cxTmWaitTimeKeyDown
            OnMouseDown = cxtCuTelMouseDown
            Width = 54
          end
          object cxCurWaitTmRate: TcxCurrencyEdit
            Left = 196
            Top = 1
            TabStop = False
            AutoSize = False
            EditValue = 100000.000000000000000000
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taBottomJustify
            Properties.DisplayFormat = '#,'
            Properties.ImeMode = imSHanguel
            Style.Color = 16375788
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            OnKeyDown = cxCurWaitTmRateKeyDown
            OnMouseDown = cxtCuTelMouseDown
            Height = 21
            Width = 48
          end
          object cxCurRevisionRate: TcxCurrencyEdit
            Left = 245
            Top = 1
            TabStop = False
            OnFocusChanged = cxCurRevisionRateFocusChanged
            AutoSize = False
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,'
            Properties.ImeMode = imSHanguel
            Properties.UseLeftAlignmentOnEditing = False
            Properties.OnChange = cxCurRevisionRatePropertiesChange
            Style.BorderStyle = ebsUltraFlat
            Style.Color = 16375788
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            OnEnter = cxCurRevisionRateEnter
            OnExit = cxCurRevisionRateExit
            OnKeyDown = cxCurRevisionRateKeyDown
            OnMouseDown = cxtCuTelMouseDown
            Height = 21
            Width = 111
          end
          object lblCurPathRate: TcxLabel
            Left = 6
            Top = 5
            Cursor = crIBeam
            Caption = #44221#50976#50836#44552
            ParentColor = False
            ParentFont = False
            Style.Color = 16375788
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 10329501
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            OnClick = lblCurPathRateClick
            AnchorX = 32
            AnchorY = 13
          end
          object lblCurRevisionRate: TcxLabel
            Left = 253
            Top = 4
            Cursor = crIBeam
            Caption = #48372#51221#44552#50529
            ParentColor = False
            ParentFont = False
            Style.Color = 16375788
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 10329501
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            OnClick = lblCurRevisionRateClick
            AnchorX = 279
            AnchorY = 12
          end
          object cxBtnWaitTmRate: TAdvGlowButton
            Left = 168
            Top = 1
            Width = 27
            Height = 21
            Cursor = crHandPoint
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = #44404#47548#52404
            Font.Style = []
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Picture.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              61000002B24944415478DA85925D48145114C7FF33B3BBA505896558A1229245
              F481B5A411C56A20A1513E941066526256A25154646099413D84A0B5D9A254DA
              8395482665B19915F990A1643E88903E886BABDBE6EEB82BBB3B9FB7BBB3218C
              051E18E6CE9D737EF3BBE70C83BF51DFD9ABAE888E122559914449810A02BF20
              2328A99874BB970F8DBAF0CD5ACE6041CC6FB4F4F493E359666D1D0A8998E283
              70F15EB83C02867FBA3036E5827326087B4D11F35F40E3DB2FA4647F4604A002
              0628F0CDF9C1870806C69C189F9AC6E68475A86EFB8CFEDA52E65FC09B4152B4
              27068C3519C1E24FB8FC241AFE9969B0AC01A38E09941498519CBD032DDDDFD1
              DA3B0487DBBB6CC4763E300FB8DFD547CEE6A4EBCE27500BD07EFC70B831E2F2
              22272D0513333E3CB20FA2B36F18634D17997940DDAB0152668903B1264138F1
              01D79EC7429078282A8122CB1877BAE198F6615BEA4A64EC8C4743D7573DE056
              EB7B5279741FED3DE804004EDB25DA290522411665CCFA830886148CFEF2A0DC
              F65A0FA86AB1939AFC4D90EA12E02FFE889AA7B150440F5886D390014902EFF1
              63D7D6781CC84C45EE8D663DA0CCFA9258CB0E810F12FA4D05064EC5525ACC1A
              59FA1C499B0B0A5488813F2060EF95463DA0D46627B6C224487737C253F00E37
              DB5741157918392354130B13CDE17D2232B6AC467E7632CCE71AF480126AD048
              0D7C9A01C072D48255E81839AD2946CE009936D4C03198A493C8AC6CD203CED8
              BA49C3B14448F736C01B3678110745E0C1D182702F5986C56C4082256D2D0E5A
              12917EE1811E70B2BE833CACC8D30CC21506CD20F24EA5691291C1A90CA24C4B
              E0FCED83E5EA028323B7DB49DBA5DD90EEAC81AFB01B55CF62A0D2FF000C81AA
              AAF44630179091B53D0987735260AE58609077BD99745417D195482F13168BF5
              A76AF580DCEAC72410082D5A180E568994F5D49E66FE00EE3C4F2087F84BAB00
              00000049454E44AE426082}
            Spacing = 4
            TabOrder = 5
            OnClick = cxBtnWaitTmRateClick
            Appearance.BorderColorHot = 16761412
            Appearance.BorderColorDown = 16761412
            Appearance.BorderColorChecked = 33023
            Appearance.ColorChecked = 4105706
            Appearance.ColorCheckedTo = 4105706
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 15243853
            Appearance.ColorDownTo = 15243853
            Appearance.ColorHot = 7716789
            Appearance.ColorHotTo = 7716789
            Appearance.ColorMirrorHot = 7716789
            Appearance.ColorMirrorHotTo = 7716789
            Appearance.ColorMirrorDown = 15243853
            Appearance.ColorMirrorDownTo = 15243853
            Appearance.ColorMirrorChecked = 4105706
            Appearance.ColorMirrorCheckedTo = 4105706
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
          end
          object cxLBubinMemoFlag: TcxLabel
            Left = 364
            Top = 4
            Cursor = crIBeam
            Caption = #48277#51064' '#54620#51460' '#47700#47784
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = []
            Style.TextColor = 10329501
            Style.IsFontAssigned = True
            Transparent = True
            OnClick = cxLBubinMemoFlagClick
          end
        end
        object BtnOptionCallMu: TAdvGlowButton
          Left = 363
          Top = 7
          Width = 28
          Height = 22
          Cursor = crHandPoint
          Hint = #49688#49688#47308#50630#51020
          AntiAlias = aaNone
          Caption = #53084#28961
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImageIndex = 18
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 15
          OnClick = BtnOptionCallMuClick
          OnMouseDown = cxtCuTelMouseDown
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Style = bsCheck
        end
        object chkNoSet: TAdvGlowButton
          Left = 295
          Top = 7
          Width = 39
          Height = 22
          Cursor = crHandPoint
          Hint = #48120#51648#51221
          AntiAlias = aaNone
          Caption = #48120#51648#51221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImageIndex = 18
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 16
          OnMouseDown = cxtCuTelMouseDown
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Style = bsCheck
        end
        object chkRangeRate: TAdvGlowButton
          Left = 335
          Top = 7
          Width = 27
          Height = 22
          Cursor = crHandPoint
          Hint = #44144#47532#50836#44552
          AntiAlias = aaNone
          Caption = #44144#47532
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImageIndex = 18
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 17
          OnMouseDown = cxtCuTelMouseDown
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Style = bsCheck
        end
        object BtnSmartRate: TAdvGlowButton
          Left = 27
          Top = 6
          Width = 21
          Height = 22
          Cursor = crHandPoint
          Hint = #49828#47560#53944#50836#44552#54364
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548#52404
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            61000002F24944415478DA85D35B4893611807F0E7DBE973FB5CDB74E2692D65
            6632E6211B626585489E93A2BC2809D2284545CC4429F376251EEAC6BA310385
            BC314B3C7650D449A126E6F6E9D2A1F37C5CCE6FCE7D9B3BB52EBC58CC7AEEDE
            973F3F789F3F2F02474D0576BD203EAB55C0F6B2348E7437AB8B1477DDC590BF
            2F78CF84A5D14249466AC8B9E8CB2201865075D0827F87DE9FAA11F5A67670AF
            62A9DC2DC093F92342AFA0AFB2A4DCD8485F0CD4841AB60DBBC0A0A0C0445108
            E6F2A14FA382A75F3EE246D21CA57DACB1B900FE3521771A6F3C7913C4354133
            3E004DE3138B75C9392702B97428EE6AB124854AE8793197E0D33C0E65ED6DD7
            B4E5F31F5C80A4E62B9DB2D4CCB4D53D0D9477B5BE551528B35E4F3F7290C82C
            D4F6E2D5A4D5149F14C59662340E0CA9F4C378BEF2820B90D094D8519D969DBE
            A49F81CA9EB67E65BE22A16828DE81D03660708A5AFFE31E5E2879193EE98CFE
            FAF3622770DA05087E1E915F189F5C4FD8E4B04A9881344A20984F82C1A181CE
            11937CAE18BFF8DF168475E28E30213D3DD49F013C3A0B764D5630DBCD602411
            58DFB5C0B2D63A6A206DB2B53255FB91350654891328544791AF37551A71DC33
            00A1D8C1EE8CF15808D89D7B572C9B41BD62BEB5523ADDE216389C932F625333
            CE08BA08EB22C895C639168B2A88163151168AC030BE6F9BB8AFA4B900B10DE7
            37B84CB663FFC0C4592136F99A629531AF3FDD71009BF06D9AACDBD25B2AE324
            9E7A81174A552CEE833C6B1271016E77673A22851EA0D1E9E0FDA83A65EDE14C
            6FE1C05507615B837195B14667B0CA62C4C7B4026F1A6574D60063D90A5740DA
            10D72E0DC53208720DB6091448BD6F8F349493B245CEC2D80C39C7C368A27011
            0BF68D76E7D9F079FEC154A20B20AC3E85FAF0B82B27FC80CFC19C4533044090
            7BA023770041A8C0C1A8E06C00147346BDD9620DD494A80C6E9718542B6EE4B2
            E967D9982DCCDFDB039874066CE92CB0B96B5EDAD15BFB164AA673FEF91B0FC7
            AF2A2C37D0077DC5A051ACEBDA83770B255337DDE57E03757A4520B9CB72F000
            00000049454E44AE426082}
          Spacing = 4
          ParentShowHint = False
          ShowHint = True
          TabOrder = 18
          OnClick = BtnSmartRateClick
          OnMouseDown = cxtCuTelMouseDown
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
        end
        object btn_ChargeSave: TAdvGlowButton
          Left = 5
          Top = 6
          Width = 21
          Height = 22
          Cursor = crHandPoint
          Hint = #50836#44552#51200#51109
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            61000003344944415478DAA5525B4C5457145DE7DCB9330CF3F0020369264643
            8B0402B638E15511152A20D10F69FDB028C42868821FA68126346D0A69D2B44D
            FDF0C7D0A61513FBA3A66D1A9A862012542C36C240411D051108488B22F3BAF3
            62EE3DF7F6A0699369FAD7F3734EF6C95E6BEDB517C1FF3CE4EF47F545573213
            58FD06E386A329C9A9AF85E2813F2FD70DBAF65D2EDCEA4876DC12A8188C2811
            EA0B07E6A1E9ED7D0DEEA1048077AEECBC539BBDB368538A039B2509D767EFE2
            BBF1BE4C8192ECB6F286BE8D92007F44C16240C6EDC5BBE8AAED2109004D3FBE
            ED69A9A8CC7DECFB1D0215D0756DDCDDDF74A770FDAFE67CD1D87B3595DB9E47
            96B139250303F79FA273F7C54480DD5D452DCD157BCE19C42028040C4D2DC3B3
            F047BFAEEBAC2A67C75E57961DCBE105D8CC36740FDE1EFEF9E8AF650900CE76
            6765C7C18681D45415A158140E8B1DDEB0020357E3B46560D6FF0866D1846054
            4557EF60AFCEA01A05DA41AACE96DF2CCECD2F1F9F9941E38E7D80E509E2AA0E
            E83A4481BEE088B135AE4A8428024BAB3EF8BD36D41414E08B9E0B53E4F49563
            FAF1FDBB30B7B284589C612934872893A16A71289A02A631980D66109DC262B4
            C12ADA916175829A22B874758C91964B8D72E99B69D6F1E551F8A37E106680CE
            59B9004EAEE3E5C5272564BDCA0DD661B3262153CA827B341022DB3F2BD5F3B6
            0B987EE84386C302299D8229E43F43231828C24115B39E18B24B281E0EAB2039
            6DF91F73BD0E39A0C4DEDA93FFBE71D30AD6B85184330A2205E536681AA0C635
            88268AA05785BB37D86A4AA6C51444FE872AADDEF9FAF123B5135EFB34A2EBEE
            F3E680972116E21ED8F8FC2904543780310D13FDF237F7BEBC7722618DAF36E5
            1C3B70C8757E85CEBFA8AE2E2898FC453E9324D1EFD722EA27D587B75487F10C
            497623EE5F0B61A463223148159D95BEC2FDE9D2A23C0BB391EFDBA762F2A7C0
            A78FBE7DF051616BC96FEF9E2C2B195E1C80649530332AE3C6A9B14480ECE6BC
            AF75919DB0BF22C29A6AE24C040BEEC86068355A97BB35D36FCF52E00B84E09B
            57117CA28ECC747B8AFF3D828BC5B5CF4D66D1418D2006815AE231F6C1F4579E
            1FF24FBFD1CD73514C884155A3DC4E151F3EBEF0A07FBDEF2FCF8A59030CE273
            610000000049454E44AE426082}
          Spacing = 4
          ParentShowHint = False
          ShowHint = True
          TabOrder = 19
          OnClick = btn_ChargeSaveClick
          OnMouseDown = cxtCuTelMouseDown
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
        end
        object BtnWkAge: TAdvGlowButton
          Left = 428
          Top = 7
          Width = 27
          Height = 22
          Cursor = crHandPoint
          Hint = #44592#49324#45208#51060
          AntiAlias = aaNone
          Caption = #45208#51060
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImageIndex = 18
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 20
          OnClick = BtnWkAgeClick
          OnMouseDown = cxtCuTelMouseDown
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Style = bsCheck
        end
        object BtnWKJAmt: TAdvGlowButton
          Left = 456
          Top = 7
          Width = 38
          Height = 22
          Cursor = crHandPoint
          Hint = #51648#50896#44552
          AntiAlias = aaNone
          Caption = #51648#50896#44552
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImageIndex = 18
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 21
          OnMouseDown = cxtCuTelMouseDown
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Style = bsCheck
        end
        object meoBigo: TcxMemo
          Left = 4
          Top = 82
          OnFocusChanged = meoBigoFocusChanged
          Lines.Strings = (
            'VIP'
            #44256
            #44061
            #51076'.')
          ParentFont = False
          Properties.ImeMode = imSHanguel
          Properties.MaxLength = 0
          Properties.ScrollBars = ssVertical
          Properties.WantReturns = False
          Properties.OnChange = meoBigoPropertiesChange
          Style.BorderStyle = ebsUltraFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnEnter = meoBigoEnter
          OnExit = meoBigoExit
          OnKeyDown = meoBigoKeyDown
          OnKeyUp = meoBigoKeyUp
          OnMouseDown = cxtCuTelMouseDown
          Height = 37
          Width = 521
        end
        object LbmeoBigo: TcxLabel
          Left = 13
          Top = 91
          Cursor = crIBeam
          Caption = #51201#50836#9312' ( '#44592#49324#50640#44172' '#48372#51076' )'
          Style.TextColor = 10329501
          Transparent = True
          OnClick = LbmeoBigoClick
        end
        object meoBigo2: TcxMemo
          Left = 4
          Top = 121
          OnFocusChanged = meoBigo2FocusChanged
          Lines.Strings = (
            #52265#54620#44256#44061#51076'.')
          ParentFont = False
          Properties.ImeMode = imSHanguel
          Properties.MaxLength = 1996
          Properties.ScrollBars = ssVertical
          Properties.WantReturns = False
          Properties.OnChange = meoBigo2PropertiesChange
          Style.BorderStyle = ebsUltraFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          OnEnter = meoBigoEnter
          OnExit = meoBigo2Exit
          OnKeyDown = meoBigoKeyDown
          OnKeyUp = meoBigo2KeyUp
          OnMouseDown = cxtCuTelMouseDown
          Height = 35
          Width = 521
        end
        object meoBigo3: TcxMemo
          Left = 4
          Top = 159
          OnFocusChanged = meoBigo3FocusChanged
          Lines.Strings = (
            #52265#54620#44256#44061#51076'.')
          ParentFont = False
          Properties.ImeMode = imSHanguel
          Properties.MaxLength = 1996
          Properties.ScrollBars = ssVertical
          Properties.WantReturns = False
          Properties.OnChange = meoBigo3PropertiesChange
          Style.BorderStyle = ebsUltraFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          OnEnter = meoBigoEnter
          OnExit = meoBigo3Exit
          OnKeyDown = meoBigoKeyDown
          OnKeyUp = meoBigo3KeyUp
          OnMouseDown = cxtCuTelMouseDown
          Height = 35
          Width = 521
        end
        object LbmeoBigo2: TcxLabel
          Left = 13
          Top = 131
          Cursor = crIBeam
          Caption = #51201#50836#9313' ( '#44592#49324#50640#44172' '#50504#48372#51076' )'
          Style.TextColor = 10329501
          Transparent = True
          OnClick = LbmeoBigo2Click
        end
        object LbmeoBigo3: TcxLabel
          Left = 13
          Top = 169
          Cursor = crIBeam
          Caption = #51201#50836#9314' ( '#44592#49324#50640#44172' '#50504#48372#51076' )'
          Style.TextColor = 10329501
          Transparent = True
          OnClick = LbmeoBigo3Click
        end
        object BtnResvView: TcxButton
          Left = 559
          Top = 104
          Width = 28
          Height = 89
          Cursor = crHandPoint
          Caption = #50696#13#10#13#10#50557
          OptionsImage.Layout = blGlyphTop
          TabOrder = 4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          OnClick = BtnResvViewClick
          OnMouseDown = cxtCuTelMouseDown
        end
        object btnAddBigo: TcxButton
          Left = 528
          Top = 104
          Width = 28
          Height = 90
          Cursor = crHandPoint
          Caption = #49345#13#10#50857#13#10#44396
          PopupMenu = pmBigo
          TabOrder = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          OnClick = btnAddBigoClick
          OnMouseDown = cxtCuTelMouseDown
        end
        object cxGbReserv: TcxGroupBox
          Left = 230
          Top = 131
          Alignment = alTopCenter
          Caption = #50724#45908' '#51217#49688' '#50696#50557#51012' '#49444#51221#54633#45768#45796'.'
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWindow
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 25
          Visible = False
          Height = 74
          Width = 557
          object Shape16: TShape
            Left = 3
            Top = 14
            Width = 551
            Height = 53
            Align = alClient
            Brush.Color = 11914751
            Pen.Style = psClear
            ExplicitWidth = 556
            ExplicitHeight = 100
          end
          object BtnResJ: TSpeedButton
            Left = 275
            Top = 19
            Width = 41
            Height = 22
            GroupIndex = 1
            Down = True
            Caption = #51217#49688
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
            OnClick = BtnResJClick
          end
          object BtnResD: TSpeedButton
            Left = 318
            Top = 19
            Width = 41
            Height = 22
            GroupIndex = 1
            Caption = #45824#44592
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
            OnClick = BtnResJClick
          end
          object cxLabel15: TcxLabel
            Left = 5
            Top = 22
            Caption = #50696#50557#51068#49884
            ParentFont = False
            Transparent = True
          end
          object dtpResvDate: TcxDateEdit
            Left = 57
            Top = 42
            EditValue = 401768d
            Enabled = False
            ParentFont = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Width = 79
          end
          object dtpResvTime: TcxTimeEdit
            Left = 136
            Top = 42
            Enabled = False
            ParentFont = False
            Properties.TimeFormat = tfHourMin
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Width = 52
          end
          object cxlblState: TcxLabel
            Left = 232
            Top = 46
            Caption = '3'#49884#44036' 30'#48516' '#54980#50640' '#51217#49688' '#49345#53468#47196' '#50696#50557#46121#45768#45796'.'
            ParentFont = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorX = 335
            AnchorY = 55
          end
          object CbSecond: TcxComboBox
            Left = 188
            Top = 20
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              '0'
              '5'
              '10'
              '15'
              '20'
              '25'
              '30'
              '35'
              '40'
              '45'
              '50'
              '55')
            Properties.OnChange = CbSecondPropertiesChange
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            Text = '0'
            Height = 21
            Width = 37
          end
          object cxLabel14: TcxLabel
            Left = 222
            Top = 22
            Caption = #48516#51204
            ParentFont = False
            Transparent = True
          end
          object BtnResvClose: TcxButton
            Left = 495
            Top = 18
            Width = 55
            Height = 25
            Caption = #45803'  '#44592
            TabOrder = 6
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
            OnClick = BtnResvCloseClick
          end
          object BtnResvCsl: TcxButton
            Left = 439
            Top = 18
            Width = 55
            Height = 25
            Caption = #50696#50557#52712#49548
            TabOrder = 7
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
            OnClick = BtnResvCslClick
          end
          object BtnResv: TcxButton
            Left = 383
            Top = 18
            Width = 55
            Height = 25
            Caption = #50696#50557#54616#44592
            TabOrder = 8
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
            OnClick = BtnResvClick
          end
          object cxlblResvG: TcxLabel
            Left = 5
            Top = 44
            Caption = #51217#49688#51068#49884
            ParentFont = False
            Transparent = True
          end
          object dtpResvDateJ: TcxDateEdit
            Left = 57
            Top = 20
            EditValue = 401768d
            ParentFont = False
            Properties.OnChange = dtpResvDatePropertiesChange
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 10
            Width = 79
          end
          object dtpResvTimeJ: TcxTimeEdit
            Left = 136
            Top = 20
            ParentFont = False
            Properties.TimeFormat = tfHourMin
            Properties.OnChange = dtpResvTimePropertiesChange
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 11
            Width = 52
          end
        end
        object PnlWkJi: TPanel
          Left = 489
          Top = 58
          Width = 110
          Height = 21
          Alignment = taLeftJustify
          BevelKind = bkFlat
          BevelOuter = bvNone
          Caption = ' '#44592#49324#51648#50896#44552
          Color = 16744448
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 27
          Visible = False
          DesignSize = (
            106
            17)
          object cxLblWkJAmt: TcxLabel
            Left = 68
            Top = 1
            Anchors = [akTop, akRight]
            Caption = '5,000'
            Style.TextColor = clWhite
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
            AnchorX = 102
            AnchorY = 9
          end
        end
        object pnl_charge: TPanel
          Left = 111
          Top = 166
          Width = 583
          Height = 36
          Alignment = taLeftJustify
          BevelKind = bkFlat
          BevelOuter = bvNone
          Color = 8388863
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 5
          Visible = False
          OnClick = pnl_chargeClick
          object Lbl_charge: TLabel
            Left = 5
            Top = 3
            Width = 62
            Height = 12
            Caption = 'Lbl_charge'
          end
          object lbl_PlusAreaNotice: TLabel
            Left = 5
            Top = 18
            Width = 106
            Height = 12
            Caption = 'lbl_PlusAreaNotice'
          end
          object Lbl_Distance: TLabel
            Left = 502
            Top = 16
            Width = 72
            Height = 12
            Caption = 'Lbl_Distance'
          end
        end
        object gbRQAList: TcxGroupBox
          Left = 596
          Top = 58
          ParentBackground = False
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = 5815460
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 28
          Visible = False
          DesignSize = (
            584
            109)
          Height = 109
          Width = 584
          object grdRQAList: TcxGrid
            Left = 23
            Top = 2
            Width = 558
            Height = 104
            Anchors = [akLeft, akTop, akRight]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = False
            LookAndFeel.NativeStyle = True
            object RQAListView: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              OnCellDblClick = RQAListViewCellDblClick
              OnEditKeyPress = RQAListViewEditKeyPress
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.CellHints = True
              OptionsBehavior.ColumnHeaderHints = False
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsCustomize.ColumnHidingOnGrouping = False
              OptionsCustomize.ColumnMoving = False
              OptionsData.Appending = True
              OptionsSelection.InvertSelect = False
              OptionsView.NoDataToDisplayInfoText = '  '
              OptionsView.DataRowHeight = 21
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 19
              Styles.OnGetContentStyle = RQAListViewStylesGetContentStyle
              object cxGridDBColumn6: TcxGridDBColumn
                DataBinding.FieldName = #49692#50948
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.GroupFooters = False
                Options.Grouping = False
                Options.Moving = False
                Options.Sorting = False
                Width = 30
              end
              object cxGridDBColumn8: TcxGridDBColumn
                DataBinding.FieldName = #45813#48320#50836#44552
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.GroupFooters = False
                Options.Grouping = False
                Options.Moving = False
              end
              object cxGridDBColumn7: TcxGridDBColumn
                DataBinding.FieldName = #45813#48320#51088'('#50500#51060#46356')'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.GroupFooters = False
                Options.Grouping = False
                Options.Moving = False
                Width = 120
              end
              object cxGridDBColumn9: TcxGridDBColumn
                DataBinding.FieldName = #50836#44552#49444#47749
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.GroupFooters = False
                Options.Grouping = False
                Options.Moving = False
                Width = 215
              end
              object RQAListViewColumn9: TcxGridDBColumn
                DataBinding.FieldName = #45813#48320#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 55
              end
              object RQAListViewColumn10: TcxGridDBColumn
                DataBinding.FieldName = #49436#48260
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Buttons = <
                  item
                    Caption = #49325#51228
                    Default = True
                    Kind = bkText
                  end>
                Properties.ViewStyle = vsButtonsAutoWidth
                Properties.OnButtonClick = RQAListViewColumn10PropertiesButtonClick
                OnGetProperties = RQAListViewColumn10GetProperties
                HeaderAlignmentHorz = taCenter
                Options.ShowEditButtons = isebAlways
                Width = 40
              end
              object cxGridDBColumn10: TcxGridDBColumn
                DataBinding.FieldName = 'rKey'
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.GroupFooters = False
                Options.Grouping = False
                Options.Moving = False
                Width = 50
              end
              object cxGridDBColumn11: TcxGridDBColumn
                DataBinding.FieldName = 'uid'
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
              end
              object cxGridDBColumn12: TcxGridDBColumn
                DataBinding.FieldName = 'unm'
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
              end
              object cxGridDBColumn13: TcxGridDBColumn
                DataBinding.FieldName = 'sta'
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
              end
              object RQAListViewColumn1: TcxGridDBColumn
                DataBinding.FieldName = 'staddr'
                Visible = False
              end
              object RQAListViewColumn2: TcxGridDBColumn
                DataBinding.FieldName = 'via'
                Visible = False
              end
              object RQAListViewColumn3: TcxGridDBColumn
                DataBinding.FieldName = 'eda'
                Visible = False
              end
              object RQAListViewColumn4: TcxGridDBColumn
                DataBinding.FieldName = 'edaddr'
                Visible = False
              end
              object RQAListViewColumn5: TcxGridDBColumn
                DataBinding.FieldName = 'qtm'
                Visible = False
              end
              object RQAListViewColumn6: TcxGridDBColumn
                DataBinding.FieldName = 'aid'
                Visible = False
              end
              object RQAListViewColumn7: TcxGridDBColumn
                DataBinding.FieldName = 'anm'
                Visible = False
              end
              object RQAListViewColumn8: TcxGridDBColumn
                DataBinding.FieldName = 'atm'
                Visible = False
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = RQAListView
            end
          end
          object btnRQALExit: TcxButton
            Left = 2
            Top = 2
            Width = 20
            Height = 104
            Cursor = crHandPoint
            Caption = #45803#13#10#13#10#44592
            TabOrder = 1
            OnClick = btnRQALExitClick
          end
        end
        object cbbPayMethod: TcxComboBox
          Left = 270
          Top = 30
          AutoSize = False
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.ImeMode = imSHanguel
          Properties.Items.Strings = (
            #54788#44552)
          Properties.OnChange = cbbPayMethodPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 29
          Text = #54788#44552
          OnMouseDown = cxtCuTelMouseDown
          Height = 24
          Width = 84
        end
        object cbbPostTime: TcxComboBox
          Left = 353
          Top = 30
          AutoSize = False
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.ImeMode = imSHanguel
          Properties.Items.Strings = (
            #51077#44552#50630#51020)
          Properties.OnChange = cbbPostTimePropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 30
          Text = #51077#44552#50630#51020
          OnMouseDown = cxtCuTelMouseDown
          Height = 24
          Width = 111
        end
        object curKm: TcxTextEdit
          Left = 134
          Top = 30
          TabStop = False
          AutoSize = False
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taBottomJustify
          Properties.ImeMode = imSHanguel
          Properties.ReadOnly = True
          Style.Color = clWindow
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 31
          Text = '137.0Km'
          OnEnter = curKmEnter
          OnExit = curKmExit
          OnMouseDown = cxtCuTelMouseDown
          Height = 24
          Width = 65
        end
        object curRate: TcxSpinEdit
          Left = 27
          Top = 30
          AutoSize = False
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taBottomJustify
          Properties.AssignedValues.EditFormat = True
          Properties.AssignedValues.MinValue = True
          Properties.DisplayFormat = '#,##0'
          Properties.ImeMode = imSHanguel
          Properties.Increment = 1000.000000000000000000
          Properties.LargeIncrement = 10000.000000000000000000
          Properties.MaxValue = 700000.000000000000000000
          Properties.ValidateOnEnter = False
          Properties.OnChange = curRatePropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 32
          Value = 100000
          OnEditing = curRateEditing
          OnEnter = curRateEnter
          OnExit = curRateExit
          OnKeyDown = curRateKeyDown
          OnKeyPress = curRateKeyPress
          OnKeyUp = curRateKeyUp
          OnMouseDown = curRateMouseDown
          OnMouseEnter = AutoSelectMouseEnter
          OnMouseLeave = AutoSelectMouseMouseLeave
          OnMouseUp = curRateMouseUp
          Height = 24
          Width = 84
        end
        object cxDriverCharge: TcxCurrencyEdit
          Left = 198
          Top = 30
          TabStop = False
          OnFocusChanged = cxDriverChargeFocusChanged
          AutoSize = False
          EditValue = 10000.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taBottomJustify
          Properties.DisplayFormat = ',0.;-,0.'
          Properties.ImeMode = imSHanguel
          Properties.OnChange = cxDriverChargePropertiesChange
          Style.BorderStyle = ebsUltraFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 33
          OnEnter = cxDriverChargeEnter
          OnExit = cxDriverChargeExit
          OnMouseDown = cxtCuTelMouseDown
          Height = 24
          Width = 73
        end
        object edtPostPay: TcxSpinEdit
          Left = 463
          Top = 30
          OnFocusChanged = edtPostPayFocusChanged
          AutoSize = False
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taBottomJustify
          Properties.AssignedValues.EditFormat = True
          Properties.AssignedValues.MinValue = True
          Properties.DisplayFormat = '#,##0'
          Properties.ImeMode = imSHanguel
          Properties.Increment = 1000.000000000000000000
          Properties.LargeIncrement = 10000.000000000000000000
          Properties.MaxValue = 1000000.000000000000000000
          Properties.UseLeftAlignmentOnEditing = False
          Properties.ValidateOnEnter = False
          Properties.OnChange = edtPostPayPropertiesChange
          Style.BorderStyle = ebsUltraFlat
          Style.Color = clWindow
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = clRed
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 34
          Value = 30000
          OnEnter = edtPostPayEnter
          OnExit = edtPostPayExit
          OnKeyDown = edtPostPayKeyDown
          OnKeyPress = edtPostPayKeyPress
          OnMouseDown = cxtCuTelMouseDown
          Height = 24
          Width = 74
        end
        object LbDriverCharge: TcxLabel
          Left = 201
          Top = 33
          Cursor = crIBeam
          AutoSize = False
          Caption = #49688#49688#47308
          ParentColor = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = clGrayText
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          OnClick = LbDriverChargeClick
          Height = 19
          Width = 37
          AnchorX = 220
          AnchorY = 43
        end
        object LblPostPay: TcxLabel
          Left = 464
          Top = 34
          Cursor = crIBeam
          Caption = #44592#49324#49569#44552
          ParentColor = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = clGrayText
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          OnClick = LblPostPayClick
          AnchorX = 490
          AnchorY = 42
        end
        object cbCardSanction: TcxButton
          Left = 537
          Top = 32
          Width = 53
          Height = 20
          Cursor = crHandPoint
          Caption = #54788#44552#50689#49688
          TabOrder = 37
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          OnClick = cbCardSanctionClick
          OnMouseDown = cxtCuTelMouseDown
        end
        object BtnQRate: TAdvGlowButton
          Left = 4
          Top = 32
          Width = 22
          Height = 22
          Cursor = crHandPoint
          Hint = #50836#44552#47928#51032
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548#52404
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            61000001DC4944415478DA6364C001E2B77D9A2020CA9E8F2CF6FCD987D655FE
            E235C8628CD834476CFED49A60C45DC4CECCC8F18D09A8E4FF7F06D67F0C0C47
            EE7D7CB5EDE2A7C63359F2D3701A10BBF55349AF076FF7C9770C0C3FFE3230FC
            FECFC0F01D8859802AA5F91918D69F79FFE5EEE31F0B77444BE560352078FDBB
            7BC5DE828AB73F30309CFD0051A0C7CBC0F0E1DB7F060E364686AF5F7F33DC7C
            FCF5FD5C574121AC06B8AE7CFDDD509E8FE3DAF38FE7B6048A1983C4D2563CFC
            AF6F2BC7F0E31703C3A7CF7F185E7DFAF665BA0D3F2FCE304007A9AB1FFDD730
            956560027AE53DD00537EE7CF8B72A408C9928030C7B6EFE5F92A5C630EBEA2F
            063E2936862BC75EBC7CFEF07DFD8912AD99040D00699E9CA9C6D074F11FC347
            A0D227D73E313C9DB4478FE152C865BCD10806E6DBCD0C43954E8A5AA980B98F
            1F7C62B8DEB7CB8AE14CF87182E90004F8FA9EE78AAB0A4D82F15FDE7EB7EF53
            91A433BA3A7C06240029504A7C0BC43C40BC0268C004A20D2016E035C0BCEEF4
            23210345D99BC76FBFBEB7ED8234C3D5CCDF441B605D77FEA645B681DAEAD30C
            0C8FAEBF62603C78FAC5FF2D3E92441B603AF3FEFFA7ECE20CCF9E7E616078F6
            9981E1F38B4F0C8BACF949F282E4C2CF8F9E3F7A25CBF0E9D753866E4D196C6A
            00F6A7C011391086490000000049454E44AE426082}
          Spacing = 4
          ParentShowHint = False
          ShowHint = True
          TabOrder = 38
          OnClick = BtnQRateClick
          OnMouseDown = cxtCuTelMouseDown
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
        end
        object BtnRaLock: TAdvGlowButton
          Left = 111
          Top = 31
          Width = 23
          Height = 22
          Cursor = crHandPoint
          Hint = 'F4)'#49688#51221
          ImageIndex = 0
          Images = cxImgLock
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          WordWrap = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 39
          OnClick = BtnRaLockClick
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Style = bsCheck
        end
        object btnMileSave: TAdvGlowButton
          Left = 312
          Top = 54
          Width = 51
          Height = 24
          Cursor = crHandPoint
          Hint = #54980#48520'('#47560#51068')'#51068' '#44221#50864#50640#47564' '#49440#53469' '#44032#45733#54633#45768#45796'.'
          AntiAlias = aaNone
          Caption = #51204#52404#51201#47549
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImageIndex = 18
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 40
          Visible = False
          OnClick = btnMileSaveClick
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Style = bsCheck
        end
        object btnCashSave: TAdvGlowButton
          Left = 259
          Top = 54
          Width = 51
          Height = 24
          Cursor = crHandPoint
          Hint = #54980#48520'('#47560#51068')'#51068' '#44221#50864#50640#47564' '#49440#53469' '#44032#45733#54633#45768#45796'.'
          AntiAlias = aaNone
          Caption = #54788#44552#51201#47549
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImageIndex = 18
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 41
          Visible = False
          OnClick = btnCashSaveClick
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Style = bsCheck
        end
        object pnlWkAge: TPanel
          Left = 596
          Top = 9
          Width = 201
          Height = 27
          BevelOuter = bvNone
          Color = clHotLight
          ParentBackground = False
          TabOrder = 26
          Visible = False
          object Panel1: TPanel
            Left = 2
            Top = 2
            Width = 197
            Height = 23
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            DesignSize = (
              197
              23)
            object cxLabel20: TcxLabel
              Left = -2
              Top = 4
              Caption = #44592#49324#45784#45208#51060
              ParentColor = False
              ParentFont = False
              Style.Color = clBtnFace
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = False
              Style.TextColor = 16744448
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              AnchorX = 33
              AnchorY = 12
            end
            object edtWkFAge: TcxTextEdit
              Left = 64
              Top = -1
              TabStop = False
              AutoSize = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taBottomJustify
              Style.Color = clWindow
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = False
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 0
              Text = '19'
              OnKeyDown = edtWkFAgeKeyDown
              Height = 24
              Width = 28
            end
            object cxLabel1: TcxLabel
              Left = 92
              Top = 4
              Caption = #48512#53552
              ParentColor = False
              ParentFont = False
              Style.Color = clBtnFace
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = False
              Style.TextColor = 16744448
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              AnchorX = 107
              AnchorY = 12
            end
            object edtWkTAge: TcxTextEdit
              Left = 120
              Top = -1
              TabStop = False
              AutoSize = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taBottomJustify
              Style.Color = clWindow
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = False
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              Text = '99'
              OnKeyDown = edtWkTAgeKeyDown
              Height = 24
              Width = 28
            end
            object cxLabel5: TcxLabel
              Left = 146
              Top = 4
              Caption = #44620#51648
              ParentColor = False
              ParentFont = False
              Style.Color = clBtnFace
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = False
              Style.TextColor = 16744448
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              AnchorX = 161
              AnchorY = 12
            end
            object btnWkAgeClose: TcxButton
              Left = 175
              Top = 1
              Width = 21
              Height = 21
              Anchors = [akTop, akRight]
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
              TabOrder = 5
              OnClick = btnWkAgeCloseClick
            end
          end
        end
        object chk_AIReCall: TcxCheckBox
          Left = 524
          Top = 82
          Hint = #47532#53084
          Caption = #47532#53084
          ParentBackground = False
          TabOrder = 42
          OnMouseDown = chk_AIReCallMouseDown
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 600
        Top = 156
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 6
        Visible = False
        Height = 51
        Width = 305
        object mmoCuAppInfo: TcxRichEdit
          Left = 2
          Top = 1
          ParentFont = False
          Properties.ReadOnly = True
          Lines.Strings = (
            #52636#48156#51648':'
            #46020#52265#51648':'
            'E-Mail :')
          Style.Color = 12704475
          Style.Edges = []
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 49
          Width = 300
        end
      end
      object PnlBottom: TPanel
        Left = 0
        Top = 571
        Width = 1224
        Height = 70
        Align = alBottom
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 12
        object PnlBtm: TPanel
          Left = 0
          Top = 0
          Width = 1224
          Height = 70
          Align = alClient
          BevelKind = bkFlat
          BevelOuter = bvNone
          Color = 15790320
          ParentBackground = False
          TabOrder = 0
          OnMouseMove = PnlBtmMouseMove
          object cxLblBar3: TLabel
            Left = 4
            Top = 1
            Width = 586
            Height = 5
            AutoSize = False
            Color = 5815460
            ParentColor = False
            Transparent = True
          end
          object btnCmdJoin: TcxButton
            Left = 4
            Top = 8
            Width = 115
            Height = 30
            Cursor = crHandPoint
            Caption = #51217#49688'(F9)'
            TabOrder = 0
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnCmdJoinClick
          end
          object btnCmdWait: TcxButton
            Left = 121
            Top = 8
            Width = 115
            Height = 30
            Cursor = crHandPoint
            Caption = #45824#44592'(F10)'
            TabOrder = 1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnCmdWaitClick
          end
          object btnCmdQuestion: TcxButton
            Left = 239
            Top = 8
            Width = 115
            Height = 30
            Cursor = crHandPoint
            Caption = #47928#51032'(F12)'
            TabOrder = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnCmdQuestionClick
          end
          object btnCmdNoSMS: TcxButton
            Left = 357
            Top = 8
            Width = 115
            Height = 30
            Cursor = crHandPoint
            Caption = 'SMS'#44144#48512'(&R)'
            TabOrder = 3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
            OnClick = btnCmdNoSMSClick
          end
          object btnCmdExit: TcxButton
            Left = 475
            Top = 8
            Width = 115
            Height = 56
            Cursor = crHandPoint
            Caption = #51333#47308'(F8)'
            TabOrder = 9
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnCmdExitClick
          end
          object btnPickupInsert: TcxButton
            Left = 357
            Top = 40
            Width = 115
            Height = 24
            Cursor = crHandPoint
            Caption = #54589#50629#46321#47197'(&P)'
            TabOrder = 7
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
            OnClick = btnPickupInsertClick
          end
          object btnCmdMultiCall: TcxButton
            Left = 239
            Top = 40
            Width = 115
            Height = 24
            Cursor = crHandPoint
            Caption = #48373#49688#53084'(&T)'
            TabOrder = 6
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnCmdMultiCallClick
          end
          object btnCmdUpdSave: TcxButton
            Left = 297
            Top = 5
            Width = 115
            Height = 55
            Cursor = crHandPoint
            Caption = #49688#51221'(F7)'
            TabOrder = 8
            TabStop = False
            Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnCmdUpdSaveClick
          end
          object btnCmdWaitCopy: TcxButton
            Left = 121
            Top = 40
            Width = 115
            Height = 24
            Cursor = crHandPoint
            Caption = #45824#44592#54980#48373#49324'(&S)'
            TabOrder = 5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
            OnClick = btnCmdWaitCopyClick
          end
          object btnCmdJoinCopy: TcxButton
            Left = 4
            Top = 40
            Width = 115
            Height = 24
            Cursor = crHandPoint
            Caption = #51217#49688#54980#48373#49324'(&Z)'
            TabOrder = 4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
            OnClick = btnCmdJoinCopyClick
          end
        end
      end
      object GrpHelp: TcxGroupBox
        Left = 804
        Top = 579
        Alignment = alTopCenter
        Caption = '*** '#44160#49353' '#50741#49496' '#50504#45236' ***'
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 7
        Visible = False
        DesignSize = (
          372
          278)
        Height = 282
        Width = 372
        object Label7: TLabel
          Left = 3
          Top = 14
          Width = 366
          Height = 261
          Align = alClient
          Caption = 
            #50500#47000#50752' '#44057#51060' '#45796#50577#54620' '#48169#48277#51004#47196' '#44256#44061#51312#54924' '#44032#45733' '#54633#45768#45796'.'#13#10#13#10'1. ['#51204#54868#48264#54840'] ['#50644#53552'] '#13#10'   --> '#44592#48376' '#51204#54868#48264#54840' ' +
            #51312#54924'('#44256#44061' or '#44592#49324')'#13#10#13#10'2. ['#51204#54868#48264#54840'] "+" ['#50644#53552'] '#13#10'   --> '#44256#44061#47532#49828#53944' '#50640#49436#47564' '#51312#54924'('#44592#49324#52404#53356' '#50504#54632 +
            ')'#13#10#13#10'3. ['#51204#54868#48264#54840'] "*" [DNIS] ['#50644#53552']'#13#10'   --> DNIS'#47196' '#45824#54364#48264#54840'/'#51648#49324' '#52286#50500#49436' '#44256#44061#51312#54924#13#10' ' +
            '      CID'#49436#48260' '#45796#50868#49884' '#53412#54256#51032' CID + DNIS '#51221#48372#47196' '#51648#49324#52286#50500' '#51217#49688#44032#45733#13#10#13#10'4. ['#51204#54868#48264#54840'] "+*" [' +
            'DNIS] ['#50644#53552']'#13#10'   --> DNIS'#47196' '#45824#54364#48264#54840'/'#51648#49324' '#52286#50500#49436' '#44256#44061#47532#49828#53944' '#50640#49436' '#51312#54924#13#10#13#10'5. ['#51204#54868#48264#54840'] "a' +
            '"'#46608#45716'"A" ['#50644#53552']'#13#10'   --> '#50724#53664#53084' '#51217#49688#52285' '#48372#44592#13#10#13#10#54017'!. '#13#10' DNIS '#51312#54924' '#44592#45733#51012' '#49324#50857#54616#47140#47732' "'#49444#51221'>C' +
            'ID'#45824#54364#48264#54840'DNIS'#44288#47532'" '#13#10' '#47700#45684#50640#49436' DNIS '#51221#48372#47484' '#51077#47141#54644#51480#50556' '#49324#50857' '#44032#45733' '#54633#45768#45796'.'
          Color = 14155775
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          ExplicitWidth = 362
          ExplicitHeight = 252
        end
        object cxButton7: TcxButton
          Left = 347
          Top = 0
          Width = 22
          Height = 22
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
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
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          OnClick = cxButton7Click
        end
      end
      object shrDNIS_DSP: TcxGroupBox
        Left = 792
        Top = 375
        Alignment = alTopCenter
        Caption = '***** DNIS '#45824#54364#48264#54840' / '#51648#49324' '#52286#44592' *****'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 11
        Visible = False
        Height = 67
        Width = 352
        object lblDNISInfo: TcxLabel
          Left = 3
          Top = 15
          AutoSize = False
          Caption = 
            'DNIS      : 1010'#13#10#45824#54364#48264#54840' : 15883333 (B100.'#53084#47560#45320#45824#47532#50868#51204')'#13#10#44256#44061#51204#54868' : 0102344' +
            '5566'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.WordWrap = True
          Transparent = True
          Height = 40
          Width = 272
        end
        object cxButton6: TcxButton
          Left = 303
          Top = 16
          Width = 45
          Height = 40
          Caption = #45803'  '#44592
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
        end
      end
      object PnlPOISch: TPanel
        Left = 0
        Top = 219
        Width = 6
        Height = 6
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 15
        Visible = False
      end
      object pnlBubin: TcxGroupBox
        Left = -301
        Top = 256
        Caption = #48277#51064#47749'/'#48512#49436#47749' '#51312#54924
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 8
        Visible = False
        Height = 134
        Width = 305
        object cxtBubinSearchName: TcxTextEdit
          Left = 2
          Top = 13
          AutoSize = False
          ParentColor = True
          ParentFont = False
          Properties.ImeMode = imSHanguel
          Properties.OnChange = cxtBubinSearchNamePropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Text = 'cxtBubinSearchName'
          OnKeyPress = cxtBubinSearchNameKeyPress
          OnKeyUp = cxtBubinSearchNameKeyUp
          Height = 23
          Width = 163
        end
        object cxGrdBubin: TcxGrid
          Left = 3
          Top = 38
          Width = 299
          Height = 88
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          object cxBubinView: TcxGridDBTableView
            OnKeyUp = cxBubinViewKeyUp
            Navigator.Buttons.CustomButtons = <>
            OnCellDblClick = cxBubinViewCellDblClick
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.ColumnHeaderHints = False
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnMoving = False
            OptionsData.Appending = True
            OptionsData.Editing = False
            OptionsView.ScrollBars = ssVertical
            OptionsView.DataRowHeight = 16
            OptionsView.GridLineColor = 16635384
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 16
            OptionsView.Indicator = True
            object cxGrdCol1: TcxGridDBColumn
              DataBinding.FieldName = #48277#51064#47749
              PropertiesClassName = 'TcxLabelProperties'
              Options.Editing = False
              Options.Filtering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Width = 98
            end
            object cxGrdCol2: TcxGridDBColumn
              DataBinding.FieldName = #48277#51064#48512#49436#47749
              PropertiesClassName = 'TcxLabelProperties'
              Options.Editing = False
              Options.Filtering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Options.Moving = False
              Width = 69
            end
            object cxGrdCol3: TcxGridDBColumn
              DataBinding.FieldName = #45800#52629#48277#51064#47749
              PropertiesClassName = 'TcxLabelProperties'
              Options.Editing = False
              Options.Filtering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Options.Moving = False
              Width = 65
            end
            object cxGrdCol4: TcxGridDBColumn
              DataBinding.FieldName = #45800#52629#48512#49436#47749
              PropertiesClassName = 'TcxLabelProperties'
              Options.Editing = False
              Options.Filtering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Options.Moving = False
            end
            object cxGrdCol5: TcxGridDBColumn
              DataBinding.FieldName = #48277#51064#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Options.Editing = False
              Options.Filtering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Options.Moving = False
            end
          end
          object cxGrdBubinLevel1: TcxGridLevel
            GridView = cxBubinView
          end
        end
        object cxBtnSelect: TcxButton
          Left = 166
          Top = 14
          Width = 45
          Height = 21
          Cursor = crHandPoint
          Caption = #51312#54924
          TabOrder = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          OnClick = cxBtnSelectClick
        end
        object cxBtnChoice: TcxButton
          Left = 212
          Top = 14
          Width = 45
          Height = 21
          Cursor = crHandPoint
          Caption = #49440#53469
          TabOrder = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          OnClick = cxBtnChoiceClick
        end
        object cxBtnClose: TcxButton
          Left = 258
          Top = 14
          Width = 45
          Height = 21
          Cursor = crHandPoint
          Caption = #45803#44592
          TabOrder = 4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          OnClick = cxBtnCloseClick
        end
      end
      object PnlKTPOIYN: TPanel
        Left = 592
        Top = 203
        Width = 268
        Height = 29
        BevelKind = bkFlat
        BevelOuter = bvNone
        TabOrder = 16
        Visible = False
        object btnHiPOIY: TcxButton
          Left = 0
          Top = 0
          Width = 132
          Height = 25
          Caption = #44592#51316#51060#50857#45236#50669#51452#49548#49324#50857
          TabOrder = 1
          OnClick = btnHiPOIYClick
        end
        object btnKtPOIY: TcxButton
          Left = 133
          Top = 0
          Width = 131
          Height = 25
          Caption = 'KT'#51204#54868#48264#54840#51452#49548#49324#50857
          TabOrder = 0
          OnClick = btnKtPOIYClick
        end
      end
      object pnlOrderInfoView: TPanel
        Left = 610
        Top = 213
        Width = 279
        Height = 234
        BevelKind = bkFlat
        BevelOuter = bvNone
        TabOrder = 10
        Visible = False
        DesignSize = (
          275
          230)
        object grpOrderInfoView: TcxGroupBox
          Left = 0
          Top = 63
          Alignment = alTopCenter
          Caption = #49345#49464' '#51221#48372
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 167
          Width = 274
          object cxMeoOrderUpInfo: TcxRichEdit
            Left = 3
            Top = 14
            Align = alClient
            Properties.ReadOnly = True
            Lines.Strings = (
              'cxMeoOrderUpInfo')
            Style.Color = 13893371
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Height = 146
            Width = 268
          end
        end
        object GrpCReason: TcxGroupBox
          Left = 0
          Top = 0
          Caption = #50724#45908#49345#53468' : '#51217#49688
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Height = 62
          Width = 253
          object lblCReason: TcxLabel
            Left = 5
            Top = 16
            AutoSize = False
            Caption = #44256#44061#47785#47197#50640' '#54364#49884#46120'('#49688#51221#50724#45908#50640' '#54620#54644', '#52712#49548#49324#50976#51080#51012#44221#50864')'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Vert = taVCenter
            Properties.WordWrap = True
            Transparent = True
            Height = 31
            Width = 265
            AnchorY = 32
          end
        end
        object cxButton2: TcxButton
          Left = 254
          Top = 0
          Width = 20
          Height = 20
          Anchors = [akTop, akRight]
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
          TabOrder = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          OnClick = cxButton2Click
        end
      end
      object GB3: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 299
        Width = 1218
        Height = 63
        Align = alBottom
        BevelKind = bkFlat
        BevelOuter = bvNone
        Color = 11271851
        ParentBackground = False
        TabOrder = 3
        OnMouseMove = GB3MouseMove
        object cxReEndArea: TcxRichEdit
          Left = 5
          Top = 31
          TabStop = False
          Enabled = False
          ParentFont = False
          Properties.ReadOnly = True
          Style.Color = clBtnFace
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = 7171437
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          OnClick = cxReEndAreaClick
          Height = 22
          Width = 481
        end
        object meoEndArea: TcxMemo
          Left = 32
          Top = 5
          OnFocusChanged = meoEndAreaFocusChanged
          Lines.Strings = (
            #49688#49436#50669'3'#48264#52636#44396)
          ParentFont = False
          Properties.ImeMode = imSHanguel
          Properties.WantReturns = False
          Properties.OnChange = meoEndAreaPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = #44404#47548
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnEnter = meoEndAreaEnter
          OnExit = meoEndAreaExit
          OnKeyDown = meoEndAreaKeyDown
          OnKeyUp = meoEndAreaKeyUp
          OnMouseDown = meoStartAreaMouseDown
          OnMouseEnter = AutoSelectMouseEnter
          OnMouseLeave = AutoSelectMouseMouseLeave
          Height = 26
          Width = 532
        end
        object cxtEndAreaDetail: TcxLabel
          Left = 300
          Top = 4
          AutoSize = False
          Caption = #49688#49436#50669
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsUltraFlat
          Style.Color = 12313840
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = 7171437
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Vert = taVCenter
          Visible = False
          Height = 22
          Width = 119
          AnchorY = 15
        end
        object lblEndAreaName: TcxLabel
          Left = 595
          Top = 4
          AutoSize = False
          Caption = #49436#50872' '#44053#45224#44396' '#49688#49436#46041
          ParentFont = False
          Style.BorderStyle = ebsUltraFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = 7171437
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Vert = taVCenter
          Visible = False
          Height = 22
          Width = 107
          AnchorY = 15
        end
        object cxLEndAreaFlag: TcxLabel
          Left = 45
          Top = 5
          Cursor = crIBeam
          Caption = #46020#52265#51648
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.TextColor = 10329501
          Style.IsFontAssigned = True
          Transparent = True
          OnClick = cxLEndAreaFlagClick
        end
        object BtnEdLock: TAdvGlowButton
          Left = 6
          Top = 6
          Width = 24
          Height = 24
          Cursor = crHandPoint
          Hint = 'F4)'#49688#51221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImageIndex = 0
          Images = cxImgLock
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          WordWrap = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = BtnEdLockClick
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Style = bsCheck
        end
        object btnEpop: TAdvGlowButton
          Left = 565
          Top = 6
          Width = 24
          Height = 22
          Cursor = crHandPoint
          Hint = #49444#51221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548#52404
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            61000003594944415478DA7D536B4C9357187ECE47EF7E40592B52855229DE36
            200223389DB72C363A34448C252E43E6A241C36674F80316AFB3A8D9E2BC04DD
            6046826E4CBCD4186546882ECECB46844D86A373B5B1149012562C507BEF77FC
            FA19132F89273939276F9EF7F2BCEFF312BC728A2FB80A9508D7110E890FFC48
            E24D345D8641CA10BB1B311B9B0A55175FC4935703ACF8F9D1A56D459A02CAFF
            4D4D8EFEA86D6BB176521468320F349F5D3571E96B01E69E18C8F7B946F77B82
            5EB3422C371E2F9F961FB57B83CF400AC9B3F7D323F7DBBC21DF6956A22892AB
            E22A6EACD6B4919C630E893214F8EF8B65E9A94E370725CB208601F69DE9C6D8
            C80838CA21365E892AE33BE038C0EDE190A464F0EDC5073D6EB1742AC9A8B1A6
            A58889ADCAA8479C02B8DAE9C7778DAD88043CE02261207A41C14815D8505A08
            C34C3946BDC0DED336F486A85EA0A0AF6A5E342F27BBC590AB81A9B153701628
            F4598457AA4EE60345C0C858EC5C3B1F2D1D03F8EDCFBF0CB6BD05AD44B7F9CC
            EEF0F0D092F56B4B725D6341DCB6383168BD0B2EE085A37E9D9040BBE687684F
            C1EA666241B616C92A1647EB1A3A446F8DBF4CDEDBFF0FAD2C7E1B119EDF95F6
            41DCEC76C2EFB4C256B3F2A509E9379EA3225685D9D953B1344F039188EF5353
            374886A993EEF8280B019EAAA56F14CD6D3D70DDBB86DE9F36BD144057F6238D
            D56662F1BB29C8D2254026067635FE0DA2F9E4D06EDFC3AE251F966DCF9D9731
            11EDD621980FEF44DCF4B9B0D77E4C9E3B7B1D9D58BEAE023953D4B8DEF508BF
            D47ED5219F9C795900C4193E5B943CA7B4658B3117224260BE6DC7F5FA6AC4A6
            0B7280C7DE810FD65462E5FBA9F007A3A5B7A3EF568361B4A5A695A85755A749
            39B16DEB979B04B04422C28478827B761F2C8E61C19695A64266AA0CCEC75171
            4540796D98F61C448009E94962C9D71232E6B12E2F2DD7F6BA9EC0CF37637E96
            06D327B1484C00784D616804B8DFEFC5B5BBFD90F20952D4E370BEE18883C6B2
            53040A9AB2EFF3FD0F2DDF84BDC3FF3321AED0505ECD08A5FBC2FC7428125809
            42118AAB472BC14965A744F2F824996E46D540DDFA3F5E5BA6E4929AAEBC8505
            1941DEF1CEF95A44F59B57B4019218823BBF5EFAB7EFE4E733DEB88DA9156717
            50F7E37AEA7FA2A34AE52C01E476FF0E464C18F5F8153D078CE617F14F01002D
            5610FE51288A0000000049454E44AE426082}
          PopupMenu = pmEpop
          Spacing = 4
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = btnEpopClick
          OnMouseDown = cxtCuTelMouseDown
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
        end
        object BtnSR: TAdvGlowButton
          Left = 565
          Top = 31
          Width = 24
          Height = 22
          Cursor = crHandPoint
          Hint = #44221#47196#48372#44592
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000000473424954080808087C086488000000097048597300000B1200000B
            1201D2DD7EFC00000015744558744372656174696F6E2054696D6500322F3137
            2F3038209CAA580000041174455874584D4C3A636F6D2E61646F62652E786D70
            003C3F787061636B657420626567696E3D22202020222069643D2257354D304D
            7043656869487A7265537A4E54637A6B633964223F3E0A3C783A786D706D6574
            6120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A786D70
            746B3D2241646F626520584D5020436F726520342E312D633033342034362E32
            37323937362C20536174204A616E20323720323030372032323A31313A343120
            20202020202020223E0A2020203C7264663A52444620786D6C6E733A7264663D
            22687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D7264
            662D73796E7461782D6E7323223E0A2020202020203C7264663A446573637269
            7074696F6E207264663A61626F75743D22220A20202020202020202020202078
            6D6C6E733A7861703D22687474703A2F2F6E732E61646F62652E636F6D2F7861
            702F312E302F223E0A2020202020202020203C7861703A43726561746F72546F
            6F6C3E41646F62652046697265776F726B73204353333C2F7861703A43726561
            746F72546F6F6C3E0A2020202020202020203C7861703A437265617465446174
            653E323030382D30322D31375430323A33363A34355A3C2F7861703A43726561
            7465446174653E0A2020202020202020203C7861703A4D6F6469667944617465
            3E323031302D30312D31315431313A34373A32335A3C2F7861703A4D6F646966
            79446174653E0A2020202020203C2F7264663A4465736372697074696F6E3E0A
            2020202020203C7264663A4465736372697074696F6E207264663A61626F7574
            3D22220A202020202020202020202020786D6C6E733A64633D22687474703A2F
            2F7075726C2E6F72672F64632F656C656D656E74732F312E312F223E0A202020
            2020202020203C64633A666F726D61743E696D6167652F706E673C2F64633A66
            6F726D61743E0A2020202020203C2F7264663A4465736372697074696F6E3E0A
            2020203C2F7264663A5244463E0A3C2F783A786D706D6574613E0A2020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020202020202020200A
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020200A202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            FFEAB2430000001C74455874536F6674776172650041646F6265204669726577
            6F726B732043533398D646030000010E49444154388D63ACABABFBCF40016061
            606060484B49820BBCBB3B9D41D74E8481818181E1F2A1370C42CA990CBC7CFC
            0C9C9C5C7035DFBF7F63F8FCE923C3AC39F32006E003BC7CFC0C9CAF5E316C54
            D7808BF9DFBCC1C020268670013EC0C9C9C5B0515D8321E43FC2A76BD43518FC
            7FFC20CE003860626278F91F33B88837808181E12B163182067CFFFE8DC1F3D6
            4D86356AEA7031CF5B3719BE7FFF06711821033E7FFAC8F0575494C1FFC70F86
            0E232306FF1F3F18FE8A8A327CFEF4913817C00C816978F5F239A617DEDD9D8E
            5333BA1C2A9F1D62002CE1A00374F133A72250F86BF67F261C0684000B030324
            C962B3195D1C1340BD20A49C091742F733B21C06D83F8F722F30529A9D019918
            5B5FE90E86DF0000000049454E44AE426082}
          Spacing = 4
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = BtnSRClick
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
        end
        object btnViewMap: TAdvGlowButton
          Left = 539
          Top = 31
          Width = 24
          Height = 22
          Cursor = crHandPoint
          Hint = #51648#46020
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548#52404
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            61000002DF4944415478DA8D937B48536118C69FB333E7E54CA72B4D94E125CB
            90C432CD08D2C23FBA27046545A26638891213CBC8F08F10ACD4C40CA5D44A21
            8B820289A0341534D16C4DAB79A54CCDCB362F6773EE72CE76D6949430D35E78
            FFF8BE8FE7F7C2F3BC1F8155AAC17B7D8C1D6BF6EE678CCF1369A57AE93BB11A
            40E11338243031120684AAD5301B94A4514EFE37A044E4E1B845E8DAABD71192
            C935D440FE7057683B6BA497051004419E8A3D9A40F008B6A7B7BF43A7E8533D
            F50FA8315ACCE11AB51E6C65A93E353525E2FBC0D0D7BF00221767D79C8BC72B
            F745471DD17024EC4823D8618213E716F226B5D398D6F141573CC014FDA32335
            59BA936158C322C0CF57B2B1A4B8B026842F0FE44FC83115920D66B201041586
            29593704EFBF80618151A9141BBC9D51599477BBB8A43CC3A6B5CE03620EEDCD
            282FAFC8637513707A1707F3F66C28593EACCC18664C5E107AFAC2C473808535
            01462D48AB994B3997B6FFA3ACF3ED3C80A29C7C646DCD3D12DF0007F3877C40
            2903B3A714E33DD560F99BC05AEDA09A31819ED142EC2C849F07303DFE79E4E0
            E9A2AD34AD51CF7940665D3AFFF8F2B6C15818A761354C801F9983C1593ECCBA
            6E708220900E2EA0B523D8ECDA08078C42E39884AA979D2F32AF5E3F366FA2AF
            8F64776BEDB3068A12C2D29C05B07AD061B9D08CBC06380B481E0FFEA24618A8
            58B0543408920F93518FB884B3271662B47F5456DC72F84064A8E3A8CDC47605
            107E05239C3BCCB30A580421108AC410BB7B813119A1A527505B572FCFCDBF9B
            B20020A276ED90BEBA175C6AB18F00D7516F338C86625D12C3E87E1294486247
            D8129F83D4D635C8EF3FACCEEFEAEEABB1E9661717892449B7C6374FFA828223
            D6F2E87EB4B534D1F19925B7942AF527A1903278797A882D168EFB3630583F27
            5C8CF18FA5E29D893F599077F3465A7B5B933A519A9E3C36AE6AB2DD6B6D6D5E
            10ACF899DC5C4581D7322F5415DC294B1F1D53B6FD16AE58C4326781AD997F4D
            5C5ABF002E693DAEE223B1450000000049454E44AE426082}
          Spacing = 4
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnClick = btnViewMapClick
          OnMouseDown = cxtCuTelMouseDown
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
        end
        object btnDCalc: TAdvGlowButton
          Left = 513
          Top = 31
          Width = 24
          Height = 22
          Cursor = crHandPoint
          Hint = #44144#47532#44228#49328
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548#52404
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            61000002214944415478DA6364A0103092A3E9A3B9833887AFD39A7F3FBFA992
            6CC007070F1BCE30CFCDCC168A023F57ECBB4F92011F22E23239235CA731B37C
            64F8B1E5C8B75F97DE4A327E8C89CBFDFFFBEFEFBF6F3FCF17DEB3E9272ECDEF
            C2E38BB983EC7A983E3E64F879FE26C38F1B5F6C45F66F3DC2F8B924FF3FA7BD
            2EC38F6B2F5E7D3F71D54674FDF2DBE89ADF24A765F23A194E637A7099E1F7C3
            570C5FEFFE8816DDBB65193810DF0445A971F2FEBAC9610134E40BC7FF8F7B8E
            2B49EDDCF000A6F9BEA185AF7475CE26E6ABC719FEBDFDCCF0E62543A1E4CA45
            135062E165604C362FC3DB291CAE2E0C5FDEFFFC7CA7BA5EC688E1F7A78BCCEC
            9EF2DECEDBD81EDD67F8FFF225C31346CE35EACF9E86628DC6975E01D705DE3D
            D6F8FFF317C3AB7FCCB7DF3E7BB6425157BB96F5DA350686D76F19DE3131BF7F
            F8FBA7A80D03C35FAC065C35B6D4173E7BFC02371313038BBA26C33F5E3E0606
            A0CD7FDFBD6560E6E46438FDE557A4C3DF1F2BF026A4938C2C6BF539B9827E00
            5DC1C4F08FE11F330B03173B3BC3F55F3F9FE8FFFC268B2D76500C58C7C82A63
            CFC1F6981DA8FD3F130B030B0B0BC3AF7FFF18F67DF9141CF8FFF73A820680C0
            2116B6FDB652620E5F852518B8FFFD61387FFBEE2DA36F9FD571A50F0C031630
            3004869AE8ACE332D263F879FF11C3A2DD4722D2181856126D0008EC95103C68
            61A66E77FCC4CD1D2EAFDE7B32E001580D98CDCC9461A5245E79FDF1FBF4901F
            3F76E033000015E2DD191C264CEB0000000049454E44AE426082}
          Spacing = 4
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnClick = btnDCalcClick
          OnMouseDown = cxtCuTelMouseDown
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
        end
        object btnEndLocalSave: TAdvGlowButton
          Left = 488
          Top = 33
          Width = 24
          Height = 22
          Cursor = crHandPoint
          Hint = #46020#52265#51648' '#51221#48372#47484' '#51200#51109' '#54633#45768#45796'. '#45796#51020#48264' '#51060#50857#49884' '#51088#46041#51004#47196' '#48520#47084#50741#45768#45796'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548#52404
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            61000002FE4944415478DA95925F685B6518879F2F39499BA66B9B6C599BC476
            AD2DAB69A754A1BB9A4C8AAD28DE88C2840D2F1C6C08DE886C302F64838DA228
            BB90C960E08DA20C1DEC622BAB5AB4F8675BBBBA4DCD96D4A66CB39DB4F9B7C4
            989C9C34E7F56BBAC16E64EE85C33907CE79BEE7FDBDAF3AF4734A946150C1C0
            5B2DD0585F87ED903CB634A1140A703A0D5C860B44C866EE7021E7E2CFA5A27F
            FAF54D59F5EE8F29D931E0E79B8CE2D97F12F43F16D41FAEFEA64BF4E5F09098
            BFC1746289C1EE56DC756E3EB7424C5C5A249B2E87D481EF97E5D1CE26A6724E
            5EF83BC6737DADE4AB8EDAC9555B086E6CE1C0D12FB8DEB58D91F4143DFD11BE
            5BFF043EBBC8F8A5346ADFB74B12E96A663AEF62247795677A03146C43034477
            21B4FB1B193D7591F4F030FD3F8C110A0418F30FD2596F3113CBA0DE1E5F949E
            2E5F0D309C996168B306C85D803668D706FB8F9D26D63BC2D0AD71225B229CF3
            6F25E432D7007B4ECEC9E30321A6B21A903ACFF37D01F2E2AE01C48675EBBC4C
            FC7A93E4DC2C2D1D9DD4D51B7CDD3C4858037EB9AE5BD8FB65427AFA824C573C
            3C199B64A8BD9EA25A03DCCBD1DBE0C1ED04A352E6CC6C8E68DF76DAAC02BF45
            97506F7C352F6D9BC3FCF1D3058C8538F64A057138B8BFE4EEDD616B25A70B77
            672F75035B895FBD85DAF5694C7CDD6DECF5A5F408BBF93F158D253878DBCF72
            5C1BBCF6595C5C1DADBC154811F0B530767602D11645B348A96462954A94AC32
            15D324994C32FAC128C9EC1DF6DDF0918B2FA2767E724D64532BEF84B235033D
            B9D5057CA0C19B734D1462B751AF9EF85D4C6D70B823F75006BBA38D58F105D4
            CB1F5F914247880FBBF38483EB49EB5D77EA1045AB8892B5B5D6CF4AE75A29AF
            B061839FBF96B3ECB8EC85591DE24BC76624190C733C52A8198C9F9B64A56251
            32F5C9C522E55513B38C5536C9A4D31C79EF70CDE0C5F31E5C090D78FAA3A894
            7B42BCDF3CCFF6A71EA194CEE370AEF5AAEE8D703518FD56AD5669F0FB98BCB2
            C02B37DBF15CBE860AEF9F145B6B5AC50A396BE5BEA8FE3B49B7E1C0AB34ACB9
            817F011E8D71A0A8082DC50000000049454E44AE426082}
          Spacing = 4
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
          OnClick = btnEndLocalSaveClick
          Appearance.BorderColorHot = 16761412
          Appearance.BorderColorDown = 16761412
          Appearance.BorderColorChecked = 33023
          Appearance.ColorChecked = 4105706
          Appearance.ColorCheckedTo = 4105706
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 15243853
          Appearance.ColorDownTo = 15243853
          Appearance.ColorHot = 7716789
          Appearance.ColorHotTo = 7716789
          Appearance.ColorMirrorHot = 7716789
          Appearance.ColorMirrorHotTo = 7716789
          Appearance.ColorMirrorDown = 15243853
          Appearance.ColorMirrorDownTo = 15243853
          Appearance.ColorMirrorChecked = 4105706
          Appearance.ColorMirrorCheckedTo = 4105706
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
        end
        object GBEndXYView: TPanel
          Left = 324
          Top = 12
          Width = 235
          Height = 24
          BevelKind = bkFlat
          BevelOuter = bvNone
          TabOrder = 10
          Visible = False
          object cxLabel10: TLabel
            Left = 0
            Top = 4
            Width = 29
            Height = 12
            Caption = '[Lat]'
            Transparent = True
          end
          object cxLabel11: TLabel
            Left = 99
            Top = 4
            Width = 33
            Height = 12
            Caption = '[Lon]'
            Transparent = True
          end
          object cxtEndXval: TcxTextEdit
            Left = 33
            Top = -1
            TabStop = False
            AutoSize = False
            ParentFont = False
            Properties.ReadOnly = True
            Properties.OnChange = cxtEndYvalPropertiesChange
            Style.Color = clWindow
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Text = '99999999'
            Height = 22
            Width = 63
          end
          object cxtEndYval: TcxTextEdit
            Left = 132
            Top = -1
            TabStop = False
            AutoSize = False
            ParentFont = False
            Properties.ReadOnly = True
            Properties.OnChange = cxtEndYvalPropertiesChange
            Style.Color = clWindow
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Text = '99999'
            Height = 22
            Width = 63
          end
          object btnEClose: TcxButton
            Left = 197
            Top = 0
            Width = 34
            Height = 20
            Cursor = crHandPoint
            Caption = #45803#44592
            ParentShowHint = False
            ShowHint = False
            TabOrder = 2
            OnClick = btnECloseClick
          end
        end
        object pnl_EndDetail_Update: TPanel
          Left = 6
          Top = 32
          Width = 385
          Height = 28
          Alignment = taLeftJustify
          BevelKind = bkFlat
          BevelOuter = bvNone
          Caption = ' '#46020#52265#51648' '#49345#49464#51648#47749
          Color = 16744448
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 11
          Visible = False
          object edt_EndDetail_Update: TcxTextEdit
            Left = 96
            Top = 0
            Align = alRight
            AutoSize = False
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            TextHint = #49345#49464#51648#47749
            OnKeyDown = edt_EndDetail_UpdateKeyDown
            Height = 24
            Width = 262
          end
          object btn_EndDetail_Update: TAdvGlowButton
            Left = 358
            Top = 0
            Width = 23
            Height = 24
            Cursor = crHandPoint
            Hint = #49345#49464#51648#47749#51200#51109
            Align = alRight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = #44404#47548#52404
            Font.Style = []
            ImageIndex = 58
            Images = Frm_Main.cxSmallImages
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Spacing = 4
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = btn_EndDetail_UpdateClick
            OnMouseDown = cxtCuTelMouseDown
            Appearance.BorderColorHot = 16761412
            Appearance.BorderColorDown = 16761412
            Appearance.BorderColorChecked = 33023
            Appearance.ColorChecked = 4105706
            Appearance.ColorCheckedTo = 4105706
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 15243853
            Appearance.ColorDownTo = 15243853
            Appearance.ColorHot = 7716789
            Appearance.ColorHotTo = 7716789
            Appearance.ColorMirrorHot = 7716789
            Appearance.ColorMirrorHotTo = 7716789
            Appearance.ColorMirrorDown = 15243853
            Appearance.ColorMirrorDownTo = 15243853
            Appearance.ColorMirrorChecked = 4105706
            Appearance.ColorMirrorCheckedTo = 4105706
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
          end
        end
      end
      object pnlCustAppinfo: TcxGroupBox
        Left = 710
        Top = 186
        Caption = #50612#54540#51221#48372
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 9
        Visible = False
        Height = 145
        Width = 303
        object mmoCuInfo: TcxMemo
          Left = 3
          Top = 14
          Align = alClient
          Lines.Strings = (
            #44256
            #44061
            #50857
            #50612
            #54540
            #53076
            #46300' '
            ': '
            '%'
            '0'
            ':'
            's'
            #44256
            #44061
            #50612
            #54540
            #49444
            #52824
            #51068' '
            ': '
            '%'
            '1'
            ':'
            's'
            #44256
            #44061
            #50612
            #54540
            #49325
            #51228
            #51068' '
            ': '
            '%'
            '2'
            ':'
            's'
            #44256
            #44061
            #50612
            #54540
            #47560
            #51648
            #47561
            #51060
            #50857
            #51068' '
            ': '
            '%'
            '3'
            ':'
            's'
            #44256
            #44061
            #50612
            #54540
            #51648
            #50669' '
            '  '
            ': '
            '%'
            '4'
            ':'
            's'
            #45800
            #47568
            #47784
            #45944' '
            '  '
            '  '
            '  '
            ': '
            '%'
            '5'
            ':'
            's'
            #45800
            #47568
            'O'
            'S'
            #48260
            #51204' '
            '  '
            '  '
            ': '
            '%'
            '6'
            ':'
            's'
            #49324
            #50857
            #50668
            #48512' '
            '  '
            '  '
            '  '
            ': '
            '%'
            '7'
            ':'
            's')
          ParentFont = False
          Properties.AutoSelect = True
          Properties.MaxLength = 0
          Properties.ReadOnly = True
          Style.Color = clWindow
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #46027#50880#52404
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.BorderColor = clWindowFrame
          StyleFocused.Color = clWindow
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.TextColor = clWindowText
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 124
          Width = 297
        end
      end
      object PnlSuggest: TPanel
        Left = 636
        Top = 278
        Width = 260
        Height = 105
        BevelOuter = bvNone
        TabOrder = 14
        Visible = False
        object AdvGridSj: TAdvStringGrid
          Left = 0
          Top = 0
          Width = 260
          Height = 105
          Cursor = crDefault
          Align = alClient
          ColCount = 1
          DefaultRowHeight = 20
          DrawingStyle = gdsClassic
          FixedCols = 0
          RowCount = 5
          FixedRows = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goRowSelect]
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
          OnEnter = AdvGridSjEnter
          OnKeyDown = AdvGridSjKeyDown
          OnKeyPress = AdvGridSjKeyPress
          OnKeyUp = AdvGridSjKeyUp
          ActiveRowShow = True
          HoverRowCells = [hcNormal, hcSelected]
          OnClickCell = AdvGridSjClickCell
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ControlLook.FixedGradientHoverFrom = clGray
          ControlLook.FixedGradientHoverTo = clWhite
          ControlLook.FixedGradientDownFrom = clGray
          ControlLook.FixedGradientDownTo = clSilver
          ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
          ControlLook.DropDownHeader.Font.Color = clWindowText
          ControlLook.DropDownHeader.Font.Height = -11
          ControlLook.DropDownHeader.Font.Name = 'Tahoma'
          ControlLook.DropDownHeader.Font.Style = []
          ControlLook.DropDownHeader.Visible = True
          ControlLook.DropDownHeader.Buttons = <>
          ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
          ControlLook.DropDownFooter.Font.Color = clWindowText
          ControlLook.DropDownFooter.Font.Height = -11
          ControlLook.DropDownFooter.Font.Name = 'Tahoma'
          ControlLook.DropDownFooter.Font.Style = []
          ControlLook.DropDownFooter.Visible = True
          ControlLook.DropDownFooter.Buttons = <>
          Filter = <>
          FilterDropDown.Font.Charset = DEFAULT_CHARSET
          FilterDropDown.Font.Color = clWindowText
          FilterDropDown.Font.Height = -11
          FilterDropDown.Font.Name = 'Tahoma'
          FilterDropDown.Font.Style = []
          FilterDropDown.TextChecked = 'Checked'
          FilterDropDown.TextUnChecked = 'Unchecked'
          FilterDropDownClear = '(All)'
          FilterEdit.TypeNames.Strings = (
            'Starts with'
            'Ends with'
            'Contains'
            'Not contains'
            'Equal'
            'Not equal'
            'Clear')
          FixedColWidth = 257
          FixedRowHeight = 20
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = [fsBold]
          FloatFormat = '%.2f'
          HoverButtons.Buttons = <>
          HoverButtons.Position = hbLeftFromColumnLeft
          HTMLSettings.ImageFolder = 'images'
          HTMLSettings.ImageBaseName = 'img'
          PrintSettings.DateFormat = 'dd/mm/yyyy'
          PrintSettings.Font.Charset = DEFAULT_CHARSET
          PrintSettings.Font.Color = clWindowText
          PrintSettings.Font.Height = -11
          PrintSettings.Font.Name = 'Tahoma'
          PrintSettings.Font.Style = []
          PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
          PrintSettings.FixedFont.Color = clWindowText
          PrintSettings.FixedFont.Height = -11
          PrintSettings.FixedFont.Name = 'Tahoma'
          PrintSettings.FixedFont.Style = []
          PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
          PrintSettings.HeaderFont.Color = clWindowText
          PrintSettings.HeaderFont.Height = -11
          PrintSettings.HeaderFont.Name = 'Tahoma'
          PrintSettings.HeaderFont.Style = []
          PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
          PrintSettings.FooterFont.Color = clWindowText
          PrintSettings.FooterFont.Height = -11
          PrintSettings.FooterFont.Name = 'Tahoma'
          PrintSettings.FooterFont.Style = []
          PrintSettings.PageNumSep = '/'
          ScrollSynch = True
          ScrollType = ssFlat
          SearchFooter.FindNextCaption = 'Find &next'
          SearchFooter.FindPrevCaption = 'Find &previous'
          SearchFooter.Font.Charset = DEFAULT_CHARSET
          SearchFooter.Font.Color = clWindowText
          SearchFooter.Font.Height = -11
          SearchFooter.Font.Name = 'Tahoma'
          SearchFooter.Font.Style = []
          SearchFooter.HighLightCaption = 'Highlight'
          SearchFooter.HintClose = 'Close'
          SearchFooter.HintFindNext = 'Find next occurrence'
          SearchFooter.HintFindPrev = 'Find previous occurrence'
          SearchFooter.HintHighlight = 'Highlight occurrences'
          SearchFooter.MatchCaseCaption = 'Match case'
          SearchFooter.ResultFormat = '(%d of %d)'
          ShowSelection = False
          ShowDesignHelper = False
          SortSettings.DefaultFormat = ssAutomatic
          VAlignment = vtaCenter
          Version = '8.4.7.0'
          ExplicitLeft = 88
          ExplicitTop = 5
          ExplicitWidth = 305
          ColWidths = (
            257)
        end
      end
      object PnlCtrlV: TPanel
        Left = -538
        Top = 291
        Width = 560
        Height = 50
        Alignment = taLeftJustify
        BevelKind = bkFlat
        BevelOuter = bvNone
        Caption = '  '#48537#50668#45347#44592' '#44160#49353' '#51473' ..'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 17
        Visible = False
        DesignSize = (
          556
          46)
        object btnCtrlVCancel: TcxButton
          Left = -72
          Top = 11
          Width = 80
          Height = 0
          Cursor = crHandPoint
          Anchors = [akTop, akRight, akBottom]
          Caption = #44160#49353#52712#49548
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744448
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          OnClick = btnCtrlVCancelClick
        end
      end
      object pnlWkLicType: TPanel
        Left = 366
        Top = 276
        Width = 217
        Height = 27
        BevelOuter = bvNone
        Color = clHotLight
        ParentBackground = False
        TabOrder = 18
        Visible = False
        object Panel2: TPanel
          Left = 2
          Top = 2
          Width = 213
          Height = 23
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          DesignSize = (
            213
            23)
          object cxLabel3: TcxLabel
            Left = 5
            Top = 4
            Caption = #47732#54728#51333#47448
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 16744448
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorX = 33
            AnchorY = 12
          end
          object btnWkLicTypeClose: TcxButton
            Left = 191
            Top = 1
            Width = 21
            Height = 21
            Anchors = [akTop, akRight]
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
            TabOrder = 1
            OnClick = btnWkLicTypeCloseClick
          end
          object cbbLicType: TcxComboBox
            Left = 62
            Top = -1
            AutoSize = False
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
            Properties.Items.Strings = (
              #54788#44552)
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Text = #54788#44552
            OnKeyPress = cboBrOnlyKeyPress
            OnMouseDown = cxtCuTelMouseDown
            Height = 24
            Width = 129
          end
        end
      end
      object pnlClose: TPanel
        Left = 581
        Top = 52
        Width = 16
        Height = 30
        BevelOuter = bvNone
        TabOrder = 19
        object Image1: TImage
          Left = 0
          Top = 0
          Width = 16
          Height = 30
          Align = alClient
          Stretch = True
          OnClick = Image1Click
          ExplicitLeft = 80
          ExplicitTop = -64
          ExplicitWidth = 105
          ExplicitHeight = 105
        end
      end
      object PnlModifyTitle: TPanel
        Left = 597
        Top = 52
        Width = 282
        Height = 30
        BevelOuter = bvNone
        Color = clWindow
        ParentBackground = False
        TabOrder = 20
        object Image2: TImage
          Left = 0
          Top = 0
          Width = 282
          Height = 30
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alClient
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000005
            0000001F0802000000A040904F000000017352474200AECE1CE9000000046741
            4D410000B18F0BFC610500000071494441542853B5C7390E82400086D1FFFEA7
            F0061C82DA0B18E90804A2B2CDB0CC6AE997D0D098BCE6C985488A29938E9049
            D66592393269D91369DA1369DC12E9B346D2DB46D2CB0452BF0452377B523B79
            52333AD2B331F4875B3ABFB574E12BA9EA36523D78D2FDD1936E45F953945FF4
            F0AEABB33042A00000000049454E44AE426082}
          Stretch = True
          ExplicitLeft = 97
        end
        object cxLblOrderUpInfo: TcxLabel
          Left = 0
          Top = 0
          Hint = #49688#51221#49884' '#47560#50864#49828' '#50732#47532#47732' '#51328#45908' '#47566#51008' '#51221#48372#47484' '#48380#49688' '#51080#51020'.'
          Align = alClient
          AutoSize = False
          Caption = #51217#49688' '#49888#44508' '#54868#47732
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = clWindow
          Style.BorderStyle = ebsUltraFlat
          Style.Color = 14733539
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          OnClick = cxLblOrderUpInfoClick
          OnMouseLeave = cxLblOrderUpInfoMouseLeave
          OnMouseMove = cxLblOrderUpInfoMouseMove
          Height = 30
          Width = 282
          AnchorX = 141
          AnchorY = 15
        end
      end
      object lst_BRList: TcxListBox
        Left = 610
        Top = 334
        Width = 314
        Height = 92
        ImeName = 'Microsoft Office IME 2007'
        ItemHeight = 15
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = #44404#47548
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        StyleFocused.Color = 11796479
        TabOrder = 13
        Visible = False
        OnDblClick = lst_BRListDblClick
        OnExit = lst_BRListExit
        OnKeyDown = lst_BRListKeyDown
      end
      object pnl_LockMent: TPanel
        Left = 624
        Top = 272
        Width = 585
        Height = 32
        BevelKind = bkFlat
        BevelOuter = bvNone
        BorderWidth = 2
        Color = clRed
        ParentBackground = False
        TabOrder = 21
        Visible = False
        object lb_LockMent: TLabel
          Left = 2
          Top = 2
          Width = 577
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = #50836#44552#54637#47785#51060' '#51104#44200#51080#49845#45768#45796'. '#51104#44552'(   )'#51012' '#54400#44256' '#51077#47141#54616#49464#50836
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          OnClick = lb_LockMentClick
          ExplicitWidth = 490
          ExplicitHeight = 19
        end
        object imgLockMent: TcxImage
          Left = 334
          Top = 4
          AutoSize = True
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
            0000001008060000001FF3FF61000000017352474200AECE1CE9000000046741
            4D410000B18F0BFC6105000000097048597300000EC300000EC301C76FA86400
            00016149444154384F63A03A58596923BAA2DA63F2EA3AFFE76B9B82FF836810
            1F240E55821B80140135DC06695C51E5B1687995FB24100D35E836414356567B
            6D5CD310F8657999A31554080C407C9038481E2A841DCC4AD1FA3837CB701594
            8B0240E2207928173BE8F6E3FCDFE5C7510FE5A2009038481ECAC50EE6A508FD
            0762AC0680C441F2502E76B0A15AFAFF862A29AC0680C441F2502E26F8F3F1F2
            FF3BBBB209E2AFAF2E6337E4F3859CFF9FEF75A3E077D75B30C46EEFCCC66EC0
            8733B9FF5F9C6F82E32BBB4AFEE78569836964F19BDB72B01BF07493FEFFA7C7
            E2C1F8E6D6C0FFF31BCDFF27BA4B8069101F267774B21E76031EAC35FC7F7563
            20181F9FEBF07F4AA1F6FF180711300DE2C3E40E4C30C06EC0ED9546FF6FEF49
            05E3938BBCFFEF9EE6FA3FC543124C83F830B93D3D86D80DB8B6C4E4FFF1F9BE
            FF77F759C3F1B60E13143E487E478731760316C470FC5F9026401077F9702019
            C0C000001F8F3CA1B2D58E700000000049454E44AE426082}
          TabOrder = 0
        end
      end
      object lblCuTel: TcxLabel
        Left = 40
        Top = 31
        AutoSize = False
        ParentColor = False
        Style.Color = 4227327
        Style.Edges = []
        Height = 5
        Width = 107
      end
      object pnl_ViaMent: TPanel
        Left = 595
        Top = 316
        Width = 587
        Height = 39
        BevelKind = bkFlat
        BevelOuter = bvNone
        BorderWidth = 2
        Color = clRed
        ParentBackground = False
        TabOrder = 23
        Visible = False
        OnClick = lb_LockMentClick
        DesignSize = (
          583
          35)
        object lb_ViaMent: TLabel
          Left = 2
          Top = 2
          Width = 579
          Height = 31
          Align = alClient
          Alignment = taCenter
          Caption = #44221#50976#51648'POI '#44160#49353#51473'...'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          OnClick = lb_LockMentClick
          ExplicitWidth = 154
          ExplicitHeight = 16
        end
        object cxButton8: TcxButton
          Left = 523
          Top = 5
          Width = 55
          Height = 25
          Anchors = [akTop, akRight]
          Caption = #52712' '#49548
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          OnClick = cxButton8Click
        end
      end
      object pnl_AIStart: TPanel
        Left = 414
        Top = 183
        Width = 587
        Height = 54
        BevelKind = bkFlat
        BevelOuter = bvNone
        BorderWidth = 2
        Color = clTeal
        ParentBackground = False
        TabOrder = 24
        Visible = False
        OnClick = lb_LockMentClick
        DesignSize = (
          583
          50)
        object lb_AIStart: TLabel
          Left = 2
          Top = 2
          Width = 579
          Height = 46
          Align = alClient
          Caption = '  LBS'#44592#48152' '#55092#45824#54256' '#50948#52824#52628#51201#51004#47196' '#52636#48156#51648' '#50948#52824#44032' '#51077#47141' '#46104#50632#49845#45768#45796'.'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          OnClick = lb_AIStartClick
          ExplicitWidth = 494
          ExplicitHeight = 16
        end
        object cxButton3: TcxButton
          Left = 523
          Top = 5
          Width = 55
          Height = 36
          Anchors = [akTop, akRight]
          Caption = #52712' '#49548
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          OnClick = cxButton3Click
        end
      end
      object pnl_AIOB: TPanel
        Left = 31
        Top = 276
        Width = 587
        Height = 54
        BevelKind = bkFlat
        BevelOuter = bvNone
        BorderWidth = 2
        Color = clTeal
        ParentBackground = False
        TabOrder = 25
        Visible = False
        OnClick = lb_LockMentClick
        DesignSize = (
          583
          50)
        object lb_AIOB: TcxLabel
          Left = 2
          Top = 2
          Align = alClient
          AutoSize = False
          Caption = 'AI'#48176#52264#51648#50672#53084' '#49884#49828#53596#50640#49436' '#49345#45812#50896#44284' '#53685#54868#47484' '#50896#54616#50668' '#50672#44208#46104#50632#49845#45768#45796'.'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -16
          Style.Font.Name = #44404#47548
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Vert = taVCenter
          OnClick = lb_AIOBClick
          Height = 46
          Width = 579
          AnchorY = 25
        end
        object cxButton5: TcxButton
          Left = 523
          Top = 5
          Width = 55
          Height = 36
          Anchors = [akTop, akRight]
          Caption = #52712' '#49548
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          OnClick = cxButton5Click
        end
      end
      object cb_WiseNutSntest: TcxComboBox
        Left = 445
        Top = 360
        AutoSize = False
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Properties.ImeMode = imSHanguel
        Properties.Items.Strings = (
          'ALL'
          '203'
          '61')
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548#52404
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 26
        Text = 'ALL'
        OnMouseDown = cxtCuTelMouseDown
        Height = 24
        Width = 49
      end
      object edt_POIIP: TcxTextEdit
        Left = 493
        Top = 360
        AutoSize = False
        TabOrder = 27
        TextHint = 'POIIP'
        Visible = False
        Height = 22
        Width = 90
      end
      object edt_RPIP: TcxTextEdit
        Left = 493
        Top = 381
        AutoSize = False
        TabOrder = 28
        TextHint = #44221#53456'IP'
        Visible = False
        Height = 22
        Width = 90
      end
    end
    object cxGBSearch: TcxGroupBox
      Left = 671
      Top = 114
      ParentBackground = False
      ParentColor = False
      Style.BorderStyle = ebsNone
      Style.Color = 5815460
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Visible = False
      DesignSize = (
        587
        84)
      Height = 84
      Width = 587
      object cxGrdCuList: TcxGrid
        Left = 0
        Top = 0
        Width = 558
        Height = 79
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = False
        LookAndFeel.NativeStyle = False
        object cxCustView: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxCustViewCellDblClick
          OnEditKeyPress = cxCustViewEditKeyPress
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.ColumnHeaderHints = False
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnMoving = False
          OptionsData.Appending = True
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = '  '
          OptionsView.ScrollBars = ssVertical
          OptionsView.DataRowHeight = 16
          OptionsView.GridLineColor = 16635384
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 16
          OptionsView.Indicator = True
          object cxGridDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#51068#47144#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.Moving = False
            Options.Sorting = False
          end
          object cxGridDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = #51204#54868#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Options.Editing = False
            Options.Filtering = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.Moving = False
            Width = 82
          end
          object cxGridDBColumn3: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#47749
            PropertiesClassName = 'TcxLabelProperties'
            Options.Editing = False
            Options.Filtering = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.Moving = False
          end
          object cxGridDBColumn4: TcxGridDBColumn
            DataBinding.FieldName = #48277#51064#47749
            PropertiesClassName = 'TcxLabelProperties'
            Options.Editing = False
            Options.Filtering = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.Moving = False
          end
          object cxGridDBColumn5: TcxGridDBColumn
            DataBinding.FieldName = #48277#51064#48512#49436
            PropertiesClassName = 'TcxLabelProperties'
            Options.Editing = False
            Options.Filtering = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.Moving = False
          end
          object cxGrdCol6: TcxGridDBColumn
            DataBinding.FieldName = #48277#51064#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol7: TcxGridDBColumn
            DataBinding.FieldName = #49345#45812#47700#47784
            PropertiesClassName = 'TcxLabelProperties'
          end
          object cxGrdCol8: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#50857#47700#47784
            PropertiesClassName = 'TcxLabelProperties'
          end
          object cxGrdCol9: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#44396#48516
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol10: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#46321#44553
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol11: TcxGridDBColumn
            DataBinding.FieldName = #50756#47308#44148#49688
            PropertiesClassName = 'TcxLabelProperties'
          end
          object cxGrdCol12: TcxGridDBColumn
            DataBinding.FieldName = #52712#49548#44148#49688
            PropertiesClassName = 'TcxLabelProperties'
          end
          object cxGrdCol13: TcxGridDBColumn
            DataBinding.FieldName = #54788#51116#47560#51068#47532#51648
            PropertiesClassName = 'TcxLabelProperties'
          end
          object cxGrdCol14: TcxGridDBColumn
            DataBinding.FieldName = #47560#51068#51648#44553#54943#49688
            PropertiesClassName = 'TcxLabelProperties'
          end
          object cxGrdCol15: TcxGridDBColumn
            DataBinding.FieldName = #47560#51068#51648#44553#45800#50948
            PropertiesClassName = 'TcxLabelProperties'
          end
          object cxGrdCol16: TcxGridDBColumn
            DataBinding.FieldName = #51648#44553#49345#54408#47749
            PropertiesClassName = 'TcxLabelProperties'
          end
          object cxGrdCol17: TcxGridDBColumn
            DataBinding.FieldName = #52636#48156#51648#47749
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol18: TcxGridDBColumn
            DataBinding.FieldName = #52636'1'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol19: TcxGridDBColumn
            DataBinding.FieldName = #52636'2'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol20: TcxGridDBColumn
            DataBinding.FieldName = #52636'3'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol21: TcxGridDBColumn
            DataBinding.FieldName = #52636'X'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol22: TcxGridDBColumn
            DataBinding.FieldName = #52636'Y'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol23: TcxGridDBColumn
            DataBinding.FieldName = #46020#52265#51648#47749
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol24: TcxGridDBColumn
            DataBinding.FieldName = #46020'1'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol25: TcxGridDBColumn
            DataBinding.FieldName = #46020'2'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol26: TcxGridDBColumn
            DataBinding.FieldName = #46020'3'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol27: TcxGridDBColumn
            DataBinding.FieldName = #46020'X'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol28: TcxGridDBColumn
            DataBinding.FieldName = #46020'Y'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGrdCol29: TcxGridDBColumn
            DataBinding.FieldName = 'SMS'#49688#49888#44144#48512
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
        end
        object cxGrdCuListLevel1: TcxGridLevel
          GridView = cxCustView
        end
      end
      object cxButton46: TcxButton
        Left = 561
        Top = 2
        Width = 23
        Height = 79
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #45803#13#10#13#10#44592
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        OnClick = cxButton46Click
      end
    end
    object cxLblCIDUseFlg: TcxLabel
      Left = 76
      Top = -6
      AutoSize = False
      Caption = #48156#49888#9742
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Style.BorderColor = 15076287
      Style.BorderStyle = ebsSingle
      Style.Color = 16441805
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 159988
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = [fsBold]
      Style.TextColor = 13719147
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Visible = False
      Height = 21
      Width = 50
      AnchorX = 101
      AnchorY = 5
    end
    object cxLblConfSlipUseFlg: TcxLabel
      Left = 244
      Top = -6
      AutoSize = False
      Caption = #51217#49688'No'
      ParentFont = False
      Style.BorderColor = 15076287
      Style.BorderStyle = ebsUltraFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Visible = False
      Height = 20
      Width = 57
      AnchorX = 273
      AnchorY = 4
    end
    object cxtCallTelNum: TcxTextEdit
      Left = 125
      Top = -6
      TabStop = False
      Enabled = False
      ParentColor = True
      ParentFont = False
      Properties.AutoSelect = False
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.Color = 16773362
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.TextColor = 16441805
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      Text = '0177521720'
      Visible = False
      Width = 66
    end
    object cxtJoinNum: TcxTextEdit
      Left = 302
      Top = -6
      TabStop = False
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clOlive
      StyleFocused.Color = 12615935
      StyleFocused.TextColor = clWhite
      TabOrder = 6
      Text = '99999988'
      Visible = False
      Width = 55
    end
    object cxtWorkerNm: TcxTextEdit
      Left = 190
      Top = -5
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderColor = clOlive
      Style.Color = 16773362
      StyleFocused.Color = 12615935
      StyleFocused.TextColor = clWhite
      TabOrder = 7
      Text = 'cxtWorkerNm'
      Visible = False
      Width = 52
    end
    object shaPrcMsg: TcxGroupBox
      Left = 803
      Top = 368
      Caption = #49436#48260#50640' '#50836#52397' '#52376#47532' '#51473' '#51077#45768#45796'.'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Visible = False
      Height = 73
      Width = 297
      object lblCapItem: TLabel
        Left = 46
        Top = 29
        Width = 87
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = #45224#51008#49884#44036' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblRltCnt: TLabel
        Left = 129
        Top = 29
        Width = 43
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Caption = '99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 168
        Top = 29
        Width = 23
        Height = 15
        AutoSize = False
        Caption = #52488
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object pnlServerDisconn: TPanel
        Left = 3
        Top = 50
        Width = 294
        Height = 52
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        Visible = False
        object Label2: TLabel
          Left = 4
          Top = 6
          Width = 251
          Height = 36
          Alignment = taCenter
          Caption = #49436#48260#47196' '#48512#53552' '#50836#52397#50640' '#45824#54620' '#51025#45813#51060' '#50630#49845#45768#45796'.'#13#10#13#10#51116#50836#52397' '#54616#49464#50836'!!'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxButton4: TcxButton
          Left = 247
          Top = 27
          Width = 40
          Height = 21
          Cursor = crHandPoint
          Caption = #54869#51064
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object PnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 1230
      Height = 29
      Cursor = crSizeAll
      Align = alTop
      BevelOuter = bvNone
      Color = 14740970
      ParentBackground = False
      PopupMenu = Pop01Setup
      TabOrder = 8
      OnMouseDown = PnlTitleMouseDown
      OnMouseMove = lblCuBubinNameMouseMove
      object lblCuBubinName: TLabel
        Left = 147
        Top = 11
        Width = 241
        Height = 12
        Cursor = crSizeAll
        AutoSize = False
        Caption = #48277#51064#44256#44061' [ LG'#50672#44396#49548' / '#47784#48148#51068#44592#44592#49444#44228#49324#50629#48512' ]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        OnMouseDown = PnlTitleMouseDown
        OnMouseMove = lblCuBubinNameMouseMove
      end
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 1230
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 10114859
        ParentColor = False
        Transparent = True
        OnMouseDown = PnlTitleMouseDown
        OnMouseMove = lblCuBubinNameMouseMove
        ExplicitWidth = 597
      end
      object cxCallTitle: TLabel
        Left = 8
        Top = 11
        Width = 134
        Height = 12
        Cursor = crSizeAll
        Caption = '('#53084#47553') 010-2222-7777'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        OnMouseDown = PnlTitleMouseDown
        OnMouseMove = lblCuBubinNameMouseMove
      end
      object ChkMini: TcxCheckBox
        Left = 456
        Top = 7
        Hint = #48120#45768#52285
        Caption = #48120#45768
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Transparent = True
        OnClick = ChkMiniClick
      end
      object ChkGroup: TcxCheckBox
        Left = 388
        Top = 7
        Hint = #44536#47353#51060#46041
        Caption = #44536#47353#51060#46041
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Transparent = True
        OnClick = ChkGroupClick
      end
      object BtnFix: TcxButton
        Left = 506
        Top = 6
        Width = 20
        Height = 23
        Cursor = crHandPoint
        Hint = #54788#50948#52824' '#51217#49688#52285' '#49884#51089' '#50948#52824#47196' '#49444#51221
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E0000000000000000000000000000676361F5524F
          4DC1000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000006D6967FF5854
          53CB000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000757171FF625F
          5CCB000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000007D7976FF6B67
          67CB000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000084807EFF7370
          6FCB000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000008A8684FF7B79
          77CB000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000959192FF9791
          82CB000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B0AA96FF7F7E
          9CC6000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000ABA690E7807F
          EFFF0315A7A7111A383A00000000000000000000000000000000050410120E10
          8E9F0B104D540D1436380F184446000000000000000000000000ACA794E38F8E
          EAFF0B26F8FF5075F7FF4F70DDE3263DA6AB0F1856590B104F522022C3CC1213
          DEFF1E30EAFF3A5AF4FF3859F8FF000000000000000000000000B6B19EE39695
          EFFF0724F8FF5477F8FF6386F9FF395BF7FF2A44F5FF2436F7FF1B1DF3FF1013
          DEFF1C2EEAFF4061F5FF4062F7FF000000000000000000000000BEB8A6E39D9D
          F2FF0724F7FF5275F8FF6185F9FF3A5BF7FF2A44F5FF2436F7FF1D20F3FF1213
          DEFF1B2DEAFF4464F5FF4768F9FF000000000000000000000000C0BDA8E3A0A2
          F6FF0823F6FF5076F8FF6185F9FF3A5CF7FF2A44F5FF2436F7FF1D20F3FF1213
          DEFF1B2DEAFF4464F5FF4768F9FF000000000000000000000000C5C2ADE3A09F
          FCFF011EF9FF4C71F7FF5E80F8FF395CF7FF2B45F5FF2536F7FF1C1CF3FF0C0D
          DFFF182CECFF3C5EF5FF3C5DF9FF000000000000000000000000CDC9BAE7C5C6
          F3FF3653E3ED567BFAFF4B70F8FF2A4DF7FF1C36F5FF1224F5FF2124F5FF3639
          C1D13C53F0FF5072F5FF5271F8FF000000000000000000000000A19D93F27A77
          81C0000000002A334A4A465584885368BCC14A5DBEC34755C7CD383B9A9E0000
          00000F121F201B202E2F1F2435360000000000000000}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BtnFixClick
      end
      object btnNew: TcxButton
        Left = 528
        Top = 6
        Width = 41
        Height = 23
        Cursor = crHandPoint
        Caption = #49888#44508
        TabOrder = 3
        OnClick = btnNewClick
      end
      object BtnClose: TcxButton
        Left = 571
        Top = 6
        Width = 26
        Height = 23
        Cursor = crHandPoint
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
        TabOrder = 4
        OnClick = BtnCloseClick
      end
    end
  end
  object cxtEndGUIDEXval: TcxTextEdit
    Left = 370
    Top = 285
    TabStop = False
    AutoSize = False
    ParentFont = False
    Properties.ReadOnly = True
    Style.Color = clWindow
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = #44404#47548#52404
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 1
    Text = '99999'
    Visible = False
    Height = 22
    Width = 63
  end
  object cxtEndGUIDEYval: TcxTextEdit
    Left = 469
    Top = 285
    TabStop = False
    AutoSize = False
    ParentFont = False
    Properties.ReadOnly = True
    Style.Color = clWindow
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = #44404#47548#52404
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 2
    Text = '99999'
    Visible = False
    Height = 22
    Width = 63
  end
  object cxtStartGUIDEXval: TcxTextEdit
    Left = 370
    Top = 223
    TabStop = False
    AutoSize = False
    ParentFont = False
    Properties.ReadOnly = True
    Style.Color = clWindow
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = #44404#47548#52404
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    Text = '99999'
    Visible = False
    Height = 22
    Width = 63
  end
  object cxtStartGUIDEYval: TcxTextEdit
    Left = 470
    Top = 207
    TabStop = False
    AutoSize = False
    ParentFont = False
    Properties.ReadOnly = True
    Style.Color = clWindow
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = #44404#47548#52404
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 4
    Text = '99999'
    Visible = False
    Height = 22
    Width = 63
  end
  object lbA1: TListBox
    Left = 604
    Top = 446
    Width = 187
    Height = 24
    ImeName = 'Microsoft Office IME 2007'
    ItemHeight = 12
    Items.Strings = (
      'sha_R1,TShape,TShape'
      'edtCuName,TcxTextEdit,TEdit'
      'BtnCustAdd,TcxButton,TcxButton'
      'cxBtnHoTrans,TcxButton,TcxButton'
      'cboCuLevel,TcxComboBox,TComboBox'
      'ChkCuSmsNo,TcxCheckBox,TcxCheckBox'
      'cxBtnSpSave,TcxButton,TcxButton'
      'cxBtnCuUpdate,TcxButton,TcxButton'
      'cxBtnCuNew,TcxButton,TcxButton'
      'cxBtnCuDel,TcxButton,TcxButton'
      'CbCuGb,TcxComboBox,TComboBox'
      'cxtCuBubin,TcxTextEdit,TEdit'
      'btnBubinSch,TcxButton,TcxButton'
      'pnlMileage,TPanel,TPanel'
      'cxLblCuLevel,TPanel,TPanel'
      'btnMileOut,TcxButton,TcxButton'
      'PnlOCC,TPanel,TPanel'
      'btnCustAppinfo,TcxButton,TcxButton'
      'meoCuCCMemo,TcxMemo,TMemo'
      'meoCuWorMemo,TcxMemo,TMemo'
      'edt_CardMemo,TcxMemo,TMemo')
    TabOrder = 5
    Visible = False
  end
  object lbB1: TListBox
    Left = 603
    Top = 472
    Width = 188
    Height = 31
    ImeName = 'Microsoft Office IME 2007'
    ItemHeight = 12
    Items.Strings = (
      'sha_R2,TShape,TShape'
      'BtnStLock,TcxButton,TcxButton'
      'meoStartArea,TcxMemo,TMemo'
      'btnSBigo1,TAdvGlowButton,TcxButton'
      'lblStartAreaName,TcxRichEdit,TEdit'
      'cxtStartAreaDetail,TcxRichEdit,TEdit'
      'btnStartLocalSave,TAdvGlowButton,TcxButton'
      'cb_00,TAdvGlowButton,TButton'
      'cb_06,TAdvGlowButton,TButton'
      'cb_01,TAdvGlowButton,TButton'
      'cb_02,TAdvGlowButton,TButton'
      'cb_03,TAdvGlowButton,TButton'
      'cb_04,TAdvGlowButton,TButton'
      'cb_05,TAdvGlowButton,TButton'
      'BtnViaAdd,TAdvGlowButton,TcxButton')
    TabOrder = 6
    Visible = False
  end
  object lbC1: TListBox
    Left = 604
    Top = 511
    Width = 188
    Height = 31
    ImeName = 'Microsoft Office IME 2007'
    ItemHeight = 12
    Items.Strings = (
      'sha_R3,TShape,TShape'
      'BtnEdLock,TcxButton,TcxButton'
      'meoEndArea,TcxMemo,TMemo'
      'btnEpop,TAdvGlowButton,TcxButton'
      'cxReEndArea,TcxRichEdit,TEdit'
      'cxButton3,TAdvGlowButton,TcxButton'
      'cxButton43,TAdvGlowButton,TcxButton'
      'BtnSR,TAdvGlowButton,TcxButton')
    TabOrder = 7
    Visible = False
  end
  object lbD1: TListBox
    Left = 603
    Top = 568
    Width = 188
    Height = 31
    ImeName = 'Microsoft Office IME 2007'
    ItemHeight = 12
    Items.Strings = (
      'sha_R4,TShape,TShape'
      'BtnSmartRate,TAdvGlowButton,TcxButton'
      'cxLabel13,TcxLabel,TPanel'
      'chkNoSet,TAdvGlowButton,TButton'
      'chkRangeRate,TAdvGlowButton,TButton'
      'BtnOptionCallMu,TAdvGlowButton,TButton'
      'BtnOptionSexM,TAdvGlowButton,TButton'
      'BtnOptionSexF,TAdvGlowButton,TButton'
      'BtnWkAge,TAdvGlowButton,TButton'
      'BtnWKJAmt,TAdvGlowButton,TButton'
      'BtnPlusYN,TAdvGlowButton,TButton'
      'BtnCenterMng,TAdvGlowButton,TButton'
      'BtnQRate,TAdvGlowButton,TButton'
      'btn_ChargeSave,TAdvGlowButton,TcxButton'
      'curRate,TcxSpinEdit,TSpinEdit'
      'curKm,TcxTextEdit,TEdit'
      'cxDriverCharge,TcxCurrencyEdit,TEdit'
      'cbbPayMethod,TcxComboBox,TComboBox'
      'cbbPostTime,TcxComboBox,TComboBox'
      'edtPostPay,TcxSpinEdit,TSpinEdit'
      'cbCardSanction,TcxButton,TcxButton'
      'imgBubin,TImage,TImage'
      'meoBigo,TcxMemo,TMemo'
      'meoBigo2,TcxMemo,TMemo'
      'meoBigo3,TcxMemo,TMemo'
      'btnAddBigo,TcxButton,TButton'
      'BtnResvView,TcxButton,TButton')
    TabOrder = 8
    Visible = False
  end
  object lbE1: TListBox
    Left = 602
    Top = 605
    Width = 188
    Height = 31
    ImeName = 'Microsoft Office IME 2007'
    ItemHeight = 12
    Items.Strings = (
      'sha_R5,TShape,TShape'
      'btnCmdJoin,TcxButton,TcxButton'
      'btnCmdWait,TcxButton,TcxButton'
      'btnCmdQuestion,TcxButton,TcxButton'
      'btnCmdNoSMS,TcxButton,TcxButton'
      'btnCmdExit,TcxButton,TcxButton'
      'btnCmdJoinCopy,TcxButton,TcxButton'
      'btnCmdWaitCopy,TcxButton,TcxButton'
      'btnCmdMultiCall,TcxButton,TcxButton'
      'btnPickupInsert,TcxButton,TcxButton')
    TabOrder = 9
    Visible = False
  end
  object pnlRShare: TPanel
    Left = 594
    Top = 103
    Width = 602
    Height = 26
    Cursor = crSizeAll
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = clRed
    ParentBackground = False
    TabOrder = 10
    Visible = False
    OnMouseDown = PnlTitleMouseDown
    DesignSize = (
      598
      22)
    object btnRCShare: TcxButton
      Left = 422
      Top = 1
      Width = 85
      Height = 20
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #44277#50976' '#51333#47308
      PopupMenu = pmBigo
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      OnMouseDown = cxtCuTelMouseDown
    end
    object cxLabel21: TcxLabel
      Left = 21
      Top = 4
      Caption = #51217#49688#52285' '#51228#50612' '#51473'...'
      Style.TextColor = clWhite
      Properties.Alignment.Vert = taVCenter
      OnMouseDown = PnlTitleMouseDown
      AnchorY = 12
    end
    object lblCShareJId: TcxLabel
      Left = 183
      Top = 4
      Caption = #54861#44600#46041
      Style.TextColor = clWhite
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Visible = False
      AnchorX = 223
      AnchorY = 12
    end
  end
  object pnlShare: TPanel
    Left = 70
    Top = 667
    Width = 587
    Height = 57
    Cursor = crSizeAll
    Anchors = [akLeft, akBottom]
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = clRed
    ParentBackground = False
    TabOrder = 11
    Visible = False
    OnMouseDown = PnlTitleMouseDown
    DesignSize = (
      583
      53)
    object lblCShareRId: TcxLabel
      Left = 340
      Top = 17
      Caption = #54861#44600#46041
      Style.TextColor = clWhite
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Visible = False
      AnchorX = 380
      AnchorY = 25
    end
    object btnCShareClose: TcxButton
      Left = 494
      Top = 4
      Width = 85
      Height = 45
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #44277#50976' '#51333#47308
      PopupMenu = pmBigo
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      OnMouseDown = cxtCuTelMouseDown
    end
    object lblTS1: TcxLabel
      Left = 16
      Top = 9
      Caption = #51217#49688#52285' '#44277#50976' '#51473' :'
      Style.TextColor = clWhite
      Properties.Alignment.Vert = taVCenter
      OnMouseDown = PnlTitleMouseDown
      AnchorY = 17
    end
    object btnCShareChange: TcxButton
      Left = 386
      Top = 4
      Width = 105
      Height = 45
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #51228#50612#44428#44032#51256#50724#44592
      PopupMenu = pmBigo
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      OnMouseDown = cxtCuTelMouseDown
    end
    object lblCShareRJ: TcxLabel
      Left = 29
      Top = 30
      Caption = #54861#44600#46041' - '#51060#49692#49888
      Style.TextColor = clWhite
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      OnMouseDown = PnlTitleMouseDown
      AnchorY = 38
    end
  end
  object pnl_ViaAlert: TPanel
    Left = 642
    Top = 333
    Width = 407
    Height = 244
    BevelKind = bkFlat
    BevelOuter = bvNone
    BorderWidth = 2
    Color = clBlack
    ParentBackground = False
    TabOrder = 12
    Visible = False
    object btn_ViaCheck: TcxButton
      Left = 22
      Top = 169
      Width = 131
      Height = 53
      Caption = #44221#50976#51648#52628#44032
      LookAndFeel.NativeStyle = True
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btn_ViaCheckClick
    end
    object pnl_ViaAlert_Title: TcxLabel
      Left = 0
      Top = 0
      AutoSize = False
      Caption = #44221#50976#51648#47484' '#54869#51064#54644#51452#49464#50836
      ParentColor = False
      ParentFont = False
      Style.Color = clYellow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = #44404#47548
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 44
      Width = 217
      AnchorX = 109
      AnchorY = 22
    end
    object cxLabel9: TcxLabel
      Left = 10
      Top = 49
      Caption = #51077#47141#54616#49888' '#52636#48156#51648#50640#45716' '#39#44221#50976#39#46972#45716' '#44544#51088#44032' '#54252#54632#46104#50612' '#51080#51648#47564
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = #44404#47548
      Style.Font.Style = []
      Style.TextColor = clWhite
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLabel16: TcxLabel
      Left = 10
      Top = 69
      Caption = #49892#51228' '#44221#50976#51648#45716' '#52628#44032#46104#51648' '#50506#50520#49845#45768#45796'.'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = #44404#47548
      Style.Font.Style = []
      Style.TextColor = clWhite
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLabel17: TcxLabel
      Left = 10
      Top = 90
      Caption = #44221#50976#51648#47484' '#52628#44032#54616#49884#47140#47732' '#50500#47000' '#39#44221#50976#51648#52628#44032#39' '#48260#53948#51012' '#45580#47084#51452#49464#50836
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = #44404#47548
      Style.Font.Style = []
      Style.TextColor = clWhite
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLabel18: TcxLabel
      Left = 10
      Top = 123
      Caption = #49892#51228' '#44221#50976#51648#51221#48372'('#51340#54364')'#44032' '#50630#51004#47732' '#52852#52852#50724#45824#47532#50752' '#53084#44277#50976#44032
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = #44404#47548
      Style.Font.Style = []
      Style.TextColor = clWhite
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
    end
    object btn_ViaSkip: TcxButton
      Left = 244
      Top = 169
      Width = 131
      Height = 53
      Caption = #44536#45285#51217#49688
      TabOrder = 6
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btn_ViaSkipClick
    end
    object cxLabel12: TcxLabel
      Left = 10
      Top = 143
      Caption = #46104#51648' '#50506#49845#45768#45796'. '#44221#50976#51648#47484' '#51340#54364#44592#48152#51004#47196' '#51077#47141#54644#51452#49464#50836'.'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = #44404#47548
      Style.Font.Style = []
      Style.TextColor = clWhite
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
    end
  end
  object pmBigo: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    Left = 840
    Top = 8
    object N1: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Caption = #49444#51221
      OnClick = N3Click
    end
  end
  object pmSpop: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    Left = 800
    Top = 8
    object MenuItem1: TMenuItem
      Caption = '-'
    end
    object N3: TMenuItem
      Caption = #49444#51221
      OnClick = N3Click
    end
  end
  object pmEpop: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    Left = 768
    Top = 8
    object MenuItem2: TMenuItem
      Caption = '-'
    end
    object N4: TMenuItem
      Caption = #49444#51221
      OnClick = N3Click
    end
  end
  object advPMnuWTR: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    Left = 736
    Top = 8
    object MenuItem3: TMenuItem
      Caption = #45824#44592#49884#44036'/'#45824#44592#50836#44552' '#52488#44592#54868
      OnClick = MenuItem3Click
    end
    object MenuItem4: TMenuItem
      Caption = '-'
    end
  end
  object tmMent: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = tmMentTimer
    Left = 652
    Top = 241
  end
  object tmFormClose: TTimer
    Enabled = False
    Interval = 80
    OnTimer = tmFormCloseTimer
    Left = 906
    Top = 184
  end
  object tmrDisAc: TTimer
    Enabled = False
    Interval = 30
    OnTimer = tmrDisAcTimer
    Left = 684
    Top = 136
  end
  object tmrStartPos: TTimer
    Enabled = False
    Interval = 30
    OnTimer = tmrStartPosTimer
    Left = 740
    Top = 136
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <>
    StorageName = 'cxPropertiesStore1'
    Left = 800
    Top = 136
  end
  object TT4: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TT4Timer
    Left = 419
    Top = 512
  end
  object cxImgLock: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 18350280
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000085CA0FF1066
          A0FF1066A0FF1066A0FF1066A0FF1066A0FF1066A0FF1066A0FF1066A0FF1066
          A0FF084C8AFF000000000000000000000000000000000000000034A4D6FF4D9F
          C7FF3B8EBBFF3B8EBBFF3B8EBBFF3488B6FF3B8EBBFF3B8EBBFF3B8EBBFF4D9F
          C7FF3388B8FF000000000000000000000000000000000000000032A9DBFF65BC
          DBFF65BCDBFF4BA2C9FF4596BBFF194864FF4596BBFF4BA2C9FF65BCDBFF65BC
          DBFF318CBCFF000000000000000000000000000000000000000031ADE0FF51B1
          D5FF51B1D5FF409DC7FF2B7194FF14405CFF2B7194FF409DC7FF51B1D5FF51B1
          D5FF3090C0FF00000000000000000000000000000000000000002FB2E5FF5FC6
          E5FF5FC6E5FF51B5D9FF37819FFF184761FF37819FFF51B5D9FF5FC6E5FF5FC6
          E5FF2E93C5FF00000000000000000000000000000000000000006DCCF0FF82CF
          E8FF82CFE8FF82CFE8FF74BAD4FF2B566EFF74BAD4FF82CFE8FF82CFE8FF82CF
          E8FF6CB6D9FF00000000000000000000000000000000000000006CD0F3FF8BDE
          F3FF8BDEF3FF8BDEF3FF8BDEF3FF84D7EEFF8BDEF3FF8BDEF3FF8BDEF3FF8BDE
          F3FF6BB9DBFF0000000000000000000000000000000000000000D3F1FCFF6BBA
          DCFF6BBADCFF6BBADCFF6BBADCFF6BBADCFF6BBADCFF6BBADCFF6BBADCFF6BBA
          DCFFD3EAF5FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001C7DB2FF155E85BF000000000000
          000000000000000000000000000000000000155E85BF1C7DB2FF000000000000
          0000000000000000000000000000000000001469A2FF0F4F79BF000000000000
          0000000000000000000000000000000000000F4F79BF1469A2FF000000000000
          0000000000000000000000000000000000000C5692FF09406DBF000000000000
          00000000000000000000000000000000000009406DBF0C5692FF000000000000
          000000000000000000000000000000000000084C8AFF063967BF000000000000
          000000000000000000000000000000000000063967BF084C8AFF000000000000
          000000000000000000000000000000000000446D93DB4E7BA5F405090D140000
          000000000000000000000000000005090D144E7BA5F4446D93DB000000000000
          0000000000000000000000000000000000001F364A715382ADFF345676B10509
          0D14000000000000000005090D14345676B15382ADFF1F364A71000000000000
          00000000000000000000000000000000000000000000345676B15382ADFF4E7B
          A5F4395E80C0395E80C04E7BA5F45382ADFF345676B100000000000000000000
          00000000000000000000000000000000000000000000000000001A2D3F603E66
          8ACE5382ADFF5382ADFF3E668ACE1A2D3F600000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000085CA0FF1066A0FF1066A0FF1066A0FF1066A0FF1066A0FF1066A0FF1066
          A0FF1066A0FF1066A0FF084C8AFF000000000000000000000000000000000000
          000034A4D6FF4D9FC7FF3B8EBBFF3B8EBBFF3B8EBBFF3488B6FF3B8EBBFF3B8E
          BBFF3B8EBBFF4D9FC7FF3388B8FF000000000000000000000000000000000000
          000032A9DBFF65BCDBFF65BCDBFF4BA2C9FF4596BBFF194864FF4596BBFF4BA2
          C9FF65BCDBFF65BCDBFF318CBCFF000000000000000000000000000000000000
          000031ADE0FF51B1D5FF51B1D5FF409DC7FF2B7194FF14405CFF2B7194FF409D
          C7FF51B1D5FF51B1D5FF3090C0FF000000000000000000000000000000000000
          00002FB2E5FF5FC6E5FF5FC6E5FF51B5D9FF37819FFF184761FF37819FFF51B5
          D9FF5FC6E5FF5FC6E5FF2E93C5FF000000000000000000000000000000000000
          00006DCCF0FF82CFE8FF82CFE8FF82CFE8FF74BAD4FF2B566EFF74BAD4FF82CF
          E8FF82CFE8FF82CFE8FF6CB6D9FF000000000000000000000000000000000000
          00006CD0F3FF8BDEF3FF8BDEF3FF8BDEF3FF8BDEF3FF84D7EEFF8BDEF3FF8BDE
          F3FF8BDEF3FF8BDEF3FF6BB9DBFF000000000000000000000000000000000000
          0000D3F1FCFF6BBADCFF6BBADCFF6BBADCFF6BBADCFF6BBADCFF6BBADCFF6BBA
          DCFF6BBADCFF6BBADCFFD3EAF5FF000000000000000000000000000000000000
          0000000000001B7BB0FF0D3D587F000000000000000000000000000000000000
          00000D3D587F1B7BB0FF00000000000000000000000000000000000000000000
          00000000000012649EFF09324F7F000000000000000000000000000000000000
          000009324F7F12649EFF00000000000000000000000000000000000000000000
          000000000000094E8BFF0427457F000000000000000000000000000000000000
          00000427457F094E8BFF00000000000000000000000000000000000000000000
          000000000000285F92F1214769AA000000000000000000000000000000000000
          0000214769AA285F92F100000000000000000000000000000000000000000000
          000000000000345676B14E7BA5F40F1B263A0000000000000000000000000F1B
          263A4E7BA5F4345676B100000000000000000000000000000000000000000000
          000000000000050A0E15446D93DB5382ADFF2E4E6BA2294660922E4E6BA25382
          ADFF446D93DB050A0E1500000000000000000000000000000000000000000000
          00000000000000000000050A0E152A47619348739BE75382ADFF48739BE72A47
          6193050A0E150000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF009F440A00B0591200A8490100A9582700FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00E7D3C900AF673E00FFFFFF00FFFFFF00FFFF
          FF00BA702700FDC23000E88E0000B55E2000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00EDDDD600AA5519009F461300FFFFFF00FFFFFF00FFFF
          FF00B86B2800EFB43700DE8A0B00B6632400FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00E5CDC500AC5C2300EFB12F00AC571E00FFFFFF00FFFFFF00FFFF
          FF00BE703000F3BC4600E4951500BA672900FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00DAB6A900B86F3200EBAD2F00E6950F00AD572100FFFFFF00FFFFFF00FFFF
          FF00C2763400F6C45100E79F1F00C16F2C00FFFFFF00FFFFFF00FFFFFF00D4AA
          9700BF783800F0B73E00E4961300E49A1D00B3602800FFFFFF00FFFFFF00FFFF
          FF00C77B3800F6CB5C00EAA72800C5752F00FFFFFF00FFFFFF00C3846800CC8F
          4900F4BD4100E39A1E00E49C2800E7A52700B8642900FFFFFF00FFFFFF00FFFF
          FF00CB823B00F7D26700EEB03100CE833C00FFFFFF00C27F5B00D4984C00F4C2
          4700E7A32900E7A63100E7A62F00EDAC3100BF6B2B00FFFFFF00FFFFFF00FFFF
          FF00D0884000FAD77200F0B73C00D48E4700BE714200E6BC7900FACE5300E9A8
          2A00EBB03B00EAAE3800E9AD3700EDB43A00C4722E00FFFFFF00FFFFFF00FFFF
          FF00D68E4300FADA7D00F1C04600D9954C00DFB89F00DDA96600FCE89F00EEB8
          3F00EBB23B00ECB54300ECB54100EFB94300CB793200FFFFFF00FFFFFF00FFFF
          FF00DA944500FCE18800F4C65100D9923D00FFFFFF00E2BCA200D4944B00FFF1
          B800F0BF4D00EDB54200EEBB4C00F1C24D00D0823400FFFFFF00FFFFFF00FFFF
          FF00DD9A4800FEE68F00F7CE5C00DD983E00FFFFFF00FFFFFF00E9C6A800D99A
          4F00FFF4C100F3C75900EFBB4A00F3C55800D5883700FFFFFF00FFFFFF00FFFF
          FF00E2A04C00FFE99700F9D36300DE9C4200FFFFFF00FFFFFF00FFFFFF00F3DD
          C600DA9C4900FBEBB600F7CF6900F4C85400D9903A00FFFFFF00FFFFFF00FFFF
          FF00E5A74F00FFEEA100FAD96E00E4A34500FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00F5E0C900DD9B3F00FFF2C800FBDB7B00DE953100FFFFFF00FFFFFF00FFFF
          FF00E8AD5200FFEE9D00FCDA6900E6AA4600FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00F8E9D600E2A34000FFF8D000E7AF5500FFFFFF00FFFFFF00FFFF
          FF00EDB85B00FFFFEA00FFF9C100ECB65400FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FCF3E600E7A93E00E9AD4400FFFFFF00FFFFFF00FFFF
          FF00EBAB3500EFC06600F0BE6100EDB75400FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00F9E9D000EEBB5F00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF005C58
          DA002722CE002622CF002722CE002520CB002420CB00241FCB002520CB00251F
          CA00251FCA002620CD00231EC8002620CD005B56D900FFFFFF00605FE1002E2D
          FB002423EF000B06B600201DE5002B29FA002824F4002824F4002723F4002722
          F4002925FC00130DCE000A05B000211AEF002921FB005D5ADE002423D600272B
          EF001312B1006A67BF001B1AB0001F20E2002D2EF400282AED002929EE002C2D
          F4000E0DCA003F3CB5009090CE001210B1002321EE00201CD2002C2CD400100E
          BB00918ED300FFFFFF00ADAAE000100FB2001C20E0003036F4002F35F4000D0D
          CE003835B800ECECF800FFFFFF006A67C6000F0DC0002B29D5003034DB001D24
          D700433DC300EBEAF800FFFFFF00AFADE3001D1BB9001D24DE00171CD7003934
          BE00EEEDF900FFFFFF00ACAAE4001F1BBD00252CE7002E2DD8003136DC00384F
          FA00161ED4003A32C500EDEDF900FFFFFF00D0CEF000201FC1001E1DC000E2E2
          F600FFFFFF00B3B1E8001511BF00232DE5003241F7002F30D8002E34DD00364F
          F3003950F300151DD8003E35CC00DEDBF600FFFFFF00CFCDF200CFCEF300FFFF
          FF00D4D3F3002321C700202CE3003447F4003144F2002B2FDB005056E5003B55
          F300334BEF003852F4001F2ADF00211DCB00CDCCF400FFFFFF00FFFFFF00CDCB
          F4002120CD002232E300354DF4002F44EE00364DF2004E52E3006E72EA006E82
          F700556AF2004862F3002B3BE800221FD200CDCBF300FFFFFF00FFFFFF00CDCB
          F400201DD200242FE400445DF3005366F2006A7DF6006B6FE9006B70EC007388
          F700788CF6006472F100514BE000D5D2F700FFFFFF00DCDAF800DCDAF800FFFF
          FF00DCDAF800655EE200575EEA007588F6006F83F600686DEA006C72EE007891
          F7006779F2005550E600CAC6F600FFFFFF00E9E8FC005851E6005954E600E0DE
          FA00FFFFFF00F6F5FD006F69E900575FEC00748CF7006A6FED006E76EF006F82
          F3005E59EB00C2BFF700FFFFFF00F2F1FD006E66EC005D68EF006472F1005E57
          EB00C5C1F800FFFFFF00F1F0FD007670EC00616BF1006D74EF007078F1005A5C
          EF00928BF300FFFFFF00F1F0FE006F68F0005B64EF007A92F6007A91F6006775
          F2005551ED00C3BFF900FFFFFF00AFA8F7005857F0006C71EF006C75F3007A91
          F6005A57F000AEA8F7007771F3005F68F2007D96F600798EF500788EF5007C94
          F6006D7FF4005F5BF000948CF5005956F100758BF6006A73F100949BF60085A1
          F7007C94F6005B5BF3006975F50084A1F8008099F7007F98F7007F98F7007E97
          F600819CF6007588F5005C5FF3007990F500819DF7009399F500FFFFFF00969B
          F800757BF5007278F500757CF500737AF500737AF500727AF500727AF500737A
          F5007279F500737AF500737AF400737AF400959AF700FFFFFF00}
        MaskColor = clWhite
      end>
  end
  object tmrKeyDown: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tmrKeyDownTimer
    Left = 347
    Top = 504
  end
  object tmrXYChange: TTimer
    Enabled = False
    Interval = 5
    OnTimer = tmrXYChangeTimer
    Left = 213
    Top = 512
  end
  object tmrDistance: TTimer
    Enabled = False
    Interval = 5
    OnTimer = tmrDistanceTimer
    Left = 133
    Top = 512
  end
  object tmrResponse: TTimer
    Enabled = False
    Interval = 5
    OnTimer = tmrResponseTimer
    Left = 475
    Top = 521
  end
  object Pop01Setup: TPopupMenu
    Left = 358
    Top = 126
    object N5: TMenuItem
      Caption = #54788#50948#52824' '#51217#49688#52285' '#49884#51089' '#50948#52824#47196' '#49444#51221
      OnClick = N5Click
    end
  end
  object tmrWKSearch: TTimer
    Enabled = False
    Interval = 10
    OnTimer = tmrWKSearchTimer
    Left = 279
    Top = 507
  end
  object tmrThRealDis: TTimer
    Enabled = False
    OnTimer = tmrThRealDisTimer
    Left = 171
    Top = 465
  end
  object tmrCharge: TTimer
    Enabled = False
    Interval = 10
    OnTimer = tmrChargeTimer
    Left = 659
    Top = 633
  end
  object tmHoTranRlt: TTimer
    Enabled = False
    OnTimer = tmHoTranRltTimer
    Left = 740
    Top = 648
  end
  object PopupMenuHoTrans: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    MenuAnimation = [maLeftToRight]
    TrackButton = tbLeftButton
    Left = 422
    Top = 164
    object N1Seoul: TMenuItem
      Tag = 2
      AutoHotkeys = maManual
      AutoLineReduction = maManual
      Caption = #49436#50872
      OnClick = N1SeoulClick
    end
    object N1Kyeonggi: TMenuItem
      Tag = 31
      Caption = #44221#44592
      OnClick = N1SeoulClick
    end
    object N1InCheon: TMenuItem
      Tag = 32
      Caption = #51064#52380
      OnClick = N1SeoulClick
    end
    object N17: TMenuItem
      Caption = '-'
    end
    object N1DaeJeon: TMenuItem
      Tag = 42
      Caption = #45824#51204
      OnClick = N1SeoulClick
    end
    object N1ChungNam: TMenuItem
      Tag = 41
      Caption = #52649#45224
      OnClick = N1SeoulClick
    end
    object N1ChungBuk: TMenuItem
      Tag = 43
      Caption = #52649#48513
      OnClick = N1SeoulClick
    end
    object N1GangWon: TMenuItem
      Tag = 33
      Caption = #44053#50896
      OnClick = N1SeoulClick
    end
    object N18: TMenuItem
      Caption = '-'
    end
    object N1DaeGu: TMenuItem
      Tag = 53
      Caption = #45824#44396
      OnClick = N1SeoulClick
    end
    object N1GyeongBuk: TMenuItem
      Tag = 54
      Caption = #44221#48513
      OnClick = N1SeoulClick
    end
    object N1BuSan: TMenuItem
      Tag = 51
      Caption = #48512#49328
      OnClick = N1SeoulClick
    end
    object N1UlSan: TMenuItem
      Tag = 52
      Caption = #50872#49328
      OnClick = N1SeoulClick
    end
    object N1GyeongNam: TMenuItem
      Tag = 55
      Caption = #44221#45224
      OnClick = N1SeoulClick
    end
    object N19: TMenuItem
      Caption = '-'
    end
    object N1JeonBuk: TMenuItem
      Tag = 63
      Caption = #51204#48513
      OnClick = N1SeoulClick
    end
    object N1GwangJu: TMenuItem
      Tag = 62
      Caption = #44305#51452
      OnClick = N1SeoulClick
    end
    object N1JeonNam: TMenuItem
      Tag = 61
      Caption = #51204#45224
      OnClick = N1SeoulClick
    end
    object N1JeJu: TMenuItem
      Tag = 64
      Caption = #51228#51452
      OnClick = N1SeoulClick
    end
  end
  object IdHoTrans: TIdTCPClient
    ConnectTimeout = 0
    IPVersion = Id_IPv4
    Port = 0
    ReadTimeout = 0
    Left = 470
    Top = 172
  end
  object trmBubinState: TTimer
    Enabled = False
    Interval = 500
    OnTimer = trmBubinStateTimer
    Left = 154
    Top = 80
  end
  object tmrAutoCall: TTimer
    Enabled = False
    Interval = 10
    OnTimer = tmrAutoCallTimer
    Left = 475
    Top = 456
  end
  object TT4_1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TT4_1Timer
    Left = 419
    Top = 472
  end
  object TT3_1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = TT3_1Timer
    Left = 351
    Top = 556
  end
  object tmrCShare: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = tmrCShareTimer
    Left = 37
    Top = 464
  end
  object tmrRate: TTimer
    Enabled = False
    Interval = 500
    OnTimer = tmrRateTimer
    Left = 51
    Top = 513
  end
  object tmUpsoPnl: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = tmUpsoPnlTimer
    Left = 692
    Top = 241
  end
  object popQRMenu: TPopupMenu
    OnPopup = popQRMenuPopup
    Left = 102
    Top = 462
    object miQRate: TMenuItem
      Caption = #49888#44508#50836#44552#47928#51032
      OnClick = miQRateClick
    end
    object miQRList: TMenuItem
      Caption = #50836#44552#45813#48320#45236#50669#48372#44592
      OnClick = miQRListClick
    end
  end
  object TT5_1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TT5_1Timer
    Left = 51
    Top = 576
  end
  object TT5: TTimer
    Enabled = False
    Interval = 200
    OnTimer = TT5Timer
    Left = 51
    Top = 624
  end
  object trmPnlSuggest: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = trmPnlSuggestTimer
    Left = 403
    Top = 561
  end
  object tmLockMent: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = tmLockMentTimer
    Left = 764
    Top = 241
  end
end

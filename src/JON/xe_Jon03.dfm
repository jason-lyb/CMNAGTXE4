object Frm_JON03: TFrm_JON03
  Left = 0
  Top = 77
  Align = alClient
  Caption = 'JON03'
  ClientHeight = 719
  ClientWidth = 1273
  Color = clWindow
  DoubleBuffered = True
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  Position = poDefaultSizeOnly
  Scaled = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pnl_Main: TPanel
    Tag = 6
    Left = 0
    Top = 0
    Width = 1273
    Height = 699
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 1273
      Height = 699
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object cxTCOrderState: TcxTabControl
        Left = 0
        Top = 118
        Width = 1273
        Height = 27
        Align = alTop
        Color = clBtnFace
        ParentBackground = False
        ParentColor = False
        TabOrder = 3
        Properties.CustomButtons.Buttons = <>
        Properties.Style = 11
        Properties.TabIndex = 0
        Properties.Tabs.Strings = (
          #49440#53469#49345#53468#51204#52404)
        LookAndFeel.NativeStyle = False
        OnChange = cxTCOrderStateChange
        OnClick = cxTCOrderStateClick
        ClientRectRight = 0
        ClientRectTop = 0
        object lbl_JONSrc_Alert1: TcxLabel
          Left = 943
          Top = 5
          AutoSize = False
          Caption = #51312#54924#44148#49688#51228#54620
          Style.TextColor = clGray
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          Visible = False
          Height = 16
          Width = 82
          AnchorX = 984
          AnchorY = 13
        end
        object cxButton5: TcxButton
          Left = 1026
          Top = 2
          Width = 90
          Height = 21
          Caption = #49345#53468' '#53485#45803#44592
          TabOrder = 1
          OnClick = cxButton5Click
        end
        object btnAppSch: TcxButton
          Left = 1117
          Top = 2
          Width = 40
          Height = 21
          Hint = #44256#44061#50857#50612#54540#51217#49688#51312#54924
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2010Silver'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C0000001D744558745469746C650050686F6E653B4D6F62696C65
            3B43656C6C50686F6E653BCD5C0E9B0000017749444154785E7D93B14B234118
            C5DF6C125152590812F448112D1238BC232AD65A0AFE955AD9085758C45A319E
            7A16A6536125C480C684C4CB6667E6731E61612193FDC1ABDEDBC7FB58262F22
            20F5FA7650FDB57F09A576908548F3F1EE62EFE6A66968E453D602203B5BBF77
            C1521F4A29DCFFBDDA0650709A29E01A68AD413AED10EDD71790D25A19ABA575
            1066D2DFA50B945841B1544661A988E54A0D5595AC9E2AFE3F82DC5E83595F01
            AC58A8C222366A3F984803716AFD7B6606C45B0067EAD820D6163EE8615E41B7
            DB45C55A4CB4C12416F8A067AD6576B6200C433CBD84D81C46AEC0C0C7C079CC
            30EB3D61341C22ECF4B1D21BA3900B10A8E9EDD60AB4133D6688B780F3A228C6
            28E2829915F498C92A302EA4319EF84FA0C74CF682090B2C3CD0CB5E2062F0D5
            7BC36DE32AF5F78902D1A37766B2177CB4CE4144AC93246FC02900C95EE04C6B
            38539C0C8E0E0F40CEFE341004392705995F40CF3C0CFA9F3F9347737C720AA2
            821C5724CB1E52B7E11B3BE2F207EF9FB39F0000000049454E44AE426082}
          OptionsImage.Spacing = 1
          ParentShowHint = False
          ShowHint = True
          SpeedButtonOptions.GroupIndex = 10
          SpeedButtonOptions.AllowAllUp = True
          TabOrder = 2
          WordWrap = True
          OnClick = btnAppSchClick
        end
        object chkJon_Multi_Modify: TcxCheckBox
          Tag = 299
          Left = 1157
          Top = 2
          Hint = #49688#51221#52285#51012' 3'#44060' '#49324#50857
          Caption = #47680#54000' '#49688#51221#52285
          ParentShowHint = False
          ShowHint = True
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 3
          Transparent = True
          OnClick = chkJon_Multi_ModifyClick
        end
        object btn_CPChk: TcxButton
          Left = 870
          Top = 2
          Width = 68
          Height = 21
          Cursor = crHandPoint
          Hint = #53084#54056#49828
          Caption = #53084#54056#49828#54252#54632
          LookAndFeel.SkinName = 'Office2010Silver'
          ParentShowHint = False
          ShowHint = True
          SpeedButtonOptions.GroupIndex = 6
          SpeedButtonOptions.AllowAllUp = True
          TabOrder = 4
          OnClick = btn_CPChkClick
        end
      end
      object pnl_Search: TPanel
        Left = 0
        Top = 0
        Width = 1273
        Height = 118
        Align = alTop
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object cxGroupBox6: TcxGroupBox
          Left = 0
          Top = 0
          Align = alClient
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnResize = cxGroupBox6Resize
          DesignSize = (
            1273
            118)
          Height = 118
          Width = 1273
          object speAuto: TShape
            Left = 945
            Top = 4
            Width = 79
            Height = 67
            Hint = 'Line'
            Pen.Color = clSilver
          end
          object Shape1: TShape
            Left = 7
            Top = 30
            Width = 935
            Height = 41
            Pen.Color = clSilver
          end
          object rb_chk_All: TAdvGlowButton
            Left = 23
            Top = 44
            Width = 72
            Height = 24
            Cursor = crHandPoint
            Hint = #45800#52629#53412':F1'
            AntiAlias = aaNone
            Caption = #51204#52404
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ImageIndex = 18
            Images = Frm_Main.cximgOrderStatus
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWhite
            NotesFont.Height = -12
            NotesFont.Name = #44404#47548#52404
            NotesFont.Style = []
            ParentFont = False
            Rounded = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = rb_chk_AllClick
            Appearance.BorderColorHot = 16761412
            Appearance.BorderColorDown = 16761412
            Appearance.BorderColorChecked = 9666684
            Appearance.Color = clWhite
            Appearance.ColorTo = clWhite
            Appearance.ColorChecked = 9666684
            Appearance.ColorCheckedTo = 9666684
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 15243853
            Appearance.ColorDownTo = 15243853
            Appearance.ColorHot = 7716789
            Appearance.ColorHotTo = 7716789
            Appearance.ColorMirror = clSilver
            Appearance.ColorMirrorTo = clWhite
            Appearance.ColorMirrorHot = 7716789
            Appearance.ColorMirrorHotTo = 7716789
            Appearance.ColorMirrorDown = 15243853
            Appearance.ColorMirrorDownTo = 15243853
            Appearance.ColorMirrorChecked = 9666684
            Appearance.ColorMirrorCheckedTo = 9666684
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Style = bsCheck
          end
          object cb_00: TAdvGlowButton
            Left = 98
            Top = 44
            Width = 72
            Height = 24
            Cursor = crHandPoint
            Hint = #45800#52629#53412':F2'
            Caption = #51217#49688
            ImageIndex = 0
            Images = Frm_Main.cximgOrderStatus
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -12
            NotesFont.Name = #44404#47548#52404
            NotesFont.Style = []
            Rounded = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = cb_00Click
            Appearance.BorderColorHot = 16761412
            Appearance.BorderColorDown = 16761412
            Appearance.BorderColorChecked = 43754
            Appearance.Color = clWhite
            Appearance.ColorTo = clWhite
            Appearance.ColorChecked = 7592191
            Appearance.ColorCheckedTo = 7592191
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 15243853
            Appearance.ColorDownTo = 15243853
            Appearance.ColorHot = 7716789
            Appearance.ColorHotTo = 7716789
            Appearance.ColorMirror = clSilver
            Appearance.ColorMirrorTo = clWhite
            Appearance.ColorMirrorHot = 7716789
            Appearance.ColorMirrorHotTo = 7716789
            Appearance.ColorMirrorDown = 15243853
            Appearance.ColorMirrorDownTo = 15243853
            Appearance.ColorMirrorChecked = 7592191
            Appearance.ColorMirrorCheckedTo = 7592191
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Style = bsCheck
          end
          object cb_01: TAdvGlowButton
            Left = 173
            Top = 44
            Width = 72
            Height = 24
            Cursor = crHandPoint
            Hint = #45800#52629#53412':F3'
            Caption = #48176#52264
            ImageIndex = 1
            Images = Frm_Main.cximgOrderStatus
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -12
            NotesFont.Name = #44404#47548#52404
            NotesFont.Style = []
            Rounded = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            OnClick = cb_00Click
            Appearance.BorderColorHot = 16761412
            Appearance.BorderColorDown = 16761412
            Appearance.BorderColorChecked = 43754
            Appearance.Color = clWhite
            Appearance.ColorTo = clWhite
            Appearance.ColorChecked = 7592191
            Appearance.ColorCheckedTo = 7592191
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 15243853
            Appearance.ColorDownTo = 15243853
            Appearance.ColorHot = 7716789
            Appearance.ColorHotTo = 7716789
            Appearance.ColorMirror = clSilver
            Appearance.ColorMirrorTo = clWhite
            Appearance.ColorMirrorHot = 7716789
            Appearance.ColorMirrorHotTo = 7716789
            Appearance.ColorMirrorDown = 15243853
            Appearance.ColorMirrorDownTo = 15243853
            Appearance.ColorMirrorChecked = 7592191
            Appearance.ColorMirrorCheckedTo = 7592191
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Style = bsCheck
          end
          object cb_0B: TAdvGlowButton
            Left = 248
            Top = 44
            Width = 72
            Height = 24
            Cursor = crHandPoint
            Caption = #48176#51473
            ImageIndex = 9
            Images = Frm_Main.cximgOrderStatus
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -12
            NotesFont.Name = #44404#47548#52404
            NotesFont.Style = []
            Rounded = True
            ParentShowHint = False
            ShowHint = False
            TabOrder = 5
            OnClick = cb_00Click
            Appearance.BorderColorHot = 16761412
            Appearance.BorderColorDown = 16761412
            Appearance.BorderColorChecked = 43754
            Appearance.Color = clWhite
            Appearance.ColorTo = clWhite
            Appearance.ColorChecked = 7592191
            Appearance.ColorCheckedTo = 7592191
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 15243853
            Appearance.ColorDownTo = 15243853
            Appearance.ColorHot = 7716789
            Appearance.ColorHotTo = 7716789
            Appearance.ColorMirror = clSilver
            Appearance.ColorMirrorTo = clWhite
            Appearance.ColorMirrorHot = 7716789
            Appearance.ColorMirrorHotTo = 7716789
            Appearance.ColorMirrorDown = 15243853
            Appearance.ColorMirrorDownTo = 15243853
            Appearance.ColorMirrorChecked = 7592191
            Appearance.ColorMirrorCheckedTo = 7592191
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Style = bsCheck
          end
          object cb_0C: TAdvGlowButton
            Left = 324
            Top = 44
            Width = 72
            Height = 24
            Cursor = crHandPoint
            Caption = #44540#48176
            ImageIndex = 10
            Images = Frm_Main.cximgOrderStatus
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -12
            NotesFont.Name = #44404#47548#52404
            NotesFont.Style = []
            Rounded = True
            ParentShowHint = False
            ShowHint = False
            TabOrder = 6
            OnClick = cb_00Click
            Appearance.BorderColorHot = 16761412
            Appearance.BorderColorDown = 16761412
            Appearance.BorderColorChecked = 43754
            Appearance.Color = clWhite
            Appearance.ColorTo = clWhite
            Appearance.ColorChecked = 7592191
            Appearance.ColorCheckedTo = 7592191
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 15243853
            Appearance.ColorDownTo = 15243853
            Appearance.ColorHot = 7716789
            Appearance.ColorHotTo = 7716789
            Appearance.ColorMirror = clSilver
            Appearance.ColorMirrorTo = clWhite
            Appearance.ColorMirrorHot = 7716789
            Appearance.ColorMirrorHotTo = 7716789
            Appearance.ColorMirrorDown = 15243853
            Appearance.ColorMirrorDownTo = 15243853
            Appearance.ColorMirrorChecked = 7592191
            Appearance.ColorMirrorCheckedTo = 7592191
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Style = bsCheck
          end
          object cb_03: TAdvGlowButton
            Left = 474
            Top = 44
            Width = 72
            Height = 24
            Cursor = crHandPoint
            Caption = #44053#51228
            ImageIndex = 3
            Images = Frm_Main.cximgOrderStatus
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -12
            NotesFont.Name = #44404#47548#52404
            NotesFont.Style = []
            Rounded = True
            ParentShowHint = False
            ShowHint = False
            TabOrder = 7
            OnClick = cb_00Click
            Appearance.BorderColorHot = 16761412
            Appearance.BorderColorDown = 16761412
            Appearance.BorderColorChecked = 43754
            Appearance.Color = clWhite
            Appearance.ColorTo = clWhite
            Appearance.ColorChecked = 7592191
            Appearance.ColorCheckedTo = 7592191
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 15243853
            Appearance.ColorDownTo = 15243853
            Appearance.ColorHot = 7716789
            Appearance.ColorHotTo = 7716789
            Appearance.ColorMirror = clSilver
            Appearance.ColorMirrorTo = clWhite
            Appearance.ColorMirrorHot = 7716789
            Appearance.ColorMirrorHotTo = 7716789
            Appearance.ColorMirrorDown = 15243853
            Appearance.ColorMirrorDownTo = 15243853
            Appearance.ColorMirrorChecked = 7592191
            Appearance.ColorMirrorCheckedTo = 7592191
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Style = bsCheck
          end
          object cb_05: TAdvGlowButton
            Left = 549
            Top = 44
            Width = 72
            Height = 24
            Cursor = crHandPoint
            Hint = #45800#52629#53412':F6'
            Caption = #45824#44592
            ImageIndex = 5
            Images = Frm_Main.cximgOrderStatus
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -12
            NotesFont.Name = #44404#47548#52404
            NotesFont.Style = []
            Rounded = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 8
            OnClick = cb_00Click
            Appearance.BorderColorHot = 16761412
            Appearance.BorderColorDown = 16761412
            Appearance.BorderColorChecked = 43754
            Appearance.Color = clWhite
            Appearance.ColorTo = clWhite
            Appearance.ColorChecked = 7592191
            Appearance.ColorCheckedTo = 7592191
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 15243853
            Appearance.ColorDownTo = 15243853
            Appearance.ColorHot = 7716789
            Appearance.ColorHotTo = 7716789
            Appearance.ColorMirror = clSilver
            Appearance.ColorMirrorTo = clWhite
            Appearance.ColorMirrorHot = 7716789
            Appearance.ColorMirrorHotTo = 7716789
            Appearance.ColorMirrorDown = 15243853
            Appearance.ColorMirrorDownTo = 15243853
            Appearance.ColorMirrorChecked = 7592191
            Appearance.ColorMirrorCheckedTo = 7592191
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Style = bsCheck
          end
          object cb_08: TAdvGlowButton
            Left = 700
            Top = 44
            Width = 72
            Height = 24
            Cursor = crHandPoint
            Hint = #45800#52629#53412':F5'
            Caption = #52712#49548
            ImageIndex = 6
            Images = Frm_Main.cximgOrderStatus
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -12
            NotesFont.Name = #44404#47548#52404
            NotesFont.Style = []
            Rounded = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 10
            OnClick = cb_00Click
            Appearance.BorderColorHot = 16761412
            Appearance.BorderColorDown = 16761412
            Appearance.BorderColorChecked = 43754
            Appearance.Color = clWhite
            Appearance.ColorTo = clWhite
            Appearance.ColorChecked = 7592191
            Appearance.ColorCheckedTo = 7592191
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 15243853
            Appearance.ColorDownTo = 15243853
            Appearance.ColorHot = 7716789
            Appearance.ColorHotTo = 7716789
            Appearance.ColorMirror = clSilver
            Appearance.ColorMirrorTo = clWhite
            Appearance.ColorMirrorHot = 7716789
            Appearance.ColorMirrorHotTo = 7716789
            Appearance.ColorMirrorDown = 15243853
            Appearance.ColorMirrorDownTo = 15243853
            Appearance.ColorMirrorChecked = 7592191
            Appearance.ColorMirrorCheckedTo = 7592191
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Style = bsCheck
          end
          object cb_0R: TAdvGlowButton
            Left = 775
            Top = 44
            Width = 72
            Height = 24
            Cursor = crHandPoint
            Caption = #50696#50557
            ImageIndex = 8
            Images = Frm_Main.cximgOrderStatus
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -12
            NotesFont.Name = #44404#47548#52404
            NotesFont.Style = []
            Rounded = True
            ParentShowHint = False
            ShowHint = False
            TabOrder = 11
            OnClick = cb_00Click
            Appearance.BorderColorHot = 16761412
            Appearance.BorderColorDown = 16761412
            Appearance.BorderColorChecked = 43754
            Appearance.Color = clWhite
            Appearance.ColorTo = clWhite
            Appearance.ColorChecked = 7592191
            Appearance.ColorCheckedTo = 7592191
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 15243853
            Appearance.ColorDownTo = 15243853
            Appearance.ColorHot = 7716789
            Appearance.ColorHotTo = 7716789
            Appearance.ColorMirror = clSilver
            Appearance.ColorMirrorTo = clWhite
            Appearance.ColorMirrorHot = 7716789
            Appearance.ColorMirrorHotTo = 7716789
            Appearance.ColorMirrorDown = 15243853
            Appearance.ColorMirrorDownTo = 15243853
            Appearance.ColorMirrorChecked = 7592191
            Appearance.ColorMirrorCheckedTo = 7592191
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Style = bsCheck
          end
          object cb_04: TAdvGlowButton
            Left = 851
            Top = 44
            Width = 72
            Height = 24
            Cursor = crHandPoint
            Hint = #45800#52629#53412':F7'
            Caption = #47928#51032
            ImageIndex = 4
            Images = Frm_Main.cximgOrderStatus
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -12
            NotesFont.Name = #44404#47548#52404
            NotesFont.Style = []
            Rounded = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 12
            OnClick = cb_00Click
            Appearance.BorderColorHot = 16761412
            Appearance.BorderColorDown = 16761412
            Appearance.BorderColorChecked = 43754
            Appearance.Color = clWhite
            Appearance.ColorTo = clWhite
            Appearance.ColorChecked = 7592191
            Appearance.ColorCheckedTo = 7592191
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 15243853
            Appearance.ColorDownTo = 15243853
            Appearance.ColorHot = 7716789
            Appearance.ColorHotTo = 7716789
            Appearance.ColorMirror = clSilver
            Appearance.ColorMirrorTo = clWhite
            Appearance.ColorMirrorHot = 7716789
            Appearance.ColorMirrorHotTo = 7716789
            Appearance.ColorMirrorDown = 15243853
            Appearance.ColorMirrorDownTo = 15243853
            Appearance.ColorMirrorChecked = 7592191
            Appearance.ColorMirrorCheckedTo = 7592191
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Style = bsCheck
          end
          object cb_02: TAdvGlowButton
            Left = 625
            Top = 44
            Width = 72
            Height = 24
            Cursor = crHandPoint
            Hint = #45800#52629#53412':F4'
            Caption = #50756#47308
            ImageIndex = 2
            Images = Frm_Main.cximgOrderStatus
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -12
            NotesFont.Name = #44404#47548#52404
            NotesFont.Style = []
            Rounded = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 9
            OnClick = cb_00Click
            Appearance.BorderColorHot = 16761412
            Appearance.BorderColorDown = 16761412
            Appearance.BorderColorChecked = 43754
            Appearance.Color = clWhite
            Appearance.ColorTo = clWhite
            Appearance.ColorChecked = 7592191
            Appearance.ColorCheckedTo = 7592191
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 15243853
            Appearance.ColorDownTo = 15243853
            Appearance.ColorHot = 7716789
            Appearance.ColorHotTo = 7716789
            Appearance.ColorMirror = clSilver
            Appearance.ColorMirrorTo = clWhite
            Appearance.ColorMirrorHot = 7716789
            Appearance.ColorMirrorHotTo = 7716789
            Appearance.ColorMirrorDown = 15243853
            Appearance.ColorMirrorDownTo = 15243853
            Appearance.ColorMirrorChecked = 7592191
            Appearance.ColorMirrorCheckedTo = 7592191
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Style = bsCheck
          end
          object BtnAutoRe: TAdvGlowButton
            Left = 953
            Top = 10
            Width = 56
            Height = 59
            Cursor = crHandPoint
            BorderStyle = bsNone
            Caption = #51312#54924#49884#51089
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ImageIndex = 4
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Picture.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200802000000FC18ED
              A3000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA8640000011349444154484B63743C
              F1850107F8F5EFBF9330CBBEB77FD89818A142A880A002206082D23403A31610
              04A3161004B4B7E0CB9FFF78D08F7FC0DC04CA503810C3EFFFF815FC675CF0F8
              27D42E0CF08F81418A9D71CFDBBF1C38FCF9FB1F833E1FF3C54F7F59710704E3
              FFFFFFA14C6CE0E1B7BF9E67BE09B1E22A2A189C4558F6BE01161550114C4020
              0EFEFC67606364041635381003D06A2089218E40B48F64284D33306A014130EC
              2D0066B077BFFFBDFB8503FD265896E02D2A80E58C1E2FB3301BCEDCCEC2C878
              E3EBBFBD6F7F73E0AEF4194D8F7C863231C097BFFF8B14D95364D9A07C6C60FE
              93DF13EFFFE061C1DDAA00CAE144CC8CACB89D06014079B4B2010D8D26538260
              D4028260A85BC0C00000B7D2D7ABF8BE9DEF0000000049454E44AE426082}
            PopupMenu = PmAutoSec
            Rounded = True
            Spacing = 7
            Transparent = True
            TabOrder = 59
            OnClick = Image1Click
            Appearance.BorderColorHot = clGray
            Appearance.BorderColorDown = clGray
            Appearance.BorderColorChecked = 16761412
            Appearance.Color = clWhite
            Appearance.ColorTo = clWhite
            Appearance.ColorChecked = clWhite
            Appearance.ColorCheckedTo = clWhite
            Appearance.ColorDisabled = clWhite
            Appearance.ColorDisabledTo = clWhite
            Appearance.ColorDown = clWhite
            Appearance.ColorDownTo = clWhite
            Appearance.ColorHot = clWhite
            Appearance.ColorHotTo = clWhite
            Appearance.ColorMirror = clWhite
            Appearance.ColorMirrorTo = clWhite
            Appearance.ColorMirrorHot = clWhite
            Appearance.ColorMirrorHotTo = clWhite
            Appearance.ColorMirrorDown = clWhite
            Appearance.ColorMirrorDownTo = clWhite
            Appearance.ColorMirrorChecked = clWhite
            Appearance.ColorMirrorCheckedTo = clWhite
            Appearance.ColorMirrorDisabled = clWhite
            Appearance.ColorMirrorDisabledTo = clWhite
            Layout = blGlyphTop
            Style = bsCheck
          end
          object edtFastKey1: TcxTextEdit
            Left = 30
            Top = 72
            AutoSize = False
            ParentShowHint = False
            Properties.Alignment.Horz = taCenter
            Properties.ImeMode = imSHanguel
            Properties.OnChange = edtFastKey1PropertiesChange
            ShowHint = True
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.TextColor = clDefault
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 28
            OnClick = edtFastKey1Click
            OnEnter = edtFastKey1Enter
            OnExit = edtFastKey1Exit
            OnKeyPress = edtFastKey1KeyPress
            OnKeyUp = edtFastKey1KeyUp
            Height = 22
            Width = 122
          end
          object edtFastKey2: TcxTextEdit
            Left = 152
            Top = 72
            AutoSize = False
            ParentShowHint = False
            Properties.Alignment.Horz = taCenter
            Properties.ImeMode = imSHanguel
            Properties.OnChange = edtFastKey1PropertiesChange
            ShowHint = True
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 29
            OnClick = edtFastKey1Click
            OnEnter = edtFastKey1Enter
            OnExit = edtFastKey1Exit
            OnKeyPress = edtFastKey1KeyPress
            OnKeyUp = edtFastKey1KeyUp
            Height = 22
            Width = 122
          end
          object edtFastKey3: TcxTextEdit
            Left = 274
            Top = 72
            AutoSize = False
            ParentShowHint = False
            Properties.Alignment.Horz = taCenter
            Properties.ImeMode = imSHanguel
            Properties.OnChange = edtFastKey1PropertiesChange
            ShowHint = True
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 30
            OnClick = edtFastKey1Click
            OnEnter = edtFastKey1Enter
            OnExit = edtFastKey1Exit
            OnKeyPress = edtFastKey1KeyPress
            OnKeyUp = edtFastKey1KeyUp
            Height = 22
            Width = 122
          end
          object edtFastKey4: TcxTextEdit
            Left = 396
            Top = 72
            AutoSize = False
            ParentShowHint = False
            Properties.Alignment.Horz = taCenter
            Properties.ImeMode = imSHanguel
            Properties.OnChange = edtFastKey1PropertiesChange
            ShowHint = True
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 31
            OnClick = edtFastKey1Click
            OnEnter = edtFastKey1Enter
            OnExit = edtFastKey1Exit
            OnKeyPress = edtFastKey1KeyPress
            OnKeyUp = edtFastKey1KeyUp
            Height = 22
            Width = 122
          end
          object edtFastKey5: TcxTextEdit
            Left = 518
            Top = 72
            AutoSize = False
            ParentShowHint = False
            Properties.Alignment.Horz = taCenter
            Properties.ImeMode = imSHanguel
            Properties.OnChange = edtFastKey1PropertiesChange
            ShowHint = True
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.TextColor = clDefault
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 32
            OnClick = edtFastKey1Click
            OnEnter = edtFastKey1Enter
            OnExit = edtFastKey1Exit
            OnKeyPress = edtFastKey1KeyPress
            OnKeyUp = edtFastKey1KeyUp
            Height = 22
            Width = 122
          end
          object edtFastKey6: TcxTextEdit
            Left = 640
            Top = 72
            AutoSize = False
            ParentShowHint = False
            Properties.Alignment.Horz = taCenter
            Properties.ImeMode = imSHanguel
            Properties.OnChange = edtFastKey1PropertiesChange
            ShowHint = True
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 33
            OnClick = edtFastKey1Click
            OnEnter = edtFastKey1Enter
            OnExit = edtFastKey1Exit
            OnKeyPress = edtFastKey1KeyPress
            OnKeyUp = edtFastKey1KeyUp
            Height = 22
            Width = 122
          end
          object edtFastKey7: TcxTextEdit
            Left = 762
            Top = 72
            AutoSize = False
            ParentShowHint = False
            Properties.Alignment.Horz = taCenter
            Properties.ImeMode = imSHanguel
            Properties.OnChange = edtFastKey1PropertiesChange
            ShowHint = True
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 34
            OnClick = edtFastKey1Click
            OnEnter = edtFastKey1Enter
            OnExit = edtFastKey1Exit
            OnKeyPress = edtFastKey1KeyPress
            OnKeyUp = edtFastKey1KeyUp
            Height = 22
            Width = 122
          end
          object gbSearchView: TcxGroupBox
            Left = 158
            Top = 1
            Style.BorderStyle = ebsNone
            TabOrder = 23
            DesignSize = (
              785
              28)
            Height = 28
            Width = 785
            object Shape2: TShape
              Left = 3
              Top = 3
              Width = 781
              Height = 24
              Anchors = [akLeft, akTop, akRight]
              Brush.Style = bsClear
              Pen.Color = clSilver
              Shape = stRoundRect
              ExplicitWidth = 576
            end
            object cb_ManualBaecha: TcxButton
              Left = 7
              Top = 5
              Width = 31
              Height = 20
              Cursor = crHandPoint
              Caption = #49688#46041
              SpeedButtonOptions.GroupIndex = 1
              SpeedButtonOptions.AllowAllUp = True
              TabOrder = 0
              OnClick = cb_ManualBaechaClick
            end
            object cb_MyCall: TcxButton
              Left = 40
              Top = 5
              Width = 31
              Height = 20
              Cursor = crHandPoint
              Caption = #51088#49324
              SpeedButtonOptions.GroupIndex = 2
              SpeedButtonOptions.AllowAllUp = True
              TabOrder = 1
              OnClick = cb_ManualBaechaClick
            end
            object cb_Owner: TcxButton
              Left = 73
              Top = 5
              Width = 31
              Height = 20
              Cursor = crHandPoint
              Caption = #48376#51064
              SpeedButtonOptions.GroupIndex = 3
              SpeedButtonOptions.AllowAllUp = True
              TabOrder = 2
              OnClick = cb_ManualBaechaClick
            end
            object cb_MyDriver: TcxButton
              Left = 106
              Top = 5
              Width = 43
              Height = 20
              Cursor = crHandPoint
              Caption = #51088#44592#49324
              SpeedButtonOptions.GroupIndex = 4
              SpeedButtonOptions.AllowAllUp = True
              TabOrder = 3
              OnClick = cb_ManualBaechaClick
            end
            object cb_All: TcxButton
              Left = 151
              Top = 5
              Width = 31
              Height = 20
              Cursor = crHandPoint
              Hint = #51204#52404#49345#53468
              Caption = #51204#52404
              SpeedButtonOptions.GroupIndex = 5
              SpeedButtonOptions.AllowAllUp = True
              TabOrder = 4
              OnClick = cb_AllClick
            end
            object cxChkBC1: TcxButton
              Left = 184
              Top = 5
              Width = 23
              Height = 20
              Cursor = crHandPoint
              Hint = #48277#51064
              Caption = #48277
              LookAndFeel.SkinName = 'Office2010Silver'
              ParentShowHint = False
              ShowHint = True
              SpeedButtonOptions.GroupIndex = 6
              SpeedButtonOptions.AllowAllUp = True
              TabOrder = 5
              OnClick = cxChkBC1Click
            end
            object cxChkBC2: TcxButton
              Left = 209
              Top = 5
              Width = 23
              Height = 20
              Cursor = crHandPoint
              Hint = #52852#46300
              Caption = #52852
              ParentShowHint = False
              ShowHint = True
              SpeedButtonOptions.GroupIndex = 7
              SpeedButtonOptions.AllowAllUp = True
              TabOrder = 6
              OnClick = cb_ManualBaechaClick
            end
            object cxChkBC3: TcxButton
              Left = 234
              Top = 5
              Width = 23
              Height = 20
              Cursor = crHandPoint
              Hint = #54980#48520
              Caption = #54980
              ParentShowHint = False
              ShowHint = True
              SpeedButtonOptions.GroupIndex = 8
              SpeedButtonOptions.AllowAllUp = True
              TabOrder = 7
              OnClick = cb_ManualBaechaClick
            end
            object Edit4: TcxTextEdit
              Left = 719
              Top = 4
              AutoSize = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Style.Font.Charset = HANGEUL_CHARSET
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
              TabOrder = 8
              OnClick = Edit4Click
              OnEnter = Edit4Enter
              OnExit = Edit4Exit
              OnKeyDown = Edit4KeyDown
              Height = 22
              Width = 60
            end
            object cb_branch_Name2: TcxComboBox
              Left = 615
              Top = 4
              AutoSize = False
              Properties.Items.Strings = (
                '('#51452')'#53084#47560#45320
                #50689#50629#44288#47532
                #50868#50689#54016)
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 9
              Text = '('#51452')'#53084#47560#45320
              OnClick = cb_branch_Name2Click
              Height = 22
              Width = 104
            end
            object cxLblJaSabunView: TcxLabel
              Left = 719
              Top = 5
              AutoSize = False
              Caption = #51088#52404#49324#48264
              ParentColor = False
              ParentFont = False
              Style.Color = clWhite
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = 159988
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
              OnClick = cxLblJaSabunViewClick
              Height = 20
              Width = 60
              AnchorX = 749
              AnchorY = 15
            end
            object cxChkBC4: TcxButton
              Left = 259
              Top = 5
              Width = 28
              Height = 20
              Cursor = crHandPoint
              Hint = #53441#49569#50672#54633#53084
              Caption = #53441#53084
              ParentShowHint = False
              ShowHint = True
              SpeedButtonOptions.GroupIndex = 8
              SpeedButtonOptions.AllowAllUp = True
              TabOrder = 11
              OnClick = cb_ManualBaechaClick
            end
          end
          object pnl_MultiSearch: TPanel
            Left = 3
            Top = 94
            Width = 1267
            Height = 21
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 0
            Visible = False
            OnResize = pnl_MultiSearchResize
            object edtFastKey8: TcxTextEdit
              Left = 1
              Top = 0
              AutoSize = False
              ParentShowHint = False
              Properties.Alignment.Horz = taCenter
              Properties.ImeMode = imSHanguel
              Properties.OnChange = edtFastKey1PropertiesChange
              ShowHint = True
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 0
              Visible = False
              OnClick = edtFastKey1Click
              OnEnter = edtFastKey1Enter
              OnExit = edtFastKey1Exit
              OnKeyPress = edtFastKey1KeyPress
              OnKeyUp = edtFastKey1KeyUp
              Height = 22
              Width = 94
            end
            object edtFastKey9: TcxTextEdit
              Left = 95
              Top = 0
              AutoSize = False
              ParentShowHint = False
              Properties.Alignment.Horz = taCenter
              Properties.ImeMode = imSHanguel
              Properties.OnChange = edtFastKey1PropertiesChange
              ShowHint = True
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.TextColor = clDefault
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              Visible = False
              OnClick = edtFastKey1Click
              OnEnter = edtFastKey1Enter
              OnExit = edtFastKey1Exit
              OnKeyPress = edtFastKey1KeyPress
              OnKeyUp = edtFastKey1KeyUp
              Height = 22
              Width = 94
            end
            object edtFastKey10: TcxTextEdit
              Left = 189
              Top = 0
              AutoSize = False
              ParentShowHint = False
              Properties.Alignment.Horz = taCenter
              Properties.ImeMode = imSHanguel
              Properties.OnChange = edtFastKey1PropertiesChange
              ShowHint = True
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.TextColor = clDefault
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 2
              Visible = False
              OnClick = edtFastKey1Click
              OnEnter = edtFastKey1Enter
              OnExit = edtFastKey1Exit
              OnKeyPress = edtFastKey1KeyPress
              OnKeyUp = edtFastKey1KeyUp
              Height = 22
              Width = 94
            end
            object edtFastKey11: TcxTextEdit
              Left = 282
              Top = 0
              AutoSize = False
              ParentShowHint = False
              Properties.Alignment.Horz = taCenter
              Properties.ImeMode = imSHanguel
              Properties.OnChange = edtFastKey1PropertiesChange
              ShowHint = True
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 3
              Visible = False
              OnClick = edtFastKey1Click
              OnEnter = edtFastKey1Enter
              OnExit = edtFastKey1Exit
              OnKeyPress = edtFastKey1KeyPress
              OnKeyUp = edtFastKey1KeyUp
              Height = 22
              Width = 94
            end
            object edtFastKey12: TcxTextEdit
              Left = 376
              Top = 0
              AutoSize = False
              ParentShowHint = False
              Properties.Alignment.Horz = taCenter
              Properties.ImeMode = imSHanguel
              Properties.OnChange = edtFastKey1PropertiesChange
              ShowHint = True
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 4
              Visible = False
              OnClick = edtFastKey1Click
              OnEnter = edtFastKey1Enter
              OnExit = edtFastKey1Exit
              OnKeyPress = edtFastKey1KeyPress
              OnKeyUp = edtFastKey1KeyUp
              Height = 22
              Width = 94
            end
            object edtFastKey13: TcxTextEdit
              Left = 470
              Top = 0
              AutoSize = False
              ParentShowHint = False
              Properties.Alignment.Horz = taCenter
              Properties.ImeMode = imSHanguel
              Properties.OnChange = edtFastKey1PropertiesChange
              ShowHint = True
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 5
              Visible = False
              OnClick = edtFastKey1Click
              OnEnter = edtFastKey1Enter
              OnExit = edtFastKey1Exit
              OnKeyPress = edtFastKey1KeyPress
              OnKeyUp = edtFastKey1KeyUp
              Height = 22
              Width = 94
            end
            object edtFastKey14: TcxTextEdit
              Left = 564
              Top = 0
              AutoSize = False
              ParentShowHint = False
              Properties.Alignment.Horz = taCenter
              Properties.ImeMode = imSHanguel
              Properties.OnChange = edtFastKey1PropertiesChange
              ShowHint = True
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.TextColor = clDefault
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 6
              Visible = False
              OnClick = edtFastKey1Click
              OnEnter = edtFastKey1Enter
              OnExit = edtFastKey1Exit
              OnKeyPress = edtFastKey1KeyPress
              OnKeyUp = edtFastKey1KeyUp
              Height = 22
              Width = 94
            end
            object edtFastKey15: TcxTextEdit
              Left = 658
              Top = 0
              AutoSize = False
              ParentShowHint = False
              Properties.Alignment.Horz = taCenter
              Properties.ImeMode = imSHanguel
              Properties.OnChange = edtFastKey1PropertiesChange
              ShowHint = True
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 7
              Visible = False
              OnClick = edtFastKey1Click
              OnEnter = edtFastKey1Enter
              OnExit = edtFastKey1Exit
              OnKeyPress = edtFastKey1KeyPress
              OnKeyUp = edtFastKey1KeyUp
              Height = 22
              Width = 94
            end
            object edtFastKey16: TcxTextEdit
              Left = 752
              Top = 0
              AutoSize = False
              ParentShowHint = False
              Properties.Alignment.Horz = taCenter
              Properties.ImeMode = imSHanguel
              Properties.OnChange = edtFastKey1PropertiesChange
              ShowHint = True
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 8
              Visible = False
              OnClick = edtFastKey1Click
              OnEnter = edtFastKey1Enter
              OnExit = edtFastKey1Exit
              OnKeyPress = edtFastKey1KeyPress
              OnKeyUp = edtFastKey1KeyUp
              Height = 22
              Width = 94
            end
            object edtFastKey17: TcxTextEdit
              Left = 846
              Top = 0
              AutoSize = False
              ParentShowHint = False
              Properties.Alignment.Horz = taCenter
              Properties.ImeMode = imSHanguel
              Properties.OnChange = edtFastKey1PropertiesChange
              ShowHint = True
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 9
              Visible = False
              OnClick = edtFastKey1Click
              OnEnter = edtFastKey1Enter
              OnExit = edtFastKey1Exit
              OnKeyPress = edtFastKey1KeyPress
              OnKeyUp = edtFastKey1KeyUp
              Height = 22
              Width = 94
            end
            object edtFastKey18: TcxTextEdit
              Left = 940
              Top = 0
              AutoSize = False
              ParentShowHint = False
              Properties.Alignment.Horz = taCenter
              Properties.ImeMode = imSHanguel
              Properties.OnChange = edtFastKey1PropertiesChange
              ShowHint = True
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.TextColor = clDefault
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 10
              Visible = False
              OnClick = edtFastKey1Click
              OnEnter = edtFastKey1Enter
              OnExit = edtFastKey1Exit
              OnKeyPress = edtFastKey1KeyPress
              OnKeyUp = edtFastKey1KeyUp
              Height = 22
              Width = 94
            end
            object edtFastKey19: TcxTextEdit
              Left = 1034
              Top = 0
              AutoSize = False
              ParentShowHint = False
              Properties.Alignment.Horz = taCenter
              Properties.ImeMode = imSHanguel
              Properties.OnChange = edtFastKey1PropertiesChange
              ShowHint = True
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 11
              Visible = False
              OnClick = edtFastKey1Click
              OnEnter = edtFastKey1Enter
              OnExit = edtFastKey1Exit
              OnKeyPress = edtFastKey1KeyPress
              OnKeyUp = edtFastKey1KeyUp
              Height = 22
              Width = 94
            end
            object edtFastKey20: TcxTextEdit
              Left = 1128
              Top = 0
              AutoSize = False
              ParentShowHint = False
              Properties.Alignment.Horz = taCenter
              Properties.ImeMode = imSHanguel
              Properties.OnChange = edtFastKey1PropertiesChange
              ShowHint = True
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.TextColor = clDefault
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 12
              Visible = False
              OnClick = edtFastKey1Click
              OnEnter = edtFastKey1Enter
              OnExit = edtFastKey1Exit
              OnKeyPress = edtFastKey1KeyPress
              OnKeyUp = edtFastKey1KeyUp
              Height = 22
              Width = 94
            end
            object lbFastKey8: TcxLabel
              Left = 9
              Top = 2
              Cursor = crIBeam
              Hint = 'Color'
              Caption = 'lbFastKey8'
              Style.TextColor = 9803157
              Transparent = True
              OnClick = lbFastKey1Click
            end
            object lbFastKey11: TcxLabel
              Left = 287
              Top = 2
              Cursor = crIBeam
              Hint = 'Color'
              Caption = 'lbFastKey11'
              Style.TextColor = 9803157
              Transparent = True
              OnClick = lbFastKey1Click
            end
            object lbFastKey12: TcxLabel
              Left = 382
              Top = 2
              Cursor = crIBeam
              Hint = 'Color'
              Caption = 'lbFastKey12'
              Style.TextColor = 9803157
              Transparent = True
              OnClick = lbFastKey1Click
            end
            object lbFastKey13: TcxLabel
              Left = 475
              Top = 2
              Cursor = crIBeam
              Hint = 'Color'
              Caption = 'lbFastKey13'
              Style.TextColor = 9803157
              Transparent = True
              OnClick = lbFastKey1Click
            end
            object lbFastKey14: TcxLabel
              Left = 570
              Top = 2
              Cursor = crIBeam
              Hint = 'Color'
              Caption = 'lbFastKey14'
              Style.TextColor = 9803157
              Transparent = True
              OnClick = lbFastKey1Click
            end
            object lbFastKey15: TcxLabel
              Left = 665
              Top = 2
              Cursor = crIBeam
              Hint = 'Color'
              Caption = 'lbFastKey15'
              Style.TextColor = 9803157
              Transparent = True
              OnClick = lbFastKey1Click
            end
            object lbFastKey16: TcxLabel
              Left = 760
              Top = 2
              Cursor = crIBeam
              Hint = 'Color'
              Caption = 'lbFastKey16'
              Style.TextColor = 9803157
              Transparent = True
              OnClick = lbFastKey1Click
            end
            object lbFastKey17: TcxLabel
              Left = 853
              Top = 2
              Cursor = crIBeam
              Hint = 'Color'
              Caption = 'lbFastKey17'
              Style.TextColor = 9803157
              Transparent = True
              OnClick = lbFastKey1Click
            end
            object lbFastKey18: TcxLabel
              Left = 948
              Top = 2
              Cursor = crIBeam
              Hint = 'Color'
              Caption = 'lbFastKey18'
              Style.TextColor = 9803157
              Transparent = True
              OnClick = lbFastKey1Click
            end
            object lbFastKey9: TcxLabel
              Left = 101
              Top = 2
              Cursor = crIBeam
              Hint = 'Color'
              Caption = 'lbFastKey9'
              Style.TextColor = 9803157
              Transparent = True
              OnClick = lbFastKey1Click
            end
            object lbFastKey10: TcxLabel
              Left = 193
              Top = 2
              Cursor = crIBeam
              Hint = 'Color'
              Caption = 'lbFastKey10'
              Style.TextColor = 9803157
              Transparent = True
              OnClick = lbFastKey1Click
            end
            object lbFastKey20: TcxLabel
              Left = 1132
              Top = 2
              Cursor = crIBeam
              Hint = 'Color'
              Caption = 'lbFastKey20'
              Style.TextColor = 9803157
              Transparent = True
              OnClick = lbFastKey1Click
            end
            object lbFastKey19: TcxLabel
              Left = 1037
              Top = 2
              Cursor = crIBeam
              Hint = 'Color'
              Caption = 'lbFastKey19'
              Style.TextColor = 9803157
              Transparent = True
              OnClick = lbFastKey1Click
            end
          end
          object cx_00: TcxLabel
            Left = 125
            Top = 29
            Caption = '[0]'
            ParentFont = False
            Style.Font.Charset = HANGEUL_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = #47569#51008' '#44256#46357
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Transparent = True
            AnchorX = 133
          end
          object cx_01: TcxLabel
            Left = 200
            Top = 29
            Caption = '[0]'
            ParentFont = False
            Style.Font.Charset = HANGEUL_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = #47569#51008' '#44256#46357
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Transparent = True
            AnchorX = 208
          end
          object cx_02: TcxLabel
            Left = 652
            Top = 29
            Caption = '[0]'
            ParentFont = False
            Style.Font.Charset = HANGEUL_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = #47569#51008' '#44256#46357
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Transparent = True
            AnchorX = 660
          end
          object cx_03: TcxLabel
            Left = 501
            Top = 29
            Caption = '[0]'
            ParentFont = False
            Style.Font.Charset = HANGEUL_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = #47569#51008' '#44256#46357
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Transparent = True
            AnchorX = 509
          end
          object cx_04: TcxLabel
            Left = 878
            Top = 29
            Caption = '[0]'
            ParentFont = False
            Style.Font.Charset = HANGEUL_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = #47569#51008' '#44256#46357
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Transparent = True
            AnchorX = 886
          end
          object cx_05: TcxLabel
            Left = 576
            Top = 29
            Caption = '[0]'
            ParentFont = False
            Style.Font.Charset = HANGEUL_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = #47569#51008' '#44256#46357
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Transparent = True
            AnchorX = 584
          end
          object cx_08: TcxLabel
            Left = 727
            Top = 29
            Caption = '[0]'
            ParentFont = False
            Style.Font.Charset = HANGEUL_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = #47569#51008' '#44256#46357
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Transparent = True
            AnchorX = 735
          end
          object cx_0B: TcxLabel
            Left = 275
            Top = 29
            Caption = '[0]'
            ParentFont = False
            Style.Font.Charset = HANGEUL_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = #47569#51008' '#44256#46357
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Transparent = True
            AnchorX = 283
          end
          object cx_0C: TcxLabel
            Left = 351
            Top = 29
            Caption = '[0]'
            ParentFont = False
            Style.Font.Charset = HANGEUL_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = #47569#51008' '#44256#46357
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Transparent = True
            AnchorX = 359
          end
          object cx_0R: TcxLabel
            Left = 802
            Top = 29
            Caption = '[0]'
            ParentFont = False
            Style.Font.Charset = HANGEUL_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = #47569#51008' '#44256#46357
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Transparent = True
            AnchorX = 810
          end
          object cx_chk_All: TcxLabel
            Left = 50
            Top = 29
            Caption = '[0]'
            ParentFont = False
            Style.Font.Charset = HANGEUL_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = #47569#51008' '#44256#46357
            Style.Font.Style = []
            Style.LookAndFeel.SkinName = 'Office2010Silver'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
            StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
            StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
            Properties.Alignment.Horz = taCenter
            Transparent = True
            AnchorX = 58
          end
          object lbl_JONSrc_Alert: TcxLabel
            Left = 1244
            Top = 72
            AutoSize = False
            Caption = #51312#54924#44148#49688#51228#54620
            Style.TextColor = clGray
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            Visible = False
            Height = 16
            Width = 90
            AnchorX = 1289
            AnchorY = 80
          end
          object cxLblAutSec: TcxLabel
            Left = 1010
            Top = 28
            Caption = '5'
            Style.TextColor = 8404992
            Transparent = True
            Visible = False
          end
          object cxImage1: TcxImage
            Left = 1009
            Top = 55
            Cursor = crHandPoint
            Hint = #51088#46041#44081#49888' Time '#49444#51221
            TabStop = False
            ParentShowHint = False
            Picture.Data = {
              055449636F6E0000010001000707000001002000080100001600000028000000
              070000000E0000000100200000000000E0000000000000000000000000000000
              000000004B79FFFF4B79FFFF4B79FFFF4B79FFFF4B79FFFF4B79FFFF4B79FFFF
              000000004B79FFFF4B79FFFF4B79FFFF4B79FFFF4B79FFFF4B79FFFF00000000
              000000004B79FFFF4B79FFFF4B79FFFF4B79FFFF4B79FFFF0000000000000000
              000000004B79FFFF4B79FFFF4B79FFFF4B79FFFF000000000000000000000000
              000000004B79FFFF4B79FFFF4B79FFFF00000000000000000000000000000000
              000000004B79FFFF4B79FFFF0000000000000000000000000000000000000000
              000000004B79FFFF0000000080000000C0000000E0000000F0000000F8000000
              FC000000}
            ShowHint = True
            Style.BorderStyle = ebsNone
            TabOrder = 13
            Transparent = True
            OnClick = cxImage1Click
            Height = 14
            Width = 14
          end
          object cxImage2: TcxImage
            Left = 1009
            Top = 6
            TabStop = False
            ParentShowHint = False
            Picture.Data = {
              055449636F6E0000010001001010000001002000680400001600000028000000
              1000000020000000010020000000000040040000000000000000000000000000
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
              FFCC99FF00000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000FFCC99FF
              FFCC99FF00000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000FFCC99FFFFCC99FF
              FFCC99FF00000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000FFCC99FFFFCC99FFFFCC99FF
              FFCC99FF00000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000FFCC99FFFFCC99FFFFCC99FFFFCC99FF
              FFCC99FF00000000000000000000000000000000000000000000000000000000
              000000000000000000000000FFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC99FF
              FFCC99FF00000000000000000000000000000000000000000000000000000000
              0000000000000000FFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC99FF
              FFCC99FF00000000000000000000000000000000000000000000000000000000
              00000000FFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC99FF
              FFCC99FF00000000000000000000000000000000000000000000000000000000
              00000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
              FFFF0000FEFF0000FCFF0000F8FF0000F0FF0000E0FF0000C0FF000080FF0000
              00FF0000}
            Properties.ShowFocusRect = False
            ShowHint = True
            Style.BorderStyle = ebsNone
            TabOrder = 14
            Transparent = True
            Height = 14
            Width = 14
          end
          object cxImage3: TcxImage
            Left = 1009
            Top = 6
            TabStop = False
            ParentShowHint = False
            Picture.Data = {
              055449636F6E0000010001000808000001002000480100001600000028000000
              0800000010000000010020000000000020010000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00FFFFFF00000000000000000000000000000000000000000000000000FFFFFF
              00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFFFF
              00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF
              00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF
              00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF
              00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF
              00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF
              00FFFFFFFE000000FC000000F8000000F0000000E0000000C000000080000000
              00000000}
            Properties.ShowFocusRect = False
            ShowHint = False
            Style.BorderStyle = ebsNone
            StyleFocused.BorderStyle = ebsNone
            TabOrder = 15
            Transparent = True
            Visible = False
            Height = 14
            Width = 14
          end
          object rb_Search: TcxButton
            Left = 1026
            Top = 4
            Width = 90
            Height = 56
            Caption = #44160' '#49353
            LookAndFeel.NativeStyle = False
            TabOrder = 16
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = rb_SearchClick
          end
          object cxBtnInitialSearch: TcxButton
            Left = 1026
            Top = 63
            Width = 90
            Height = 30
            Caption = #52488#44592#54868#44160#49353
            LookAndFeel.NativeStyle = False
            TabOrder = 18
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            OnClick = cxBtnInitialSearchClick
          end
          object btnOption: TcxButton
            Left = 7
            Top = 4
            Width = 30
            Height = 24
            Hint = #49444#51221
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              424D360400000000000036000000280000001000000010000000010020000000
              000000000000C40E0000C40E0000000000000000000000000000000000000000
              0000000000002B1D084088571ADF905B1DFF23170637231706378F5B1DFE955D
              1DFF37240A520000000000000000000000000000000000000000000000000000
              0000000000007A4D17D3DF9E51FFDE9C4BFF774B16FF754916FFDE9B4BFFDF9E
              51FF7C4E18D70000000000000000000000000000000000000000211605375435
              0DC23F2909AE5A370FFDE0A255FFE0A255FFDC9949FFDB9746FFE1A357FFE0A0
              52FF58360FFF3F2809A753340DBF2116053800000000030201066F4714E1E9AF
              68FFDE9C4BFFDA9543FFF3C382FFFFDEAAFFFFEFC0FFFFEFC2FFFFE0ADFFF5C5
              86FFDA9544FFDE9B4BFFE9AF68FF6F4714E103020106120C03228A571BFFFAD1
              97FFFAD197FFFED79DFFFFE6B4FFF6C688FFE4A85FFFE4A85FFFF7CA8DFFFFE9
              BAFFFFD8A2FFFCD298FFFAD197FF8A571BFF120C0322000000001D130445CB81
              2AFFFED79EFFFFD8A2FFDF9E50FF643D11FF9B611EFF9B611EFF684112FFE0A2
              55FFFFDEAAFFFFD8A2FFCB812AFF1D130445000000004A310D8350320DCCE2A6
              5AFFFCD298FFE7AD64FF673F12FFA46720FF0000000000000000A46720FF7549
              16FFE8AE67FFFCD399FFE2A65AFF50320DCC4A310D83D1842CFFFFDEABFFFFDA
              A4FFF1BE7BFFD28730FF905B1DFF00000000000000000000000000000000A467
              20FFD1852DFFEEB975FFFFD9A3FFFFDEABFFD1842CFFD58D39FFFFE4B1FFFFE2
              AEFFE8AE67FFD0842BFFAB6C23FF00000000000000000000000000000000AD6E
              23FFC07A27FFE6AB61FFFFE0ADFFFFE4B1FFD58D39FF583A1083784C16CCF3C3
              84FFEDB671FFD58D37FFA56820FF9B611EFF00000000000000009B611EFF9B61
              1EFFCB812AFFE9B26AFFF5C586FF784C16CC583A10830000000031210945E6AB
              61FFFFDEA7FFD0842BFFC47D28FFC47D28FF9B611EFF9B611EFFB77525FFB472
              25FFC07A27FFFFDEA7FFE6AB61FF31210945000000001D140622DC9949FFFFEF
              C2FFFFF9D0FFF7CA8DFFB27024FFA66921FFA2661FFF9E631FFF9D631FFFA76A
              21FFF6C98AFFFFF9D0FFFFEFC2FFDC9949FF1D14062205040106C0853AE0FFE4
              B4FFFDD49CFFFFE0ACFFFFE2AFFFD58D37FFC67E2AFFC47D28FFD48C35FFFFE2
              AEFFFFE0ACFFFDD49CFFFFE4B4FFC0853AE0050401060000000032230D37A76E
              28C45D3D1272A96F27C8FFF9D0FFFFF9D0FFFFF3C6FFFFF3C6FFFFF9D0FFFFF9
              D0FFA96F27C85D3D1272A76E28C432230D370000000000000000000000000000
              000000000000A2763BB4FFF9D0FFFFF9CFFFC9914AE4C9914AE4FFF9CFFFFFF9
              D0FFA2763BB40000000000000000000000000000000000000000000000000000
              00000000000049371B4FD5A25EE9E9AF68FF150F0617140E0616E9AF68FFCD9B
              5ADF48351A4D00000000000000000000000000000000}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 19
            OnClick = btnOptionClick
          end
          object btnSetDate: TcxButton
            Left = 39
            Top = 4
            Width = 67
            Height = 24
            Caption = '10'#50900' 07'#51068
            TabOrder = 20
            OnClick = btnSetDateClick
          end
          object BtnSEYmd: TcxButton
            Left = 108
            Top = 4
            Width = 24
            Height = 24
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              424D360400000000000036000000280000001000000010000000010020000000
              000000000000C40E0000C40E0000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000007F4213C59B5616E59653
              14E3985413E3965214E3965214E3985213E3965214E3965415E3985211E39654
              17E3965413E3975412E3965114E39C5616E57E4214C5B96F22FFF7DBB4FFEFD1
              B1FFD5881AFFF1D4B4FFF0D3AFFFD8922CFFF3DDC5FFEAC796FFD68B22FFF4E0
              C8FFEAC395FFD7932BFFF2DDC6FFF0C887FFB5650AFFB1702FF2FFFFFFFFFFFF
              FFFFD69231FFFFFFFFFFFFFFFFFFDDA14BFFFFFFFFFFFAF1E1FFD99845FFFFFF
              FFFFFAF2EEFFDD9F4DFFFFFFFFFFFFF1D3FFAB5A03F2B36B18F3EBC081FFE5B8
              84FFD89229FFE5BA88FFE2B175FFD89126FFE5BA87FFE3B77BFFD99228FFE6C2
              97FFE1AF6DFFDA9733FFE6BE96FFE9BA73FFB36A18F3B97735F3FFF9EDFFF7EC
              E2FFDE9F41FFFAF3E9FFF9F3E9FFE1AA59FFFCFBFCFFF6E2C7FFDFA856FFFDFA
              F8FFF3DFC8FFE0A954FFFBF9F9FFFAE7C0FFB66E1BF3C1874FF3FFFFF8FFFAF2
              EAFFE2A84EFFFCF4EAFFF9EDD8FFE2AB53FFFDF8F3FFF5E3C5FFE2A84DFFFDF8
              F2FFF6E1CBFFE5B264FFFEFEFEFFFEF2D9FFC0813FF3C48745F3FBE8CDFFF3DF
              C9FFEBBB78FFF2DDC7FFF1D4B2FFE6B361FFF1D6BBFFEFD2ACFFE5B464FFF4E3
              D1FFEFD0A4FFEABF83FFF5E4D6FFF9E0BFFFC38745F3C8925CF3FFFFFFFFFFFF
              FFFFEFC992FFFFFFFFFFFFFFFFFFF1D1A2FFFFFFFFFFFDFAF7FFF0CEA3FFFFFF
              FFFFFDFAFCFFF0CE9DFFFFFFFFFFFFFFF7FFC48740F3CA9558F3FFF7DEFFF8E6
              CFFFF6D29AFFF8E5C6FFF7E1C3FFF1CD95FFF9E4CCFFF6DDBBFFF1CB8EFFF8E6
              CEFFF6DFBCFFF6D6A1FFFAEADAFFFFF2D1FFCA914EF3D6A767F2CC9557FF9436
              00FFC88B51FFF9D79CFFF2CD90FFF4D096FFF2CC8FFFF2CE8FFFF3D094FFF1CD
              91FFF9DA9BFFC78A4EFF943500FFCE945AFFD6A86AF2E6BE84FFC8925BFFD385
              0CFFC98849FFFCE5BAFFF8DDAFFFF9DCAEFFF9DEAEFFFADEAFFFF9DCAFFFFADC
              ADFFFCE5BCFFCA8B4DFFD3850AFFC78F5BFFE7BE84FF76522A92BA8952E3E5AB
              4DFFC68A4AF89A7E5FB09E7C59B59D7E59B59E7D59B59D7D59B59D7D59B59D7D
              59B59A7D5EAFC58C4AF5E5AB4DFFB68652E376522A9200000000714C238CF9D3
              84FF9E6018D80000000000000000000000000000000000000000000000000000
              000000000000965D19CBF7D384FF714B218C000000000000000061431A78E4BB
              71F2724A1B940000000000000000000000000000000000000000000000000000
              0000000000006A461887E3BA71F3604019780000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000}
            PopupMenu = pop_date
            TabOrder = 21
            OnMouseDown = BtnSEYmdMouseDown
          end
          object btnListMap: TcxButton
            Left = 1118
            Top = 63
            Width = 29
            Height = 30
            Hint = #51217#49688#54788#54889'+'#51648#46020#48372#44592
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              424D760600000000000036000000280000001400000014000000010020000000
              000000000000C40E0000C40E0000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000D4D4D4FF99A2A6FFA9AB
              ACFF000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000A0A4A5FFDAE3E8FFB2BFC7FFA7A9AAFF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000DCDCDCFFABB3B6FFE7ECF1FFD9E2
              E8FFA3B3BDFF97999AFFCCCCCCFF414141480000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000B4B6B7FFBAD6E0FFDAE3EAFFDBE8F3FF5EADEDFF8EA5B8FF7A7C7CFF9696
              96FFA1A1A1FF9FA1A1FF929698FF989A9BFF4141414800000000000000000000
              00000000000000000000000000000000000097A6ABFF55D4F5FF91DCF0FF91C6
              ECFF2395F0FF79B7E7FFAAB9C0FF94B1BDFFA6BDC8FFAEBEC8FFB4C3CCFFC1CD
              D5FF9BA4A9FFA0A3A4FFDBDBDBFF00000000000000000000000000000000BABB
              BBFFC8D1D6FFCEE3ECFF57CEF5FF249EF0FF3EA1EEFFC8DCEAFFACC7D3FF7FBD
              D1FFAFC3CEFFB6C5CFFFD4DEE4FFE0E7EBFFD9E1E6FFC9D5DCFFB2BEC4FF979D
              A0FFD8D9D9FF0000000000000000A0A5A7FFE4EBEFFFE7EDF1FF7DBDF0FF2F9B
              F0FF80BDECFFC1D1DAFF82BDD0FF93BECFFF8EBDCFFF5AC0E1FF83D4EFFFD1DE
              E5FFDFE6EBFFE3E9ECFFCDD7DDFFCBD3D9FFB8BABBFF00000000D8D8D9FF89AC
              C5FF7ABCF0FF6FB7F2FF2B99F0FF3DA0F0FFC7DCEBFFA6C5D2FF78BBD1FF88BC
              D0FF96C1D2FF90CCDFFF4DCCF2FF45CDF6FF9BD6EAFFCFDDE4FFDCE3E8FFA9AF
              B2FF0000000000000000A9ABADFFA1CBEBFF4EA8F0FF4FA9F1FF2797F0FF8BC6
              F5FFD6DEE4FF89BFD2FF9BC0CEFFB5C4CEFFBECCD3FFABB3B0FFAFB9B7FF98D2
              E4FF23C9FBFF54CEF4FFB5C8D0FFD6D6D7FF0000000015151517A8AEB1FFF1F3
              F4FFE8EEF4FF6AB5F0FF41A2F0FFCEE2F2FFB5CED8FF86BFD2FFB1C3CDFFB4C1
              C8FFB5BEBEFFA0A8A3FFA3ABA7FFADB7B6FFB0CBD3FF88CADFFFA9AFB2FF0000
              000000000000B8BABAFFD1D7DAFFDFE4E7FFA1C8E7FF2B98EFFF9DC9ECFFC6D3
              DAFF87BFD3FFAEC6D1FFAEBBC6FFCDD2D1FFD7D9D1FFD7D4C4FFCCD1CCFFC0C7
              C7FFBFC9CBFFA7ABACFF000000000000000000000000CFD0D0FFC0C6C9FFD5DC
              E0FF56A8EAFF3B9EEDFFD3DADFFFABC8D4FF8DC1D3FFBDCBD3FFA6B0B7FFA096
              AFFF8A7EB4FFBDB0A9FFD7CEB2FFDCE2E3FFB1B7BAFF969797A9000000000000
              00000000000000000000D2D3D3FFA5B1B8FF4AA3EBFF80B5DFFFB8C6CFFF86BD
              CFFFACC5D0FFA1A9D0FF4D4AD1FF2421D4FF2519C7FF6A5BB9FFD0C2A5FFCBC9
              BAFFC6C6C7FF0000000000000000000000000000000000000000000000000000
              0000A4ACB2FFC0CDD8FFA1BECBFF9BC3D2FFBBC8CFFF6162CFFF292FDFFF1D20
              CCFF1911B9FF695BB4FFD0C8B2FFA8AAAAFF0000000000000000000000000000
              00000000000000000000000000000000000000000000B6B7B8FFB9BBBCFFCDCD
              CEFF00000000C3C2D2FF504ED4FF2A29C9FF1E16B9FF6B5EB7FFACAEACFFBFBF
              BFDA000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000443B
              CDFF2611BEFF321CBEFF7770B3FF000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000534DD6FF291FE0FF2118DFFF4941D4FF5757
              5960000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000005B55
              D3FF2E26D5FF534CD3FFBDBBDDFF000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000}
            ParentShowHint = False
            ShowHint = True
            SpeedButtonOptions.GroupIndex = 1
            SpeedButtonOptions.AllowAllUp = True
            TabOrder = 22
            OnClick = btnListMapClick
          end
          object btnSearchSEL: TcxButton
            Left = 134
            Top = 4
            Width = 24
            Height = 24
            Hint = #51217#49688#54788#54889' '#44160#49353' '#51312#44148' '#49324#50857' '#49444#51221
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              424D360400000000000036000000280000001000000010000000010020000000
              000000000000C40E0000C40E000000000000000000000021042F01B318FF01B3
              18FF01B318FF01B318FF01B318FF01B318FF01B318FF01B318FF01B318FF01B3
              18FF01B318FF01B318FF01B318FF01B318FF0021042F01B318FF66E579FF66E5
              79FF66E579FF66E579FF66E579FF66E579FF67D97AFF67D97AFF66E579FF66E5
              79FF66E579FF66E579FF66E579FF66E579FF01B318FF01B318FF66E682FF00D6
              2EFF00D62EFF00D62EFF00D62EFF00D62EFF01C72FFF01C72FFF00D62EFF00D6
              2EFF00D62EFF00D62EFF00D62EFF66E682FF01B318FF01B318FF66E88BFF00D9
              3DFF00D93DFF00D93DFF1DDD53FFDBFAE4FF9BEBB2FF01CD3BFF00D93DFF00D9
              3DFF00D93DFF00D93DFF00D93DFF66E88BFF01B318FF01B318FF66EA93FF00DC
              4BFF00DC4BFF55E887FFF6FEF9FFFFFFFFFFFFFFFFFF86EAA9FF00DC4BFF00DC
              4BFF00DC4BFF00DC4BFF00DC4BFF66EA93FF01B318FF01B318FF66EC9CFF00DF
              5AFF9AF2BEFFFEFFFEFFFFFFFFFFDAFAE7FFFFFFFFFFFDFFFEFF55EA91FF00DF
              5AFF00DF5AFF00DF5AFF00DF5AFF66EC9CFF01B318FF01B318FF66EEA4FF00E2
              68FFFFFFFFFFFFFFFFFFDBFBEAFF00E268FFDBFAE9FFFFFFFFFFFEFFFEFF1DE5
              79FF00E268FF00E268FF00E268FF66EEA4FF01B318FF01B318FF66F0ADFF00E6
              76FF9CF5CAFFDAFBEBFF00E676FF00E676FF00E373FFE6FCF1FFFFFFFFFFF6FE
              FAFF1DE986FF00E676FF00E676FF66F0ADFF01B318FF01B318FF99F6CEFF00E9
              85FF00E985FF00E985FF00E985FF00E985FF00E782FF1FEA91FFF6FEFBFFFFFF
              FFFFE6FDF3FF00E985FF00E985FF99F6CEFF01B318FF01B318FF99F7D4FF00EC
              93FF00EC93FF00EC93FF00EC93FF00EC93FF00EB91FF00EB91FF1FEEA0FFFEFF
              FFFFFFFFFFFFDAFCEFFF00EC93FF99F7D4FF01B318FF01B318FF99F9DAFF00EF
              A2FF00EFA2FF00EFA2FF00EFA2FF00EFA2FF00EFA2FF00EFA2FF00EFA2FF57F4
              C2FFFEFFFFFFFFFFFFFF00EFA2FF99F9DAFF01B318FF01B318FF99FADFFF00F2
              B0FF00F2B0FF00F2B0FF00F2B0FF00F2B0FF00F2B0FF00F2B0FF00F2B0FF00F2
              B0FF86F9DAFFFFFFFFFF00F2B0FF99FADFFF01B318FF01B318FF99FBE5FF00F5
              BFFF00F5BFFF00F5BFFF00F5BFFF00F5BFFF00F5BFFF00F5BFFF00F5BFFF00F5
              BFFF00F5BFFF9CFBE6FF00F5BFFF99FBE5FF01B318FF01B318FF99FCEBFF00F8
              CDFF00F8CDFF00F8CDFF00F8CDFF00F8CDFF00F8CDFF00F8CDFF00F8CDFF00F8
              CDFF00F8CDFF00F8CDFF00F8CDFF99FCEBFF01B318FF01B318FF99FDF1FF99FD
              F1FF99FDF1FF99FDF1FF99FDF1FF99FDF1FF99FDF1FF99FDF1FF99FDF1FF99FD
              F1FF99FDF1FF99FDF1FF99FDF1FF99FDF1FF01B318FF0022053001B318FF01B3
              18FF01B318FF01B318FF01B318FF01B318FF01B318FF01B318FF01B318FF01B3
              18FF01B318FF01B318FF01B318FF01B318FF00220530}
            ParentShowHint = False
            ShowHint = False
            TabOrder = 24
            OnClick = btnSearchSELClick
          end
          object pnl_SetDate: TcxGroupBox
            Left = -77
            Top = 13
            Style.BorderStyle = ebsFlat
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Visible = False
            Height = 25
            Width = 249
            object Label1: TLabel
              Left = 94
              Top = 7
              Width = 8
              Height = 15
              Caption = #8764
              Transparent = True
            end
            object dedt_Edate: TcxDateEdit
              Left = 107
              Top = 3
              EditValue = 0d
              ParentShowHint = False
              Properties.DateButtons = [btnNow, btnToday]
              Properties.DisplayFormat = 'yyyy/mm/dd'
              Properties.EditFormat = 'yyyy/mm/dd'
              Properties.InputKind = ikRegExpr
              Properties.SaveTime = False
              Properties.ShowTime = False
              ShowHint = True
              Style.BorderStyle = ebsOffice11
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 0
              Width = 90
            end
            object dedt_Sdate: TcxDateEdit
              Left = 2
              Top = 3
              AutoSize = False
              BeepOnEnter = False
              EditValue = 0d
              ParentShowHint = False
              Properties.DateButtons = [btnNow, btnToday]
              Properties.DisplayFormat = 'yyyy/mm/dd'
              Properties.EditFormat = 'yyyy/mm/dd'
              Properties.InputKind = ikRegExpr
              Properties.SaveTime = False
              Properties.ShowTime = False
              ShowHint = True
              Style.BorderStyle = ebsOffice11
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 1
              OnExit = dedt_SdateExit
              Height = 20
              Width = 90
            end
            object BtnYmdClose: TcxButton
              Left = 225
              Top = 3
              Width = 22
              Height = 22
              Align = alCustom
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
              OnClick = BtnYmdCloseClick
            end
            object cxButton4: TcxButton
              Left = 198
              Top = 2
              Width = 25
              Height = 22
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                424D360400000000000036000000280000001000000010000000010020000000
                000000000000C40E0000C40E0000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000007F4213C59B5616E59653
                14E3985413E3965214E3965214E3985213E3965214E3965415E3985211E39654
                17E3965413E3975412E3965114E39C5616E57E4214C5B96F22FFF7DBB4FFEFD1
                B1FFD5881AFFF1D4B4FFF0D3AFFFD8922CFFF3DDC5FFEAC796FFD68B22FFF4E0
                C8FFEAC395FFD7932BFFF2DDC6FFF0C887FFB5650AFFB1702FF2FFFFFFFFFFFF
                FFFFD69231FFFFFFFFFFFFFFFFFFDDA14BFFFFFFFFFFFAF1E1FFD99845FFFFFF
                FFFFFAF2EEFFDD9F4DFFFFFFFFFFFFF1D3FFAB5A03F2B36B18F3EBC081FFE5B8
                84FFD89229FFE5BA88FFE2B175FFD89126FFE5BA87FFE3B77BFFD99228FFE6C2
                97FFE1AF6DFFDA9733FFE6BE96FFE9BA73FFB36A18F3B97735F3FFF9EDFFF7EC
                E2FFDE9F41FFFAF3E9FFF9F3E9FFE1AA59FFFCFBFCFFF6E2C7FFDFA856FFFDFA
                F8FFF3DFC8FFE0A954FFFBF9F9FFFAE7C0FFB66E1BF3C1874FF3FFFFF8FFFAF2
                EAFFE2A84EFFFCF4EAFFF9EDD8FFE2AB53FFFDF8F3FFF5E3C5FFE2A84DFFFDF8
                F2FFF6E1CBFFE5B264FFFEFEFEFFFEF2D9FFC0813FF3C48745F3FBE8CDFFF3DF
                C9FFEBBB78FFF2DDC7FFF1D4B2FFE6B361FFF1D6BBFFEFD2ACFFE5B464FFF4E3
                D1FFEFD0A4FFEABF83FFF5E4D6FFF9E0BFFFC38745F3C8925CF3FFFFFFFFFFFF
                FFFFEFC992FFFFFFFFFFFFFFFFFFF1D1A2FFFFFFFFFFFDFAF7FFF0CEA3FFFFFF
                FFFFFDFAFCFFF0CE9DFFFFFFFFFFFFFFF7FFC48740F3CA9558F3FFF7DEFFF8E6
                CFFFF6D29AFFF8E5C6FFF7E1C3FFF1CD95FFF9E4CCFFF6DDBBFFF1CB8EFFF8E6
                CEFFF6DFBCFFF6D6A1FFFAEADAFFFFF2D1FFCA914EF3D6A767F2CC9557FF9436
                00FFC88B51FFF9D79CFFF2CD90FFF4D096FFF2CC8FFFF2CE8FFFF3D094FFF1CD
                91FFF9DA9BFFC78A4EFF943500FFCE945AFFD6A86AF2E6BE84FFC8925BFFD385
                0CFFC98849FFFCE5BAFFF8DDAFFFF9DCAEFFF9DEAEFFFADEAFFFF9DCAFFFFADC
                ADFFFCE5BCFFCA8B4DFFD3850AFFC78F5BFFE7BE84FF76522A92BA8952E3E5AB
                4DFFC68A4AF89A7E5FB09E7C59B59D7E59B59E7D59B59D7D59B59D7D59B59D7D
                59B59A7D5EAFC58C4AF5E5AB4DFFB68652E376522A9200000000714C238CF9D3
                84FF9E6018D80000000000000000000000000000000000000000000000000000
                000000000000965D19CBF7D384FF714B218C000000000000000061431A78E4BB
                71F2724A1B940000000000000000000000000000000000000000000000000000
                0000000000006A461887E3BA71F3604019780000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000}
              PopupMenu = pop_date
              TabOrder = 3
              OnMouseDown = cxButton4MouseDown
            end
          end
          object btn_KakaoList: TcxButton
            Left = 1149
            Top = 63
            Width = 29
            Height = 30
            Hint = #52852#52852#50724' '#49688#51452#53084#47532#49828#53944
            LookAndFeel.NativeStyle = False
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
              0D0000011F49444154388D631497D6ED1014922B6660606061A00CFC79FFEE51
              2FA386AEF76F2A18063794898A8631303030B03051D1308889E80267D6EF6460
              66FE479CEEFF0C0C26819E0C7F919463183871A1060323E37FA25DF40F4D29A3
              86AEF77F7C0A18181818981809CBE174E181A5FB18989950BD1C5D6CC3F0F70F
              03C38A894750C4FFFF6760708A7561F887CFCBABB7CA333041BDACA2F089C1D9
              EA390333D37F86FF4C0C0C827C3F19F69F9064B8758F0F6220D450BC2E9CBE5C
              19CEF6B47FC6E06CF51C457EF77171862D7BA5D1B5C101D593CDA88174301023
              2D13C84418390545921192136079959909925BD0D31E32C05B74FDFFCFC0F017
              49F35F22CA0C260606863F8495110DFE3033B372707372F25B30501E417FDEBF
              7BD40B00AFE352F1F556604E0000000049454E44AE426082}
            OptionsImage.ImageIndex = 57
            OptionsImage.Images = cxSmallImages
            ParentShowHint = False
            ShowHint = True
            TabOrder = 25
            OnClick = btn_KakaoListClick
          end
          object btn_LogOut: TcxButton
            Left = 1232
            Top = 25
            Width = 38
            Height = 32
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #53748#44540
            LookAndFeel.NativeStyle = False
            TabOrder = 26
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btn_LogOutClick
          end
          object btn_Jon01BasicPostion: TcxButton
            Left = 1180
            Top = 63
            Width = 29
            Height = 30
            Hint = #51217#49688#52285#50948#52824#52488#44592#54868
            LookAndFeel.NativeStyle = False
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              89504E470D0A1A0A0000000D4948445200000018000000180803000000D7A9CD
              CA0000000467414D410000B18F0BFC6105000000206348524D00007A26000080
              840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
              AB504C5445000000FFBF60FFCB5AFFCA5AFFC655FFCB5BFFCA59FFCC59FFD555
              FFCC5AFFCA5BFFCB5AFFCB5AFFCE55FFCB5AFFD15DFFDB49FFCB5AFFCC5AFFCB
              5AFFCA5AFFCC66FFCB5AFFCB5AFFD77FFFE2A4FFE2A3FFCE64FFF0D0FFFFFFFF
              F1D1FFFEFBFFE3A5FFD06AFFD06BFFE3A7FFF0CEFFE3A6FFD67DFFD069FFCC5D
              FFDE96FFCD62FFD67EFFD67CFFE5ADFFD883FFF0CFFFFEFCFFE4A9FFF4DBFFFB
              F2FFDE97FFFAEFFFD374FFD26F000000E51788B90000001774524E530008E6E9
              096B6A1406DF79FAB915FB16075EDAE06F0A6CBB3C644A00000001624B474400
              88051D48000000097048597300000EC400000EC401952B0E1B0000000774494D
              4507E4021C022E0559E761BE000000DB4944415428CF7D52D91282300CAC60BD
              40AD67448817E081F7FDFF7F263484011CDD97920DB3BB4D2A04A362009855F1
              0D09316A254ED645A399349A0D519792F91680651BA061D816402BA75184FCD5
              20ABB655E63B5DD2B2A99C38D3097DD9C42BEDEB7A18C373750295D0BDBEFE6B
              365F2C57FE3CD0C560381266AA836172F8B8A6DA14A99F839BE458A19312DC58
              E072BB8B72C9586A8FFE017D80E389A5D8FC7CB9DEEE11E091CDB3B8419C364C
              07A60A177CE0F355B8208FE4C63C8F8487F87E65916AFFC7FE7351B45A45AB55
              F9D512C6398D024ACFE703A39125070CE820A20000002574455874646174653A
              63726561746500323032302D30322D32385430323A34363A30352B30303A3030
              50A4F6A20000002574455874646174653A6D6F6469667900323032302D30322D
              32385430323A34363A30352B30303A303021F94E1E0000001974455874536F66
              7477617265007777772E696E6B73636170652E6F72679BEE3C1A000000004945
              4E44AE426082}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 27
            WordWrap = True
            OnClick = btn_Jon01BasicPostionClick
          end
          object lbFastKey1: TcxLabel
            Left = 35
            Top = 74
            Cursor = crIBeam
            Hint = 'Color'
            Caption = 'lbFastKey1'
            Style.TextColor = 9803157
            Transparent = True
            OnClick = lbFastKey1Click
          end
          object lbFastKey2: TcxLabel
            Left = 158
            Top = 74
            Cursor = crIBeam
            Hint = 'Color'
            Caption = 'lbFastKey2'
            Style.TextColor = 9803157
            Transparent = True
            OnClick = lbFastKey1Click
          end
          object lbFastKey3: TcxLabel
            Left = 280
            Top = 74
            Cursor = crIBeam
            Hint = 'Color'
            Caption = 'lbFastKey3'
            Style.TextColor = 9803157
            Transparent = True
            OnClick = lbFastKey1Click
          end
          object lbFastKey4: TcxLabel
            Left = 402
            Top = 74
            Cursor = crIBeam
            Hint = 'Color'
            Caption = 'lbFastKey4'
            Style.TextColor = 9803157
            Transparent = True
            OnClick = lbFastKey1Click
          end
          object lbFastKey5: TcxLabel
            Left = 526
            Top = 74
            Cursor = crIBeam
            Hint = 'Color'
            Caption = 'lbFastKey5'
            Style.TextColor = 9803157
            Transparent = True
            OnClick = lbFastKey1Click
          end
          object lbFastKey6: TcxLabel
            Left = 647
            Top = 74
            Cursor = crIBeam
            Hint = 'Color'
            Caption = 'lbFastKey6'
            Style.TextColor = 9803157
            Transparent = True
            OnClick = lbFastKey1Click
          end
          object lbFastKey7: TcxLabel
            Left = 766
            Top = 74
            Cursor = crIBeam
            Hint = 'Color'
            Caption = 'lbFastKey7'
            Style.TextColor = 9803157
            Transparent = True
            OnClick = lbFastKey1Click
          end
          object chk_MultiSearch: TcxCheckBox
            Left = 886
            Top = 74
            Hint = #44208#54633#44160#49353
            Caption = #44208#54633
            ParentShowHint = False
            Properties.OnChange = chk_MultiSearchPropertiesChange
            ShowHint = True
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 35
            Transparent = True
            OnClick = chk_MultiSearchClick
            OnMouseLeave = chk_MultiSearchMouseLeave
            OnMouseUp = chk_MultiSearchMouseUp
          end
          object chk_OptionAll: TcxCheckBox
            Left = 932
            Top = 74
            Hint = #49440#53469' '#50724#45908#49345#53468' '#47924#49884#54616#44256' '#51204#52404#50724#45908' '#49345#53468' '#51312#54924
            Caption = #51204#52404
            ParentShowHint = False
            Properties.OnChange = chk_MultiSearchPropertiesChange
            ShowHint = True
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 36
            Transparent = True
            OnClick = chk_MultiSearchClick
          end
          object cb_10: TcxCheckBox
            Left = 979
            Top = 74
            Caption = #54869#51109
            Properties.OnChange = chk_MultiSearchPropertiesChange
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 37
            Transparent = True
            OnClick = cb_10Click
          end
          object PnlAuto: TPanel
            Left = 960
            Top = 9
            Width = 43
            Height = 38
            BevelOuter = bvNone
            Color = clWhite
            DoubleBuffered = True
            ParentBackground = False
            ParentDoubleBuffered = False
            TabOrder = 38
            Visible = False
            object Image1: TImage
              Left = 0
              Top = 0
              Width = 43
              Height = 38
              Cursor = crHandPoint
              Align = alClient
              Center = True
              Picture.Data = {
                0954474946496D61676547494638396120002000E67F00FF7213FCFFFCFAFFFA
                7CBE3CD4A9540FCE0F32D632FDD9BDFFA46802CC0213D01322D3226DE26D51DC
                5110CF10FF954FC3F3C3AAA22A29D529D5F7D5C6A746A2EDA23CD83CFF822F3E
                D83EFF761AB6A43659DE59B1EFB118D118FFB27FFFF2E914D0147FE57FFF6F10
                FFFBF9FFA96FFBD9BBFF6F0F57DE57FFECDFE9FBE9F9FFF9F9FEF9DFF9DF44DA
                44FF8C400DCE0DFFFEFE95EA95FF6A07FF791F73E373FF6D0C0DCF0D2DD52D6B
                E16BFFE2CF01CC0148DB48BFF2BFFFCFAFFF7920FF8C3FECFBEC03CC03DDF9DD
                1AD11AFF802CFFD9BFFED9BE0CCE0C2CD52CFFA76DB2F0B2FFF4EC95E994FF9F
                5F62B922A4A024969D16FEFFFEFFD1B240D94096EA9683E683ABEEAB68E1688F
                E88F15D015CFF5CF88E788A8EDA82FD52FF3FDF30FCF0FE7FBE780E57F78E478
                07CD0709CE09EDFCED38D7381FD21FAFEFAF1CD21C3FD83F26D426E2FAE2CFCF
                8FFFC49C90C2506DBB2D63E0639E9F1EE7AD67FFE8D8DFAC5FFFC8A3FF9B59FF
                8636FF7B2427D327ABC76B00CC00FF6600FFFFFFFFFFFF21FF0B4E4554534341
                5045322E30030100000021FF0B584D502044617461584D503C3F787061636B65
                7420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265
                537A4E54637A6B633964223F3E203C783A786D706D65746120786D6C6E733A78
                3D2261646F62653A6E733A6D6574612F2220783A786D70746B3D2241646F6265
                20584D5020436F726520352E302D633036302036312E3133343737372C203230
                31302F30322F31322D31373A33323A30302020202020202020223E203C726466
                3A52444620786D6C6E733A7264663D22687474703A2F2F7777772E77332E6F72
                672F313939392F30322F32322D7264662D73796E7461782D6E7323223E203C72
                64663A4465736372697074696F6E207264663A61626F75743D222220786D6C6E
                733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F786170
                2F312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E73
                2E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F757263
                65526566232220786D6C6E733A786D703D22687474703A2F2F6E732E61646F62
                652E636F6D2F7861702F312E302F2220786D704D4D3A4F726967696E616C446F
                63756D656E7449443D22786D702E6469643A4639433433343933433242304533
                3131383637454133464643353445303042412220786D704D4D3A446F63756D65
                6E7449443D22786D702E6469643A433431303535393745413046313145333836
                34414246394334304130314443352220786D704D4D3A496E7374616E63654944
                3D22786D702E6969643A43343130353539364541304631314533383634414246
                394334304130314443352220786D703A43726561746F72546F6F6C3D2241646F
                62652050686F746F73686F70204353352057696E646F7773223E203C786D704D
                4D3A4465726976656446726F6D2073745265663A696E7374616E636549443D22
                786D702E6969643A364433433931463330314541453331314130304438304331
                3333343532374246222073745265663A646F63756D656E7449443D22786D702E
                6469643A46394334333439334332423045333131383637454133464643353445
                30304241222F3E203C2F7264663A4465736372697074696F6E3E203C2F726466
                3A5244463E203C2F783A786D706D6574613E203C3F787061636B657420656E64
                3D2272223F3E01FFFEFDFCFBFAF9F8F7F6F5F4F3F2F1F0EFEEEDECEBEAE9E8E7
                E6E5E4E3E2E1E0DFDEDDDCDBDAD9D8D7D6D5D4D3D2D1D0CFCECDCCCBCAC9C8C7
                C6C5C4C3C2C1C0BFBEBDBCBBBAB9B8B7B6B5B4B3B2B1B0AFAEADACABAAA9A8A7
                A6A5A4A3A2A1A09F9E9D9C9B9A999897969594939291908F8E8D8C8B8A898887
                868584838281807F7E7D7C7B7A797877767574737271706F6E6D6C6B6A696867
                666564636261605F5E5D5C5B5A595857565554535251504F4E4D4C4B4A494847
                464544434241403F3E3D3C3B3A393837363534333231302F2E2D2C2B2A292827
                262524232221201F1E1D1C1B1A191817161514131211100F0E0D0C0B0A090807
                060504030201000021F9040500007F002C000000002000200086FF7213FCFFFC
                FAFFFA7CBE3CD4A9540FCE0F32D632FDD9BDFFA46802CC0213D01322D3226DE2
                6D51DC5110CF10FF954FC3F3C3AAA22A29D529D5F7D5C6A746A2EDA23CD83CFF
                822F3ED83EFF761AB6A43659DE59B1EFB118D118FFB27FFFF2E914D0147FE57F
                FF6F10FFFBF9FFA96FFBD9BBFF6F0F57DE57FFECDFE9FBE9F9FFF9F9FEF9DFF9
                DF44DA44FF8C400DCE0DFFFEFE95EA95FF6A07FF791F73E373FF6D0C0DCF0D2D
                D52D6BE16BFFE2CF01CC0148DB48BFF2BFFFCFAFFF7920FF8C3FECFBEC03CC03
                DDF9DD1AD11AFF802CFFD9BFFED9BE0CCE0C2CD52CFFA76DB2F0B2FFF4EC95E9
                94FF9F5F62B922A4A024969D16FEFFFEFFD1B240D94096EA9683E683ABEEAB68
                E1688FE88F15D015CFF5CF88E788A8EDA82FD52FF3FDF30FCF0FE7FBE780E57F
                78E47807CD0709CE09EDFCED38D7381FD21FAFEFAF1CD21C3FD83F26D426E2FA
                E2CFCF8FFFC49C90C2506DBB2D63E0639E9F1EE7AD67FFE8D8DFAC5FFFC8A3FF
                9B59FF8636FF7B2427D327ABC76B00CC00FF6600FFFFFFFFFFFF07FF807E8283
                8324248488898A8A240F17398B91923917231F3328929A8428331F821F7D9F9B
                921F26A3829DA8A4889799889D23ACAD988B8DB2B37E230F3D928DB9BB879A4D
                C2A486A4C1C60FB89BBBBD9A177DD2A28B4DD37D0FA430DB1E1E8B3F454C41E3
                E4E43191DDDF257C21EDEEEE7C2A8BE98A3FEB91F1F3DEF5F78BF98AF412D9E3
                834F1EC07D02FB29FA97A89BC3871E06165CF40162B727509CDC20E8EF86C71D
                9B762C3040F244A413240D2C00A949018F593C14908AF1820529162FCECDACA9
                09A74E563440A4889402048D5C82820E4D54F4285241435AAC40B4A2C590A784
                6C481D54D5065644364C0A3AE1F52B221038FCE00061369110102708400869AB
                A880A4400021F9040500007F002C050011000A00020086FF7213FCFFFCFAFFFA
                7CBE3CD4A9540FCE0F32D632FDD9BDFFA46802CC0213D01322D3226DE26D51DC
                5110CF10FF954FC3F3C3AAA22A29D529D5F7D5C6A746A2EDA23CD83CFF822F3E
                D83EFF761AB6A43659DE59B1EFB118D118FFB27FFFF2E914D0147FE57FFF6F10
                FFFBF9FFA96FFBD9BBFF6F0F57DE57FFECDFE9FBE9F9FFF9F9FEF9DFF9DF44DA
                44FF8C400DCE0DFFFEFE95EA95FF6A07FF791F73E373FF6D0C0DCF0D2DD52D6B
                E16BFFE2CF01CC0148DB48BFF2BFFFCFAFFF7920FF8C3FECFBEC03CC03DDF9DD
                1AD11AFF802CFFD9BFFED9BE0CCE0C2CD52CFFA76DB2F0B2FFF4EC95E994FF9F
                5F62B922A4A024969D16FEFFFEFFD1B240D94096EA9683E683ABEEAB68E1688F
                E88F15D015CFF5CF88E788A8EDA82FD52FF3FDF30FCF0FE7FBE780E57F78E478
                07CD0709CE09EDFCED38D7381FD21FAFEFAF1CD21C3FD83F26D426E2FAE2CFCF
                8FFFC49C90C2506DBB2D63E0639E9F1EE7AD67FFE8D8DFAC5FFFC8A3FF9B59FF
                8636FF7B2427D327ABC76B00CC00FF6600FFFFFFFFFFFF070D80223E83848300
                7D88898922810021F9040500007F002C05000F000A00030086FF7213FCFFFCFA
                FFFA7CBE3CD4A9540FCE0F32D632FDD9BDFFA46802CC0213D01322D3226DE26D
                51DC5110CF10FF954FC3F3C3AAA22A29D529D5F7D5C6A746A2EDA23CD83CFF82
                2F3ED83EFF761AB6A43659DE59B1EFB118D118FFB27FFFF2E914D0147FE57FFF
                6F10FFFBF9FFA96FFBD9BBFF6F0F57DE57FFECDFE9FBE9F9FFF9F9FEF9DFF9DF
                44DA44FF8C400DCE0DFFFEFE95EA95FF6A07FF791F73E373FF6D0C0DCF0D2DD5
                2D6BE16BFFE2CF01CC0148DB48BFF2BFFFCFAFFF7920FF8C3FECFBEC03CC03DD
                F9DD1AD11AFF802CFFD9BFFED9BE0CCE0C2CD52CFFA76DB2F0B2FFF4EC95E994
                FF9F5F62B922A4A024969D16FEFFFEFFD1B240D94096EA9683E683ABEEAB68E1
                688FE88F15D015CFF5CF88E788A8EDA82FD52FF3FDF30FCF0FE7FBE780E57F78
                E47807CD0709CE09EDFCED38D7381FD21FAFEFAF1CD21C3FD83F26D426E2FAE2
                CFCF8FFFC49C90C2506DBB2D63E0639E9F1EE7AD67FFE8D8DFAC5FFFC8A3FF9B
                59FF8636FF7B2427D327ABC76B00CC00FF6600FFFFFFFFFFFF07108078498384
                83797D888989228A8D22810021F9040500007F002C05000B000A00050086FF72
                13FCFFFCFAFFFA7CBE3CD4A9540FCE0F32D632FDD9BDFFA46802CC0213D01322
                D3226DE26D51DC5110CF10FF954FC3F3C3AAA22A29D529D5F7D5C6A746A2EDA2
                3CD83CFF822F3ED83EFF761AB6A43659DE59B1EFB118D118FFB27FFFF2E914D0
                147FE57FFF6F10FFFBF9FFA96FFBD9BBFF6F0F57DE57FFECDFE9FBE9F9FFF9F9
                FEF9DFF9DF44DA44FF8C400DCE0DFFFEFE95EA95FF6A07FF791F73E373FF6D0C
                0DCF0D2DD52D6BE16BFFE2CF01CC0148DB48BFF2BFFFCFAFFF7920FF8C3FECFB
                EC03CC03DDF9DD1AD11AFF802CFFD9BFFED9BE0CCE0C2CD52CFFA76DB2F0B2FF
                F4EC95E994FF9F5F62B922A4A024969D16FEFFFEFFD1B240D94096EA9683E683
                ABEEAB68E1688FE88F15D015CFF5CF88E788A8EDA82FD52FF3FDF30FCF0FE7FB
                E780E57F78E47807CD0709CE09EDFCED38D7381FD21FAFEFAF1CD21C3FD83F26
                D426E2FAE2CFCF8FFFC49C90C2506DBB2D63E0639E9F1EE7AD67FFE8D8DFAC5F
                FFC8A3FF9B59FF8636FF7B2427D327ABC76B00CC00FF6600FFFFFFFFFFFF0714
                80744B838483777D888989228A8D8C8D8B908B810021F9040500007F002C0000
                08001400040086FF7213FCFFFCFAFFFA7CBE3CD4A9540FCE0F32D632FDD9BDFF
                A46802CC0213D01322D3226DE26D51DC5110CF10FF954FC3F3C3AAA22A29D529
                D5F7D5C6A746A2EDA23CD83CFF822F3ED83EFF761AB6A43659DE59B1EFB118D1
                18FFB27FFFF2E914D0147FE57FFF6F10FFFBF9FFA96FFBD9BBFF6F0F57DE57FF
                ECDFE9FBE9F9FFF9F9FEF9DFF9DF44DA44FF8C400DCE0DFFFEFE95EA95FF6A07
                FF791F73E373FF6D0C0DCF0D2DD52D6BE16BFFE2CF01CC0148DB48BFF2BFFFCF
                AFFF7920FF8C3FECFBEC03CC03DDF9DD1AD11AFF802CFFD9BFFED9BE0CCE0C2C
                D52CFFA76DB2F0B2FFF4EC95E994FF9F5F62B922A4A024969D16FEFFFEFFD1B2
                40D94096EA9683E683ABEEAB68E1688FE88F15D015CFF5CF88E788A8EDA82FD5
                2FF3FDF30FCF0FE7FBE780E57F78E47807CD0709CE09EDFCED38D7381FD21FAF
                EFAF1CD21C3FD83F26D426E2FAE2CFCF8FFFC49C90C2506DBB2D63E0639E9F1E
                E7AD67FFE8D8DFAC5FFFC8A3FF9B59FF8636FF7B2427D327ABC76B00CC00FF66
                00FFFFFFFFFFFF0725807E232E19448687888619087E8D08327D91929393268C
                0826949A94263D3E9B9A35932E810021F9040500007F002C030004000E000500
                86FF7213FCFFFCFAFFFA7CBE3CD4A9540FCE0F32D632FDD9BDFFA46802CC0213
                D01322D3226DE26D51DC5110CF10FF954FC3F3C3AAA22A29D529D5F7D5C6A746
                A2EDA23CD83CFF822F3ED83EFF761AB6A43659DE59B1EFB118D118FFB27FFFF2
                E914D0147FE57FFF6F10FFFBF9FFA96FFBD9BBFF6F0F57DE57FFECDFE9FBE9F9
                FFF9F9FEF9DFF9DF44DA44FF8C400DCE0DFFFEFE95EA95FF6A07FF791F73E373
                FF6D0C0DCF0D2DD52D6BE16BFFE2CF01CC0148DB48BFF2BFFFCFAFFF7920FF8C
                3FECFBEC03CC03DDF9DD1AD11AFF802CFFD9BFFED9BE0CCE0C2CD52CFFA76DB2
                F0B2FFF4EC95E994FF9F5F62B922A4A024969D16FEFFFEFFD1B240D94096EA96
                83E683ABEEAB68E1688FE88F15D015CFF5CF88E788A8EDA82FD52FF3FDF30FCF
                0FE7FBE780E57F78E47807CD0709CE09EDFCED38D7381FD21FAFEFAF1CD21C3F
                D83F26D426E2FAE2CFCF8FFFC49C90C2506DBB2D63E0639E9F1EE7AD67FFE8D8
                DFAC5FFFC8A3FF9B59FF8636FF7B2427D327ABC76B00CC00FF6600FFFFFFFFFF
                FF0721807F8235765286526E19828B007D8E8F8E008C9094322E7F2E949A9632
                9A9A35810021F9040500007F002C060000000800050086FF7213FCFFFCFAFFFA
                7CBE3CD4A9540FCE0F32D632FDD9BDFFA46802CC0213D01322D3226DE26D51DC
                5110CF10FF954FC3F3C3AAA22A29D529D5F7D5C6A746A2EDA23CD83CFF822F3E
                D83EFF761AB6A43659DE59B1EFB118D118FFB27FFFF2E914D0147FE57FFF6F10
                FFFBF9FFA96FFBD9BBFF6F0F57DE57FFECDFE9FBE9F9FFF9F9FEF9DFF9DF44DA
                44FF8C400DCE0DFFFEFE95EA95FF6A07FF791F73E373FF6D0C0DCF0D2DD52D6B
                E16BFFE2CF01CC0148DB48BFF2BFFFCFAFFF7920FF8C3FECFBEC03CC03DDF9DD
                1AD11AFF802CFFD9BFFED9BE0CCE0C2CD52CFFA76DB2F0B2FFF4EC95E994FF9F
                5F62B922A4A024969D16FEFFFEFFD1B240D94096EA9683E683ABEEAB68E1688F
                E88F15D015CFF5CF88E788A8EDA82FD52FF3FDF30FCF0FE7FBE780E57F78E478
                07CD0709CE09EDFCED38D7381FD21FAFEFAF1CD21C3FD83F26D426E2FAE2CFCF
                8FFFC49C90C2506DBB2D63E0639E9F1EE7AD67FFE8D8DFAC5FFFC8A3FF9B59FF
                8636FF7B2427D327ABC76B00CC00FF6600FFFFFFFFFFFF071A807F8208088286
                0826268682267D7D3586358E8E8232939300810021F9040500007F002C0B000C
                001500140086FF7213FCFFFCFAFFFA7CBE3CD4A9540FCE0F32D632FDD9BDFFA4
                6802CC0213D01322D3226DE26D51DC5110CF10FF954FC3F3C3AAA22A29D529D5
                F7D5C6A746A2EDA23CD83CFF822F3ED83EFF761AB6A43659DE59B1EFB118D118
                FFB27FFFF2E914D0147FE57FFF6F10FFFBF9FFA96FFBD9BBFF6F0F57DE57FFEC
                DFE9FBE9F9FFF9F9FEF9DFF9DF44DA44FF8C400DCE0DFFFEFE95EA95FF6A07FF
                791F73E373FF6D0C0DCF0D2DD52D6BE16BFFE2CF01CC0148DB48BFF2BFFFCFAF
                FF7920FF8C3FECFBEC03CC03DDF9DD1AD11AFF802CFFD9BFFED9BE0CCE0C2CD5
                2CFFA76DB2F0B2FFF4EC95E994FF9F5F62B922A4A024969D16FEFFFEFFD1B240
                D94096EA9683E683ABEEAB68E1688FE88F15D015CFF5CF88E788A8EDA82FD52F
                F3FDF30FCF0FE7FBE780E57F78E47807CD0709CE09EDFCED38D7381FD21FAFEF
                AF1CD21C3FD83F26D426E2FAE2CFCF8FFFC49C90C2506DBB2D63E0639E9F1EE7
                AD67FFE8D8DFAC5FFFC8A3FF9B59FF8636FF7B2427D327ABC76B00CC00FF6600
                FFFFFFFFFFFF075C807F8282156386878715838B8B7C8E8F8F7F028C8C909692
                948D96919399829B9C9E820CA4A5A598A2A99D8311727016A97F16B31B7FB5B1
                99B7B89E8ABB83BD7FC0B8C27F55BBC694C8A2CA946BA2CEBED1D2D3BB6C83D6
                D31DA9810021F9040500007F002C0B000C001500140086FF7213FCFFFCFAFFFA
                7CBE3CD4A9540FCE0F32D632FDD9BDFFA46802CC0213D01322D3226DE26D51DC
                5110CF10FF954FC3F3C3AAA22A29D529D5F7D5C6A746A2EDA23CD83CFF822F3E
                D83EFF761AB6A43659DE59B1EFB118D118FFB27FFFF2E914D0147FE57FFF6F10
                FFFBF9FFA96FFBD9BBFF6F0F57DE57FFECDFE9FBE9F9FFF9F9FEF9DFF9DF44DA
                44FF8C400DCE0DFFFEFE95EA95FF6A07FF791F73E373FF6D0C0DCF0D2DD52D6B
                E16BFFE2CF01CC0148DB48BFF2BFFFCFAFFF7920FF8C3FECFBEC03CC03DDF9DD
                1AD11AFF802CFFD9BFFED9BE0CCE0C2CD52CFFA76DB2F0B2FFF4EC95E994FF9F
                5F62B922A4A024969D16FEFFFEFFD1B240D94096EA9683E683ABEEAB68E1688F
                E88F15D015CFF5CF88E788A8EDA82FD52FF3FDF30FCF0FE7FBE780E57F78E478
                07CD0709CE09EDFCED38D7381FD21FAFEFAF1CD21C3FD83F26D426E2FAE2CFCF
                8FFFC49C90C2506DBB2D63E0639E9F1EE7AD67FFE8D8DFAC5FFFC8A3FF9B59FF
                8636FF7B2427D327ABC76B00CC00FF6600FFFFFFFFFFFF0775807F82821C0E0E
                5F88895F4A838D82078E9101918F948D939490968298919A9B9D8E907CA4A5A5
                7FA18DA3A6A6A88E1A11030D7FACAD0DB70C7F0CB5BCB5B97F1C40C2C3C4C51C
                838C9B94C97FCCCA82CE7F54CF82D391D69BD891669BDCCA0A94E0D4E283E4D4
                5983E8D48360E85960EB8E7ACA810021F9040500007F002C0B000C0015001400
                86FF7213FCFFFCFAFFFA7CBE3CD4A9540FCE0F32D632FDD9BDFFA46802CC0213
                D01322D3226DE26D51DC5110CF10FF954FC3F3C3AAA22A29D529D5F7D5C6A746
                A2EDA23CD83CFF822F3ED83EFF761AB6A43659DE59B1EFB118D118FFB27FFFF2
                E914D0147FE57FFF6F10FFFBF9FFA96FFBD9BBFF6F0F57DE57FFECDFE9FBE9F9
                FFF9F9FEF9DFF9DF44DA44FF8C400DCE0DFFFEFE95EA95FF6A07FF791F73E373
                FF6D0C0DCF0D2DD52D6BE16BFFE2CF01CC0148DB48BFF2BFFFCFAFFF7920FF8C
                3FECFBEC03CC03DDF9DD1AD11AFF802CFFD9BFFED9BE0CCE0C2CD52CFFA76DB2
                F0B2FFF4EC95E994FF9F5F62B922A4A024969D16FEFFFEFFD1B240D94096EA96
                83E683ABEEAB68E1688FE88F15D015CFF5CF88E788A8EDA82FD52FF3FDF30FCF
                0FE7FBE780E57F78E47807CD0709CE09EDFCED38D7381FD21FAFEFAF1CD21C3F
                D83F26D426E2FAE2CFCF8FFFC49C90C2506DBB2D63E0639E9F1EE7AD67FFE8D8
                DFAC5FFFC8A3FF9B59FF8636FF7B2427D327ABC76B00CC00FF6600FFFFFFFFFF
                FF075F807F8282106786878710838B8C8D8E8F9091929394959696141A6F3892
                389E5B7FA09782A0097CA7A8A9AAA70984ABAFA98AAEB0ABB28356411248BBBC
                BC1241568EC191C38E0D90C791698ECB93CD83CF931D83D39665D31D65A37F18
                91810021F9040500007F002C0B000C001500140086FF7213FCFFFCFAFFFA7CBE
                3CD4A9540FCE0F32D632FDD9BDFFA46802CC0213D01322D3226DE26D51DC5110
                CF10FF954FC3F3C3AAA22A29D529D5F7D5C6A746A2EDA23CD83CFF822F3ED83E
                FF761AB6A43659DE59B1EFB118D118FFB27FFFF2E914D0147FE57FFF6F10FFFB
                F9FFA96FFBD9BBFF6F0F57DE57FFECDFE9FBE9F9FFF9F9FEF9DFF9DF44DA44FF
                8C400DCE0DFFFEFE95EA95FF6A07FF791F73E373FF6D0C0DCF0D2DD52D6BE16B
                FFE2CF01CC0148DB48BFF2BFFFCFAFFF7920FF8C3FECFBEC03CC03DDF9DD1AD1
                1AFF802CFFD9BFFED9BE0CCE0C2CD52CFFA76DB2F0B2FFF4EC95E994FF9F5F62
                B922A4A024969D16FEFFFEFFD1B240D94096EA9683E683ABEEAB68E1688FE88F
                15D015CFF5CF88E788A8EDA82FD52FF3FDF30FCF0FE7FBE780E57F78E47807CD
                0709CE09EDFCED38D7381FD21FAFEFAF1CD21C3FD83F26D426E2FAE2CFCF8FFF
                C49C90C2506DBB2D63E0639E9F1EE7AD67FFE8D8DFAC5FFFC8A3FF9B59FF8636
                FF7B2427D327ABC76B00CC00FF6600FFFFFFFFFFFF0771807F8282136A868787
                13838B82468C8F908D9193838E9493969790999A8C9C9D04147B589758A65C7F
                5C3AABAB93ACABA8649D8BB27F133AB37F3A8A84B89ABB8C103A7CC4C5C67C3A
                1090C2C7C6C99362C3CD3A629712D2C53A129D06164ADF1606B90B83E4B95E0B
                1B0B5EB9837194810021F9040500007F002C0B000C001500140086FF7213FCFF
                FCFAFFFA7CBE3CD4A9540FCE0F32D632FDD9BDFFA46802CC0213D01322D3226D
                E26D51DC5110CF10FF954FC3F3C3AAA22A29D529D5F7D5C6A746A2EDA23CD83C
                FF822F3ED83EFF761AB6A43659DE59B1EFB118D118FFB27FFFF2E914D0147FE5
                7FFF6F10FFFBF9FFA96FFBD9BBFF6F0F57DE57FFECDFE9FBE9F9FFF9F9FEF9DF
                F9DF44DA44FF8C400DCE0DFFFEFE95EA95FF6A07FF791F73E373FF6D0C0DCF0D
                2DD52D6BE16BFFE2CF01CC0148DB48BFF2BFFFCFAFFF7920FF8C3FECFBEC03CC
                03DDF9DD1AD11AFF802CFFD9BFFED9BE0CCE0C2CD52CFFA76DB2F0B2FFF4EC95
                E994FF9F5F62B922A4A024969D16FEFFFEFFD1B240D94096EA9683E683ABEEAB
                68E1688FE88F15D015CFF5CF88E788A8EDA82FD52FF3FDF30FCF0FE7FBE780E5
                7F78E47807CD0709CE09EDFCED38D7381FD21FAFEFAF1CD21C3FD83F26D426E2
                FAE2CFCF8FFFC49C90C2506DBB2D63E0639E9F1EE7AD67FFE8D8DFAC5FFFC8A3
                FF9B59FF8636FF7B2427D327ABC76B00CC00FF6600FFFFFFFFFFFF0774807F82
                822961612188892129838D8E8F835190938E929497969793999A8F9C9D8D9F73
                756D3C9A3CA85A7F5A5F0EAE479447AE0E5FAA5DA08DB77F290AB87F0A8C84BD
                9DC08E2CB097472C90C7B1CB93685F905F689A57D28D5F57A057477CDF47DBB8
                53637C6353BE7F2B5347532BE982159781003B}
              Transparent = True
              OnClick = Image1Click
              ExplicitTop = 1
              ExplicitWidth = 31
              ExplicitHeight = 30
            end
          end
          object cb_0D: TAdvGlowButton
            Left = 399
            Top = 44
            Width = 72
            Height = 24
            Cursor = crHandPoint
            Caption = #50868#54665
            ImageIndex = 19
            Images = Frm_Main.cximgOrderStatus
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -12
            NotesFont.Name = #44404#47548#52404
            NotesFont.Style = []
            Rounded = True
            ParentShowHint = False
            ShowHint = False
            TabOrder = 60
            OnClick = cb_00Click
            Appearance.BorderColorHot = 16761412
            Appearance.BorderColorDown = 16761412
            Appearance.BorderColorChecked = 43754
            Appearance.Color = clWhite
            Appearance.ColorTo = clWhite
            Appearance.ColorChecked = 7592191
            Appearance.ColorCheckedTo = 7592191
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 15243853
            Appearance.ColorDownTo = 15243853
            Appearance.ColorHot = 7716789
            Appearance.ColorHotTo = 7716789
            Appearance.ColorMirror = clSilver
            Appearance.ColorMirrorTo = clWhite
            Appearance.ColorMirrorHot = 7716789
            Appearance.ColorMirrorHotTo = 7716789
            Appearance.ColorMirrorDown = 15243853
            Appearance.ColorMirrorDownTo = 15243853
            Appearance.ColorMirrorChecked = 7592191
            Appearance.ColorMirrorCheckedTo = 7592191
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Style = bsCheck
          end
          object cx_0D: TcxLabel
            Left = 426
            Top = 29
            Caption = '[0]'
            ParentFont = False
            Style.Font.Charset = HANGEUL_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = #47569#51008' '#44256#46357
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Transparent = True
            AnchorX = 434
          end
          object cb_10Set: TcxButton
            Left = 7
            Top = 73
            Width = 23
            Height = 20
            Hint = #44160#49353#51312#44148#49444#51221
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
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
            OptionsImage.Layout = blGlyphTop
            OptionsImage.Spacing = 2
            ParentShowHint = False
            ShowHint = True
            TabOrder = 62
            TabStop = False
            WordWrap = True
            OnClick = cb_10SetClick
          end
          object btnDocking: TcxButton
            Left = 1260
            Top = 3
            Width = 27
            Height = 22
            Cursor = crHandPoint
            Hint = #51217#49688#54788#54889' '#54633#52824#44592
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
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
              2020202020202020351D5264000001B249444154388DA5D3316B544110C0F1FF
              ECDB3BF2EE0EB1946871452CEC2C14521804D349D02F200829C44F7118C18F20
              788A122C6CEC52D8595D1385B48A851A8B888484C47BB9E4BDDBDD598BE71DF7
              F44C904CB3B0C3FE766696951823A7097BFBE1E3CE9A9D5BA9EC1A815A02D640
              045C00AFF0C76577DC87351B67D2958DE505E67B9BC49DC3329318A45183561D
              8C2089F0FECA05AEF6BEB27EADCD7C6F93F585360F5E6CDD92A547DDF8A67989
              BF2A486B7036459A75F04ADC3F82AC28ABF91D37071FB1D7EB7D5E2D5F9EDA9F
              310611C118438C11554555C7F96EF71DF6B801A92AC618DA9F5200161BF074F6
              A08298E3008018239FE70E586CC0DB43101144E4FF807BDF5B3C3B3F0018B734
              5A4F04EEFF38C393737D54952F17AB88B5169B6519AFBF3DA7EFF6E8E7BBF48B
              1DF6F35D7E1E6DB337D8E6E58D2DB22CAB1C32C6A0AAE4795E0E31B52D5C74F8
              DA101F1D5E3D2E14B850545A5155BCF7586BC7959440D2C2474750878F0E1786
              382DF013C0241242404450D51298491A25603D3E7AFC04346DA823C039570246
              0C69D224445FB61086781DE2A700230428A14EA77317583DE935FE11AB72DAEF
              FC0B6276E84B3A8844560000000049454E44AE426082}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 63
            Visible = False
            OnClick = btnDockingClick
          end
          object btnFloating: TcxButton
            Left = 1260
            Top = 27
            Width = 27
            Height = 22
            Cursor = crHandPoint
            Hint = #51217#49688#54788#54889' '#48516#47532#54616#44592
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
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
              2020202020202020351D5264000001DC49444154388DA5933F6B15411447CFBD
              7776B3FB5E503F8060509B1462A390C2602F124B510441146C2C046D1F8990CE
              D64250093682650ABF40408220E94CA769EC2C340F7DBBF367C7625F0A959840
              7ED5307738732E774672CE1C25EEDA9367A3757776E58F5D15280C9C42064282
              D8C15F97DD0A9FD65DAEEA958F771659D8D8217FFBD5574C914101B325A82026
              7CB870928B1B5FD8BC34C7C2C60E9B8B732CBFFABA2457579FE777C379FE31A8
              0B385123C3126247FE3E8171DBDB4C73E5E736EE72B9CBF1338FA88A59668A01
              B51B5215432A37A42A06546E405D0C28ADA6D48A522B2AAB28B566EBCD2E0AE0
              63838F0D217A7C6A09A9C1A7E95E6A69534BEC3C4BA76E9072C0779ED8F95E16
              A08D93E9E109214D68534B482D3EB53C3CBF8A8F0DD74FDFE3EDE71784CE13BB
              40C83DC0ED1998384C0D15874A8361A8280077E71FF372FB2955314445D1AC68
              67A86A6F10528B8F4D6F32D5EFDB6819FB1FCC16C778706E795AF3C41C88D9E3
              9CC38DC7635EDFDCDAF7A1ACBCBFCF8C1B50154366AC2697999C3251134DD3F4
              2DFC2F3E35881A9A0C4568A2A1620088C861002DAA8689611822FD1A84AEB383
              012135D814A06248524C0C4108A13C0CC04FA7B33721459321A2A464C86834BA
              0DAC1D04DA276B72D4EFFC1B01CEDC2C5F9494370000000049454E44AE426082}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 64
            OnClick = btnFloatingClick
          end
          object rb_Accept: TcxButton
            Left = 1117
            Top = 4
            Width = 91
            Height = 56
            Caption = #51217' '#49688
            LookAndFeel.NativeStyle = False
            TabOrder = 17
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = rb_AcceptClick
          end
          object btnMySqlPoiSync: TcxButton
            Left = 1211
            Top = 63
            Width = 29
            Height = 30
            Hint = #49436#48260'POI '#46041#44592#54868
            LookAndFeel.NativeStyle = False
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000023D4944415478DA95905D48536118C7FFEF393B671F6EAE68F6896845
              65ACBA2943EAAA2E2A08334A0A943E2E22BB9420C49246C40C84BAEAAED41851
              C22811CA69DB4A2D993644C6B6DA879A458D0A596B9FE76CE7EC6D058544CCF5
              7BAF9E8BF7FFFC9F1FC122AEBC6EA64A3E914C093278054F46A7E6D5632DD32C
              8A40160F8FC39D3420F7E0BB2881285838ED04EED619527240B7C74443CC23A4
              32148467F16A58C0745BE83F0226CDD4A7B6229ECA8151B218E94B22DC35573C
              60C7ADF5BE0AFD1AA35641B0B5AA12B1B220124216946131E7CE201ECD23F959
              06C9E1FAFBDEF9ABFF6CB0D9B421D07EF2DC9619A50353B341E83943C101856A
              150BFF8B343E8D67BA22960F6D454FD09D31842E9D3EBB29BED60B7F240CBD7E
              39DE3813981D8976A46C0BE6921CE0207C175B5B8CA889C0D2FD1C511735E79D
              E98E9225FE647573952BAAF958579DAA391F7AE0BF8325207DD67E8D9C978FE7
              658806AD2193169364C83378EA445DD3CD5826B64E90048680FED9450A8F6754
              3447857286659E90A736C7BBBD7B7655230F4879092A4E8D32A54688A6BFA9FE
              AE4828038EE5911433A8D02FC3CB89C914B10D3BA54307F6B34B55FD8DEB8B1D
              37BCC7D0B9731CDA851522B1F60FC41B8F1ED109A20886618A7EE6390EB6C000
              AEB92FE0F6BE41705FF924B977FF61BCB1A15EF7361004CB162F420A36348A72
              20A740E5C69518758D25C8DD1E0B6DA83F8C21BB034A8E2F1AF04B65418A2CC9
              A8DD5D0B8FC703D27ED9D4BB6DBBB149AD526729A52579208594AC24297C5EEF
              B31F1CDEE8B4B0EE1F720000000049454E44AE426082}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 65
            WordWrap = True
            OnClick = btnMySqlPoiSyncClick
          end
          object chk_Mileage: TcxCheckBox
            Left = 30
            Top = 74
            AutoSize = False
            Caption = #47560#51068#47532#51648
            ParentShowHint = False
            Properties.OnChange = chk_MileagePropertiesChange
            ShowHint = True
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 66
            Transparent = True
            Height = 19
            Width = 69
          end
          object chk_CMPSupportY: TcxCheckBox
            Left = 104
            Top = 74
            Caption = #51648#50896#44552
            ParentShowHint = False
            Properties.OnChange = chk_CMPSupportYPropertiesChange
            ShowHint = True
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 67
            Transparent = True
          end
          object chk_CMPSupportN: TcxCheckBox
            Left = 167
            Top = 74
            Caption = #51648#50896#44552#51228#50808
            Properties.OnChange = chk_CMPSupportNPropertiesChange
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 68
            Transparent = True
          end
        end
      end
      object grpSetLocalS: TcxGroupBox
        Left = 568
        Top = 122
        Caption = #51648#50669#49440#53469
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 1
        Visible = False
        Height = 75
        Width = 201
        object Shape6: TShape
          Left = 3
          Top = 17
          Width = 195
          Height = 49
          Align = alClient
          Brush.Color = 13285815
          Pen.Color = 13285815
          ExplicitTop = 18
        end
        object cb_City: TcxComboBox
          Left = 8
          Top = 19
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51648#50669#51204#52404
            #49436#50872
            #44221#44592
            #51064#52380)
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 0
          Text = #51648#50669#51204#52404
          OnClick = cb_CityClick
          Height = 20
          Width = 72
        end
        object cb_Ward: TcxComboBox
          Left = 80
          Top = 19
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.OnCloseUp = cb_WardPropertiesCloseUp
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 1
          Height = 20
          Width = 113
        end
        object btnLocalSelect: TcxButton
          Left = 42
          Top = 43
          Width = 75
          Height = 23
          Caption = #49440#53469
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 2
          OnClick = btnLocalSelectClick
        end
        object btnLocalCancel: TcxButton
          Left = 119
          Top = 43
          Width = 75
          Height = 23
          Caption = #45803#44592
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 3
          OnClick = btnLocalCancelClick
        end
      end
      object grpSetOrderDTS: TcxGroupBox
        Left = 385
        Top = 122
        Caption = #51217#49688#49884#44036'('#48516#45800#50948') '#49440#53469
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 2
        Visible = False
        Height = 75
        Width = 177
        object Shape7: TShape
          Left = 3
          Top = 17
          Width = 171
          Height = 49
          Align = alClient
          Brush.Color = 13285815
          Pen.Color = 13285815
          ExplicitTop = 18
        end
        object btnODtSelect: TcxButton
          Left = 4
          Top = 40
          Width = 55
          Height = 23
          Caption = #49440#53469
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 0
          OnClick = btnODtSelectClick
        end
        object btnODtCancel: TcxButton
          Left = 118
          Top = 40
          Width = 55
          Height = 23
          Caption = #45803#44592
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 1
          OnClick = btnODtCancelClick
        end
        object cxSEOMin: TcxSpinEdit
          Left = 4
          Top = 17
          AutoSize = False
          Properties.MaxValue = 40.000000000000000000
          Properties.MinValue = 1.000000000000000000
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 2
          Value = 1
          Height = 22
          Width = 49
        end
        object cxLabel2: TcxLabel
          Left = 56
          Top = 20
          Caption = #48516' '#44221#44284' '#51060#49345
          Transparent = True
        end
        object btnODtAll: TcxButton
          Left = 61
          Top = 40
          Width = 55
          Height = 23
          Caption = #51204#52404
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 4
          OnClick = btnODtAllClick
        end
      end
      object pnlCenter: TPanel
        Left = 0
        Top = 145
        Width = 1273
        Height = 554
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 4
        object pnl_OrderList: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1076
          Height = 548
          Align = alClient
          BevelOuter = bvNone
          DoubleBuffered = False
          ParentDoubleBuffered = False
          TabOrder = 0
          object cxGridCounselToday: TcxGrid
            Left = 400
            Top = 0
            Width = 676
            Height = 548
            Align = alClient
            BevelEdges = [beLeft, beTop, beBottom]
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = cxcbsNone
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Visible = False
            LookAndFeel.NativeStyle = False
            OnMouseLeave = Grd2MouseLeave
            object cxViewCounselToday: TcxGridDBTableView
              PopupMenu = pm_Counsel
              OnKeyDown = sg_counselKeyDown
              OnMouseMove = sg_counselMouseMove
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
              FilterBox.CustomizeDialog = False
              ScrollbarAnnotations.CustomAnnotations = <>
              OnCellClick = sg_counselCellClick
              OnCellDblClick = sg_counselCellDblClick
              OnCustomDrawCell = sg_counselCustomDrawCell
              OnGetCellHeight = cxViewCounselTodayGetCellHeight
              DataController.Filter.Options = [fcoShowOperatorDescription, fcoSoftNull]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <
                item
                  Links = <>
                  SummaryItems = <
                    item
                    end>
                end>
              DataController.OnSortingChanged = sg_counselDataControllerSortingChanged
              Filtering.MRUItemsList = False
              Filtering.ColumnMRUItemsList = False
              Filtering.ColumnMRUItemsListCount = 0
              OptionsBehavior.PostponedSynchronization = False
              OptionsBehavior.CopyCaptionsToClipboard = False
              OptionsBehavior.DragHighlighting = False
              OptionsBehavior.DragOpening = False
              OptionsBehavior.DragScrolling = False
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.ColumnHeaderHints = False
              OptionsBehavior.CopyPreviewToClipboard = False
              OptionsBehavior.ExpandMasterRowOnDblClick = False
              OptionsBehavior.ImmediateEditor = False
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnSorting = False
              OptionsCustomize.ColumnsQuickCustomizationReordering = qcrEnabled
              OptionsCustomize.DataRowSizing = True
              OptionsData.Appending = True
              OptionsSelection.CellSelect = False
              OptionsSelection.MultiSelect = True
              OptionsSelection.HideFocusRectOnExit = False
              OptionsSelection.UnselectFocusedRecordOnExit = False
              OptionsView.CellEndEllipsis = True
              OptionsView.FocusRect = False
              OptionsView.NoDataToDisplayInfoText = '  '
              OptionsView.DataRowHeight = 23
              OptionsView.ExpandButtonsForEmptyDetails = False
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 23
              OptionsView.IndicatorWidth = 0
              Styles.OnGetContentStyle = sg_counselStylesGetContentStyle
              Styles.Selection = Frm_Main.cxSTTChart
              OnColumnPosChanged = sg_counselColumnPosChanged
              OnColumnSizeChanged = sg_counselColumnSizeChanged
              object cxCol1: TcxGridDBColumn
                DataBinding.FieldName = #45824#54364#48264#54840
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol2: TcxGridDBColumn
                DataBinding.FieldName = #48156#51452#51648#49324#47749
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
                Width = 83
              end
              object cxCol3: TcxGridDBColumn
                DataBinding.FieldName = #49345#53468
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Images = Frm_Main.cximgOrderStatus
                Properties.Items = <
                  item
                    Description = #51217#49688
                    ImageIndex = 0
                    Value = '0'
                  end
                  item
                    Description = #48176#52264
                    ImageIndex = 1
                    Value = '1'
                  end
                  item
                    Description = #50756#47308
                    ImageIndex = 2
                    Value = '2'
                  end
                  item
                    Description = #44053#51228
                    ImageIndex = 3
                    Value = '3'
                  end
                  item
                    Description = #47928#51032
                    ImageIndex = 4
                    Value = '4'
                  end
                  item
                    Description = #45824#44592
                    ImageIndex = 5
                    Value = '5'
                  end
                  item
                    Description = #52712#49548
                    ImageIndex = 6
                    Value = '8'
                  end
                  item
                    Description = #49688#51221
                    ImageIndex = 7
                    Value = '9'
                  end
                  item
                    Description = #50696#50557
                    ImageIndex = 8
                    Value = 'R'
                  end
                  item
                    Description = #48176#52264#51473
                    ImageIndex = 9
                    Value = 'B'
                  end
                  item
                    Description = #44540#48176
                    ImageIndex = 10
                    Value = 'C'
                  end
                  item
                    Description = #44540#48176
                    ImageIndex = 10
                    Value = 'M'
                  end
                  item
                    Description = #50868#54665
                    ImageIndex = 19
                    Value = 'D'
                  end>
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol4: TcxGridDBColumn
                DataBinding.FieldName = #44256#44061#48264#54840
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol5: TcxGridDBColumn
                DataBinding.FieldName = #44256#44061#47749
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol6: TcxGridDBColumn
                DataBinding.FieldName = #54943#49688
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                OnGetDisplayText = sg_counselColumn6GetDisplayText
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol7: TcxGridDBColumn
                DataBinding.FieldName = #44221#44284#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol8: TcxGridDBColumn
                DataBinding.FieldName = #51217#49688#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol9: TcxGridDBColumn
                DataBinding.FieldName = #48176#52264#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol10: TcxGridDBColumn
                DataBinding.FieldName = #50756#47308#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol11: TcxGridDBColumn
                DataBinding.FieldName = #52636#48156#51648
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol12: TcxGridDBColumn
                DataBinding.FieldName = #46020#52265#51648
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol13: TcxGridDBColumn
                DataBinding.FieldName = #50836#44552
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                Properties.ReadOnly = True
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol14: TcxGridDBColumn
                DataBinding.FieldName = #49345#45812#50896
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol15: TcxGridDBColumn
                DataBinding.FieldName = #44592#49324#47749
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol16: TcxGridDBColumn
                DataBinding.FieldName = #44592#49324#49324#48264
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol17: TcxGridDBColumn
                DataBinding.FieldName = #44592#49324#50948#52824
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol18: TcxGridDBColumn
                DataBinding.FieldName = #51201#50836
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol19: TcxGridDBColumn
                DataBinding.FieldName = #44256#44061#44396#48516
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol20: TcxGridDBColumn
                DataBinding.FieldName = #48277#51064#47749
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol21: TcxGridDBColumn
                DataBinding.FieldName = #44208#51228
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol22: TcxGridDBColumn
                DataBinding.FieldName = #52712#49548#49324#50976
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol23: TcxGridDBColumn
                DataBinding.FieldName = #51217#49688#48264#54840
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
                SortIndex = 0
                SortOrder = soDescending
              end
              object cxCol24: TcxGridDBColumn
                DataBinding.FieldName = #52572#52488#51217#49688#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxCol25: TcxGridDBColumn
                DataBinding.FieldName = #51648#45212#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxCol26: TcxGridDBColumn
                DataBinding.FieldName = #44277#50976
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol27: TcxGridDBColumn
                DataBinding.FieldName = #48156#51452#51648#49324
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol28: TcxGridDBColumn
                DataBinding.FieldName = #47700#47784
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol29: TcxGridDBColumn
                DataBinding.FieldName = #54788#51116#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol30: TcxGridDBColumn
                DataBinding.FieldName = #53084#49468#53552#53076#46300
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol31: TcxGridDBColumn
                DataBinding.FieldName = #52636#48156#51648'1'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol32: TcxGridDBColumn
                DataBinding.FieldName = #46020#52265#51648'1'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol33: TcxGridDBColumn
                DataBinding.FieldName = #51217#49688#49884#44036'2'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol34: TcxGridDBColumn
                DataBinding.FieldName = #44592#49324#48376#49324#53076#46300
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol35: TcxGridDBColumn
                DataBinding.FieldName = #44592#49324#51648#49324#53076#46300
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol36: TcxGridDBColumn
                DataBinding.FieldName = #44592#49324#53084#49468#53552
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol37: TcxGridDBColumn
                DataBinding.FieldName = #44256#44061#48264#54840'2'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol38: TcxGridDBColumn
                DataBinding.FieldName = #49892#51228#46321#47197#53084#49468#53552
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol39: TcxGridDBColumn
                DataBinding.FieldName = #48277#51064#53076#46300
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol40: TcxGridDBColumn
                DataBinding.FieldName = #44277#50976#53084
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol41: TcxGridDBColumn
                DataBinding.FieldName = #44256#44061#53076#46300
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxCol42: TcxGridDBColumn
                DataBinding.FieldName = #48176#52264#49884#44036'2'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxCol43: TcxGridDBColumn
                DataBinding.FieldName = #50756#47308#49884#44036'2'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxCol44: TcxGridDBColumn
                DataBinding.FieldName = #52636#48156#51648'X'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxCol45: TcxGridDBColumn
                DataBinding.FieldName = #52636#48156#51648'Y'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxCol46: TcxGridDBColumn
                DataBinding.FieldName = #44256#44061#48264#54840'1'
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
                MinWidth = 0
              end
              object cxCol47: TcxGridDBColumn
                DataBinding.FieldName = #48176#52264#44221#44284
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                HeaderGlyphAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxViewCounselTodayColumn1: TcxGridDBColumn
                DataBinding.FieldName = #49688#51221#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
                MinWidth = 0
              end
              object cxViewCounselTodayColumn2: TcxGridDBColumn
                DataBinding.FieldName = #52636#48156#51648'('#49884#44400#44396')'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxViewCounselTodayColumn3: TcxGridDBColumn
                DataBinding.FieldName = 'DNIS'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 60
              end
              object cxColViewCounselTodayColumn4: TcxGridDBColumn
                DataBinding.FieldName = #44256#44061#46321#44553#53076#46300
                Visible = False
                MinWidth = 0
              end
              object cxViewCounselTodayColumn4: TcxGridDBColumn
                DataBinding.FieldName = #49345#53468#51221#47148
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
                MinWidth = 0
              end
              object cxViewCounselTodayColumn5: TcxGridDBColumn
                DataBinding.FieldName = #54540#47084#49828#53084
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
                MinWidth = 0
              end
              object cxViewCounselTodayColumn6: TcxGridDBColumn
                DataBinding.FieldName = #49688#49688#47308
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 70
              end
              object cxViewCounselTodayColumn7: TcxGridDBColumn
                DataBinding.FieldName = #51201#50836'2'
                MinWidth = 0
              end
              object cxViewCounselTodayColumn8: TcxGridDBColumn
                DataBinding.FieldName = #51217#49688#44396#48516
                PropertiesClassName = 'TcxLabelProperties'
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxViewCounselTodayColumn9: TcxGridDBColumn
                DataBinding.FieldName = #44208#51228#44396#48516
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxViewCounselTodayColumn10: TcxGridDBColumn
                DataBinding.FieldName = #44256#44061#48264#54840'22'
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
                MinWidth = 0
              end
              object cxViewCounselTodayColumn11: TcxGridDBColumn
                DataBinding.FieldName = #48176#52264#44396#48516
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxViewCounselTodayColumn12: TcxGridDBColumn
                DataBinding.FieldName = #44256#44061#46321#44553
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxViewCounselTodayColumn13: TcxGridDBColumn
                DataBinding.FieldName = #44256#44061#47560#51068#47532#51648'('#51092#50668')'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxViewCounselTodayColumn14: TcxGridDBColumn
                DataBinding.FieldName = #51060#48292#53944#54943#49688
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxViewCounselTodayColumn15: TcxGridDBColumn
                DataBinding.FieldName = #44256#44061#53685#54868#50668#48512
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Styles.Content = Frm_Main.cxStyleJON03_61
              end
              object cxViewCounselTodayColumn16: TcxGridDBColumn
                DataBinding.FieldName = #48176#52264#44144#47532
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxViewCounselTodayColumn17: TcxGridDBColumn
                DataBinding.FieldName = #45208#51060#51228#54620
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxViewCounselTodayColumn18: TcxGridDBColumn
                DataBinding.FieldName = #51201#50836'3'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxViewCounselTodayColumn19: TcxGridDBColumn
                DataBinding.FieldName = #49688#51221#49345#45812#50896
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 66
              end
              object cxViewCounselTodayColumn20: TcxGridDBColumn
                DataBinding.FieldName = #53084#47560#45320'2'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxViewCounselTodayColumn21: TcxGridDBColumn
                DataBinding.FieldName = #48277#51064#49849#51064
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxViewCounselTodayColumn22: TcxGridDBColumn
                DataBinding.FieldName = #53084#48296
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxViewCounselTodayColumn23: TcxGridDBColumn
                DataBinding.FieldName = #51648#44553
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
              end
              object cxViewCounselTodayColumn24: TcxGridDBColumn
                DataBinding.FieldName = #48156#51452#48376#49324
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
                MinWidth = 0
              end
              object cxViewCounselTodayColumn25: TcxGridDBColumn
                DataBinding.FieldName = #54980#48520#52649#51204
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxViewCounselTodayColumn26: TcxGridDBColumn
                DataBinding.FieldName = #52852#46300#44552#50529
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxViewCounselTodayColumn27: TcxGridDBColumn
                DataBinding.FieldName = #53441#49569#50672#54633#53084
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Width = 66
              end
              object cxViewCounselTodayColumn28: TcxGridDBColumn
                DataBinding.FieldName = #47532#53084
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
              end
              object cxViewCounselTodayColumn29: TcxGridDBColumn
                DataBinding.FieldName = #44221#48708#51648#44553
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
              end
              object cxViewCounselTodayColumn30: TcxGridDBColumn
                DataBinding.FieldName = #44592#51456#51068#51088
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 80
              end
              object cxViewCounselTodayColumn31: TcxGridDBColumn
                DataBinding.FieldName = #50868#54665#49884#51089#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 80
              end
              object cxViewCounselTodayColumn32: TcxGridDBColumn
                DataBinding.FieldName = #52572#52488#51217#49688#49884#44036#44256#51221
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
                MinWidth = 0
              end
              object cxViewCounselTodayColumn33: TcxGridDBColumn
                DataBinding.FieldName = #46020#52265#51648'X'
                Visible = False
                MinWidth = 0
              end
              object cxViewCounselTodayColumn34: TcxGridDBColumn
                DataBinding.FieldName = #46020#52265#51648'Y'
                Visible = False
                MinWidth = 0
              end
              object cxViewCounselTodayColumn35: TcxGridDBColumn
                DataBinding.FieldName = #54980#48520#44552#50529
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxViewCounselTodayColumn36: TcxGridDBColumn
                DataBinding.FieldName = #52852#46300#50836#44552
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxViewCounselTodayColumn37: TcxGridDBColumn
                DataBinding.FieldName = #47560#51068#49324#50857
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxViewCounselTodayColumn38: TcxGridDBColumn
                DataBinding.FieldName = #53084#47553#51648#49324
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxViewCounselTodayColumn39: TcxGridDBColumn
                DataBinding.FieldName = #53084#47553#51648#49324#47749
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxViewCounselTodayColumn40: TcxGridDBColumn
                DataBinding.FieldName = #53084#47553#45824#54364#48264#54840
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 77
              end
              object cxViewCounselTodayColumn41: TcxGridDBColumn
                DataBinding.FieldName = #44256#44061
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                OnCustomDrawCell = sg_counselColumn87CustomDrawCell
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxViewCounselTodayColumn42: TcxGridDBColumn
                DataBinding.FieldName = #44592#49324
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                OnCustomDrawCell = sg_counselColumn88CustomDrawCell
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxViewCounselTodayColumn43: TcxGridDBColumn
                DataBinding.FieldName = #53084#49468#53552'2'
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
              end
              object cxViewCounselTodayColumn44: TcxGridDBColumn
                DataBinding.FieldName = #48373#49688#53084#48264#54840
                Visible = False
              end
              object cxViewCounselTodayColumn45: TcxGridDBColumn
                DataBinding.FieldName = #52712#49548#49884#44036
                Visible = False
              end
              object cxViewCounselTodayColumn46: TcxGridDBColumn
                DataBinding.FieldName = #48372#51221#50836#44552
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
              end
              object cxViewCounselTodayColumn47: TcxGridDBColumn
                DataBinding.FieldName = #44277#50976#50668#48512
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Images = cxSmallImages
                Properties.Items = <
                  item
                    Description = #54532#47532#48120#50628#51228#55092#53084#44277#50976
                    ImageIndex = 45
                    Value = 'V'
                  end
                  item
                    Description = #51068#48152#51228#55092#53084#44277#50976
                    ImageIndex = 43
                    Value = 'N'
                  end>
                HeaderAlignmentHorz = taCenter
              end
              object cxViewCounselTodayColumn48: TcxGridDBColumn
                DataBinding.FieldName = #52852#46300#49849#51064
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
              end
              object cxViewCounselTodayColumn49: TcxGridDBColumn
                DataBinding.FieldName = #51648#50896#44552
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
              end
              object cxViewCounselTodayColumn50: TcxGridDBColumn
                DataBinding.FieldName = #44592#53440#51648#44553#44552
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
              end
              object cxViewCounselTodayColumn51: TcxGridDBColumn
                DataBinding.FieldName = #51648#50896
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.DisplayFormat = ',0;-,0'
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
              end
              object cxViewCounselTodayColumn52: TcxGridDBColumn
                DataBinding.FieldName = #49884#44036#51221#47148
                Visible = False
              end
              object cxViewCounselTodayColumn53: TcxGridDBColumn
                DataBinding.FieldName = #49345#45812#50896'ID'#51060#47492
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object cxViewCounselTodayColumn54: TcxGridDBColumn
                DataBinding.FieldName = #48176#52264#51648#50672
                HeaderAlignmentHorz = taCenter
              end
              object cxViewCounselTodayColumn55: TcxGridDBColumn
                DataBinding.FieldName = #48176#52264#51648#50672#49884#44036
                Visible = False
              end
              object cxViewCounselTodayColumn56: TcxGridDBColumn
                DataBinding.FieldName = 'KM'#44277#50976
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object cxViewCounselTodayColumn57: TcxGridDBColumn
                DataBinding.FieldName = #48372#54744#47308#47924#47308
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object cxViewCounselTodayColumn58: TcxGridDBColumn
                DataBinding.FieldName = 'odb_wk_sabun'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object cxViewCounselTodayColumn59: TcxGridDBColumn
                DataBinding.FieldName = #54788#44552
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
              end
              object cxViewCounselTodayColumn60: TcxGridDBColumn
                DataBinding.FieldName = #53084#54056#49828
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object cxViewCounselTodayColumn61: TcxGridDBColumn
                DataBinding.FieldName = #44144#47532
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
            end
            object cxLevel1: TcxGridLevel
              GridView = cxViewCounselToday
            end
          end
          object Grd2: TcxGrid
            Left = 400
            Top = 0
            Width = 676
            Height = 548
            Align = alClient
            BevelEdges = [beLeft, beTop, beBottom]
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = cxcbsNone
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            LookAndFeel.ScrollbarMode = sbmDefault
            OnMouseLeave = Grd2MouseLeave
            object sg_counsel: TcxGridDBTableView
              PopupMenu = pm_Counsel
              OnKeyDown = sg_counselKeyDown
              OnMouseMove = sg_counselMouseMove
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
              FilterBox.CustomizeDialog = False
              FilterBox.Visible = fvNever
              ScrollbarAnnotations.CustomAnnotations = <>
              OnCellClick = sg_counselCellClick
              OnCellDblClick = sg_counselCellDblClick
              OnCustomDrawCell = sg_counselCustomDrawCell
              OnGetCellHeight = sg_counselGetCellHeight
              DataController.Filter.Options = [fcoShowOperatorDescription, fcoSoftNull]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <
                item
                  Links = <>
                  SummaryItems = <
                    item
                    end>
                end>
              DataController.OnSortingChanged = sg_counselDataControllerSortingChanged
              Filtering.MRUItemsList = False
              Filtering.ColumnMRUItemsList = False
              Filtering.ColumnMRUItemsListCount = 0
              OptionsBehavior.PostponedSynchronization = False
              OptionsBehavior.CopyCaptionsToClipboard = False
              OptionsBehavior.DragHighlighting = False
              OptionsBehavior.DragOpening = False
              OptionsBehavior.DragScrolling = False
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.ColumnHeaderHints = False
              OptionsBehavior.CopyPreviewToClipboard = False
              OptionsBehavior.ExpandMasterRowOnDblClick = False
              OptionsBehavior.ImmediateEditor = False
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnsQuickCustomizationReordering = qcrEnabled
              OptionsCustomize.DataRowSizing = True
              OptionsData.Appending = True
              OptionsSelection.CellSelect = False
              OptionsSelection.MultiSelect = True
              OptionsSelection.HideFocusRectOnExit = False
              OptionsSelection.InvertSelect = False
              OptionsSelection.UnselectFocusedRecordOnExit = False
              OptionsView.CellEndEllipsis = True
              OptionsView.FocusRect = False
              OptionsView.NoDataToDisplayInfoText = '  '
              OptionsView.DataRowHeight = 23
              OptionsView.ExpandButtonsForEmptyDetails = False
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 23
              OptionsView.IndicatorWidth = 0
              Styles.OnGetContentStyle = sg_counselStylesGetContentStyle
              Styles.Selection = Frm_Main.cxSTTChart
              OnColumnPosChanged = sg_counselColumnPosChanged
              OnColumnSizeChanged = sg_counselColumnSizeChanged
              object sg_counselColumn1: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #45824#54364#48264#54840
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn2: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #48156#51452#51648#49324#47749
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
                Width = 83
              end
              object sg_counselColumn3: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #49345#53468
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Images = Frm_Main.cximgOrderStatus
                Properties.Items = <
                  item
                    Description = #51217#49688
                    ImageIndex = 0
                    Value = '0'
                  end
                  item
                    Description = #48176#52264
                    ImageIndex = 1
                    Value = '1'
                  end
                  item
                    Description = #50756#47308
                    ImageIndex = 2
                    Value = '2'
                  end
                  item
                    Description = #44053#51228
                    ImageIndex = 3
                    Value = '3'
                  end
                  item
                    Description = #47928#51032
                    ImageIndex = 4
                    Value = '4'
                  end
                  item
                    Description = #45824#44592
                    ImageIndex = 5
                    Value = '5'
                  end
                  item
                    Description = #52712#49548
                    ImageIndex = 6
                    Value = '8'
                  end
                  item
                    Description = #49688#51221
                    ImageIndex = 7
                    Value = '9'
                  end
                  item
                    Description = #50696#50557
                    ImageIndex = 8
                    Value = 'R'
                  end
                  item
                    Description = #48176#52264#51473
                    ImageIndex = 9
                    Value = 'B'
                  end
                  item
                    Description = #44540#48176
                    ImageIndex = 10
                    Value = 'C'
                  end
                  item
                    Description = #44540#48176
                    ImageIndex = 10
                    Value = 'M'
                  end
                  item
                    Description = #50868#54665
                    ImageIndex = 19
                    Value = 'D'
                  end>
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
                Width = 101
              end
              object sg_counselColumn4: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44256#44061#48264#54840
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
                OnCustomDrawHeader = sg_counselColumn5CustomDrawHeader
              end
              object sg_counselColumn5: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44256#44061#47749
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
                OnCustomDrawHeader = sg_counselColumn5CustomDrawHeader
              end
              object sg_counselColumn6: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #54943#49688
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = ',0;-,0'
                OnGetCellHint = sg_counselColumn1GetCellHint
                OnGetDisplayText = sg_counselColumn6GetDisplayText
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn8: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44221#44284#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn7: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #51217#49688#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn9: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #48176#52264#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn10: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #50756#47308#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn11: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #52636#48156#51648
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnCustomDrawCell = sg_counselColumn11CustomDrawCell
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
                OnCustomDrawHeader = sg_counselColumn11CustomDrawHeader
              end
              object sg_counselColumn12: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #46020#52265#51648
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
                OnCustomDrawHeader = sg_counselColumn12CustomDrawHeader
              end
              object sg_counselColumn14: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #50836#44552
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                Properties.ReadOnly = True
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn15: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #49345#45812#50896
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn16: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44592#49324#47749
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
                OnCustomDrawHeader = sg_counselColumn5CustomDrawHeader
              end
              object sg_counselColumn17: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44592#49324#49324#48264
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
                OnCustomDrawHeader = sg_counselColumn5CustomDrawHeader
              end
              object sg_counselColumn18: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44592#49324#50948#52824
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
                OnCustomDrawHeader = sg_counselColumn5CustomDrawHeader
              end
              object sg_counselColumn19: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #51201#50836
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn20: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44256#44061#44396#48516
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn21: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #48277#51064#47749
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn22: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44208#51228
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn23: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #52712#49548#49324#50976
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn24: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #51217#49688#48264#54840
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
                SortIndex = 0
                SortOrder = soDescending
              end
              object sg_counselColumn42: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #52572#52488#51217#49688#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn43: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #51648#45212#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn25: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44277#50976
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn26: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #48156#51452#51648#49324
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn27: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #47700#47784
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn28: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #54788#51116#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn29: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #53084#49468#53552#53076#46300
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn30: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #52636#48156#51648'1'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn31: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #46020#52265#51648'1'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn32: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #51217#49688#49884#44036'2'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn33: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44592#49324#48376#49324#53076#46300
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn34: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44592#49324#51648#49324#53076#46300
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn35: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44592#49324#53084#49468#53552
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn36: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44256#44061#48264#54840'2'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn37: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #49892#51228#46321#47197#53084#49468#53552
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn38: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #48277#51064#53076#46300
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn39: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44277#50976#53084
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn40: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44256#44061#53076#46300
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object sg_counselColumn13: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #48176#52264#49884#44036'2'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn41: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #50756#47308#49884#44036'2'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn44: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #52636#48156#51648'X'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn45: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #52636#48156#51648'Y'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn46: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44256#44061#48264#54840'1'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn47: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #48176#52264#44221#44284
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn48: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #49688#51221#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn49: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #52636#48156#51648'('#49884#44400#44396')'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn50: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = 'DNIS'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 60
              end
              object cxCol_counselColumn51: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44256#44061#46321#44553#53076#46300
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn51: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #49345#53468#51221#47148
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn52: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #54540#47084#49828#53084
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn53: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #49688#49688#47308
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 70
              end
              object sg_counselColumn54: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #51201#50836'2'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxgrdbclmn_counselColumn55: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #51217#49688#44396#48516
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 54
              end
              object sg_counselColumn55: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44208#51228#44396#48516
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn56: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44256#44061#48264#54840'22'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn57: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #48176#52264#44396#48516
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 71
              end
              object sg_counselColumn58: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44256#44061#46321#44553
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn59: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44256#44061#47560#51068#47532#51648'('#51092#50668')'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 78
              end
              object sg_counselColumn60: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #51060#48292#53944#54943#49688
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 66
              end
              object sg_counselColumn61: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44256#44061#53685#54868#50668#48512
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Styles.Content = Frm_Main.cxStyleJON03_61
                Width = 96
              end
              object sg_counselColumn62: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #48176#52264#44144#47532
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn63: TcxGridDBColumn
                DataBinding.FieldName = #45208#51060#51228#54620
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 66
              end
              object sg_counselColumn64: TcxGridDBColumn
                DataBinding.FieldName = #51201#50836'3'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn65: TcxGridDBColumn
                DataBinding.FieldName = #49688#51221#49345#45812#50896
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn66: TcxGridDBColumn
                DataBinding.FieldName = #53084#47560#45320'2'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn67: TcxGridDBColumn
                DataBinding.FieldName = #48277#51064#49849#51064
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn68: TcxGridDBColumn
                DataBinding.FieldName = #53084#48296
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn69: TcxGridDBColumn
                DataBinding.FieldName = #51648#44553
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
              end
              object sg_counselColumn70: TcxGridDBColumn
                DataBinding.FieldName = #48156#51452#48376#49324
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
                MinWidth = 0
              end
              object sg_counselColumn71: TcxGridDBColumn
                DataBinding.FieldName = #54980#48520#52649#51204
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn72: TcxGridDBColumn
                DataBinding.FieldName = #52852#46300#44552#50529
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn73: TcxGridDBColumn
                DataBinding.FieldName = #53441#49569#50672#54633#53084
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
              end
              object sg_counselColumn74: TcxGridDBColumn
                DataBinding.FieldName = #47532#53084
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
              end
              object sg_counselColumn75: TcxGridDBColumn
                DataBinding.FieldName = #44221#48708#51648#44553
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
              end
              object sg_counselColumn76: TcxGridDBColumn
                DataBinding.FieldName = #44592#51456#51068#51088
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 80
              end
              object sg_counselColumn77: TcxGridDBColumn
                DataBinding.FieldName = #50868#54665#49884#51089#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 80
              end
              object sg_counselColumn78: TcxGridDBColumn
                DataBinding.FieldName = #52572#52488#51217#49688#49884#44036#44256#51221
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
                MinWidth = 0
              end
              object sg_counselColumn79: TcxGridDBColumn
                DataBinding.FieldName = #46020#52265#51648'X'
                Visible = False
                MinWidth = 0
              end
              object sg_counselColumn80: TcxGridDBColumn
                DataBinding.FieldName = #46020#52265#51648'Y'
                Visible = False
                MinWidth = 0
              end
              object sg_counselColumn81: TcxGridDBColumn
                DataBinding.FieldName = #54980#48520#44552#50529
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn82: TcxGridDBColumn
                DataBinding.FieldName = #52852#46300#50836#44552
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn83: TcxGridDBColumn
                DataBinding.FieldName = #47560#51068#49324#50857
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn84: TcxGridDBColumn
                DataBinding.FieldName = #53084#47553#51648#49324
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn85: TcxGridDBColumn
                DataBinding.FieldName = #53084#47553#51648#49324#47749
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 77
              end
              object sg_counselColumn86: TcxGridDBColumn
                DataBinding.FieldName = #53084#47553#45824#54364#48264#54840
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 77
              end
              object sg_counselColumn87: TcxGridDBColumn
                DataBinding.FieldName = #44256#44061
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                OnCustomDrawCell = sg_counselColumn87CustomDrawCell
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 40
              end
              object sg_counselColumn88: TcxGridDBColumn
                DataBinding.FieldName = #44592#49324
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                OnCustomDrawCell = sg_counselColumn88CustomDrawCell
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object sg_counselColumn89: TcxGridDBColumn
                DataBinding.FieldName = #53084#49468#53552'2'
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
              end
              object sg_counselColumn90: TcxGridDBColumn
                DataBinding.FieldName = #48373#49688#53084#48264#54840
                Visible = False
              end
              object sg_counselColumn91: TcxGridDBColumn
                DataBinding.FieldName = #52712#49548#49884#44036
                Visible = False
              end
              object sg_counselColumn92: TcxGridDBColumn
                DataBinding.FieldName = #48372#51221#50836#44552
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
              end
              object sg_counselColumn93: TcxGridDBColumn
                DataBinding.FieldName = #44277#50976#50668#48512
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Images = cxSmallImages
                Properties.Items = <
                  item
                    Description = #54532#47532#48120#50628#51228#55092#53084#44277#50976
                    ImageIndex = 45
                    Value = 'V'
                  end
                  item
                    Description = #51068#48152#51228#55092#53084#44277#50976
                    ImageIndex = 43
                    Value = 'N'
                  end>
                HeaderAlignmentHorz = taCenter
              end
              object sg_counselColumn94: TcxGridDBColumn
                DataBinding.FieldName = #52852#46300#49849#51064
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object sg_counselColumn95: TcxGridDBColumn
                DataBinding.FieldName = #51648#50896#44552
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object sg_counselColumn96: TcxGridDBColumn
                DataBinding.FieldName = #44592#53440#51648#44553#44552
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object sg_counselColumn97: TcxGridDBColumn
                DataBinding.FieldName = #51648#50896
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object sg_counselColumn98: TcxGridDBColumn
                DataBinding.FieldName = #49884#44036#51221#47148
                Visible = False
              end
              object sg_counselColumn99: TcxGridDBColumn
                DataBinding.FieldName = #49345#45812#50896'ID'#51060#47492
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object sg_counselColumn100: TcxGridDBColumn
                DataBinding.FieldName = #48176#52264#51648#50672
                HeaderAlignmentHorz = taCenter
              end
              object sg_counselColumn101: TcxGridDBColumn
                DataBinding.FieldName = #48176#52264#51648#50672#49884#44036
                Visible = False
              end
              object sg_counselColumn102: TcxGridDBColumn
                DataBinding.FieldName = 'KM'#44277#50976
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object sg_counselColumn103: TcxGridDBColumn
                DataBinding.FieldName = #48372#54744#47308#47924#47308
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object sg_counselColumn104: TcxGridDBColumn
                DataBinding.FieldName = 'odb_wk_sabun'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object sg_counselColumn105: TcxGridDBColumn
                DataBinding.FieldName = #54788#44552
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
              end
              object sg_counselColumn106: TcxGridDBColumn
                DataBinding.FieldName = #53084#54056#49828
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object sg_counselColumn107: TcxGridDBColumn
                DataBinding.FieldName = #44144#47532
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
            end
            object GrdLevel2: TcxGridLevel
              GridView = sg_counsel
            end
          end
          object grpSetBrch_select: TcxGroupBox
            Left = 645
            Top = 251
            Caption = ' SMS Charge'
            Style.BorderStyle = ebsFlat
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 2
            Visible = False
            Height = 93
            Width = 225
            object Shape13: TShape
              Left = 3
              Top = 17
              Width = 219
              Height = 67
              Align = alClient
              Brush.Color = 13285815
              Pen.Color = 13285815
              ExplicitLeft = 6
              ExplicitTop = 20
            end
            object cb_brName: TcxComboBox
              Left = 3
              Top = 35
              AutoSize = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                '1'
                '1')
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 0
              OnClick = cb_brNameClick
              Height = 19
              Width = 219
            end
            object cxLabel1: TcxLabel
              Left = 10
              Top = 17
              Caption = #51648#49324#49440#53469
              Style.BorderStyle = ebsNone
              Style.Shadow = False
              Transparent = True
            end
            object Lbl_SmsCash: TcxLabel
              Left = 11
              Top = 63
              Caption = 'SMS'#52880#49772
              Style.BorderStyle = ebsNone
              Style.Shadow = False
              Transparent = True
            end
            object btn2: TcxButton
              Left = 125
              Top = 60
              Width = 45
              Height = 23
              Cursor = crHandPoint
              Caption = #54869' '#51064
              LookAndFeel.SkinName = 'Sharp'
              TabOrder = 1
              OnClick = btn2Click
            end
            object btn3: TcxButton
              Left = 175
              Top = 60
              Width = 45
              Height = 23
              Cursor = crHandPoint
              Caption = #52712' '#49548
              LookAndFeel.SkinName = 'Sharp'
              TabOrder = 2
              OnClick = btn3Click
            end
          end
          object grpSetExcel: TcxGroupBox
            Left = 688
            Top = 426
            Caption = #50641#49472#51064#51613
            Style.BorderStyle = ebsFlat
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 3
            Visible = False
            Height = 93
            Width = 225
            object Label32: TLabel
              Left = 178
              Top = 1
              Width = 36
              Height = 15
              Caption = #51064#51613#53412
              Transparent = True
              Visible = False
            end
            object Shape11: TShape
              Left = 3
              Top = 17
              Width = 219
              Height = 67
              Align = alClient
              Brush.Color = 13285815
              Pen.Color = 13285815
              ExplicitLeft = 6
              ExplicitTop = 20
            end
            object Edit1: TcxCurrencyEdit
              Left = 9
              Top = 39
              AutoSize = False
              Properties.AssignedValues.DisplayFormat = True
              Properties.AssignedValues.EditFormat = True
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 0
              Height = 20
              Width = 71
            end
            object btn_sms_con: TcxButton
              Left = 89
              Top = 36
              Width = 60
              Height = 28
              Cursor = crHandPoint
              Caption = #51064#51613#54869#51064
              Enabled = False
              LookAndFeel.SkinName = 'Sharp'
              TabOrder = 1
              OnClick = btn_sms_conClick
            end
            object btn1: TcxButton
              Left = 151
              Top = 36
              Width = 60
              Height = 28
              Cursor = crHandPoint
              Caption = #45803#44592
              LookAndFeel.SkinName = 'Sharp'
              TabOrder = 2
              OnClick = btn1Click
            end
          end
          object pnl_KakaoList: TPanel
            Left = 0
            Top = 0
            Width = 400
            Height = 548
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 4
            Visible = False
            object Panel4: TPanel
              Left = 0
              Top = 0
              Width = 400
              Height = 36
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Shape4: TShape
                Left = 482
                Top = 4
                Width = 177
                Height = 24
                Pen.Color = 12566402
                Shape = stRoundRect
              end
              object cb_Option: TcxComboBox
                Left = 410
                Top = 3
                AutoSize = False
                Properties.DropDownListStyle = lsFixedList
                Properties.Items.Strings = (
                  #45817#51068
                  #52572#44540'4'#51068
                  #51649#51217#49440#53469)
                Properties.OnChange = cb_OptionPropertiesChange
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
                OnKeyDown = cb_OptionKeyDown
                Height = 26
                Width = 76
              end
              object cxLabel4: TcxLabel
                Left = 353
                Top = 3
                AutoSize = False
                Caption = #51312#54924#51068#51088
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsFlat
                Style.Color = clWhite
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #47569#51008' '#44256#46357
                Style.Font.Style = []
                Style.LookAndFeel.NativeStyle = False
                Style.TextColor = 16744448
                Style.IsFontAssigned = True
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Height = 26
                Width = 60
                AnchorX = 383
                AnchorY = 16
              end
              object cxLabel5: TcxLabel
                Left = 7
                Top = 3
                AutoSize = False
                Caption = #49548'     '#49549
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsFlat
                Style.Color = clWhite
                Style.Font.Charset = HANGEUL_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #47569#51008' '#44256#46357
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Height = 26
                Width = 75
                AnchorX = 45
                AnchorY = 16
              end
              object lblSosokName: TcxLabel
                Left = 79
                Top = 3
                AutoSize = False
                Caption = #49548#49549
                ParentColor = False
                Style.BorderStyle = ebsSingle
                Style.LookAndFeel.NativeStyle = False
                Style.TextColor = 13719147
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Height = 26
                Width = 273
                AnchorX = 216
                AnchorY = 16
              end
              object cxDtStart: TcxDateEdit
                Left = 484
                Top = 3
                AutoSize = False
                BeepOnEnter = False
                EditValue = 0d
                ParentShowHint = False
                Properties.Alignment.Horz = taCenter
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
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.SkinName = 'Sharp'
                StyleHot.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.SkinName = 'Sharp'
                TabOrder = 4
                Height = 26
                Width = 87
              end
              object cxDtEnd: TcxDateEdit
                Left = 579
                Top = 3
                AutoSize = False
                BeepOnEnter = False
                EditValue = 0d
                ParentShowHint = False
                Properties.Alignment.Horz = taCenter
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
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.SkinName = 'Sharp'
                StyleHot.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.SkinName = 'Sharp'
                TabOrder = 5
                Height = 26
                Width = 87
              end
              object cxLabel6: TcxLabel
                Left = 569
                Top = 8
                AutoSize = False
                Caption = '~'
                ParentColor = False
                Style.BorderStyle = ebsNone
                Style.Color = 16441805
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Transparent = True
                Height = 17
                Width = 12
                AnchorX = 575
                AnchorY = 17
              end
              object edtDriveNo: TcxTextEdit
                Left = 729
                Top = 3
                AutoSize = False
                Properties.ImeMode = imSAlpha
                Style.LookAndFeel.NativeStyle = False
                Style.LookAndFeel.SkinName = 'Sharp'
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.SkinName = 'Sharp'
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.SkinName = 'Sharp'
                StyleHot.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.SkinName = 'Sharp'
                TabOrder = 7
                OnKeyDown = edtDriveNoKeyDown
                OnKeyUp = edtDriveNoKeyUp
                Height = 26
                Width = 94
              end
              object cxLabel14: TcxLabel
                Left = 669
                Top = 3
                AutoSize = False
                Caption = #50868#54665#48264#54840
                ParentColor = False
                ParentFont = False
                Style.BorderStyle = ebsFlat
                Style.Color = clWhite
                Style.Font.Charset = HANGEUL_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = #47569#51008' '#44256#46357
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.ShadowedColor = clGray
                Height = 26
                Width = 63
                AnchorX = 701
                AnchorY = 16
              end
              object btnSearch_Kakao: TcxButton
                Left = 824
                Top = 3
                Width = 78
                Height = 26
                Cursor = crHandPoint
                Caption = #44160#49353
                Colors.Normal = 16773362
                Colors.Pressed = 16644080
                LookAndFeel.Kind = lfFlat
                LookAndFeel.NativeStyle = False
                LookAndFeel.SkinName = 'Sharp'
                OptionsImage.Layout = blGlyphBottom
                TabOrder = 9
                OnClick = btnSearch_KakaoClick
              end
              object btnExcelA4: TcxButton
                Left = 903
                Top = 3
                Width = 78
                Height = 26
                Cursor = crHandPoint
                Caption = #50641#49472
                Colors.Normal = 16773362
                Colors.Pressed = 16644080
                LookAndFeel.Kind = lfFlat
                LookAndFeel.NativeStyle = False
                LookAndFeel.SkinName = 'Sharp'
                OptionsImage.Layout = blGlyphBottom
                TabOrder = 10
                OnClick = btnExcelA4Click
              end
            end
            object GridKakaoList: TcxGrid
              Left = 0
              Top = 36
              Width = 400
              Height = 512
              Align = alClient
              TabOrder = 1
              TabStop = False
              LookAndFeel.NativeStyle = False
              object GridKakaoListView: TcxGridDBTableView
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
                DataController.DataModeController.SmartRefresh = True
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = ',0;-,0'
                    Kind = skCount
                    Column = GridKakaoListViewColumn1
                  end>
                DataController.Summary.SummaryGroups = <>
                DataController.OnSortingChanged = GridKakaoListViewDataControllerSortingChanged
                OptionsCustomize.ColumnFiltering = False
                OptionsCustomize.ColumnMoving = False
                OptionsData.Editing = False
                OptionsView.NoDataToDisplayInfoText = ' '
                OptionsView.DataRowHeight = 22
                OptionsView.Footer = True
                OptionsView.FooterAutoHeight = True
                OptionsView.GroupByBox = False
                OptionsView.HeaderHeight = 23
                Styles.Background = Frm_Main.cxJON03_Kakao
                OnColumnHeaderClick = GridKakaoListViewColumnHeaderClick
                object GridKakaoListViewColumn1: TcxGridDBColumn
                  DataBinding.FieldName = 'No'
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  FooterAlignmentHorz = taRightJustify
                  HeaderAlignmentHorz = taCenter
                  Width = 45
                end
                object GridKakaoListViewColumn2: TcxGridDBColumn
                  DataBinding.FieldName = #49688#51452#48376#49324
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  FooterAlignmentHorz = taRightJustify
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 97
                end
                object GridKakaoListViewColumn3: TcxGridDBColumn
                  DataBinding.FieldName = #49688#51452#51648#49324
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  FooterAlignmentHorz = taRightJustify
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 102
                end
                object GridKakaoListViewColumn4: TcxGridDBColumn
                  DataBinding.FieldName = #49688#51452#53084#49468#53552
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  FooterAlignmentHorz = taRightJustify
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 111
                end
                object GridKakaoListViewColumn21: TcxGridDBColumn
                  DataBinding.FieldName = #44592#49324#49324#48264
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Vert = taVCenter
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 54
                end
                object GridKakaoListViewColumn22: TcxGridDBColumn
                  DataBinding.FieldName = #44592#49324#47749
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Vert = taVCenter
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 68
                end
                object GridKakaoListViewColumn23: TcxGridDBColumn
                  DataBinding.FieldName = #44256#44061#48264#54840
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Vert = taVCenter
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 103
                end
                object GridKakaoListViewColumn5: TcxGridDBColumn
                  DataBinding.FieldName = #52636')'#49884#46020
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  FooterAlignmentHorz = taRightJustify
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 48
                end
                object GridKakaoListViewColumn6: TcxGridDBColumn
                  DataBinding.FieldName = #52636')'#49884#44400#44396
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  FooterAlignmentHorz = taRightJustify
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 97
                end
                object GridKakaoListViewColumn7: TcxGridDBColumn
                  DataBinding.FieldName = #52636')'#51021#47732#46041
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  FooterAlignmentHorz = taRightJustify
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 80
                end
                object GridKakaoListViewColumn8: TcxGridDBColumn
                  DataBinding.FieldName = #52636#48156#51648#47749
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 160
                end
                object GridKakaoListViewColumn9: TcxGridDBColumn
                  DataBinding.FieldName = #52636')Lon'
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 64
                end
                object GridKakaoListViewColumn10: TcxGridDBColumn
                  DataBinding.FieldName = #52636')Lat'
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                end
                object GridKakaoListViewColumn11: TcxGridDBColumn
                  DataBinding.FieldName = #46020')'#49884#46020
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 48
                end
                object GridKakaoListViewColumn12: TcxGridDBColumn
                  DataBinding.FieldName = #46020')'#49884#44400#44396
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 97
                end
                object GridKakaoListViewColumn13: TcxGridDBColumn
                  DataBinding.FieldName = #46020')'#51021#47732#46041
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 80
                end
                object GridKakaoListViewColumn14: TcxGridDBColumn
                  DataBinding.FieldName = #46020#52265#51648#47749
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 160
                end
                object GridKakaoListViewColumn15: TcxGridDBColumn
                  DataBinding.FieldName = #46020')Lon'
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 64
                end
                object GridKakaoListViewColumn16: TcxGridDBColumn
                  DataBinding.FieldName = #46020')Lat'
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                end
                object GridKakaoListViewColumn17: TcxGridDBColumn
                  DataBinding.FieldName = #51217#49688#49884#44036
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 125
                end
                object GridKakaoListViewColumn18: TcxGridDBColumn
                  DataBinding.FieldName = #48176#52264#49884#44036
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 125
                end
                object GridKakaoListViewColumn19: TcxGridDBColumn
                  DataBinding.FieldName = #50868#54665#49884#51089#49884#44036
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 125
                end
                object GridKakaoListViewColumn20: TcxGridDBColumn
                  DataBinding.FieldName = #50756#47308#49884#44036
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 125
                end
              end
              object GridKakaoListLevel: TcxGridLevel
                GridView = GridKakaoListView
              end
            end
          end
          object cxGrid11: TcxGrid
            Left = 675
            Top = 369
            Width = 245
            Height = 93
            BevelEdges = [beLeft, beTop, beBottom]
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = cxcbsNone
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Visible = False
            LookAndFeel.NativeStyle = False
            LookAndFeel.ScrollbarMode = sbmDefault
            OnMouseLeave = Grd2MouseLeave
            object sg_xlsView: TcxGridDBTableView
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
              FilterBox.CustomizeDialog = False
              FilterBox.Visible = fvNever
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.Filter.Options = [fcoShowOperatorDescription, fcoSoftNull]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <
                item
                  Links = <>
                  SummaryItems = <
                    item
                    end>
                end>
              DataController.OnSortingChanged = sg_counselDataControllerSortingChanged
              Filtering.MRUItemsList = False
              Filtering.ColumnMRUItemsList = False
              Filtering.ColumnMRUItemsListCount = 0
              OptionsBehavior.PostponedSynchronization = False
              OptionsBehavior.CopyCaptionsToClipboard = False
              OptionsBehavior.DragHighlighting = False
              OptionsBehavior.DragOpening = False
              OptionsBehavior.DragScrolling = False
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.ColumnHeaderHints = False
              OptionsBehavior.CopyPreviewToClipboard = False
              OptionsBehavior.ExpandMasterRowOnDblClick = False
              OptionsBehavior.ImmediateEditor = False
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnsQuickCustomizationReordering = qcrEnabled
              OptionsCustomize.DataRowSizing = True
              OptionsData.Appending = True
              OptionsSelection.CellSelect = False
              OptionsSelection.HideFocusRectOnExit = False
              OptionsSelection.InvertSelect = False
              OptionsSelection.UnselectFocusedRecordOnExit = False
              OptionsView.CellEndEllipsis = True
              OptionsView.FocusRect = False
              OptionsView.NoDataToDisplayInfoText = '  '
              OptionsView.DataRowHeight = 23
              OptionsView.ExpandButtonsForEmptyDetails = False
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 23
              OptionsView.IndicatorWidth = 0
              Styles.OnGetContentStyle = sg_counselStylesGetContentStyle
              object cxGridDBColumn60: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #45824#54364#48264#54840
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn61: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #48156#51452#51648#49324#47749
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
                Width = 83
              end
              object cxGridDBColumn62: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #49345#53468
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Images = Frm_Main.cximgOrderStatus
                Properties.Items = <
                  item
                    Description = #51217#49688
                    ImageIndex = 0
                    Value = '0'
                  end
                  item
                    Description = #48176#52264
                    ImageIndex = 1
                    Value = '1'
                  end
                  item
                    Description = #50756#47308
                    ImageIndex = 2
                    Value = '2'
                  end
                  item
                    Description = #44053#51228
                    ImageIndex = 3
                    Value = '3'
                  end
                  item
                    Description = #47928#51032
                    ImageIndex = 4
                    Value = '4'
                  end
                  item
                    Description = #45824#44592
                    ImageIndex = 5
                    Value = '5'
                  end
                  item
                    Description = #52712#49548
                    ImageIndex = 6
                    Value = '8'
                  end
                  item
                    Description = #49688#51221
                    ImageIndex = 7
                    Value = '9'
                  end
                  item
                    Description = #50696#50557
                    ImageIndex = 8
                    Value = 'R'
                  end
                  item
                    Description = #48176#52264#51473
                    ImageIndex = 9
                    Value = 'B'
                  end
                  item
                    Description = #44540#48176
                    ImageIndex = 10
                    Value = 'C'
                  end
                  item
                    Description = #44540#48176
                    ImageIndex = 10
                    Value = 'M'
                  end
                  item
                    Description = #50868#54665
                    ImageIndex = 19
                    Value = 'D'
                  end>
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
                Width = 101
              end
              object cxGridDBColumn63: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44256#44061#48264#54840
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
                OnCustomDrawHeader = sg_counselColumn5CustomDrawHeader
              end
              object cxGridDBColumn64: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44256#44061#47749
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
                OnCustomDrawHeader = sg_counselColumn5CustomDrawHeader
              end
              object cxGridDBColumn65: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #54943#49688
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = ',0;-,0'
                OnGetCellHint = sg_counselColumn1GetCellHint
                OnGetDisplayText = sg_counselColumn6GetDisplayText
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn66: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44221#44284#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn67: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #51217#49688#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn68: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #48176#52264#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn69: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #50756#47308#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn70: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #52636#48156#51648
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnCustomDrawCell = sg_counselColumn11CustomDrawCell
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
                OnCustomDrawHeader = sg_counselColumn11CustomDrawHeader
              end
              object cxGridDBColumn71: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #46020#52265#51648
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
                OnCustomDrawHeader = sg_counselColumn12CustomDrawHeader
              end
              object cxGridDBColumn72: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #50836#44552
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                Properties.ReadOnly = True
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn73: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #49345#45812#50896
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn74: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44592#49324#47749
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
                OnCustomDrawHeader = sg_counselColumn5CustomDrawHeader
              end
              object cxGridDBColumn75: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44592#49324#49324#48264
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
                OnCustomDrawHeader = sg_counselColumn5CustomDrawHeader
              end
              object cxGridDBColumn76: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44592#49324#50948#52824
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
                OnCustomDrawHeader = sg_counselColumn5CustomDrawHeader
              end
              object cxGridDBColumn77: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #51201#50836
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn78: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44256#44061#44396#48516
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn79: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #48277#51064#47749
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn80: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44208#51228
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn81: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #52712#49548#49324#50976
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn82: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #51217#49688#48264#54840
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
                SortIndex = 0
                SortOrder = soDescending
              end
              object cxGridDBColumn83: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #52572#52488#51217#49688#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxGridDBColumn84: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #51648#45212#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxGridDBColumn85: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44277#50976
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn86: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #48156#51452#51648#49324
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn87: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #47700#47784
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn88: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #54788#51116#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn89: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #53084#49468#53552#53076#46300
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn90: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #52636#48156#51648'1'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn91: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #46020#52265#51648'1'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn92: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #51217#49688#49884#44036'2'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn93: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44592#49324#48376#49324#53076#46300
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn94: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44592#49324#51648#49324#53076#46300
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn95: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44592#49324#53084#49468#53552
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn96: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44256#44061#48264#54840'2'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn97: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #49892#51228#46321#47197#53084#49468#53552
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn98: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #48277#51064#53076#46300
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn99: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44277#50976#53084
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn100: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44256#44061#53076#46300
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn101: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #48176#52264#49884#44036'2'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxGridDBColumn102: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #50756#47308#49884#44036'2'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxGridDBColumn103: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #52636#48156#51648'X'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxGridDBColumn104: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #52636#48156#51648'Y'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxGridDBColumn105: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44256#44061#48264#54840'1'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxGridDBColumn106: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #48176#52264#44221#44284
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxGridDBColumn107: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #49688#51221#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxGridDBColumn108: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #52636#48156#51648'('#49884#44400#44396')'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxGridDBColumn109: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = 'DNIS'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 60
              end
              object cxGridDBColumn110: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44256#44061#46321#44553#53076#46300
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxGridDBColumn111: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #49345#53468#51221#47148
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxGridDBColumn112: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #54540#47084#49828#53084
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxGridDBColumn113: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #49688#49688#47308
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 70
              end
              object cxGridDBColumn114: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #51201#50836'2'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.GroupFooters = False
                Options.Grouping = False
              end
              object cxGridDBColumn115: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #51217#49688#44396#48516
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 54
              end
              object cxGridDBColumn116: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44208#51228#44396#48516
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxGridDBColumn117: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44256#44061#48264#54840'22'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxGridDBColumn118: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #48176#52264#44396#48516
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 71
              end
              object cxGridDBColumn119: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44256#44061#46321#44553
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxGridDBColumn120: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44256#44061#47560#51068#47532#51648'('#51092#50668')'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 78
              end
              object cxGridDBColumn121: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #51060#48292#53944#54943#49688
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 66
              end
              object cxGridDBColumn122: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #44256#44061#53685#54868#50668#48512
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Styles.Content = Frm_Main.cxStyleJON03_61
                Width = 96
              end
              object cxGridDBColumn123: TcxGridDBColumn
                AlternateCaption = '0'
                DataBinding.FieldName = #48176#52264#44144#47532
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxGridDBColumn124: TcxGridDBColumn
                DataBinding.FieldName = #45208#51060#51228#54620
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 66
              end
              object cxGridDBColumn125: TcxGridDBColumn
                DataBinding.FieldName = #51201#50836'3'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxGridDBColumn126: TcxGridDBColumn
                DataBinding.FieldName = #49688#51221#49345#45812#50896
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                OnGetCellHint = sg_counselColumn1GetCellHint
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxGridDBColumn127: TcxGridDBColumn
                DataBinding.FieldName = #53084#47560#45320'2'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxGridDBColumn128: TcxGridDBColumn
                DataBinding.FieldName = #48277#51064#49849#51064
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxGridDBColumn129: TcxGridDBColumn
                DataBinding.FieldName = #53084#48296
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxGridDBColumn130: TcxGridDBColumn
                DataBinding.FieldName = #51648#44553
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBColumn131: TcxGridDBColumn
                DataBinding.FieldName = #48156#51452#48376#49324
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
                MinWidth = 0
              end
              object cxGridDBColumn132: TcxGridDBColumn
                DataBinding.FieldName = #54980#48520#52649#51204
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxGridDBColumn133: TcxGridDBColumn
                DataBinding.FieldName = #52852#46300#44552#50529
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxGridDBColumn134: TcxGridDBColumn
                DataBinding.FieldName = #53441#49569#50672#54633#53084
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
              end
              object cxGridDBColumn135: TcxGridDBColumn
                DataBinding.FieldName = #47532#53084
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
              end
              object cxGridDBColumn136: TcxGridDBColumn
                DataBinding.FieldName = #44221#48708#51648#44553
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Options.Editing = False
              end
              object cxGridDBColumn137: TcxGridDBColumn
                DataBinding.FieldName = #44592#51456#51068#51088
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 80
              end
              object cxGridDBColumn138: TcxGridDBColumn
                DataBinding.FieldName = #50868#54665#49884#51089#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 80
              end
              object cxGridDBColumn139: TcxGridDBColumn
                DataBinding.FieldName = #52572#52488#51217#49688#49884#44036#44256#51221
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
                MinWidth = 0
              end
              object cxGridDBColumn140: TcxGridDBColumn
                DataBinding.FieldName = #46020#52265#51648'X'
                Visible = False
                MinWidth = 0
              end
              object cxGridDBColumn141: TcxGridDBColumn
                DataBinding.FieldName = #46020#52265#51648'Y'
                Visible = False
                MinWidth = 0
              end
              object cxGridDBColumn142: TcxGridDBColumn
                DataBinding.FieldName = #54980#48520#44552#50529
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                MinWidth = 0
              end
              object cxGridDBColumn143: TcxGridDBColumn
                DataBinding.FieldName = #52852#46300#50836#44552
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                Visible = False
                MinWidth = 0
              end
              object cxGridDBColumn144: TcxGridDBColumn
                DataBinding.FieldName = #47560#51068#49324#50857
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                MinWidth = 0
              end
              object cxGridDBColumn145: TcxGridDBColumn
                DataBinding.FieldName = #53084#47553#51648#49324
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxGridDBColumn146: TcxGridDBColumn
                DataBinding.FieldName = #53084#47553#51648#49324#47749
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 77
              end
              object cxGridDBColumn147: TcxGridDBColumn
                DataBinding.FieldName = #53084#47553#45824#54364#48264#54840
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 77
              end
              object cxGridDBColumn148: TcxGridDBColumn
                DataBinding.FieldName = #44256#44061
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                OnCustomDrawCell = sg_counselColumn87CustomDrawCell
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
                Width = 40
              end
              object cxGridDBColumn149: TcxGridDBColumn
                DataBinding.FieldName = #44592#49324
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                OnCustomDrawCell = sg_counselColumn88CustomDrawCell
                HeaderAlignmentHorz = taCenter
                MinWidth = 0
              end
              object cxGridDBColumn150: TcxGridDBColumn
                DataBinding.FieldName = #53084#49468#53552'2'
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
              end
              object cxGridDBColumn151: TcxGridDBColumn
                DataBinding.FieldName = #48373#49688#53084#48264#54840
                Visible = False
              end
              object cxGridDBColumn152: TcxGridDBColumn
                DataBinding.FieldName = #52712#49548#49884#44036
                Visible = False
              end
              object cxGridDBColumn153: TcxGridDBColumn
                DataBinding.FieldName = #48372#51221#50836#44552
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBColumn154: TcxGridDBColumn
                DataBinding.FieldName = #44277#50976#50668#48512
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Images = cxSmallImages
                Properties.Items = <
                  item
                    Description = #54532#47532#48120#50628#51228#55092#53084#44277#50976
                    ImageIndex = 45
                    Value = 'V'
                  end
                  item
                    Description = #51068#48152#51228#55092#53084#44277#50976
                    ImageIndex = 43
                    Value = 'N'
                  end>
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBColumn155: TcxGridDBColumn
                DataBinding.FieldName = #52852#46300#49849#51064
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object cxGridDBColumn156: TcxGridDBColumn
                DataBinding.FieldName = #51648#50896#44552
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object cxGridDBColumn157: TcxGridDBColumn
                DataBinding.FieldName = #44592#53440#51648#44553#44552
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object cxGridDBColumn158: TcxGridDBColumn
                DataBinding.FieldName = #51648#50896
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object cxGridDBColumn159: TcxGridDBColumn
                DataBinding.FieldName = #49884#44036#51221#47148
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
                Options.Editing = False
              end
              object cxGridDBColumn160: TcxGridDBColumn
                DataBinding.FieldName = #49345#45812#50896'ID'#51060#47492
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
                Options.Editing = False
              end
              object cxGridDBColumn161: TcxGridDBColumn
                DataBinding.FieldName = #48176#52264#51648#50672
                PropertiesClassName = 'TcxLabelProperties'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object cxGridDBColumn162: TcxGridDBColumn
                DataBinding.FieldName = #48176#52264#51648#50672#49884#44036
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object cxGridDBColumn163: TcxGridDBColumn
                DataBinding.FieldName = 'KM'#44277#50976
                PropertiesClassName = 'TcxLabelProperties'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object cxGridDBColumn164: TcxGridDBColumn
                DataBinding.FieldName = #48372#54744#47308#47924#47308
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Options.Editing = False
              end
              object cxGridDBColumn165: TcxGridDBColumn
                DataBinding.FieldName = 'odb_wk_sabun'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Visible = False
                Options.Editing = False
              end
              object cxGridDBColumn166: TcxGridDBColumn
                DataBinding.FieldName = #54788#44552
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBColumn167: TcxGridDBColumn
                DataBinding.FieldName = #53084#54056#49828
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
                Options.Editing = False
              end
              object sg_xlsViewColumn1: TcxGridDBColumn
                DataBinding.FieldName = #44256#44061#51221#48372
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object sg_xlsViewColumn2: TcxGridDBColumn
                DataBinding.FieldName = #44592#49324#49548#49549#51648#49324#47749
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object sg_xlsViewColumn3: TcxGridDBColumn
                DataBinding.FieldName = #45800#47568#44592
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object sg_xlsViewColumn4: TcxGridDBColumn
                DataBinding.FieldName = #55092#45824#54256
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object sg_xlsViewColumn5: TcxGridDBColumn
                DataBinding.FieldName = #52636#48156#51648'1'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object sg_xlsViewColumn6: TcxGridDBColumn
                DataBinding.FieldName = #52636#48156#51648'2'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object sg_xlsViewColumn7: TcxGridDBColumn
                DataBinding.FieldName = #52636#48156#51648'3'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object sg_xlsViewColumn8: TcxGridDBColumn
                DataBinding.FieldName = #52636#48156#51648'4'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object sg_xlsViewColumn9: TcxGridDBColumn
                DataBinding.FieldName = #46020#52265#51648'1'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object sg_xlsViewColumn10: TcxGridDBColumn
                DataBinding.FieldName = #46020#52265#51648'2'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object sg_xlsViewColumn11: TcxGridDBColumn
                DataBinding.FieldName = #46020#52265#51648'3'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object sg_xlsViewColumn12: TcxGridDBColumn
                DataBinding.FieldName = #46020#52265#51648'4'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object sg_xlsViewORGDay: TcxGridDBColumn
                DataBinding.FieldName = #44592#51456#51068#51088
              end
              object sg_xlsViewColumn13: TcxGridDBColumn
                DataBinding.FieldName = #44144#47532
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                Options.Editing = False
              end
            end
            object cxGridLevel3: TcxGridLevel
              GridView = sg_xlsView
            end
          end
        end
        object cxSplitter1: TcxSplitter
          Left = 1082
          Top = 0
          Width = 6
          Height = 554
          AlignSplitter = salRight
          Visible = False
        end
        object pnlMap: TPanel
          Left = 1088
          Top = 0
          Width = 185
          Height = 554
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 2
          Visible = False
          OnResize = pnlMapResize
          object BtnRSize: TcxButton
            Left = 0
            Top = 386
            Width = 17
            Height = 29
            Cursor = crHandPoint
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              424D360400000000000036000000280000001000000010000000010020000000
              000000000000C40E0000C40E0000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000707070B3A0A0A0FF0000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000A0A0A0FFD3D3D3FFA0A0A0FF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000A0A0A0FFD8D8D8FFD8D8D8FFA0A0A0FF000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000A0A0A0FFDDDDDDFFDDDDDDFFDDDDDDFFA0A0A0FF0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000A0A0A0FFD8D8D8FFDADADAFFDDDDDDFFE1E1E1FFA0A0
              A0FF000000000000000000000000000000000000000000000000000000000000
              00000000000000000000A0A0A0FFDCDCDCFFDFDFDFFFE2E2E2FFE6E6E6FFA0A0
              A0FF000000000000000000000000000000000000000000000000000000000000
              00000000000000000000A0A0A0FFECECECFFECECECFFECECECFFA0A0A0FF0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000A0A0A0FFF1F1F1FFF1F1F1FFA0A0A0FF000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000A0A0A0FFF1F1F1FFA0A0A0FF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000707070B3A0A0A0FF0000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000}
            ParentShowHint = False
            ShowHint = False
            TabOrder = 0
            OnClick = BtnRSizeClick
          end
          object BtnLSize: TcxButton
            Left = 0
            Top = 386
            Width = 17
            Height = 29
            Cursor = crHandPoint
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              424D360400000000000036000000280000001000000010000000010020000000
              000000000000C40E0000C40E0000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000A0A0A0FF7070
              70B3000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000A0A0A0FFD3D3D3FFA0A0
              A0FF000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000A0A0A0FFD8D8D8FFD8D8D8FFA0A0
              A0FF000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000A0A0A0FFDDDDDDFFDDDDDDFFDDDDDDFFA0A0
              A0FF000000000000000000000000000000000000000000000000000000000000
              00000000000000000000A0A0A0FFE2E2E2FFE1E1E1FFDDDDDDFFDADADAFFA0A0
              A0FF000000000000000000000000000000000000000000000000000000000000
              00000000000000000000A0A0A0FFE7E7E7FFE6E6E6FFE2E2E2FFDFDFDFFFA0A0
              A0FF000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000A0A0A0FFECECECFFECECECFFECECECFFA0A0
              A0FF000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000A0A0A0FFF1F1F1FFF1F1F1FFA0A0
              A0FF000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000A0A0A0FFF1F1F1FFA0A0
              A0FF000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000A0A0A0FF7070
              70B3000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000}
            ParentShowHint = False
            ShowHint = False
            TabOrder = 1
            OnClick = BtnLSizeClick
          end
        end
        object grpSetNoShow: TcxGroupBox
          Left = 240
          Top = 24
          Caption = #45432#49660' '#50756#47308
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 3
          Visible = False
          OnMouseDown = grpSetNoShowMouseDown
          OnMouseMove = grpSetNoShowMouseMove
          Height = 107
          Width = 269
          object Shape3: TShape
            Left = 3
            Top = 17
            Width = 263
            Height = 81
            Align = alClient
            Brush.Color = 13285815
            Pen.Color = 13285815
            OnMouseMove = grpSetNoShowMouseMove
            ExplicitLeft = 6
            ExplicitTop = 20
            ExplicitWidth = 219
            ExplicitHeight = 67
          end
          object cEdtNoShowAmt: TcxCurrencyEdit
            Left = 97
            Top = 26
            AutoSize = False
            Properties.AssignedValues.DisplayFormat = True
            Properties.AssignedValues.EditFormat = True
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnKeyDown = cEdtNoShowAmtKeyDown
            Height = 25
            Width = 139
          end
          object btnNoShowExit: TcxButton
            Left = 137
            Top = 65
            Width = 60
            Height = 24
            Cursor = crHandPoint
            Caption = #52712#49548
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 1
            OnClick = btnNoShowExitClick
          end
          object btnNoShowOk: TcxButton
            Left = 71
            Top = 65
            Width = 60
            Height = 24
            Cursor = crHandPoint
            Caption = #54869#51064
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 2
            OnClick = btnNoShowOkClick
          end
          object cxLabel7: TcxLabel
            Left = 32
            Top = 26
            AutoSize = False
            Caption = #50756#47308#44552#50529
            Style.BorderStyle = ebsFlat
            Style.TransparentBorder = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 25
            Width = 68
            AnchorX = 66
            AnchorY = 39
          end
          object cxLabel8: TcxLabel
            Left = 235
            Top = 29
            Caption = #50896
            Transparent = True
          end
        end
      end
      object pnl_AIList: TPanel
        Left = 979
        Top = 300
        Width = 420
        Height = 225
        BevelKind = bkFlat
        BevelOuter = bvNone
        Color = clGreen
        ParentBackground = False
        TabOrder = 5
        Visible = False
        object cxGrid2: TcxGrid
          Left = 0
          Top = 23
          Width = 416
          Height = 198
          Align = alBottom
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object cxGridAIView: TcxGridDBTableView
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
            OnCellDblClick = cxGridAIViewCellDblClick
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnMoving = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.NoDataToDisplayInfoText = ' '
            OptionsView.DataRowHeight = 22
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 23
            object cxGridDBColumn54: TcxGridDBColumn
              DataBinding.FieldName = #51217#49688#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 57
            end
            object cxGridDBColumn55: TcxGridDBColumn
              DataBinding.FieldName = #45824#54364#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
            end
            object cxGridDBColumn56: TcxGridDBColumn
              DataBinding.FieldName = #48156#51452#51648#49324
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
            end
            object cxGridDBColumn57: TcxGridDBColumn
              Caption = #44256#44061#47749
              DataBinding.FieldName = #50629#49548#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 103
            end
            object cxGridDBColumn58: TcxGridDBColumn
              DataBinding.FieldName = #52636#48156#51648
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 112
            end
            object cxGridDBColumn59: TcxGridDBColumn
              DataBinding.FieldName = #51217#49688#49884#44036'2'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridAIView
          end
        end
        object cxLabel3: TcxLabel
          Left = 7
          Top = 2
          Caption = 'AI-'#46104#46028#50500#50724#45716#53084' '#50724#45908' '#47532#49828#53944
          ParentFont = False
          Style.Font.Charset = HANGEUL_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = [fsBold]
          Style.TextColor = clWhite
          Style.IsFontAssigned = True
        end
      end
    end
    object pnl_AccStatus: TcxGroupBox
      Left = 482
      Top = 156
      Caption = '   '#51068#44292#52376#47532' '#51089#50629#51652#54665
      ParentBackground = False
      ParentColor = False
      Style.BorderStyle = ebsNone
      Style.Color = clBtnFace
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Visible = False
      DesignSize = (
        294
        233)
      Height = 237
      Width = 294
      object Shape176: TShape
        Left = 7
        Top = 25
        Width = 106
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape177: TShape
        Left = 145
        Top = 25
        Width = 106
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Gauge1: TAdvProgressBar
        Left = 7
        Top = 56
        Width = 280
        Height = 25
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
        Version = '1.3.2.2'
      end
      object cxLabel167: TcxLabel
        Left = 13
        Top = 28
        Caption = #51204#52404#44148#49688
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 39
        AnchorY = 38
      end
      object cxLabel174: TcxLabel
        Left = 154
        Top = 28
        Caption = #50756#47308#44148#49688
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 180
        AnchorY = 38
      end
      object lb_ACnt: TcxLabel
        Left = 73
        Top = 24
        AutoSize = False
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Style.Color = 12189690
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 26
        Width = 66
        AnchorX = 106
        AnchorY = 37
      end
      object lb_FCnt: TcxLabel
        Left = 214
        Top = 24
        AutoSize = False
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Style.Color = 65408
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 26
        Width = 66
        AnchorX = 247
        AnchorY = 37
      end
      object mmo_AccStatus: TcxMemo
        Left = 7
        Top = 83
        Properties.ScrollBars = ssBoth
        TabOrder = 4
        Height = 141
        Width = 280
      end
      object btn_AccStatusClose: TcxButton
        Left = 273
        Top = -1
        Width = 19
        Height = 20
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
        TabOrder = 5
        TabStop = False
        OnClick = btn_AccStatusCloseClick
      end
    end
  end
  object pnlColorSet: TPanel
    Left = 3
    Top = 178
    Width = 235
    Height = 45
    BevelOuter = bvNone
    BorderWidth = 3
    Color = 16763594
    TabOrder = 1
    Visible = False
    object GradientLabel3: TGradientLabel
      Left = 3
      Top = 3
      Width = 229
      Height = 39
      Align = alClient
      AutoSize = False
      Color = 14668485
      ParentColor = False
      Transparent = True
      EllipsType = etNone
      GradientType = gtFullVertical
      GradientDirection = gdLeftToRight
      Indent = 0
      Orientation = goHorizontal
      TransparentText = False
      VAlignment = vaTop
      Version = '1.2.1.0'
      ExplicitLeft = 1
      ExplicitTop = 27
      ExplicitWidth = 222
    end
    object lb_Common0: TLabel
      Left = 6
      Top = 6
      Width = 36
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = #51217#49688
      Color = 16765183
      ParentColor = False
      Transparent = True
      Layout = tlCenter
    end
    object lb_Common4: TLabel
      Tag = 4
      Left = 119
      Top = 24
      Width = 36
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = #47928#51032
      Color = 16777153
      ParentColor = False
      Transparent = True
      Layout = tlCenter
    end
    object lb_Common5: TLabel
      Tag = 5
      Left = 44
      Top = 24
      Width = 36
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = #45824#44592
      Color = 14540287
      ParentColor = False
      Transparent = True
      Layout = tlCenter
    end
    object lb_Common1: TLabel
      Tag = 1
      Left = 119
      Top = 6
      Width = 36
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = #48176#52264
      Color = 11796479
      ParentColor = False
      Transparent = True
      Layout = tlCenter
    end
    object lb_Common2: TLabel
      Tag = 2
      Left = 195
      Top = 6
      Width = 36
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = #50756#47308
      Color = 16762052
      ParentColor = False
      Transparent = True
      Layout = tlCenter
    end
    object lb_Common7: TLabel
      Tag = 7
      Left = 81
      Top = 24
      Width = 36
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = #50696#50557
      Color = clWhite
      ParentColor = False
      Transparent = True
      Layout = tlCenter
    end
    object lb_Common8: TLabel
      Tag = 8
      Left = 157
      Top = 24
      Width = 36
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = #52712#49548
      Color = 11777023
      ParentColor = False
      Transparent = True
      Layout = tlCenter
    end
    object lb_Common3: TLabel
      Tag = 3
      Left = 6
      Top = 24
      Width = 36
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = #44053#51228
      Color = 13565902
      ParentColor = False
      Transparent = True
      Layout = tlCenter
    end
    object SpeedButton11: TSpeedButton
      Left = 195
      Top = 24
      Width = 36
      Height = 15
      Caption = #45803#44592
      Flat = True
      Transparent = False
    end
    object lb_Common9: TLabel
      Tag = 9
      Left = 44
      Top = 6
      Width = 36
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = #44540#48176
      Color = 8709115
      ParentColor = False
      Transparent = True
      Layout = tlCenter
    end
    object lb_Common10: TLabel
      Tag = 10
      Left = 81
      Top = 6
      Width = 36
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = #48176#52264#51473
      Color = 55769
      ParentColor = False
      Transparent = True
      Layout = tlCenter
    end
    object lb_Common11: TLabel
      Tag = 2
      Left = 156
      Top = 6
      Width = 36
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = #50868#54665
      Color = 16762766
      ParentColor = False
      Transparent = True
      Layout = tlCenter
    end
  end
  object lb_Title_List: TListBox
    Left = 879
    Top = 373
    Width = 113
    Height = 119
    ImeName = 'Microsoft IME 2003'
    ItemHeight = 15
    Items.Strings = (
      #45824#54364#48264#54840
      #48156#51452#51648#49324#47749
      #49345#53468
      #44256#44061#48264#54840
      #44256#44061#47749
      #54943#49688
      #51217#49688#49884#44036
      #44221#44284#49884#44036
      #48176#52264#49884#44036
      #50756#47308#49884#44036
      #52636#48156#51648
      #46020#52265#51648
      #50836#44552
      #49345#45812#50896
      #44592#49324#47749
      #44592#49324#49324#48264
      #44592#49324#50948#52824
      #51201#50836
      #44256#44061#44396#48516
      #48277#51064#47749
      #44208#51228
      #52712#49548#49324#50976
      #51217#49688#48264#54840
      #52572#52488#51217#49688#49884#44036
      #51648#45212#49884#44036
      #44277#50976
      #48156#51452#51648#49324
      #47700#47784
      #54788#51116#49884#44036
      #53084#49468#53552#53076#46300
      #52636#48156#51648'1'
      #46020#52265#51648'1'
      #51217#49688#49884#44036'2'
      #44592#49324#48376#49324#53076#46300
      #44592#49324#51648#49324#53076#46300
      #44592#49324#53084#49468#53552
      #44256#44061#48264#54840'2'
      #49892#51228#46321#47197#53084#49468#53552
      #48277#51064#53076#46300
      #44277#50976#53084
      #44256#44061#53076#46300
      #48176#52264#49884#44036'2'
      #50756#47308#49884#44036'2'
      #52636#48156#51648'X'
      #52636#48156#51648'Y'
      #44256#44061#48264#54840'1'
      #48176#52264#44221#44284
      #49688#51221#49884#44036
      #52636#48156#51648'('#49884#44400#44396')'
      'DNIS'
      #44256#44061#46321#44553#53076#46300
      #49345#53468#51221#47148
      #54540#47084#49828#53084
      #49688#49688#47308
      #51201#50836'2'
      #51217#49688#44396#48516
      #44208#51228#44396#48516
      #44256#44061#48264#54840'22'
      #48176#52264#44396#48516
      #44256#44061#46321#44553
      #44256#44061#47560#51068#47532#51648'('#51092#50668')'
      #51060#48292#53944#54943#49688
      #44256#44061#53685#54868#50668#48512
      #48176#52264#44144#47532
      #45208#51060#51228#54620
      #51201#50836'3'
      #49688#51221#49345#45812#50896
      #53084#47560#45320'2'
      #48277#51064#49849#51064
      #53084#48296
      #51648#44553
      #48156#51452#48376#49324
      #54980#48520#52649#51204
      #52852#46300#44552#50529
      #53441#49569#50672#54633#53084
      #47532#53084
      #44221#48708#51648#44553
      #44592#51456#51068#51088
      #50868#54665#49884#51089#49884#44036
      #52572#52488#51217#49688#49884#44036#44256#51221
      #46020#52265#51648'X'
      #46020#52265#51648'Y'
      #54980#48520#44552#50529
      #52852#46300#50836#44552
      #47560#51068#49324#50857
      #53084#47553#51648#49324
      #53084#47553#51648#49324#47749
      #53084#47553#45824#54364#48264#54840
      #44256#44061
      #44592#49324
      #53084#49468#53552'2'
      #48373#49688#53084#48264#54840
      #52712#49548#49884#44036
      #48372#51221#50836#44552
      #44277#50976#50668#48512
      #52852#46300#49849#51064
      #51648#50896#44552
      #44592#53440#51648#44553#44552
      #51648#50896
      #49884#44036#51221#47148
      #49345#45812#50896'ID'#51060#47492
      #48176#52264#51648#50672
      #48176#52264#51648#50672#49884#44036
      'KM'#44277#50976
      #48372#54744#47308#47924#47308
      'odb_wk_sabun'
      #54788#44552
      #53084#54056#49828
      #44144#47532)
    TabOrder = 2
    Visible = False
    OnClick = lb_Title_ListClick
  end
  object pnlBubin: TPanel
    Left = 887
    Top = 179
    Width = 418
    Height = 149
    Color = 16444898
    TabOrder = 3
    Visible = False
    object cxGrdBubin: TcxGrid
      Left = 2
      Top = 1
      Width = 416
      Height = 121
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object cxBubinView: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
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
        OptionsView.DataRowHeight = 18
        OptionsView.GridLineColor = 16635384
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 18
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
          Width = 110
        end
        object cxGrdCol2: TcxGridDBColumn
          DataBinding.FieldName = #48277#51064#48512#49436#47749
          PropertiesClassName = 'TcxLabelProperties'
          Options.Editing = False
          Options.Filtering = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.Moving = False
          Width = 102
        end
        object cxGrdCol3: TcxGridDBColumn
          DataBinding.FieldName = #45800#52629#48277#51064#47749
          PropertiesClassName = 'TcxLabelProperties'
          Options.Editing = False
          Options.Filtering = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.Moving = False
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
    object cbokeyNumber: TcxComboBox
      Left = 1
      Top = 123
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        '0.'#48520#47049':'#48744#44053
        '1.'#51452#51032':'#51452#54889
        '2.'#51068#48152':'#54616#45720
        '3.'#50864#49688':'#46041#49353
        '4.'#52572#50864#49688':'#51008#49353
        '5.VIP:'#54889#44552#49353)
      Properties.ReadOnly = False
      Properties.OnChange = cbokeyNumberPropertiesChange
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Sharp'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Sharp'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 2
      Width = 360
    end
    object btnBubInWinClose: TcxButton
      Left = 362
      Top = 124
      Width = 54
      Height = 21
      Cursor = crHandPoint
      Caption = #45803#44592
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 1
      OnClick = btnBubInWinCloseClick
    end
  end
  object status_bar: TdxStatusBar
    Left = 0
    Top = 699
    Width = 1273
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 900
      end
      item
        PanelStyleClassName = 'TdxStatusBarContainerPanelStyle'
        PanelStyle.Container = dxStatusBar1Container1
      end>
    PaintStyle = stpsUseLookAndFeel
    ParentFont = True
    object dxStatusBar1Container1: TdxStatusBarContainerControl
      Left = 906
      Top = 4
      Width = 330
      Height = 13
      DesignSize = (
        330
        13)
      object cxProgressBar1: TcxProgressBar
        Left = -1
        Top = -1
        Anchors = [akLeft, akTop, akRight, akBottom]
        AutoSize = False
        Properties.ShowText = False
        Style.BorderColor = clWindow
        Style.BorderStyle = ebsNone
        Style.Edges = []
        Style.TransparentBorder = True
        TabOrder = 0
        Height = 0
        Width = 58073
      end
    end
  end
  object pnlCallPass: TPanel
    Left = 436
    Top = 463
    Width = 249
    Height = 203
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 5
    Visible = False
    object grpSetCallPass: TcxGroupBox
      Left = 0
      Top = 0
      Caption = '  '#53440#49324' '#53084#54056#49828
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Sharp'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 1
      OnMouseDown = grpSetCallPassMouseDown
      Height = 199
      Width = 245
      object Shape8: TShape
        Left = 3
        Top = 17
        Width = 239
        Height = 173
        Align = alClient
        Brush.Color = 13285815
        Pen.Color = 13285815
        ExplicitLeft = 6
        ExplicitTop = 20
      end
      object edtCPLogiKeyNum: TEdit
        Left = 217
        Top = 122
        Width = 17
        Height = 25
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        ImeName = 'Microsoft Office IME 2007'
        ParentColor = True
        TabOrder = 4
        Visible = False
      end
      object btnPassToCallMart: TcxButton
        Left = 35
        Top = 71
        Width = 167
        Height = 23
        Cursor = crHandPoint
        Caption = #53084#47560#53944#47196' '#51204#49569
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 0
        OnClick = btnPassToCallMartClick
      end
      object btnPassToLogi: TcxButton
        Left = 35
        Top = 99
        Width = 167
        Height = 23
        Cursor = crHandPoint
        Caption = #47196#51648#47196' '#51204#49569'(`)'
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 1
        OnClick = btnPassToLogiClick
      end
      object cxButton7: TcxButton
        Left = 35
        Top = 127
        Width = 167
        Height = 23
        Cursor = crHandPoint
        Caption = #54872#44221#49444#51221
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 3
        OnClick = cxButton7Click
      end
      object Label4: TcxLabel
        Left = 37
        Top = 152
        Caption = #53084#54056#49828' '#54980' '#53084#47560#45320' '#50724#45908' '#49345#53468
        Transparent = True
      end
      object Label5: TcxLabel
        Left = 161
        Top = 171
        Caption = #47196' '#48320#44221
        Transparent = True
      end
      object lbl3: TcxLabel
        Left = 32
        Top = 18
        Caption = #53440#49324'('#51004')'#47196' '#53084#54056#49828' '#54620' '#54980','#13#10#49440#53469#46108' '#50724#45908#45716' ['#45824#44592#49345#53468']'#47196#13#10#51088#46041#48320#44221' '#46121#45768#45796'.'
        Transparent = True
      end
      object cbbCPOrderSt: TcxComboBox
        Left = 93
        Top = 168
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #45824#44592
          #51217#49688)
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 2
        Text = #45824#44592
        Width = 65
      end
    end
    object cxButton1: TcxButton
      Left = 224
      Top = 2
      Width = 20
      Height = 20
      Cursor = crHandPoint
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
      OptionsImage.Layout = blGlyphBottom
      TabOrder = 0
      OnClick = cxButton1Click
    end
  end
  object edtTelNum: TEdit
    Left = 648
    Top = 547
    Width = 82
    Height = 16
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clWhite
    ImeName = 'Microsoft IME 2003'
    TabOrder = 6
    Visible = False
  end
  object pnlNoMouseMove: TPanel
    Left = -456
    Top = 226
    Width = 485
    Height = 65
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = 16444898
    TabOrder = 8
    Visible = False
    DesignSize = (
      481
      61)
    object Label7: TcxLabel
      Left = 28
      Top = 19
      Anchors = [akLeft, akTop, akRight]
      Caption = #53084#54056#49828' '#46020#51473#50640#45716' '#47560#50864#49828#47484' '#50880#51649#51060#51648' '#47560#49464#50836'.'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -20
      Style.Font.Name = #44404#47548
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clRed
      Style.IsFontAssigned = True
      Transparent = True
    end
  end
  object cxGrid1: TcxGrid
    Left = 596
    Top = 413
    Width = 277
    Height = 70
    BevelInner = bvNone
    BevelOuter = bvNone
    Constraints.MinHeight = 50
    PopupMenu = pm_Counsel
    TabOrder = 9
    Visible = False
    LookAndFeel.NativeStyle = True
    object sg_xls: TcxGridDBTableView
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
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataModeController.SmartRefresh = True
      DataController.Filter.Options = [fcoShowOperatorDescription, fcoSoftNull]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <
        item
          Links = <>
          SummaryItems = <
            item
            end>
        end>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      Filtering.ColumnMRUItemsListCount = 0
      OptionsBehavior.CellHints = True
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsBehavior.CopyPreviewToClipboard = False
      OptionsBehavior.ExpandMasterRowOnDblClick = False
      OptionsBehavior.ImmediateEditor = False
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.ScrollBars = ssNone
      OptionsView.GridLineColor = clSilver
      OptionsView.GroupByBox = False
      OptionsView.HeaderEndEllipsis = True
      OptionsView.IndicatorWidth = 0
      Styles.OnGetContentStyle = sg_xlsStylesGetContentStyle
      object cxGridDBColumn0: TcxGridDBColumn
        DataBinding.FieldName = #45824#54364#48264#54840
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn1: TcxGridDBColumn
        DataBinding.FieldName = #48156#51452#51648#49324#47749
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn2: TcxGridDBColumn
        DataBinding.FieldName = #49345#53468
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = #51217#49688
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = #48176#52264
            ImageIndex = 1
            Value = '1'
          end
          item
            Description = #50756#47308
            ImageIndex = 2
            Value = '2'
          end
          item
            Description = #44053#51228
            ImageIndex = 3
            Value = '3'
          end
          item
            Description = #47928#51032
            ImageIndex = 4
            Value = '4'
          end
          item
            Description = #45824#44592
            ImageIndex = 5
            Value = '5'
          end
          item
            Description = #48176#52264
            ImageIndex = 1
            Value = 'B'
          end
          item
            Description = #52712#49548
            ImageIndex = 7
            Value = '8'
          end
          item
            Description = #49688#51221
            ImageIndex = 8
            Value = '9'
          end
          item
            Description = #50696#50557
            ImageIndex = 9
            Value = 'R'
          end>
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn3: TcxGridDBColumn
        DataBinding.FieldName = #44256#44061#48264#54840
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn4: TcxGridDBColumn
        DataBinding.FieldName = #44256#44061#48264#54840'2'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn5: TcxGridDBColumn
        DataBinding.FieldName = #44256#44061#47749
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn6: TcxGridDBColumn
        DataBinding.FieldName = #54943#49688
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0;-,0'
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn7: TcxGridDBColumn
        DataBinding.FieldName = #47700#47784
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn8: TcxGridDBColumn
        DataBinding.FieldName = #44256#44061#51221#48372
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn9: TcxGridDBColumn
        DataBinding.FieldName = #44256#44061#44396#48516
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn10: TcxGridDBColumn
        DataBinding.FieldName = #48277#51064#47749
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn11: TcxGridDBColumn
        DataBinding.FieldName = #51217#49688#49884#44036
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn12: TcxGridDBColumn
        DataBinding.FieldName = #44221#44284#49884#44036
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn13: TcxGridDBColumn
        DataBinding.FieldName = #48176#52264#49884#44036
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn14: TcxGridDBColumn
        DataBinding.FieldName = #50756#47308#49884#44036
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn15: TcxGridDBColumn
        DataBinding.FieldName = #52636#48156#51648'1'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn16: TcxGridDBColumn
        DataBinding.FieldName = #52636#48156#51648'2'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn17: TcxGridDBColumn
        DataBinding.FieldName = #52636#48156#51648'3'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn18: TcxGridDBColumn
        DataBinding.FieldName = #52636#48156#51648'4'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn19: TcxGridDBColumn
        DataBinding.FieldName = #52636#48156#51648
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn20: TcxGridDBColumn
        DataBinding.FieldName = #46020#52265#51648'1'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn21: TcxGridDBColumn
        DataBinding.FieldName = #46020#52265#51648'2'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn22: TcxGridDBColumn
        DataBinding.FieldName = #46020#52265#51648'3'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn23: TcxGridDBColumn
        DataBinding.FieldName = #46020#52265#51648'4'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn24: TcxGridDBColumn
        DataBinding.FieldName = #46020#52265#51648
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn25: TcxGridDBColumn
        DataBinding.FieldName = #50836#44552
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0;-,0'
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn26: TcxGridDBColumn
        DataBinding.FieldName = #44208#51228
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn27: TcxGridDBColumn
        DataBinding.FieldName = #49345#45812#50896
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn28: TcxGridDBColumn
        DataBinding.FieldName = #44592#49324#49548#49549#51648#49324#47749
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn29: TcxGridDBColumn
        DataBinding.FieldName = #44592#49324#49324#48264
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn30: TcxGridDBColumn
        DataBinding.FieldName = #44592#49324#47749
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn31: TcxGridDBColumn
        DataBinding.FieldName = #44592#49324#50948#52824
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn32: TcxGridDBColumn
        DataBinding.FieldName = #45800#47568#44592
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn33: TcxGridDBColumn
        DataBinding.FieldName = #55092#45824#54256
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn34: TcxGridDBColumn
        DataBinding.FieldName = #51217#49688#48264#54840
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn35: TcxGridDBColumn
        DataBinding.FieldName = #44277#50976
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn36: TcxGridDBColumn
        DataBinding.FieldName = #51201#50836
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn37: TcxGridDBColumn
        DataBinding.FieldName = #52712#49548#49324#50976
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 0
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
      object cxGridDBColumn38: TcxGridDBColumn
        DataBinding.FieldName = #52572#52488#51217#49688#49884#44036
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
      object cxGridDBColumn39: TcxGridDBColumn
        DataBinding.FieldName = #51648#45212#49884#44036
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
      object cxGridDBColumn40: TcxGridDBColumn
        DataBinding.FieldName = #49688#51221#49884#44036
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object cxGridDBColumn41: TcxGridDBColumn
        DataBinding.FieldName = #48156#51452#51648#49324
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        Visible = False
      end
      object cxGridDBColumn42: TcxGridDBColumn
        DataBinding.FieldName = #54540#47084#49828#53084
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        Visible = False
      end
      object cxGridDBColumn43: TcxGridDBColumn
        DataBinding.FieldName = 'DNIS'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
      end
      object cxGridDBColumn44: TcxGridDBColumn
        DataBinding.FieldName = #51201#50836'2'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
      end
      object cxGridDBColumn45: TcxGridDBColumn
        DataBinding.FieldName = #49688#49688#47308
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0;-,0'
        HeaderAlignmentHorz = taCenter
      end
      object cxGridDBColumn46: TcxGridDBColumn
        DataBinding.FieldName = #44208#51228#44396#48516
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
      end
      object cxGridDBColumn47: TcxGridDBColumn
        DataBinding.FieldName = #48176#52264#44396#48516
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
      end
      object cxGridDBColumn48: TcxGridDBColumn
        DataBinding.FieldName = #44256#44061#47560#51068#47532#51648
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0;-,0'
        HeaderAlignmentHorz = taCenter
      end
      object cxGridDBColumn49: TcxGridDBColumn
        DataBinding.FieldName = #51060#48292#53944#54943#49688
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0;-,0'
        HeaderAlignmentHorz = taCenter
      end
      object cxGridDBColumn50: TcxGridDBColumn
        DataBinding.FieldName = #44256#44061#53685#54868#50668#48512
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
      end
      object cxGridDBColumn51: TcxGridDBColumn
        DataBinding.FieldName = #44592#49324#45784#45208#51060
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
      end
      object cxGridDBColumn52: TcxGridDBColumn
        DataBinding.FieldName = #51201#50836'3'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
      end
      object cxGridDBColumn53: TcxGridDBColumn
        DataBinding.FieldName = #44144#47532
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
      end
      object sg_xlsColumn1: TcxGridDBColumn
        DataBinding.FieldName = #49688#51221#49345#45812#50896
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
      end
      object sg_xlsColumn2: TcxGridDBColumn
        DataBinding.FieldName = #53084#47560#45320'2'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object sg_xlsColumn3: TcxGridDBColumn
        DataBinding.FieldName = #53084#48296
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
      end
      object sg_xlsColumn4: TcxGridDBColumn
        DataBinding.FieldName = #52852#46300#44552#50529
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0;-,0'
      end
      object sg_xlsColumn5: TcxGridDBColumn
        DataBinding.FieldName = #53441#49569#50672#54633#53084
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object sg_xlsColumn6: TcxGridDBColumn
        DataBinding.FieldName = #47532#53084
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object sg_xlsColumn7: TcxGridDBColumn
        DataBinding.FieldName = #44221#48708#51648#44553
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0;-,0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object sg_xlsORGDay: TcxGridDBColumn
        DataBinding.FieldName = #44592#51456#51068#51088
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object sg_xlsColumn8: TcxGridDBColumn
        DataBinding.FieldName = #50868#54665#49884#51089#49884#44036
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object sg_xlsColumn9: TcxGridDBColumn
        DataBinding.FieldName = #52572#52488#51217#49688#49884#44036#44256#51221
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
      end
      object sg_xlsColumn10: TcxGridDBColumn
        DataBinding.FieldName = #44277#50976#50668#48512
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object sg_xlsColumn11: TcxGridDBColumn
        DataBinding.FieldName = #52852#46300#49849#51064
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object sg_xlsColumn12: TcxGridDBColumn
        DataBinding.FieldName = #51648#44553
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0;-,0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object sg_xlsColumn13: TcxGridDBColumn
        DataBinding.FieldName = #51648#50896#44552
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0;-,0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object sg_xlsColumn14: TcxGridDBColumn
        DataBinding.FieldName = #44592#53440#51648#44553#44552
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0;-,0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object sg_xlsColumn15: TcxGridDBColumn
        DataBinding.FieldName = #51648#50896
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DisplayFormat = ',0;-,0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object sg_xlsColumn16: TcxGridDBColumn
        DataBinding.FieldName = #48176#52264#51648#50672
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object sg_xlsColumn17: TcxGridDBColumn
        DataBinding.FieldName = #48176#52264#51648#50672#49884#44036
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object sg_xlsColumn18: TcxGridDBColumn
        DataBinding.FieldName = 'KM'#44277#50976
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object sg_xlsColumn19: TcxGridDBColumn
        DataBinding.FieldName = #48372#54744#47308#47924#47308
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = sg_xls
    end
  end
  object grpSetSearchSEL: TcxGroupBox
    Left = -8
    Top = 141
    Caption = ' '#51217#49688#54788#54889#51032' '#44160#49353' '#51312#44148#51012' '#49324#50857' '#52404#53356' / '#54644#51228' '#54616#49464#50836'!'
    Style.LookAndFeel.SkinName = 'Sharp'
    StyleDisabled.LookAndFeel.SkinName = 'Sharp'
    TabOrder = 10
    Visible = False
    Height = 79
    Width = 437
    object Shape5: TShape
      Left = 3
      Top = 17
      Width = 431
      Height = 53
      Align = alClient
      Brush.Color = 13285815
      Pen.Color = 13285815
      ExplicitTop = 16
      ExplicitWidth = 301
      ExplicitHeight = 56
    end
    object cbSSEL5: TcxCheckBox
      Tag = 5
      Left = 206
      Top = 20
      Caption = #51204#52404#49345#53468
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
      OnClick = cbSSEL1Click
    end
    object cbSSEL1: TcxCheckBox
      Tag = 1
      Left = 6
      Top = 20
      Caption = #49688#46041
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
      OnClick = cbSSEL1Click
    end
    object cbSSEL2: TcxCheckBox
      Tag = 2
      Left = 53
      Top = 20
      Caption = #51088#49324
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
      OnClick = cbSSEL1Click
    end
    object cbSSEL3: TcxCheckBox
      Tag = 3
      Left = 100
      Top = 20
      Caption = #48376#51064
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
      OnClick = cbSSEL1Click
    end
    object cbSSEL4: TcxCheckBox
      Tag = 4
      Left = 146
      Top = 20
      Caption = #51088#44592#49324
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Sharp'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Sharp'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 4
      Transparent = True
      OnClick = cbSSEL1Click
    end
    object cbSSEL6: TcxCheckBox
      Tag = 6
      Left = 282
      Top = 20
      Hint = #48277#51064
      Caption = #48277#51064
      ParentShowHint = False
      ShowHint = True
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
      OnClick = cbSSEL1Click
    end
    object cbSSEL7: TcxCheckBox
      Tag = 7
      Left = 330
      Top = 20
      Hint = #52852#46300
      Caption = #52852#46300
      ParentShowHint = False
      ShowHint = True
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
      OnClick = cbSSEL1Click
    end
    object cbSSEL8: TcxCheckBox
      Tag = 8
      Left = 381
      Top = 20
      Hint = #54980#48520
      Caption = #54980#48520
      ParentShowHint = False
      ShowHint = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Sharp'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Sharp'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 7
      Transparent = True
      OnClick = cbSSEL1Click
    end
    object btnSSELClose: TcxButton
      Left = 374
      Top = 47
      Width = 60
      Height = 22
      Cursor = crHandPoint
      Caption = #45803#44592
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 8
      OnClick = btnSSELCloseClick
    end
    object cbSSEL9: TcxCheckBox
      Tag = 9
      Left = 100
      Top = 46
      Caption = #51593#49884#48176#52264
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Sharp'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Sharp'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 9
      Transparent = True
      OnClick = cbSSEL1Click
    end
    object cbSSEL10: TcxCheckBox
      Tag = 10
      Left = 194
      Top = 46
      Caption = #50724#45908' '#49345#53468' '#48324' '#53485#48372#44592
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Sharp'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Sharp'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 10
      Transparent = True
      OnClick = cbSSEL10Click
    end
    object cbSSEL11: TcxCheckBox
      Tag = 11
      Left = 6
      Top = 46
      Hint = #53441#49569#50672#54633#53084
      Caption = #53441#49569#50672#54633#53084
      ParentShowHint = False
      ShowHint = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Sharp'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Sharp'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 11
      Transparent = True
      OnClick = cbSSEL1Click
    end
  end
  object PnlHelp: TPanel
    Left = 8
    Top = 202
    Width = 74
    Height = 26
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = 14155775
    ParentBackground = False
    TabOrder = 11
    Visible = False
    object Lbl_Hint: TLabel
      Left = 6
      Top = 4
      Width = 44
      Height = 15
      Caption = 'Lbl_Hint'
    end
  end
  object grpSetPanelty: TcxGroupBox
    Left = -250
    Top = 381
    Caption = '  '#48176#52264#49892#49688
    ParentBackground = False
    ParentColor = False
    Style.BorderStyle = ebsNone
    Style.Color = clBtnFace
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Sharp'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Sharp'
    TabOrder = 12
    Visible = False
    Height = 149
    Width = 294
    object Shape9: TShape
      Left = 3
      Top = 17
      Width = 288
      Height = 123
      Align = alClient
      Brush.Color = 13285815
      Pen.Color = 13285815
      ExplicitLeft = 6
      ExplicitTop = 20
      ExplicitWidth = 284
      ExplicitHeight = 119
    end
    object RadioGroup1: TcxRadioGroup
      Left = 13
      Top = 65
      Caption = '  '#54056#45328#54000'  '
      Properties.Items = <>
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Sharp'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 0
      Height = 43
      Width = 264
    end
    object ed_penalCharge: TEdit
      Left = 195
      Top = 33
      Width = 38
      Height = 23
      Color = 14741486
      ImeName = 'Microsoft IME 2003'
      TabOrder = 1
      Visible = False
    end
    object ed_penalTime: TEdit
      Left = 149
      Top = 33
      Width = 44
      Height = 23
      Color = 14741486
      ImeName = 'Microsoft IME 2003'
      TabOrder = 2
      Visible = False
    end
    object rcb_sms: TcxCheckBox
      Left = 9
      Top = 114
      Caption = #52712#49548#49884' '#44592#49324#54620#53580' SMS '#51204#49569
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
    object RbButton2: TcxButton
      Left = 177
      Top = 111
      Width = 50
      Height = 25
      Cursor = crHandPoint
      Caption = #54869#51064
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 3
      OnClick = RbButton2Click
    end
    object RbButton6: TcxButton
      Left = 229
      Top = 111
      Width = 50
      Height = 25
      Cursor = crHandPoint
      Caption = #52712#49548
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 4
      OnClick = RbButton6Click
    end
    object Label28: TcxLabel
      Left = 16
      Top = 20
      Caption = #48176#52264' '#49892#49688#51077#45768#45796'.'
      Transparent = True
    end
    object Label29: TcxLabel
      Left = 16
      Top = 40
      Caption = #54056#45328#54000#47484' '#49440#53469#54616#49464#50836
      Transparent = True
    end
  end
  object grpSetcancel_charge: TcxGroupBox
    Left = -250
    Top = 533
    Caption = '  '#48176#52264#49892#49688
    ParentBackground = False
    ParentColor = False
    Style.BorderStyle = ebsNone
    Style.Color = clBtnFace
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Sharp'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Sharp'
    TabOrder = 13
    Visible = False
    Height = 110
    Width = 294
    object Shape10: TShape
      Left = 3
      Top = 17
      Width = 288
      Height = 84
      Align = alClient
      Brush.Color = 13285815
      Pen.Color = 13285815
      ExplicitLeft = 6
      ExplicitTop = 20
      ExplicitWidth = 276
      ExplicitHeight = 80
    end
    object ed_cancel_charge: TcxCurrencyEdit
      Left = 153
      Top = 41
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Width = 48
    end
    object rcb_sms2: TcxCheckBox
      Left = 6
      Top = 75
      Caption = #52712#49548#49884' '#44592#49324#54620#53580' SMS '#51204#49569
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
    object RbButton7: TcxButton
      Left = 175
      Top = 71
      Width = 50
      Height = 25
      Cursor = crHandPoint
      Caption = #54869#51064
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 1
      OnClick = RbButton7Click
    end
    object RbButton8: TcxButton
      Left = 227
      Top = 71
      Width = 50
      Height = 25
      Cursor = crHandPoint
      Caption = #52712#49548
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 2
      OnClick = RbButton8Click
    end
    object Label30: TcxLabel
      Left = 202
      Top = 45
      Caption = '('#50896')'
      Transparent = True
    end
    object Label35: TcxLabel
      Left = 16
      Top = 25
      Caption = #48176#52264' '#49892#49688#51077#45768#45796'.'
      Transparent = True
    end
    object Label36: TcxLabel
      Left = 16
      Top = 45
      Caption = #52712#49548' '#48268#44552#51012' '#51077#47141#54616#49464#50836
      Transparent = True
    end
  end
  object grpSetCallBellList: TcxGroupBox
    Left = 35
    Top = 282
    Caption = #53084#48296'-'#51649#51217#54840#52636#50724#45908' '#47532#49828#53944
    ParentFont = False
    Style.Font.Charset = HANGEUL_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = #47569#51008' '#44256#46357
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.SkinName = 'Sharp'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.SkinName = 'Sharp'
    TabOrder = 14
    Visible = False
    OnMouseDown = grpSetCallBellListMouseDown
    Height = 225
    Width = 420
    object cxGrid6: TcxGrid
      Left = 3
      Top = 17
      Width = 414
      Height = 199
      Align = alClient
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      object CallBellView: TcxGridDBTableView
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
        OnCellDblClick = CallBellViewCellDblClick
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnMoving = False
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.NoDataToDisplayInfoText = ' '
        OptionsView.DataRowHeight = 22
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 23
        object CallBellViewColumn01: TcxGridDBColumn
          DataBinding.FieldName = #51217#49688#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 54
        end
        object CallBellViewColumn02: TcxGridDBColumn
          DataBinding.FieldName = #45824#54364#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
        end
        object CallBellViewColumn03: TcxGridDBColumn
          DataBinding.FieldName = #48156#51452#51648#49324
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
        end
        object CallBellViewColumn04: TcxGridDBColumn
          DataBinding.FieldName = #50629#49548#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 103
        end
        object CallBellViewColumn05: TcxGridDBColumn
          DataBinding.FieldName = #52636#48156#51648
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 112
        end
        object CallBellViewColumn06: TcxGridDBColumn
          DataBinding.FieldName = #51217#49688#49884#44036'2'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Visible = False
        end
      end
      object cxGridLevel4: TcxGridLevel
        GridView = CallBellView
      end
    end
  end
  object pnlCPLogiEnv: TPanel
    Left = 8
    Top = 646
    Width = 369
    Height = 272
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = 16444898
    TabOrder = 7
    Visible = False
    object cxGroupBox5: TcxGroupBox
      Left = 0
      Top = 0
      Align = alClient
      Caption = '  '#47196#51648' '#53084#54056#49828' '#54872#44221#49444#51221
      ParentBackground = False
      ParentColor = False
      Style.BorderStyle = ebsNone
      Style.Color = clBtnFace
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Sharp'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 0
      OnMouseDown = cxGroupBox5MouseDown
      Height = 268
      Width = 365
      object Shape14: TShape
        Left = 3
        Top = 17
        Width = 359
        Height = 242
        Align = alClient
        Brush.Color = 13285815
        Pen.Color = 13285815
        ExplicitLeft = 6
        ExplicitTop = 20
      end
      object grdCallPassLogi: TAdvColumnGrid
        Left = 3
        Top = 14
        Width = 359
        Height = 214
        ColCount = 4
        Ctl3D = True
        DefaultRowHeight = 21
        DrawingStyle = gdsClassic
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goEditing, goTabs]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnKeyDown = grdCallPassLogiKeyDown
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ActiveCellColor = 9758459
        ActiveCellColorTo = 1414638
        AutoThemeAdapt = True
        CellNode.TreeColor = clSilver
        ColumnHeaders.Strings = (
          #53084#47560#45320#45824#54364#48264#54840
          #47196#51648#45824#54364#48264#54840
          #45800#52629#48264#54840
          #54665#48264#54840)
        ControlLook.FixedGradientFrom = clWhite
        ControlLook.FixedGradientTo = clWhite
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
        FilterDropDown.Font.Name = 'MS Sans Serif'
        FilterDropDown.Font.Style = []
        FilterDropDown.Height = 200
        FilterDropDown.Width = 200
        FilterDropDownClear = '(All)'
        FilterEdit.TypeNames.Strings = (
          'Starts with'
          'Ends with'
          'Contains'
          'Not contains'
          'Equal'
          'Not equal'
          'Clear')
        FixedColWidth = 109
        FixedRowHeight = 22
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -12
        FixedFont.Name = #44404#47548
        FixedFont.Style = []
        FloatFormat = '%.2f'
        HoverButtons.Buttons = <>
        HTMLSettings.ImageFolder = 'images'
        HTMLSettings.ImageBaseName = 'img'
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'MS Sans Serif'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'MS Sans Serif'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'MS Sans Serif'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'MS Sans Serif'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        ScrollWidth = 15
        SearchFooter.Color = 15524577
        SearchFooter.ColorTo = 11769496
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'MS Sans Serif'
        SearchFooter.Font.Style = []
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurence'
        SearchFooter.HintFindPrev = 'Find previous occurence'
        SearchFooter.HintHighlight = 'Highlight occurences'
        SearchFooter.MatchCaseCaption = 'Match case'
        SearchFooter.ResultFormat = '(%d of %d)'
        SelectionColor = 15561512
        SelectionTextColor = clWindowText
        ShowDesignHelper = False
        SortSettings.Show = True
        Version = '3.2.0.3'
        Columns = <
          item
            AutoMinSize = 0
            AutoMaxSize = 0
            Alignment = taCenter
            Borders = []
            BorderPen.Color = clSilver
            ButtonHeight = 18
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            ColumnPopupType = cpFixedCellsRClick
            DropDownCount = 8
            EditLength = 0
            Editor = edNormal
            FilterCaseSensitive = False
            Fixed = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = #53084#47560#45320#45824#54364#48264#54840
            HeaderAlignment = taCenter
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            MinSize = 0
            MaxSize = 0
            Password = False
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintColor = clWhite
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            ReadOnly = False
            ShowBands = False
            SortStyle = ssAutomatic
            SpinMax = 0
            SpinMin = 0
            SpinStep = 1
            Tag = 0
            Width = 109
          end
          item
            AutoMinSize = 0
            AutoMaxSize = 0
            Alignment = taCenter
            Borders = []
            BorderPen.Color = clSilver
            ButtonHeight = 18
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            ColumnPopupType = cpFixedCellsRClick
            DropDownCount = 8
            EditLength = 0
            Editor = edNormal
            FilterCaseSensitive = False
            Fixed = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = #47196#51648#45824#54364#48264#54840
            HeaderAlignment = taCenter
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            MinSize = 0
            MaxSize = 0
            Password = False
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintColor = clWhite
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            ReadOnly = False
            ShowBands = False
            SortStyle = ssAutomatic
            SpinMax = 0
            SpinMin = 0
            SpinStep = 1
            Tag = 0
            Width = 96
          end
          item
            AutoMinSize = 0
            AutoMaxSize = 0
            Alignment = taCenter
            Borders = []
            BorderPen.Color = clSilver
            ButtonHeight = 18
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            ColumnPopupType = cpFixedCellsRClick
            DropDownCount = 8
            EditLength = 0
            Editor = edNormal
            FilterCaseSensitive = False
            Fixed = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = #45800#52629#48264#54840
            HeaderAlignment = taCenter
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            MinSize = 0
            MaxSize = 0
            Password = False
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintColor = clWhite
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            ReadOnly = False
            ShowBands = False
            SortStyle = ssAutomatic
            SpinMax = 0
            SpinMin = 0
            SpinStep = 1
            Tag = 0
            Width = 78
          end
          item
            AutoMinSize = 0
            AutoMaxSize = 0
            Alignment = taCenter
            Borders = []
            BorderPen.Color = clSilver
            ButtonHeight = 18
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            ColumnPopupType = cpFixedCellsRClick
            DropDownCount = 8
            EditLength = 0
            Editor = edNormal
            FilterCaseSensitive = False
            Fixed = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = #54665#48264#54840
            HeaderAlignment = taCenter
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            MinSize = 0
            MaxSize = 0
            Password = False
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintColor = clWhite
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            ReadOnly = False
            ShowBands = False
            SortStyle = ssAutomatic
            SpinMax = 0
            SpinMin = 0
            SpinStep = 1
            Tag = 0
            Width = 53
          end>
        ColWidths = (
          109
          96
          78
          53)
        RowHeights = (
          22
          21)
      end
      object btnCPLogiEnvSave: TcxButton
        Left = 286
        Top = 232
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = #51200#51109
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 2
        OnClick = btnCPLogiEnvSaveClick
      end
      object Label3: TcxLabel
        Left = 168
        Top = 236
        Caption = #49345#53468#47196' '#53084#54056#49828
        Transparent = True
      end
      object Label6: TcxLabel
        Left = 8
        Top = 236
        Caption = #47196#51648#54532#47196#44536#47016#50640
        Transparent = True
      end
      object cbbCPLogiType: TcxComboBox
        Left = 99
        Top = 233
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #46321#47197
          #45824#44592
          #47928#51032)
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 1
        Text = #46321#47197
        Width = 65
      end
    end
    object cxButton6: TcxButton
      Left = 343
      Top = 0
      Width = 20
      Height = 20
      Cursor = crHandPoint
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
      OptionsImage.Layout = blGlyphBottom
      TabOrder = 1
      OnClick = cxButton6Click
    end
  end
  object cxSmallImages: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 11273204
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0005000000130000001A0000001B0000001C0000001D0000001E0000001F0000
          00210000002200000023000000240000001D0000000800000000000000000000
          0011BC7F4DFFBB7E4CFFBA7C49FFB87B49FFB87947FFB77846FFB67744FFB576
          43FFB47441FFB37340FFB3723FFFB1713EFF0000001C00000000000000000000
          0014BE8351FFF9EDE0FFF9ECDFFFF9EBDEFFF8EADDFFF8EADCFFF8E9DBFFF8E8
          DAFFF7E8D9FFF7E7D8FFF7E7D7FFB47441FF0000002300000000000000000000
          0012C18756FFFCF1E6FFFBF1E5FFFBEFE4FFFBEFE2FFFAEEE1FFFAEDE0FFFAED
          E0FFF9ECDEFFF9EBDDFFF9EBDDFFB67744FF0000002100000000000000000000
          0010C48A5AFFFEF4EBFFFDF4EBFFFDF3E9FFFDF2E9FFFDF2E7FFFCF1E6FFFCF0
          E5FFFCF0E3FFFBEEE2FFFBEEE1FFB87B48FF0000001F00000000000000000000
          000FC78F5EFFFFF9F2FFFFF7F0FFFFF7EFFFFEF7EEFFFEF6ECFFFEF5ECFFFEF5
          EAFFFEF3E9FFFDF3E8FFFCEFE3FFBB7E4BFF0000001D00000000000000000000
          000DCA9362FFFFFAF4FFFFF9F3FFFFF9F2FFFFF9F1FFFFF8F1FFFFF8F0FFFFF7
          EFFFFFF6EEFFFDF3E9FFFBEFE3FFBE814FFF0000001B00000000000000000000
          000BCD9667FFFFFAF6FFFFFAF5FFFFFAF4FFFFFAF3FFFFF9F3FFFFF9F2FFFFF9
          F1FFFEF5ECFFFCF1E6FFFAEDE0FFC18554FF0000001A00000000000000000000
          000ACF9B6CFFFFFBF6FFFFFBF6FFFFFAF5FFFFFAF4FFFFFAF5FFFFF9F3FFFEF7
          F0FFFCF2E8FFFAEDE1FFF7E8D9FFC38958FF0000001800000000000000000000
          0008D29F70FFFFFCF8FFFFFBF8FFFFFBF7FFFFFBF7FFFFFBF6FFFEF7F1FFFCF3
          EBFFFAEFE3FFF7E8DBFFF5E2D1FFC78D5CFF0000001600000000000000000000
          0007D5A375FFFFFDFAFFFFFCF9FFFFFCF9FFFFFCF8FFFEF9F4FFFCF4ECFFFAEF
          E4FFF6E7DAFFF4E1D0FFF0DAC6FFC99161FF0000001400000000000000000000
          0006D9A77AFFFFFDFBFFFFFDFBFFFFFDFAFFFEF9F5FFFCF5EEFFFAF0E7FFF7EB
          DFFFD09A6BFFCF9869FFCE9768FFCC9565FF0000000D00000000000000000000
          0005DBAB7FFFFFFEFDFFFFFEFBFFFEFAF7FFFCF6F0FFFAF1E9FFF7EADFFFF5E6
          D8FFD29E6FFFFFFCF9FFD5D2CFDC1717162A0000000400000000000000000000
          0003DDAF83FFFFFEFCFFFEFBF8FFFCF7F1FFFAF2EAFFF7EBE1FFF4E5D7FFF2E0
          D0FFD5A274FFD5D2D0DB17171626000000040000000000000000000000000000
          0002E0B387FFDFB185FFDFB083FFDDAE82FFDCAD80FFDBAB7FFFDAAA7DFFD8A8
          7BFFD8A679FF1717172400000003000000000000000000000000000000000000
          0000000000020000000300000003000000040000000500000005000000060000
          0007000000060000000200000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00800100008001000080010000800100008001000080010000800100008001
          000080010000800100008001000080010000800100008003000080070000C00F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000030000
          000E000000190000001C0000001F000000220000002400000026000000270000
          002900000029000000290000002000000009000000010000000018577FBB0D61
          96FF075B92FF075A92FF065A92FF065A92FF065A92FF065A92FF065A93FF065A
          92FF075A92FF065A92FF065C93FE010A103C00000005000000000C6199FB4198
          C2FF6BB5D3FF38C7ECFF0BB8E6FF0BB4E5FF0BB0E3FF0BADE1FF0AA9DFFF09A7
          DDFF09A2DCFF099DDAFF0980B7FF065277C20000000E0000000009679EFF5CBA
          E6FF2686B2FF90E7F8FF1BCCF3FF1CC9F1FF19C6EFFF15C1ECFF0DBCEAFF0CB8
          E8FF0BB4E6FF0BAFE4FF0BA2D9FF0A75A8FC0003041D000000000B75AAFF6CC8
          F2FF3994BEFF97CEE2FF59DFF8FF3CD7F6FF39D4F5FF31D0F3FF26CAF0FF19C4
          EEFF11BFEBFF11BBEAFF10B7E8FF0C83B6FF06476190000000000D82B6FF83D4
          F6FF3EAEDEFF3F8EB7FFB3F3FDFF62E3FAFF5EE1F9FF53DDF8FF45D9F5FF33D3
          F3FF22CCF1FF16C7EFFF16C4EDFF12ACD9FF0A73A4F200000000108CBFFF9DE2
          F9FF27BBF1FF3485B3FFBDDBE9FF9AF0FDFF86ECFCFF78E9FBFF65E3F9FF4EDE
          F7FF38D8F5FF26D1F2FF1DCEF2FF1CCBF1FF0C7CAFFF06384C65108FC4FFB8ED
          FCFF3BCAF5FF52B1D8FF5B98BDFFF9FEFFFFF3FDFFFFE8FCFEFFD7F9FEFFC1F5
          FDFFA6F0FCFF88EBFBFF6BE3F9FF59DEF7FF32B0D6FF12709CE11093C8FFD0F6
          FEFF56DBF9FF4BD4F7FF2170A4FF065E98FF075E98FF065E98FF075E98FF075E
          98FF075E98FF075F98FF075F98FF075E98FF075E98FF076099FF1197CDFFE3FB
          FFFF77EBFDFF6AE7FCFF5CE1FBFF50DBF9FF45D6F9FF3AD0F8FF32CBF6FF2BC6
          F5FF26C2F3FF22BDF2FF1FB9F1FF0C70A2FF0000000900000000129BD0FFEFFD
          FFFF9AF4FFFF85F2FFFF7CEFFEFF6DEAFDFF6DE8FCFFB3F2FDFFA1ECFCFF8DE6
          FBFF77DFFAFF63D8F8FF48C5EEFF0C74A6FF0000000600000000129ED4FFF7FE
          FFFFCCF8FEFFA0F5FFFF7EE7F8FF1091C5FF108EC2FF0F8BBEFF0E87BBFF0E85
          B7FF0E82B4FF0D7FB1FF1683B3FB186988B200000002000000002BA7D7FBE0F3
          FAFFF2F8FAFBD9F2F9FF28A0CEFB000000020000000200000002000000030000
          000300000003000000030000000300000002000000000000000047879DAF2BA8
          D7FB12A0D5FF29A4D4FB44829AAF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF00000001000000010000000100000001000000010000000100000000
          000000000000000000000001000000010000000100000003000007FF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000020000
          000C000000160000001A0000001B0000001C0000001D0000001E0000001F0000
          00210000002200000023000000240000002100000013000000040000000A8E6B
          45C9B57039FFB36D35FF252525FF202020FF1D1D1DFF191919FF151515FF1212
          12FF0F0F0FFF0C0C0CFFA1551BFFA05319FF805428D20000001300000011BC78
          41FFEEC18FFFEFCA9FFF343434FF2F2F2FFF2B2B2BFF282828FF232323FF2020
          20FFE7BE90FF181818FFE5BD8DFFDDAA6FFFA1541AFF0000002000000011C07E
          48FFF1C694FFF1CDA5FF454545FF404040FF3C3C3CFF373737FF333333FF2E2E
          2EFFE9C092FF272727FFE6BD8FFFDFAE71FFA3571CFF000000220000000FC583
          4EFFF3CA9AFFF3D1A8FF585858FF535353FF4E4E4EFF494949FF444444FF3F3F
          3FFFE9C293FF363636FFE8BF91FFE1AE74FFA55A20FF000000200000000EC988
          53FFF5CEA1FFF5D5AEFF6B6B6BFF666666FF616161FF5C5C5CFF575757FF5252
          52FF4D4D4DFF484848FFE9C292FFE3B077FFA85E25FF0000001E0000000CCE8D
          59FFF8D4A8FFF8D8B3FFF5D5ADFFF4D0A6FFF1CDA1FFEFCA9DFFEEC89BFFEDC8
          9AFFEDC598FFECC496FFEAC495FFE4B378FFAA6128FF0000001C0000000BD292
          5EFFFBD7AEFFF8D1A7FFF6CE9EFFF3C997FFF0C490FFEEC08AFFECBD84FFEBBB
          83FFE9BA81FFE9B880FFE8B67DFFE7B57CFFAE662DFF0000001B00000009D797
          64FFFDDCB4FFDBA36CFFDAA26BFFD9A16AFFD9A069FFD89E67FFD69D66FFD69C
          65FFD59A63FFD49962FFD39760FFE8B77EFFB16A32FF0000001900000008DA9C
          69FFFFDFBBFFD99F68FFFBFBFBFFFAFAFAFFF8F8F8FFF7F7F7FFF5F5F5FFF4F4
          F4FFF2F2F2FFF1F1F1FFD0935CFFE9BA81FFB56F38FF0000001700000006DEA0
          6EFFFFE5C1FFD69B65FFFDFDFDFF8E8E8EFF8B8B8BFF8A8A8AFF878787FF8484
          84FF828282FFF5F5F5FFCD8F58FFEBBC83FFB9743DFF0000001500000005E1A4
          71FFFFE7C7FFD39760FFFFFFFFFFFFFFFFFFFEFEFEFFFDFDFDFFFCFCFCFFFBFB
          FBFFFAFAFAFFF8F8F8FFCA8B55FFEEBD86FFBD7943FF0000001400000004E3A6
          74FFFFEACDFFD1925DFFFFFFFFFFADADADFFABABABFFA9A9A9FFA7A7A7FFA5A5
          A5FFA3A3A3FFFBFBFBFFC88751FFEFC089FFC27E48FF0000001200000002E5A8
          76FFFFF0D2FFCE8E59FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFFC6844EFFF1C28BFFC6834EFF0000000E00000001AA94
          75C0E5A876FFCB8B56FFACACACFFACACACFFACACACFFACACACFFACACACFFACAC
          ACFFACACACFFACACACFFC4814CFFCD8C58FF95764FC500000007000000000000
          0001000000020000000300000003000000040000000500000005000000060000
          000700000008000000090000000A0000000A0000000600000001}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000000700000010000000180000
          00210000001D0000000E00000002000000000000000000000000000000000000
          0002000000060000000C000000130202022A0A0A0A550C0C0C980F0E0EBE3131
          31EE0E0E0EE404040470000000190000000400000000000000000000000A0303
          03210C0C0C5213131390232323BC3A3A3AEC3A3939FB848584FFC0C8C4FFBDBF
          BFFF4D4D4DFF262626FB060606A1000000240000000900000001474747AF7979
          79ED2E2E2EFC393939FF434343FF535353FF706E70FFB9C2BDFF70D09DFFC8CF
          CCFF585556FF6D6D6DFF424242FF101010CB020202450000000F9E9E9EFCF9F9
          F9FF7F7F7FFF828282FFB2B2B2FFDDDDDDFFEAEAEBFFEDEFEDFFE0E6E3FFD8D9
          D8FF606060FF6E6E6EFF787878FF616161FF1C1C1CE90707076EB1B1B1F3FFFF
          FFFFF7F7F7FFFBFBFBFFF3F3F3FFE5E5E5FFDBDBDBFFCCCCCCFFC3C2C3FFBBBB
          BBFF979797FF696969FF7A7A7AFF808080FF808080FF252525F5BCBCBCF7F1F1
          F1FFE4E4E4FFDBDBDBFFD5D5D5FFCDCDCDFFCBCBCBFFCACACAFFC7C8C8FFBCBC
          BDFFAEB1B5FF8D8F91FF757373FF828282FF929292FF3A3A3AF96D6D6D94D6D6
          D6FFE0E0E0FFDBDDDDFFD4D6D9FFCDCDCDFFBBBBB9FFA0A09FFF95918CFF8F8A
          80FF63472DFF3C3228FF949799FF808080FF949494FF454545F0020202026F6F
          6F96D3D3D4FFD4D3D1FFBB9A77FFC2B8ACFFC7BDAFFFCDC0ACFFCBBBA3FFD1C2
          A9FFC2955EFF87603CFFB2B7BBFFA8A8A8FF999999FF4D4D4DF7000000000000
          00005C5C5D7BBEBDBDF4DAAF7FFFF3E6D9FFEFE7DDFFE9E0D1FFE5D9C8FFE1D4
          C2FFD9C6ABFFA8733DFF908F8DFB797B7DF26E6E6EEB454545C8000000000000
          0000000000002A2B2B37A18D78C8F1DDC6FFF6F4F1FFF0EAE1FFECE3D9FFE7DE
          D1FFE6DECFFFBD8D53FF41322379090909170404050E03030307000000000000
          000000000000000000001714121BDDBB91ECFDFEFEFFF9F7F3FFF4F0EAFFF0EA
          E1FFEDE7DDFFDFCDB7FF693D179E000000000000000000000000000000000000
          0000000000000000000000000000866D4E91FAF0E6FFFFFFFFFFFBFBF9FFF8F7
          F3FFF4F1EBFFF3F1ECFFC3996AF8261709380000000000000000000000000000
          0000000000000000000000000000221C1524E5C8A7F1FFFFFFFFFFFFFFFFFEFD
          FDFFFAF9F7FFF8F3EFFFEADDCCFF885220C80806030B00000000000000000000
          00000000000000000000000000000000000076624B7CE4C29DEFDCBA93EACEA9
          7EDEC9A172DCB48956C9A87A48C67E4F20AF261E163000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F80700008003000000000000000000000000000000000000000000000000
          000000000000C0000000E0000000F0070000F8030000F8010000FC010000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000010000
          000700000010000000190000001D0000001F0000002000000021000000230000
          0024000000250000002500000023000000180000000B00000002000000060102
          1B4F04044BB806066EF5060674FF060673FF050572FF060571FF060571FF0505
          70FF050570FF050570FF05056AF7030346C50101195F0000000A0000000D0405
          4DB50C1594FF0F23AFFF0E25B6FF0C23B3FF0A22B2FF0A22B1FF0A22B0FF0A22
          B0FF0A22AFFF0A21AFFF091DA4FF080F86FF040346C40000001800000011080A
          79F4182FBFFF1733CAFF1833C7FF1F39C8FF112DC3FF0C28C0FF0B27BFFF0E2B
          C0FF1C37C4FF1530C0FF1029BAFF091DA4FF05056AF700000022000000110A0E
          87FF203DD4FF1F3CD2FF8C9AE4FFE2E5F5FF354ED0FF1230C8FF102EC7FF2F48
          CDFFE3E7F8FF8A99E3FF132FC0FF0A21AFFF050570FF000000240000000F0C12
          8FFF2945DBFF2A44D8FFD0D3EFFFFCFAF8FFE1E4F5FF344DD1FF304AD0FFE2E6
          F7FFFFFEFFFFD0D5F3FF1733C2FF0A21B0FF050572FF000000220000000D0F17
          99FF3752E2FF2D4AE0FF344DD7FFCFD2EEFFFCF9F7FFE5E6F4FFE6E8F4FFFEFC
          FCFFCFD5F2FF243ECBFF0E2AC2FF0A22B2FF050674FF000000210000000B131D
          A3FF4A63E9FF3856EAFF2E4BE1FF354ED7FFD4D6EDFFFBF9F5FFFCF9F6FFD5D9
          F0FF2640CEFF102DCAFF0B29C2FF0A23B3FF060775FF0000001F0000000A1723
          ADFF7F90F0FF6B80F2FF5D72E6FF6375DDFFE5E4EEFFFAF6F2FFFAF7F3FFE3E3
          F1FF364ED2FF1332CCFF0E2AC5FF0B23B5FF060777FF0000001D000000081C2B
          B8FF8E9DF4FF677AEBFF6B7BDFFFE4E1EAFFF8F3EDFFD7D8EBFFD6D7EBFFFAF6
          F2FFE1E2F0FF354ED1FF1330C8FF0E25B8FF07077BFF0000001B000000072032
          C1FFA3B0F7FF6E7FE6FFE3E0E6FFF6EFE8FFD5D4E7FF5367DCFF4C61DAFFD2D3
          EAFFF9F5F1FFE0E0EEFF233CCBFF1028BDFF090A82FF00000019000000062539
          CBFFB8C2FAFF7282E6FFA9AEE0FFD6D3E3FF5D6FDDFF536AEBFF4963EAFF495F
          D9FFD1D2E8FF919CE1FF1C38CCFF132CC0FF0B0E88FF0000001700000004283C
          C7F1B6BFF6FF9BA7F1FF7080E5FF6576E5FF6076ECFF5D76F6FF536DF3FF465F
          E7FF4058DEFF344DDAFF233ED4FF162CBDFF0C1186F400000013000000021E2B
          8AA47886E6FFBBC4F6FFC2CBFBFFB2BEFAFF9EACF8FF8A9AF6FF7589F3FF657B
          EFFF526BEBFF415CE5FF2941D2FF1625ADFF0A0E5EB10000000C000000010B11
          323B202E8DA42E44D0F12F45D9FF2D42D5FF2B3FD0FF293BCBFF2637C5FF2332
          C0FF1F2DB9FF1D29B3FF1822A1F30D1367AE0406234800000005000000000000
          0001000000020000000300000004000000050000000500000006000000070000
          0008000000090000000B0000000B000000080000000400000001}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000BA7C4AFFB87A47FFB778
          45FFB57643FFB47441FFB2723FFFB2713EFFB06E3BFFAF6E3AFF000000050000
          000C0000001100000014000000170000001A0000001DBE824FFFFFF4E9FFFEF3
          E8FFFEF3E6FFFEF2E6FFFEF1E5FFFEF1E3FFFDF0E1FFB2723EFF02273F7B044B
          7CE505558CFF04528AFF055088FF044F86FF044E85FFC28756FFFFF5EBFFCB8E
          5FFFC88C5CFFC68959FFC48656FFC18453FFFDF0E2FFB67743FF055181E31A8E
          BEFF18B9E6FF16B3E2FF14AFDEFF12ABDBFF1298C5FFC68D5DFFFFF7EDFFFFF6
          ECFFFFF6ECFFFFF5EBFFFFF5EAFFFEF2E5FFFCEEE0FFB97B49FF066097FF38CA
          EFFF1EBEE9FF1BB9E6FF17B5E2FF15B1DFFF13A0CDFFCB9363FFFFF7EFFFE0A5
          78FFDDA375FFDAA072FFD89D6FFFD59A6CFFFAEADBFFBE804EFF07659CFF49D1
          F3FF24C3EDFF20BFEAFF1EBBE7FF1BB8E5FF19AAD5FFCF996AFFFFF9F1FFFFF8
          F1FFFFF8F0FFFEF5ECFFFCF0E5FFFAECDEFFF7E6D6FFC18654FF086AA0FF5AD8
          F6FF2AC9F1FF28C5EEFF24C2ECFF23C0EAFF1FB5DFFFD39F71FFFFFAF4FFFFF9
          F2FFFEF5EEFFFCF1E7FFFAEDDFFFF6E5D4FFF4DFCBFFC68C5BFF0970A6FF73E0
          F9FF3BD0F5FF35CDF2FF2FC9F0FF2AC6EEFF27BEE6FFD7A578FFFFFAF5FFFEF7
          EFFFFCF2EAFFFAEDE2FFF7E9DAFFCE9768FFCB9464FFC99261FF0A76ACFF8EE8
          FCFF4FD9F9FF49D6F7FF42D2F5FF3ACFF3FF31C9EEFFDBAB7FFFFEF8F1FFFCF3
          EBFFFAEEE4FFF7E9DBFFF5E4D4FFD19D6FFFFFF9F3FFD5D0CAD50B7CB2FFA7EE
          FDFF64E0FCFF5FDDFBFF56DAF9FF4DD7F8FF44CFF2FFDFB186FFDEAF82FFDCAD
          80FFDAAA7EFFD9A87BFFD7A577FFD6A375FFD5D1CDD5171716170C84B7FFBCF3
          FEFF7CE7FEFF75E5FDFF6ADCF5FF5AC3DDFF50B4D0FF49B7D3FF41BEDDFF39C5
          E6FF35CBEEFF085D93FF000000150000000000000000000000000E8BBEFFCFF7
          FFFF92ECFFFF78C8DBFF62A8BDFF5CA4B9FF59ABC3FF54B5CEFF4DBDD9FF44C6
          E4FF3CCDEFFF096297FF000000110000000000000000000000001092C4FFDFFA
          FFFFC1864BFFBE8146FFBC7D40FFB9793BFFB67636FFB47233FFB27030FFB06D
          2EFF44D1F1FF09679DFF0000000E000000000000000000000000119ACBFFEAFB
          FFFFE9C190FFE6BA87FFE2B47EFFDFAE75FFDCA86DFFD9A267FFD69E60FFBA7A
          3DFF4EDFFEFF086DA2FF0000000B000000000000000000000000118EB8E084CD
          E7FFEEFCFFFFEAFAFDFFF0D5B0FFEFCB9EFFECC595FFE5C294FFA9EFFDFF95ED
          FEFF46B0D5FF096594E300000007000000000000000000000000094A5F701291
          BBE013A2D1FF129CCDFF7CBCC8FFFCE5C2FFF0DBB9FF7EA4A4FF0E86BAFF0D82
          B6FF0B6F9CE105364D7500000003000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FE0000000000000000000000000000000000000000000000000000000000
          0000000000000000000000070000000700000007000000070000000700000007
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0001000000060000001000000016000000110000000800000002000000020000
          0009000000160000001E000000170000000A0000000200000000000000000000
          0005270F014C6B2803B29E3A03F2672502A2240D01460000000800000008240F
          0255632804B9903803F35E2402A3200D004C0000000A00000000000000000000
          000B783308AF441C03770A0400133F17025F682502A200000011000000127031
          07B73F1B0384090400153A17025F5F2502A30000001700000000000000000000
          000DC35D10F20C050127000000060B040013A23D05F20000001700000019BA57
          11F40B050138000000080A040014943C06F30000001D00000000000000000000
          00088B470EAB502708720C05012859270694923E09DE0E0601350E060138A851
          12E5572909960B050137431D05836A2D06B80000001500000000000000000000
          0003321B06448C480FABC96413F3B25714EDB45F21FF3E1B068B45230B8DB35A
          1DFFAB5313E5C15C13F479380BB6281203530000000800000000000000000000
          00010000000300000008000000103D260F64683617E3572C12F1733E20F18E51
          24E537210E700000001B00000010000000070000000200000000000000000000
          00000000000000000000000000041C140D3C322217D25E4637FF714D3AFF4622
          0FD61B0F06480000000700000000000000000000000000000000000000000000
          00000000000000000000000000095E5552C6DEDCDCFF9B8D85FF655A53FFCBC0
          B9FF41261ACB0000001100000001000000000000000000000000000000000000
          0000000000000000000228252350B9B2AFFBDAD9D7FF2F2723AA302F2FACDEDF
          E0FF8D827DFB13100D5D00000006000000000000000000000000000000000000
          00000000000000000004635F5BA9DBD9D9FF5A514BCE0605051A0707071C6A65
          64D1D1D1D1FF2F2E2CB40000000D000000010000000000000000000000000000
          0000000000011E1D1C2DBEB9B7FC948C8AF012100F3800000003000000031B18
          183EA39D99F28B8986FD1110103D000000040000000000000000000000000000
          0000000000016B696794B0ACABFF322F2E6A0000000300000000000000000000
          0005443C3973ABA098FF48423FA00000000A0000000100000000000000000000
          0000191918219D9B96ED5755539E000000030000000000000000000000000000
          0001000000076C5F57A6847368F01312112F0000000300000000000000000000
          00006765627F83827BD00909080F000000000000000000000000000000000000
          0000000000010A0909168C7362D4564A438A0000000700000000000000000909
          090A938E85B92625243300000000000000000000000000000000000000000000
          000000000000000000022924213B7F604DBD0807071000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF0080010000800100008001000080010000800100008001000080010000F00F
          0000F0070000E0070000E0030000C0030000C1810000C3810000C7C100008FE1
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000050000
          0012000000190000001A0000001B0000001C0000001D0000001E0000001F0000
          001900000007000000000000000000000000000000000000000000000010C185
          54FFC08453FFBE8351FFBE8250FFBD804EFFBB7F4CFFBB7D4BFFBA7C49FFB87B
          48FF00000019000000000000000000000000000000000000000000000013C389
          58FFFDF4EBFFFDF3E9FFFDF3E8FFFCF2E7FFFCF1E5FFFCF0E5FFFBEFE3FFBB7E
          4BFF0000001E000000000000000000000000000000000000000000000011C78E
          5DFFFFF8F0FFFEF7EFFFFEF6EEFFFEF5EDFFFEF5ECFFFEF4EBFFFDF3E9FFBE81
          4FFF000000320000001E0000001F000000200000001A000000070000000FC991
          61FFFFFAF3FFFFF9F3FFFFF9F2FFFFF9F1FFFFF8F1FFFFF7EFFFFDF4EBFFC185
          54FFBD804EFFBB7F4CFFBB7D4BFFBA7C49FFB87B48FF000000190000000ECC95
          66FFFFFAF4FFFFFAF5FFFFF9F3FFFFFAF4FFFFF9F2FFFEF5EDFFFCF1E7FFC389
          58FFE5D3C3FFFCF1E5FFFCF0E5FFFBEFE3FFBB7E4BFF0000001E0000000CCF99
          6BFFFFFBF7FFFFFBF6FFFFFAF5FFFFFAF5FFFEF7F0FFFCF2EAFFFAEEE2FFC78D
          5CFFE3D1C1FFFEF5ECFFFEF4EBFFFDF3E9FFBE814FFF0000001C0000000BD29E
          6FFFFFFCF8FFFFFCF8FFFFFBF7FFFEF8F2FFFCF3EBFFFAEFE5FFF7E9DCFFC991
          61FFE2D1C2FFFFF8F1FFFFF7EFFFFDF4EBFFC18554FF0000001B00000009D5A2
          74FFFFFCFAFFFFFCF9FFFEF9F5FFFCF5EDFFFAEFE6FFF6E8DBFFF4E2D1FFCC95
          65FFE3D4C6FFFFF9F2FFFEF5EDFFFCF1E7FFC38958FF0000001900000008D8A6
          78FFFFFDFBFFFEFAF6FFFCF5EFFFFAF1E8FFF7EBE0FFD19C6EFFD09B6CFFCF99
          6AFFEBDED3FFFEF7F0FFFCF2EAFFFAEEE2FFC78D5CFF0000001700000006DAAA
          7EFFFEFBF7FFFCF6F1FFFAF1E9FFF7EBE0FFF5E6D8FFD3A072FFF3EBE4FFDFD0
          C2FFF8EFE7FFFCF3EBFFFAEFE5FFF7E9DCFFC99161FF0000001500000004DDAE
          82FFDCAD80FFDBAB7FFFDAAA7DFFD8A87BFFD8A679FFD7A476FFE6DACFFFF7EF
          E9FFFBF4ECFFFAEFE6FFF6E8DBFFF4E2D1FFCC9565FF00000013000000010000
          00040000000500000006000000070000000ED8A678FFF4EEE9FFFAF4EFFFFBF4
          EEFFFAF1E8FFF7EBE0FFD19C6EFFD09B6CFFCF996AFF0000000D000000000000
          000000000000000000000000000000000006DAAA7EFFFEFBF7FFFCF6F1FFFAF1
          E9FFF7EBE0FFF5E6D8FFD3A072FFD5D3D0DC1717172900000004000000000000
          000000000000000000000000000000000004DDAE82FFDCAD80FFDBAB7FFFDAAA
          7DFFD8A87BFFD8A679FFD7A476FF171717260000000400000000000000000000
          0000000000000000000000000000000000010000000400000005000000060000
          0007000000080000000900000007000000030000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00001F0000001F0000001F0000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000F8000000F8010000F803
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000020000000B0000001A0000002000000015000000050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000C0E0C096337271EDE422D20F60B0909B6000000290000
          0009000000010000000000000000000000000000000000000000000000000000
          0000000000040807073F6D5B4FF2F2CDABFFFFD1A4FF543D2EFF101111D30303
          03470000000E0000000100000000000000000000000000000000000000050000
          000B000000121716158CD5C4B6FFFFE9D2FFFFE5C9FF90745FFF424445FF1D1E
          1EE90505056200000014000000030000000000000000000000000808083F1A17
          14C60F0E0D90171717B4F3EAE3FFFFF1E5FFFFEFDFFFA29386FF8D8D8DFF7979
          79FF292929F8070707880000001A000000040000000000000000343333D0E7D7
          C7FF685648FF303030FFBBB9B8FFFFFFFDFFE6DFD9FFBDB9B6FFCBCBCBFFB6B6
          B6FF8D8D8DFF1E1E1EFF131313A90000002100000007000000017C7D7CF8FFFF
          FFFFA99D94FF8B8B8BFF666666FF8B8A8AFFBBBBBBFFE1E3E3FFE7E7E7FFE1E1
          E1FFBDBDBDFF6E6E6EFF696969FF222222C6040404350000000B757575F0E3E4
          E4FFD0D0D0FFE0E0E0FFC4C4C4FF6B6B6BFF656565FFA9A9A9FFE0E0E0FFF0F0
          F0FFD4D4D4FFD1D1D1FFC5C5C5FF9D9D9DFF474747E20E0E0E523C3C3C657070
          70DABDBDBDFFDCDCDCFFF0F0F0FFC5C5C5FF797979FF595959FF717171FFAFAF
          AFFFE0E0E0FFF2F2F2FFEBEBEBFFE3E3E3FFCCCCCCFF666666E5000000000303
          0305292929494D4D4D86888888D7BDBDBDFBD9D9D9FFC5C5C5FF9C9C9CFF9F9F
          9FFF9F9F9FFFC0C0C0FFE9E9E9FFF3F3F3FFF3F3F3FFAAAAAAFB000000000000
          00000000000000000000000000012424243D464646798E8E8ECCB8B8B8F4D4D4
          D4FFCCCCCCFFA9A9A9FF8F8F8FEDC4C4C4F9DADADAFF818181BD000000000000
          00000000000000000000000000000000000000000000020202031B1B1B294242
          42717D7D7DBB979797DC2727273D25252539474747721414141C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000E07F0000C01F0000C00F00000007000000030000000000000000
          0000000000000000000080000000F0000000FE000000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000070752700D0D
          AFF000000000000000000000000001010C100E0EBAFF05054660000000000000
          0000035B11C0047515FF037215FF036F14FF024B0DB00014033001010C100F11
          BBFF04053A500000000000000000050546600E0EBAFF01010C10000000000000
          0000035F11C0036413D0011E054001240650025B10D002510EC0000000000C10
          83B00E11A5E00B0C8DC00B0B8CC00C0CA3E00A0A80B000000000000000000000
          0000046312C0036011C0000000000000000002330970037014FF00000000070B
          49601119BEFF080B5F80080A6A900E0EBAFF0505466000000000000000000000
          0000046613C0046413C00008021001200640036312D0036011D0000000000102
          0C101420C0FF06083C50060847600F11BBFF01010C1000000000000000000000
          0000056B14C0068A1AFF058719FF058218FF047816F0010F0320000000000000
          00000F1C87B00D1579A00C1284B00B0E82B00000000000000000000000000000
          0000056F15C0056C14C00000000001110320047416E002390B70000000000000
          000009124B601525B8F0141FC0FF060948600000000000000000000000000000
          0000057217C0056F16C00000000000000000047115D0035C11B0000000000000
          000002030D10182CC5FF1523C2FF01020C100000000000000000000000000000
          0000067517C008981EFF07951DFF07931BFF068E1BFF022C0850000000000000
          0000000000000509253004072530000000000000000000000000000000000000
          0000021E06300227084002270840022607400009021000000000000000000000
          0000000000000000000300000006000000030000000000000000000000000000
          0001000000050000000D000000100000000B0000000300000000000000000000
          0000000000022D11014C471A027C000000110000000400000001000000000000
          00050B04012D2606008220040088200400780000000B00000000000000000000
          000067360E8CCF8533FBD88F37FF562305940903002500000012000000120000
          001F2E0F0180A73703FFDB710DFFA83703FF0000001200000000000000000000
          0000B67730E5FFE4C1FFFFDFADFFE5AA60FF9A4C11DE682B06AD592204A3772C
          05CCBA580EFAEB9523FFF6A125FFC15B0CFD0000000C00000000000000000000
          0000281A0A32BF8C4EE0F8DFC0FFFFECD0FFFEDDB3FFEFC084FFE9B369FFF0BC
          6BFFFBC56DFFF1B04DFFD8872BFFA25014E80000000400000000000000000000
          0000000000001D1308238A5A24A9DEB279FCF0D3ADFFFAE0C1FFFADDB7FFF1CA
          97FFDCA259FFA1591EDB3615045E150802240000000000000000000000000000
          000000000000000000000201000239230B477D52219A935A1FBA90531BBC854C
          1AB0502C106E150B041E00000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF0038C0000018C0000081CC000081C0000081C00000C3C80000C3CC0000C3C0
          0000E7C10000E3810000C0810000C0010000C0010000C0010000E0030000F00F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000010000
          000800000F4200000B3300000007000000010000000000000000000000000000
          0000000000000000000000000002000000080000000800000002000000040000
          1B68030357DD020242BE00000C3D000000060000000000000000000000000000
          00000000000000000002000000120000176B000017690000000D0000020B0303
          3D8A0E0EBFFF0B0BAAFF02023EB4000008300000000500000000000000000000
          0000000000030000001201011C81040465E9030358D300000830000000020101
          0D210B0B7DA41112D7FF0A0AA3FF010135A90000052300000004000000000000
          00020000001001011E8304046FEB0909B7F903034D8F0000000E000000000000
          000301010C200B0B7BA11312D7FF0A0A9EFF01012FA000000217000000050000
          000F01011F85050574EE090AC1FF0505629A0000001400000003000000000000
          00000000000201010A1C0B0B779C1414D9FF0B0B98FF010128970000001B0101
          228A06067AF10C0CC6FF06066EA1000001150000000300000000000000000000
          00000000000000000002010106160B0B73951414DAFF0B0B91FD010138CA0808
          83F70E0ECAFF080878A60000061E000000030000000000000000000000000000
          00000000000000000000000000020000010F0B0B71961415D6FD0F10B3FF1212
          D2FF0B0B80AD01010C2700000004000000000000000000000000000000000000
          000000000000000000000000000300000725080855A01616DBFF1515DBFF1414
          D5FB06064F940000000F00000002000000000000000000000000000000000000
          0000000000000000000300000C2E030339A811119FFF1B1BDFFF1313AFD21414
          C6ED090A88F00000207D0000000B000000020000000000000000000000000000
          0000000000020101143C06064CB41515ACFF1F1FE1FF131390AE03031A330909
          4E6F1212B2DE08087DEC00001F790000000A0000000100000000000000000000
          00020303214C0C0C64C11C1CBDFF2323E5FF161693AE03031A2F000000040000
          00060808405F1313A6D109097BEB00001F770000000900000001000000010707
          335D141485D22121CCFF2828E7FF1A1A96AC04041C2E00000002000000000000
          0001000000050606324F13129AC30A0A7BEB00002075000000060303141F1717
          8BBF2828DBFF2B2BE9FF1B1B96A804041C2B0000000200000000000000000000
          000000000000000000040404253D11118DB1090969C800000923000000000F0F
          4C5A2626C4D61B1B94A305051B26000000010000000000000000000000000000
          0000000000000000000000000002020213220505283B00000003000000000000
          00000707252A0303111600000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF0003F0000003E0000001C000000080000080000000C0010000E0030000F007
          0000F0070000E0030000C0010000800000000080000001E0000083F00000CFF9
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000010A0401246329
          0ADA230F03630000000A00000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001030100156028
          0BD271300CEE0C05013300000005000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000072A12
          056F8A3E12FF4F2009B801000014000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010502
          011B7A3711E9944315FF1F0D035C000000080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000A4A210CA4A9511CFF572509C2000000120000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00052B13076BAD5721FF873C13F41107023B0000000400000000000000000000
          0000000000000000000000000000000000000000000000000001000000000000
          00031C0D0546994C20F9AE531CFF3014057B0000000800000000000000000000
          0000000000010000000200000003000000050603011309040217030101070000
          00020B06032282411CE7C26223FF401A07980000000C0000000000000000100A
          0717331E114B3E211069462410796F3B1CB1924E25E17D3E1BD7130A05230000
          00020B06031F85441EE6CB6A27FF56250BB60000000D00000000000000019761
          3BC7CE8B59FEDA9257FFE19A5CFFE49A5BFFB46937F93C221266000000050000
          00041E0F0743A45624F8D46F2AFF622C0EC20000000D00000000000000009C6B
          48C1F9D1A6FFFFC98EFFFFC889FFD9935AFF5D3319950201010D0C07031A150A
          0432673316B8DC7D36FFD4752FFF52260DA50000000A00000000000000006948
          2F80F2CFACFFFDD7AAFFFDCF9AFFF2BA80FFB57243EB884E2AC898582EDDB669
          37FBDC8948FFF79E4DFFC56C2FFF391B0A74000000060000000000000000573C
          2766F1CFADFFFFE5C6FFF4CB9EFFFFE4C0FFFFD7A9FFF7BD84FFF7B97BFFFFBC
          75FFFFB66BFFF9A558FFA15728F3160C062E0000000200000000000000004834
          2350F1CEA9FFEEC8A4FEA26F49C7DBAE86FAECC9A6FFF2CCA5FFF4C99BFFECB3
          7DFFDF9E68FFB46F41F53D231369000000050000000000000000000000001E18
          1220E9B580FCB88B64CD0806040A271A10355D3E2879895D3FB0906140C27C52
          35AC432716701D11093400000004000000010000000000000000000000000000
          0000A97E55B353402D5A00000000000000000000000000000001000000020000
          0002000000020000000100000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FE070000FE070000FF030000FF030000FF810000FF810000FE810000C001
          000080010000000100008001000080010000800100008003000080030000CE0F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000100D0A105C4C3D5FB9987BBEE4BC97EAEEC49FF5EEC49FF5E4BC
          97EAB9987BBE5C4C3D5F100D0A10000000000000000000000000000000000000
          000030271F32B69477BCF9CCA5FFFAD1ACFFFCD4B0FFFDD6B4FFFDD6B4FFFCD4
          B0FFFAD1ACFFF9CCA5FFB69477BC30271F320000000000000000000000003027
          1E32D0A884D9F8CDA8FFFBD5B3FFFCD8BAFFFBDBBEFFFBDCC0FFFBDCC0FFFBDB
          BEFFFCD8BAFFFBD5B3FFF8CDA8FFD0A884D930261E32000000000B09070CB38E
          6DBCF6C79EFFF8CFABFFF9D3B2FFF9D8BAFFFADBC0FFFADDC3FFFADDC3FFFADB
          C0FFF9D8BAFFF9D3B2FFF8CFABFFF6C69EFFB38E6DBC0B09070C5843315EF0BB
          8CFFF4C297FFF5C79FFFF6CAA5FFF6D0ADFFF7D3B2FFF7D4B5FFF7D4B5FFF7D2
          B2FFF6D0ADFFF6CAA5FFF5C79FFFF4C297FFF0BB8CFF5843315EAF855EBFEDB4
          80FFF0B785FFF0BA8AFFF1BC8FFFF1BF93FFF2C297FFF2C399FFF2C399FFF2C2
          97FFF1BF93FFF1BC8FFFF0BA8AFFF0B785FFEDB481FFAF855EBFD0996AEAE9AB
          73FFEAAD74FFEAAD76FFEBAE78FFEBAE7AFFEBB07AFFEBAF7BFFEBAF7AFFEBAF
          79FFEBAE7AFFEBAE78FFEAAD76FFEAAD74FFE9AB73FFD0996AEAD19763F5E3A1
          65FFE3A166FFE3A165FFE3A166FFE5A56EFFE6AB77FFE7AF7CFFE7AF7CFFE6AA
          77FFE5A56EFFE3A166FFE3A166FFE3A166FFE3A165FFD19763F5CA8A57F5DD97
          59FFDD9658FFDC9658FFE0A16AFFE4AC7BFFE4AE7EFFE4AF7FFFE4AF7FFFE4AE
          7EFFE4AC7CFFE0A16AFFDC9658FFDD9658FFDD9758FFCA8A56F5BA7B48EAD58E
          50FFD68E4EFFDA9C64FFE1AE7FFFE1AE80FFE1AD7FFFE1AD7FFFE1AD7FFFE1AE
          7EFFE1AE7FFFE1AE80FFDA9C63FFD68E4EFFD58E4FFFBA7B49EA925C34BFCB83
          46FFD18B4BFFDDA97BFFE0B389FFE0B187FFE0B288FFE0B187FFE0B188FFE0B2
          87FFE0B188FFE0B38AFFDDA97BFFD18A4BFFCB8347FF925D34BF472B175EC075
          3CFFCC8749FFE0B691FFE0B794FFE0B793FFE0B793FFE0B793FFE0B793FFE0B7
          93FFE0B793FFE0B794FFE0B691FFCC8749FFC0753BFF472B165E0905030C884E
          26BCC2793FFFDFB995FFE3C0A2FFE2BF9FFFE2BF9FFFE2BF9FFFE2BF9FFFE2BF
          9FFFE2BF9FFFE3C1A2FFDFB995FFC27A3FFF884E25BC0905030C000000002516
          0B32A05F34D9D3A17AFFE9CFB8FFEAD1BAFFE9CEB7FFE8CDB6FFE8CDB6FFE9CF
          B7FFEAD1BAFFE9D0B8FFD3A17BFFA06034D925160B3200000000000000000000
          000026180E32936444BCD9AE92FFE8CEBCFFEDD9C9FFF0E0D2FFF0E0D2FFEDD9
          C9FFE8CFBCFFD9AE92FF936444BC26180E320000000000000000000000000000
          0000000000000D0906104C38295FA38470BED1B4A2EADCBEADF5DCBEADF5D1B4
          A2EAA38470BE4C38295F0D090610000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00E0070000C003000080010000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000080010000C0030000E007
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000010101041515153F32323292444444C8505050EB505050EB4444
          44C8323232921515153F01010104000000000000000000000000000000000000
          0000080808192E2E2E90505050EE585858FF5B5B5BFF5D5D5DFF5D5D5DFF5B5B
          5BFF585858FF505050EE2E2E2E90080808190000000000000000000000000707
          0719343434AD535353FF585858FF5D5D5DFF616161FF636363FF636363FF6161
          61FF5D5D5DFF585858FF535353FF343434AD0707071900000000010101032525
          2590474747FF4F4F4FFF555555FF5C5C5CFF606060FF636363FF636363FF6060
          60FF5C5C5CFF555555FF4F4F4FFF474747FF25252590010101030C0C0C3E3636
          36F13D3D3DFF434343FF494949FF4E4E4EFF525252FF555555FF555555FF5252
          52FF4E4E4EFF494949FF434343FF3D3D3DFF363636F10C0C0C3E181818932C2C
          2CFF2F2F2FFF333333FF363636FF393939FF3C3C3CFF3E3E3EFF3E3E3EFF3C3C
          3CFF393939FF363636FF333333FF2F2F2FFF2C2C2CFF18181893191919C82121
          21FF222222FF242424FF252525FF242424FF242424FF242424FF242424FF2424
          24FF242424FF252525FF242424FF222222FF212121FF191919C8161616EC1818
          18FF181818FF181818FF181818FF242424FF303030FF383838FF383838FF3030
          30FF242424FF181818FF181818FF181818FF181818FF161616EC111111EC1212
          12FF111111FF121212FF2B2B2BFF444444FF484848FF484848FF484848FF4848
          48FF444444FF2B2B2BFF121212FF111111FF121212FF111111EC090909C80B0B
          0BFF0A0A0AFF282828FF4E4E4EFF4F4F4FFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D
          4DFF4F4F4FFF4E4E4EFF282828FF0A0A0AFF0B0B0BFF090909C8040404960505
          05FF0A0A0AFF4C4C4CFF5F5F5FFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
          5CFF5C5C5CFF5F5F5FFF4C4C4CFF0A0A0AFF050505FF04040496010101450000
          00F60C0C0CFF6C6C6CFF707070FF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F
          6FFF6F6F6FFF707070FF6C6C6CFF0C0C0CFF000000F601010145000000060000
          00A1090909FF747474FF868686FF828282FF828282FF828282FF828282FF8282
          82FF828282FF868686FF747474FF090909FF000000A100000006000000000101
          01270A0A0AC85E5E5EFFA7A7A7FFA7A7A7FFA3A3A3FFA2A2A2FFA2A2A2FFA3A3
          A3FFA7A7A7FFA7A7A7FF5E5E5EFF0A0A0AC80101012700000000000000000000
          00000404042B262626B2828282FFB3B3B3FFBFBFBFFFC7C7C7FFC7C7C7FFBFBF
          BFFFB3B3B3FF828282FF262626B20404042B0000000000000000000000000000
          0000000000000303030E1D1D1D5B606060BA969696E7A5A5A5F4A5A5A5F49696
          96E7606060BA1D1D1D5B0303030E000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00E0070000C003000080010000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000080010000C0030000E007
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000D0D0D104E4E4E5F9E9E9EBEC3C3C3EACCCCCCF5CCCCCCF5C3C3
          C3EA9E9E9EBE4E4E4E5F0D0D0D10000000000000000000000000000000000000
          000028282832969696BCD1D1D1FFD8D8D8FFDCDCDCFFDEDEDEFFDEDEDEFFDCDC
          DCFFD8D8D8FFD1D1D1FF969696BC282828320000000000000000000000002727
          2732A8A8A8D9D2D2D2FFDBDBDBFFDEDEDEFFDFDFDFFFDFDFDFFFDFDFDFFFDFDF
          DFFFDEDEDEFFDBDBDBFFD2D2D2FFA8A8A8D927272732000000000909090C8C8C
          8CBCCCCCCCFFD8D8D8FFD9D9D9FFDBDBDBFFDCDCDCFFDEDEDEFFDEDEDEFFDCDC
          DCFFDBDBDBFFD9D9D9FFD8D8D8FFCCCCCCFF8C8C8CBC0909090C4242425EBABA
          BAFFCDCDCDFFD0D0D0FFD2D2D2FFD4D4D4FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6
          D6FFD4D4D4FFD2D2D2FFD0D0D0FFCDCDCDFFBABABAFF4242425E818181BFBABA
          BAFFC5C5C5FFC5C5C5FFC7C7C7FFC8C8C8FFC9C9C9FFCACACAFFCACACAFFC9C9
          C9FFC8C8C8FFC7C7C7FFC5C5C5FFC5C5C5FFBABABAFF818181BF959595EAB5B5
          B5FFB8B8B8FFB8B8B8FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9
          B9FFB9B9B9FFB9B9B9FFB8B8B8FFB8B8B8FFB5B5B5FF959595EA929293F5ADAD
          ADFFACACACFFACACACFFACACACFFB1B1B1FFB5B5B5FFB8B8B8FFB8B8B8FFB5B5
          B5FFB1B1B1FFACACACFFACACACFFACACACFFADADADFF929293F589898AF5A2A2
          A2FFA1A1A1FFA1A1A1FFABABABFFB5B5B5FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6
          B6FFB5B5B5FFABABABFFA1A1A1FFA1A1A1FFA2A2A2FF89898AF57D7D7DEA9696
          96FF989898FFA4A4A4FFB3B3B3FFB4B4B4FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3
          B3FFB4B4B4FFB3B3B3FFA4A4A4FF989898FF969696FF7D7D7DEA5F5F60BF8989
          89FF929292FFAEAEAEFFB6B6B6FFB5B5B5FFB5B5B5FFB5B5B5FFB5B5B5FFB5B5
          B5FFB5B5B5FFB6B6B6FFAEAEAEFF929292FF898989FF5F5F60BF2D2D2D5E7878
          7AFF898989FFB8B8B8FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9
          B9FFB9B9B9FFB9B9B9FFB8B8B8FF898989FF78787AFF2D2D2D5E0505050C5050
          52BC7A7A7BFFB8B8B8FFC1C1C1FFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBE
          BEFFBEBEBEFFC1C1C1FFB8B8B8FF7A7A7BFF505052BC0505050C000000001616
          1632616162D9A1A1A1FFCFCECEFFCFCFCFFFCDCDCDFFCCCCCCFFCCCCCCFFCDCD
          CDFFCFCFCFFFCFCFCEFFA1A1A1FF616162D91616163200000000000000000000
          000018181832646464BCAFAEAFFFCECECEFFD7D7D7FFDEDEDEFFDEDEDEFFD7D7
          D7FFCECECEFFAFAFAFFF636464BC181818320000000000000000000000000000
          000000000000090909103636365F828282BEB2B3B3EABEBEBEF5BEBEBEF5B2B2
          B3EA828282BE3636365F09090910000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00E0070000C003000080010000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000080010000C0030000E007
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001C1D1D36323434856A6E6FF5575858F55656
          56F55B5B5BF5636363F56E6F6FF5808484F55E6061BF2D2E2F4D000000000000
          00000000000000000000000000005D5E5FB9616161FF616161FF797979FF9090
          90FFA9A9A9FFBCBCBCFFC8C8C8FFCAC9C9FFBDBDBCFF7E8080FF000000000000
          0000000000000000000000000000565656ADC8C8C8FF6B6B6BFF848484FF9595
          95FFA8A8A8FFBDBDBDFFD4D4D4FFE9E9E9FFFFFFFFFF808080F6000000000000
          00000000000000000000000000004F4F4FADE9E9E9FFBFBFBFFF6D6D6DFFA0A0
          A0FFB2B2B2FFC6C6C6FFDCDCDCFFEAEAEAFFFFFFFFFF8F8F8FF6000000000000
          00000000000000000000000000004E4F4FADCCCCCCFFE9E9E9FFAEAEAEFF7E7C
          7AFFC6C3BFFFD6D6D6FFE9E9E9FFF4F4F4FFFFFFFFFF979797F6000000000000
          0000000000000000000000000000534F4BAABFBDBAFFCECCC9FFE6E2DDFF8994
          A3FF778EA8FFB8B5B1FFC0C0C0FFD3D3D3FFF4F4F4FFA4A4A4FF0C4E94CE2369
          A7D63D79ACD65B86ABD0010C1A2933425BB97B8BA2FF6386B2FF4778B4FF286A
          BCFF173467B9181817299DA3A3D09A9E9FD6959595D6747474CE2D88CFFF69CF
          F9FF42A8E6FF3193D8FF2886CFFF1E7CCCFF1A7ACDFF1E82D6FF2492E5FF2CA1
          F3FF001F5FAA00000000000000000000000000000000000000003A90CFF68FEB
          FFFF6ADBFFFF61D6FFFF55D2FFFF4CCDFFFF43C6FFFF3EC1FFFF3BBCFFFF35B1
          FCFF022864AD0000000000000000000000000000000000000000479AD7F6A8F3
          FFFF79E1FEFF6DDAFEFF5ED4FEFF53CEFEFF4BC8FEFF43C2FEFF3DBEFFFF3FB8
          FBFF042F6BAD000000000000000000000000000000000000000049A0DDF6C8FE
          FFFF94EDFFFF83E6FFFF6FDEFEFF5FD7FEFF55D1FEFF51CEFFFF4DCBFFFF57C7
          FDFF02326FAD00000000000000000000000000000000000000004EADEAFF96D7
          F6FFA2E2FAFFA9EBFCFFAAF1FFFFA1F0FFFF8BE4FFFF72D4F9FF5BC1F1FF46A4
          E0FF1F5488B90000000000000000000000000000000000000000213A484D3E85
          AFBF60B3E4F552A9E1F54CA2DDF54A9FD9F5449BD6F5419BD4F552A0D3F51C47
          6A8518252F360000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000F8000000F8000000F8000000F8000000F8000000F800
          000000000000001F0000001F0000001F0000001F0000001F0000001F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000E0000006200000009000000000000
          00000000000000000000000000000000000000000000000000000303031E0707
          074700000000000000000101010A030303AD020202FF00000083000000000000
          00000000000000000000000000000000000000000000000000000D0E0E691C1C
          1CF107070744010101080B0B0BB00B0B0BFF070707E701010141000000000000
          0000000000000000000000000000000000000000000000000000171A1BAA2626
          26FF1E1E1EE6151515C1171717FF111111E70303033900000000000000000000
          00000F0C0912604D3E789A7D66C4A38269D6A5846AD4836C5ABE393735ED2C2D
          2DFF292929FF242424FF1C1C1CE9050505360000000000000000000000002820
          1830AD8B6ED1E6CBB4FFF8E9DCFFFFF7EFFFFFFEF4FFC5B9AFFF383737FF3637
          37FF323232FF2D2D2DFF252525E909090943000000000000000016100C19B68D
          68D5F6DDC7FFFFF0E1FFFFF1E5FFFFF0E4FFFFF7EAFFA19A94FF404141FF4444
          44FF3E3E3EFF383839FF333333FF2B2B2BF3090909350000000076553789ECC5
          A1FFFDE4CDFFFDE8D4FFFFECDDFFFFEEE1FFFEEDDFFF787572FF515252FF4F50
          50FF464749FF444546F42B2C2DB1121212500303031100000000C39060DCF7D5
          B6FFFBDFC5FFFDE6D1FFFFEAD9FFFFF0DFFFE0D0C3FF656565FF5A5B5CFF6E6C
          6AFF9D8E81FF7D6552C600000000000000000000000000000000D8A472F0FAD9
          BBFFFADABFFFFDE3CCFFFFE7D4FFFFEFDBFFCABBB0FF827F7CFFB9AA9EFFEDD1
          B9FFFFDFC2FFA7805FD200000000000000000000000000000000D9AA7CF1FBE2
          CBFFFADDC3FFFCE1C9FFFEE4CEFFFEE4CEFFF8DFCAFFF6DEC8FFFFE7CEFFFFE2
          C8FFFDE4CDFFA98363D600000000000000000000000000000000CCA075E1FAE4
          D0FFFDE8D6FFFDE9D9FFFEEADAFFFEEADAFFFFEBDBFFFFECDCFFFDE9D9FFFEEA
          D9FFF6E0CBFFA17D5EC5000000000000000000000000000000008B6B4D99F5D9
          BEFFFDEEE1FFFDEDDFFFFEEFE2FFFEEFE3FFFEEFE3FFFEEFE2FFFDEDE0FFFFF1
          E5FFEBCBAEFF644D397700000000000000000000000000000000251E1728D6AF
          8BE7FCEFE2FFFEF4ECFFFEF2E8FFFEF1E7FFFEF1E7FFFFF2E8FFFFF6EDFFFAE9
          DAFFB8916ED1130F0C1600000000000000000000000000000000000000004034
          2945D4B08EE5F6E0CCFFFDF2E8FFFFF9F5FFFFF9F4FFFCF1E6FFF2D9C0FFBD98
          72D22A221A2F0000000000000000000000000000000000000000000000000000
          0000231D17268C705599CEA985E0DDB58FF1DCB48CF1C59F7ADA7A5F45891611
          0D18000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFF80000FF300000FF000000FF010000C003000080030000000100000001
          0000000F0000000F0000000F0000000F0000000F0000000F0000801F0000C03F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000040404220A0A0A700A0A0AB0070808D4060606EB030405EB0203
          04D4030303B00404047001010122000000000000000000000000000000000202
          020A121212801A1A1BEB282727FF403E3DFF535252FF5E5C5CFF5D5B5AFF4E4C
          4CFF363432FF181717FF070708EB050505800101010A00000000040404142222
          22B24A4848FF918C87FFCCC3BCFFEADFD7FFEFD2B0FFEEBF86FFECBD83FFECCD
          ABFFE8DCD3FFC7BCB4FF867E79FF33312FFF0C0C0CB2020202142424248D8C89
          86FFE7DFD9FFFFF9F2FFFFF7F3FFF3D8B7FFE1A558FFDB9E4FFFD99B4CFFD89A
          4BFFEECFABFFFFF3ECFFFFF5EAFFE1D6CDFF77726EFF0F0F0F8D3E3D3D75FFFF
          FAFFFFFAF5FFFAF4EFFFFAF4F0FFEBBF88FFE3A95EFFE2A961FFDEA559FFDA9D
          4DFFE1B176FFF8EFE8FFF7EDE6FFFDF2EAFFFFF6EEFF32302F7543434275FFFF
          FFFFFFFDFBFFFBF8F5FFFBF9F6FFEEC18AFFF1CD9FFFF3DBBBFFE3AB64FFDEA1
          53FFE4B67DFFF9F4F0FFF9F2EDFFFEF7F1FFFFFAF4FF373635753636368DA3A2
          A2FFEEEDEDFFFFFFFFFFFFFFFFFFFAE3C6FFF3C993FFF1CC9BFFE7AC62FFE5AA
          5EFFF5DDBFFFFFFFFFFFFFFFFDFFEAE5E2FF8F8C8BFF2222228D080808144848
          48B27C7C7CFFB3B3B2FFE0E0E0FFF6F7F8FFFAE6CBFFFBD29FFFFAD2A1FFF8E3
          CAFFF5F4F4FFDBDADAFFA8A7A6FF656565FF333334B205050514000000000404
          040A37373780616161EB707070FF828283FF919296FF999C9FFF989A9DFF8C8E
          91FF797A7AFF636363FF4F5050EB2C2C2C800303030A00000000000000000000
          0000000000000F0F0F22333333704C4C4CB0585858D45F5F5FEB5D5D5DEB5454
          54D4464646B02D2D2D700D0D0D22000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000E00700008001000000000000000000000000
          000000000000000000000000000080010000E0070000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000060D12295FA1E56B90B7F93A65A0E9194989D0052F
          649D00173C62000A1B2E0002060A000000000000000000000000000000000000
          0000000000000000000000386179878E9EFFFFFFE4FFFBF7E3FFECE4D1FFCFCF
          C2FFABB5B3FF7B90A3FD4E6E92F32E517EDD103562AE0421477F000000000000
          00000000000000000000097CC7E36C7A88FFFFE0BFFFFFFFF3FFFFFFE8FFFFFE
          DEFFFFFAD2FFFFF3C5FFFFE9B6FFF5DCA7FFE4CD98FF4B7694FB000000000000
          0000000000000634536236A2E8FF58A0CBFF6C829FFFA1B0C4FFBFC2CBFFD7CF
          CBFFEFDDC9FFFFE8C7FFFFEDC2FFFFEDBBFFFFF2AFFF00000000000000000000
          0000000000000B68B3E567B9E8FF7FD8FBFF099FEDFF0B94E3FF1088D9FF1B7E
          CBFF2D7BBDFF5181AEFF778EA5FF989DA3FFC8BDA2FF00000000000000000000
          00000939525C1F88D3FF75C5ECFF4BCCF5FF1FBCF4FF22B9F5FF1CB3F4FF15A8
          F1FF0E9CEBFF058CE1FF017CD3FF006FC6FF0E68B8FF0D5DAAF8000000000000
          00002792CCE067C1EEFF76D8F5FF2DCFF5FF2DCBF6FF29C5F6FF25BDF6FF1FB2
          F2FF1BA8ECFF189EE8FF1595E2FF118BDAFF0B7FD3FF0B5A889C000000000D39
          4D5553BCEDFFAAEBFBFF5BE5F9FF2FD9F6FF31D1F4FF2FCFF8FF2AC9FAFF24BE
          F7FF1EB0F2FF1AA4EAFF1698E3FF118AD9FF127AB2CC00000000000000002B92
          CCDF8FDDF7FF97EFFBFF38E6F8FF31CDECFF26B1DEFF26B0E0FF25B1E3FF22AE
          E6FF1EA8E5FF1BA4E7FF1699E4FF158ED1EC020B0F1000000000103B4F573BAB
          ECFFA0E6F9FF5EE9FAFF33E1F6FF2FC4E7FF29B6E0FF26AEDCFF23A5D8FF1F9D
          D3FF1C96D0FF1CA3E4FF19A0E4FA07283438000000000000000043A2CCDB6ACA
          F3FF87E6FAFF36E0F9FF37DBF3FF31C9EAFF2EC3E6FF2CBBE2FF28B3DFFF25AA
          D9FF23AFE4FF20B1F0FF0F4F69700000000000000000000000007ACCE1E8B3F1
          FCFF52DCF9FF2FDCF8FF39DFF5FF38DBF2FF35D5EFFF31CAEBFF2DC0E5FF2BBC
          E5FF28C0F3FF187A9EA6000000000000000000000000000000003F64696B97E4
          F5F72BCEF7FE33D9F8FF3AE1F8FF3CE6F7FF3DE7F7FF39E0F7FF35D6F4FF30D0
          F5FF24A7CBD20000000000000000000000000000000000000000000000000D19
          1D1D0B3F4D4F155865681D7582862898A4A930B7C4CA34C7D9DF32CAE3E82EBE
          DBE0041215160000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000F0070000F0000000F0000000E0010000E0010000C0000000C000
          000080010000800100000003000000070000000F0000001F0000801F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000002E19093C77431996A86325CBC6762CE9C57329E9A65E
          1FCB733E14962B16073C00000000000000000000000000000000000000000000
          00000E08031178471D94E09449FAF3B46EFFF4C791FFF3CDA0FFF3CA9DFFF2BF
          86FFF0A85BFFDB8432FA703C13940C0602110000000000000000000000000E09
          04119A612EB6F2B36DFFF7D7B1FFEFEAE4FFEAEEF3FFE7EEF6FFE5ECF4FFE3E7
          ECFFE6DFD8FFF0C799FFED9C48FF8D4E1AB60C06021100000000000000007F52
          2894F4BA78FFF7E4CCFFF0F4F8FFEDEFF1FFEAE4DEFFE7D9CCFFE4D6C9FFE4E1
          DDFFE1E4E8FFE0E4E9FFEDD1B0FFED9D49FF713C1394000000003322113AE9AD
          68FAF9E1C1FFF4F7FBFFF2F5F8FFEEE1D4FFE29F5EFFDE934BFFDC8E44FFDC9A
          5CFFE4DDD6FFE2E4E7FFE0E5EAFFF0C89BFFDC8533FA2A16073A89613697F8CD
          97FFF9F6F1FFF6F8FAFFF5F6F6FFF2F1F0FFE7B582FFE09246FFDD8D40FFE1B2
          84FFE8E9E9FFE6E6E7FFE2E4E7FFE6E1D9FFF0A95EFF753F1597C08F56CDFBE0
          BCFFFAFCFFFFF9F9F9FFF8F7F7FFF6FBFFFFEDCBA9FFE2964AFFE09449FFE7CC
          B2FFEBF0F5FFE8E8E8FFE5E6E6FFE5E8EBFFF2C189FFA96022CDDEAC6EE9FCE8
          CDFFFCFEFFFFFBFBFAFFF9F9F9FFF8FEFFFFEFCFAEFFE59C51FFE39A50FFEACE
          B2FFEEF1F6FFEBEBEBFFE8E8E8FFE6EBF0FFF3CC9EFFC6772CE9E1B073E9FDEA
          D0FFFEFFFFFFFCFCFCFFFBFDFDFFF8F1E9FFECBA83FFE7A45BFFE59F55FFECD1
          B6FFF0F4F8FFEEEEEEFFEBEBEBFFE9EDF3FFF4CFA1FFC8792FE9C79C66CDFDE5
          C5FFFFFFFFFFFEFEFEFFFDFEFFFFF9F0E6FFEFC291FFEBB173FFE8A55EFFEED4
          B8FFF3F7FBFFF1F1F0FFEDEEEEFFECEFF2FFF4C791FFAC6828CD93734997FBDA
          ADFFFFFCF9FFFFFFFFFFFEFEFEFFFCFDFDFFF7E4CFFFF2D4B1FFF2D4B4FFF4EC
          E3FFF4F6F7FFF2F2F2FFEFF1F4FFF1ECE5FFF3B46DFF7B481C97382C1C3AF4CA
          90FAFDECD5FFFFFFFFFFFFFFFFFFFBF3E8FFF0BD80FFEEB26DFFEEB87CFFF6EB
          DFFFF7F8FAFFF4F4F6FFF3F6FAFFF7D7AFFFE2984AFA2E1B0B3A000000009072
          4A94FAD6A4FFFEF2E2FFFFFFFFFFFFFFFFFFFBEEDEFFF6D8B4FFF4D3ADFFF9F2
          EBFFF9FBFEFFF7FBFEFFF9E4CBFFF3B46AFF7D4E23940000000000000000110D
          0811B18E5DB6FBD6A3FFFDEBD3FFFEFBF7FFFFFFFFFFFFFFFFFFFEFFFFFFFDFF
          FFFFFBF7F2FFFBE0BDFFF5BA73FFA06A34B60E09041100000000000000000000
          0000110D081190724A94F4C98EFAFAD9AAFFFCE3C2FFFDE8CDFFFDE7CAFFFBDE
          B8FFF9CC92FFEDB068FA855A2E940F0904110000000000000000000000000000
          000000000000000000003A2D1C3C92724A96C59C65CBE3B174E9E2AF6EE9C192
          58CB8D6639963726143C00000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F00F0000C003000080010000800100000000000000000000000000000000
          0000000000000000000000000000000000008001000080010000C0030000F00F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          200000000000000400000000000000000000000000000000000000000000CD82
          46FFCC7F42FFC97B3DFFC77738FFC57333FFC36F2FFFC16C2BFFBF6A28FFBE67
          25FFBD6523FFBC6421FFBB621FFFBB621FFFBB621FFF0000000000000000EEAF
          77FFFFEDCAFFFFE9C4FFFFE8C1FFFFE6BEFFFFE6BCFFFFE4B9FFFFE3B6FFFFE2
          B3FFFFE1B0FFFFE0ADFFFFDEAAFFFFE5B2FFBB621FFF0000000000000000EEB0
          78FFFFE9CBFFFFE6C5FFFFE5C2FFFFE3BEFFFFE2BBFFFFE0B8FFFFDEB5FFFFDE
          B1FFFFDCAEFFFFDAABFFFFD9A7FFFFDFADFFBB6320FF0000000000000000EFB1
          7AFFFFEDD3FFD7AC75FFE7BB80FFE1B986FFC6A178FFA58360FF9D7C5AFFAB8D
          69FFD4B58CFFF9D8ACFFFFDCAEFFFFE2B3FFBC6522FF0000000000000000EFB3
          7DFFFFF1DCFFD4A35BFFD6BC9DFFB58858FFBD772EFFCC8A36FFCD9947FFA081
          4AFF715636FFB39872FFF8D9AEFFFFE5BAFFBE6725FF0000000000000000F0B6
          82FFFFF3E1FFDCA44CFF9D6623FFDA8F2FFFF59C35FFE59438FFEAA03FFFFFCD
          5FFFDCBD75FF7C603EFFD1B38CFFFFE8C1FFBF6A28FF0000000000000000F1B9
          87FFFFF4E5FFDFB97DFFF9B134FFEFA02CFFB37022FFB79471FFD6B48FFFC080
          38FFDFAC53FFA88753FFB2926DFFFFEAC7FFC16D2DFF0000000000000000F2BD
          8DFFFFF5E8FFF0E2CDFFE7B44BFFEEA62AFFBE7724FF9B5E20FFA36523FFB36F
          2BFFB97128FFA2672AFF9B795AFFFFEDCEFFC37132FF0000000000000000F3C2
          93FFFFF6EBFFEDE0CCFFEAD3A2FFF5C244FFCC8A23FFE2A95CFFE7B16AFFD38A
          30FFF9A036FFC88232FFA4876CFFFFEED1FFC67638FF0000000000000000F4C6
          9BFFFFF8EFFFE2D1B8FFECD5A1FFF7E2A7FFC19B42FF997853FFB79261FFD18C
          29FFF7A534FFAE7A3DFFDBC5A9FFFFEFD5FFC97C40FF0000000000000000F5CB
          A3FFFFFAF2FFFFF7EDFFE3D3B1FFF0DBA1FFF5DC86FFD7B03DFFDFA329FFF0A9
          2BFFD6973AFFC3A57EFFF8E5CCFFFFF0D7FFCD8349FF0000000000000000F7D0
          ABFFFFFBF5FFFFF9F1FFFDF5ECFFDECDABFFE3D091FFE9D26BFFE8BD45FFE6B7
          4AFFC5A67AFFE4CEABFFE4C99EFFFFF1D9FFD18B51FF0000000000000000F8D6
          B3FFFFFCF8FFFFFAF4FFFFFAF3FFFFF9F2FFF9F2E7FFF0E4D4FFEBDBC4FFEDD9
          B5FFE5CA98FFE4C792FFE9D2B3FFFFF1DBFFD6945DFF0000000000000000F9DB
          BBFFFFFDFBFFFFFBF6FFFFFBF5FFFFFAF5FFFFFAF4FFFFFAF3FFFFFAF3FFFFF8
          F0FFFFF7ECFFFFF3E6FFFFF1DEFFFFF2DEFFDB9D69FF0000000000000000FBE0
          C6FFFFFFFFFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFCFFFFFEFCFFFFFEFCFFFFFC
          F9FFFFFBF4FFFFF8EEFFFFF5E7FFFFF5E5FFDEA674FF0000000000000000FCE1
          C3FFFBE3C9FFFBE1C5FFFBDEC0FFFBDDBDFFFADBB9FFFAD9B6FFFAD7B3FFFAD6
          B1FFF9D4ADFFF9D3ABFFF8D0A7FFF8CEA4FFE4AD7AFF00000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00800100008001000080010000800100008001000080010000800100008001
          0000800100008001000080010000800100008001000080010000800100008001
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          000E00000014000000150000001700000018000000190000001B0000001C0000
          001E0000001F0000002000000021000000230000001C000000080000000BBF7F
          4DFFBE7E4CFFBE7D4BFFBD7D4AFFBD7C49FFBC7B49FFBC7B48FFBB7A48FFBB7A
          47FFBA7946FFBA7846FFB97846FFB97845FFB97744FF0000001C0000000CC181
          50FFF8DDC1FFFADDBFFFFBDFC1FFFCE1C3FFF9DBBDFFF0CEABFFECC8A4FFEBC6
          A3FFE9C4A0FFE8C29DFFE7BF9AFFE5BC97FFB87745FF000000210000000AC385
          54FFEFD1B4FFF9E1C6FFFFE9D0FFFFE9CEFFF2D4B4FFB87A47FFB77845FFB576
          43FFB47441FFB3733FFFB2713DFFB1703CFFB1703CFFB1703CFF00000008C589
          59FFFBE6D1FFF2D6BAFFF3D8BDFFFDE7CFFFEED0B2FFBD804EFFFFFFFFFFFFFF
          FFFFEEEEEEFFDEDEDEFFEEEEEEFFFFFFFFFFFFFFFFFFB1713DFF00000006C88B
          5DFFFFF1E1FFFFF0DEFFF8E2CDFFF1D6BCFFE7C5A7FFC18755FFFFFFFFFF9292
          92FF1C1C1CFF8C8C8CFFDEDEDEFFFFFFFFFFFFFFFFFFB47441FF00000005C98F
          62FFFFF4E8FFFFF3E5FFFFF3E4FFFDEDDAFFCA9C77FFC68D5DFFFFFFFFFF2A2A
          2AFFBFBFBFFF1F1F1FFFD9D9D9FFFFFFFFFFFFFFFFFFB77946FF00000004CB92
          66FFFFF7EDFFFFF5EAFFE9D1BAFFB58157FFB68359FFCB9464FFFFFFFFFF1414
          14FFD9D9D9FF050505FFD9D9D9FFFFFFFFFFFFFFFFFFBC7F4CFF00000003CD95
          69FFF6E9DDFFCBA281FFB57D51FFE2C9B4FFEEDBCAFFD09B6CFFFFFFFFFF1C1C
          1CFFD9D9D9FF0B0B0BFFD9D9D9FFFFFFFFFFFFFFFFFFC08553FF00000002C58C
          5FFFBD885EFFDDC0A8FFFCF7F1FFFFFBF7FFF2E4D6FFD4A173FFD39F70FF2525
          25FFCF996AFF121212FFCB9464FFC99161FFC78F5EFFC58C5BFF00000001CC98
          6FFFF9F2EBFFFFFDFBFFFFFDFBFFFFFDFAFFFBF6F0FFF2E5D9FFEEDECFFF2E2E
          2EFFEEDECFFFEEDDCEFFEEDDCEFFE7D1BEFFB97F50FF0000001000000001DBB0
          8DFFDAAF8BFFD8AD89FFD8AD88FFD6AB86FFD5A983FFD3A781FFD2A580FF3737
          37FFCFA17BFFCD9F78FF191919FFCA9A73FFC89870FF0000000B000000000000
          0000000000010000000200000002000000030000000400000005000000064141
          41FF0D0D0D450B0B0B45212121FF0000000B0000000900000003000000000000
          0000000000000000000000000000000000000000000000000000000000001919
          1955303030C0282828C00E0E0E55000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000C0000000FF87
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          000E00000014000000150000001700000018000000190000001B0000001C0000
          001E0000001F0000002000000021000000230000001C000000080000000BBF7F
          4DFFBE7E4CFFBE7D4BFFBD7D4AFFBD7C49FFBC7B49FFBC7B48FFBB7A48FFBB7A
          47FFBA7946FFBA7846FFB97846FFB97845FFB97744FF0000001C0000000CC181
          50FFF8DDC1FFFADDBFFFFBDFC1FFFCE1C3FFFDE1C3FFFDE1C2FFFCE0C1FFFBDE
          BFFFF9DBBBFFF7D9B8FFF6D5B4FFF3D1B0FFBA7947FF000000210000000AC385
          54FFEFD1B4FFF9E1C6FFFFE9D0FFFFE9CEFFFFE8CDFFFFE7CCFFFFE7CBFFFFE6
          CAFFFFE5C8FFFDE3C5FFF7D8B9FFECC7A4FFBC7C49FF0000001F00000008C589
          59FFFBE6D1FFF2D6BAFFF3D8BDFFFDE7CFFFFFEBD3FFFFEBD2FFFFEAD1FFFFE9
          CFFFFDE4CAFFF3D4B4FFF0D0AFFFF8DCBFFFBE7E4DFF0000001D00000006C88B
          5DFFFFF1E1FFFFF0DEFFF8E2CDFFF1D6BCFFF6DDC5FFE9CDB1FFE9CDB2FFF6DC
          C2FFF0D2B5FFF7DEC4FFFFEBD3FFFFEAD1FFC08150FF0000001B00000005C98F
          62FFFFF4E8FFFFF3E5FFFFF3E4FFFDEDDAFFD1A987FF9D6130FF9D6130FFD0A9
          85FFFAE5CFFFFEECD7FFFFEED9FFFFEDD8FFC28453FF0000001900000004CB92
          66FFFFF7EDFFFFF5EAFFE9D1BAFFB58157FFB88961FFEEDBC9FFEEDBC8FFB685
          5DFFAF7B4EFFE3C3A3FFFBE6D0FFFDEDD9FFC48758FF0000001600000003CD95
          69FFF6E9DDFFCBA281FFB57D51FFE2C9B4FFFFF9F1FFFFF8F0FFFFF8EFFFFFF7
          EEFFDFC4ADFFA97042FFC1926AFFEDCFB2FFC78B5DFF0000001400000002C58C
          5FFFBD885EFFDDC0A8FFFCF7F1FFFFFBF7FFFFFBF5FFFFFAF4FFFFFAF4FFFFFA
          F3FFFFFAF2FFFBF3E9FFD5B498FFAA6E3FFFB77949FF0000001200000001CC98
          6FFFF9F2EBFFFFFDFBFFFFFDFBFFFFFDFAFFFFFDF9FFFFFCF9FFFFFCF8FFFFFC
          F8FFFFFCF7FFFFFBF6FFFFFBF6FFF6ECE2FFBC8355FF0000001000000001DBB0
          8DFFDAAF8BFFD8AD89FFD8AD88FFD6AB86FFD5A983FFD3A781FFD2A580FFD0A3
          7DFFCFA17BFFCD9F78FFCB9D76FFCA9A73FFC89870FF0000000B000000000000
          0000000000010000000200000002000000030000000400000005000000060000
          00060000000800000008000000090000000B0000000900000003000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000C0000000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000212121FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000383838FF000000000000000000000000C06E
          28FFFDFAF8FFC06D28FFFDFAF8FFC06C28FFFDFAF7FFC06C29FFFCFAF7FFC06B
          29FFFCFAF7FF5E5E5EFF575757FF515151FF4B4B4BFF454545FF00000000FDFB
          F9FFFDFBF8FFFDFAF8FFFDFAF8FFFDFAF8FFFDFAF8FFFDFAF8FFFDFAF8FFFDFA
          F7FFFDFAF7FFFCFAF7FFFCFAF7FF6A6A6AFF000000000000000000000000C172
          27FFFDFBF9FFFDFBF9FFFDFBF9FFFDFBF8FFFDFAF8FFFDFAF8FFFDFAF8FFFDFA
          F8FFFDFAF8FFFDFAF7FFFDFAF7FF838383FF000000000000000000000000FDFB
          F9FFFDFBF9FFFDFBF9FFFDFBF9FFFDFBF9FFFDFBF9FFFDFBF9FFFDFAF8FFFDFA
          F8FFFDFAF8FFFDFAF8FFFDFAF8FFFDFAF8FF000000000000000000000000C276
          28FFFDFBFAFFFDFBFAFFD0CFE7FF0F0F98FF0B0A96FF060693FFB9B8DDFF0606
          91FFFDFBF8FFFDFAF8FFFDFAF8FFBF6D27FF000000000000000000000000FDFC
          FAFFFDFCFAFFFDFCFAFF1F1EA3FFBEBDE1FFFDFBFAFFE5E3EFFF0A0A97FFE4E2
          EFFFFDFBF9FFFDFBF9FFFDFBF9FFFDFBF8FF000000000000000000000000C47C
          29FFFDFCFAFFFDFCFAFF2D2DABFFE7E6F2FFFDFCFAFFE6E4F1FF14149EFFFDFB
          F9FFFDFBF9FFFDFBF9FFFDFBF9FFBF6F26FF000000000000000000000000FDFC
          FBFFFDFCFBFFFDFCFAFFD8D7ECFF3434AFFF2D2DACFF2626A8FF1F1FA5FFFDFB
          FAFFFDFBFAFFFDFBFAFFFDFBF9FFFDFBF9FF000000000000000000000000C783
          2CFFFEFCFBFFFEFCFBFFFDFCFBFFFDFCFBFFFDFCFAFFE9E8F3FF2D2DAEFFFDFC
          FAFFFDFCFAFFFDFCFAFFFDFBFAFFC07325FF000000000000000000000000FEFD
          FCFFFEFDFBFFFEFDFBFFFEFDFBFF5454C0FF4C4CBCFF4444B9FFBAB9E3FFFDFC
          FAFFFDFCFAFFFDFCFAFFFDFCFAFFFDFCFAFF000000000000000000000000CA89
          30FFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFBFFFEFDFBFFFEFDFBFFFEFCFBFFFDFC
          FBFFFDFCFBFFFDFCFBFFFDFCFAFFC27825FF000000000000000000000000FEFD
          FCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFBFFFEFD
          FBFFFEFCFBFFFEFCFBFFFDFCFBFFFDFCFBFF000000000000000000000000CE90
          34FFFEFDFDFFCC8D31FFFEFDFCFFCB8A2FFFFEFDFCFFC9862DFFFEFDFCFFC783
          2BFFFEFDFBFFC68129FFFEFDFBFFC47E27FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFB0000FFFB000080000000800300008003000080030000800300008003
          000080030000800300008003000080030000800300008003000080030000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000024201CFF221E1AFF201C18FF1E1A16FF1C1814FF1B16
          13FF0D0B09800202021A00000000000000000000000000000000000000000000
          000000000000000000000A09083F27221FFF25201CFF00000000000000000F0D
          0B7F1C1915FF0E0B0A8000000000000000000000000000000000000000000000
          00000000000000000000000000002C2724FF2A2521FF00000000000000000605
          042A211D19FF1A1612D500000000000000000000000000000000000000000000
          0000000000000000000000000000312C29FF2F2A26FF00000000000000000706
          052A25211DFF1D1A17D500000000000000000000000000000000000000000000
          000000000000000000000000000037322EFF342F2CFF00000000000000001614
          127F2A2622FF1412108000000000000000000000000000000000000000000000
          00000000000000000000000000003C3733FF3A3531FF37322FFF35302CFF322D
          29FF1D1A189C0504041A00000000000000000000000000000000000000000000
          0000000000000000000000000000413D38FF3F3A36FF000000001614125F3732
          2EFF211F1CA00000000000000000000000000000000000000000000000000000
          000000000000000000000000000047413DFF453F3BFF000000000403030F3D38
          34FF37322FF00000000000000000000000000000000000000000000000000000
          000000000000000000001312113F4C4743FF4A4440FF000000001A18165F423D
          3AFF282523A00000000000000000000000000000000000000000000000000000
          00000000000000000000534E4AFF514C48FF4F4945FF4C4743FF4A4541FF2D29
          28A00F0E0D380000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000F00F0000F18F0000F98F0000F98F0000F98F
          0000F80F0000F91F0000F91F0000F11F0000F01F0000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001614119F201C19F1201C18FF1E1A16FD110F0C9F0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000605052725201CFF201C18ED010101090000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000221E1ACC27241FFF0C0B0A540000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001412116F2C2824FF1D1A17B10000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000004040415302C29FC2E2A27FC0303
          0312000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000262321B135302CFF1513
          116C000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000141312573A3531FF2B27
          24C9000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000020202093B3834F03D38
          34FF090808270000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002A27259C423D
          3AFF211F1C840000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002F2C2A9F423D3AE24842
          3FFF443F3BFA2A26249F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000F07F0000F87F0000FC7F0000FC7F0000FC3F
          0000FE3F0000FE3F0000FE1F0000FF1F0000FE0F0000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001E1915FF1C1814FF1A1612FF181510FF17130FFF15110EFF1411
          0DFF130F0CFF13100BFF130F0CFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000403031A110F0D801B1714D51E1A16FF1C1814FF1712
          10D50D0B09800202021A00000000000000000000000000000000000000000000
          000000000000000000001513118027221FFF191513AA0807063F0807063F1411
          0FAA1C1915FF0E0B0A8000000000000000000000000000000000000000000000
          00000000000000000000262320D52C2724FF0A09083F00000000000000000907
          073F211D19FF1A1612D500000000000000000000000000000000000000000000
          00000000000000000000342F2BFF312C29FF0000000000000000000000000000
          000025211DFF231F1BFF00000000000000000000000000000000000000000000
          00000000000000000000393531FF37322EFF0000000000000000000000000000
          00002A2622FF28241FFF00000000000000000000000000000000000000000000
          000000000000000000003F3A36FF3C3733FF0000000000000000000000000000
          0000302B27FF2D2824FF00000000000000000000000000000000000000000000
          00000000000000000000443F3BFF413D38FF0000000000000000000000000000
          000035312CFF322E2AFF00000000000000000000000000000000000000000000
          00000000000000000000494440FF47413DFF0000000000000000000000000000
          00003A3532FF38332FFF00000000000000000000000000000000000000000000
          0000000000000404030C4E4945FF4C4743FF0303030C00000000000000000303
          030C403B37FF3D3834FF0303020C000000000000000000000000000000000000
          00000000000044403DCB534E4AFF514C48FF3F3A37CB00000000000000003935
          32CB45403CFF433D39FF332F2CCB000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000E0070000FFFF0000F00F0000F00F0000F18F0000F3CF0000F3CF
          0000F3CF0000F3CF0000F3CF0000E1870000E1870000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002E2925FF2B2723FF292521FF27221FFF25201CFF221E1AFF201C18FF1E1A
          16FF1C1915FF1B1613FF191511FF171410FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000393430FF36312DFF342F2BFF312C29FF2F2A26FF2C2824FF2A2521FF2823
          1FFF25211DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000443E3AFF413C38FF3F3A36FF3C3733FF3A3531FF37322FFF35302CFF322D
          29FF302B27FF2D2824FF2B2722FF282420FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004E4945FF4C4642FF494440FF47413DFF453F3BFF423D39FF3F3B37FF3D38
          34FF3A3532FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000057524EFF55504CFF534E4AFF514C48FF4F4945FF4C4743FF4A4541FF4842
          3FFF45403CFF433D39FF403B37FF3E3935FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000FFFF0000C0030000FFFF0000C01F0000FFFF
          0000C0030000FFFF0000C01F0000FFFF0000C0030000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002E2925FF2B2723FF292521FF27221FFF25201CFF221E1AFF201C18FF1E1A
          16FF1C1915FF1B1613FF191511FF171410FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000342F2BFF312C29FF2F2A26FF2C2824FF2A2521FF2823
          1FFF25211DFF231F1BFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000443E3AFF413C38FF3F3A36FF3C3733FF3A3531FF37322FFF35302CFF322D
          29FF302B27FF2D2824FF2B2722FF282420FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000494440FF47413DFF453F3BFF423D39FF3F3B37FF3D38
          34FF3A3532FF38332FFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000057524EFF55504CFF534E4AFF514C48FF4F4945FF4C4743FF4A4541FF4842
          3FFF45403CFF433D39FF403B37FF3E3935FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000FFFF0000C0030000FFFF0000F00F0000FFFF
          0000C0030000FFFF0000F00F0000FFFF0000C0030000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002E2925FF2B2723FF292521FF27221FFF25201CFF221E1AFF201C18FF1E1A
          16FF1C1915FF1B1613FF191511FF171410FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000312C29FF2F2A26FF2C2824FF2A2521FF2823
          1FFF25211DFF231F1BFF211D19FF1F1B17FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000443E3AFF413C38FF3F3A36FF3C3733FF3A3531FF37322FFF35302CFF322D
          29FF302B27FF2D2824FF2B2722FF282420FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000047413DFF453F3BFF423D39FF3F3B37FF3D38
          34FF3A3532FF38332FFF35302DFF332E2AFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000057524EFF55504CFF534E4AFF514C48FF4F4945FF4C4743FF4A4541FF4842
          3FFF45403CFF433D39FF403B37FF3E3935FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000FFFF0000C0030000FFFF0000F8030000FFFF
          0000C0030000FFFF0000F8030000FFFF0000C0030000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00020000000900000011000000120000000A0000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00083C210C6E834819D0804619D1381F0B700000000900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000E8D501CCEFEE0C0FFFDD9B4FF84491AD00000001000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000C96551FCDFFF3E8FFFFECD9FF8D501CCF0000000F000000005F5F5FFF5D5D
          5DFF5A5A5AFF575757FF555555FF525252FF0000000000000000000000000000
          000644280F669A5A21CC975820CD42260E6A0000000700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00020000000B00000016000000170000000D0000000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00053C210C64834819CA804619CA381F0B660000000600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00088E501CC8FEE0C0FFFDD9B4FF844A1ACA0000000A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000796551FC7FFF3E8FFFFECD9FF8D4F1CC900000009000000005F5F5FFF5D5D
          5DFF5A5A5AFF575757FF555555FF525252FF0000000000000000000000000000
          000344280F5D9A5A21C7975820C742260E610000000400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000060000000B0000000C000000070000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00023C210C5C834919C5804619C5381F0B5E0000000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00038D501CC3FEE0C0FFFDD9B4FF854A1AC40000000500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000296551FC2FFF3E8FFFFECD9FF8D4F1CC400000004000000005F5F5FFF5D5D
          5DFF5A5A5AFF575757FF555555FF525252FF0000000000000000000000000000
          000144280F569A5A21C2975820C242260E590000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000002000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF0081FF000081FF000081FF00008103000081FF000081FF000081FF000081FF
          00008103000081FF000081FF000081FF000081FF00008103000081FF0000E3FF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000060360CD274410EFF5C330BCD000000000000000000000000000000000000
          0000160C02345A3007D76A3907FF693907FF0000000000000000000000000000
          00000000000055300CBA2917055A000000000000000000000000000000000000
          00000D07011E6B3A09FC6A3909FC0A0501180000000000000000000000000000
          000000000000271606545A330CC3000000000000000000000000000000000000
          0000391F05846E3C09FF482806AB000000000000000000000000000000000000
          000000000000010100036C3E0FE7120A02270000000000000000000000000301
          000665380BE76F3D0BFF1C100342000000000000000000000000000000000000
          0000000000000000000040250A8743260A900000000000000000000000002716
          0557713F0DFF5E340AD500000000000000000000000000000000000000000000
          0000000000000000000010090221794612FF784511FF764310FF75430FFF7442
          0FFF73410EFF301B066C00000000000000000000000000000000000000000000
          000000000000000000000000000058330EB72E1A076000000000150C032D7642
          10FF6F3E0EF30704010F00000000000000000000000000000000000000000000
          0000000000000000000000000000271706515F370FC60000000048290B997744
          11FF452709960000000000000000000000000000000000000000000000000000
          000000000000000000000000000001010003704112E71B100439744311F37845
          12FF150C032D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003F250B815E360FC17B4713FF5D36
          0EC3000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000F09031E7C4815FC7C4814FF2A18
          0757000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000593410B4774514F00302
          0006000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000C7C30000E7C30000E7C70000E3870000F38F0000F00F
          0000F90F0000F91F0000F81F0000FC3F0000FC3F0000FE3F0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000006137
          0DD275420FFF5D340BCD0000000000000000000000000000000000000000160C
          02345B3108D76B3908FF6A3907FF000000006D6D6DFF6D6D6DFF000000000000
          000056320CBA2917065A00000000000000000000000000000000000000000D07
          011E6C3B09FC6B3A09FC0A050118000000000000000000000000000000000000
          0000281706545B340DC300000000000000000000000000000000000000003A20
          06846F3C0AFF4A2806AB0000000000000000754210FF00000000000000000000
          0000010100036D3F0FE7120A0327000000000000000000000000030200066639
          0BE7703E0CFF1D100342000000007A4815FF784512FF764310FF000000000000
          00000000000041250A8744270A90000000000000000000000000281605577340
          0EFF5E350BD50000000000000000000000007C4A17FF00000000000000000000
          000000000000100902217A4612FF794612FF784511FF764310FF75430FFF7442
          0FFF311C066C000000000000000000000000814F1DFF00000000000000000000
          0000000000000000000058340EB72E1B076000000000150C032D774410FF703F
          0FF30704010F000000000000000000000000875625FF00000000000000000000
          0000000000000000000028170751603810C600000000492A0B99784512FF4628
          0A96000000000000000000000000000000008E5E2FFF00000000000000000000
          0000000000000000000001010003714213E71C100439754412F37A4612FF150C
          032D00000000000000000000000095683AFF926435FF906030FF000000000000
          000000000000000000000000000040250B815F3710C17C4814FF5E360FC30000
          00000000000000000000000000000000000095683BFF00000000000000000000
          00000000000000000000000000000F09031E7D4916FC7D4915FF2A1907570000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005A3510B4774615F0030200060000
          00006D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF00008F840000CF870000CF8D0000C7080000E71D0000E01D
          0000F21D0000F23D0000F0380000F87D0000F87F0000FC400000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000005000000140000001B0000001C0000001D0000001E0000
          001F000000210000002200000023000000240000001D00000008000000000000
          00000000000000000012BB7E4CFFBA7C49FFB87B49FFB87947FFB77846FFB677
          44FFB57643FFB47441FFB37340FFB3723FFFB1713EFF0000001C000000000000
          00000000000000000015BE824FFFF9ECDFFFF9EBDEFFF8EADDFFF8EADCFFF8E9
          DBFFF8E8DAFFF7E8D9FFF7E7D8FFF7E7D7FFB47441FF00000023000000000000
          00000000000000000013C18554FFFBF1E5FFFBEFE4FFFBEFE2FFFAEEE1FFFAED
          E0FFFAEDE0FFF9ECDEFFF9EBDDFFF9EBDDFFB67744FF00000021000000000000
          00000000000000000011B4865DFFC8D5DBFFFDF3E9FFFDF2E9FFFDF2E7FFFCF1
          E6FFFCF0E5FFFCF0E3FFFBEEE2FFFBEEE1FFB87B48FF0000001F000000000000
          00000000000002365080155F8AFF004876FF73A2BEFFFEF7EEFFFEF6ECFFFEF5
          ECFFD7E3CAFFF2EDE0FFFDF3E8FFFCEFE3FFBB7E4BFF0000001D000000000000
          0000084C6B93056499F40791C8FF02A5ECFF015B94FF73A4C0FFFFF8F1FFFFF8
          F0FF84C088FF23893EFFFDF3E9FFFBEFE3FFBE814FFF0000001B000000001248
          5E770E77AEF421BFE5FF18C8F1FF0DBAEFFF04ACEDFF015F97FF73A4C1FFFFF9
          F2FF0B8E21FF067C25FFFCF1E6FFFAEDE0FFC18554FF0000001A060E11141C7B
          ADE340BBDDFF45DEF4FF2CD5F4FF1BCCF1FF10BDEFFF05AFEDFF016399FF73A5
          C3FF0C9220FF077F25FFFAEDE1FFF7E8D9FFC38958FF000000181F425161238B
          C5FFC5F5FAFF69E7F4FF4BDFF4FF2CC8E7FF149DCBFF12C2F1FF08B4EEFF0157
          8BFF09874BFF088324FFF7E8DBFFF5E2D1FFC78D5CFF00000016000000002C83
          B1DBB4E1EFFFC8F5FAFF6EE2F0FF010202FF2AB7D9FF23D2F4FF0C93C7FF3589
          B4FF0E9A1EFF7FB67EFFF4E1D0FFF0DAC6FFC99161FF00000014000000000000
          00002D86B3DBB5E1F0FFCAF6FAFF080F10FF5AE4F4FF22A8D4FF3C9BC5FF14B2
          17FF83C47EFF949555FFCF9869FFCE9768FFCC9565FF0000000D000000000000
          0000000000002E87B5DCB6E1F0FF252D2DFF46B4DAFF4AA6D1FF19C512FFB3DA
          A2FFDEDFC5FFD29E6FFFFFFCF9FFD5D2CFDC1717162A00000004000000000000
          000000000000000000044FA1C7FF153747FF5BAFD7FFFAF2EAFFF7EBE1FFF4E5
          D7FFF2E0D0FFD5A274FFD5D2D0DB171716260000000400000000000000000000
          00000000000000000002765E46FF4B5D5FFFDDAE82FFDCAD80FFDBAB7FFFDAAA
          7DFFD8A87BFFD8A679FF17171724000000030000000000000000000000000000
          0000000000000000000000000041000000420000000400000005000000050000
          0006000000070000000600000002000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00E0000000E0000000E0000000E0000000E0000000E0000000C00000008000
          0000000000000000000080000000C0000000E0000000E0010000E0030000F007
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000E1EB7FF081195FF081193FF071191FF070F8FFF060E8CFF060D8AFF060C
          88FF050C86FF040B84FF040A82FF040981FF0000000000000000000000000000
          00001122BFFF1021BEFF1020BCFF0F1FBAFF0E1FB8FF0E1EB7FF0D1DB5FF0C1C
          B3FF0C1BB2FF0C1BB0FF0B1AAFFF0A1AADFF0000000000000000000000000000
          00001425C8FF1424C6FF1223C4FF1223C2FF1222C0FF1021BFFF1020BDFF1020
          BBFF0F1FBAFF0E1EB8FF0E1DB6FF0D1DB4FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000080C89DC080C9CFF06087ACB0000000000000000000000000202
          3760020375D103048EFF03048DFF000000000000000000000000000000000000
          00000000000000000203090E93E7010218270000000000000000000000000000
          0406040585E7040591FF01012542000000000000000000000000000000000000
          00000000000000000000060A5887060A5D900000000000000000000000000203
          3557060997FF04067CD500000000000000000000000000000000000000000000
          00000000000000000000020316210C15A9FF0B13A7FF0A11A5FF0910A2FF080E
          9FFF070B9CFF0304416C00000000000000000000000000000000000000000000
          00000000000000000000000000000A117CB7050840600000000002031D2D0A11
          A4FF090E9AF30001090F00000000000000000000000000000000000000000000
          0000000000000000000000000000050938510C1388C600000000080D66990C14
          A8FF060B62960000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000002030F19A1E7040627390E17A6F30E17
          ACFF02041E2D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000A105D810E1788C1101CB2FF0B14
          86C3000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000204161E1321B6FC121FB6FF060A
          3D57000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000101985B41320AFF00001
          0406000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000C0030000C0030000C0030000FFFF0000E3870000E3870000F38F
          0000F00F0000F90F0000F91F0000F81F0000FC3F0000FC3F0000FE3F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0005000000130000001A0000001B0000001C0000001D0000001E0000001F0000
          00210000002200000023000000240000001D0000000800000000000000000000
          0011BC7F4DFFBB7E4CFFBA7C49FFB87B49FFB87947FFB77846FFB67744FFB576
          43FFB47441FFB37340FFB3723FFFB1713EFF0000001C00000000000000000000
          0014BE8351FFF9EDE0FFF9ECDFFFF9EBDEFFF8EADDFFF8EADCFFF8E9DBFFF8E8
          DAFFF7E8D9FFF7E7D8FFF7E7D7FFB47441FF0000002300000000000000000000
          0012C18756FFFCF1E6FFBEB2A5FF83705FFF97816EFFD7C6B5FFFAEDE0FFFAED
          E0FFF9ECDEFFF9EBDDFFF9EBDDFFB67744FF0000002100000000000000000000
          0010C48A5AFFFEF4EBFF66594EFFF8F8F8FFF8F8F8FF9A8472FFFCF1E6FF7877
          76FF737271FF6E6D6DFFFBEEE1FFB87B48FF0000001F00000000000000000000
          000FC78F5EFFFFF9F2FF5C5149FFF8F8F8FFF8F8F8FF897765FFFEF5ECFFFEF5
          EAFFFEF3E9FFFDF3E8FFFCEFE3FFBB7E4BFF0000001D00000000000000000000
          000DCA9362FFFFFAF4FFB3ACA6FF5D534AFF6B5D52FFC4B9AFFFFFF8F0FFFFF7
          EFFFFFF6EEFFFDF3E9FFFBEFE3FFBE814FFF0000001B00000000000000000000
          000BCD9667FFFFFAF6FFFFFAF5FFFFFAF4FFFFFAF3FFFFF9F3FFFFF9F2FFFFF9
          F1FFFEF5ECFFFCF1E6FFFAEDE0FFC18554FF0000001A00000000000000000000
          000ACF9B6CFFFFFBF6FFC6BCB3FF937E6DFFA9917DFFE2D4C8FFFFF9F3FFFEF7
          F0FFFCF2E8FFFAEDE1FFF7E8D9FFC38958FF0000001800000000000000000000
          0008D29F70FFFFFCF8FF6C5F54FFF8F8F8FFF8F8F8FFAB937FFFFEF7F1FF8785
          83FF82807EFF7B7A78FFF5E2D1FFC78D5CFF0000001600000000000000000000
          0007D5A375FFFFFDFAFF5C534CFFF8F8F8FFF8F8F8FF95806EFFFCF4ECFFFAEF
          E4FFF6E7DAFFF4E1D0FFF0DAC6FFC99161FF0000001400000000000000000000
          0006D9A77AFFFFFDFBFFB1AEABFF5D544CFF6D5F54FFC5B9AFFFFAF0E7FFF7EB
          DFFFD09A6BFFCF9869FFCE9768FFCC9565FF0000000D00000000000000000000
          0005DBAB7FFFFFFEFDFFFFFEFBFFFEFAF7FFFCF6F0FFFAF1E9FFF7EADFFFF5E6
          D8FFD29E6FFFFFFCF9FFD5D2CFDC1717162A0000000400000000000000000000
          0003DDAF83FFFFFEFCFFFEFBF8FFFCF7F1FFFAF2EAFFF7EBE1FFF4E5D7FFF2E0
          D0FFD5A274FFD5D2D0DB17171626000000040000000000000000000000000000
          0002E0B387FFDFB185FFDFB083FFDDAE82FFDCAD80FFDBAB7FFFDAAA7DFFD8A8
          7BFFD8A679FF1717172400000003000000000000000000000000000000000000
          0000000000020000000300000003000000040000000500000005000000060000
          0007000000060000000200000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00800100008001000080010000800100008001000080010000800100008001
          000080010000800100008001000080010000800100008003000080070000C00F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000046240966AB57
          13FFA95511FFA7530FFFA6520EFFA4500CFFA34E0BFF150A0122150A01229F4C
          09FF9E4B08FF9D4A07FF9C4906FF9C4906FF9C4906FF3E1D026647260A66B05B
          17FFAE5915FFAB5712FFA95511FFA7530FFFA6520EFF0B05011100000000A14E
          0BFFA04C0AFF9F4C09FF9E4B08FF9D4A06FF9C4906FF3E1D026649270C66904C
          16CC000000000C060111512A0A77AB5713FF9E5011EE0000000000000000994B
          0BEEA34F0BFF4B2405770B050111000000007E3B06CC3F1E0366000000000000
          0000311A0844A75818EEB15D18FF8B4912CC2E18064400000000000000002C16
          044484420BCCA3500CFF97490AEE2B1503440000000000000000000000000D07
          0211AE5E1FEEB7621EFF9D5418DD0C0602110000000000000000000000000000
          00000B06011190470CDDA4500DFF984A0BEE0B05011100000000000000005B33
          1277BF6A25FFBC6722FF572F0F77000000000000000000000000000000000000
          0000000000004F280877A75410FFA6530FFF4D26067700000000000000009F5B
          23CCC46F2AFFC16C27FF26150733000000000000000000000000000000000000
          00000000000023120433AA5713FFA95611FF86430CCC0000000000000000B066
          2ADDC9742EFFC6712BFF00000000000000000000000000000000000000000000
          00000000000000000000AF5B17FFAD5914FF934B10DD0000000000000000B46A
          2DDDCE7833FFCA7530FF0D080311000000000000000000000000000000000000
          0000000000000C060211B35F1AFFB15C18FF974E13DD00000000000000009D5F
          2BBBD47F39FFD07C36FF45281155000000000000000000000000000000000000
          0000000000003E220B55B7631DFFB5601CFF834512BB00000000000000005838
          1B66DB8A42FFD8863FFF8D5527AA000000000000000000000000000000000000
          0000000000007F4618AABC6722FFB9641FFF49270C6600000000000000000000
          0000B5783CCCDF9248FFDB8D43FF643E1D770000000000000000000000000000
          00005C341477C36E29FFC16C27FF98541CCC0000000000000000000000000000
          0000100B0611A9753DBBE3994DFFDE9047FFAD6A32CC623A1A7760381777A35F
          26CCC9742FFFC7722DFF905220BB0D0703110000000000000000000000000000
          000000000000000000005D412266976634AADC8D45FFD5823BFFD27B36FFCF79
          34FF895022AA522F146600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000000000000080000021840000C183000083C1000087E1000087E1
          00008FF1000087E1000087E1000087E10000C3C30000C0030000F00F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000040404108E8E8EB9747373B50303
          030E000000000000000000000000000000000000000000000000000000000000
          000000000000000000000303031062707EAED4D4D4E0F9F9F9FBF9F8F8FFC4C3
          C3DD5050508C0202020D00000000000000000000000000000000000000000000
          00000202020B505860A1598BBCFD72A5D5FFF6F5F4FFF4F3F3FBF3F2F1FFEBE8
          E7FFE5E2E0FFAFADAAD843424183020202090000000000000000000000002120
          204BC2BFBCE7AAB7C1FF0F5593FF6A9AC5FFEFEDEBFFEFEEECFBEEEBEBFFE3E0
          DFFFDEDAD8FFD8D5D2FFD3CFCBFF9B9995D71A1A194400000000000000004645
          4586DAD7D4FFA5B0B8FF0E4D82FF759BB8FFE7E5E3FFE8E6E5FBB4B3B1FFCECB
          C8FFD7D3D0FFD2CDC9FFCCC7C3FFC7C1BCFF3837387F00000000000000004342
          4686E3E0DEFFBAC1C6FF8EA4B3FFDEDAD7FFE0DDDAFFDBDAD9FB9C9B9CFF6056
          B9FFA19EA0FFC0BBB6FFC5C0BBFFC0BAB4FF3533387F00000000000000004140
          4686E8E5E3FFE8E5E4FFE6E4E2FFDBD7D6FFD9D5D2FFADABAAFC766EC4FF6A5F
          E9FF786DE8FF6258B0FF959091FFADA6A0FF34333B7F00000000000000003D3D
          4786EBE9E8FFDAD8D7FFB2ABAAFFAEA6A6FFB9B7B3FF706C89E3534AD9FE2215
          D8FF3122E0FF7368EEFF6052E6FF5D52A3FF31303E8A00000000000000003B39
          4689EFEEEDFFCDCAC9FF767070FFB5B0AFFF939091FA514CB6E82117CAFF3D35
          CEFF2B1FD1FF2313DDFF3120E6FF3B29EFFF3625DCF2100D476D0607142E3535
          4390B1B0AFFFC6C5C4FFE2E0DFFFB1AFAFFF535190D62D28C1FF251EC3FF9190
          CEFFBBBADCFF2216D3FF2314DDFF2413E4FF2814EDFF1D19618D16194F932B2F
          80E08A8894F7ACABAAFFAEAEADFF777688E46968C7FE7B79D3FF6665B9FFD8D4
          DAFFD1D1E2FF2218CAFF2215D6FF2314DCFF2217A5CE01010307000000000A0B
          23412C2E75B53D3D95E06C6A88DF5C5EB0F29091D4FF8584D3FF6D6CAEFF7F7D
          8DFFA2A3B5FF332CC7FF2117CEFF1F13BFE80707233A00000000000000000000
          00000000000005061C32575895C24F51ADF39597D3FF8F90D4FF7E7ECAFF4240
          6CFF5A57A9FF5C58D2FF231BC7FE100F5B860000000000000000000000000000
          0000000000000000000000000000040516261E1F79B5595AB1EE8686D0FF8181
          D1FF7574D1FF6A67D0FF211E8CC1000002030000000000000000000000000000
          000000000000000000000000000000000000000000000304111D191972AA4D4D
          ABE87676CDFF4746B0E805051B2C000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000202
          0B13131567A50F11497300000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFEFFFFFFFF
          FFFFFEFEFEFFFDFDFDFFFBF9F9FFF8F5F7FFF4F3F5FFF2F2F2FFF6F3F5FFF7F4
          F6FFF6F6F6FFFAFAFAFFFEFBFDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
          FCFFEDEDEDFFD4D6D6FFCDCBCBFFC8C6C6FFC0C0C0FFC0C0C0FFC0C0C0FFC1C0
          C2FFC3C3C3FFCBCBCBFFD8D5D7FFECEAEAFFF9F7F6FFFFFFFFFFFFFFFFFFB6B5
          B7FF5A5B5FFF58595DFF59585AFF5B585AFF5A595BFF5A595BFF5A595BFF5857
          59FF5A595BFF59585AFF5A595DFF5E5D61FF858486FFFBFAFCFFFFFFFEFFA5A6
          A4FF414141FF868686FF8B8988FF8B8988FF8C8A89FF8B8988FF8C8B87FF8C8A
          89FF8C8A89FF8C8A89FF8B8989FF5D5D5DFF676767FFFBFBFBFFFFFFFFFFA8A8
          A8FF8D8D8DFFE0DEDDFFD9D9D9FFDADADAFFDCDADAFFDCDADAFFD8DBD9FFD8DB
          D9FFDADADAFFD9D9D9FFDBDBDBFFBEBEBEFF727272FFFAFAFAFFFFFEFFFFA8A8
          A8FF9E9F9DFFE3E4E2FFE5E5E5FFE7E7E7FFE3E3E3FFE0E0E0FFE3E3E3FFEBEB
          EBFFE4E1E3FFE3E1E1FFE4E4E4FFCECECEFF787676FFFDFBFBFFFCFEFEFFA7A9
          A9FF9F9F9FFFDDDDDDFFD8D8D8FFDADADAFFD8D6D6FFD6D4D4FFD7D8D6FFDDDE
          DCFFD8D6D6FFD7D5D5FFD5D8D6FFC7CAC8FF797979FFF9F9F9FFFBFEFCFFA7AA
          A8FFA1A1A1FFE3E1E1FFD9D9D9FFD3D1D0FFD1CDCCFFD1CDCCFFCBCCC8FFD1D2
          CEFFCFCDCCFFCECCCCFFCECFCDFFC1C1C1FF7E7B7DFFFCF9FBFFFFFDFFFFB1AC
          AEFFA5A3A3FFE3E6E4FFE7E6E8FFEAE7E9FFD0D4CFFFCAC7C2FFC7C5C4FFCACB
          C9FFC6C4C3FFC6C1C2FFC9C6C2FFB7B8B6FF817F7FFFFBF9F9FFFFFFFFFFACAB
          AFFFA8A6A6FFE6E4E3FFE5E4E6FFE7E7E7FFE4E4E4FFE1DFDFFFDCDAD9FFD5D3
          D3FFC1C0C2FFB9B9B9FFBAB6B5FFABACAAFF848183FFFBFAFCFFFFFFFFFFAEAE
          AEFFAAA8A8FFEBEAECFFE5E7E8FFE9E8E4FFE8E5E7FFE6E4E4FFE7E5E4FFEAE8
          E7FFE5E5E5FFE4E1E3FFE1E3E3FFD1CFCEFF878486FFFCF9FBFFFFFFFFFFB1B1
          B1FF494886FF4140A0FF413F9FFF4341A1FF4342A4FF3F40A2FF4440A0FF4341
          A5FF4241A1FF4240A0FF423F9BFF433F98FF807F88FFF9F9F9FFFFFFFFFFB2B2
          B2FF3A348DFF393490FF3E3B90FF1A1AAAFF1D17AAFF302B98FF463F8AFF1E16
          A9FF1E1AA9FF25219EFF504D84FF23219DFF81808AFFFAFAFAFFFFFFFFFFB2B4
          B4FF4E4C88FF6866A2FF716EA5FF46439FFF4A44A3FF5C58A0FF7976A8FF4744
          A0FF4B46A2FF4F50A1FF8786A8FF464196FF85858BFFFDFBFBFFFFFFFFFFDEDE
          DEFFBAB8B8FFB2B3AFFFB7B5B5FFBAB7B9FFB8B8B8FFB3B4B2FFB2B3AFFFB8B8
          B8FFB9B9B9FFB6B6B6FFB4B5B3FFB9B7B7FFC9CCCAFFFDFDFDFFF8FFF8FFF9FF
          FAFFFFFFFFFFFEFBFDFFF9FCFAFFFEFEFEFFFFFEFFFFFFFDFDFFF4F9F7FFFBFE
          FCFFFEFFFDFFFEFDFFFFF8FAFAFFFFFFFFFFFFFEFFFFFFFEFFFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000200000006000000060000
          0002000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000D0F080163362105AF533408D0543509D13A23
          06B1110A01690000000F00000000000000000000000000000000000000000000
          0000000000000503003D5C380BDA935F16FF9F6B1BFFA6731EFFA87520FFA573
          1FFF9E6C1CFF6B440FDF07040045000000000000000000000000000000000000
          0000070400407C4D12F2A06A1EFFAF7B28FFB8892FFFBD9034FFBE9236FFBD91
          35FFB78A32FFAE7D2AFF93621CF60A06014B0000000000000000000000000000
          00106C4311E2A46D23FFB68531FFC3973CFFCBA346FF79632EFF6E5B2CFFCFAA
          4DFFCBA348FFC29840FFB68835FF855B1EE90100001700000000000000001E12
          0475A26823FFB78433FFC79B43FFD2AD50FFD9B959FF776733FF6A5D2FFFDCBF
          62FFD8B75DFFD1AC55FFC79E49FFBA8A39FF2A1C088300000000000000005C39
          11C7B37A2FFFC59841FFD3AE52FFDCBE60FFE2CA6BFF7C703DFF6E6538FFE4CF
          74FFE0C76FFFDBBD67FFD3AE5AFFC89D4AFF785421D40000000100000002945E
          20F0BF8D39FFC9A34CFFC3A859FFCBB566FFCFBF70FF726B40FF665F3BFFD2C3
          79FFCFBD75FFCBB56DFFD4B666FFD2AC57FFB5873AFA0000000600000003A570
          29F6C89A42FFA58841FF211C0FFF221F12FF232014FF13120BFF11100AFF2422
          16FF242115FF232013FFA28E52FFD8B662FFC49846FE00000008000000008961
          26DACB9F49FFD7B55FFFE0C573FFE6D186FFEBDA93FF827953FF736C4CFFECDD
          9CFFEAD898FFE6D18DFFE1C87DFFDBBB6BFFA78641E800000001000000005740
          1B97CDA24CFFD9B663FFE1C679FFE7D18CFFEBD999FF827856FF736B4FFFEDDC
          A2FFEAD89EFFE7D294FFE3C983FFDDBD6FFF6C562AA50000000000000000120E
          082BC59B4AFBD8B561FFE0C477FFE6CF8BFFE9D598FF817656FF726A4EFFEBDA
          A2FFEAD69EFFE7D192FFE2C982FFD7B76AFD1D170D3700000000000000000000
          00005E4F3083D5B05AFFDEBF6FFFE3CA83FFE7D191FFA4966AFF9B8E67FFE9D6
          9CFFE8D396FFE5CE8AFFE1C67AFF6D5E3C910000000000000000000000000000
          00000000000172634091D8B663FEE1C474FFE4CB83FFE6CF8CFFE7D190FFE7D0
          8EFFE6CE88FFE0C57BFE80704A9D010101030000000000000000000000000000
          0000000000000000000039342748A48F59C3D9BC6DFDE2C777FFE3C97BFFDDC2
          76FEAC9965C9413B2D5000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000C0B0914231F1838232018390D0C
          0A16000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FC3F0000F00F0000E0070000C00300008001000080010000800000000000
          000000000000800000008001000080010000C0030000C0030000F00F0000FC3F
          0000}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
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
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000407
          06230C2D247B0F40309F0F4232A3104333A3104333A3104333A3104333A31043
          33A3104333A30F4232A30F4131A30E34298E080B0A4501010107010101091153
          3EBF12774DFF127850FF137B53FF137D56FF137E57FF147F59FF147F59FF137F
          58FF137D56FF137B54FF127951FF12784FFF15825FF909100F530A1A175D147E
          55FC147D53FF158058FF16835BFF17865EFF178760FF188861FF188861FF1888
          61FF1B8761FF18845DFF158159FF147E55FF147A50FF114A38B2113E349C1680
          55FF178459FF19885FFF198B63FF1B8D66FF1B8F68FF1B906AFF28946FFF7DCB
          AEFFAAEFD4FF98DFC4FF349571FF18855BFF168055FF145B42D11340379D1987
          5BFF1B8B60FF1D8F66FF1E926AFF1F956EFF289973FF74C8AAFFADF0D7FFB1F3
          DAFFB1F3DAFFB1F3DAFFABEED4FF289169FF19875BFF165F47D21441399D1C8D
          61FF1E9167FF20956DFF219871FF2C9E79FFA3E5CCFFB4F4DBFFA4E1C9FF88CB
          B2FFB4F4DBFFB3F3DAFF83C4ABFF26916AFF1C8D62FF18624AD216423A9D2093
          68FF22976DFF249B73FF269D78FF83D1B5FFB8F5DDFF7BC8AEFF30A180FF2FA3
          80FF6CBEA2FF53AF90FF259A73FF22986FFF209368FF1B664DD216433A9D2398
          6EFF259C73FF28A079FF59B495FFBCF6DFFF93D0B9FF2EA784FF2CA986FF2CA9
          85FF2BA682FF2AA47FFF28A17AFF269D74FF23986EFF1D6851D218443C9D269D
          73FF28A178FF3CAA85FFB8F1DBFFADE8D1FF39AA88FF31AE8AFF31AE8AFF31AD
          89FF2FAB86FF2EA983FF2CA67FFF29A279FF269E73FF1F6B53D219453C9D28A1
          76FF2BA47BFF6AC3A4FFC5F9E4FFA3E3CBFF34AD8AFF34B08DFF34B08DFF33B0
          8CFF32AE89FF31AC86FF2EA982FF2CA57DFF29A177FF206D56D21A463D9D2BA5
          79FF2DA87EFF8AD3B8FFCAFAE6FFCAFAE6FF90D1B9FF36B28EFF36B38EFF36B2
          8DFF35B18BFF33AF88FF31AC84FF2EA97FFF2BA579FF227057D21A463E9D2BA7
          7BFF2EAA7FFF87CFB5FFCDFBE8FFCDFBE8FF7BC3A9FF37B48EFF37B48EFF37B3
          8EFF35B28BFF34B088FF32AE85FF2FAB81FF2CA77BFF227158D21A463E9B2CAA
          7DFF2FAC81FF54B693FFC3EEDDFFC7F3E1FF45AF8CFF38B58EFF38B58EFF37B5
          8EFF36B48BFF35B289FF32B085FF30AD82FF2DAA7DFF237259D1132D28742DAD
          80FF2FAD81FF31B084FF39A781FF43A785FF36B48BFF37B58DFF37B58DFF37B5
          8CFF35B48AFF34B388FF32B085FF2FAE82FF2CAB7DFF1F6852BA03050412278A
          6CD02EAF81FF31B184FF32B286FF34B488FF35B589FF36B58BFF36B58BFF35B5
          8AFF34B488FF33B387FF31B184FF2FB081FF2EAB83F8102D265B00000000050B
          0A1E216053AD309D81E433A689E935A78AE936A78BE937A88CE937A88CE937A7
          8BE935A78AE934A689E932A587E8267461C2080F0D3801010102}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000706
          052330250D7B4632119F483411A3493512A3493512A3493612A3493612A34935
          12A3493512A3483411A3483311A3382A108E0B0A084501010107010101095D40
          13BF8D5014FF8F5215FF915516FF935817FF945917FF955B17FF955B17FF945A
          17FF935817FF925616FF8F5315FF8E5015FF916218F9100F0A531A170B5D9358
          17FC935517FF965A19FF995D1AFF9B601BFF9C621BFF9D641CFF9D641CFF9C63
          1CFF9A631FFF985F1CFF975B19FF945718FF915216FF523A13B24236139C9757
          19FF9A5C1BFF9D611DFFA0651DFFA2681FFFA36B1FFFA46C20FFA2742FFFCDB7
          8DFFEEDFBFFFDFCEABFFA3763BFF9B5D1BFF975719FF674417D14438149D9D5E
          1DFFA0631EFFA36921FFA66D22FFA97023FFA9782DFFCEB384FFF1E3C4FFF4E5
          C8FFF4E5C8FFF4E5C8FFEEE0C2FFA26D2EFF9D5E1DFF6B4819D24539169DA365
          20FFA66A22FFA97024FFAC7426FFAE7E33FFE6D9B9FFF5E9CCFFE2D6BAFFCDBD
          9AFFF5E9CCFFF4E8CBFFC6B695FFA46E2BFFA36520FF6E4C1BD2463B179DA96B
          23FFAC7026FFAF7628FFB17A2AFFD6C195FFF5ECD1FFCDB88BFFB18336FFB484
          35FFC5AC7AFFB9965DFFAD7629FFAD7227FFA96B24FF71501ED2473C189DAE71
          27FFB17629FFB47C2CFFBB9F66FFF7F0D5FFD1C8A7FFB88733FFBB8931FFBB87
          31FFB98430FFB7812FFFB57D2CFFB2772AFFAE7127FF74521FD2483D1A9DB376
          2AFFB67B2DFFBA8B43FFF1ECD1FFE9E2C4FFB98C3FFFBF8D36FFBF8D36FFBF8C
          35FFBE8934FFBC8632FFB98130FFB77C2DFFB3762AFF775621D2493D1A9DB779
          2CFFB97E2FFFCBAE79FFFAF6E0FFE4DBBAFFBE8D39FFC38F39FFC38F39FFC28E
          38FFC18C37FFBF8835FFBD8432FFBA7F30FFB77A2DFF795723D24A3E1B9DBB7C
          2EFFBD8131FFD9C59CFFFBF9E5FFFBF9E5FFD2C8A4FFC5903BFFC6913BFFC590
          3BFFC38E39FFC28B38FFC08735FFBD8232FFBA7D2FFF7B5924D24A3E1C9DBE7E
          2FFFC08332FFD6C199FFFCFBE8FFFCFBE8FFC7B58BFFC8913CFFC8913CFFC891
          3CFFC68E3AFFC58B39FFC28836FFC08433FFBE7F30FF7D5A25D24A3F1C9BC180
          30FFC38433FFC49B5DFFEEEEDCFFF3F3E1FFBD924BFFCA913CFFCA913CFFCA91
          3CFFC98E3AFFC88C39FFC58936FFC38534FFC18130FF7E5B25D12E291474C483
          30FFC48432FFC78835FFB8863FFFB48A4AFFCA8E3BFFCB903CFFCB903BFFCB8F
          3BFFCA8D3AFFC98B38FFC78836FFC58533FFC38130FF735322BA050503129A6E
          2AD0C78432FFC98734FFC98936FFCB8C38FFCB8D39FFCB8E3AFFCB8E3AFFCB8D
          39FFCB8C38FFCA8A37FFC98735FFC88532FFBF8632F83027115B000000000C0A
          051E675323ADAC8334E4B58B38E9B68C3AE9B68D3AE9B78D3AE9B78D3AE9B78D
          3AE9B68C3AE9B68C39E9B48936E87D6229C20F0E083801010102}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000097048597300000EC300000EC301C76FA864000000F949444154388D
          C5923D4F024110869F650F581321F7232CA868F8072436D2FA034C6C4DAEB5A1
          3016545AD1D251D25BD89A50694D4B4DFC085ECEDC9D774B01E49663B9E6304E
          3599CC3C9977DE11D11C4D89A894193E0AC0D926C10F4C9E40A9E2812884CB0B
          50750B603406298B014902BD6E0610E611A50421B2669D82062AA6500DBF8945
          C2FB275C792036CD5AC3E31D7C2DE1FE01D880D314C643709B39C08982F32E34
          4E218EE1E616C208FC00A6AF30E8AF37FCF6B3F5F72498F7705BF0F60C8B0FB8
          F660F602B5EAFE4DAC360A5BF140FCFF23FD1DA0D3064742BD06ADB3C300AB0B
          B0F67BFB545AE79EC908C75EDE1D1005B6AC00125F421DA92D6ACE0000000049
          454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000097048597300000EC300000EC301C76FA864000000F649444154388D
          6354D7F65EC5C0F83F84919191918104F0FFFFFFFF0CFF19D730AAEB78FD2355
          33B2214CE46A666060606064646464411668CCBFC8A02CF705AFA6074FB8196A
          FA0DE07C1403761C926210E0FB85D7804F9F5951F82806FCFDCBC8F0FB0F139C
          7FF1BA20C3FFFF0C0C065AEFE1627FFEA2FA18C5003FE7270C2AF29F19181818
          1854E43F3394761A31FCF9C3C4D0597A9EE1F6035E0606060686FB4F78184E5E
          14C56E00B2DF76CCDB0767BFFFC8C61051608BD54B4C58454900C3C000165C12
          771EF2307CFECAC2F0F72F133C06B001460D5DEFFF94B880E9FFFFFF641BF0FF
          FFFFFF4C0CFF19D7906308343BAF0500922A5451341BB4D30000000049454E44
          AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000C17A5458745261772070726F66696C65207479706520657869660000
          78DA6D50C10DC3200CFC334547B0C136304E1281D40D3A7ECF902654ED49807D
          36E783D05ECF1E1E0EAE144473B16A468054A97143506842897823F613FB806C
          F3E4FD9B0F1A67100BA87417E8E41383F1783FB54F21AB25932C42D3CB8D2BE5
          FFB99215EB59AC6BB2649CC97408B92ADE1629A3F798CDF5F85CC6F8D5E5E516
          FCE28687D0F0FF5B58A12A0DFF97A48B08E62BC40D2BE3C9EEC757B006C20BF8
          60EB882118DEB7EC4FE455B5BE0D00000AD369545874584D4C3A636F6D2E6164
          6F62652E786D7000000000003C3F787061636B657420626567696E3D22EFBBBF
          222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F
          3E0A3C783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D
          6574612F2220783A786D70746B3D22584D5020436F726520342E342E302D4578
          697632223E0A203C7264663A52444620786D6C6E733A7264663D22687474703A
          2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E74
          61782D6E7323223E0A20203C7264663A4465736372697074696F6E207264663A
          61626F75743D22220A20202020786D6C6E733A746966663D22687474703A2F2F
          6E732E61646F62652E636F6D2F746966662F312E302F220A20202020786D6C6E
          733A657869663D22687474703A2F2F6E732E61646F62652E636F6D2F65786966
          2F312E302F220A202020746966663A585265736F6C7574696F6E3D2239362F31
          220A202020746966663A595265736F6C7574696F6E3D2239362F31220A202020
          746966663A5265736F6C7574696F6E556E69743D2232220A202020746966663A
          536F6674776172653D2250686F746F5363617065220A202020657869663A436F
          6C6F7253706163653D2231220A202020657869663A506978656C5844696D656E
          73696F6E3D223136220A202020657869663A506978656C5944696D656E73696F
          6E3D223136223E0A2020203C657869663A55736572436F6D6D656E743E0A2020
          20203C7264663A416C743E0A20202020203C7264663A6C6920786D6C3A6C616E
          673D22782D64656661756C74223E53637265656E73686F743C2F7264663A6C69
          3E0A202020203C2F7264663A416C743E0A2020203C2F657869663A5573657243
          6F6D6D656E743E0A20203C2F7264663A4465736372697074696F6E3E0A203C2F
          7264663A5244463E0A3C2F783A786D706D6574613E0A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020200A3C3F787061636B657420
          656E643D2277223F3E1B773C8B000000097048597300000EC300000EC301C76F
          A8640000015549444154388DCD934B2B84511CC67FFFF3BE33C63B988B461A25
          14C625A5502C18C48EF111C8CA17C067F0112CD8DA4BD9C852522E1B929D9505
          66C23B37F3762C86B91952B3F1D4D93CCF39BF739E537FD9DD5AD0D42055CBE1
          7F0FD0789B4284C291BF034419656147EF04E3736B055F6B8D88424455023481
          502763D3AB782CDF178E94FD42D28E17371B2603A34B74F547BFBF401926FEE6
          762C6F10AD358DBE5646A69669EB18A62B32098069D6D112EEC334DD0580F975
          DBD3C31DD7E7FB44631B9C1DEFD033348FD510006024BA423AFD4AF7E02CA964
          829B8B03D4672DB3B473CA4EE0B1FC4417D751AA18D57BFDCCC43651868BD3A3
          ED6A7F905726F5423663A30C1788A0B52E2C65B8D0DA21F9FA88885456C82BF9
          F6CCEDE5215663906A7272EFC41FEF4B1C290738B90C2282DBEDAD0AC86A1B27
          972D71743900E0EA640F7E1B2F919F2BE4730552E9FEAC9A67E1038E595E9640
          9838DB0000000049454E44AE426082}
      end>
  end
  object pop_date: TPopupMenu
    AutoHotkeys = maManual
    AutoPopup = False
    Left = 37
    Top = 248
    object N1: TMenuItem
      Caption = #50724#45720
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #50612#51228
      OnClick = N2Click
    end
    object N6: TMenuItem
      Caption = #52572#44540' 1'#51452
      OnClick = N6Click
    end
    object N23: TMenuItem
      Caption = #52572#44540' 2'#51452
      OnClick = N23Click
    end
    object N7: TMenuItem
      Caption = #52572#44540' '#54620#45804
      OnClick = N7Click
    end
    object N11: TMenuItem
      Caption = '1'#51068'~'#47568#51068
      OnClick = N11Click
    end
    object N13: TMenuItem
      Caption = #52572#44540' '#46160#45804
      OnClick = N13Click
    end
  end
  object ColorDialog1: TColorDialog
    Left = 928
    Top = 260
  end
  object tmr_hint: TTimer
    Enabled = False
    OnTimer = tmr_hintTimer
    Left = 748
    Top = 260
  end
  object tmr_dis: TTimer
    Enabled = False
    OnTimer = tmr_disTimer
    Left = 796
    Top = 260
  end
  object tmr_search: TTimer
    Enabled = False
    Interval = 300
    OnTimer = tmr_searchTimer
    Left = 844
    Top = 260
  end
  object popAccSearch: TPopupMenu
    AutoHotkeys = maManual
    Left = 584
    Top = 160
    object pmm_search: TMenuItem
      Caption = #52488#44592#54868#51312#54924
      OnClick = pmm_searchClick
    end
  end
  object TCPClient: TIdTCPClient
    OnDisconnected = TCPClientDisconnected
    OnConnected = TCPClientConnected
    ConnectTimeout = 0
    Port = 0
    ReadTimeout = -1
    Left = 761
    Top = 149
  end
  object tmPing: TTimer
    Enabled = False
    OnTimer = tmPingTimer
    Left = 804
    Top = 149
  end
  object PmAutoSec: TPopupMenu
    Left = 648
    Top = 160
    object N16: TMenuItem
      Caption = '1'#52488'-'#51088#46041#44081#49888
      OnClick = N16Click
    end
    object N31: TMenuItem
      Caption = '3'#52488'-'#51088#46041#44081#49888
      OnClick = N31Click
    end
    object N51: TMenuItem
      Caption = '6'#52488'-'#51088#46041#44081#49888
      OnClick = N51Click
    end
    object N91: TMenuItem
      Caption = '9'#52488'-'#51088#46041#44081#49888
      OnClick = N91Click
    end
  end
  object pm_FastSearch14: TPopupMenu
    AutoHotkeys = maManual
    Left = 662
    Top = 216
    object fast14_N1: TMenuItem
      Caption = #44060#51064
      OnClick = fast14_N1Click
    end
    object fast14_N2: TMenuItem
      Tag = 1
      Caption = #50629#49548
      OnClick = fast14_N1Click
    end
    object fast14_N3: TMenuItem
      Tag = 2
      Caption = #48277#51064
      OnClick = fast14_N1Click
    end
  end
  object pm_FastSearch15: TPopupMenu
    AutoHotkeys = maManual
    Left = 752
    Top = 216
    object fast15_N1: TMenuItem
      Caption = #54788#44552
      OnClick = fast15_N1Click
    end
    object fast15_N2: TMenuItem
      Tag = 1
      Caption = #54980#48520
      OnClick = fast15_N1Click
    end
    object fast15_N3: TMenuItem
      Tag = 2
      Caption = #54980#48520'('#47560#51068')'
      OnClick = fast15_N1Click
    end
    object fast15_N4: TMenuItem
      Tag = 3
      Caption = #50808#49345
      OnClick = fast15_N1Click
    end
    object fast15_N5: TMenuItem
      Tag = 4
      Caption = #54788#51109#52852#46300
      OnClick = fast15_N1Click
    end
    object fast15_N6: TMenuItem
      Tag = 5
      Caption = #54980#48520'('#52852#46300')'
      OnClick = fast15_N1Click
    end
    object fast15_N7: TMenuItem
      Tag = 7
      Caption = #48373#54633
      OnClick = fast15_N1Click
    end
    object fast15_N9: TMenuItem
      Tag = 6
      Caption = #54980#48520#51204#52404
      OnClick = fast15_N1Click
    end
  end
  object pm_FastSearch17: TPopupMenu
    AutoHotkeys = maManual
    Left = 842
    Top = 216
    object fast17_N1: TMenuItem
      Caption = #45796#51473#44540#48176
      OnClick = fast17_N2Click
    end
    object fast17_N2: TMenuItem
      Tag = 1
      Caption = #44053#51228#48176#52264
      OnClick = fast17_N2Click
    end
    object fast17_N3: TMenuItem
      Tag = 2
      Caption = #47928#51088#48176#52264
      OnClick = fast17_N2Click
    end
    object fast17_N4: TMenuItem
      Tag = 3
      Caption = #52264#44048#47928#51088#48176#52264
      OnClick = fast17_N2Click
    end
    object fast17_N5: TMenuItem
      Tag = 4
      Caption = #53440#54532#47196#44536#47016#48176#52264
      OnClick = fast17_N2Click
    end
    object fast17_N6: TMenuItem
      Tag = 5
      Caption = #54788#51109#53084
      OnClick = fast17_N2Click
    end
    object fast17_N7: TMenuItem
      Tag = 6
      Caption = #51204#51204#44592#49324#48176#52264
      OnClick = fast17_N2Click
    end
    object fast17_N8: TMenuItem
      Tag = 7
      Caption = #52852#52852#50724#48176#52264
      OnClick = fast17_N2Click
    end
    object fast17_N9: TMenuItem
      Tag = 8
      Caption = #51060#51204#44592#49324#48176#52264
      OnClick = fast17_N2Click
    end
    object fast17_N10: TMenuItem
      Tag = 9
      Caption = #50696#50557#48176#52264
      OnClick = fast17_N2Click
    end
    object fast17_N11: TMenuItem
      Tag = 10
      Caption = #44540#44144#47532#48176#52264
      OnClick = fast17_N2Click
    end
    object fast17_N12: TMenuItem
      Tag = 11
      Caption = #49828#47560#53944#48176#52264
      OnClick = fast17_N2Click
    end
    object fast17_N13: TMenuItem
      Tag = 12
      Caption = #46020#52265#51648#44540#48176
      OnClick = fast17_N2Click
    end
  end
  object pm_FastSearch22: TPopupMenu
    AutoHotkeys = maManual
    Left = 931
    Top = 216
    object N19: TMenuItem
      Tag = 99
      Caption = #51204#52404
      OnClick = fast22_N1Click
    end
    object fast22_N1: TMenuItem
      Caption = '1'#48516#48120#47564
      OnClick = fast22_N1Click
    end
    object fast22_N2: TMenuItem
      Tag = 1
      Caption = '1'#48516#51060#49345
      OnClick = fast22_N1Click
    end
    object fast22_N3: TMenuItem
      Tag = 2
      Caption = '2'#48516#51060#49345
      OnClick = fast22_N1Click
    end
    object fast22_N4: TMenuItem
      Tag = 3
      Caption = '3'#48516#51060#49345
      OnClick = fast22_N1Click
    end
    object fast22_N5: TMenuItem
      Tag = 4
      Caption = '4'#48516#51060#49345
      OnClick = fast22_N1Click
    end
    object fast22_N6: TMenuItem
      Tag = 5
      Caption = '5'#48516#51060#49345
      OnClick = fast22_N1Click
    end
    object fast22_N7: TMenuItem
      Tag = 6
      Caption = '6'#48516#51060#49345
      OnClick = fast22_N1Click
    end
    object fast22_N8: TMenuItem
      Tag = 7
      Caption = '7'#48516#51060#49345
      OnClick = fast22_N1Click
    end
    object fast22_N9: TMenuItem
      Tag = 8
      Caption = '8'#48516#51060#49345
      OnClick = fast22_N1Click
    end
    object fast22_N10: TMenuItem
      Tag = 9
      Caption = '9'#48516#51060#49345
      OnClick = fast22_N1Click
    end
    object fast22_N11: TMenuItem
      Tag = 10
      Caption = '10'#48516#51060#49345
      OnClick = fast22_N1Click
    end
    object fast22_N12: TMenuItem
      Tag = 11
      Caption = '11'#48516#51060#49345
      OnClick = fast22_N1Click
    end
    object fast22_N13: TMenuItem
      Tag = 12
      Caption = '12'#48516#51060#49345
      OnClick = fast22_N1Click
    end
    object fast22_N14: TMenuItem
      Tag = 13
      Caption = '13'#48516#51060#49345
      OnClick = fast22_N1Click
    end
    object fast22_N15: TMenuItem
      Tag = 14
      Caption = '14'#48516#51060#49345
      OnClick = fast22_N1Click
    end
    object fast22_N16: TMenuItem
      Tag = 15
      Caption = '15'#48516#51060#49345
      OnClick = fast22_N1Click
    end
    object fast22_N17: TMenuItem
      Tag = 16
      Caption = '16'#48516#51060#49345
      OnClick = fast22_N1Click
    end
    object fast22_N18: TMenuItem
      Tag = 17
      Caption = '17'#48516#51060#49345
      OnClick = fast22_N1Click
    end
    object fast22_N19: TMenuItem
      Tag = 18
      Caption = '18'#48516#51060#49345
      OnClick = fast22_N1Click
    end
    object fast22_N20: TMenuItem
      Tag = 19
      Caption = '19'#48516#51060#49345
      OnClick = fast22_N1Click
    end
  end
  object pm_FastSearch24: TPopupMenu
    AutoHotkeys = maManual
    Left = 979
    Top = 264
    object fast24_N1: TMenuItem
      Tag = 99
      Caption = #51204#52404
      OnClick = fast24_N1Click
    end
    object fast24_N2: TMenuItem
      Caption = #49324#50857
      OnClick = fast24_N1Click
    end
    object fast24_N3: TMenuItem
      Tag = 1
      Caption = #48120#49324#50857
      OnClick = fast24_N1Click
    end
  end
  object pm_Counsel: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    OwnerDraw = True
    OnPopup = pm_CounselPopup
    Left = 516
    Top = 160
    object pm_Cancel: TMenuItem
      Tag = 1
      Caption = #50724' '#45908'  '#52712' '#49548
      ShortCut = 49
      OnClick = pm_CancelClick
    end
    object pm_ReAcc: TMenuItem
      Caption = #51116#51217#49688'('#48176#52264#51648#50672')'
      OnClick = pm_ReAccClick
    end
    object pm_Panelty: TMenuItem
      Caption = #48176#52264#52712#49548'('#54056#45328#54000')'
      OnClick = pm_PaneltyClick
    end
    object pm_Panelty_reservation: TMenuItem
      Tag = 5
      Caption = #48176#52264#52712#49548'('#54056#45328#54000')+'#45824#44592
      OnClick = pm_Panelty_reservationClick
    end
    object pm_CanReAcc: TMenuItem
      Caption = #50724#45908#52712#49548'+'#51116#51217#49688
      OnClick = pm_CanReAccClick
    end
    object N17: TMenuItem
      Caption = #47928#51032'+'#52628#44032#51217#49688
      OnClick = N17Click
    end
    object pm_CanReRes: TMenuItem
      Tag = 5
      Caption = #50724#45908#52712#49548'+'#45824#44592
      OnClick = pm_CanReResClick
    end
    object pm_CanNOCX_CUST: TMenuItem
      Tag = 10
      Caption = #50724#45908#52712#49548'+'#44256#44061#51204#54868#44152#44592
      OnClick = pm_CanNOCX_CUSTClick
    end
    object pm_WkCallPass: TMenuItem
      Tag = 22
      Caption = #44592#49324#53084#54056#49828
      Visible = False
      OnClick = pm_WkCallPassClick
    end
    object pm_ReAccept: TMenuItem
      Tag = 3
      Caption = #51116'   '#51217'    '#49688
      ShortCut = 8244
      OnClick = pm_ReAcceptClick
    end
    object pm_complete: TMenuItem
      Tag = 6
      Caption = #50756'          '#47308
      ShortCut = 56
      OnClick = pm_completeClick
    end
    object pm_reservation: TMenuItem
      Tag = 5
      Caption = #45824'          '#44592
      ShortCut = 50
      OnClick = pm_reservationClick
    end
    object N18: TMenuItem
      Caption = #45824#44592#50724#45908' '#50756#47308
      ShortCut = 57
      OnClick = N18Click
    end
    object pm_R_termination: TMenuItem
      Caption = #50696#50557#54644#51228'('#51217#49688')'
      OnClick = pm_R_terminationClick
    end
    object pm_Add_Insert: TMenuItem
      Caption = #52628' '#44032'  '#51217' '#49688
      ShortCut = 51
      OnClick = pm_Add_InsertClick
    end
    object N25: TMenuItem
      Caption = #48176' '#52264'  '#51648' '#50672
      OnClick = N25Click
    end
    object pm_share: TMenuItem
      Caption = #51593' '#49884'  '#44277' '#50976
      ShortCut = 52
      OnClick = pm_shareClick
    end
    object mniOrderToAsk: TMenuItem
      Caption = #47928#51032#47196' '#48320#44221
      ShortCut = 48
      OnClick = mniOrderToAskClick
    end
    object N20: TMenuItem
      Caption = #52712#49548' '#54980' '#51116#51217#49688
      OnClick = N20Click
    end
    object N10: TMenuItem
      AutoLineReduction = maManual
      Caption = '-'
    end
    object pmCallChange: TMenuItem
      Caption = '['#51228#55092#53084#51204#54872']'#54532#47532#48120#50628' --> '#51068#48152#53084
      OnClick = pmCallChangeClick
    end
    object pmNoShow: TMenuItem
      Caption = #45432#49660' '#50756#47308
      OnClick = pmNoShowClick
    end
    object pmCallByInsureFree: TMenuItem
      Bitmap.Data = {
        CE080000424DCE08000000000000360000002800000019000000160000000100
        200000000000980800000000000000000000000000000000000000E1FAFF01DF
        FAFF01DFFBFF00DFFBFF02DFFBFF01E0FAFF03DEF8FF07E1F5FF00E7F1FF12DD
        E6FF17DCE7FF00E3F1FF08E1FAFF06DFF6FF12D9EDFF1FD7EAFF07E1F5FF05DF
        FDFF10DCFDFF05E1F9FF05DFFAFF02DFFAFF04DFFAFF02E0FAFF02DFFAFF00DF
        FBFF00DFFBFF00DFFBFF00DFFBFF00DFFBFF00DFFBFF01DEFBFF05E6FDFF09B9
        C7FF083748FF083344FF06ADBDFF09E9FFFF14ACC4FF073347FF0A3344FF10B6
        C5FF09E4FFFF14DDFEFF04E3F9FF00E0FAFF00DFFBFF00DFFBFF00DFFBFF00DF
        FBFF00DFFBFF00DFFBFF00DFFBFF00DFFBFF00DFFBFF00DFFBFF00E1FBFF03E7
        FBFF1DA8B6FF0D0312FF0D000DFF1A9BAAFF09ECFFFF269CAEFF04000AFF0401
        0CFF21A4B2FF0EE6FFFF0ADEFFFF01E4FBFF00E0FAFF00DFFBFF00DFFBFF00DF
        FBFF00DFFBFF00DFFBFF00DFFBFF00DFFBFF00DFFBFF00DFFBFF00DFFBFF01E0
        FCFF03E8FAFF16B2B6FF02090FFF010309FF11A0A7FF0CEDFFFF1AA4AAFF0007
        06FF000609FF17ACB0FF03E9FEFF08DEFFFF02E2FDFF00E0FBFF00DFFBFF00DF
        FBFF00DFFBFF00DFFBFF00DFFBFF00DFFBFF00DFFBFF00DFFBFF00DFFBFF00DF
        FBFF03DFFCFF0AE7FDFF1BB0B5FF01080AFF010406FF16A0A6FF15EBFFFF1FA3
        AAFF040505FF060308FF1CA9AFFF03E9FEFF07DFFFFF04E1FDFF00E0FBFF00DF
        FBFF00DFFBFF00DFFBFF00DFFBFF00DFFBFF00DFFBFF00DFFBFF00DFFBFF00DF
        FBFF00DFFBFF00DFFDFF07E6FFFF22ADB7FF0A050BFF090006FF1D9DA8FF11EA
        FFFF219FAFFF0D0209FF14020CFF23A6B2FF04E9FFFF03E0FFFF02E1FCFF00E0
        FBFF00DFFBFF00DFFBFF00DFFBFF00DFFBFF00DFFCFF00DFFCFF00DFFCFF00DF
        FCFF00DFFCFF01DFFBFF01DFFDFF03E7FFFF17B0B7FF01070CFF010208FF11A0
        AAFF04ECFFFF0FA3B3FF02030FFF040210FF17A7B5FF02EAFFFF05DFFFFF08E0
        FCFF04DFFAFF02DFFAFF00E0FAFF00E0FAFF00E0FBFF03DEFEFF03DEFEFF03DE
        FEFF02DEFDFF02DEFBFF04DFFAFF07DFFAFF09E8F9FF17B2B4FF00080CFF0101
        08FF199EA8FF0CEDFFFF1BA0B2FF020210FF020311FF19A7B6FF05E6FFFF10DC
        FFFF0DDFFDFF09E0F7FF05E1F6FF00E1F7FF00E1F8FF01E1F9FF0AE0F6FF09E0
        F6FF06E0F6FF02E1F6FF00E2F6FF00E3F6FF00E3F9FF01EAFEFF12B1B8FF0407
        0FFF050009FF269BA8FF19EAFFFF26A0ABFF050307FF060409FF19A9AFFF03EA
        FDFF04E1FEFF01E4FBFF00E2FAFF00E1FAFF03DFFAFF09DEFAFF0BDEFAFF00E5
        F3FF00E5F3FF00E4F4FF01E3F6FF04E1F7FF07E0F8FF07DFFBFF04E6FFFF19AD
        BCFF050512FF06000BFF189EA8FF07EFFFFF13A7A9FF000804FF000607FF14AC
        AEFF03EAFDFF09DFFFFF05E1FDFF02DEFFFF06DCFEFF0CDBFEFF0CDCFCFF05DE
        FBFF05E0FBFF04DDF9FF07DFFBFF09DDFBFF0FDCFCFF12DBFEFF0DDCFEFF03E6
        FEFF13AFB9FF020812FF03000AFF159FA8FF06EFFFFF16A3AEFF02030AFF0303
        0FFF1FA5B5FF0CE3FFFF13D8FFFF0ADCFEFF01E2FEFF02E1FDFF05E0FCFF04E0
        FBFF00E0FBFF05E1FEFF02E0FDFF01E2FCFF01E7FEFF02E8FCFF04E8FBFF08E8
        FAFF10F1FCFF18B7B5FF010B0DFF010008FF269BA9FF21E7FFFF229FB2FF0003
        0FFF030210FF1EACB7FF06ECFFFF05E5FFFF04E8FCFF08EAF9FF05E9F9FF00E4
        F5FF00E3F7FF06DFF9FF01E3F8FF06E4F7FF13DFEFFF06A8B5FF0E9CA6FF149B
        A3FF2297A4FF2E9CABFF1E7B78FF060807FF040205FF1C9EA8FF15E9FFFF1BA1
        ADFF030407FF0C0408FF157475FF119FACFF1797AAFF169AA4FF229BAAFF14A5
        B4FF15DFEDFF02E5F5FF01E2F9FF02E2F9FF16E1FAFF2CD0E4FF03252DFF0000
        00FF000300FF010001FF000002FF010503FF080000FF010606FF169FA4FF08F0
        FFFF1FA7A5FF040900FF0E0501FF000401FF000203FF000003FF000001FF0000
        07FF03232EFF1CD4DBFF01E8F4FF00E5F7FF00E1F7FF0EDFFCFF19D0EBFF0339
        48FF03171BFF031B1EFF041821FF031822FF051720FF041720FF001929FF259D
        B6FF1EE7FFFF27A8B4FF001E24FF021823FF021623FF031723FF031723FF0417
        23FF041720FF053442FF1AD1E1FF0DE2FBFF05DEFBFF01E6F0FF02E5FAFF00E1
        FAFF1BC9E1FF2CC5DBFF15C7E2FF13C5E6FF13C7E3FF1CC7E0FF22C5DDFF1BC5
        DFFF10D3F5FF04DBFFFF07D9F5FF02C9E0FF14C7E1FF16C5E1FF0FC8E3FF0FC7
        E3FF15C7E1FF20CBD7FF1DCADFFF0FDFFAFF15D7FEFF11D8FFFF08E5F4FF08E1
        FAFF00E1FAFF1FE3F6FF28E4F2FF07E8F8FF08E5FCFF0CE5F9FF10E6F5FF13E7
        F2FF15E5F2FF15E2F6FF12DEF5FF0CE2F7FF10E5F9FF1DE1F8FF1CE2F9FF11E4
        F9FF10E4F9FF15E4F7FF14E8EFFF0AE7F4FF00E3FAFF03DDFEFF06DCFEFF03E1
        F9FF0FDFFEFF13D4EFFF076172FF09494DFF054E4EFF084A53FF084953FF074B
        51FF074D4FFF074D4EFF074D4FFF084B50FF064C53FF084B54FF0A4954FF094A
        54FF074C54FF064C54FF094A54FF0C4653FF075F70FF0AD7E6FF00E5F9FF00E2
        F6FF03E2FAFF12E0FFFF22CDEBFF02212CFF000000FF010000FF060000FF0200
        00FF000000FF000000FF000000FF000000FF000000FF000000FF030000FF0700
        00FF020000FF000000FF000000FF050000FF080001FF031D28FF21CDDFFF07E2
        F9FF01E1F9FF04E6F9FF08E0FAFF0FD8F1FF106F81FF185761FF145A63FF1459
        65FF135C60FF165B61FF185862FF195863FF195863FF175962FF135B62FF135A
        63FF155963FF135A63FF115B63FF135A63FF165962FF115761FF086E7CFF08D7
        EAFF03E1FFFF01DDFFFF01E0FAFF01DFFBFF01DFFBFF0BE4FEFF11E5FFFF0EE6
        FFFF0FE5FFFF0EE6FEFF0FE6FFFF10E5FFFF11E5FFFF11E5FFFF10E5FFFF0EE6
        FFFF0EE6FFFF0FE5FFFF0EE6FFFF0DE6FFFF0EE6FFFF0FE5FFFF0DE6FFFF08E5
        FEFF01E2FCFF00E0FCFF00DFFCFF00DFFBFF00DFFBFF00DFFBFF00E0FCFF00E1
        FDFF00E1FDFF00E1FDFF00E1FDFF00E1FDFF00E1FDFF00E1FDFF00E1FDFF00E1
        FDFF00E1FDFF00E1FDFF00E1FDFF00E1FDFF00E1FDFF00E1FDFF00E1FDFF00E1
        FDFF00E1FDFF01E1FDFF00E0FCFF00DFFBFF}
      Caption = 'T'#44592#49324#48372#54744#47308#47924#47308' : '#49444#51221
      ImageIndex = 2
      Visible = False
      OnClick = pmCallByInsureFreeClick
    end
    object mniSepCard: TMenuItem
      AutoLineReduction = maManual
      Caption = '-'
      Visible = False
    end
    object mniCardReq: TMenuItem
      Caption = #49888#50857#52852#46300#44208#51116' '#49849#51064#52712#49548
      OnClick = mniCardReqClick
    end
    object mniCardHistory: TMenuItem
      Caption = #49888#50857#52852#46300#44208#51116' '#49345#49464#51060#47141#54788#54889
      OnClick = mniCardHistoryClick
    end
    object N4: TMenuItem
      AutoLineReduction = maManual
      Caption = '-'
    end
    object pm_Edit: TMenuItem
      Caption = #49688'          '#51221
      ShortCut = 53
      OnClick = pm_EditClick
    end
    object pm_Recon: TMenuItem
      Tag = 2
      Caption = #44053' '#51228'  '#48176' '#52264
      ShortCut = 54
      OnClick = pm_CancelClick
    end
    object pm_smsRecon: TMenuItem
      Tag = 5
      Caption = #47928' '#51088'  '#48176' '#52264
      ShortCut = 32
      OnClick = pm_CancelClick
    end
    object pm_NearRecon: TMenuItem
      Tag = 6
      Caption = #51064#44540#44592#49324#48176#52264
      OnClick = pm_CancelClick
    end
    object N42: TMenuItem
      Caption = #51116'    '#48176'   '#52264
      OnClick = N42Click
    end
    object N22: TMenuItem
      Caption = #53440' '#49324'  '#48176' '#52264
      ShortCut = 8243
      OnClick = N22Click
    end
    object pm_BaeSMS: TMenuItem
      Caption = #48176#52264#47928#51088#51116#51204#49569
      OnClick = pm_BaeSMSClick
    end
    object pm_BoHumNo: TMenuItem
      Caption = #44592#49324#48372#54744#48264#54840' '#44256#44061#50640#44172#47928#51088#48156#49569
      OnClick = pm_BoHumNoClick
    end
    object pm_ReconSMS: TMenuItem
      Caption = #44053#51228#48176#52264#47928#51088#51116#51204#49569'('#44592#49324')'
      OnClick = pm_ReconSMSClick
    end
    object pm_SMS: TMenuItem
      Caption = #46021' '#52489'  '#47928' '#51088
      OnClick = pm_SMSClick
    end
    object N14: TMenuItem
      Caption = #44256' '#44061'  '#47928' '#51088
      ShortCut = 55
      OnClick = N14Click
    end
    object NOCX_WOR: TMenuItem
      Caption = #44592#49324#51204#54868#44152#44592
      object mniWORCallingHP: TMenuItem
        Caption = #55092#45824#54256
        ShortCut = 122
        OnClick = mniWORCallingHPClick
      end
      object mniWORCallingPDA: TMenuItem
        Caption = #45800#47568#44592
        OnClick = mniWORCallingPDAClick
      end
    end
    object NOCX_CUST: TMenuItem
      Caption = #44256#44061#51204#54868#44152#44592
      RadioItem = True
      ShortCut = 121
      OnClick = NOCX_CUSTClick
    end
    object N15: TMenuItem
      Caption = #44592#49324#51221#48372#51312#54924'('#51060#47141#44288#47532')'
      OnClick = N15Click
    end
    object N5: TMenuItem
      AutoLineReduction = maManual
      Caption = '-'
    end
    object NOCX_BLOCK: TMenuItem
      Caption = #44256#44061#51204#54868#44144#48512#46321#47197
      OnClick = NOCX_BLOCKClick
    end
    object N_CMPSupportLine: TMenuItem
      Caption = '-'
      Visible = False
    end
    object N_CMPSupportAMT1: TMenuItem
      Tag = 1
      Caption = #51648#50896' 1,000'#50896' '#52628#44032
      Visible = False
      OnClick = N_CMPSupportAMT1Click
    end
    object N_CMPSupportAMT2: TMenuItem
      Tag = 2
      Caption = #51648#50896' 3,000'#50896' '#52628#44032
      Visible = False
      OnClick = N_CMPSupportAMT1Click
    end
    object N_CMPSupportAMT3: TMenuItem
      Tag = 3
      Caption = #51648#50896' 5,000'#50896' '#52628#44032
      Visible = False
      OnClick = N_CMPSupportAMT1Click
    end
    object N_CMPSupportClear: TMenuItem
      Caption = #51648#50896' '#54924#49688'('#52488#44592#54868')'
      Visible = False
      OnClick = N_CMPSupportAMT1Click
    end
    object N3: TMenuItem
      AutoLineReduction = maManual
      Caption = '-'
    end
    object N44: TMenuItem
      Caption = #44592#49324#50640#49569#44552
      OnClick = N44Click
    end
    object pm_Expense: TMenuItem
      Caption = #44221#48708#51648#44553
      OnClick = pm_ExpenseClick
    end
    object N24: TMenuItem
      Caption = '-'
    end
    object pm_AIOBNowRun: TMenuItem
      Caption = #47532#53084'('#48176#52264#51648#50672#53084')'#51593#49884#49688#54665
      Visible = False
      OnClick = pm_AIOBNowRunClick
    end
    object N12: TMenuItem
      Caption = #49345#49464#51060#47141
      ShortCut = 119
      OnClick = N12Click
    end
    object AI1: TMenuItem
      Caption = 'AI'#45433#52712#45236#50669
      OnClick = AI1Click
    end
    object N21: TMenuItem
      Caption = #54056#45328#54000#51312#54924
      OnClick = N21Click
    end
    object pm_AceptInfo: TMenuItem
      Caption = #51217#49688#51221#48372
      ShortCut = 120
      OnClick = pm_AceptInfoClick
    end
    object pm_Excel: TMenuItem
      Caption = #50641' '#49472'  '#45796' '#50868
      Visible = False
      object N37: TMenuItem
        Caption = #49345#49464#45236#50669'('#44592#48376#54805#49885')'
        OnClick = N37Click
      end
      object N38: TMenuItem
        Caption = #44592#48376#45236#50669'('#54788#51116#47532#49828#53944#54805#49885')'
        OnClick = N38Click
      end
    end
    object N9: TMenuItem
      Caption = #49472'    '#48373'   '#49324
      OnClick = N9Click
    end
    object N39: TMenuItem
      AutoLineReduction = maManual
      Caption = '-'
      Visible = False
    end
    object N40: TMenuItem
      Caption = #53440#49324#53084#54056#49828
      ShortCut = 192
      Visible = False
      OnClick = N40Click
    end
    object NOCX1: TMenuItem
      AutoLineReduction = maManual
      Caption = '-'
    end
    object N8: TMenuItem
      Caption = #53440#51060#53952' '#48320#44221
      Visible = False
    end
    object pm_Reset: TMenuItem
      Caption = #53440#51060#53952#52488#44592#54868
      OnClick = pm_ResetClick
    end
    object pm_InsungCallPass: TMenuItem
      Caption = #51064#49457#51004#47196' '#53084#54056#49828
      ShortCut = 8305
      Visible = False
      OnClick = pm_InsungCallPassClick
    end
    object pm_TitleView: TMenuItem
      Caption = #53440#51060#53952' '#49704#44608#49444#51221
      OnClick = pm_TitleViewClick
    end
    object pm_Font: TMenuItem
      Caption = #54256#53944#49444#51221
      OnClick = pm_FontClick
    end
    object pm_kakaoLine: TMenuItem
      Caption = '-'
    end
    object pm_kakao: TMenuItem
      Caption = #52852#52852#50724#46300#46972#51060#48652' 1:1'#47928#51032#44172#49884#54032
      OnClick = pm_kakaoClick
    end
  end
  object tmrAddSnd: TTimer
    Enabled = False
    Interval = 10
    OnTimer = tmrAddSndTimer
    Left = 940
    Top = 372
  end
  object tmrDelSnd: TTimer
    Enabled = False
    Interval = 10
    OnTimer = tmrDelSndTimer
    Left = 996
    Top = 372
  end
  object tm_Flash: TTimer
    Enabled = False
    OnTimer = tm_FlashTimer
    Left = 354
    Top = 339
  end
  object pm_FastSearch25: TPopupMenu
    AutoHotkeys = maManual
    Left = 1011
    Top = 216
    object fast25_N1: TMenuItem
      Tag = 99
      Caption = #51204#52404
      OnClick = fast25_N1Click
    end
    object fast25_N2: TMenuItem
      Tag = 1
      Caption = #53441#49569#50672#54633
      OnClick = fast25_N1Click
    end
  end
  object cxImage24: TcxImageList
    SourceDPI = 96
    Height = 24
    Width = 24
    FormatVersion = 1
    DesignInfo = 21234683
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F80000000473424954080808087C0864880000000970485973000000B1000000
          B101C62D498D0000001974455874536F667477617265007777772E696E6B7363
          6170652E6F72679BEE3C1A000001C6494441544889B5953F68144114C67FEF6D
          309713359D852EF1883616364A48245D0E2CD2682504C1143622D14630656295
          14420AB194141EA44D912698CE3F55ACB47295E41216050B4908970BBBF32C56
          EE88DCDE65CFBD0FA678BCF9BEDFF0666004C0C2B008D12C30055C023CBA530C
          6C6156C1E982F87E4D2C0C8B58B48130DA65686B897D24D209856836F7700093
          31D43D130BAB01309C3B0040089464E6BD915152BABFD093C8EB4BEBB8D72FB0
          CF9B6006FD0574EA21726D243341D31AF6F54B120E503FC4DEAD670E6F0B90F3
          178E03B70388E3FC00F8FF3CAC422173785B805CBFD92CCE0EE2CDCC8197FD3D
          A40386AE207E2929F6F7B0BDDF99C3DB021041EE4C830898C32D2FC1AF9FCD7E
          FD30591D241656ADDD06B7B682BD5D4D8A33E7D0FB4F60A0887BF91C8EEAC8C5
          12327E0BB931DE1D0073B837AFB04FEFFF3A148AA7E160BFB9E7543FDEE2724B
          7BFA881A4750F4DE23A47CBB31AE63E10047F5547B670080083A79177D3C8F0C
          5D3E91A561ED38A216B2ED201959F51BF6631719BE8A3E789A1F208B94E49BEB
          956205B67A08F8AE98557A162F5211DBD919A0CF6D60329673FA0762CA2ABE5F
          23D209CCE61102FEEF4E628400913962CAE2FBB53FCA8499901A0CDDA1000000
          0049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F80000000473424954080808087C0864880000000970485973000000B1000000
          B101C62D498D0000001974455874536F667477617265007777772E696E6B7363
          6170652E6F72679BEE3C1A0000034D4944415448899D965F689B6514C67FE7FD
          F2759BFDB3A8950E13EBBAF9A76BD338A41722635B860E67C166CB85A2A238C5
          0B91295E082253E62E0477E198175E29C276558861E9DC85D56520CC3F209491
          5A8AD68E35EBE818334B2D754DBEEF7891A47E4993D4ECB93BCF81E739E7FDCE
          FB9E4F6880FEB1916EB1AD61D40C816E060D16339201B92470468D9C4EEF8ACE
          D6D3905AE423DF8F040A96F581A8BC0A588D8A407111E23EE4DDF1C8FE4B6B1A
          0CA41251454F026D0D85576341555F9CD8134B7A49E30D42A9C45BAA1ABF0D71
          80764112A1735F1FF2922B1D0CA41251558D23455351E5BE6B37C9DCD3816B4C
          B5587D28AEA2FBCB9D084038150FBAC864B9F20D7987F7C6C6B973E62A39CB70
          F4E05EFE69F135D3CD423E6FF54EED1D9E3300AECA476571DB75399EB840647A
          8EED8ED2E6BA1CFEF25B5A0A4E3306EDB6ED1C0130FD6323DD082F95335BAEE7
          E89BCF160381470B4AABEB129ABEDA8C01C02BE1543C68C4F245F18C62C6DFCA
          B2CF339902C1F5EB99DADCD5AC81E520C346847D5E76B1C5E6879E4AB1CF776C
          63719DDDAC0122F2B451F481EAC4A9C107713D71F68E96A6C50150DD6A403655
          F37F747670B6AF7B257EE77C1AFFD2F2ED5804EA0EF8899D2166FDC5FBD6FDD7
          DF1C4BFE44EB72BE3979C1352ACCD5CA2DD916EF0F0D922B9D7DEFB59B1C4FFC
          58D149C7D22D06272FD71F6165CEDAF4F2B343C0AAEF0090DDB08EF1C0DD3CF1
          FB156C57E95CBCC58E997966FD6DF4CD67397AF6571E9E9AE5B1F1692E847B28
          F8AADE45915F6420957853D1CF1A75BA6D3ECB27A33FD7FE0E0A69516ED83E0E
          BFFE54E5B322F2865123A78186D774B2CBCFA1038F73D95FE30D1408A9B0B1E0
          10B89EF3660A46DD51535C16FA5523038099BBDA79EDB99D2443F7578C70D9E4
          C6967BB9D2D9E165BFB81889650C80E53A1F020B6B992CD916C722610E3EBF8B
          EF1E0AACDCF8DFBAFC7CFCE4F6FF8E47C839961E29791731703EB14F5547596B
          8379D0BA9C27985D64BA7323055392525C35263AB13B3A5A6100505A169F9677
          42D3505C8CBE9DDE1D5B199A552BB3FF5CFC19113905B437252EE4505E48470E
          9CF1D2AB2A9DD8134BDA56612BC209A0F0BFAA5639E918EDAD16AFD98117E154
          3CE820C3C090400F50FA6D2183C89FEABADF5842F2622496A9A7F12F83222BD1
          09F1E6F70000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F80000000473424954080808087C0864880000000970485973000000A6000000
          A601DD7DFF380000001974455874536F667477617265007777772E696E6B7363
          6170652E6F72679BEE3C1A00000291494441544889BD964F48545114C67FE73E
          47B019C946C69034FC5748842339E3A60411A288A0566DDA04828A10B8CDD958
          A0AB206821629B36D1C67551AB48DA38532844244812FD232DC5781AF666DE69
          313ACE8CF31A47AA6FF7EEB9EF7CDF39E79E73AFA82A5E6899B06B54DDA82B26
          222A1DA091B445122AFAD2A89B1031F18581C092970F29441099C4B79AB4632A
          0C033E4F0569382A8C569BC058A20FA72841E3F87ABB88DE07C2451CE7634E55
          AE2D0EFA67B3174DF647F3B83D28A233FB700E1016D199E6717B307B3113C196
          F2198AA7A4181C55E9DC8E445495C824BE95941DDF56DE5567E80B5B00FC72E1
          D68B24EF7F781F8602980B5A8168A20FC700AC26ED185969B97AC2A2B3D6D059
          6B3873C470FD5459A95184BFBBF630806999B06BB64E4B06CB1BB96ADB0F4BA9
          0488126B99B06B8CAA1B252FEF5FD67309EA2B85EA8A92497CAA6ED4B86222F9
          96E98FEEAEDDE150E951B8622226DDA1B978BDAC7CCD8A627943F96C97546400
          44A5C3ECB4FF0E14B8FB2A9556A1D0FFD4E1ED4AE904A011E3659A9A4FF1EC83
          8B11B8DDEDC3BFCFEE3020092F63EC7992B54D68AA12EEF4EC90B406859EA366
          0F8597845575F1C67181EE42E68D247CB295F38D160D0785B30D16B34B2EF7CE
          F9B8D26AD1DB6671F998455BC830BFA2AC6DE6FEAFC2C332A36E42F1CC148FDE
          B980C3C8691F4D55C2D4A5724C96F0FA4AA1BE5238545146EFE3DC616AD44D18
          111387DD63369FE4C2D4AF4C4D0AA17CB74647C4C4CDC240604994B13F11007C
          FBA9F43F71884D27738EB01754184DFB2E30EC8A41809321A1ABCE50EB174207
          84076F52D90D9A1976FF7C5C6732B738E89F15658822F528E65C94A1EC5BEDFF
          5E99908E246805A2A2DC646FD1382A8C04AD4034DF3978BC2AB6F1379E2DBF01
          21002ECBAA4666320000000049454E44AE426082}
      end>
  end
  object tmrSQLSync: TTimer
    Enabled = False
    Interval = 60000
    OnTimer = tmrSQLSyncTimer
    Left = 1156
    Top = 372
  end
  object pm_FastSearch29: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    OwnerDraw = True
    Left = 1068
    Top = 256
    object fast29_N1: TMenuItem
      Caption = #49849#51064
      OnClick = fast29_N1Click
    end
    object fast29_N2: TMenuItem
      Tag = 1
      Caption = #48120#49849#51064
      OnClick = fast29_N1Click
    end
  end
end

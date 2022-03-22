object frm_PBX05: Tfrm_PBX05
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_PBX05'
  ClientHeight = 132
  ClientWidth = 350
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 350
    Height = 132
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    BorderWidth = 1
    ParentBackground = False
    TabOrder = 0
    object PnlInBound: TPanel
      Left = 1
      Top = 33
      Width = 344
      Height = 94
      Align = alClient
      BevelKind = bkFlat
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object Shape23: TShape
        Left = 3
        Top = 6
        Width = 84
        Height = 24
        Pen.Color = 12566402
      end
      object Shape31: TShape
        Left = 3
        Top = 58
        Width = 84
        Height = 24
        Pen.Color = 12566402
      end
      object Shape32: TShape
        Left = 3
        Top = 32
        Width = 84
        Height = 24
        Pen.Color = 12566402
      end
      object cxLabel20: TcxLabel
        Left = 18
        Top = 10
        Caption = #47704#53944#44396#48516
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 44
        AnchorY = 18
      end
      object cxLabel22: TcxLabel
        Left = 18
        Top = 36
        Caption = #47704#53944#51060#47492
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 44
        AnchorY = 44
      end
      object cxLabel31: TcxLabel
        Left = 7
        Top = 63
        Caption = #47704#53944#49324#50857#50668#48512
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 45
        AnchorY = 71
      end
      object cb_Gubun: TcxComboBox
        Left = 86
        Top = 5
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #55092#51068#47704#53944
          #51216#49900#49884#44036#47704#53944
          #50629#47924#49345#54889#47704#53944
          #50629#47924#51333#47308#47704#53944
          #49884#49828#53596#51109#50528#47704#53944)
        Properties.OnChange = cb_GubunPropertiesChange
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
        Text = #55092#51068#47704#53944
        Height = 26
        Width = 251
      end
      object cb_Name: TcxComboBox
        Left = 86
        Top = 31
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'IVR '#49884#49828#53596' '#47704#53944
          'IVR '#47704#53944
          'CTI '#47704#53944
          #54596#53552#47553' '#47704#53944
          #49688#49888#44144#48512' '#47704#53944
          'Outbound '#52972#47084#47553)
        Properties.OnChange = cb_NamePropertiesChange
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
        Text = 'IVR '#49884#49828#53596' '#47704#53944
        Height = 26
        Width = 251
      end
      object cb_Use: TcxComboBox
        Left = 86
        Top = 57
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #48120#49324#50857
          #49324#50857)
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
        Text = #48120#49324#50857
        Height = 26
        Width = 251
      end
    end
    object PnlTitle: TPanel
      Left = 1
      Top = 1
      Width = 344
      Height = 32
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '   '#49884#49828#53596#47704#53944#49444#51221'-'#49688#51221
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
        344
        32)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 344
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = False
        ExplicitWidth = 578
      end
      object btnCancel: TcxButton
        Left = 267
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
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        OnClick = btnCancelClick
      end
      object btnSave: TcxButton
        Left = 190
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
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        OnClick = btnSaveClick
      end
    end
  end
end

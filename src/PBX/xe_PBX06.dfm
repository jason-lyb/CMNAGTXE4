object frm_PBX06: Tfrm_PBX06
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_PBX06'
  ClientHeight = 152
  ClientWidth = 351
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 351
    Height = 152
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    BorderWidth = 1
    ParentBackground = False
    TabOrder = 0
    object PnlInBound: TPanel
      Left = 1
      Top = 33
      Width = 345
      Height = 114
      Align = alClient
      BevelKind = bkFlat
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      DesignSize = (
        341
        110)
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
        Caption = #47704#53944#53440#51077
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
        Caption = #47704#53944#44396#48516
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 44
        AnchorY = 44
      end
      object cxLabel31: TcxLabel
        Left = 19
        Top = 63
        Caption = #47704#53944#54028#51068
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 45
        AnchorY = 71
      end
      object edt_Type: TcxTextEdit
        Left = 86
        Top = 5
        AutoSize = False
        Enabled = False
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Height = 26
        Width = 254
      end
      object edt_Gubun: TcxTextEdit
        Left = 86
        Top = 31
        AutoSize = False
        Enabled = False
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        Height = 26
        Width = 254
      end
      object edt_Path: TcxTextEdit
        Left = 86
        Top = 57
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        Height = 26
        Width = 219
      end
      object btn_Path: TcxButton
        Left = 305
        Top = 57
        Width = 35
        Height = 26
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #52286#44592
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        OnClick = btn_PathClick
      end
      object cxLabel1: TcxLabel
        Left = 72
        Top = 89
        Caption = #47704#53944#54028#51068#51008' '#50689#47928#51060#47492#47564' '#50629#47196#46300' '#44032#45733#54633#45768#45796'.'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548#52404
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
      end
    end
    object PnlTitle: TPanel
      Left = 1
      Top = 1
      Width = 345
      Height = 32
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '   '#47704#53944#54028#51068' '#50629#47196#46300
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
        345
        32)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 345
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = False
        ExplicitWidth = 578
      end
      object btnCancel: TcxButton
        Left = 268
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
        Left = 191
        Top = 8
        Width = 75
        Height = 22
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #51200#51109
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
  object OpenDialog1: TOpenDialog
    Left = 25
    Top = 113
  end
end

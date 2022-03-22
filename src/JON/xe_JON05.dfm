object Frm_JON05: TFrm_JON05
  Left = 364
  Top = 368
  BorderStyle = bsNone
  Caption = 'JON02'
  ClientHeight = 472
  ClientWidth = 110
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poMainFormCenter
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 110
    Height = 472
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      106
      468)
    object pnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 106
      Height = 28
      Cursor = crSizeAll
      Align = alTop
      BevelOuter = bvNone
      Caption = #45800#52629#44592#45733
      Color = 12566463
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnMouseDown = pnlTitleMouseDown
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 106
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = True
        ExplicitWidth = 661
      end
    end
    object btnShortSample: TcxButton
      Left = 150
      Top = 30
      Width = 52
      Height = 29
      Anchors = [akLeft, akTop, akRight]
      Caption = #47700#49888#51200#45824#54868
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object btnSet: TcxButton
      Left = 0
      Top = 445
      Width = 105
      Height = 21
      Anchors = [akLeft, akRight, akBottom]
      Caption = #44592#45733'-'#49444#51221
      Colors.Default = 12615935
      Colors.Normal = 12615935
      Colors.Hot = 12615935
      Colors.Pressed = 7592191
      Colors.PressedText = clBlack
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = ''
      TabOrder = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnSetClick
    end
    object lblShortSample: TcxButton
      Left = 300
      Top = 271
      Width = 52
      Height = 21
      Anchors = [akLeft, akRight, akBottom]
      Caption = #45800#44264#44256#44061
      Colors.Default = clWhite
      Colors.DefaultText = clBlack
      Colors.Normal = clWhite
      Colors.NormalText = clBlack
      Colors.Hot = clWhite
      Colors.HotText = clBlack
      Colors.Pressed = 7592191
      Colors.PressedText = clBlack
      Colors.DisabledText = clBlack
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = ''
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      OnClick = btnSetClick
    end
  end
  object TmrChkTag: TTimer
    Tag = 100
    Enabled = False
    Interval = 500
    OnTimer = TmrChkTagTimer
    Left = 32
    Top = 328
  end
end

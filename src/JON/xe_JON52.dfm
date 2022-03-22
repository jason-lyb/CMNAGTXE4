object Frm_JON52: TFrm_JON52
  Left = 355
  Top = 171
  Width = 973
  Height = 757
  VertScrollBar.Range = 120
  Caption = #53084#51648#46020#48372#44592
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poMainFormCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pnlRight: TPanel
    Left = 0
    Top = 0
    Width = 957
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    Color = 12566463
    ParentBackground = False
    TabOrder = 0
    object shp_Mod1: TShape
      Left = 17
      Top = 2
      Width = 24
      Height = 21
      Hint = 'Color'
      Pen.Color = clSilver
    end
    object shp_Mod2: TShape
      Left = 98
      Top = 2
      Width = 24
      Height = 21
      Hint = 'Color'
      Brush.Color = 12185814
      Pen.Color = clSilver
    end
    object shp_Mod3: TShape
      Left = 180
      Top = 2
      Width = 24
      Height = 21
      Hint = 'Color'
      Brush.Color = 12116465
      Pen.Color = clSilver
    end
    object shp_Mod4: TShape
      Left = 262
      Top = 2
      Width = 24
      Height = 21
      Hint = 'Color'
      Brush.Color = 15842744
      Pen.Color = clSilver
    end
    object BtnMod5: TcxButton
      Left = 2
      Top = 242
      Width = 25
      Height = 25
      Caption = 'E'
      SpeedButtonOptions.GroupIndex = 1
      SpeedButtonOptions.AllowAllUp = True
      TabOrder = 0
      Visible = False
      OnClick = BtnMod5Click
    end
    object cxButton1: TcxButton
      Left = 2
      Top = 269
      Width = 25
      Height = 25
      Caption = #44221
      SpeedButtonOptions.GroupIndex = 1
      SpeedButtonOptions.AllowAllUp = True
      TabOrder = 1
      Visible = False
    end
    object cbRoute: TcxCheckBox
      Left = 365
      Top = 3
      Caption = #44221#47196
      Style.LookAndFeel.SkinName = 'Sharp'
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      StyleFocused.LookAndFeel.SkinName = 'Sharp'
      StyleHot.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 2
      Transparent = True
      OnClick = cbRouteClick
      OnMouseDown = rb_Mod1MouseDown
    end
    object cxLabel1: TcxLabel
      Left = 439
      Top = 4
      Transparent = True
    end
    object btn_Mod1: TcxButton
      Left = 42
      Top = 2
      Width = 50
      Height = 21
      Hint = #52636#48156#51648' - '#46020#52265#51648
      Caption = #52636'-'#46020
      ParentShowHint = False
      ShowHint = True
      SpeedButtonOptions.GroupIndex = 1
      SpeedButtonOptions.AllowAllUp = True
      TabOrder = 4
      OnClick = btn_Mod1Click
    end
    object btn_Mod2: TcxButton
      Left = 123
      Top = 2
      Width = 50
      Height = 21
      Hint = #52636#48156#51648' | '#46020#52265#51648
      Caption = #52636'|'#46020
      ParentShowHint = False
      ShowHint = True
      SpeedButtonOptions.GroupIndex = 1
      SpeedButtonOptions.AllowAllUp = True
      TabOrder = 5
      OnClick = btn_Mod2Click
    end
    object btn_Mod3: TcxButton
      Left = 205
      Top = 2
      Width = 50
      Height = 21
      Hint = #52636#48156#51648
      Caption = #52636#48156#51648
      ParentShowHint = False
      ShowHint = True
      SpeedButtonOptions.GroupIndex = 1
      SpeedButtonOptions.AllowAllUp = True
      TabOrder = 6
      OnClick = btn_Mod3Click
    end
    object btn_Mod4: TcxButton
      Left = 287
      Top = 2
      Width = 50
      Height = 21
      Hint = #46020#52265#51648
      Caption = #46020#52265#51648
      ParentShowHint = False
      ShowHint = True
      SpeedButtonOptions.GroupIndex = 1
      SpeedButtonOptions.AllowAllUp = True
      TabOrder = 7
      OnClick = btn_Mod4Click
    end
    object chkCallMapPopup: TcxCheckBox
      Left = 418
      Top = 3
      Caption = #54045#50629#52285#51004#47196' '#54364#49884
      Style.LookAndFeel.SkinName = 'Sharp'
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      StyleFocused.LookAndFeel.SkinName = 'Sharp'
      StyleHot.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 8
      Transparent = True
      OnClick = chkCallMapPopupClick
    end
  end
  object pnlMap: TPanel
    Left = 0
    Top = 25
    Width = 957
    Height = 693
    Align = alClient
    Caption = 'pnlMap'
    DoubleBuffered = False
    ParentDoubleBuffered = False
    TabOrder = 1
    object PnlSingleMap: TPanel
      Left = 1
      Top = 1
      Width = 955
      Height = 691
      Align = alClient
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      OnResize = PnlSingleMapResize
      object mSingleMap: TTalMapXCtrl
        Left = 0
        Top = 0
        Width = 955
        Height = 691
        Align = alClient
        TabOrder = 0
        OnCreate = mSingleMapCreate
        OnStateChange = mSingleMapStateChange
        OnUI_MouseUp = mSingleMapUI_MouseUp
        OnUI_MouseLeave = mMapUI_MouseLeave
        OnUI_MouseHover = mMapUI_MouseHover
        ExplicitTop = -22
        ExplicitWidth = 217
        ExplicitHeight = 757
        ControlData = {00090000}
      end
    end
    object pnlBasic: TPanel
      Left = 1
      Top = 1
      Width = 955
      Height = 691
      Align = alClient
      BevelOuter = bvNone
      DoubleBuffered = False
      ParentColor = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnResize = pnlBasicResize
      object lblBasic: TLabel
        Left = 951
        Top = 0
        Width = 4
        Height = 691
        Align = alRight
        Color = clFuchsia
        ParentColor = False
        Transparent = True
        ExplicitHeight = 15
      end
      object mMap: TTalMapXCtrl
        Left = 0
        Top = 0
        Width = 951
        Height = 691
        Align = alClient
        TabOrder = 0
        OnCreate = mMapCreate
        OnStateChange = mMapStateChange
        OnUI_MouseUp = mMapUI_MouseUp
        OnUI_MouseLeave = mMapUI_MouseLeave
        OnUI_MouseHover = mMapUI_MouseHover
        OnPOI_DblClick = mMapPOI_DblClick
        ExplicitLeft = -4
        ExplicitWidth = 936
        ExplicitHeight = 757
        ControlData = {00090000}
      end
    end
  end
  object tmrPopup: TTimer
    Enabled = False
    Interval = 500
    OnTimer = tmrPopupTimer
    Left = 737
    Top = 186
  end
end

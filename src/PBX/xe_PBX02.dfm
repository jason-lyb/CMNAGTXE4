object frm_PBX02: Tfrm_PBX02
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_PBX02'
  ClientHeight = 144
  ClientWidth = 398
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 398
    Height = 144
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    BorderWidth = 1
    ParentBackground = False
    TabOrder = 0
    object PnlInBound: TPanel
      Left = 1
      Top = 33
      Width = 392
      Height = 106
      Align = alClient
      BevelKind = bkFlat
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      DesignSize = (
        388
        102)
      object btnSave: TcxButton
        Left = 8
        Top = 14
        Width = 370
        Height = 76
        Cursor = crHandPoint
        Anchors = [akLeft]
        Caption = #49444#51221' '#48320#44221#49324#54637' '#48148#47196' '#51201#50857
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnSaveClick
      end
    end
    object PnlTitle: TPanel
      Left = 1
      Top = 1
      Width = 392
      Height = 32
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '   '#49884#49828#53596#44288#47532
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
        392
        32)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 392
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = False
        ExplicitWidth = 578
      end
      object btnCancel: TcxButton
        Left = 315
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
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        OnClick = btnCancelClick
      end
    end
  end
end

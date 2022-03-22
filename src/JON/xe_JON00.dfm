object Frm_JON00: TFrm_JON00
  Left = 1308
  Top = 149
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderStyle = bsNone
  Caption = #44256#44061#51217#49688
  ClientHeight = 682
  ClientWidth = 610
  Color = clBtnFace
  DoubleBuffered = True
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnHide = FormHide
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object pnlForm: TPanel
    Left = 0
    Top = 0
    Width = 610
    Height = 682
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    object pnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 606
      Height = 25
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  '#44256#44061#51217#49688
      Color = 12566463
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnMouseDown = pnlTitleMouseDown
      DesignSize = (
        606
        25)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 606
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 10114859
        ParentColor = False
        Transparent = False
        ExplicitTop = 8
      end
      object BtnFix: TcxButton
        Left = 527
        Top = 0
        Width = 24
        Height = 24
        Cursor = crHandPoint
        Hint = #54788#50948#52824' '#51217#49688#52285' '#49884#51089' '#50948#52824#47196' '#49444#51221
        Anchors = [akTop, akRight]
        LookAndFeel.SkinName = 'Office2010Silver'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100804000000B5FA37
          EA0000000467414D410000B18F0BFC6105000000206348524D00007A26000080
          840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
          02624B47440000AA8D2332000000097048597300000EC400000EC401952B0E1B
          0000000774494D4507E4021B0124013BF4CBCD000000BD4944415428CF7D91B1
          0EC1401C873F16892E4D47062683AD932760A2961A482CD2C42A9EC253883768
          0C966A0C1613A38720D64A1067B8BA687BFABBEDBE2FFFFBFD73A04B87032639
          31D872C202286AB085CF861BA154D2A9E333E6C14C4E29A4700F87160D4A08E6
          7431E4B54D8049951517D688F8EC31684BA14CC8118F97828273B28154A64AB9
          524B9793CA842782378EAE7F534D59EAF08028563C2A59EC7267A41EB2FE61D9
          654790C5C3445DFB17F78970F37E6EA15FE99B0F1CB03C4C4851089D00000025
          74455874646174653A63726561746500323032302D30322D32375430313A3336
          3A30312B30303A3030BEF0CCC60000002574455874646174653A6D6F64696679
          00323032302D30322D32375430313A33363A30312B30303A3030CFAD747A0000
          001974455874536F667477617265007777772E696E6B73636170652E6F72679B
          EE3C1A0000000049454E44AE426082}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BtnFixClick
      end
      object btnGroup: TcxButton
        Left = 553
        Top = 1
        Width = 24
        Height = 24
        Cursor = crHandPoint
        Hint = #44536#47353#51060#46041
        Anchors = [akTop, akRight]
        LookAndFeel.SkinName = 'Office2010Silver'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000015744558745469746C65004C696E6B3B48797065726C69
          6E6B3B2D61608B000000C349444154785E9593B10DC32010456F013754EE3C84
          97A048E3261B78028A8C80E4268B7800E4E5C8457AC5E9EC80533C2124DEE7B8
          13526BBDC53CCF41D994C21A15B92B8F88D57028F15FF9A14CCA9BFDD6930727
          0B4C04945FA2C08ABC28094908A3827640467AB126231725B403386C4216238F
          5FC78B036567E41D018C8CD31C15EC8465C2077B29A5FA51F1E673F7118180E0
          E4E41A977B019B19955C747B45B844CCEDD345F78B7B73B3822721A751F502A2
          7220415FF65388EEAB061AD6E503936EE59DF3ECA9EF0000000049454E44AE42
          6082}
        ParentShowHint = False
        ShowHint = True
        SpeedButtonOptions.GroupIndex = 61
        SpeedButtonOptions.AllowAllUp = True
        SpeedButtonOptions.Down = True
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnGroupClick
      end
      object btnNew: TcxButton
        Left = 579
        Top = 1
        Width = 24
        Height = 24
        Cursor = crHandPoint
        Hint = #49888#44508#51217#49688#52285
        Anchors = [akTop, akRight]
        LookAndFeel.SkinName = 'Office2010Silver'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100804000000B5FA37
          EA0000000467414D410000B18F0BFC6105000000206348524D00007A26000080
          840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
          02624B47440000AA8D2332000000097048597300000EC400000EC401952B0E1B
          0000000774494D4507E4021B012D188E5DD844000000634944415428CF9591B1
          0D80300C04CF28E350D2334106CA0469B24D26A071C54EA6A209C486EF2C9F5F
          7ABF60B84AC0C931D9EE6C60B4E979C316028D40A1F84026FBC06B8ADB3C032B
          A040A77E7418632AFA33661AE61E01357AD44382F9654954F7051297148F1296
          92120000002574455874646174653A63726561746500323032302D30322D3237
          5430313A34353A32342B30303A30306CE14A9C0000002574455874646174653A
          6D6F6469667900323032302D30322D32375430313A34353A32342B30303A3030
          1DBCF2200000001974455874536F667477617265007777772E696E6B73636170
          652E6F72679BEE3C1A0000000049454E44AE426082}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnNewClick
      end
    end
    object cxTabControl1: TcxTabControl
      Left = 0
      Top = 25
      Width = 606
      Height = 27
      Align = alTop
      TabOrder = 1
      Properties.CustomButtons.Buttons = <>
      Properties.TabIndex = 0
      Properties.Tabs.Strings = (
        #49888#44508'1')
      OnChange = cxTabControl1Change
      ClientRectBottom = 27
      ClientRectLeft = 2
      ClientRectRight = 600
      ClientRectTop = 27
    end
    object pnlMain: TPanel
      Left = 0
      Top = 52
      Width = 606
      Height = 626
      Align = alClient
      BevelKind = bkFlat
      BevelOuter = bvNone
      TabOrder = 2
      object PnlAccept: TPanel
        Left = 0
        Top = 0
        Width = 602
        Height = 622
        Align = alClient
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
      end
    end
  end
end

object Frm_JON25: TFrm_JON25
  Left = 753
  Top = 268
  BorderStyle = bsNone
  Caption = #49888#50857#52852#46300' '#44208#51228
  ClientHeight = 573
  ClientWidth = 756
  Color = clBtnFace
  Constraints.MaxWidth = 880
  Constraints.MinWidth = 618
  Font.Charset = DEFAULT_CHARSET
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 756
    Height = 573
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    object cxGrid: TcxGrid
      Left = 0
      Top = 336
      Width = 752
      Height = 233
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
      object cxView: TcxGridDBTableView
        PopupMenu = popGrid
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
        DataController.Summary.SummaryGroups = <>
        Filtering.MRUItemsList = False
        Filtering.ColumnMRUItemsList = False
        Filtering.ColumnMRUItemsListCount = 0
        OptionsBehavior.CellHints = True
        OptionsBehavior.CopyCaptionsToClipboard = False
        OptionsBehavior.CopyPreviewToClipboard = False
        OptionsBehavior.ExpandMasterRowOnDblClick = False
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.FocusRect = False
        OptionsView.NoDataToDisplayInfoText = '  '
        OptionsView.DataRowHeight = 22
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.GridLineColor = clSilver
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 23
        Styles.Background = Frm_Main.cxStyleGridBackColor
        OnColumnPosChanged = cxViewColumnPosChanged
        OnColumnSizeChanged = cxViewColumnSizeChanged
        object cxColView1Column1: TcxGridDBColumn
          DataBinding.FieldName = #44208#51228#50836#52397#51068#49884
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          SortIndex = 0
          SortOrder = soDescending
          Width = 113
        end
        object cxColView1Column2: TcxGridDBColumn
          DataBinding.FieldName = #49849#51064#49345#53468
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 96
        end
        object cxColView1Column3: TcxGridDBColumn
          DataBinding.FieldName = #50836#52397'ID'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 86
        end
        object cxColView1Column4: TcxGridDBColumn
          DataBinding.FieldName = #50836#52397#51088#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 88
        end
        object cxColView1Column5: TcxGridDBColumn
          DataBinding.FieldName = #48708#44256
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 196
        end
      end
      object cxLevel: TcxGridLevel
        GridView = cxView
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 162
      Width = 752
      Height = 142
      Align = alTop
      BevelOuter = bvNone
      Color = 13623806
      TabOrder = 2
      object cxGroupBox2: TcxGroupBox
        Left = 1
        Top = 1
        Style.BorderStyle = ebsNone
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 0
        DesignSize = (
          750
          139)
        Height = 139
        Width = 750
        object btnCancelAccount: TcxButton
          Left = 207
          Top = 110
          Width = 82
          Height = 25
          Cursor = crHandPoint
          Caption = #44208#51228#52712#49548
          Enabled = False
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 0
          OnClick = btnCancelAccountClick
        end
        object btnCardSearch: TcxButton
          Left = 290
          Top = 110
          Width = 48
          Height = 24
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #51312#54924
          Colors.Default = 16635384
          Colors.Normal = 16773362
          Colors.Hot = 16360076
          Colors.Pressed = 16644080
          Colors.Disabled = 4227327
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 1
          Visible = False
          OnClick = btnCardSearchClick
        end
        object btnReqAccount: TcxButton
          Left = 124
          Top = 110
          Width = 82
          Height = 25
          Cursor = crHandPoint
          Caption = #44208#51228#50836#52397
          Enabled = False
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 2
          Visible = False
          OnClick = btnReqAccountClick
        end
        object cxLabel10: TcxLabel
          Left = 253
          Top = 4
          AutoSize = False
          Caption = #49849#51064#48264#54840
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 10932991
          Style.LookAndFeel.NativeStyle = False
          Style.TextStyle = [fsBold]
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 75
          AnchorX = 291
          AnchorY = 15
        end
        object cxLabel11: TcxLabel
          Left = 48
          Top = 82
          AutoSize = False
          Caption = #52712#49548#49324#50976
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 10932991
          Style.LookAndFeel.NativeStyle = False
          Style.TextStyle = [fsBold]
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 75
          AnchorX = 86
          AnchorY = 93
        end
        object cxLabel12: TcxLabel
          Left = 467
          Top = 4
          AutoSize = False
          Caption = #52376#47532#51088
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 10932991
          Style.LookAndFeel.NativeStyle = False
          Style.TextStyle = [fsBold]
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 75
          AnchorX = 505
          AnchorY = 15
        end
        object cxLabel13: TcxLabel
          Left = 48
          Top = 56
          AutoSize = False
          Caption = #48708'     '#44256
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 10932991
          Style.LookAndFeel.NativeStyle = False
          Style.TextStyle = [fsBold]
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 75
          AnchorX = 86
          AnchorY = 67
        end
        object cxLabel5: TcxLabel
          Left = 467
          Top = 30
          AutoSize = False
          Caption = #44208#44284'('#49345#53468')'
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 10932991
          Style.LookAndFeel.NativeStyle = False
          Style.TextStyle = [fsBold]
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 75
          AnchorX = 505
          AnchorY = 41
        end
        object cxLabel6: TcxLabel
          Left = 48
          Top = 30
          AutoSize = False
          Caption = #44208#51116#44552#50529
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 10932991
          Style.LookAndFeel.NativeStyle = False
          Style.TextStyle = [fsBold]
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 75
          AnchorX = 86
          AnchorY = 41
        end
        object cxLabel8: TcxLabel
          Left = 48
          Top = 4
          AutoSize = False
          Caption = #52376#47532#51068#49884
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 10932991
          Style.LookAndFeel.NativeStyle = False
          Style.TextStyle = [fsBold]
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 75
          AnchorX = 86
          AnchorY = 15
        end
        object cxtCardBigo: TcxTextEdit
          Left = 120
          Top = 56
          TabStop = False
          ParentFont = False
          Properties.AutoSelect = False
          Properties.ReadOnly = True
          Style.BorderColor = clOlive
          Style.Color = 13623806
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 10
          Width = 559
        end
        object cxtCardCanReason: TcxTextEdit
          Left = 120
          Top = 82
          TabStop = False
          ParentFont = False
          Properties.AutoSelect = False
          Properties.ReadOnly = False
          Style.BorderColor = clOlive
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 11
          OnKeyUp = cxtCardCanReasonKeyUp
          Width = 559
        end
        object lblAccPrice: TcxLabel
          Left = 120
          Top = 30
          AutoSize = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.Shadow = False
          Style.TextColor = clDefault
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 96
          AnchorX = 168
          AnchorY = 41
        end
        object lblCardApproveNum: TcxLabel
          Left = 325
          Top = 4
          AutoSize = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.Shadow = False
          Style.TextColor = clDefault
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 136
          AnchorX = 393
          AnchorY = 15
        end
        object lblCardDateTime: TcxLabel
          Left = 120
          Top = 4
          AutoSize = False
          Caption = '2011-10-20 12:54:26'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.Shadow = False
          Style.TextColor = clDefault
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 125
          AnchorY = 15
        end
        object lblCardPaySeq: TcxLabel
          Left = 215
          Top = 30
          AutoSize = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.Shadow = False
          Style.TextColor = clDefault
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = 13623806
          Height = 22
          Width = 68
          AnchorX = 283
          AnchorY = 41
        end
        object lblCardTran: TcxLabel
          Left = 282
          Top = 30
          AutoSize = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.Shadow = False
          Style.TextColor = clDefault
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 179
          AnchorX = 461
          AnchorY = 41
        end
        object lblCardUserInfo: TcxLabel
          Left = 539
          Top = 4
          AutoSize = False
          Caption = '(useriduser)'#54861#44600#46041
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.Shadow = False
          Style.TextColor = clDefault
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 140
          AnchorY = 15
        end
        object lblResultInfo: TcxLabel
          Left = 539
          Top = 30
          AutoSize = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.Shadow = False
          Style.TextColor = clDefault
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 140
          AnchorX = 609
          AnchorY = 41
        end
        object pnlInterval: TPanel
          Left = 354
          Top = 112
          Width = 130
          Height = 23
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 19
          object Label1: TLabel
            Left = 34
            Top = 6
            Width = 105
            Height = 13
            AutoSize = False
            Caption = #52488' '#54980' '#51088#46041' '#44081#49888
          end
          object lblInterval: TcxLabel
            Left = -1
            Top = -1
            AutoSize = False
            ParentColor = False
            Style.BorderColor = 15076287
            Style.BorderStyle = ebsSingle
            Style.Color = 12189690
            Style.HotTrack = False
            Style.LookAndFeel.NativeStyle = False
            Style.Shadow = False
            Style.TextColor = 13719147
            Style.TextStyle = [fsBold]
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 24
            Width = 30
            AnchorX = 14
            AnchorY = 11
          end
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 304
      Width = 752
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  '#9758' '#44208#51228' '#49345#49464#51060#47141' '#54788#54889
      Color = 5790812
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16759807
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      DesignSize = (
        752
        32)
      object btnHistory: TcxButton
        Left = 657
        Top = 2
        Width = 93
        Height = 27
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #44208#51228#51060#47141#51312#54924
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 0
        OnClick = btnHistoryClick
      end
    end
    object pnl1: TPanel
      Left = 0
      Top = 33
      Width = 752
      Height = 129
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 4
      object cxGroupBox1: TcxGroupBox
        Left = 1
        Top = 2
        Style.BorderStyle = ebsNone
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 126
        Width = 750
        object cxLabel1: TcxLabel
          Left = 48
          Top = 100
          AutoSize = False
          Caption = #46020' '#52265' '#51648
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 16441805
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 91
          AnchorX = 94
          AnchorY = 111
        end
        object cxLabel2: TcxLabel
          Left = 407
          Top = 76
          AutoSize = False
          Caption = #50836'      '#44552
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 16441805
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 95
          AnchorX = 455
          AnchorY = 87
        end
        object cxLabel3: TcxLabel
          Left = 407
          Top = 101
          AutoSize = False
          Caption = #48176#52264#44592#49324
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 16441805
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 21
          Width = 95
          AnchorX = 455
          AnchorY = 112
        end
        object cxLabel4: TcxLabel
          Left = 407
          Top = 52
          AutoSize = False
          Caption = #44256#44061#44396#48516
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 16441805
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 95
          AnchorX = 455
          AnchorY = 63
        end
        object cxLabel7: TcxLabel
          Left = 48
          Top = 4
          AutoSize = False
          Caption = #51217#49688#48264#54840
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 16441805
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008#44256#46357
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.TextStyle = []
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 91
          AnchorX = 94
          AnchorY = 15
        end
        object cxLabel9: TcxLabel
          Left = 407
          Top = 4
          AutoSize = False
          Caption = #44208#51228' '#44396#48516
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 16441805
          Style.LookAndFeel.NativeStyle = False
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 95
          AnchorX = 455
          AnchorY = 15
        end
        object lbl2: TcxLabel
          Left = 48
          Top = 52
          AutoSize = False
          Caption = #48277' '#51064' '#47749
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 16441805
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 91
          AnchorX = 94
          AnchorY = 63
        end
        object lbl3: TcxLabel
          Left = 407
          Top = 28
          AutoSize = False
          Caption = #44256#44061#51204#54868#48264#54840
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 16441805
          Style.LookAndFeel.NativeStyle = False
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 95
          AnchorX = 455
          AnchorY = 39
        end
        object lbl5: TcxLabel
          Left = 48
          Top = 76
          AutoSize = False
          Caption = #52636' '#48156' '#51648
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 16441805
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 91
          AnchorX = 94
          AnchorY = 87
        end
        object lbl65: TcxLabel
          Left = 48
          Top = 28
          AutoSize = False
          Caption = #44256' '#44061' '#47749
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 16441805
          Style.LookAndFeel.NativeStyle = False
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 91
          AnchorX = 94
          AnchorY = 39
        end
        object lblAccType: TcxLabel
          Left = 499
          Top = 4
          AutoSize = False
          Style.BorderColor = clBlack
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.Shadow = False
          Style.TextColor = clDefault
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 180
          AnchorY = 15
        end
        object lblBubinName: TcxLabel
          Left = 136
          Top = 52
          AutoSize = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.Shadow = False
          Style.TextColor = clDefault
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 265
          AnchorY = 63
        end
        object lblConfSlip: TcxLabel
          Left = 136
          Top = 4
          AutoSize = False
          Style.BorderColor = clBlack
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.Shadow = False
          Style.TextColor = clDefault
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 265
          AnchorY = 15
        end
        object lblCustomerType: TcxLabel
          Left = 499
          Top = 52
          AutoSize = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.Shadow = False
          Style.TextColor = clDefault
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 180
          AnchorY = 63
        end
        object lblEndArea: TcxLabel
          Left = 136
          Top = 100
          AutoSize = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.Shadow = False
          Style.TextColor = clDefault
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 265
          AnchorY = 111
        end
        object lblName: TcxLabel
          Left = 136
          Top = 28
          AutoSize = False
          Style.BorderColor = clBlack
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.Shadow = False
          Style.TextColor = clDefault
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 265
          AnchorY = 39
        end
        object lblPhoneNo: TcxLabel
          Left = 499
          Top = 28
          AutoSize = False
          Style.BorderColor = clBlack
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.Shadow = False
          Style.TextColor = clDefault
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 180
          AnchorY = 39
        end
        object lblPrice: TcxLabel
          Left = 499
          Top = 76
          AutoSize = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.Shadow = False
          Style.TextColor = clDefault
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 180
          AnchorY = 87
        end
        object lblStartArea: TcxLabel
          Left = 136
          Top = 76
          AutoSize = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.Shadow = False
          Style.TextColor = clDefault
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 265
          AnchorY = 87
        end
        object lblworkerInfo: TcxLabel
          Left = 499
          Top = 100
          AutoSize = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.Shadow = False
          Style.TextColor = clDefault
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 22
          Width = 180
          AnchorY = 111
        end
      end
    end
    object pnlMessage: TPanel
      Left = 692
      Top = 353
      Width = 589
      Height = 93
      Color = 16744448
      TabOrder = 5
      Visible = False
      DesignSize = (
        589
        93)
      object cxButton1: TcxButton
        Left = 272
        Top = 67
        Width = 48
        Height = 22
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Cancel = True
        Caption = #54869#51064
        Colors.Default = 16635384
        Colors.Normal = 16773362
        Colors.Hot = 16360076
        Colors.Pressed = 16644080
        Colors.Disabled = 4227327
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 0
        OnClick = cxButton1Click
      end
      object lblMessage: TcxLabel
        Left = 20
        Top = 14
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = #49345#53468
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008#44256#46357
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Transparent = True
        Height = 47
        Width = 541
        AnchorX = 291
      end
    end
    object pnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 752
      Height = 33
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '   '#49888#50857#52852#46300' '#44208#51228
      Color = 12566463
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 6
      OnMouseMove = pnlTitleMouseMove
      DesignSize = (
        752
        33)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 752
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = False
        ExplicitTop = 8
      end
      object cxButton2: TcxButton
        Left = 1184
        Top = 2
        Width = 33
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
        TabOrder = 0
        TabStop = False
      end
      object btnClose: TcxButton
        Left = 721
        Top = 6
        Width = 29
        Height = 25
        Cursor = crHandPoint
        Hint = #45803#44592
        Anchors = [akTop, akRight]
        Colors.Default = 16635384
        Colors.Normal = 16773362
        Colors.Hot = 16360076
        Colors.Pressed = 16644080
        Colors.Disabled = 4227327
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
        TabOrder = 1
        TabStop = False
        OnClick = btnCloseClick
      end
    end
    object cxGrid1: TcxGrid
      Left = -56
      Top = 420
      Width = 721
      Height = 158
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      LookAndFeel.NativeStyle = False
      object cxViewKCP: TcxGridDBTableView
        PopupMenu = popGrid
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
        DataController.Summary.SummaryGroups = <>
        Filtering.MRUItemsList = False
        Filtering.ColumnMRUItemsList = False
        Filtering.ColumnMRUItemsListCount = 0
        OptionsBehavior.CellHints = True
        OptionsBehavior.CopyCaptionsToClipboard = False
        OptionsBehavior.CopyPreviewToClipboard = False
        OptionsBehavior.ExpandMasterRowOnDblClick = False
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.FocusRect = False
        OptionsView.NoDataToDisplayInfoText = '  '
        OptionsView.DataRowHeight = 22
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.GridLineColor = clSilver
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 23
        Styles.Background = Frm_Main.cxStyleGridBackColor
        OnColumnPosChanged = cxViewKCPColumnPosChanged
        OnColumnSizeChanged = cxViewKCPColumnSizeChanged
        object cxViewKCPColumn2: TcxGridDBColumn
          DataBinding.FieldName = #52376#47532#51068#49884
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          HeaderAlignmentHorz = taCenter
          Options.Sorting = False
          SortIndex = 0
          SortOrder = soDescending
          Width = 120
        end
        object cxGridDBColumn2: TcxGridDBColumn
          DataBinding.FieldName = #44208#51228#50836#44552
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0;-,0'
          HeaderAlignmentHorz = taCenter
          Width = 70
        end
        object cxGridDBColumn3: TcxGridDBColumn
          DataBinding.FieldName = #44208#51228#49345#53468
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxGridDBColumn4: TcxGridDBColumn
          DataBinding.FieldName = #44144#47000#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBColumn5: TcxGridDBColumn
          DataBinding.FieldName = #49849#51064#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 79
        end
        object cxViewKCPColumn1: TcxGridDBColumn
          DataBinding.FieldName = #48708#44256'('#52712#49548#49324#50976')'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 130
        end
        object cxViewKCPColumn3: TcxGridDBColumn
          DataBinding.FieldName = #52376#47532#51088#51221#48372
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 115
        end
        object cxGridDBColumn1: TcxGridDBColumn
          DataBinding.FieldName = #44208#51228#51068#47144#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Moving = False
          Width = 56
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxViewKCP
      end
    end
    object lbTitle: TListBox
      Left = 56
      Top = 480
      Width = 121
      Height = 155
      ImeName = 'Microsoft Office IME 2007'
      ItemHeight = 15
      Items.Strings = (
        #44208#51228#50836#52397#51068#49884
        #49849#51064#49345#53468
        #50836#52397'ID'
        #50836#52397#51088#47749
        #48708#44256)
      TabOrder = 7
      Visible = False
    end
    object lbTitle2: TListBox
      Left = 208
      Top = 480
      Width = 121
      Height = 155
      ImeName = 'Microsoft Office IME 2007'
      ItemHeight = 15
      Items.Strings = (
        #52376#47532#51068#49884
        #44208#51228#50836#44552
        #44208#51228#49345#53468
        #44144#47000#48264#54840
        #49849#51064#48264#54840
        #48708#44256'('#52712#49548#49324#50976')'
        #52376#47532#51088#51221#48372
        #44208#51228#51068#47144#48264#54840)
      TabOrder = 8
      Visible = False
    end
  end
  object tmrPolling: TTimer
    Enabled = False
    OnTimer = tmrPollingTimer
    Left = 48
    Top = 460
  end
  object popGrid: TPopupMenu
    AutoHotkeys = maManual
    Left = 240
    Top = 144
    object N2: TMenuItem
      Caption = #53440#51060#53952#52488#44592#54868
      OnClick = N2Click
    end
  end
end

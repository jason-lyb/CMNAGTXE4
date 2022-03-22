object frm_CMP02: Tfrm_CMP02
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 557
  ClientWidth = 495
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 12
  object pnl_Main: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 0
    Height = 557
    Width = 495
    object Pnl_Title: TPanel
      Left = 3
      Top = 3
      Width = 489
      Height = 38
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '   '#49324#50629#51088#51221#48372#51068#44292#48320#44221
      Color = 12566463
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnMouseDown = Pnl_TitleMouseDown
      DesignSize = (
        489
        38)
      object BtnClose: TcxButton
        Left = 460
        Top = 11
        Width = 20
        Height = 19
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
        OnClick = BtnCloseClick
      end
    end
    object pnl_Top: TcxGroupBox
      Left = 3
      Top = 41
      Align = alTop
      Enabled = False
      PanelStyle.Active = True
      TabOrder = 1
      Height = 169
      Width = 489
      object lbl3: TcxLabel
        Left = 4
        Top = 8
        AutoSize = False
        Caption = #49440#53469#51648#49324
        ParentColor = False
        Style.BorderStyle = ebsFlat
        Style.Color = clWhite
        Style.TextColor = clBlack
        Style.TransparentBorder = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 24
        Width = 93
        AnchorX = 51
        AnchorY = 20
      end
      object lblSelBranch: TcxLabel
        Left = 95
        Top = 7
        AutoSize = False
        Caption = #51648#49324
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
        Width = 391
        AnchorX = 291
        AnchorY = 20
      end
      object lbl15: TcxLabel
        Left = 185
        Top = 37
        AutoSize = False
        Caption = #49324#50629#51088#48264#54840
        ParentColor = False
        Style.BorderStyle = ebsFlat
        Style.Color = clWhite
        Style.TextColor = clBlack
        Style.TransparentBorder = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 24
        Width = 94
        AnchorX = 232
        AnchorY = 49
      end
      object edtBaseSsn: TcxTextEdit
        Left = 277
        Top = 36
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.MaxLength = 12
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Height = 26
        Width = 114
      end
      object cxLabel6: TcxLabel
        Left = 185
        Top = 90
        AutoSize = False
        Caption = #51452#48124#46321#47197#48264#54840
        ParentColor = False
        Style.BorderStyle = ebsFlat
        Style.Color = clWhite
        Style.TextColor = clBlack
        Style.TransparentBorder = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 24
        Width = 94
        AnchorX = 232
        AnchorY = 102
      end
      object edtBaseOwnerJumin: TcxTextEdit
        Left = 277
        Top = 89
        AutoSize = False
        Properties.ImeMode = imSAlpha
        Properties.MaxLength = 6
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        Text = '999999'
        Height = 26
        Width = 48
      end
      object edtBaseOwnerJumin1: TcxTextEdit
        Left = 331
        Top = 89
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.MaxLength = 7
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 6
        Text = '9999999'
        Height = 26
        Width = 60
      end
      object cxLabel7: TcxLabel
        Left = 324
        Top = 91
        Caption = '-'
        ParentColor = False
        ParentFont = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 329
        AnchorY = 101
      end
      object edtBaseOwner: TcxTextEdit
        Left = 95
        Top = 89
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.MaxLength = 10
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 8
        Height = 26
        Width = 90
      end
      object lbl14: TcxLabel
        Left = 3
        Top = 63
        AutoSize = False
        Caption = #49324#50629#51109#51204#54868#48264#54840
        ParentColor = False
        Style.BorderStyle = ebsFlat
        Style.Color = clWhite
        Style.TextColor = clBlack
        Style.TransparentBorder = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Properties.WordWrap = True
        Height = 25
        Width = 94
        AnchorX = 50
        AnchorY = 76
      end
      object lbl17: TcxLabel
        Left = 3
        Top = 116
        AutoSize = False
        Caption = #51452'      '#49548
        ParentColor = False
        Style.BorderStyle = ebsFlat
        Style.Color = clWhite
        Style.TextColor = clBlack
        Style.TransparentBorder = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 24
        Width = 94
        AnchorX = 50
        AnchorY = 128
      end
      object edtBaseZipCode: TcxTextEdit
        Left = 95
        Top = 115
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 11
        Height = 26
        Width = 50
      end
      object edtBaseAddr: TcxTextEdit
        Left = 144
        Top = 115
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 12
        Height = 26
        Width = 342
      end
      object edtBaseAddrDetail: TcxTextEdit
        Left = 95
        Top = 141
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 13
        Height = 26
        Width = 391
      end
      object lbl12: TcxLabel
        Left = 3
        Top = 90
        AutoSize = False
        Caption = #45824#54364#51088#47749
        ParentColor = False
        Style.BorderStyle = ebsFlat
        Style.Color = clWhite
        Style.TextColor = clBlack
        Style.TransparentBorder = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 24
        Width = 94
        AnchorX = 50
        AnchorY = 102
      end
      object lbl18: TcxLabel
        Left = 3
        Top = 142
        AutoSize = False
        Caption = #49345#49464#51452#49548
        ParentColor = False
        Style.BorderStyle = ebsFlat
        Style.Color = clWhite
        Style.TextColor = clBlack
        Style.TransparentBorder = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 24
        Width = 94
        AnchorX = 50
        AnchorY = 154
      end
      object edtBasePhone: TcxTextEdit
        Left = 95
        Top = 63
        AutoSize = False
        Properties.ImeMode = imSAlpha
        Properties.MaxLength = 13
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 16
        Text = '032-9999-9999'
        Height = 26
        Width = 90
      end
      object cxLabel1: TcxLabel
        Left = 3
        Top = 37
        AutoSize = False
        Caption = #49324#50629#51109#47749
        ParentColor = False
        Style.BorderStyle = ebsFlat
        Style.Color = clWhite
        Style.TextColor = clBlack
        Style.TransparentBorder = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 24
        Width = 94
        AnchorX = 50
        AnchorY = 49
      end
      object edt_biz_Name: TcxTextEdit
        Left = 95
        Top = 36
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.MaxLength = 10
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 18
        Height = 26
        Width = 90
      end
    end
    object pnl_Grid: TcxGroupBox
      Left = 3
      Top = 210
      Align = alClient
      PanelStyle.Active = True
      TabOrder = 2
      Height = 344
      Width = 489
      object Gauge1: TAdvProgressBar
        Left = 3
        Top = 319
        Width = 483
        Height = 22
        Align = alBottom
        BorderColor = 11250603
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        Level0ColorTo = 14811105
        Level1ColorTo = 13303807
        Level2Color = 5483007
        Level2ColorTo = 11064319
        Level3Color = 8585152
        Level3ColorTo = 13290239
        Level1Perc = 70
        Level2Perc = 90
        Position = 0
        Rounded = False
        ShowBorder = True
        ShowGradient = False
        Version = '1.3.2.2'
        ExplicitTop = 3
      end
      object cxGridA8: TcxGrid
        Left = 3
        Top = 25
        Width = 304
        Height = 294
        Align = alLeft
        TabOrder = 0
        TabStop = False
        LookAndFeel.NativeStyle = False
        object cxBrInfoCopy: TcxGridBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.BandMoving = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 22
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          OptionsView.BandHeaderHeight = 23
          Bands = <
            item
              Caption = 'No'
              Width = 43
            end
            item
              Caption = #51648#49324#53076#46300
              Width = 54
            end
            item
              Caption = #51648#49324#47749
              Width = 155
            end
            item
              Caption = #49440#53469
              Width = 38
              OnHeaderClick = cxBrInfoCopyBands2HeaderClick
            end>
          object cxBrInfoCopyColumn1: TcxGridBandedColumn
            Caption = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxBrInfoCopyColumn2: TcxGridBandedColumn
            Caption = #51648#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Options.Editing = False
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxBrInfoCopyColumn4: TcxGridBandedColumn
            Caption = #49440#53469
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.FullFocusRect = True
            Properties.ImmediatePost = True
            Properties.ReadOnly = False
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Width = 20
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxBrInfoCopyColumn5: TcxGridBandedColumn
            Caption = #51648#49324#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Options.Editing = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxBrInfoCopy
        end
      end
      object mmo_ProgressMsg: TcxMemo
        Left = 307
        Top = 25
        Align = alRight
        Properties.ScrollBars = ssVertical
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 1
        Height = 294
        Width = 179
      end
      object Panel1: TPanel
        Left = 3
        Top = 3
        Width = 483
        Height = 22
        Cursor = crSizeAll
        Align = alTop
        BevelOuter = bvNone
        Caption = #51201#50857#51648#49324#49440#53469
        Color = 14024703
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        OnMouseDown = Pnl_TitleMouseDown
      end
    end
    object btnBrInfoCopy: TcxButton
      Left = 395
      Top = 78
      Width = 92
      Height = 77
      Cursor = crHandPoint
      Caption = #51068#44292#51201#50857
      Colors.Default = 16773362
      Colors.Normal = 16773362
      Colors.Pressed = 16644080
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 3
      OnClick = btnBrInfoCopyClick
    end
  end
end

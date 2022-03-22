object Frm_SET01: TFrm_SET01
  Left = 787
  Top = 268
  BorderStyle = bsNone
  Caption = 'SET01'
  ClientHeight = 661
  ClientWidth = 497
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poMainFormCenter
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 497
    Height = 661
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 33
      Width = 493
      Height = 624
      Align = alClient
      BevelOuter = bvNone
      Color = 16444898
      TabOrder = 0
      object cxGroupBox2: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Align = alTop
        ParentBackground = False
        ParentColor = False
        Style.BorderStyle = ebsNone
        Style.Color = clBtnFace
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 1
        DesignSize = (
          487
          134)
        Height = 134
        Width = 487
        object Shape45: TShape
          Left = 0
          Top = 0
          Width = 145
          Height = 40
          Pen.Color = 12566402
        end
        object btnSaveType: TcxButton
          Left = 295
          Top = 76
          Width = 61
          Height = 23
          Cursor = crHandPoint
          Caption = #51200' '#51109
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 0
          OnClick = btnSaveTypeClick
        end
        object cxLabel48: TcxLabel
          Left = 23
          Top = 76
          AutoSize = False
          Caption = #49888#44508#53440#51077#47749
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = clWhite
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 24
          Width = 81
          AnchorX = 64
          AnchorY = 88
        end
        object ed_distType_NewNm: TcxTextEdit
          Left = 105
          Top = 76
          AutoSize = False
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          OnKeyDown = ed_distType_NewNmKeyDown
          Height = 24
          Width = 180
        end
        object btnSavaAs: TcxButton
          Left = 359
          Top = 104
          Width = 61
          Height = 23
          Cursor = crHandPoint
          Caption = #53440#51077#49688#51221
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 3
          OnClick = btnSavaAsClick
        end
        object btnTypeDelete: TcxButton
          Left = 295
          Top = 104
          Width = 61
          Height = 23
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #53440#51077#49325#51228
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 4
          OnClick = btnTypeDeleteClick
        end
        object cbdistTypeName: TcxComboBox
          Left = 105
          Top = 103
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.OnChange = cbdistTypeNamePropertiesChange
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 5
          Height = 24
          Width = 180
        end
        object cxLabel46: TcxLabel
          Left = 23
          Top = 103
          AutoSize = False
          Caption = #50836#44552#53440#51077#47749
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = clWhite
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 23
          Width = 81
          AnchorX = 64
          AnchorY = 115
        end
        object rbHd: TcxRadioButton
          Left = 8
          Top = 11
          Caption = #48376#49324#48324
          TabOrder = 7
          OnClick = rbHdClick
          AutoSize = True
          LookAndFeel.SkinName = 'Sharp'
          Transparent = True
        end
        object rbBr: TcxRadioButton
          Left = 75
          Top = 11
          Caption = #51648#49324#48324
          Checked = True
          TabOrder = 8
          TabStop = True
          OnClick = rbHdClick
          AutoSize = True
          LookAndFeel.SkinName = 'Sharp'
          Transparent = True
        end
        object lblSosokName: TcxLabel
          Left = 143
          Top = -1
          Anchors = [akLeft, akTop, akRight]
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
          Height = 42
          Width = 345
          AnchorX = 316
          AnchorY = 20
        end
        object cxLabel2: TcxLabel
          Left = 6
          Top = 47
          Caption = #8251' '#49888')'#44144#47532#50836#44552' '#51648#49324' '#48373#49324' '#44592#45733' '#49324#50857#51012' '#50948#54644#49436#45716' '#48376#49324#48324' '#50836#44552#54364#47196' '#51077#47141#54644' '#51452#49464#50836'.'
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = clWhite
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = 16744448
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorY = 55
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 140
        Width = 493
        Height = 484
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        ExplicitTop = 115
        ExplicitHeight = 509
        object cxGroupBox3: TcxGroupBox
          AlignWithMargins = True
          Left = 385
          Top = 3
          Align = alRight
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 478
          Width = 105
          object btnSave: TcxButton
            Left = 7
            Top = 11
            Width = 90
            Height = 54
            Cursor = crHandPoint
            Caption = #45936#51060#53552#51200#51109
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 0
            OnClick = btnSaveClick
          end
          object btnRemoveAll: TcxButton
            Left = 6
            Top = 296
            Width = 90
            Height = 26
            Cursor = crHandPoint
            Caption = #51204#52404#54665#49325#51228
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 1
            OnClick = btnRemoveAllClick
          end
          object btnAddRow: TcxButton
            Left = 6
            Top = 230
            Width = 90
            Height = 26
            Cursor = crHandPoint
            Caption = #54665#52628#44032
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 2
            OnClick = btnAddRowClick
          end
          object btnDelRow: TcxButton
            Left = 7
            Top = 263
            Width = 90
            Height = 26
            Cursor = crHandPoint
            Caption = #54665#49325#51228
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 3
            OnClick = btnDelRowClick
          end
        end
        object grdList: TcxGrid
          Left = 0
          Top = 0
          Width = 382
          Height = 484
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitHeight = 509
          object grdVList: TcxGridBandedTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.ColumnSorting = False
            OptionsView.DataRowHeight = 21
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 23
            OptionsView.BandHeaders = False
            Bands = <
              item
              end>
            object grdVListColumn1: TcxGridBandedColumn
              Caption = 'NO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = ',0.;-,0.'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Width = 48
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object grdVListColumn2: TcxGridBandedColumn
              Caption = #49884#51089#44144#47532
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DecimalPlaces = 1
              Properties.DisplayFormat = ',0.0;(,0.0); '
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object grdVListColumn3: TcxGridBandedColumn
              Caption = #46020#52265#44144#47532
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DecimalPlaces = 1
              Properties.DisplayFormat = ',0.0;(,0.0); '
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object grdVListColumn4: TcxGridBandedColumn
              Caption = #50836#44552
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;(,0); '
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
          end
          object grdListLevel1: TcxGridLevel
            GridView = grdVList
          end
        end
      end
    end
    object pnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 493
      Height = 33
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  '#44144#47532' '#50836#44552#54364' '#51077#47141
      Color = 12566463
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      OnMouseDown = pnlTitleMouseDown
      DesignSize = (
        493
        33)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 493
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = True
        ExplicitWidth = 354
      end
      object cxButton1: TcxButton
        Left = 465
        Top = 6
        Width = 25
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
        TabOrder = 0
        TabStop = False
        OnClick = btnCloseClick
      end
    end
    object grpReName: TcxGroupBox
      Left = 56
      Top = 264
      Caption = #49688#51221
      TabOrder = 2
      Visible = False
      OnMouseDown = grpReNameMouseDown
      Height = 121
      Width = 293
      object btnSaveAsClose: TcxButton
        Left = 232
        Top = 87
        Width = 56
        Height = 23
        Cursor = crHandPoint
        Caption = #52712' '#49548
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 0
        OnClick = btnSaveAsCloseClick
      end
      object btnSaveAsType: TcxButton
        Left = 174
        Top = 87
        Width = 56
        Height = 23
        Cursor = crHandPoint
        Caption = #49688' '#51221
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 1
        OnClick = btnSaveAsTypeClick
      end
      object cxLabel123: TcxLabel
        Left = 2
        Top = 16
        AutoSize = False
        Style.BorderStyle = ebsOffice11
        Height = 65
        Width = 289
      end
      object lblTypeNo: TcxLabel
        Left = 7
        Top = 51
        AutoSize = False
        Caption = #48320#44221#53440#51077#47749
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Style.Color = clWhite
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 24
        Width = 81
        AnchorX = 48
        AnchorY = 63
      end
      object ed_charge_NewName: TcxTextEdit
        Left = 87
        Top = 51
        AutoSize = False
        Properties.ImeMode = imSHanguel
        TabOrder = 4
        Height = 24
        Width = 198
      end
      object cxLabel1: TcxLabel
        Left = 7
        Top = 22
        AutoSize = False
        Caption = #50836#44552#53440#51077#47749
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Style.Color = clWhite
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 24
        Width = 81
        AnchorX = 48
        AnchorY = 34
      end
      object ed_charge_Name: TcxTextEdit
        Left = 87
        Top = 22
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.ReadOnly = True
        TabOrder = 6
        Height = 24
        Width = 198
      end
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'xls'
    Filter = 'xls|*.xls'
    Left = 444
    Top = 593
  end
end

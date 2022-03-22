object Frm_SET03: TFrm_SET03
  Left = 754
  Top = 309
  Caption = #44221#44228' '#50836#44552#51228' '#49444#51221
  ClientHeight = 701
  ClientWidth = 1190
  Color = clBtnFace
  Constraints.MinHeight = 700
  Constraints.MinWidth = 970
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 1190
    Height = 701
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    object PnlBtm: TPanel
      Left = 434
      Top = 41
      Width = 752
      Height = 656
      Align = alClient
      BevelKind = bkFlat
      BevelOuter = bvNone
      DoubleBuffered = False
      ParentDoubleBuffered = False
      TabOrder = 0
      OnResize = PnlBtmResize
      object mMap: TTalMapXCtrl
        Left = 0
        Top = 0
        Width = 748
        Height = 652
        Align = alClient
        TabOrder = 0
        OnCreate = mMapCreate
        OnMouseMove = mMapMouseMove
        OnKeyDown = mMapKeyDown
        OnStateChange = mMapStateChange
        OnUI_MouseDown = mMapUI_MouseDown
        OnUI_MouseUp = mMapUI_MouseUp
        OnUI_MouseMove = mMapUI_MouseMove
        OnUI_Click = mMapUI_Click
        OnUI_MouseLeave = mMapUI_MouseLeave
        OnUI_MouseHover = mMapUI_MouseHover
        OnLayerObject_Click = mMapLayerObject_Click
        ExplicitLeft = -1
        ExplicitWidth = 521
        ExplicitHeight = 529
        ControlData = {00090000}
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 428
      Top = 41
      Width = 6
      Height = 656
      AlignSplitter = salTop
      Control = PnlTop
    end
    object pnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 1186
      Height = 41
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      OnMouseDown = pnlTitleMouseDown
      DesignSize = (
        1186
        41)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 1186
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = True
        ExplicitWidth = 934
      end
      object cbbSido: TcxComboBox
        Left = 434
        Top = 10
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 0
        OnClick = cbbSidoClick
        Height = 24
        Width = 97
      end
      object cbbGugun: TcxComboBox
        Left = 533
        Top = 10
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.OnChange = cbbGugunPropertiesChange
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
        Height = 24
        Width = 97
      end
      object cbbDong: TcxComboBox
        Left = 632
        Top = 10
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.OnChange = cbbDongPropertiesChange
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 2
        Height = 24
        Width = 97
      end
      object btnSave: TcxButton
        Left = 958
        Top = 7
        Width = 100
        Height = 30
        Cursor = crHandPoint
        Anchors = [akRight, akBottom]
        Caption = #51200#51109
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 3
        OnClick = btnSaveClick
      end
      object btnDelete: TcxButton
        Left = 1064
        Top = 7
        Width = 100
        Height = 30
        Cursor = crHandPoint
        Anchors = [akRight, akBottom]
        Caption = #49325#51228
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 4
        OnClick = btnDeleteClick
      end
      object btnModify: TcxButton
        Left = 852
        Top = 7
        Width = 100
        Height = 30
        Cursor = crHandPoint
        Anchors = [akRight, akBottom]
        Caption = #49688#51221
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 5
        OnClick = btnModifyClick
      end
      object btnInsert: TcxButton
        Left = 746
        Top = 7
        Width = 100
        Height = 30
        Cursor = crHandPoint
        Anchors = [akRight, akBottom]
        Caption = #52628#44032
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 6
        OnClick = btnInsertClick
      end
      object cxLabel13: TcxLabel
        Left = 1
        Top = 9
        AutoSize = False
        Caption = #49548' '#49549
        ParentColor = False
        Style.BorderStyle = ebsFlat
        Style.Color = clWhite
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 26
        Width = 79
        AnchorX = 41
        AnchorY = 22
      end
      object lblSosokName: TcxLabel
        Left = 77
        Top = 9
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
        Width = 276
        AnchorX = 215
        AnchorY = 22
      end
      object btnSearch: TcxButton
        Left = 355
        Top = 7
        Width = 73
        Height = 30
        Cursor = crHandPoint
        Caption = #51312#54924
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 9
        OnClick = btnSearchClick
      end
    end
    object PnlTop: TPanel
      Left = 0
      Top = 41
      Width = 428
      Height = 656
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 3
      object cxGrdMV: TcxGrid
        Left = 0
        Top = 0
        Width = 428
        Height = 656
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object grdPoly: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCellDblClick = grdPolyCellDblClick
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.PullFocusing = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnMoving = False
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 21
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 23
          Styles.OnGetContentStyle = grdPolyStylesGetContentStyle
          Styles.Selection = cxStyleSelect
          object grdPolyColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 35
          end
          object grdPolyColumn3: TcxGridDBColumn
            DataBinding.FieldName = #44221#44228#50836#44552#51228#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 116
          end
          object grdPolyColumn2: TcxGridDBColumn
            DataBinding.FieldName = #51648#50669
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 83
          end
          object grdPolyColumn4: TcxGridDBColumn
            DataBinding.FieldName = #52636#48156#51648#50836#44552
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.;-,0.'
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 65
          end
          object grdPolyColumn5: TcxGridDBColumn
            DataBinding.FieldName = #46020#52265#51648#50836#44552
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.;-,0.'
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 65
          end
          object grdPolyColumn6: TcxGridDBColumn
            DataBinding.FieldName = #46041#51068#44221#44228#51201#50857
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 77
          end
          object grdPolyColumn7: TcxGridDBColumn
            DataBinding.FieldName = #49444#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 200
          end
          object grdPolyColumn8: TcxGridDBColumn
            DataBinding.FieldName = #51340#54364#47532#49828#53944
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 93
          end
          object grdPolyColumn9: TcxGridDBColumn
            DataBinding.FieldName = 'SEQ'
            Visible = False
          end
        end
        object cxGrdMV_Level: TcxGridLevel
          GridView = grdPoly
        end
      end
    end
  end
  object grpModify: TcxGroupBox
    Left = 343
    Top = 176
    Caption = #50836#44552#51228' '#51200#51109
    TabOrder = 1
    Visible = False
    OnMouseDown = grpModifyMouseDown
    DesignSize = (
      370
      365)
    Height = 369
    Width = 370
    object Shape45: TShape
      Left = 143
      Top = 166
      Width = 209
      Height = 24
      Pen.Color = clSilver
    end
    object btnCancel: TcxButton
      Left = 248
      Top = 311
      Width = 100
      Height = 30
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = #52712#49548
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Sharp'
      OptionsImage.Layout = blGlyphBottom
      TabOrder = 7
      OnClick = btnCancelClick
    end
    object btnSave1: TcxButton
      Left = 142
      Top = 311
      Width = 100
      Height = 30
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = #51200#51109
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Sharp'
      OptionsImage.Layout = blGlyphBottom
      TabOrder = 6
      OnClick = btnSave1Click
    end
    object cxLabel218: TcxLabel
      Left = 16
      Top = 60
      AutoSize = False
      Caption = #44221#44228#50836#44552#51228#47749
      ParentColor = False
      Style.BorderStyle = ebsFlat
      Style.Color = clWhite
      Style.TextColor = clBlack
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ShadowedColor = clGray
      Height = 26
      Width = 90
      AnchorX = 61
      AnchorY = 73
    end
    object cxLabel1: TcxLabel
      Left = 16
      Top = 101
      AutoSize = False
      Caption = #52636#48156#51648' '#50836#44552
      ParentColor = False
      Style.BorderStyle = ebsFlat
      Style.Color = clWhite
      Style.TextColor = clBlack
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ShadowedColor = clGray
      Height = 26
      Width = 90
      AnchorX = 61
      AnchorY = 114
    end
    object cxLabel2: TcxLabel
      Left = 16
      Top = 133
      AutoSize = False
      Caption = #46020#52265#51648' '#50836#44552
      ParentColor = False
      Style.BorderStyle = ebsFlat
      Style.Color = clWhite
      Style.TextColor = clBlack
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ShadowedColor = clGray
      Height = 26
      Width = 90
      AnchorX = 61
      AnchorY = 146
    end
    object cxLabel3: TcxLabel
      Left = 16
      Top = 165
      AutoSize = False
      Caption = #46041#51068' '#44221#44228' '#51201#50857' '#50668#48512
      ParentColor = False
      Style.BorderStyle = ebsFlat
      Style.Color = clWhite
      Style.TextColor = clBlack
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ShadowedColor = clGray
      Height = 26
      Width = 129
      AnchorX = 81
      AnchorY = 178
    end
    object cxLabel4: TcxLabel
      Left = 16
      Top = 198
      AutoSize = False
      Caption = #49444' '#47749
      ParentColor = False
      Style.BorderStyle = ebsFlat
      Style.Color = clWhite
      Style.TextColor = clBlack
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ShadowedColor = clGray
      Height = 92
      Width = 90
      AnchorX = 61
      AnchorY = 244
    end
    object edtPolygonNm: TcxTextEdit
      Left = 103
      Top = 60
      AutoSize = False
      Properties.ImeMode = imSHanguel
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.Color = 11796479
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnKeyDown = edtPolygonNmKeyDown
      Height = 26
      Width = 249
    end
    object curStrAmt: TcxCurrencyEdit
      Left = 103
      Top = 101
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0.;-,0.'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.Color = 11796479
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnKeyDown = curStrAmtKeyDown
      Height = 26
      Width = 98
    end
    object curEndAmt: TcxCurrencyEdit
      Left = 103
      Top = 133
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0.;-,0.'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.Color = 11796479
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnKeyDown = curEndAmtKeyDown
      Height = 26
      Width = 98
    end
    object mBigo: TcxMemo
      Left = 103
      Top = 198
      TabOrder = 5
      OnKeyDown = mBigoKeyDown
      Height = 92
      Width = 249
    end
    object rbSameN: TcxRadioButton
      Tag = 1
      Left = 253
      Top = 169
      Caption = #48120#49324#50857
      Checked = True
      TabOrder = 4
      TabStop = True
      OnKeyDown = rbSameNKeyDown
      AutoSize = True
      LookAndFeel.SkinName = 'Sharp'
      Transparent = True
    end
    object rbSameY: TcxRadioButton
      Left = 173
      Top = 169
      Caption = #49324#50857
      TabOrder = 3
      OnKeyDown = rbSameYKeyDown
      AutoSize = True
      LookAndFeel.SkinName = 'Sharp'
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 16
      Top = 24
      AutoSize = False
      Caption = #51648'  '#50669
      ParentColor = False
      Style.BorderStyle = ebsFlat
      Style.Color = clWhite
      Style.TextColor = clBlack
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ShadowedColor = clGray
      Height = 26
      Width = 90
      AnchorX = 61
      AnchorY = 37
    end
    object lblArea: TcxLabel
      Left = 103
      Top = 24
      AutoSize = False
      Caption = #51648'  '#50669
      ParentColor = False
      Style.BorderStyle = ebsFlat
      Style.Color = 14869218
      Style.TextColor = clBlack
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ShadowedColor = clGray
      Height = 26
      Width = 249
      AnchorX = 228
      AnchorY = 37
    end
    object txtPolygon: TcxTextEdit
      Left = 16
      Top = 296
      TabOrder = 15
      Text = 'txtPolygon'
      Visible = False
      Width = 337
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 1080
    Top = 415
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13629363
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13290239
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
    end
    object cxStyleSelect: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 4707838
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
    end
  end
  object tmrDongPolygon: TTimer
    Enabled = False
    Interval = 500
    OnTimer = tmrDongPolygonTimer
    Left = 1083
    Top = 484
  end
end

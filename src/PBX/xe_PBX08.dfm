object frm_PBX08: Tfrm_PBX08
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_PBX08'
  ClientHeight = 552
  ClientWidth = 1107
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
  ShowHint = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1107
    Height = 552
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    BorderWidth = 1
    ParentBackground = False
    TabOrder = 0
    object PnlInBound: TPanel
      Left = 1
      Top = 33
      Width = 1101
      Height = 514
      Align = alClient
      BevelKind = bkFlat
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object cxGroupBox9: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 0
        DesignSize = (
          1097
          86)
        Height = 86
        Width = 1097
        object btn_3_1: TcxButton
          Left = 862
          Top = 6
          Width = 77
          Height = 75
          Cursor = crHandPoint
          Caption = #51312'  '#54924
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 5
          OnClick = btn_3_1Click
        end
        object btnEdit: TcxButton
          Left = 940
          Top = 6
          Width = 77
          Height = 75
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #51200'  '#51109
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
          OnClick = btnEditClick
        end
        object btnCancel: TcxButton
          Left = 1018
          Top = 6
          Width = 77
          Height = 75
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #45803'  '#44592
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          OnClick = btnCancelClick
        end
        object cxGroupBox1: TcxGroupBox
          Left = 3
          Top = 4
          Caption = '('#51204#52404') '#52265#49888#51221#48372#48320#44221
          TabOrder = 0
          Height = 77
          Width = 494
          object rdo_Option1: TcxRadioButton
            Left = 7
            Top = 19
            Width = 138
            Height = 17
            Caption = #51204#52404' '#44060#48324#52265#49888' '#49324#50857
            TabOrder = 0
            OnClick = rdo_Option1Click
            LookAndFeel.SkinName = 'Sharp'
            Transparent = True
          end
          object rdo_Option4: TcxRadioButton
            Tag = 3
            Left = 7
            Top = 45
            Width = 162
            Height = 17
            Caption = #44060#48324#52265#49888#47564' '#51204#52404' '#48120#49324#50857
            TabOrder = 3
            OnClick = rdo_Option1Click
            LookAndFeel.SkinName = 'Sharp'
            Transparent = True
          end
          object rdo_Option2: TcxRadioButton
            Tag = 1
            Left = 175
            Top = 19
            Width = 146
            Height = 17
            Caption = #51204#52404' '#51648#45733#54805#52265#49888' '#49324#50857
            TabOrder = 1
            OnClick = rdo_Option1Click
            LookAndFeel.SkinName = 'Sharp'
            Transparent = True
          end
          object rdo_Option5: TcxRadioButton
            Tag = 4
            Left = 175
            Top = 45
            Width = 170
            Height = 17
            Caption = #51648#45733#54805#52265#49888#47564' '#51204#52404' '#48120#49324#50857
            TabOrder = 4
            OnClick = rdo_Option1Click
            LookAndFeel.SkinName = 'Sharp'
            Transparent = True
          end
          object rdo_Option3: TcxRadioButton
            Tag = 2
            Left = 355
            Top = 19
            Width = 95
            Height = 17
            Caption = #51204#52404' '#48120#49324#50857
            TabOrder = 2
            OnClick = rdo_Option1Click
            LookAndFeel.SkinName = 'Sharp'
            Transparent = True
          end
        end
        object cxGroupBox2: TcxGroupBox
          Left = 503
          Top = 4
          Caption = '('#51204#52404')'#52265#49888' '#49884#44036' '#48320#44221
          TabOrder = 1
          Height = 77
          Width = 173
          object Shape9: TShape
            Left = 5
            Top = 15
            Width = 60
            Height = 24
            Pen.Color = 12566402
          end
          object Shape1: TShape
            Left = 5
            Top = 42
            Width = 60
            Height = 24
            Pen.Color = 12566402
          end
          object cxLabel5: TcxLabel
            Left = 9
            Top = 19
            Hint = #50696')'#50500#52840'9'#49884'->0900, '#48164'9'#49884'->2100'
            Caption = #49884#51089#49884#44036
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 35
            AnchorY = 27
          end
          object edt_Start: TcxTextEdit
            Left = 64
            Top = 14
            Hint = 'ex) '#50724#54980'1'#49884'27'#48516' -> 1327'
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Properties.MaxLength = 4
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnKeyDown = edt_StartKeyDown
            OnKeyPress = edt_StartKeyPress
            Height = 26
            Width = 57
          end
          object btn_Accept: TcxButton
            Left = 122
            Top = 15
            Width = 48
            Height = 51
            Cursor = crHandPoint
            Caption = #51201#50857
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 2
            OnClick = btn_AcceptClick
          end
          object cxLabel1: TcxLabel
            Left = 9
            Top = 45
            Hint = #50696')'#50500#52840'9'#49884'->0900, '#48164'9'#49884'->2100'
            Caption = #51333#47308#49884#44036
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 35
            AnchorY = 53
          end
          object edt_End: TcxTextEdit
            Left = 64
            Top = 41
            Hint = 'ex) '#50724#54980'1'#49884'27'#48516' -> 1327'
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Properties.MaxLength = 4
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnKeyDown = edt_EndKeyDown
            OnKeyPress = edt_EndKeyPress
            Height = 26
            Width = 57
          end
        end
        object chk_Option1: TcxCheckBox
          Left = 682
          Top = 7
          Caption = #52265#49888#48264#54840'1 ('#51204#52404')'#49324#50857
          Properties.OnChange = chk_Option1PropertiesChange
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 2
          Transparent = True
        end
        object chk_Option2: TcxCheckBox
          Tag = 1
          Left = 682
          Top = 32
          Caption = #52265#49888#48264#54840'2 ('#51204#52404')'#49324#50857
          Properties.OnChange = chk_Option1PropertiesChange
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 3
          Transparent = True
        end
        object chk_Option3: TcxCheckBox
          Tag = 2
          Left = 682
          Top = 56
          Caption = #52265#49888#48264#54840'3 ('#51204#52404')'#49324#50857
          Properties.OnChange = chk_Option1PropertiesChange
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 4
          Transparent = True
        end
      end
      object cxGridA3: TcxGrid
        Left = 0
        Top = 86
        Width = 1097
        Height = 424
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        object cxGridInBound: TcxGridBandedTableView
          Navigator.Buttons.CustomButtons = <>
          FilterBox.CustomizeDialog = False
          OnEditKeyPress = cxGridInBoundEditKeyPress
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnHorzSizing = False
          OptionsCustomize.BandMoving = False
          OptionsCustomize.ColumnVertSizing = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.NoDataToDisplayInfoText = '  '
          OptionsView.DataRowHeight = 22
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          OptionsView.HeaderHeight = 20
          OptionsView.BandHeaderHeight = 23
          Bands = <
            item
              Caption = #49692#48264
              Width = 35
            end
            item
              Caption = #44592#48376#51221#48372
              Width = 360
            end
            item
              Caption = #44060#48324#52265#49888#51221#48372
              Width = 200
            end
            item
              Caption = #52265#49888#49884#44036
              Width = 113
            end
            item
              Caption = #52265#49888#51221#48372
              Width = 367
            end
            item
              Caption = #54840#48516#48176#44536#47353
              Position.BandIndex = 1
              Position.ColIndex = 0
              Width = 86
            end
            item
              Caption = #45824#54364#48264#54840
              Position.BandIndex = 1
              Position.ColIndex = 1
              Width = 72
            end
            item
              Caption = #52265#49888#48264#54840
              Position.BandIndex = 1
              Position.ColIndex = 2
              Width = 92
            end
            item
              Caption = #49436#48708#49828#47749
              Position.BandIndex = 1
              Position.ColIndex = 3
              Width = 110
            end
            item
              Caption = #44060#48324#52265#49888
              Position.BandIndex = 2
              Position.ColIndex = 0
              Width = 73
            end
            item
              Caption = #51648#45733#54805
              Position.BandIndex = 2
              Position.ColIndex = 1
            end
            item
              Caption = #48120#49324#50857
              Position.BandIndex = 2
              Position.ColIndex = 2
            end
            item
              Caption = #49884#51089#49884#44036
              Position.BandIndex = 3
              Position.ColIndex = 0
              Width = 56
            end
            item
              Caption = #51333#47308#49884#44036
              Position.BandIndex = 3
              Position.ColIndex = 1
              Width = 51
            end
            item
              Position.BandIndex = 4
              Position.ColIndex = 0
              Width = 35
            end
            item
              Caption = #44060#48324#52265#49888#48264#54840'1'
              Position.BandIndex = 4
              Position.ColIndex = 1
              Width = 89
            end
            item
              Position.BandIndex = 4
              Position.ColIndex = 2
              Width = 33
            end
            item
              Caption = #44060#48324#52265#49888#48264#54840'2'
              Position.BandIndex = 4
              Position.ColIndex = 3
              Width = 90
            end
            item
              Position.BandIndex = 4
              Position.ColIndex = 4
              Width = 33
            end
            item
              Caption = #44060#48324#52265#49888#48264#54840'3'
              Position.BandIndex = 4
              Position.ColIndex = 5
              Width = 87
            end>
          object cxGridBandedColumn1: TcxGridBandedColumn
            Caption = 'No'
            DataBinding.ValueType = 'Integer'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Moving = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn2: TcxGridBandedColumn
            Caption = #54840#48516#48176#44536#47353
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Moving = False
            Width = 70
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn3: TcxGridBandedColumn
            Caption = #45824#54364#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Moving = False
            Position.BandIndex = 6
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn4: TcxGridBandedColumn
            Caption = #52265#49888#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Moving = False
            Position.BandIndex = 7
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn5: TcxGridBandedColumn
            Caption = #49436#48708#49828#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Moving = False
            Position.BandIndex = 8
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn6: TcxGridBandedColumn
            Caption = #44060#48324#52265#49888
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.OnChange = cxGridBandedColumn6PropertiesChange
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Position.BandIndex = 9
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn7: TcxGridBandedColumn
            Caption = #51648#45733#54805
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.OnChange = cxGridBandedColumn7PropertiesChange
            Position.BandIndex = 10
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn8: TcxGridBandedColumn
            Caption = #48120#49324#50857
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.OnChange = cxGridBandedColumn8PropertiesChange
            Position.BandIndex = 11
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn9: TcxGridBandedColumn
            Caption = #49884#51089#49884#44036
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Moving = False
            Position.BandIndex = 12
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn10: TcxGridBandedColumn
            Caption = #51333#47308#49884#44036
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Moving = False
            Position.BandIndex = 13
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn11: TcxGridBandedColumn
            Caption = #49324#50857'1'
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderAlignmentHorz = taCenter
            MinWidth = 15
            Options.Moving = False
            Width = 15
            Position.BandIndex = 14
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn12: TcxGridBandedColumn
            Caption = #44060#48324#52265#49888#48264#54840'1'
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Width = 20
            Position.BandIndex = 15
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn13: TcxGridBandedColumn
            Caption = #49324#50857'2'
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderAlignmentHorz = taCenter
            MinWidth = 15
            Options.Moving = False
            Width = 15
            Position.BandIndex = 16
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn14: TcxGridBandedColumn
            Caption = #44060#48324#52265#49888#48264#54840'2'
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Position.BandIndex = 17
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn15: TcxGridBandedColumn
            Caption = #49324#50857'3'
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderAlignmentHorz = taCenter
            MinWidth = 15
            Options.Moving = False
            Width = 15
            Position.BandIndex = 18
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn16: TcxGridBandedColumn
            Caption = #44060#48324#52265#49888#48264#54840'3'
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Width = 71
            Position.BandIndex = 19
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridInBoundColumn1: TcxGridBandedColumn
            Caption = #50545#50672#46041
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object cxGridLevel8: TcxGridLevel
          GridView = cxGridInBound
        end
      end
      object pnl_Process: TPanel
        Left = 247
        Top = 155
        Width = 545
        Height = 246
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 2
        Visible = False
        object mmo_Msg: TcxMemo
          Left = 2
          Top = 121
          Align = alClient
          Properties.ReadOnly = False
          Properties.ScrollBars = ssVertical
          TabOrder = 0
          Height = 123
          Width = 541
        end
        object Panel2: TPanel
          Left = 2
          Top = 2
          Width = 541
          Height = 32
          Cursor = crSizeAll
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = '   '#52265#49888#49444#51221' '#51068#44292' '#51200#51109
          Color = 12566463
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
          OnMouseDown = Panel2MouseDown
          DesignSize = (
            541
            32)
          object btn_PnlClose: TcxButton
            Left = 462
            Top = 5
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
            OnClick = btn_PnlCloseClick
          end
        end
        object Panel3: TPanel
          Left = 2
          Top = 34
          Width = 541
          Height = 87
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          DesignSize = (
            541
            87)
          object cxProgressBar1: TcxProgressBar
            Left = 5
            Top = 8
            AutoSize = False
            TabOrder = 0
            Height = 33
            Width = 409
          end
          object btn_Run: TcxButton
            Left = 442
            Top = 8
            Width = 75
            Height = 33
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #51068#44292#51200#51109
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
            OnClick = btn_RunClick
          end
          object lb_Notice1: TcxLabel
            Left = 5
            Top = 46
            Caption = '11111'
          end
          object lb_Notice2: TcxLabel
            Left = 5
            Top = 65
            Caption = '11111'
          end
        end
      end
    end
    object PnlTitle: TPanel
      Left = 1
      Top = 1
      Width = 1101
      Height = 32
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '   '#52265#49888#49444#51221
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
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 1101
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = False
        ExplicitWidth = 578
      end
    end
  end
  object ColorDialog1: TColorDialog
    Left = 196
    Top = 593
  end
  object tmr_Process: TTimer
    Enabled = False
    OnTimer = tmr_ProcessTimer
    Left = 1025
    Top = 209
  end
end

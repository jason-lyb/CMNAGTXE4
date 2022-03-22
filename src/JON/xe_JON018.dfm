object Frm_JON018: TFrm_JON018
  Left = 246
  Top = 359
  Caption = 'Frm_JON018'
  ClientHeight = 465
  ClientWidth = 650
  Color = clBtnFace
  Constraints.MinHeight = 320
  Constraints.MinWidth = 424
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  FormStyle = fsStayOnTop
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 650
    Height = 432
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 406
      Width = 650
      Height = 26
      Align = alBottom
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      DesignSize = (
        650
        26)
      object chkMultiSame: TcxCheckBox
        Left = 4
        Top = 2
        TabStop = False
        Caption = #50773#48373
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 0
      end
      object btnMultiSave: TcxButton
        Left = 570
        Top = 0
        Width = 76
        Height = 23
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #49440#53469#51200#51109
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 1
        TabStop = False
        OnClick = btnMultiSaveClick
      end
      object btnMultiDel: TcxButton
        Left = 492
        Top = 0
        Width = 76
        Height = 23
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #49440#53469#49325#51228
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 2
        TabStop = False
        OnClick = btnMultiDelClick
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 650
      Height = 127
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 2
      ParentBackground = False
      TabOrder = 1
      DesignSize = (
        650
        127)
      object GB_View: TcxGroupBox
        Left = 2
        Top = 2
        Align = alClient
        Caption = #50864#49440']'
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 0
        DesignSize = (
          646
          119)
        Height = 123
        Width = 646
        object btnFirstSave: TcxButton
          Left = 465
          Top = 92
          Width = 124
          Height = 22
          Cursor = crHandPoint
          Caption = #50864#49440#44396#44036#51004#47196' '#51200#51109
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 0
          OnClick = btnFirstSaveClick
        end
        object btnSave: TcxButton
          Left = 387
          Top = 92
          Width = 76
          Height = 22
          Cursor = crHandPoint
          Caption = #51200#51109
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 1
          TabStop = False
          Visible = False
          OnClick = btnSaveClick
        end
        object chkSame: TcxCheckBox
          Left = 593
          Top = 94
          Anchors = [akTop, akRight]
          Caption = #50773#48373
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 2
          Transparent = True
        end
        object cxLabel1: TcxLabel
          Left = 6
          Top = 42
          AutoSize = False
          Caption = #46020#52265#51648
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 24
          Width = 54
          AnchorX = 33
          AnchorY = 54
        end
        object cxLabel2: TcxLabel
          Left = 521
          Top = 64
          AutoSize = False
          Caption = #50836' '#44552
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 23
          Width = 38
          AnchorX = 540
          AnchorY = 76
        end
        object cxLabel3: TcxLabel
          Left = 521
          Top = 19
          Anchors = [akTop, akRight]
          AutoSize = False
          Caption = #51333' '#47448
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 23
          Width = 38
          AnchorX = 540
          AnchorY = 31
        end
        object cxLabel4: TcxLabel
          Left = 6
          Top = 65
          AutoSize = False
          Caption = #50836#44552#51228
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 24
          Width = 54
          AnchorX = 33
          AnchorY = 77
        end
        object cxLabel5: TcxLabel
          Left = 521
          Top = 41
          Anchors = [akTop, akRight]
          AutoSize = False
          Caption = #44144' '#47532
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 23
          Width = 38
          AnchorX = 540
          AnchorY = 53
        end
        object cxLabel6: TcxLabel
          Left = 257
          Top = 65
          AutoSize = False
          Caption = #50864#49440#44396#44036
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 24
          Width = 55
          AnchorX = 285
          AnchorY = 77
        end
        object edtAreaType: TcxTextEdit
          Left = 556
          Top = 19
          Anchors = [akTop, akRight]
          AutoSize = False
          Properties.Alignment.Horz = taCenter
          Properties.ImeMode = imSHanguel
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          Text = #46041#8594#46041
          Height = 24
          Width = 79
        end
        object edtChargeType: TcxTextEdit
          Left = 57
          Top = 65
          AutoSize = False
          Properties.ImeMode = imSHanguel
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 10
          Text = #44396#44036']'#53084#47560#45320#44396#44036#50836#44552
          Height = 24
          Width = 197
        end
        object edtDistance: TcxTextEdit
          Left = 556
          Top = 42
          Anchors = [akTop, akRight]
          AutoSize = False
          Properties.Alignment.Horz = taRightJustify
          Properties.ImeMode = imSHanguel
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 11
          Text = '15'
          Height = 24
          Width = 57
        end
        object edtEndDesc: TcxTextEdit
          Left = 57
          Top = 42
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Properties.ImeMode = imSHanguel
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 12
          Text = #49436#50872#49884' '#44053#45224#44396' '#49340#49457#46041
          Height = 24
          Width = 197
        end
        object edtFirstType: TcxTextEdit
          Left = 309
          Top = 65
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Properties.ImeMode = imSHanguel
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 13
          Text = #53084#47560#45320#50864#49440
          Height = 24
          Width = 209
        end
        object edtPayment: TcxSpinEdit
          Left = 556
          Top = 65
          AutoSize = False
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.EditFormat = True
          Properties.AssignedValues.MinValue = True
          Properties.DisplayFormat = '#,##0'
          Properties.Increment = 1000.000000000000000000
          Properties.LargeIncrement = 10000.000000000000000000
          Properties.MaxValue = 1000000.000000000000000000
          Properties.ValidateOnEnter = False
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 14
          OnKeyDown = edtPaymentKeyDown
          Height = 24
          Width = 79
        end
        object edtStartDesc: TcxTextEdit
          Left = 57
          Top = 19
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Properties.ImeMode = imSHanguel
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 15
          Text = #49436#50872#49884' '#49569#54028#44396' '#44032#46973#46041
          Height = 24
          Width = 197
        end
        object lbl2: TcxLabel
          Left = 6
          Top = 19
          AutoSize = False
          Caption = #52636#48156#51648
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 24
          Width = 54
          AnchorX = 33
          AnchorY = 31
        end
        object cxLabel7: TcxLabel
          Left = 257
          Top = 19
          AutoSize = False
          Caption = #49464#48512#51648#47749
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 24
          Width = 55
          AnchorX = 285
          AnchorY = 31
        end
        object cxLabel8: TcxLabel
          Left = 257
          Top = 42
          AutoSize = False
          Caption = #49464#48512#51648#47749
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 24
          Width = 55
          AnchorX = 285
          AnchorY = 54
        end
        object edtStartPOIDesc: TcxTextEdit
          Left = 309
          Top = 19
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Properties.ImeMode = imSHanguel
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 19
          Text = #49436#50872#49884' '#49569#54028#44396' '#44032#46973#46041
          Height = 24
          Width = 209
        end
        object edtEndPOIDesc: TcxTextEdit
          Left = 309
          Top = 42
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Properties.ImeMode = imSHanguel
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 20
          Text = #49436#50872#49884' '#44053#45224#44396' '#49340#49457#46041
          Height = 24
          Width = 209
        end
        object Label2: TcxLabel
          Left = 613
          Top = 46
          Anchors = [akTop, akRight]
          Caption = 'Km'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008#44256#46357
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
      end
      object cxSTX: TcxTextEdit
        Left = 7
        Top = 103
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Enabled = False
        Properties.ImeMode = imSHanguel
        TabOrder = 1
        Visible = False
        Height = 21
        Width = 80
      end
      object cxSTY: TcxTextEdit
        Left = 89
        Top = 103
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Enabled = False
        Properties.ImeMode = imSHanguel
        TabOrder = 2
        Visible = False
        Height = 21
        Width = 80
      end
      object cxEDX: TcxTextEdit
        Left = 176
        Top = 103
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Enabled = False
        Properties.ImeMode = imSHanguel
        TabOrder = 3
        Visible = False
        Height = 21
        Width = 80
      end
      object cxEDY: TcxTextEdit
        Left = 258
        Top = 103
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Enabled = False
        Properties.ImeMode = imSHanguel
        TabOrder = 4
        Visible = False
        Height = 21
        Width = 80
      end
    end
    object pgcCharge: TcxPageControl
      Left = 0
      Top = 127
      Width = 650
      Height = 279
      Align = alClient
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 2
      Properties.ActivePage = tbsFirst
      Properties.CustomButtons.Buttons = <>
      LookAndFeel.NativeStyle = False
      ClientRectBottom = 273
      ClientRectLeft = 2
      ClientRectRight = 644
      ClientRectTop = 29
      object tbsFirst: TcxTabSheet
        Hint = #50864#49440#44396#44036
        Caption = #50864#49440#44396#44036
        ImageIndex = 0
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGridFirst: TcxGrid
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 636
          Height = 238
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
          object cxViewFirst: TcxGridTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnSorting = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 23
            Styles.Background = Frm_Main.cxStyleGridBackColor
            Styles.OnGetContentStyle = cxViewFirstStylesGetContentStyle
            object cxColFirstSel: TcxGridColumn
              Caption = #49440#53469
              DataBinding.ValueType = 'Boolean'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              HeaderAlignmentHorz = taCenter
              Width = 38
              OnHeaderClick = cxColFirstSelHeaderClick
            end
            object cxColFirstType: TcxGridColumn
              Caption = #53440#51077
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxColFirstSt: TcxGridColumn
              Caption = #52636#48156#51648
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 202
            end
            object cxColFirstEd: TcxGridColumn
              Caption = #46020#52265#51648
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 195
            end
            object cxColFirstPay: TcxGridColumn
              Caption = #50836#44552
              DataBinding.ValueType = 'Currency'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = ',0.;-,0.'
              Properties.OnChange = cxColFirstPayPropertiesChange
              Properties.OnEditValueChanged = cxColFirstPayPropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              Width = 71
            end
            object cxColFirstIndex: TcxGridColumn
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
          end
          object cxLevelFirst: TcxGridLevel
            GridView = cxViewFirst
          end
        end
      end
      object tbsTable: TcxTabSheet
        Hint = #50836#44552#51228
        Caption = #50836#44552#54364
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 235
        object cxGridTable: TcxGrid
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 636
          Height = 238
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
          ExplicitHeight = 229
          object cxViewTable: TcxGridTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnSorting = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 23
            Styles.Background = Frm_Main.cxStyleGridBackColor
            Styles.OnGetContentStyle = cxViewTableStylesGetContentStyle
            object cxColTableSel: TcxGridColumn
              Caption = #49440#53469
              DataBinding.ValueType = 'Boolean'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              HeaderAlignmentHorz = taCenter
              Width = 38
              OnHeaderClick = cxColTableSelHeaderClick
            end
            object cxColTableType: TcxGridColumn
              Caption = #53440#51077
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 78
            end
            object cxColTableSt: TcxGridColumn
              Caption = #52636#48156#51648
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 194
            end
            object cxColTableEd: TcxGridColumn
              Caption = #46020#52265#51648
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 206
            end
            object cxColTablePay: TcxGridColumn
              Caption = #50836#44552
              DataBinding.ValueType = 'Currency'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = ',0.;-,0.'
              Properties.OnChange = cxColTablePayUpPropertiesChange
              Properties.OnEditValueChanged = cxColTablePayUpPropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              Width = 71
            end
            object cxColTableIndex: TcxGridColumn
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
          end
          object cxLevelTable: TcxGridLevel
            GridView = cxViewTable
          end
        end
      end
      object tbsDistance: TcxTabSheet
        Hint = #44144#47532#50836#44552
        Caption = #44144#47532#50836#44552
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 235
        object cxGridDistance: TcxGrid
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 636
          Height = 238
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
          ExplicitHeight = 229
          object cxViewDistance: TcxGridTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnSorting = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 23
            Styles.Background = Frm_Main.cxStyleGridBackColor
            Styles.OnGetContentStyle = cxViewDistanceStylesGetContentStyle
            object cxColDistSel: TcxGridColumn
              Caption = #49440#53469
              DataBinding.ValueType = 'Boolean'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              HeaderAlignmentHorz = taCenter
              Width = 38
              OnHeaderClick = cxColDistSelHeaderClick
            end
            object cxColDistType: TcxGridColumn
              Caption = #53440#51077
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
            end
            object cxColDistSt: TcxGridColumn
              Caption = #52636#48156#51648
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 113
            end
            object cxColDistEd: TcxGridColumn
              Caption = #46020#52265#51648
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 114
            end
            object cxColDistMinPay: TcxGridColumn
              Caption = #52572#51200#50836#44552
              DataBinding.ValueType = 'Currency'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = ',0.;-,0.'
              Properties.OnChange = cxColDistMinPayPropertiesChange
              Properties.OnEditValueChanged = cxColDistMinPayPropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              Width = 71
            end
            object cxColDistBase: TcxGridColumn
              Caption = #44592#48376#44144#47532
              DataBinding.ValueType = 'Currency'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = ',0.;-,0.'
              Properties.OnChange = cxColDistMinPayPropertiesChange
              Properties.OnEditValueChanged = cxColDistMinPayPropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
            end
            object cxColDistBasePay: TcxGridColumn
              Caption = #44592#48376#50836#44552
              DataBinding.ValueType = 'Currency'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = ',0.;-,0.'
              Properties.OnChange = cxColDistMinPayPropertiesChange
              Properties.OnEditValueChanged = cxColDistMinPayPropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
            end
            object cxColDistAdd: TcxGridColumn
              Caption = #52628#44032#44144#47532
              DataBinding.ValueType = 'Currency'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = ',0.;-,0.'
              Properties.OnChange = cxColDistMinPayPropertiesChange
              Properties.OnEditValueChanged = cxColDistMinPayPropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
            end
            object cxColDistAddPay: TcxGridColumn
              Caption = #52628#44032#50836#44552
              DataBinding.ValueType = 'Currency'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = ',0.;-,0.'
              Properties.OnChange = cxColDistMinPayPropertiesChange
              Properties.OnEditValueChanged = cxColDistMinPayPropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
            end
            object cxColDistIndex: TcxGridColumn
              Caption = 'ChargeList.Index'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
          end
          object cxLevelDistance: TcxGridLevel
            GridView = cxViewDistance
          end
        end
      end
      object tbsTerm: TcxTabSheet
        Hint = #44396#44036#50836#44552
        Caption = #44396#44036#50836#44552
        ImageIndex = 3
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 235
        object cxGridTerm: TcxGrid
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 636
          Height = 238
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
          ExplicitHeight = 229
          object cxViewTerm: TcxGridTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnSorting = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 23
            Styles.Background = Frm_Main.cxStyleGridBackColor
            Styles.OnGetContentStyle = cxViewTermStylesGetContentStyle
            object cxColTermSel: TcxGridColumn
              Caption = #49440#53469
              DataBinding.ValueType = 'Boolean'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              HeaderAlignmentHorz = taCenter
              Width = 38
              OnHeaderClick = cxColTermSelHeaderClick
            end
            object cxColTermType: TcxGridColumn
              Caption = #53440#51077
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
            end
            object cxColTermSt: TcxGridColumn
              Caption = #52636#48156#51648
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 113
            end
            object cxColTermEd: TcxGridColumn
              Caption = #46020#52265#51648
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 114
            end
            object cxColTermPay: TcxGridColumn
              Caption = #44592#48376#50836#44552
              DataBinding.ValueType = 'Currency'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;-,0.'
              Properties.OnChange = cxColTermPayPropertiesChange
              Properties.OnEditValueChanged = cxColTermPayPropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              Width = 71
            end
            object cxColTermPassSub: TcxGridColumn
              Caption = #44221#50976#51648#26377
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.DropDownListStyle = lsFixedList
              Properties.OnChange = cxColTermPassSubPropertiesChange
              HeaderAlignmentHorz = taCenter
              Width = 101
            end
            object cxColTermSub: TcxGridColumn
              Caption = #44221#50976#51648#28961
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.DropDownListStyle = lsFixedList
              Properties.OnChange = cxColTermPassSubPropertiesChange
              HeaderAlignmentHorz = taCenter
              Width = 95
            end
            object cxColTermIndex: TcxGridColumn
              Caption = 'Index'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
          end
          object cxLevelTerm: TcxGridLevel
            GridView = cxViewTerm
          end
        end
      end
      object tbsFirstDetail: TcxTabSheet
        Hint = #50864#49440#49464#48512#44396#44036
        Caption = #50864#49440#49464#48512#44396#44036
        ImageIndex = 4
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 235
        object cxGrid1: TcxGrid
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 185
          Height = 238
          Align = alLeft
          BevelInner = bvNone
          BevelOuter = bvNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Visible = False
          LookAndFeel.NativeStyle = False
          ExplicitHeight = 229
          object cxViewFirstDetail: TcxGridTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnSorting = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 23
            Styles.Background = Frm_Main.cxStyleGridBackColor
            Styles.OnGetContentStyle = cxViewFirstDetailStylesGetContentStyle
            object cxColFirstDetailSel: TcxGridColumn
              Caption = #49440#53469
              DataBinding.ValueType = 'Boolean'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              HeaderAlignmentHorz = taCenter
              Width = 38
              OnHeaderClick = cxColFirstSelHeaderClick
            end
            object cxColFirstDetailType: TcxGridColumn
              Caption = #53440#51077
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
            end
            object cxColFirstDetailSt: TcxGridColumn
              Caption = #52636#48156#51648
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 113
            end
            object cxColFirstDetailEd: TcxGridColumn
              Caption = #46020#52265#51648
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 114
            end
            object cxColFirstDetailPay: TcxGridColumn
              Caption = #50836#44552
              DataBinding.ValueType = 'Currency'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = ',0.;-,0.'
              Properties.OnChange = cxColFirstPayPropertiesChange
              Properties.OnEditValueChanged = cxColFirstPayPropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              Width = 71
            end
            object cxColFirstDetailIndex: TcxGridColumn
              PropertiesClassName = 'TcxLabelProperties'
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxViewFirstDetail
          end
        end
        object cxTreeFirstDetail: TcxTreeList
          AlignWithMargins = True
          Left = 194
          Top = 3
          Width = 445
          Height = 238
          Align = alClient
          Bands = <
            item
            end>
          DefaultRowHeight = 17
          LookAndFeel.NativeStyle = False
          Navigator.Buttons.CustomButtons = <>
          OptionsBehavior.Sorting = False
          ScrollbarAnnotations.CustomAnnotations = <>
          Styles.Background = Frm_Main.cxStyleGridBackColor
          Styles.OnGetContentStyle = cxTreeFirstDetailStylesGetContentStyle
          TabOrder = 1
          OnColumnHeaderClick = cxTreeFirstDetailColumnHeaderClick
          ExplicitHeight = 229
          object cxTreeListColumn1: TcxTreeListColumn
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.OnChange = cxTreeListColumn1PropertiesChange
            Caption.AlignHorz = taCenter
            Caption.Text = #49440#53469
            DataBinding.ValueType = 'Boolean'
            Width = 38
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxTreeListColumn2: TcxTreeListColumn
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Caption.AlignHorz = taCenter
            Caption.Text = #53440#51077
            Width = 53
            Position.ColIndex = 1
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxTreeListColumn3: TcxTreeListColumn
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Caption.AlignHorz = taCenter
            Caption.Text = #52636#48156#51648
            Width = 133
            Position.ColIndex = 2
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxTreeListColumn4: TcxTreeListColumn
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Caption.AlignHorz = taCenter
            Caption.Text = #46020#52265#51648
            Width = 123
            Position.ColIndex = 3
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxTreeListColumn5: TcxTreeListColumn
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.;-,0.'
            Caption.AlignHorz = taCenter
            Caption.Text = #50836#44552
            DataBinding.ValueType = 'Currency'
            Width = 72
            Position.ColIndex = 4
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxTreeListColumn6: TcxTreeListColumn
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Width = 100
            Position.ColIndex = 5
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
        end
      end
    end
  end
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 650
    Height = 33
    Cursor = crSizeAll
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '   ['#50836#44552#54200#51665'] '#44160#49353#46108' '#50836#44552#51012' '#44552#50529' '#49688#51221' '#54980' '#51200#51109'('#50864#49440#44396#44036' '#51200#51109') '#54644#51452#49464#50836'.'
    Color = 12566463
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    OnMouseDown = pnlTitleMouseDown
    DesignSize = (
      650
      33)
    object cxLblActive: TLabel
      Left = 0
      Top = 0
      Width = 650
      Height = 5
      Align = alTop
      AutoSize = False
      Color = 33023
      ParentColor = False
      Transparent = False
    end
    object BtnClose: TcxButton
      Left = 614
      Top = 6
      Width = 33
      Height = 25
      Cursor = crHandPoint
      Hint = #45803#44592
      Anchors = [akTop, akRight]
      Colors.Default = 16635384
      Colors.Normal = 16773362
      Colors.Hot = 16360076
      Colors.Pressed = 16644080
      Colors.Disabled = 4227327
      LookAndFeel.NativeStyle = False
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
  object cxStyleRepository1: TcxStyleRepository
    Left = 553
    Top = 238
    PixelsPerInch = 96
    object cxStyleNew: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      TextColor = clRed
    end
  end
end

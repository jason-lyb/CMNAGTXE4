object frm_AIC11: Tfrm_AIC11
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 734
  ClientWidth = 1245
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  FormStyle = fsStayOnTop
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 1245
    Height = 734
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 728
    ClientRectLeft = 2
    ClientRectRight = 1239
    ClientRectTop = 27
    object cxTabSheet1: TcxTabSheet
      Caption = 'AI-OB '#54644#54588#53084' '#49884#45208#47532#50724' '#49444#51221
      ImageIndex = 0
      object pnl_Main: TPanel
        Left = 0
        Top = 0
        Width = 1237
        Height = 701
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Shape7: TShape
          Left = 0
          Top = 35
          Width = 1237
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = 2
          ExplicitTop = 27
        end
        object Shape49: TShape
          Left = 0
          Top = 319
          Width = 1237
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitTop = 311
        end
        object cxGroupBox1: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 35
          Width = 1237
          object Shape1: TShape
            Left = 10
            Top = 5
            Width = 151
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object lblSosokNameA1: TcxLabel
            Left = 95
            Top = 4
            AutoSize = False
            Caption = #49548#49549
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clBtnFace
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = clBlack
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 406
            AnchorX = 298
            AnchorY = 17
          end
          object btnSearchA1: TcxButton
            Left = 504
            Top = 5
            Width = 70
            Height = 25
            Cursor = crHandPoint
            Caption = #51312#54924
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 1
            OnClick = btnSearchA1Click
          end
          object cxLabel54: TcxLabel
            Left = 28
            Top = 10
            Caption = #49548'    '#49549
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 54
            AnchorY = 18
          end
        end
        object cxGroupBox4: TcxGroupBox
          Left = 0
          Top = 37
          Align = alTop
          TabOrder = 1
          Height = 41
          Width = 1237
          object Shape10: TShape
            Left = 9
            Top = 8
            Width = 400
            Height = 24
            Brush.Color = 14155755
            Pen.Color = 60021
            Shape = stRoundRect
          end
          object cxLabel9: TcxLabel
            Left = 102
            Top = 12
            Caption = 'AI-OB '#54644#54588#53084' '#49884#45208#47532#50724' '#49444#51221' '#45236#50669
            ParentColor = False
            ParentFont = False
            Style.Color = 16575968
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 207
            AnchorY = 20
          end
          object btn_Add: TcxButton
            Left = 596
            Top = 3
            Width = 104
            Height = 34
            Cursor = crHandPoint
            Caption = #52628#44032
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 1
            OnClick = btn_AddClick
          end
          object btn_Delete: TcxButton
            Tag = 2
            Left = 806
            Top = 3
            Width = 104
            Height = 34
            Cursor = crHandPoint
            Caption = #49325#51228
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 2
            OnClick = btn_DeleteClick
          end
          object btn_KeyNumber: TcxButton
            Tag = 2
            Left = 912
            Top = 3
            Width = 104
            Height = 34
            Cursor = crHandPoint
            Caption = #50672#44208#45824#54364#48264#54840
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 3
            OnClick = btn_KeyNumberClick
          end
          object btn_Update: TcxButton
            Tag = 1
            Left = 701
            Top = 3
            Width = 104
            Height = 34
            Cursor = crHandPoint
            Caption = #49688#51221
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 4
            OnClick = btn_AddClick
          end
          object chk_All: TcxCheckBox
            Left = 518
            Top = 12
            TabStop = False
            Caption = #51204#52404#49440#53469
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 5
            Transparent = True
            OnClick = chk_AllClick
          end
        end
        object cxGridAI1: TcxGrid
          Left = 0
          Top = 78
          Width = 1237
          Height = 241
          Align = alTop
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 2
          LookAndFeel.NativeStyle = False
          object cxGridAI_HCallList1: TcxGridDBTableView
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
            OnCellClick = cxGridAI_HCallList1CellClick
            OnCellDblClick = cxGridAI_HCallList1CellDblClick
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
            OptionsSelection.MultiSelect = True
            OptionsView.CellEndEllipsis = True
            OptionsView.FocusRect = False
            OptionsView.NoDataToDisplayInfoText = '  '
            OptionsView.CellAutoHeight = True
            OptionsView.DataRowHeight = 22
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 23
            OnColumnHeaderClick = cxGridAI_HCallList1ColumnHeaderClick
            object cxGridAI_HCallList1Column0: TcxGridDBColumn
              Tag = 1
              Caption = #49440#53469
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Properties.GlyphCount = 0
              Properties.ReadOnly = False
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Width = 33
            end
            object cxGridAI_HCallList1Column1: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = 'No'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 33
            end
            object cxGridAI_HCallList1Column2: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #51648#49324#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 139
            end
            object cxGridAI_HCallList1Column3: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #45824#54364#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 83
            end
            object cxGridAI_HCallList1Column4: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #49884#45208#47532#50724#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 78
            end
            object cxGridAI_HCallList1Column5: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #49884#45208#47532#50724#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 181
            end
            object cxGridAI_HCallList1Column6: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #49324#50857
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 47
            end
            object cxGridAI_HCallList1Column7: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #53084#49884#51089#49884#44036
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 66
            end
            object cxGridAI_HCallList1Column8: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #53084#51333#47308#49884#44036
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 66
            end
            object cxGridAI_HCallList1Column9: TcxGridDBColumn
              Tag = 1
              Caption = #49892#54056#51116#50672#44208#49884#44036'('#52488')'
              DataBinding.FieldName = #49892#54056#51116#50672#44208#49884#44036
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 113
            end
            object cxGridAI_HCallList1Column10: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #49892#54056#51116#50672#44208#54943#49688
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 102
            end
            object cxGridAI_HCallList1Column11: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #51648#49324#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Visible = False
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 102
            end
            object cxGridAI_HCallList1Column12: TcxGridDBColumn
              DataBinding.FieldName = #53084#50836#52397#50836#51068
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 140
            end
            object cxGridAI_HCallList1Column13: TcxGridDBColumn
              DataBinding.FieldName = #44277#50976#51068#53084
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Width = 54
            end
          end
          object cxGridLevel4: TcxGridLevel
            GridView = cxGridAI_HCallList1
          end
        end
        object cxGroupBox5: TcxGroupBox
          Left = 0
          Top = 321
          Align = alTop
          TabOrder = 3
          Height = 32
          Width = 1237
          object Shape11: TShape
            Left = 9
            Top = 4
            Width = 400
            Height = 24
            Brush.Color = 14155775
            Pen.Color = 55769
            Shape = stRoundRect
          end
          object lb_Scenario_Detail: TcxLabel
            Left = 147
            Top = 8
            Caption = #49884#45208#47532#50724' '#49345#49464' '#45236#50669
            ParentColor = False
            ParentFont = False
            Style.Color = 16575968
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 208
            AnchorY = 16
          end
        end
        object cxGridAI2: TcxGrid
          Left = 0
          Top = 353
          Width = 1237
          Height = 348
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 4
          LookAndFeel.NativeStyle = False
          object cxGridAI_HCallList2: TcxGridDBTableView
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
            OptionsSelection.MultiSelect = True
            OptionsView.CellEndEllipsis = True
            OptionsView.FocusRect = False
            OptionsView.NoDataToDisplayInfoText = '  '
            OptionsView.CellAutoHeight = True
            OptionsView.DataRowHeight = 40
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 25
            object cxGridDBColumn1: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #49692#48264
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.CellMerging = True
              Options.Moving = False
              Width = 33
            end
            object cxGridDBColumn5: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #45800#44228
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 76
            end
            object cxGridAI_HCallList2Column2: TcxGridDBColumn
              DataBinding.FieldName = 'AI'#50504#45236#47700#49884#51648
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Properties.WordWrap = True
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 318
            end
            object cxGridAI_HCallList2Column3: TcxGridDBColumn
              DataBinding.FieldName = 'AI'#45813#48320#47700#49884#51648
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Properties.WordWrap = True
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 261
            end
            object cxGridAI_HCallList2Column5: TcxGridDBColumn
              DataBinding.FieldName = 'SMS'#47700#49464#51648
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 195
            end
            object cxGridAI_HCallList2Column6: TcxGridDBColumn
              DataBinding.FieldName = 'SMS'#51204#49569#50668#48512
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 81
            end
            object cxGridAI_HCallList2Column1: TcxGridDBColumn
              DataBinding.FieldName = #49324#50857#50976#47924
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #51648#49324#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Visible = False
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 64
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #45824#54364#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 119
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #49884#45208#47532#50724#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 82
            end
            object cxGridAI_HCallList2Column4: TcxGridDBColumn
              DataBinding.FieldName = 'step'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridAI_HCallList2
          end
        end
      end
      object pnl_KeyNumberList: TPanel
        Left = 433
        Top = 359
        Width = 359
        Height = 326
        BevelKind = bkFlat
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 1
        Visible = False
        object Panel14: TPanel
          Left = 0
          Top = 0
          Width = 355
          Height = 34
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = '   AI-OB'#49324#50857' '#45824#54364#48264#54840#50752' 070'#48156#49888#48264#54840
          Color = 12566463
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          DesignSize = (
            355
            34)
          object btn_Close2: TcxButton
            Left = 326
            Top = 6
            Width = 24
            Height = 22
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
            OnClick = btn_Close2Click
          end
        end
        object cxGrid3: TcxGrid
          Left = 0
          Top = 34
          Width = 355
          Height = 288
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          LookAndFeel.NativeStyle = False
          object cxGridAI_List3: TcxGridDBTableView
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
            OptionsSelection.MultiSelect = True
            OptionsView.CellEndEllipsis = True
            OptionsView.FocusRect = False
            OptionsView.NoDataToDisplayInfoText = '  '
            OptionsView.CellAutoHeight = True
            OptionsView.DataRowHeight = 22
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 23
            object cxGridDBColumn29: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #49692#48264
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Width = 33
            end
            object cxGridDBColumn30: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = #45824#54364#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 146
            end
            object cxGridDBColumn31: TcxGridDBColumn
              DataBinding.FieldName = '070'#48156#49888#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Properties.WordWrap = True
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 146
            end
          end
          object cxGridLevel5: TcxGridLevel
            GridView = cxGridAI_List3
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'AI-OB '#54644#54588#53084' '#49345#49464#45236#50669
      ImageIndex = 1
      object pnl_Main2: TPanel
        Left = 0
        Top = 0
        Width = 1237
        Height = 701
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Shape12: TShape
          Left = 0
          Top = 65
          Width = 1237
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitTop = 73
        end
        object cxGrid1: TcxGrid
          Left = 0
          Top = 67
          Width = 1237
          Height = 634
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 1
          LookAndFeel.NativeStyle = False
          object cxGridAI2_HCallList1: TcxGridBandedTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.CustomizeDialog = False
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCellDblClick = cxGridAI2_HCallList1CellDblClick
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridBandedColumn33
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridBandedColumn34
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridBandedColumn35
              end
              item
                Format = ',0;-,0'
                Kind = skSum
              end
              item
                Format = ',0;-,0'
                Kind = skSum
              end
              item
                Format = ',0;-,0'
                Kind = skSum
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridBandedColumn39
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridBandedColumn40
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridBandedColumn41
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridAI2_HCallList1Column2
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridAI2_HCallList1Column3
              end
              item
                Format = ',0;-,0;'
                Kind = skSum
                Column = cxGridAI2_HCallList1Column4
              end>
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
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Header = False
            OptionsView.HeaderHeight = 20
            OptionsView.BandHeaderHeight = 23
            Bands = <
              item
                Caption = 'No'
                Width = 46
                OnHeaderClick = cxGridAI2_HCallList1Bands0HeaderClick
              end
              item
                Caption = #51648#49324#53076#46300
                Visible = False
                Width = 62
              end
              item
                Caption = #51648#49324#47749
                Width = 98
                OnHeaderClick = cxGridAI2_HCallList1Bands2HeaderClick
              end
              item
                Caption = #45824#54364#48264#54840
                Width = 114
                OnHeaderClick = cxGridAI2_HCallList1Bands3HeaderClick
              end
              item
                Caption = #47532#53084#51068#49884
                Width = 105
                OnHeaderClick = cxGridAI2_HCallList1Bands4HeaderClick
              end
              item
                Caption = #51217#49688#48264#54840
                Width = 61
                OnHeaderClick = cxGridAI2_HCallList1Bands5HeaderClick
              end
              item
                Caption = #44256#44061#50672#46973#52376
                Width = 106
                OnHeaderClick = cxGridAI2_HCallList1Bands6HeaderClick
              end
              item
                Caption = #44256#44061#47749
                Width = 73
                OnHeaderClick = cxGridAI2_HCallList1Bands7HeaderClick
              end
              item
                Caption = #44256#44061#44396#48516
                Visible = False
              end
              item
                Caption = #49884#45208#47532#50724#53076#46300
                Visible = False
              end
              item
                Caption = #49884#45208#47532#50724#47749
                Width = 142
                OnHeaderClick = cxGridAI2_HCallList1Bands10HeaderClick
              end
              item
                Caption = #49345#53468#44396#48516
                Width = 106
              end
              item
                Caption = #52509#54644#54588#53084#49688
                Width = 67
                OnHeaderClick = cxGridAI2_HCallList1Bands12HeaderClick
              end
              item
                Caption = #54644#54588#53084' OB '#49457#44277
                Width = 157
              end
              item
                Caption = #50756#47308
                Position.BandIndex = 11
                Position.ColIndex = 0
                Width = 35
                OnHeaderClick = cxGridAI2_HCallList1Bands14HeaderClick
              end
              item
                Caption = #52712#49548
                Position.BandIndex = 11
                Position.ColIndex = 1
                Width = 39
                OnHeaderClick = cxGridAI2_HCallList1Bands15HeaderClick
              end
              item
                Caption = #47928#51032
                Position.BandIndex = 11
                Position.ColIndex = 2
                Width = 47
                OnHeaderClick = cxGridAI2_HCallList1Bands16HeaderClick
              end
              item
                Caption = #54644#54588#53084' OB '#49892#54056
                Width = 150
              end
              item
                Caption = #47928#51088#49688#49888
                Position.BandIndex = 13
                Position.ColIndex = 0
                Width = 55
                OnHeaderClick = cxGridAI2_HCallList1Bands18HeaderClick
              end
              item
                Caption = 'No-'#49884#45208#47532#50724#50756#47308
                Position.BandIndex = 13
                Position.ColIndex = 1
                Width = 102
                OnHeaderClick = cxGridAI2_HCallList1Bands19HeaderClick
              end
              item
                Caption = #53685#54868#51473#51333#47308
                Position.BandIndex = 17
                Position.ColIndex = 0
                OnHeaderClick = cxGridAI2_HCallList1Bands20HeaderClick
              end
              item
                Caption = #51204#54868#50504#48155#51020
                Position.BandIndex = 17
                Position.ColIndex = 1
                OnHeaderClick = cxGridAI2_HCallList1Bands21HeaderClick
              end
              item
                Caption = #52264#44048#52880#49884
                OnHeaderClick = cxGridAI2_HCallList1Bands22HeaderClick
              end>
            object cxGridBandedColumn22: TcxGridBandedColumn
              Caption = 'No'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn23: TcxGridBandedColumn
              Caption = #51648#49324#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn24: TcxGridBandedColumn
              Caption = #51648#49324#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn25: TcxGridBandedColumn
              Caption = #45824#54364#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn26: TcxGridBandedColumn
              Caption = #47532#53084#51068#49884
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn27: TcxGridBandedColumn
              Caption = #51217#49688#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Styles.Content = Frm_Main.cxsInsure
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn28: TcxGridBandedColumn
              Caption = #44256#44061#50672#46973#52376
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn29: TcxGridBandedColumn
              Caption = #44256#44061#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 7
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn30: TcxGridBandedColumn
              Caption = #44256#44061#44396#48516
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 8
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn31: TcxGridBandedColumn
              Caption = #49884#45208#47532#50724#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 9
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn32: TcxGridBandedColumn
              Caption = #49884#45208#47532#50724#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 10
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_HCallList1Column2: TcxGridBandedColumn
              Caption = #50756#47308#44256#44061
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 40
              Position.BandIndex = 14
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_HCallList1Column3: TcxGridBandedColumn
              Caption = #52712#49548#44256#44061
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 40
              Position.BandIndex = 15
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI2_HCallList1Column4: TcxGridBandedColumn
              Caption = #47928#51032#44256#44061
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 40
              Position.BandIndex = 16
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn33: TcxGridBandedColumn
              Caption = #52509'OB'#53084#49688
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 12
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn34: TcxGridBandedColumn
              Caption = #47928#51088#49688#49888
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 18
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn35: TcxGridBandedColumn
              Caption = 'No-'#49884#45208#47532#50724#50756#47308
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 19
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn39: TcxGridBandedColumn
              Caption = #53685#54868#51473#51333#47308
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 40
              Position.BandIndex = 20
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn40: TcxGridBandedColumn
              Caption = #51204#54868#50504#48155#51020
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 40
              Position.BandIndex = 21
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn41: TcxGridBandedColumn
              Caption = #52264#44048#52880#49884
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 22
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridAI2_HCallList1
          end
        end
        object cxGroupBox2: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          ParentBackground = False
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 65
          Width = 1237
          object Shape2: TShape
            Left = 10
            Top = 5
            Width = 467
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape4: TShape
            Left = 501
            Top = 5
            Width = 252
            Height = 24
            Pen.Color = 13353605
          end
          object Shape3: TShape
            Left = 10
            Top = 32
            Width = 108
            Height = 24
            Pen.Color = 13353605
          end
          object Shape5: TShape
            Left = 209
            Top = 32
            Width = 249
            Height = 24
            Pen.Color = 12566402
          end
          object Shape81: TShape
            Left = 501
            Top = 32
            Width = 146
            Height = 24
            Pen.Color = 12566402
          end
          object lblSosokNameA2: TcxLabel
            Left = 95
            Top = 4
            AutoSize = False
            Caption = #49548#49549
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clBtnFace
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = clBlack
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 405
            AnchorX = 298
            AnchorY = 17
          end
          object btnSearchA2: TcxButton
            Left = 776
            Top = 5
            Width = 70
            Height = 51
            Cursor = crHandPoint
            Caption = #51312#54924
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 1
            OnClick = btnSearchA2Click
          end
          object cxLabel19: TcxLabel
            Left = 28
            Top = 10
            Caption = #49548'    '#49549
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 54
            AnchorY = 18
          end
          object cxLabel18: TcxLabel
            Left = 514
            Top = 9
            Caption = #49884#45208#47532#50724
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 16744448
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorX = 540
            AnchorY = 17
          end
          object cb_ScenarioA2: TcxComboBox
            Left = 572
            Top = 4
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #51648#49324#48324' '#51201#50857
              #45824#54364#48264#54840#48324' '#51201#50857)
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 4
            Text = #51648#49324#48324' '#51201#50857
            Height = 26
            Width = 198
          end
          object cb_KeyNumberA2: TcxComboBox
            Left = 95
            Top = 31
            AutoSize = False
            Properties.Alignment.Vert = taBottomJustify
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #45824#54364#48264#54840)
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 5
            Text = #45824#54364#48264#54840
            Height = 26
            Width = 112
          end
          object cxLabel22: TcxLabel
            Left = 26
            Top = 37
            Caption = #45824#54364#48264#54840
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 16744448
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorX = 52
            AnchorY = 45
          end
          object cxDtStartA1: TcxDateEdit
            Left = 281
            Top = 31
            AutoSize = False
            EditValue = 39777d
            Properties.Alignment.Vert = taBottomJustify
            Properties.SaveTime = False
            Properties.ShowTime = False
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 7
            Height = 26
            Width = 92
          end
          object cxDtEndA1: TcxDateEdit
            Left = 380
            Top = 31
            AutoSize = False
            EditValue = 39777d
            Properties.Alignment.Vert = taBottomJustify
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 8
            Height = 26
            Width = 94
          end
          object cxLabel75: TcxLabel
            Left = 371
            Top = 36
            Caption = '~'
            Transparent = True
          end
          object cxLabel23: TcxLabel
            Left = 224
            Top = 37
            Caption = #44160#49353#44592#44036
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 16744448
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorX = 250
            AnchorY = 45
          end
          object edt_Slip: TcxTextEdit
            Left = 572
            Top = 31
            AutoSize = False
            Properties.ReadOnly = False
            Style.Color = clWindow
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 11
            Height = 26
            Width = 198
          end
          object cxLabel24: TcxLabel
            Left = 514
            Top = 37
            Caption = #51217#49688#48264#54840
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 16744448
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorX = 540
            AnchorY = 45
          end
          object btnDateA1: TcxButton
            Left = 474
            Top = 32
            Width = 26
            Height = 24
            Cursor = crHandPoint
            DropDownMenu = pop_dateA1
            Kind = cxbkDropDown
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              424D360400000000000036000000280000001000000010000000010020000000
              000000000000C40E0000C40E0000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000D2905C67D49663BF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000D18A5174D2905BFFD596648500000000000000000000
              0000000000000000000000000000000000000000000100000000000000000000
              000000000000CE854982D08B52FFD2905ABDAAAA550300000000000000000000
              0000000000000000000000000000000000000000000D0000000000000000FF00
              0001CB7F408FCE8549FFD08B52E5D18B5D160000000000000000000000000000
              0000000000000000000000000000000000000000001800000000FF800002CB7B
              389CCC7F41FFCE8549FBCF8A523B000000000000000000000000000000000000
              0000000000000000000000000000000000000000002200000000C77430A5CA7A
              38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA881FADDB0
              8CD7E0B798B4E3BEA291E7C6AB5E000000000000002900000000C77430A5CA7A
              38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA881FADDB0
              8CD7E0B798B4E3BEA291E7C6AB5E000000000000002B00000000FF800002CB7B
              389CCC7F41FFCE8549FBCF8A523B000000000000000000000000000000000000
              000000000000000000000000000000000000000000280000000000000000FF00
              0001CB7F408FCE8549FFD08B52E5D18B5D160000000000000000000000000000
              0000000000000000000000000000000000000000002000000000000000000000
              000000000000CE854982D08B52FFD2905ABDAAAA550300000000000000000000
              0000000000000000000000000000000000000000001700000000000000000000
              00000000000000000000D18A5174D2905BFFD596648500000000000000000000
              0000000000000000000000000000000000000000000C00000000000000000000
              0000000000000000000000000000D2905C67D49663BF00000000000000000000
              0000000000000000000000000000000000000000000100000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000}
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 13
          end
          object btnExcelA2: TcxButton
            Left = 848
            Top = 5
            Width = 70
            Height = 51
            Cursor = crHandPoint
            Caption = #50641#49472#45796#50868
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 14
            OnClick = btnExcelA2Click
          end
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'AI-OB '#54644#54588#53084' '#51068#48324#54788#54889
      ImageIndex = 2
      object pnl_Main3: TPanel
        Left = 0
        Top = 0
        Width = 1237
        Height = 701
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Shape13: TShape
          Left = 0
          Top = 65
          Width = 1237
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitTop = 73
        end
        object cxGroupBox3: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          ParentBackground = False
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 65
          Width = 1237
          object Shape6: TShape
            Left = 10
            Top = 5
            Width = 467
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape8: TShape
            Left = 10
            Top = 32
            Width = 108
            Height = 24
            Pen.Color = 13353605
          end
          object Shape9: TShape
            Left = 209
            Top = 32
            Width = 249
            Height = 24
            Pen.Color = 12566402
          end
          object lblSosokNameA3: TcxLabel
            Left = 95
            Top = 4
            AutoSize = False
            Caption = #49548#49549
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.Color = clBtnFace
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = clBlack
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 405
            AnchorX = 298
            AnchorY = 17
          end
          object btnSearchA3: TcxButton
            Left = 502
            Top = 5
            Width = 70
            Height = 51
            Cursor = crHandPoint
            Caption = #51312#54924
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 1
            OnClick = btnSearchA3Click
          end
          object cxLabel3: TcxLabel
            Left = 28
            Top = 10
            Caption = #49548'    '#49549
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 54
            AnchorY = 18
          end
          object cb_KeyNumberA3: TcxComboBox
            Left = 95
            Top = 31
            AutoSize = False
            Properties.Alignment.Vert = taBottomJustify
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #45824#54364#48264#54840)
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 3
            Text = #45824#54364#48264#54840
            Height = 26
            Width = 112
          end
          object cxLabel5: TcxLabel
            Left = 26
            Top = 37
            Caption = #45824#54364#48264#54840
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 16744448
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorX = 52
            AnchorY = 45
          end
          object cxDtStartA2: TcxDateEdit
            Left = 281
            Top = 31
            AutoSize = False
            EditValue = 39777d
            Properties.Alignment.Vert = taBottomJustify
            Properties.SaveTime = False
            Properties.ShowTime = False
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 5
            Height = 26
            Width = 92
          end
          object cxDtEndA2: TcxDateEdit
            Left = 380
            Top = 31
            AutoSize = False
            EditValue = 39777d
            Properties.Alignment.Vert = taBottomJustify
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 6
            Height = 26
            Width = 94
          end
          object cxLabel6: TcxLabel
            Left = 371
            Top = 36
            Caption = '~'
            Transparent = True
          end
          object cxLabel7: TcxLabel
            Left = 224
            Top = 37
            Caption = #44160#49353#44592#44036
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 16744448
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorX = 250
            AnchorY = 45
          end
          object btnDateA2: TcxButton
            Left = 474
            Top = 32
            Width = 26
            Height = 24
            Cursor = crHandPoint
            DropDownMenu = pop_dateA1
            Kind = cxbkDropDown
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              424D360400000000000036000000280000001000000010000000010020000000
              000000000000C40E0000C40E0000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000D2905C67D49663BF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000D18A5174D2905BFFD596648500000000000000000000
              0000000000000000000000000000000000000000000100000000000000000000
              000000000000CE854982D08B52FFD2905ABDAAAA550300000000000000000000
              0000000000000000000000000000000000000000000D0000000000000000FF00
              0001CB7F408FCE8549FFD08B52E5D18B5D160000000000000000000000000000
              0000000000000000000000000000000000000000001800000000FF800002CB7B
              389CCC7F41FFCE8549FBCF8A523B000000000000000000000000000000000000
              0000000000000000000000000000000000000000002200000000C77430A5CA7A
              38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA881FADDB0
              8CD7E0B798B4E3BEA291E7C6AB5E000000000000002900000000C77430A5CA7A
              38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA881FADDB0
              8CD7E0B798B4E3BEA291E7C6AB5E000000000000002B00000000FF800002CB7B
              389CCC7F41FFCE8549FBCF8A523B000000000000000000000000000000000000
              000000000000000000000000000000000000000000280000000000000000FF00
              0001CB7F408FCE8549FFD08B52E5D18B5D160000000000000000000000000000
              0000000000000000000000000000000000000000002000000000000000000000
              000000000000CE854982D08B52FFD2905ABDAAAA550300000000000000000000
              0000000000000000000000000000000000000000001700000000000000000000
              00000000000000000000D18A5174D2905BFFD596648500000000000000000000
              0000000000000000000000000000000000000000000C00000000000000000000
              0000000000000000000000000000D2905C67D49663BF00000000000000000000
              0000000000000000000000000000000000000000000100000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000}
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 9
          end
          object btnExcelA3: TcxButton
            Left = 574
            Top = 5
            Width = 70
            Height = 51
            Cursor = crHandPoint
            Caption = #50641#49472#45796#50868
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 10
            OnClick = btnExcelA3Click
          end
        end
        object cxGrid2: TcxGrid
          Left = 0
          Top = 67
          Width = 1237
          Height = 634
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 1
          LookAndFeel.NativeStyle = False
          object cxGridAI3_HCallList1: TcxGridBandedTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.CustomizeDialog = False
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridAI3_HCallList1Column12
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridAI3_HCallList1Column13
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridAI3_HCallList1Column14
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridAI3_HCallList1Column15
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridAI3_HCallList1Column16
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridAI3_HCallList1Column17
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridAI3_HCallList1Column18
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridAI3_HCallList1Column19
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridAI3_HCallList1Column20
              end
              item
                Format = ',0;-,0'
                Kind = skSum
              end
              item
                Format = ',0;-,0'
                Kind = skSum
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridAI3_HCallList1Column15
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridAI3_HCallList1Column16
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridAI3_HCallList1Column17
              end>
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
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Header = False
            OptionsView.HeaderHeight = 20
            OptionsView.BandHeaderHeight = 23
            Bands = <
              item
                Caption = 'No'
                Width = 46
                OnHeaderClick = cxGridAI3_HCallList1Bands0HeaderClick
              end
              item
                Caption = #51648#49324#53076#46300
                Visible = False
                Width = 62
              end
              item
                Caption = #51648#49324#47749
                Width = 98
                OnHeaderClick = cxGridAI3_HCallList1Bands2HeaderClick
              end
              item
                Caption = #45824#54364#48264#54840
                OnHeaderClick = cxGridAI3_HCallList1Bands3HeaderClick
              end
              item
                Caption = #47532#53084#51068#49884
                OnHeaderClick = cxGridAI3_HCallList1Bands4HeaderClick
              end
              item
                Caption = #49345#53468#44396#48516
              end
              item
                Caption = #50756#47308
                Position.BandIndex = 5
                Position.ColIndex = 0
                OnHeaderClick = cxGridAI3_HCallList1Bands6HeaderClick
              end
              item
                Caption = #52712#49548
                Position.BandIndex = 5
                Position.ColIndex = 1
                OnHeaderClick = cxGridAI3_HCallList1Bands7HeaderClick
              end
              item
                Caption = #47928#51032
                Position.BandIndex = 5
                Position.ColIndex = 2
                OnHeaderClick = cxGridAI3_HCallList1Bands8HeaderClick
              end
              item
                Caption = #52509'OB'#53084#49688
                Width = 54
                OnHeaderClick = cxGridAI3_HCallList1Bands9HeaderClick
              end
              item
                Caption = #54644#54588#53084' OB '#49457#44277
                Width = 162
              end
              item
                Caption = #54644#54588#53084' OB '#49892#54056
                Width = 143
              end
              item
                Caption = #47928#51088#49688#49888
                Position.BandIndex = 10
                Position.ColIndex = 0
                Width = 65
                OnHeaderClick = cxGridAI3_HCallList1Bands12HeaderClick
              end
              item
                Caption = 'No-'#49884#45208#47532#50724#50756#47308
                Position.BandIndex = 10
                Position.ColIndex = 1
                Width = 97
                OnHeaderClick = cxGridAI3_HCallList1Bands13HeaderClick
              end
              item
                Caption = #53685#54868#51473#51333#47308
                Position.BandIndex = 11
                Position.ColIndex = 0
                Width = 74
                OnHeaderClick = cxGridAI3_HCallList1Bands14HeaderClick
              end
              item
                Caption = #51204#54868#50504#48155#51020
                Position.BandIndex = 11
                Position.ColIndex = 1
                Width = 79
                OnHeaderClick = cxGridAI3_HCallList1Bands15HeaderClick
              end
              item
                Caption = #52264#44048#52880#49884
                OnHeaderClick = cxGridAI3_HCallList1Bands16HeaderClick
              end>
            object cxGridAI3_HCallList1Column1: TcxGridBandedColumn
              Caption = 'No'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI3_HCallList1Column2: TcxGridBandedColumn
              Caption = #51648#49324#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI3_HCallList1Column3: TcxGridBandedColumn
              Caption = #51648#49324#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI3_HCallList1Column4: TcxGridBandedColumn
              Caption = #45824#54364#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 95
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI3_HCallList1Column5: TcxGridBandedColumn
              Caption = #47532#53084#51068#49884
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 95
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI3_HCallList1Column15: TcxGridBandedColumn
              Caption = #50756#47308#44256#44061
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 40
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI3_HCallList1Column16: TcxGridBandedColumn
              Caption = #52712#49548#44256#44061
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 40
              Position.BandIndex = 7
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI3_HCallList1Column17: TcxGridBandedColumn
              Caption = #47928#51032#44256#44061
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 40
              Position.BandIndex = 8
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI3_HCallList1Column12: TcxGridBandedColumn
              Caption = #52509'OB'#53084#49688
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 9
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI3_HCallList1Column13: TcxGridBandedColumn
              Caption = #47928#51088#49688#49888
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 12
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI3_HCallList1Column14: TcxGridBandedColumn
              Caption = 'No-'#49884#45208#47532#50724#50756#47308
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 13
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI3_HCallList1Column18: TcxGridBandedColumn
              Caption = #53685#54868#51473#51333#47308
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 14
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI3_HCallList1Column19: TcxGridBandedColumn
              Caption = #51204#54868#50504#48155#51020
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 15
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridAI3_HCallList1Column20: TcxGridBandedColumn
              Caption = #52264#44048#52880#49884
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 16
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
          end
          object cxGridLevel9: TcxGridLevel
            GridView = cxGridAI3_HCallList1
          end
        end
      end
    end
  end
  object pop_dateA1: TPopupMenu
    AutoHotkeys = maManual
    Left = 156
    Top = 220
    object MiToday: TMenuItem
      Caption = #50724#45720
      OnClick = MiTodayClick
    end
    object MiYesterday: TMenuItem
      Tag = 1
      Caption = #50612#51228
      OnClick = MiTodayClick
    end
    object MiOneWeek: TMenuItem
      Tag = 2
      Caption = #52572#44540#51068#51452#51068
      OnClick = MiTodayClick
    end
    object MiOneMonth: TMenuItem
      Tag = 3
      Caption = #52572#44540#54620#45804
      OnClick = MiTodayClick
    end
    object MiStartMonth: TMenuItem
      Tag = 4
      Caption = '1'#51068'~'#47568#51068
      OnClick = MiTodayClick
    end
  end
end

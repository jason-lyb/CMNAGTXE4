object Frm_ACC10: TFrm_ACC10
  Left = 419
  Top = 147
  Caption = 'ACC10'
  ClientHeight = 722
  ClientWidth = 1134
  Color = clBtnFace
  Constraints.MinHeight = 750
  Constraints.MinWidth = 1000
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poScreenCenter
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Pnl_L2: TPanel
    Left = 0
    Top = 347
    Width = 1134
    Height = 375
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 1134
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 1
      TabOrder = 0
      DesignSize = (
        1134
        26)
      object GradientLabel2: TGradientLabel
        Left = 1
        Top = 1
        Width = 1132
        Height = 24
        Align = alClient
        AutoSize = False
        Color = clWhite
        ParentColor = False
        Transparent = True
        Layout = tlCenter
        ColorTo = 15987170
        EllipsType = etNone
        GradientType = gtFullVertical
        GradientDirection = gdLeftToRight
        Indent = 0
        Orientation = goHorizontal
        TransparentText = False
        VAlignment = vaTop
        Version = '1.2.1.0'
        ExplicitWidth = 992
      end
      object Btn_Request: TcxButton
        Left = 890
        Top = 1
        Width = 77
        Height = 24
        Cursor = crHandPoint
        Anchors = [akTop, akRight, akBottom]
        Caption = #52636' '#44552' '#50836' '#52397
        Enabled = False
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 0
        TabStop = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = Btn_RequestClick
      end
      object BtnAccCng: TcxButton
        Left = 1052
        Top = 1
        Width = 77
        Height = 24
        Cursor = crHandPoint
        Anchors = [akTop, akRight, akBottom]
        Caption = #44228#51340#48320#44221#50836#52397
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 1
        TabStop = False
        OnClick = BtnAccCngClick
      end
      object Btn_A: TcxButton
        Left = 807
        Top = 1
        Width = 77
        Height = 24
        Cursor = crHandPoint
        Anchors = [akTop, akRight, akBottom]
        Caption = #44160'  '#51613
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 2
        TabStop = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = Btn_AClick
      end
      object Edt_Error: TcxTextEdit
        Left = 3
        Top = 3
        Anchors = [akLeft, akTop, akRight]
        ParentFont = False
        Properties.ReadOnly = True
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Width = 721
      end
      object cxButton1: TcxButton
        Left = 482
        Top = 1
        Width = 108
        Height = 24
        Cursor = crHandPoint
        Anchors = [akTop, akRight, akBottom]
        Caption = #51221#49328#48320#44221#50836#52397
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 4
        TabStop = False
        Visible = False
        OnClick = cxButton1Click
      end
      object Btn_Send: TcxButton
        Left = 971
        Top = 1
        Width = 77
        Height = 24
        Cursor = crHandPoint
        Anchors = [akTop, akRight, akBottom]
        Caption = #49569' '#44552' '#50836' '#52397
        Enabled = False
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 5
        TabStop = False
        Visible = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = Btn_SendClick
      end
      object btnAccMgr: TcxButton
        Left = 727
        Top = 1
        Width = 77
        Height = 24
        Cursor = crHandPoint
        Anchors = [akTop, akRight, akBottom]
        Caption = #49569#44552#44228#51340#44288#47532
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 6
        TabStop = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        OnClick = btnAccMgrClick
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 200
      Width = 1134
      Height = 175
      Align = alBottom
      BevelOuter = bvNone
      BorderWidth = 1
      TabOrder = 1
      Visible = False
      DesignSize = (
        1134
        175)
      object GradientLabel3: TGradientLabel
        Left = 1
        Top = 1
        Width = 1132
        Height = 26
        Align = alTop
        AutoSize = False
        Caption = '   '#51648#49324' '#51077#52636#44552' '#45236#50669
        Color = 14849700
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
        EllipsType = etNone
        GradientType = gtFullVertical
        GradientDirection = gdLeftToRight
        Indent = 0
        Orientation = goHorizontal
        TransparentText = False
        VAlignment = vaTop
        Version = '1.2.1.0'
        ExplicitTop = 0
        ExplicitWidth = 982
      end
      object Shape19: TShape
        Left = 643
        Top = 1
        Width = 253
        Height = 23
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Label1: TLabel
        Left = 935
        Top = 7
        Width = 12
        Height = 12
        Anchors = [akTop, akRight]
        Caption = #8764
        Transparent = True
      end
      object cxGrid1: TcxGrid
        Left = 1
        Top = 27
        Width = 1132
        Height = 147
        Align = alClient
        TabOrder = 0
        TabStop = False
        LookAndFeel.NativeStyle = False
        object cxGridC: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = True
          Navigator.Buttons.SaveBookmark.Visible = True
          Navigator.Buttons.GotoBookmark.Visible = True
          Navigator.Buttons.Filter.Visible = True
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGridDBColumn6
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.ColumnSorting = False
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 22
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 23
          OnColumnHeaderClick = cxGridCColumnHeaderClick
          object cxGridDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 43
          end
          object cxGridDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 110
          end
          object cxGridDBColumn3: TcxGridDBColumn
            DataBinding.FieldName = #51077#47141#51068
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 90
          end
          object cxGridDBColumn4: TcxGridDBColumn
            DataBinding.FieldName = #51077#47141#51088
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 60
          end
          object cxGridDBColumn5: TcxGridDBColumn
            DataBinding.FieldName = #51077#52636#44552#51333#47448
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGridDBColumn6: TcxGridDBColumn
            DataBinding.FieldName = #44552#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 90
          end
          object cxGridDBColumn7: TcxGridDBColumn
            DataBinding.FieldName = #51092#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 90
          end
          object cxGridDBColumn8: TcxGridDBColumn
            DataBinding.FieldName = #47700#47784
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 150
          end
          object cxGridDBColumn9: TcxGridDBColumn
            DataBinding.FieldName = #51217#49688#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 77
          end
          object cxGridCColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'SEQ'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridC
        end
      end
      object de_stDate1: TcxDateEdit
        Left = 846
        Top = 0
        Anchors = [akTop, akRight]
        AutoSize = False
        BeepOnEnter = False
        EditValue = 0d
        ParentShowHint = False
        Properties.DateButtons = [btnNow, btnToday]
        Properties.InputKind = ikStandard
        ShowHint = True
        Style.BorderStyle = ebsOffice11
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 1
        Height = 25
        Width = 90
      end
      object de_edDate1: TcxDateEdit
        Left = 947
        Top = 0
        Anchors = [akTop, akRight]
        AutoSize = False
        EditValue = 0d
        ParentShowHint = False
        Properties.DateButtons = [btnNow, btnToday]
        Properties.InputKind = ikStandard
        ShowHint = True
        Style.BorderStyle = ebsOffice11
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 2
        Height = 25
        Width = 90
      end
      object cxButton8: TcxButton
        Left = 1037
        Top = 1
        Width = 25
        Height = 23
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
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
        PopupMenu = pop_date1
        TabOrder = 3
        OnMouseDown = cxButton8MouseDown
      end
      object Btn_Sch2: TcxButton
        Left = 1064
        Top = 1
        Width = 65
        Height = 24
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #51312#54924
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 4
        TabStop = False
        OnClick = Btn_Sch2Click
      end
      object cxLabel12: TcxLabel
        Left = 800
        Top = 5
        Anchors = [akTop, akRight]
        Caption = #44592'  '#44036
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548#52404
        Style.Font.Style = []
        Style.TextColor = 13719147
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 820
        AnchorY = 13
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 26
      Width = 1134
      Height = 174
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 1
      TabOrder = 2
      DesignSize = (
        1134
        174)
      object Label13: TLabel
        Left = 949
        Top = 9
        Width = 12
        Height = 12
        Anchors = [akTop, akRight]
        Caption = #8764
        Transparent = True
        ExplicitLeft = 809
      end
      object Shape5: TShape
        Left = 1
        Top = 32
        Width = 1132
        Height = 2
        Align = alTop
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitLeft = -6
        ExplicitTop = 23
        ExplicitWidth = 305
      end
      object Grid3: TcxGrid
        Left = 1
        Top = 34
        Width = 1132
        Height = 139
        Align = alClient
        TabOrder = 0
        TabStop = False
        LookAndFeel.NativeStyle = False
        object cxGridA: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = True
          Navigator.Buttons.SaveBookmark.Visible = True
          Navigator.Buttons.GotoBookmark.Visible = True
          Navigator.Buttons.Filter.Visible = True
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCanSelectRecord = cxGridACanSelectRecord
          OnCellDblClick = cxGridACellDblClick
          OnCustomDrawCell = cxGridACustomDrawCell
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGridAColumn3
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.ColumnSorting = False
          OptionsData.Editing = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.InvertSelect = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 22
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 23
          OnColumnHeaderClick = cxGridAColumnHeaderClick
          object cxGridAColumn8: TcxGridDBColumn
            DataBinding.FieldName = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 30
          end
          object cxGridAColumn9: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 110
          end
          object cxGridAColumn6: TcxGridDBColumn
            DataBinding.FieldName = #51092' '#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 75
          end
          object cxGridAColumn5: TcxGridDBColumn
            DataBinding.FieldName = #49345#53468
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 40
          end
          object cxGridAColumn11: TcxGridDBColumn
            DataBinding.FieldName = #50836#52397#44208#44284
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGridAColumn2: TcxGridDBColumn
            DataBinding.FieldName = #52636#44552#44552#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 75
          end
          object cxGridAColumn3: TcxGridDBColumn
            DataBinding.FieldName = #50836#52397#51068#51088
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 115
          end
          object cxGridAColumn4: TcxGridDBColumn
            DataBinding.FieldName = #51008#54665#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 70
          end
          object cxGridAColumn7: TcxGridDBColumn
            DataBinding.FieldName = #44228#51340#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 90
          end
          object cxGridAColumn1: TcxGridDBColumn
            DataBinding.FieldName = #50696#44552#51452
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxGridAColumn10: TcxGridDBColumn
            DataBinding.FieldName = #48155#51008#49324#46988#53685#51109#54364#49884
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 102
          end
          object cxGridAColumn12: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
          object cxGridAColumn13: TcxGridDBColumn
            DataBinding.FieldName = #51068#47144#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
          end
          object cxGridAColumn14: TcxGridDBColumn
            DataBinding.FieldName = #47700' '#47784
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 200
          end
        end
        object Grid3Level: TcxGridLevel
          GridView = cxGridA
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 1
        Top = 1
        Align = alTop
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 1
        DesignSize = (
          1132
          31)
        Height = 31
        Width = 1132
        object Shape1: TShape
          Left = 5
          Top = 3
          Width = 288
          Height = 24
          Brush.Color = 12566463
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape2: TShape
          Left = 792
          Top = 3
          Width = 253
          Height = 24
          Anchors = [akTop, akRight]
          Pen.Color = 12566402
          Shape = stRoundRect
          ExplicitLeft = 652
        end
        object Label2: TLabel
          Left = 934
          Top = 9
          Width = 12
          Height = 12
          Anchors = [akTop, akRight]
          Caption = #8764
          Transparent = True
        end
        object Btn_Resrv: TcxButton
          Left = 719
          Top = 3
          Width = 71
          Height = 24
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #50696#50557#52712#49548
          Enabled = False
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 0
          TabStop = False
          OnClick = Btn_ResrvClick
        end
        object Btn_Sch1: TcxButton
          Left = 1063
          Top = 3
          Width = 65
          Height = 25
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #51312#54924
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 1
          TabStop = False
          OnClick = Btn_Sch1Click
        end
        object cxLCuBubinCode: TcxLabel
          Left = 799
          Top = 7
          Anchors = [akTop, akRight]
          Caption = #44592'  '#44036
          ParentColor = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = []
          Style.TextColor = 13719147
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 819
          AnchorY = 15
        end
        object de_edDate: TcxDateEdit
          Left = 946
          Top = 2
          Anchors = [akTop, akRight]
          AutoSize = False
          EditValue = 0d
          ParentShowHint = False
          Properties.DateButtons = [btnNow, btnToday]
          Properties.InputKind = ikStandard
          ShowHint = True
          Style.BorderStyle = ebsOffice11
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
          Height = 26
          Width = 90
        end
        object de_stDate: TcxDateEdit
          Left = 845
          Top = 2
          Anchors = [akTop, akRight]
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          ParentShowHint = False
          Properties.DateButtons = [btnNow, btnToday]
          Properties.InputKind = ikStandard
          ShowHint = True
          Style.BorderStyle = ebsOffice11
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
          Height = 26
          Width = 90
        end
        object RbButton1: TcxButton
          Left = 1036
          Top = 3
          Width = 25
          Height = 24
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
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
          PopupMenu = pop_date
          TabOrder = 5
          OnMouseDown = RbButton1MouseDown
        end
        object cxLabel54: TcxLabel
          Left = 90
          Top = 7
          Caption = #52636' '#44552' '#50836' '#52397' '#54788' '#54889
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
          AnchorX = 149
          AnchorY = 15
        end
        object btnExcelA1: TcxButton
          Left = 637
          Top = 3
          Width = 80
          Height = 24
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #50641#49472#45796#50868
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 7
          TabStop = False
          OnClick = btnExcelA1Click
        end
      end
    end
  end
  object Pnl_L1: TPanel
    Left = 0
    Top = 30
    Width = 1134
    Height = 317
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 1
    TabOrder = 3
    object cxGrid4: TcxGrid
      Left = 1
      Top = 1
      Width = 1132
      Height = 315
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        Navigator.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0;-,0'
            Kind = skSum
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnSorting = False
        OptionsView.NoDataToDisplayInfoText = ' '
        OptionsView.DataRowHeight = 22
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        object cxGridDBColumn25: TcxGridDBColumn
          DataBinding.FieldName = 'No'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 30
        end
        object cxGridDBColumn26: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 125
        end
        object cxGridDBColumn27: TcxGridDBColumn
          DataBinding.FieldName = #51008#54665#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn28: TcxGridDBColumn
          DataBinding.FieldName = #52636#44552#44228#51340
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn29: TcxGridDBColumn
          DataBinding.FieldName = #50696#44552#51452
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 60
        end
        object cxGridDBColumn30: TcxGridDBColumn
          DataBinding.FieldName = #48376#49324#51221#49328#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn31: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#51221#49328#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn32: TcxGridDBColumn
          DataBinding.FieldName = #49444#51221#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn33: TcxGridDBColumn
          DataBinding.FieldName = #51092'  '#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn34: TcxGridDBColumn
          Caption = #50696#50557
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.NullStyle = nssUnchecked
          Properties.ReadOnly = False
          HeaderAlignmentHorz = taCenter
          Options.Moving = False
          Width = 30
        end
        object cxGridDBColumn35: TcxGridDBColumn
          DataBinding.FieldName = #50696#50557#51068#51088
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.DateOnError = deToday
          HeaderAlignmentHorz = taCenter
          Width = 70
        end
        object cxGridDBColumn36: TcxGridDBColumn
          DataBinding.FieldName = #50696#50557#49884#44036
          PropertiesClassName = 'TcxTimeEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.TimeFormat = tfHourMin
          HeaderAlignmentHorz = taCenter
          Width = 70
        end
        object cxGridDBColumn37: TcxGridDBColumn
          DataBinding.FieldName = #52636#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.AutoSelect = False
          Properties.DisplayFormat = '#,##0'
          Properties.HideSelection = False
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBColumn38: TcxGridDBColumn
          DataBinding.FieldName = #51201' '#50836
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBColumn39: TcxGridDBColumn
          DataBinding.FieldName = #47700' '#47784
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 120
        end
        object cxGridDBColumn40: TcxGridDBColumn
          DataBinding.FieldName = #55092#45824#54256
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBColumn41: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#53076#46300
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 123
        end
        object cxGridDBColumn42: TcxGridDBColumn
          DataBinding.FieldName = #51008#54665#53076#46300
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
        end
      end
      object cxBranch: TcxGridBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnInitEdit = cxBranchInitEdit
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = cxBranchColumn13
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ExpandMasterRowOnDblClick = False
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.ColumnHorzSizing = False
        OptionsCustomize.BandMoving = False
        OptionsView.ShowEditButtons = gsebAlways
        OptionsView.DataRowHeight = 22
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderHeight = 22
        OptionsView.BandHeaderHeight = 23
        OnColumnHeaderClick = cxBranchColumnHeaderClick
        Bands = <
          item
            Caption = 'No'
          end
          item
            Caption = #51648#49324#47749
          end
          item
            Caption = #51221#49328#44228#51340
          end
          item
            Caption = #51008#54665#47749
            Position.BandIndex = 2
            Position.ColIndex = 0
          end
          item
            Caption = #44228#51340#48264#54840
            Position.BandIndex = 2
            Position.ColIndex = 2
            Width = 86
          end
          item
            Caption = #50696#44552#51452
            Position.BandIndex = 2
            Position.ColIndex = 1
            Width = 65
          end
          item
            Caption = #48376#49324#51221#49328#44552#50529
          end
          item
            Caption = #51648#49324#51221#49328#44552#50529
          end
          item
            Caption = #49444#51221#44552#50529
          end
          item
            Caption = #51092' '#50529
          end
          item
            Caption = #51221#49328#44396#48516
          end
          item
            Caption = #50696'   '#50557
          end
          item
            Caption = #49440#53469
            Position.BandIndex = 11
            Position.ColIndex = 0
          end
          item
            Caption = #51068' '#51088
            Position.BandIndex = 11
            Position.ColIndex = 1
            Width = 96
          end
          item
            Caption = #49884' '#44036
            Position.BandIndex = 11
            Position.ColIndex = 2
          end
          item
            Caption = #49569#44552#44228#51340
          end
          item
            Caption = #51008#54665#47749
            Position.BandIndex = 15
            Position.ColIndex = 0
            Width = 78
          end
          item
            Caption = #44228#51340#48264#54840
            Position.BandIndex = 15
            Position.ColIndex = 2
            Width = 98
          end
          item
            Caption = #50696#44552#51452
            Position.BandIndex = 15
            Position.ColIndex = 1
            Width = 101
          end
          item
            Caption = #49440#53469
            Position.BandIndex = 15
            Position.ColIndex = 3
            Width = 63
          end
          item
            Caption = #52636#44552#50529
          end
          item
            Caption = #48155#51008#49324#46988#53685#51109#54364#49884
          end
          item
            Caption = #47700' '#47784
          end
          item
            Caption = #55092#45824#54256
          end
          item
            Caption = #51648#49324#53076#46300
            Visible = False
          end
          item
            Caption = #51008#54665#53076#46300
            Visible = False
          end
          item
            Caption = #51221#49328#53076#46300
            Visible = False
          end>
        object cxBranchColumn1: TcxGridBandedColumn
          Caption = 'No'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 25
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxBranchColumn2: TcxGridBandedColumn
          Caption = #51648#49324#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 125
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxBranchColumn3: TcxGridBandedColumn
          Caption = #51008#54665#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 65
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxBranchColumn5: TcxGridBandedColumn
          Caption = #50696#44552#51452
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 60
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxBranchColumn4: TcxGridBandedColumn
          Caption = #52636#44552#44228#51340
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxBranchColumn6: TcxGridBandedColumn
          Caption = #48376#49324#51221#49328#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
          Position.BandIndex = 6
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxBranchColumn7: TcxGridBandedColumn
          Caption = #51648#49324#51221#49328#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
          Position.BandIndex = 7
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxBranchColumn8: TcxGridBandedColumn
          Caption = #49444#51221#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 70
          Position.BandIndex = 8
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxBranchColumn9: TcxGridBandedColumn
          Caption = #51092' '#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 70
          Position.BandIndex = 9
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxBranchColumn19: TcxGridBandedColumn
          Caption = #51221#49328#44396#48516
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 55
          Position.BandIndex = 10
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxBranchColumn10: TcxGridBandedColumn
          Caption = #50696#50557
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.OnEditValueChanged = cxBandColumn10PropertiesEditValueChanged
          HeaderAlignmentHorz = taCenter
          Width = 30
          Position.BandIndex = 12
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxBranchColumn11: TcxGridBandedColumn
          Caption = #50696#50557#51068#51088
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 13
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxBranchColumn12: TcxGridBandedColumn
          Caption = #50696#50557#49884#44036
          PropertiesClassName = 'TcxTimeEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.TimeFormat = tfHourMin
          HeaderAlignmentHorz = taCenter
          Width = 55
          Position.BandIndex = 14
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxBranchColumn13: TcxGridBandedColumn
          Caption = #52636#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          Properties.OnChange = cxBranchColumn13PropertiesChange
          Properties.OnValidate = cxBranchColumn13PropertiesValidate
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 80
          Position.BandIndex = 20
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxBranchColumn14: TcxGridBandedColumn
          Caption = #45236#53685#51109#54364#49884#45236#50857
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.MaxLength = 20
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 21
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxBranchColumn15: TcxGridBandedColumn
          Caption = #47700' '#47784
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 60
          Position.BandIndex = 22
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxBranchColumn16: TcxGridBandedColumn
          Caption = #55092#45824#54256
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 80
          Position.BandIndex = 23
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxBranchColumn17: TcxGridBandedColumn
          Caption = #51648#49324#53076#46300
          Visible = False
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 24
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxBranchColumn18: TcxGridBandedColumn
          Caption = #51008#54665#53076#46300
          Visible = False
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 25
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxBranchColumn20: TcxGridBandedColumn
          Caption = #51221#49328#53076#46300
          Visible = False
          Position.BandIndex = 26
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxBranchColumn21: TcxGridBandedColumn
          Caption = #51008#54665#47749
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.DropDownListStyle = lsFixedList
          Position.BandIndex = 16
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxBranchColumn23: TcxGridBandedColumn
          Caption = #44228#51340#48264#54840
          Position.BandIndex = 17
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxBranchColumn22: TcxGridBandedColumn
          Caption = #50696#44552#51452
          Position.BandIndex = 18
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxBranchColumn24: TcxGridBandedColumn
          Caption = #49440#53469
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Buttons = <
            item
              Caption = #44228#51340#49440#53469
              Default = True
              Kind = bkText
            end>
          Properties.OnButtonClick = cxBranchColumn24PropertiesButtonClick
          Position.BandIndex = 19
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
      end
      object cxGridLevel4: TcxGridLevel
        GridView = cxBranch
      end
    end
    object cxGrid2: TcxGrid
      Left = 585
      Top = 89
      Width = 384
      Height = 136
      BevelInner = bvNone
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      object cxGridDBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        Navigator.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0;-,0'
            Kind = skSum
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnSorting = False
        OptionsView.NoDataToDisplayInfoText = ' '
        OptionsView.DataRowHeight = 22
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        object cxGridDBColumn10: TcxGridDBColumn
          DataBinding.FieldName = 'No'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 30
        end
        object cxGridDBColumn11: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 125
        end
        object cxGridDBColumn12: TcxGridDBColumn
          DataBinding.FieldName = #51008#54665#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn13: TcxGridDBColumn
          DataBinding.FieldName = #52636#44552#44228#51340
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn14: TcxGridDBColumn
          DataBinding.FieldName = #50696#44552#51452
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 60
        end
        object cxGridDBColumn15: TcxGridDBColumn
          DataBinding.FieldName = #48376#49324#51221#49328#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn16: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#51221#49328#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn17: TcxGridDBColumn
          DataBinding.FieldName = #49444#51221#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn18: TcxGridDBColumn
          DataBinding.FieldName = #51092'  '#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn19: TcxGridDBColumn
          Caption = #50696#50557
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.NullStyle = nssUnchecked
          Properties.ReadOnly = False
          HeaderAlignmentHorz = taCenter
          Options.Moving = False
          Width = 30
        end
        object cxGridDBColumn20: TcxGridDBColumn
          DataBinding.FieldName = #50696#50557#51068#51088
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.DateOnError = deToday
          HeaderAlignmentHorz = taCenter
          Width = 70
        end
        object cxGridDBColumn21: TcxGridDBColumn
          DataBinding.FieldName = #50696#50557#49884#44036
          PropertiesClassName = 'TcxTimeEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.TimeFormat = tfHourMin
          HeaderAlignmentHorz = taCenter
          Width = 70
        end
        object cxGridDBColumn22: TcxGridDBColumn
          DataBinding.FieldName = #52636#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.AutoSelect = False
          Properties.DisplayFormat = '#,##0'
          Properties.HideSelection = False
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBColumn23: TcxGridDBColumn
          DataBinding.FieldName = #51201' '#50836
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBColumn24: TcxGridDBColumn
          DataBinding.FieldName = #47700' '#47784
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 120
        end
        object cxGridDBColumn43: TcxGridDBColumn
          DataBinding.FieldName = #55092#45824#54256
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBColumn44: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#53076#46300
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 123
        end
        object cxGridDBColumn45: TcxGridDBColumn
          DataBinding.FieldName = #51008#54665#53076#46300
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
        end
      end
      object cxCheck: TcxGridBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0;-,0'
            Kind = skSum
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ExpandMasterRowOnDblClick = False
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.BandMoving = False
        OptionsCustomize.BandSizing = False
        OptionsView.DataRowHeight = 22
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderHeight = 22
        OptionsView.BandHeaderHeight = 23
        OptionsView.BandHeaders = False
        Bands = <
          item
            Caption = 'No'
          end
          item
            Caption = #51648#49324#47749
          end
          item
            Caption = #51008#54665#47749
          end
          item
            Caption = #52636#44552#44228#51340
          end
          item
            Caption = #50696#44552#51452
          end
          item
            Caption = #48376#49324#51221#49328#44552#50529
          end
          item
            Caption = #51648#49324#51221#49328#44552#50529
          end
          item
            Caption = #49444#51221#44552#50529
          end
          item
            Caption = #51092' '#50529
          end
          item
            Caption = #51648#49324#53076#46300
            Visible = False
          end
          item
            Caption = #51008#54665#53076#46300
            Visible = False
          end>
        object cxGridBandedColumn1: TcxGridBandedColumn
          Caption = 'No'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 30
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn2: TcxGridBandedColumn
          Caption = #51648#49324#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 125
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn3: TcxGridBandedColumn
          Caption = #51008#54665#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 65
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn4: TcxGridBandedColumn
          Caption = #52636#44552#44228#51340
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn5: TcxGridBandedColumn
          Caption = #50696#44552#51452
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 60
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn6: TcxGridBandedColumn
          Caption = #48376#49324#51221#49328#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn7: TcxGridBandedColumn
          Caption = #51648#49324#51221#49328#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
          Position.BandIndex = 6
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn8: TcxGridBandedColumn
          Caption = #49444#51221#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 70
          Position.BandIndex = 7
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn9: TcxGridBandedColumn
          Caption = #51092' '#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 70
          Position.BandIndex = 8
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn17: TcxGridBandedColumn
          Caption = #51648#49324#53076#46300
          Visible = False
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 9
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn18: TcxGridBandedColumn
          Caption = #51008#54665#53076#46300
          Visible = False
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 10
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxCheck
      end
    end
    object PnlAccList: TPanel
      Left = 331
      Top = 60
      Width = 257
      Height = 196
      BevelKind = bkFlat
      BevelOuter = bvNone
      TabOrder = 2
      Visible = False
      object cxLbAccList: TcxListBox
        Left = 0
        Top = 0
        Width = 253
        Height = 169
        Align = alTop
        ItemHeight = 12
        TabOrder = 0
        OnDblClick = cxLbAccListDblClick
      end
      object cxButton2: TcxButton
        Left = 134
        Top = 170
        Width = 60
        Height = 20
        Cursor = crHandPoint
        Caption = #52712#49548
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 1
        OnClick = cxButton2Click
      end
      object cxButton5: TcxButton
        Left = 68
        Top = 170
        Width = 60
        Height = 20
        Cursor = crHandPoint
        Caption = #49440#53469
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 2
        OnClick = cxButton5Click
      end
    end
  end
  object Pnl_Acc: TPanel
    Left = 8
    Top = 65
    Width = 473
    Height = 302
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = 16444898
    TabOrder = 1
    Visible = False
    DesignSize = (
      469
      298)
    object cxGroupBox4: TcxGroupBox
      Left = 0
      Top = 0
      Align = alClient
      Caption = '   '#52636#44552' '#44228#51340' '#48320#44221' / '#46321#47197' '#50836#52397
      ParentBackground = False
      ParentColor = False
      Style.BorderStyle = ebsFlat
      Style.Color = clBtnFace
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      TabOrder = 0
      DesignSize = (
        469
        294)
      Height = 298
      Width = 469
      object Image1: TImage
        Left = 220
        Top = 60
        Width = 37
        Height = 36
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000024
          000000240806000000E1009898000000017352474200AECE1CE9000000046741
          4D410000B18F0BFC610500000587494441545847ED977B4C95651CC75D73CDB9
          6ACDA52BE79A815CA670B8645ACEE946EA1C999695397553A76961A95CF292DC
          174E304BF3925CC4BB665B39FFD039F14622E48103828A1744312D50B94888E7
          C0E17DBF7D7F87F7C1573825B30DD7C677FBECEC3DE7F73EDFEFEF791E9EF7A5
          47B7BAD5ADFFA33C16660D2481C6E5D31343F8913CCF65A710146BBD6889B626
          193F3D1D314CA85752217C36968161B45129C57581B1F9EB8C9FBB5E6D813697
          BB0265543CC0A4F44B0D43136D07FC57587B1B655DA7B640A9D75C81765735E1
          A71A27A6EF2D7732D46586EA6394768D18688A5772317C336EB802EDBCDD8CFD
          F7813D352D98F973857CE764285FA3BC731AB22CAF376FEAFF2478859F08F35C
          740C02CD9179C7897D0DC0DEBF806DB51A569535625852517D404CFE1AC3EE9F
          C5EEFA78469DCCE2275E4FB035FE57C66D2AADDF5AA76307C36C9740248DD7C9
          150E84ACBF501F9C60DB6758BB9767E4899B3E1BAEC027C18A04EB5DECA96DC1
          2EB293EC20DBC9364EFD569249B6900CA1BA05E9248DA492CDD51A526B34A4D3
          7C4B3D9041D2491A49BD076CACD5B1BAD28977B695350627DA8A38B32F1A111E
          95C7A2A34EBFAC6657A0C4C26AECE554EF21BBC92EB2931D9ABBDD4A3269E2CE
          7433F9C1609384A8033618AC276B196A55650B26FF785D0B8C2BA867A87E468C
          8732078AB555FFAB691A4DCCC6CA54198BE9F7422DB08EAC25DFD500DFDC0556
          DF269540CA4DE0EB6B1A165B1BC050764B4C7EB211A5556D81926C88CABBDDA1
          5B3135772BA62E63C35419AFA9A6E11D5245FE68354EAEA07939105F06C45D01
          6249F465E0AB8B3A224A9C989DD380E1C92575FEE693BD2DD0CA422CCCA97A64
          8AA55BB3E9B7EC76B5EAF64F728BA6378095D780049AC61BA631345D41965F02
          965E0496940291A53AC22FE858784EC3A7454ECCFCCD8ED169579D81F1B6CB46
          945699032D3855D5618AC534E57760D57520F1EAC36EC5D4D52D4D97892989A2
          71044D179FD7F1C5391D0B4A747C46E615EB987B56C7AC420DD3CE3463F2C9FB
          18BEB6B42120DECD49FE70C90A31F770153BD569A623FA928E1544A67739BB5B
          4ABEA45924CDC2D9E5A2120D9F93B0620DF3CF6AF8A448C31C32BB50C74C32C3
          A6635A81868FF3357C68D5F07E5E0B26E43830F6F03D04259DADE7DE71FFACE3
          1964F34E2969F266A00F7EB985309B0361050ECC27F3F21D984BE6581D9875C6
          C1697660469E03D3C9D45C07A6908F4EDB3139C78EF7C8241A4ECC6DC6BB340F
          CDD3303E57C3D8D31A427E6DC6E8E3768CD87F179C118D0C35ECDDCB33FCD83A
          9E47DCF5B6464540070ADC6269C56E892DD084A094F3F691279BF156760B8667
          3B31EC7813DE38D288A08D579DACBBE9F64FDD9D58D88BB87D343C0EEFC8EC10
          AFE85CF8F2F5837F315AC01107FC8E36C38F9F96430DB0AC296DF08FB365B1B6
          6B9EFC7CEC8C1CC4734C5E3F2490EFA107F0396CC7E003F7E09F545CE71F5B90
          6E94768DDA071A7C9087DEFE6AF8C7E4373D72C63CA19E317D768AD7161C1CA5
          02C9EB47E88E7267507C41E59025D9B25FA4A6535203F634F12CE94564AD85E7
          4CBC40E481D88101D3D3C7782C3E86417167C057D7C6A078EBE957C646481819
          43C613646CB397F26F93D95C99BD445E2603C840E241BC89BC5CF9118B81FC67
          A1707DD7F3F97EC17DDF8E98DA774CD4145ECB3D72AF8CD19FC89832B6784873
          E229FE2AA44B2A8C39880C208389793079938C2263C838124A26908926E45A90
          DFC613A9957B4610396F24B08CA9C2A9606AF6DA02493AF95212CB3BAF047A95
          0C228389743F8C8C2421440289A10AD01E0924352A9034234D49732A909A2959
          11154872B8A4D6B27D30597BF3B2494059320929839B97CE8CFA4DEADA2F998C
          A982884FFB3DD526B5B1D4E696222956CBD97E334BE0C72175CA5830CF840AD1
          6143BB93395C7B54279DC5DD188A6E3D817AF4F81B7B6FEB13E6BDCE09000000
          0049454E44AE426082}
      end
      object Shape7: TShape
        Left = 6
        Top = 14
        Width = 457
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape8: TShape
        Left = 20
        Top = 43
        Width = 99
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape9: TShape
        Left = 20
        Top = 66
        Width = 99
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape10: TShape
        Left = 20
        Top = 89
        Width = 99
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape11: TShape
        Left = 271
        Top = 43
        Width = 99
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape12: TShape
        Left = 271
        Top = 66
        Width = 99
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape13: TShape
        Left = 271
        Top = 89
        Width = 99
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape14: TShape
        Left = 6
        Top = 117
        Width = 99
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape15: TShape
        Left = 6
        Top = 141
        Width = 99
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape16: TShape
        Left = 4
        Top = 165
        Width = 99
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape17: TShape
        Left = 4
        Top = 189
        Width = 99
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape18: TShape
        Left = 4
        Top = 213
        Width = 99
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object LMDProgressNow: TAdvProgressBar
        Left = 6
        Top = 237
        Width = 456
        Height = 20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        Level0ColorTo = 14811105
        Level1ColorTo = 13303807
        Level2Color = 5483007
        Level2ColorTo = 11064319
        Level3ColorTo = 13290239
        Level1Perc = 70
        Level2Perc = 90
        Position = 0
        ShowBorder = True
        Version = '1.3.2.2'
      end
      object btn_GNo: TcxButton
        Left = 371
        Top = 262
        Width = 90
        Height = 26
        Cursor = crHandPoint
        Caption = #45803' '#44592
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 0
        OnClick = btn_GNoClick
      end
      object btn_GOk: TcxButton
        Left = 275
        Top = 262
        Width = 91
        Height = 26
        Cursor = crHandPoint
        Caption = #51200' '#51109
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 1
        OnClick = btn_GOkClick
      end
      object Btn_Up1: TcxButton
        Left = 281
        Top = 119
        Width = 36
        Height = 20
        Caption = #52392#48512
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 2
        OnClick = Btn_Up1Click
      end
      object Btn_Up2: TcxButton
        Left = 281
        Top = 143
        Width = 36
        Height = 20
        Caption = #52392#48512
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 3
        OnClick = Btn_Up2Click
      end
      object Btn_Up3: TcxButton
        Left = 281
        Top = 166
        Width = 36
        Height = 20
        Caption = #52392#48512
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 4
        OnClick = Btn_Up3Click
      end
      object Btn_Up4: TcxButton
        Left = 281
        Top = 190
        Width = 36
        Height = 20
        Caption = #52392#48512
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 5
        OnClick = Btn_Up4Click
      end
      object Btn_Up5: TcxButton
        Left = 281
        Top = 213
        Width = 36
        Height = 20
        Caption = #52392#48512
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 6
        OnClick = Btn_Up5Click
      end
      object btnBtn_Del1: TcxButton
        Left = 318
        Top = 119
        Width = 35
        Height = 20
        Caption = #49325#51228
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 7
        OnClick = btnBtn_Del1Click
      end
      object btnBtn_Del2: TcxButton
        Left = 318
        Top = 143
        Width = 35
        Height = 20
        Caption = #49325#51228
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 8
        OnClick = btnBtn_Del2Click
      end
      object btnBtn_Del3: TcxButton
        Left = 318
        Top = 166
        Width = 35
        Height = 20
        Caption = #49325#51228
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 9
        OnClick = btnBtn_Del3Click
      end
      object btnBtn_Del4: TcxButton
        Left = 318
        Top = 190
        Width = 35
        Height = 20
        Caption = #49325#51228
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 10
        OnClick = btnBtn_Del4Click
      end
      object btnBtn_Del5: TcxButton
        Left = 318
        Top = 213
        Width = 35
        Height = 20
        Caption = #49325#51228
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 11
        OnClick = btnBtn_Del5Click
      end
      object CB_uBank: TcxComboBox
        Left = 340
        Top = 42
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
        TabOrder = 12
        OnKeyDown = CB_uBankKeyDown
        Height = 24
        Width = 110
      end
      object Edt_bBank: TcxTextEdit
        Left = 99
        Top = 42
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 13
        OnKeyDown = Edt_uYekumjuKeyDown
        Height = 24
        Width = 110
      end
      object Edt_bGyeJa: TcxTextEdit
        Left = 99
        Top = 65
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 14
        OnKeyDown = Edt_uYekumjuKeyDown
        Height = 24
        Width = 110
      end
      object Edt_bYekumju: TcxTextEdit
        Left = 99
        Top = 88
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 15
        OnKeyDown = Edt_uYekumjuKeyDown
        Height = 24
        Width = 110
      end
      object Edt_Path1: TcxTextEdit
        Left = 85
        Top = 116
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 16
        OnKeyDown = Edt_uYekumjuKeyDown
        OnMouseDown = Edt_Path1MouseDown
        Height = 24
        Width = 194
      end
      object Edt_Path2: TcxTextEdit
        Left = 85
        Top = 140
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 17
        OnKeyDown = Edt_uYekumjuKeyDown
        OnMouseDown = Edt_Path1MouseDown
        Height = 24
        Width = 194
      end
      object Edt_Path3: TcxTextEdit
        Left = 85
        Top = 164
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 18
        OnKeyDown = Edt_uYekumjuKeyDown
        OnMouseDown = Edt_Path1MouseDown
        Height = 24
        Width = 194
      end
      object Edt_Path4: TcxTextEdit
        Left = 85
        Top = 188
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 19
        OnKeyDown = Edt_uYekumjuKeyDown
        OnMouseDown = Edt_Path1MouseDown
        Height = 24
        Width = 194
      end
      object Edt_Path5: TcxTextEdit
        Left = 85
        Top = 212
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 20
        OnKeyDown = Edt_uYekumjuKeyDown
        OnMouseDown = Edt_Path1MouseDown
        Height = 24
        Width = 194
      end
      object Edt_uGyeJa: TcxTextEdit
        Left = 340
        Top = 65
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 21
        OnKeyDown = CB_uBankKeyDown
        Height = 24
        Width = 110
      end
      object Edt_uYekumju: TcxTextEdit
        Left = 340
        Top = 88
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 22
        OnKeyDown = Edt_uYekumjuKeyDown
        OnKeyUp = Edt_uYekumjuKeyUp
        Height = 24
        Width = 110
      end
      object Lbl_TName: TcxLabel
        Left = 201
        Top = 19
        Anchors = [akTop, akRight]
        Caption = #51648'  '#49324'  '#47749
        ParentColor = False
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 13719147
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 233
        AnchorY = 27
      end
      object cxLabel2: TcxLabel
        Left = 29
        Top = 47
        Anchors = [akTop, akRight]
        Caption = #51008'  '#54665'  '#47749
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 61
        AnchorY = 55
      end
      object cxLabel3: TcxLabel
        Left = 26
        Top = 69
        Anchors = [akTop, akRight]
        Caption = #44228' '#51340' '#48264' '#54840
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 61
        AnchorY = 77
      end
      object cxLabel4: TcxLabel
        Left = 29
        Top = 92
        Anchors = [akTop, akRight]
        Caption = #50696'  '#44552'  '#51452
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 61
        AnchorY = 100
      end
      object cxLabel5: TcxLabel
        Left = 275
        Top = 47
        Caption = #51008'  '#54665'  '#47749
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 307
        AnchorY = 55
      end
      object cxLabel6: TcxLabel
        Left = 272
        Top = 69
        Caption = #44228' '#51340' '#48264' '#54840
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 307
        AnchorY = 77
      end
      object cxLabel7: TcxLabel
        Left = 275
        Top = 92
        Caption = #50696'  '#44552'  '#51452
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 307
        AnchorY = 100
      end
      object Panel1: TPanel
        Left = 355
        Top = 121
        Width = 107
        Height = 110
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 30
        object ImageS: TImage
          Left = 3
          Top = 1
          Width = 101
          Height = 109
          Stretch = True
        end
      end
      object cxLabel8: TcxLabel
        Left = 16
        Top = 121
        Anchors = [akTop, akRight]
        Caption = #52392#48512#54028#51068'1'
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 45
        AnchorY = 129
      end
      object cxLabel9: TcxLabel
        Left = 17
        Top = 144
        Anchors = [akTop, akRight]
        Caption = #52392#48512#54028#51068'2'
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 46
        AnchorY = 152
      end
      object cxLabel10: TcxLabel
        Left = 17
        Top = 168
        Anchors = [akTop, akRight]
        Caption = #52392#48512#54028#51068'3'
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 46
        AnchorY = 176
      end
      object cxLabel11: TcxLabel
        Left = 17
        Top = 192
        Anchors = [akTop, akRight]
        Caption = #52392#48512#54028#51068'4'
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 46
        AnchorY = 200
      end
      object cxLabel13: TcxLabel
        Left = 17
        Top = 216
        Anchors = [akTop, akRight]
        Caption = #52392#48512#54028#51068'5'
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 46
        AnchorY = 224
      end
    end
    object Cb_QBank: TcxCheckBox
      Left = 353
      Top = 20
      Anchors = [akLeft, akBottom]
      Caption = #48376#49324' '#44228#51340' '#48320#44221
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Sharp'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Sharp'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 1
      Transparent = True
      OnClick = Cb_QBankClick
    end
  end
  object Pnl_Lock: TPanel
    Left = 449
    Top = 434
    Width = 249
    Height = 93
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = 16444898
    TabOrder = 2
    Visible = False
    object cxGroupBox2: TcxGroupBox
      Left = 0
      Top = 0
      Align = alClient
      Caption = '   '#51104#44552' '#54644#51228' '#51064#51613
      ParentBackground = False
      ParentColor = False
      Style.BorderStyle = ebsFlat
      Style.Color = clBtnFace
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      TabOrder = 0
      DesignSize = (
        245
        85)
      Height = 89
      Width = 245
      object Shape3: TShape
        Left = 8
        Top = 23
        Width = 177
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object cxButton55: TcxButton
        Left = 110
        Top = 55
        Width = 60
        Height = 23
        Cursor = crHandPoint
        Caption = #54869'  '#51064
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 0
        OnClick = cxButton55Click
      end
      object cxButton56: TcxButton
        Left = 172
        Top = 55
        Width = 60
        Height = 23
        Cursor = crHandPoint
        Caption = #52712#49548
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 1
        OnClick = cxButton56Click
      end
      object Edt_PW: TcxTextEdit
        Left = 94
        Top = 22
        AutoSize = False
        Properties.EchoMode = eemPassword
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        OnKeyDown = Edt_PWKeyDown
        Height = 26
        Width = 148
      end
      object cxLabel1: TcxLabel
        Left = 21
        Top = 28
        Anchors = [akTop, akRight]
        Caption = #48708#48128#48264#54840
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548#52404
        Style.Font.Style = []
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 47
        AnchorY = 36
      end
    end
  end
  object Pnl_J: TPanel
    Left = 449
    Top = 531
    Width = 249
    Height = 157
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = 16444898
    TabOrder = 4
    Visible = False
    object cxGroupBox3: TcxGroupBox
      Left = 0
      Top = 0
      Align = alClient
      Caption = '  '#51221#49328' '#48169#49885' '#48320#44221' '#50836#52397
      ParentBackground = False
      ParentColor = False
      Style.BorderStyle = ebsFlat
      Style.Color = clBtnFace
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      TabOrder = 0
      DesignSize = (
        245
        149)
      Height = 153
      Width = 245
      object Image2: TImage
        Left = 104
        Top = 70
        Width = 37
        Height = 36
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000024
          000000240806000000E1009898000000017352474200AECE1CE9000000046741
          4D410000B18F0BFC610500000587494441545847ED977B4C95651CC75D73CDB9
          6ACDA52BE79A815CA670B8645ACEE946EA1C999695397553A76961A95CF292DC
          174E304BF3925CC4BB665B39FFD039F14622E48103828A1744312D50B94888E7
          C0E17DBF7D7F87F7C1573825B30DD7C677FBECEC3DE7F73EDFEFEF791E9EF7A5
          47B7BAD5ADFFA33C16660D2481C6E5D31343F8913CCF65A710146BBD6889B626
          193F3D1D314CA85752217C36968161B45129C57581B1F9EB8C9FBB5E6D813697
          BB0265543CC0A4F44B0D43136D07FC57587B1B655DA7B640A9D75C81765735E1
          A71A27A6EF2D7732D46586EA6394768D18688A5772317C336EB802EDBCDD8CFD
          F7813D352D98F973857CE764285FA3BC731AB22CAF376FEAFF2478859F08F35C
          740C02CD9179C7897D0DC0DEBF806DB51A569535625852517D404CFE1AC3EE9F
          C5EEFA78469DCCE2275E4FB035FE57C66D2AADDF5AA76307C36C9740248DD7C9
          150E84ACBF501F9C60DB6758BB9767E4899B3E1BAEC027C18A04EB5DECA96DC1
          2EB293EC20DBC9364EFD569249B6900CA1BA05E9248DA492CDD51A526B34A4D3
          7C4B3D9041D2491A49BD076CACD5B1BAD28977B695350627DA8A38B32F1A111E
          95C7A2A34EBFAC6657A0C4C26AECE554EF21BBC92EB2931D9ABBDD4A3269E2CE
          7433F9C1609384A8033618AC276B196A55650B26FF785D0B8C2BA867A87E468C
          8732078AB555FFAB691A4DCCC6CA54198BE9F7422DB08EAC25DFD500DFDC0556
          DF269540CA4DE0EB6B1A165B1BC050764B4C7EB211A5556D81926C88CABBDDA1
          5B3135772BA62E63C35419AFA9A6E11D5245FE68354EAEA07939105F06C45D01
          6249F465E0AB8B3A224A9C989DD380E1C92575FEE693BD2DD0CA422CCCA97A64
          8AA55BB3E9B7EC76B5EAF64F728BA6378095D780049AC61BA631345D41965F02
          965E0496940291A53AC22FE858784EC3A7454ECCFCCD8ED169579D81F1B6CB46
          945699032D3855D5618AC534E57760D57520F1EAC36EC5D4D52D4D97892989A2
          71044D179FD7F1C5391D0B4A747C46E615EB987B56C7AC420DD3CE3463F2C9FB
          18BEB6B42120DECD49FE70C90A31F770153BD569A623FA928E1544A67739BB5B
          4ABEA45924CDC2D9E5A2120D9F93B0620DF3CF6AF8A448C31C32BB50C74C32C3
          A6635A81868FF3357C68D5F07E5E0B26E43830F6F03D04259DADE7DE71FFACE3
          1964F34E2969F266A00F7EB985309B0361050ECC27F3F21D984BE6581D9875C6
          C1697660469E03D3C9D45C07A6908F4EDB3139C78EF7C8241A4ECC6DC6BB340F
          CDD3303E57C3D8D31A427E6DC6E8E3768CD87F179C118D0C35ECDDCB33FCD83A
          9E47DCF5B6464540070ADC6269C56E892DD084A094F3F691279BF156760B8667
          3B31EC7813DE38D288A08D579DACBBE9F64FDD9D58D88BB87D343C0EEFC8EC10
          AFE85CF8F2F5837F315AC01107FC8E36C38F9F96430DB0AC296DF08FB365B1B6
          6B9EFC7CEC8C1CC4734C5E3F2490EFA107F0396CC7E003F7E09F545CE71F5B90
          6E94768DDA071A7C9087DEFE6AF8C7E4373D72C63CA19E317D768AD7161C1CA5
          02C9EB47E88E7267507C41E59025D9B25FA4A6535203F634F12CE94564AD85E7
          4CBC40E481D88101D3D3C7782C3E86417167C057D7C6A078EBE957C646481819
          43C613646CB397F26F93D95C99BD445E2603C840E241BC89BC5CF9118B81FC67
          A1707DD7F3F97EC17DDF8E98DA774CD4145ECB3D72AF8CD19FC89832B6784873
          E229FE2AA44B2A8C39880C208389793079938C2263C838124A26908926E45A90
          DFC613A9957B4610396F24B08CA9C2A9606AF6DA02493AF95212CB3BAF047A95
          0C228389743F8C8C2421440289A10AD01E0924352A9034234D49732A909A2959
          11154872B8A4D6B27D30597BF3B2494059320929839B97CE8CFA4DEADA2F998C
          A982884FFB3DD526B5B1D4E696222956CBD97E334BE0C72175CA5830CF840AD1
          6143BB93395C7B54279DC5DD188A6E3D817AF4F81B7B6FEB13E6BDCE09000000
          0049454E44AE426082}
      end
      object Shape4: TShape
        Left = 4
        Top = 15
        Width = 237
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape6: TShape
        Left = 7
        Top = 76
        Width = 90
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Cb_JGubun: TcxComboBox
        Left = 149
        Top = 76
        AutoSize = False
        Properties.Alignment.Horz = taCenter
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #51221#49328#50504#54632
          #51068#51068#51221#49328
          #50900#50836#51068#51221#49328)
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Text = #51221#49328#50504#54632
        OnKeyDown = CB_uBankKeyDown
        Height = 24
        Width = 90
      end
      object cxButton3: TcxButton
        Left = 114
        Top = 112
        Width = 60
        Height = 28
        Cursor = crHandPoint
        Caption = #51200'  '#51109
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 1
        OnClick = cxButton3Click
      end
      object cxButton4: TcxButton
        Left = 176
        Top = 112
        Width = 60
        Height = 28
        Cursor = crHandPoint
        Caption = #52712#49548
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 2
        OnClick = cxButton4Click
      end
      object Lbl_T1Name: TcxLabel
        Left = 83
        Top = 20
        Anchors = [akTop, akRight]
        Caption = #51648'  '#49324'  '#47749
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548#52404
        Style.Font.Style = []
        Style.TextColor = 13719147
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 115
        AnchorY = 28
      end
      object Lbl_JTitle: TcxLabel
        Left = 23
        Top = 81
        Anchors = [akTop, akRight]
        Caption = #48708#48128#48264#54840
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548#52404
        Style.Font.Style = []
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 49
        AnchorY = 89
      end
    end
  end
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 1134
    Height = 30
    Cursor = crSizeAll
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '   '#51648#49324#48324' '#52636#44552' '#50836#52397
    Color = 12566463
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #44404#47548
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 5
    OnMouseDown = pnlTitleMouseDown
    DesignSize = (
      1134
      30)
    object cxLblActive: TLabel
      Left = 0
      Top = 0
      Width = 1134
      Height = 5
      Align = alTop
      AutoSize = False
      Color = 33023
      ParentColor = False
      Transparent = False
      ExplicitWidth = 994
    end
    object btnClose: TcxButton
      Left = 1107
      Top = 7
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
    object Btn_S: TcxButton
      Left = 1048
      Top = 7
      Width = 57
      Height = 22
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #51312#54924
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 1
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      OnClick = Btn_SClick
    end
    object cxCheckBox1: TcxCheckBox
      Left = 831
      Top = 9
      Anchors = [akTop, akRight]
      Caption = #49569#44552#44228#51340#48372#44592
      Style.LookAndFeel.SkinName = 'Sharp'
      StyleDisabled.LookAndFeel.SkinName = 'Sharp'
      StyleFocused.LookAndFeel.SkinName = 'Sharp'
      StyleHot.LookAndFeel.SkinName = 'Sharp'
      TabOrder = 2
      OnClick = cxCheckBox1Click
    end
    object cxLabel22: TcxLabel
      Left = 341
      Top = 10
      Cursor = crSizeAll
      Caption = #8251' '#53440#51008#54665' '#44228#51340' '#49569#44552#51012' '#50896#54616#49884#47732' "'#49569#44552#44228#51340#48372#44592'"'#47484' '#53364#47533#54616#49464#50836
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = []
      Style.IsFontAssigned = True
      OnMouseDown = pnlTitleMouseDown
    end
    object edtBranch: TcxTextEdit
      Tag = 1
      Left = 937
      Top = 6
      TabStop = False
      OnFocusChanged = edtBranchFocusChanged
      Anchors = [akTop, akRight]
      AutoSize = False
      ParentFont = False
      Properties.ImeMode = imSHanguel
      Properties.OnChange = edtBranchPropertiesChange
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548#52404
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      OnEnter = edtBranchEnter
      OnExit = edtBranchExit
      OnKeyDown = edtBranchKeyDown
      Height = 24
      Width = 110
    end
    object lbSearchBranch: TcxLabel
      Left = 945
      Top = 11
      Cursor = crIBeam
      Anchors = [akTop, akRight]
      Caption = #51648#49324#44160#49353
      ParentColor = False
      ParentFont = False
      Style.Color = 16375788
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = 10329501
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      OnClick = lbSearchBranchClick
      AnchorX = 971
      AnchorY = 19
    end
  end
  object Pnl_Send: TPanel
    Left = 183
    Top = 403
    Width = 260
    Height = 302
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = 16444898
    TabOrder = 6
    Visible = False
    object cxGroupBox5: TcxGroupBox
      Left = 0
      Top = 0
      Align = alClient
      Caption = '   '#49569#44552' '#50836#52397
      ParentBackground = False
      ParentColor = False
      Style.BorderStyle = ebsFlat
      Style.Color = clBtnFace
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Height = 298
      Width = 256
      object Shape24: TShape
        Left = 12
        Top = 20
        Width = 99
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape25: TShape
        Left = 12
        Top = 43
        Width = 99
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape26: TShape
        Left = 12
        Top = 66
        Width = 99
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape20: TShape
        Left = 12
        Top = 90
        Width = 230
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object btnSendNo: TcxButton
        Left = 138
        Top = 255
        Width = 90
        Height = 26
        Cursor = crHandPoint
        Caption = #45803' '#44592
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 0
        OnClick = btnSendNoClick
      end
      object btnSendOK: TcxButton
        Left = 33
        Top = 255
        Width = 91
        Height = 26
        Cursor = crHandPoint
        Caption = #49569#44552#50836#52397
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 1
        OnClick = btnSendOKClick
      end
      object CB_sBank: TcxComboBox
        Left = 81
        Top = 19
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
        TabOrder = 2
        OnKeyDown = CB_uBankKeyDown
        Height = 24
        Width = 162
      end
      object Edt_sGyeJa: TcxTextEdit
        Left = 81
        Top = 42
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        OnKeyDown = CB_uBankKeyDown
        Height = 24
        Width = 162
      end
      object Edt_sYekumju: TcxTextEdit
        Left = 81
        Top = 65
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        OnKeyDown = Edt_uYekumjuKeyDown
        Height = 24
        Width = 162
      end
      object cxLabel18: TcxLabel
        Left = 17
        Top = 24
        Caption = #51008'  '#54665'  '#47749
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548#52404
        Style.Font.Style = []
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 49
        AnchorY = 32
      end
      object cxLabel19: TcxLabel
        Left = 22
        Top = 46
        Caption = #44228#51340' '#48264#54840
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548#52404
        Style.Font.Style = []
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 51
        AnchorY = 54
      end
      object cxLabel20: TcxLabel
        Left = 17
        Top = 69
        Caption = #50696'  '#44552'  '#51452
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548#52404
        Style.Font.Style = []
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 49
        AnchorY = 77
      end
      object msMemo: TcxMemo
        Left = 12
        Top = 110
        Lines.Strings = (
          'msMemo')
        Properties.WantReturns = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 8
        OnKeyUp = msMemoKeyUp
        Height = 135
        Width = 231
      end
      object cxLabel14: TcxLabel
        Left = 75
        Top = 93
        Caption = #47700'     '#47784
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548#52404
        Style.Font.Style = []
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 104
        AnchorY = 101
      end
    end
  end
  object PnlAccMgr: TPanel
    Left = -286
    Top = 389
    Width = 415
    Height = 331
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 7
    Visible = False
    object cxGroupBox6: TcxGroupBox
      Left = 0
      Top = 0
      Align = alClient
      Caption = #49569#44552' '#44228#51340' '#44288#47532
      TabOrder = 0
      Height = 327
      Width = 411
      object Shape21: TShape
        Left = 100
        Top = 42
        Width = 108
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape22: TShape
        Left = 210
        Top = 42
        Width = 108
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape23: TShape
        Left = 320
        Top = 42
        Width = 88
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape27: TShape
        Left = 3
        Top = 42
        Width = 95
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape28: TShape
        Left = 1
        Top = 14
        Width = 409
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object cb_mBank: TcxComboBox
        Left = 99
        Top = 60
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        OnKeyDown = CB_uBankKeyDown
        Height = 24
        Width = 110
      end
      object Edt_mGyeJa: TcxTextEdit
        Left = 209
        Top = 60
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        OnKeyDown = CB_uBankKeyDown
        Height = 24
        Width = 110
      end
      object Edt_mYekumju: TcxTextEdit
        Left = 319
        Top = 60
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        OnKeyDown = Edt_uYekumjuKeyDown
        Height = 24
        Width = 90
      end
      object cxLabel15: TcxLabel
        Left = 119
        Top = 45
        Caption = #51008'  '#54665'  '#47749
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548#52404
        Style.Font.Style = []
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 151
        AnchorY = 53
      end
      object cxLabel16: TcxLabel
        Left = 234
        Top = 45
        Caption = #44228#51340' '#48264#54840
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548#52404
        Style.Font.Style = []
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 263
        AnchorY = 53
      end
      object cxLabel17: TcxLabel
        Left = 332
        Top = 45
        Caption = #50696'  '#44552'  '#51452
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548#52404
        Style.Font.Style = []
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 364
        AnchorY = 53
      end
      object Edt_mName: TcxTextEdit
        Left = 2
        Top = 60
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnKeyDown = Edt_uYekumjuKeyDown
        Height = 24
        Width = 97
      end
      object cxLabel21: TcxLabel
        Left = 22
        Top = 45
        Caption = #44228' '#51340' '#47749
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548#52404
        Style.Font.Style = []
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 48
        AnchorY = 53
      end
      object btnmSave: TcxButton
        Left = 223
        Top = 88
        Width = 60
        Height = 28
        Cursor = crHandPoint
        Caption = #51200'  '#51109
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 5
        OnClick = btnmSaveClick
      end
      object btnmClose: TcxButton
        Left = 347
        Top = 88
        Width = 60
        Height = 28
        Cursor = crHandPoint
        Caption = #45803' '#44592
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 7
        OnClick = btnmCloseClick
      end
      object btnmDel: TcxButton
        Left = 285
        Top = 88
        Width = 60
        Height = 28
        Cursor = crHandPoint
        Caption = #49325' '#51228
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 6
        OnClick = btnmDelClick
      end
      object btnmAdd: TcxButton
        Left = 161
        Top = 88
        Width = 60
        Height = 28
        Cursor = crHandPoint
        Caption = #49888' '#44508
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 4
        OnClick = btnmAddClick
      end
      object cxGrid3: TcxGrid
        Left = 3
        Top = 122
        Width = 405
        Height = 198
        Align = alBottom
        TabOrder = 12
        TabStop = False
        LookAndFeel.NativeStyle = False
        object cxGridViewAccMgr: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = True
          Navigator.Buttons.SaveBookmark.Visible = True
          Navigator.Buttons.GotoBookmark.Visible = True
          Navigator.Buttons.Filter.Visible = True
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCellDblClick = cxGridViewAccMgrCellDblClick
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGridDBColumn51
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.ColumnSorting = False
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 22
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 23
          object cxGridDBColumn46: TcxGridDBColumn
            DataBinding.FieldName = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 31
          end
          object cxGridDBColumn50: TcxGridDBColumn
            DataBinding.FieldName = #44228#51340#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGridDBColumn47: TcxGridDBColumn
            DataBinding.FieldName = #51008#54665#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 98
          end
          object cxGridDBColumn48: TcxGridDBColumn
            DataBinding.FieldName = #44228#51340#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 90
          end
          object cxGridDBColumn49: TcxGridDBColumn
            DataBinding.FieldName = #50696#44552#51452
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 65
          end
          object cxGridDBColumn51: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Visible = False
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 90
          end
          object cxGridDBColumn52: TcxGridDBColumn
            DataBinding.FieldName = #51008#54665#53076#46300
            Visible = False
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridViewAccMgr
        end
      end
      object Lbl_mName: TcxLabel
        Left = 173
        Top = 19
        Caption = #51648'  '#49324'  '#47749
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548#52404
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 13719147
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 205
        AnchorY = 27
      end
      object btnmSch: TcxButton
        Left = 3
        Top = 88
        Width = 60
        Height = 28
        Cursor = crHandPoint
        Caption = #51312' '#54924
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 14
        OnClick = btnmSchClick
      end
    end
  end
  object cxGrid5: TcxGrid
    Left = 8
    Top = 92
    Width = 317
    Height = 92
    BevelInner = bvNone
    BevelOuter = bvNone
    TabOrder = 8
    Visible = False
    LookAndFeel.NativeStyle = False
    object cxGridDBTableView3: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      Navigator.Visible = True
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0;-,0'
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnSorting = False
      OptionsView.NoDataToDisplayInfoText = ' '
      OptionsView.DataRowHeight = 22
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 22
      object cxGridDBColumn53: TcxGridDBColumn
        DataBinding.FieldName = 'No'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        FooterAlignmentHorz = taRightJustify
        HeaderAlignmentHorz = taCenter
        Width = 30
      end
      object cxGridDBColumn54: TcxGridDBColumn
        DataBinding.FieldName = #51648#49324#47749
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 125
      end
      object cxGridDBColumn55: TcxGridDBColumn
        DataBinding.FieldName = #51008#54665#47749
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
      end
      object cxGridDBColumn56: TcxGridDBColumn
        DataBinding.FieldName = #52636#44552#44228#51340
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
      end
      object cxGridDBColumn57: TcxGridDBColumn
        DataBinding.FieldName = #50696#44552#51452
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
      end
      object cxGridDBColumn58: TcxGridDBColumn
        DataBinding.FieldName = #48376#49324#51221#49328#44552#50529
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '#,##0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
      end
      object cxGridDBColumn59: TcxGridDBColumn
        DataBinding.FieldName = #51648#49324#51221#49328#44552#50529
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '#,##0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
      end
      object cxGridDBColumn60: TcxGridDBColumn
        DataBinding.FieldName = #49444#51221#44552#50529
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '#,##0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
      end
      object cxGridDBColumn61: TcxGridDBColumn
        DataBinding.FieldName = #51092'  '#50529
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '#,##0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
      end
      object cxGridDBColumn62: TcxGridDBColumn
        Caption = #50696#50557
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.NullStyle = nssUnchecked
        Properties.ReadOnly = False
        HeaderAlignmentHorz = taCenter
        Options.Moving = False
        Width = 30
      end
      object cxGridDBColumn63: TcxGridDBColumn
        DataBinding.FieldName = #50696#50557#51068#51088
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DateOnError = deToday
        HeaderAlignmentHorz = taCenter
        Width = 70
      end
      object cxGridDBColumn64: TcxGridDBColumn
        DataBinding.FieldName = #50696#50557#49884#44036
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.TimeFormat = tfHourMin
        HeaderAlignmentHorz = taCenter
        Width = 70
      end
      object cxGridDBColumn65: TcxGridDBColumn
        DataBinding.FieldName = #52636#44552#50529
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.AutoSelect = False
        Properties.DisplayFormat = '#,##0'
        Properties.HideSelection = False
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object cxGridDBColumn66: TcxGridDBColumn
        DataBinding.FieldName = #51201' '#50836
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object cxGridDBColumn67: TcxGridDBColumn
        DataBinding.FieldName = #47700' '#47784
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
      object cxGridDBColumn68: TcxGridDBColumn
        DataBinding.FieldName = #55092#45824#54256
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object cxGridDBColumn69: TcxGridDBColumn
        DataBinding.FieldName = #51648#49324#53076#46300
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        FooterAlignmentHorz = taRightJustify
        HeaderAlignmentHorz = taCenter
        Width = 123
      end
      object cxGridDBColumn70: TcxGridDBColumn
        DataBinding.FieldName = #51008#54665#53076#46300
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
      end
    end
    object cxBranchOrg: TcxGridBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      OnInitEdit = cxBranchInitEdit
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0;-,0'
          Kind = skSum
          Column = cxGridBandedColumn25
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.ExpandMasterRowOnDblClick = False
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnHorzSizing = False
      OptionsCustomize.BandMoving = False
      OptionsView.ShowEditButtons = gsebAlways
      OptionsView.DataRowHeight = 22
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.Header = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.HeaderHeight = 22
      OptionsView.BandHeaderHeight = 23
      OnColumnHeaderClick = cxBranchColumnHeaderClick
      Bands = <
        item
          Caption = 'No'
        end
        item
          Caption = #51648#49324#47749
        end
        item
          Caption = #51221#49328#44228#51340
        end
        item
          Caption = #51008#54665#47749
          Position.BandIndex = 2
          Position.ColIndex = 0
        end
        item
          Caption = #44228#51340#48264#54840
          Position.BandIndex = 2
          Position.ColIndex = 2
          Width = 86
        end
        item
          Caption = #50696#44552#51452
          Position.BandIndex = 2
          Position.ColIndex = 1
          Width = 65
        end
        item
          Caption = #48376#49324#51221#49328#44552#50529
        end
        item
          Caption = #51648#49324#51221#49328#44552#50529
        end
        item
          Caption = #49444#51221#44552#50529
        end
        item
          Caption = #51092' '#50529
        end
        item
          Caption = #51221#49328#44396#48516
        end
        item
          Caption = #50696'   '#50557
        end
        item
          Caption = #49440#53469
          Position.BandIndex = 11
          Position.ColIndex = 0
        end
        item
          Caption = #51068' '#51088
          Position.BandIndex = 11
          Position.ColIndex = 1
        end
        item
          Caption = #49884' '#44036
          Position.BandIndex = 11
          Position.ColIndex = 2
        end
        item
          Caption = #49569#44552#44228#51340
        end
        item
          Caption = #51008#54665#47749
          Position.BandIndex = 15
          Position.ColIndex = 0
          Width = 78
        end
        item
          Caption = #44228#51340#48264#54840
          Position.BandIndex = 15
          Position.ColIndex = 2
          Width = 98
        end
        item
          Caption = #50696#44552#51452
          Position.BandIndex = 15
          Position.ColIndex = 1
          Width = 101
        end
        item
          Caption = #49440#53469
          Position.BandIndex = 15
          Position.ColIndex = 3
          Width = 63
        end
        item
          Caption = #52636#44552#50529
        end
        item
          Caption = #48155#51008#49324#46988#53685#51109#54364#49884
        end
        item
          Caption = #47700' '#47784
        end
        item
          Caption = #55092#45824#54256
        end
        item
          Caption = #51648#49324#53076#46300
          Visible = False
        end
        item
          Caption = #51008#54665#53076#46300
          Visible = False
        end
        item
          Caption = #51221#49328#53076#46300
          Visible = False
        end>
      object cxGridBandedColumn10: TcxGridBandedColumn
        Caption = 'No'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 25
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridBandedColumn11: TcxGridBandedColumn
        Caption = #51648#49324#47749
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 125
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridBandedColumn12: TcxGridBandedColumn
        Caption = #51008#54665#47749
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 65
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridBandedColumn13: TcxGridBandedColumn
        Caption = #50696#44552#51452
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridBandedColumn14: TcxGridBandedColumn
        Caption = #52636#44552#44228#51340
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridBandedColumn15: TcxGridBandedColumn
        Caption = #48376#49324#51221#49328#44552#50529
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '#,##0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridBandedColumn16: TcxGridBandedColumn
        Caption = #51648#49324#51221#49328#44552#50529
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '#,##0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
        Position.BandIndex = 7
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridBandedColumn19: TcxGridBandedColumn
        Caption = #49444#51221#44552#50529
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '#,##0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 70
        Position.BandIndex = 8
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridBandedColumn20: TcxGridBandedColumn
        Caption = #51092' '#50529
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '#,##0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 70
        Position.BandIndex = 9
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridBandedColumn21: TcxGridBandedColumn
        Caption = #51221#49328#44396#48516
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 55
        Position.BandIndex = 10
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridBandedColumn22: TcxGridBandedColumn
        Caption = #50696#50557
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.OnEditValueChanged = cxBandColumn10PropertiesEditValueChanged
        HeaderAlignmentHorz = taCenter
        Width = 30
        Position.BandIndex = 12
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridBandedColumn23: TcxGridBandedColumn
        Caption = #50696#50557#51068#51088
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 70
        Position.BandIndex = 13
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridBandedColumn24: TcxGridBandedColumn
        Caption = #50696#50557#49884#44036
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.TimeFormat = tfHourMin
        HeaderAlignmentHorz = taCenter
        Width = 55
        Position.BandIndex = 14
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridBandedColumn25: TcxGridBandedColumn
        Caption = #52636#44552#50529
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '#,##0'
        Properties.OnChange = cxBranchColumn13PropertiesChange
        Properties.OnValidate = cxBranchColumn13PropertiesValidate
        FooterAlignmentHorz = taRightJustify
        HeaderAlignmentHorz = taCenter
        Width = 80
        Position.BandIndex = 20
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridBandedColumn26: TcxGridBandedColumn
        Caption = #45236#53685#51109#54364#49884#45236#50857
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.MaxLength = 20
        HeaderAlignmentHorz = taCenter
        Width = 70
        Position.BandIndex = 21
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridBandedColumn27: TcxGridBandedColumn
        Caption = #47700' '#47784
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        Width = 60
        Position.BandIndex = 22
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridBandedColumn28: TcxGridBandedColumn
        Caption = #55092#45824#54256
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        Width = 80
        Position.BandIndex = 23
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridBandedColumn29: TcxGridBandedColumn
        Caption = #51648#49324#53076#46300
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 24
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridBandedColumn30: TcxGridBandedColumn
        Caption = #51008#54665#53076#46300
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 25
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridBandedColumn31: TcxGridBandedColumn
        Caption = #51221#49328#53076#46300
        Visible = False
        Position.BandIndex = 26
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridBandedColumn32: TcxGridBandedColumn
        Caption = #51008#54665#47749
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Position.BandIndex = 16
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridBandedColumn33: TcxGridBandedColumn
        Caption = #44228#51340#48264#54840
        Position.BandIndex = 17
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridBandedColumn34: TcxGridBandedColumn
        Caption = #50696#44552#51452
        Position.BandIndex = 18
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridBandedColumn35: TcxGridBandedColumn
        Caption = #49440#53469
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Buttons = <
          item
            Caption = #44228#51340#49440#53469
            Default = True
            Kind = bkText
          end>
        Properties.OnButtonClick = cxBranchColumn24PropertiesButtonClick
        Position.BandIndex = 19
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
    end
    object cxGridLevel5: TcxGridLevel
      GridView = cxBranchOrg
    end
  end
  object pop_date: TPopupMenu
    AutoHotkeys = maManual
    AutoPopup = False
    Left = 717
    Top = 283
    object N1: TMenuItem
      Caption = #50724#45720
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #50612#51228
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #52572#44540#51068#51452#51068
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #52572#44540#54620#45804
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = '1'#51068'~'#47568#51068
      OnClick = N5Click
    end
  end
  object pop_date1: TPopupMenu
    AutoHotkeys = maManual
    AutoPopup = False
    Left = 909
    Top = 578
    object N11: TMenuItem
      Caption = #50724#45720
      OnClick = N11Click
    end
    object N21: TMenuItem
      Caption = #50612#51228
      OnClick = N21Click
    end
    object N31: TMenuItem
      Caption = #52572#44540#51068#51452#51068
      OnClick = N31Click
    end
    object N41: TMenuItem
      Caption = #52572#44540#54620#45804
      OnClick = N41Click
    end
    object N51: TMenuItem
      Caption = '1'#51068'~'#47568#51068
      OnClick = N51Click
    end
  end
  object tm_AppLock: TTimer
    Enabled = False
    OnTimer = tm_AppLockTimer
    Left = 483
    Top = 427
  end
  object tm_Check: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = tm_CheckTimer
    Left = 587
    Top = 267
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'All (*.jpg;*.bmp)|*.jpg;*.bmp|JPEG Image File (*.jpg)|*.jpg|Bitm' +
      'aps (*.bmp)|*.bmp'
    Left = 488
    Top = 516
  end
  object acAwayTimer1: TTimer
    OnTimer = acAwayTimer1Timer
    Left = 512
    Top = 264
  end
  object pop_Menu: TPopupMenu
    AutoHotkeys = maManual
    Left = 744
    Top = 257
    object N6: TMenuItem
      Caption = #51221#49328#44228#51340#49440#53469
      OnClick = N6Click
    end
    object N7: TMenuItem
      Caption = #49569#44552#44228#51340#49440#53469
    end
  end
end

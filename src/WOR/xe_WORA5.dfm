object Frm_WORA5: TFrm_WORA5
  Left = 281
  Top = 154
  BorderStyle = bsNone
  Caption = 'Frm_WORA5'
  ClientHeight = 741
  ClientWidth = 993
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 12
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 993
    Height = 741
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Shape3: TShape
      Left = 0
      Top = 59
      Width = 993
      Height = 2
      Align = alTop
      Brush.Style = bsClear
      Pen.Style = psClear
      ExplicitLeft = -6
      ExplicitTop = 23
      ExplicitWidth = 305
    end
    object cxGroupBox1: TcxGroupBox
      Left = 0
      Top = 0
      Align = alTop
      Style.BorderStyle = ebsFlat
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Height = 59
      Width = 993
      object Shape1: TShape
        Left = 10
        Top = 5
        Width = 615
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape2: TShape
        Left = 10
        Top = 31
        Width = 200
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape5: TShape
        Left = 217
        Top = 31
        Width = 200
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape4: TShape
        Left = 425
        Top = 31
        Width = 200
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object btnSearchA5: TcxButton
        Left = 628
        Top = 5
        Width = 85
        Height = 50
        Cursor = crHandPoint
        Caption = #44160' '#49353
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 0
        TabStop = False
        OnClick = btnSearchA5Click
      end
      object cxLabel54: TcxLabel
        Left = 25
        Top = 9
        Caption = #49548'       '#49549
        ParentColor = False
        ParentFont = False
        Style.Color = 16575968
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 50
        AnchorY = 18
      end
      object lblSosokNameA5: TcxLabel
        Left = 95
        Top = 4
        AutoSize = False
        Caption = #49548#49549
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 26
        Width = 531
        AnchorX = 361
        AnchorY = 17
      end
      object cxLabel26: TcxLabel
        Left = 27
        Top = 36
        Caption = #44592' '#49324' '#47749
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 51
        AnchorY = 44
      end
      object cxLabel27: TcxLabel
        Left = 234
        Top = 36
        Caption = #50672' '#46973' '#52376
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 258
        AnchorY = 44
      end
      object edtBklName: TcxTextEdit
        Left = 95
        Top = 30
        TabStop = False
        AutoSize = False
        ImeMode = imSHanguel
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        Height = 26
        Width = 116
      end
      object edtBklPhone: TcxTextEdit
        Left = 288
        Top = 30
        TabStop = False
        AutoSize = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 6
        Height = 26
        Width = 130
      end
      object edtBklSsn: TcxTextEdit
        Left = 510
        Top = 30
        TabStop = False
        AutoSize = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 7
        Height = 26
        Width = 116
      end
      object cxLabel1: TcxLabel
        Left = 432
        Top = 36
        Caption = #51452#48124#46321#47197#48264#54840
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 470
        AnchorY = 44
      end
      object btnBklHistory: TcxButton
        Left = 716
        Top = 5
        Width = 85
        Height = 50
        Cursor = crHandPoint
        Caption = #44592#49324#51060#47141
        Colors.Default = 16773362
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        TabOrder = 9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = btnBklHistoryClick
      end
    end
    object cxGridA5: TcxGrid
      Left = 0
      Top = 61
      Width = 993
      Height = 680
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
      LookAndFeel.NativeStyle = True
      object cxViewBlockList: TcxGridDBTableView
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
        OnCellDblClick = cxViewBlockListCellDblClick
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
        OptionsCustomize.ColumnMoving = False
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.FocusRect = False
        OptionsView.NoDataToDisplayInfoText = '  '
        OptionsView.DataRowHeight = 22
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.GridLineColor = clSilver
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        object cxColViewKeyColumn1: TcxGridDBColumn
          DataBinding.FieldName = #48376#49324#51221#48372
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 116
        end
        object cxColViewKeyColumn2: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#51221#48372
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 122
        end
        object cxColViewKeyColumn3: TcxGridDBColumn
          DataBinding.FieldName = #51116#51649#50668#48512
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 56
        end
        object cxColViewKeyColumn4: TcxGridDBColumn
          DataBinding.FieldName = #51077#49324#51068
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 107
        end
        object cxColViewKeyColumn5: TcxGridDBColumn
          DataBinding.FieldName = #53748#49324#51068
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 99
        end
        object cxColViewKeyColumn6: TcxGridDBColumn
          DataBinding.FieldName = #44592#49324#47749
          PropertiesClassName = 'TcxLabelProperties'
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 87
        end
        object cxColViewKeyColumn7: TcxGridDBColumn
          DataBinding.FieldName = #45800#47568#44592#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 94
        end
        object cxColViewKeyColumn8: TcxGridDBColumn
          DataBinding.FieldName = #55092#45824#54256#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 94
        end
        object cxColViewKeyColumn9: TcxGridDBColumn
          Caption = #51452#48124#46321#47197#48264#54840
          DataBinding.FieldName = #51452#48124#46321#47197#48264#54840'('#47560#53433')'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 116
        end
        object cxColViewKeyColumn10: TcxGridDBColumn
          DataBinding.FieldName = #44592#49324#47700#47784
          PropertiesClassName = 'TcxLabelProperties'
          HeaderAlignmentHorz = taCenter
          Width = 170
        end
        object cxColViewKeyColumn11: TcxGridDBColumn
          DataBinding.FieldName = #51452#49548
          PropertiesClassName = 'TcxLabelProperties'
          HeaderAlignmentHorz = taCenter
          Width = 202
        end
        object cxColViewBlockListColumn1: TcxGridDBColumn
          DataBinding.FieldName = #49324#48264
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object cxColViewBlockListColumn2: TcxGridDBColumn
          DataBinding.FieldName = #51452#48124#46321#47197#48264#54840
          Visible = False
        end
      end
      object cxLevelBlackList: TcxGridLevel
        GridView = cxViewBlockList
      end
    end
  end
  object cxStyleRepositoryWorker: TcxStyleRepository
    Left = 8
    Top = 688
    PixelsPerInch = 96
    object cxStyleNormal: TcxStyle
    end
    object cxStyleSelected: TcxStyle
      AssignedValues = [svColor]
      Color = 4707838
    end
    object cxStyleSysLock: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clRed
    end
    object cxStyleSysLockSel: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4707838
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clRed
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 104
    Top = 688
    PixelsPerInch = 96
    object TcxStyle
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clBlue
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clRed
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor]
      Color = clHighlight
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor]
      Color = 15264511
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 72
    Top = 688
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clRed
    end
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 40
    Top = 688
    PixelsPerInch = 96
    object cxStyle4: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
  end
end

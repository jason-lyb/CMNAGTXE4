object Frm_JON01_01: TFrm_JON01_01
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Frm_JON01_01'
  ClientHeight = 135
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pnlBubin: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = #48277#51064#47749'/'#48512#49436#47749' '#51312#54924
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = #47569#51008' '#44256#46357
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = False
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    TabOrder = 0
    DesignSize = (
      400
      131)
    Height = 135
    Width = 400
    object cxtBubinSearchName: TcxTextEdit
      Left = 2
      Top = 13
      AutoSize = False
      ParentColor = True
      ParentFont = False
      Properties.ImeMode = imSHanguel
      Properties.OnChange = cxtBubinSearchNamePropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Text = 'cxtBubinSearchName'
      OnKeyPress = cxtBubinSearchNameKeyPress
      OnKeyUp = cxtBubinSearchNameKeyUp
      Height = 23
      Width = 163
    end
    object cxGrdBubin: TcxGrid
      Left = 2
      Top = 38
      Width = 396
      Height = 91
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object cxBubinView: TcxGridDBTableView
        OnKeyUp = cxBubinViewKeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = cxBubinViewCellDblClick
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.ColumnHeaderHints = False
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.ColumnMoving = False
        OptionsData.Appending = True
        OptionsData.Editing = False
        OptionsView.ScrollBars = ssVertical
        OptionsView.DataRowHeight = 20
        OptionsView.GridLineColor = 16635384
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 16
        OptionsView.Indicator = True
        object cxGrdCol1: TcxGridDBColumn
          DataBinding.FieldName = #48277#51064#47749
          PropertiesClassName = 'TcxLabelProperties'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Width = 98
        end
        object cxGrdCol2: TcxGridDBColumn
          DataBinding.FieldName = #48277#51064#48512#49436#47749
          PropertiesClassName = 'TcxLabelProperties'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.Moving = False
          Width = 97
        end
        object cxGrdCol3: TcxGridDBColumn
          DataBinding.FieldName = #45800#52629#48277#51064#47749
          PropertiesClassName = 'TcxLabelProperties'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.Moving = False
          Width = 84
        end
        object cxGrdCol4: TcxGridDBColumn
          DataBinding.FieldName = #45800#52629#48512#49436#47749
          PropertiesClassName = 'TcxLabelProperties'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.Moving = False
          Width = 81
        end
        object cxGrdCol5: TcxGridDBColumn
          DataBinding.FieldName = #48277#51064#53076#46300
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.Moving = False
        end
      end
      object cxGrdBubinLevel1: TcxGridLevel
        GridView = cxBubinView
      end
    end
    object cxBtnSelect: TcxButton
      Left = 166
      Top = 14
      Width = 45
      Height = 21
      Cursor = crHandPoint
      Caption = #51312#54924
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      OnClick = cxBtnSelectClick
    end
    object cxBtnChoice: TcxButton
      Left = 212
      Top = 14
      Width = 45
      Height = 21
      Cursor = crHandPoint
      Caption = #49440#53469
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      OnClick = cxBtnChoiceClick
    end
    object cxBtnClose: TcxButton
      Left = 258
      Top = 14
      Width = 45
      Height = 21
      Cursor = crHandPoint
      Caption = #45803#44592
      TabOrder = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      OnClick = cxBtnCloseClick
    end
  end
end

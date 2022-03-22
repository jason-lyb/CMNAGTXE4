object Frm_WORA4: TFrm_WORA4
  Left = 281
  Top = 154
  BorderStyle = bsNone
  Caption = 'Frm_WORA4'
  ClientHeight = 741
  ClientWidth = 1025
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
    Width = 1025
    Height = 741
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Shape3: TShape
      Left = 0
      Top = 59
      Width = 1025
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
      Width = 1025
      object Shape1: TShape
        Left = 10
        Top = 5
        Width = 615
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
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
      object lblSosokNameA4: TcxLabel
        Left = 95
        Top = 4
        AutoSize = False
        Caption = #49548#49549
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Style.Color = clBtnFace
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
      object cxLabel45: TcxLabel
        Left = 10
        Top = 35
        Caption = '- '#53084#44277#50976#49884#50640' '#53440#44592#49324#44032' '#51201#51208#54620' '#52376#47532#47484' '#54616#51648' '#47803#54644#49436' '#52628#44032#51201#51064' '#53084#48176#52264#47484' '#54728#50857#54616#51648' '#50506#51012#46412' '#49324#50857#54632', '#50669#48169#54693#46020' '#47560#52268#44032#51648
        Transparent = True
      end
      object btnSearchA4: TcxButton
        Left = 636
        Top = 5
        Width = 95
        Height = 50
        Cursor = crHandPoint
        Caption = #51312#54924
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 3
        TabStop = False
        OnClick = btnSearchA4Click
      end
    end
    object Panel12: TPanel
      Left = 0
      Top = 61
      Width = 510
      Height = 680
      Align = alLeft
      BevelOuter = bvNone
      Color = 16774371
      Constraints.MinWidth = 510
      TabOrder = 1
      object Shape2: TShape
        Left = 0
        Top = 62
        Width = 510
        Height = 2
        Align = alTop
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitLeft = -6
        ExplicitTop = 23
        ExplicitWidth = 305
      end
      object cxGridA41: TcxGrid
        Left = 0
        Top = 64
        Width = 510
        Height = 616
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxgOther: TcxGridDBTableView
          PopupMenu = pmExcelA4
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
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              Column = cxgOtherColumn1
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.OnSortingChanged = cxgOtherDataControllerSortingChanged
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnMoving = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 22
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 22
          OnColumnHeaderClick = cxgOtherColumnHeaderClick
          object cxgOtherColumn12: TcxGridDBColumn
            DataBinding.FieldName = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 37
          end
          object cxgOtherColumn1: TcxGridDBColumn
            Caption = #54924#49324#47749
            DataBinding.FieldName = #51648#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 116
          end
          object cxgOtherColumn3: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#49324#48264
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 63
          end
          object cxgOtherColumn4: TcxGridDBColumn
            DataBinding.FieldName = #51088#52404#49324#48264
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 58
          end
          object cxgOtherColumn5: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 53
          end
          object cxgOtherColumn6: TcxGridDBColumn
            DataBinding.FieldName = #45800#47568#44592#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 99
          end
          object cxgOtherColumn7: TcxGridDBColumn
            DataBinding.FieldName = #52264#45800#44592#49324#51648#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 104
          end
          object cxgOtherColumn13: TcxGridDBColumn
            DataBinding.FieldName = #52264#45800#44396#48516
            PropertiesClassName = 'TcxLabelProperties'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Moving = False
          end
          object cxgOtherColumn8: TcxGridDBColumn
            DataBinding.FieldName = #52264#45800#49324#50976
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 86
          end
          object cxgOtherColumn9: TcxGridDBColumn
            DataBinding.FieldName = #52264#45800'ID'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 43
          end
          object cxgOtherColumn11: TcxGridDBColumn
            DataBinding.FieldName = #52264#45800#51068
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
          end
          object cxgOtherColumn10: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxgOtherColumn2: TcxGridDBColumn
            DataBinding.FieldName = #52264#45800#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
          object cxgOtherColumn14: TcxGridDBColumn
            DataBinding.FieldName = #52264#45800#54644#51228#51068
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
          end
        end
        object cxGridA41Level1: TcxGridLevel
          GridView = cxgOther
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = ' '#45817#49324#50640' '#52264#45800#46108' '#53440#54924#49324#44592#49324
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Color = clBtnFace
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
        TabOrder = 1
        Height = 62
        Width = 510
        object Shape5: TShape
          Left = 11
          Top = 24
          Width = 283
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object btnShareOtherSearch: TcxButton
          Left = 296
          Top = 24
          Width = 72
          Height = 26
          Cursor = crHandPoint
          Caption = #44208#44284#45236#44160#49353
          Colors.Default = 16773362
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 0
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          OnClick = btnShareOtherSearchClick
        end
        object cbbShareOtherSearch: TcxComboBox
          Left = 90
          Top = 23
          AutoSize = False
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404
            #44592#49324#47749
            #45800#47568#44592#48264#54840)
          Properties.OnChange = cbbShareOtherSearchPropertiesChange
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Text = #51204#52404
          Height = 26
          Width = 101
        end
        object cxbShareCallAcc: TcxButton
          Left = 387
          Top = 24
          Width = 60
          Height = 26
          Cursor = crHandPoint
          Caption = #52264#45800#46321#47197
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 2
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          OnClick = cxbShareCallAccClick
        end
        object cxbShareCallDel: TcxButton
          Left = 448
          Top = 24
          Width = 60
          Height = 26
          Cursor = crHandPoint
          Caption = #52264#45800#54644#51228
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 3
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          OnClick = cxbShareCallDelClick
        end
        object edtShareOtherSearch: TcxTextEdit
          Left = 190
          Top = 23
          AutoSize = False
          Enabled = False
          ImeMode = imSHanguel
          ParentFont = False
          Properties.ImeMode = imSHanguel
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Height = 26
          Width = 105
        end
        object lbl2: TcxLabel
          Left = 19
          Top = 27
          Caption = #44208#44284#45236' '#44160#49353
          ParentColor = False
          ParentFont = False
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = clBlack
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 53
          AnchorY = 36
        end
      end
    end
    object cxSplitter3: TcxSplitter
      Left = 510
      Top = 61
      Width = 5
      Height = 680
      Control = Panel12
    end
    object Panel10: TPanel
      Left = 515
      Top = 61
      Width = 510
      Height = 680
      Align = alClient
      BevelOuter = bvNone
      Color = 16774371
      Constraints.MinWidth = 370
      TabOrder = 3
      object Shape4: TShape
        Left = 0
        Top = 62
        Width = 510
        Height = 2
        Align = alTop
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitLeft = -6
        ExplicitTop = 23
        ExplicitWidth = 305
      end
      object cxGridA42: TcxGrid
        Left = 0
        Top = 64
        Width = 510
        Height = 616
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        PopupMenu = pmWkMenuA4
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxgOwner: TcxGridDBTableView
          PopupMenu = pmWkMenuA4
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
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              Column = cxgOwnerColumn1
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.OnSortingChanged = cxgOwnerDataControllerSortingChanged
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnMoving = False
          OptionsSelection.CellSelect = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 22
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 22
          OnColumnHeaderClick = cxgOwnerColumnHeaderClick
          object cxgOwnerColumn10: TcxGridDBColumn
            DataBinding.FieldName = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 38
          end
          object cxgOwnerColumn1: TcxGridDBColumn
            Caption = #54924#49324#47749
            DataBinding.FieldName = #51648#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
          end
          object cxgOwnerColumn2: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#49324#48264
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
          end
          object cxgOwnerColumn3: TcxGridDBColumn
            DataBinding.FieldName = #51088#52404#49324#48264
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 58
          end
          object cxgOwnerColumn4: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 56
          end
          object cxgOwnerColumn5: TcxGridDBColumn
            DataBinding.FieldName = #45800#47568#44592#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 116
          end
          object cxgOwnerColumn6: TcxGridDBColumn
            DataBinding.FieldName = #52264#45800#54620#51648#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 102
          end
          object cxgOwnerColumn12: TcxGridDBColumn
            DataBinding.FieldName = #52264#45800#44396#48516
            PropertiesClassName = 'TcxLabelProperties'
            HeaderAlignmentHorz = taCenter
          end
          object cxgOwnerColumn7: TcxGridDBColumn
            DataBinding.FieldName = #52264#45800#49324#50976
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 97
          end
          object cxgOwnerColumn8: TcxGridDBColumn
            Caption = #52264#45800'ID'
            DataBinding.FieldName = #52264#45800#51068
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
          end
          object cxgOwnerColumn9: TcxGridDBColumn
            Caption = #52264#45800#51068
            DataBinding.FieldName = #52264#45800#51648#49324#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 70
          end
          object cxgOwnerColumn11: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxgOwnerColumn13: TcxGridDBColumn
            DataBinding.FieldName = #52264#45800#54644#51228#51068
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
          end
        end
        object cxGridA42Level1: TcxGridLevel
          GridView = cxgOwner
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = ' '#53440#54924#49324#50640#49436' '#52264#45800#54620' '#45817#49324' '#44592#49324' '#54788#54889
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Color = clBtnFace
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
        TabOrder = 1
        Height = 62
        Width = 510
        object Shape6: TShape
          Left = 11
          Top = 24
          Width = 283
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxLabel1: TcxLabel
          Left = 18
          Top = 27
          Caption = #44208#44284#45236' '#44160#49353
          ParentColor = False
          ParentFont = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 52
          AnchorY = 36
        end
        object cbbShareOwnerSearch: TcxComboBox
          Left = 88
          Top = 23
          AutoSize = False
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404
            #44592#49324#47749
            #45800#47568#44592#48264#54840)
          Properties.OnChange = cbbShareOwnerSearchPropertiesChange
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Text = #51204#52404
          Height = 26
          Width = 104
        end
        object edtShareOwnerSearch: TcxTextEdit
          Left = 191
          Top = 23
          AutoSize = False
          Enabled = False
          ImeMode = imSHanguel
          ParentFont = False
          Properties.ImeMode = imSHanguel
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Height = 26
          Width = 104
        end
        object btnShareOwnerSearch: TcxButton
          Left = 297
          Top = 23
          Width = 72
          Height = 26
          Cursor = crHandPoint
          Caption = #44208#44284#45236#44160#49353
          Colors.Default = 16773362
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = btnShareOwnerSearchClick
        end
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
  object pmWkMenuA4: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = pmWkMenuA4Popup
    Left = 587
    Top = 376
    object N29: TMenuItem
      Caption = #44592#49324#49688#51221
      OnClick = N29Click
    end
    object MenuItem24: TMenuItem
      Tag = 1
      Caption = #44592#49324#52880#49772#52649#51204
      OnClick = N29Click
    end
    object MenuItem35: TMenuItem
      Tag = 2
      Caption = #51204#54868#44152#44592
      OnClick = N29Click
    end
    object MenuItem36: TMenuItem
      Tag = 3
      Caption = 'SMS'#51204#49569
      OnClick = N29Click
    end
    object MenuItem37: TMenuItem
      Caption = '-'
    end
    object MenuItem38: TMenuItem
      Tag = 4
      Caption = #50641#49472#45796#50868
      OnClick = N29Click
    end
  end
  object pmExcelA4: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = pmWkMenuA4Popup
    Left = 416
    Top = 384
    object MenuItem16: TMenuItem
      Tag = 4
      Caption = #50641#49472#45796#50868
      OnClick = MenuItem16Click
    end
  end
end

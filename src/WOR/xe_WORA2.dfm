object Frm_WORA2: TFrm_WORA2
  Left = 281
  Top = 154
  BorderStyle = bsNone
  Caption = 'Frm_WORA2'
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
    object cxPcA2: TcxPageControl
      Left = 0
      Top = 87
      Width = 993
      Height = 654
      Align = alClient
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      Properties.ActivePage = cxTabSheet8
      Properties.CustomButtons.Buttons = <>
      Properties.Style = 9
      LookAndFeel.NativeStyle = False
      OnChange = cxPcA2Change
      ClientRectBottom = 654
      ClientRectRight = 993
      ClientRectTop = 19
      object cxTabSheet2: TcxTabSheet
        Caption = #44592#49324#48324#48372#44592
        ImageIndex = 0
        object Shape6: TShape
          Left = 0
          Top = 0
          Width = 993
          Height = 1
          Align = alTop
          Brush.Style = bsClear
          Pen.Color = 12566402
          Pen.Style = psClear
          ExplicitLeft = -3
          ExplicitTop = -4
        end
        object Shape7: TShape
          Left = 0
          Top = 35
          Width = 993
          Height = 1
          Align = alTop
          Brush.Style = bsClear
          Pen.Color = 12566402
          Pen.Style = psClear
          ExplicitTop = 8
        end
        object cxGridA21: TcxGrid
          Left = 0
          Top = 36
          Width = 993
          Height = 599
          Align = alClient
          PopupMenu = pmWkMenu
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object cxgWkCash: TcxGridBandedTableView
            Navigator.Buttons.CustomButtons = <>
            OnCellDblClick = cxgWkCashCellDblClick
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.;-,0.'
                Kind = skSum
                Column = cxgWkCashColumn6
              end
              item
                Format = ',0.;-,0.'
                Kind = skSum
                Column = cxgWkCashColumn7
              end
              item
                Format = ',0.;-,0.'
                Kind = skSum
                Column = cxgWkCashColumn8
              end
              item
                Format = ',0.;-,0.'
                Kind = skSum
                Column = cxgWkCashColumn9
              end
              item
                Format = ',0.;-,0.'
                Kind = skSum
                Column = cxgWkCashColumn10
              end
              item
                Format = ',0.;-,0.'
                Kind = skSum
                Column = cxgWkCashColumn11
              end
              item
                Format = ',0.;-,0.'
                Kind = skSum
                Column = cxgWkCashColumn12
              end
              item
                Format = ',0.;-,0.'
                Kind = skSum
                Column = cxgWkCashColumn13
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.ColumnSorting = False
            OptionsCustomize.DataRowSizing = True
            OptionsCustomize.BandMoving = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.NoDataToDisplayInfoText = ' '
            OptionsView.CellAutoHeight = True
            OptionsView.Footer = True
            OptionsView.FooterAutoHeight = True
            OptionsView.GroupByBox = False
            OptionsView.Header = False
            Bands = <
              item
                Caption = 'No.'
                Width = 31
                OnHeaderClick = cxgWkCashBands0HeaderClick
              end
              item
                Caption = #51648#49324#53076#46300
                Visible = False
              end
              item
                Caption = #51648#49324#47749
                Width = 109
                OnHeaderClick = cxgWkCashBands2HeaderClick
              end
              item
                Caption = #44592#49324#49324#48264
                Width = 54
                OnHeaderClick = cxgWkCashBands3HeaderClick
              end
              item
                Caption = #51088#52404#49324#48264
                Width = 54
                OnHeaderClick = cxgWkCashBands4HeaderClick
              end
              item
                Caption = #44592#49324#47749
                Width = 80
                OnHeaderClick = cxgWkCashBands5HeaderClick
              end
              item
                Caption = #51092#50529#54633#44228
                Width = 70
                OnHeaderClick = cxgWkCashBands6HeaderClick
              end
              item
                Caption = #54788#51116
                Width = 140
              end
              item
                Caption = #44277#50857#52880#49772
                Position.BandIndex = 7
                Position.ColIndex = 0
                Width = 70
                OnHeaderClick = cxgWkCashBands8HeaderClick
              end
              item
                Caption = #51088#52404#52880#49772
                Position.BandIndex = 7
                Position.ColIndex = 1
                Width = 70
                OnHeaderClick = cxgWkCashBands9HeaderClick
              end
              item
                Caption = #48320#46041#45236#50669
                Width = 140
              end
              item
                Caption = #44277#50857#52880#49772
                Position.BandIndex = 10
                Position.ColIndex = 0
                Width = 70
                OnHeaderClick = cxgWkCashBands11HeaderClick
              end
              item
                Caption = #51088#52404#52880#49772
                Position.BandIndex = 10
                Position.ColIndex = 1
                Width = 70
                OnHeaderClick = cxgWkCashBands12HeaderClick
              end
              item
                Caption = #50756#47308#44148#49688
                Width = 54
                OnHeaderClick = cxgWkCashBands13HeaderClick
              end
              item
                Caption = #50756#47308#52264#44048
                Width = 140
              end
              item
                Caption = #44277#50857#52264#44048
                Position.BandIndex = 14
                Position.ColIndex = 0
                Width = 70
                OnHeaderClick = cxgWkCashBands15HeaderClick
              end
              item
                Caption = #51088#52404#52264#44048
                Position.BandIndex = 14
                Position.ColIndex = 1
                Width = 70
                OnHeaderClick = cxgWkCashBands16HeaderClick
              end
              item
                Caption = #49688#49688#47308#44536#47353
                Width = 80
                OnHeaderClick = cxgWkCashBands17HeaderClick
              end
              item
                Caption = #44036#45800#47700#47784
                Width = 157
                OnHeaderClick = cxgWkCashBands18HeaderClick
              end>
            object cxgWkCashColumn1: TcxGridBandedColumn
              Caption = 'Col01'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxgWkCashColumn16: TcxGridBandedColumn
              Caption = #51648#49324#53076#46300
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxgWkCashColumn2: TcxGridBandedColumn
              Caption = 'Col02'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxgWkCashColumn3: TcxGridBandedColumn
              Caption = 'Col03'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 20
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxgWkCashColumn4: TcxGridBandedColumn
              Caption = 'Col04'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 20
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxgWkCashColumn5: TcxGridBandedColumn
              Caption = 'Col05'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxgWkCashColumn6: TcxGridBandedColumn
              Caption = 'Col06'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;-,0.'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 20
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxgWkCashColumn7: TcxGridBandedColumn
              Caption = 'Col07'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;-,0.'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 84
              Position.BandIndex = 8
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxgWkCashColumn8: TcxGridBandedColumn
              Caption = 'Col08'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;-,0.'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 20
              Position.BandIndex = 9
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxgWkCashColumn9: TcxGridBandedColumn
              Caption = 'Col09'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;-,0.'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 81
              Position.BandIndex = 11
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxgWkCashColumn10: TcxGridBandedColumn
              Caption = 'Col10'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;-,0.'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 20
              Position.BandIndex = 12
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxgWkCashColumn11: TcxGridBandedColumn
              Caption = 'Col11'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 20
              Position.BandIndex = 13
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxgWkCashColumn12: TcxGridBandedColumn
              Caption = 'Col12'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;-,0.'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Position.BandIndex = 15
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxgWkCashColumn13: TcxGridBandedColumn
              Caption = 'Col13'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;-,0.'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Position.BandIndex = 16
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxgWkCashColumn14: TcxGridBandedColumn
              Caption = 'Col14'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 20
              Position.BandIndex = 17
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxgWkCashColumn15: TcxGridBandedColumn
              Caption = 'Col15'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Position.BandIndex = 18
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
          end
          object cxGridA21Level1: TcxGridLevel
            GridView = cxgWkCash
          end
        end
        object cxGroupBox2: TcxGroupBox
          Left = 0
          Top = 1
          Align = alTop
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          DesignSize = (
            993
            34)
          Height = 34
          Width = 993
          object btnSearchA2P11: TcxButton
            Left = 791
            Top = 3
            Width = 129
            Height = 27
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #44592#49324#52880#49772#45236#50669#48372#44592
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 0
            TabStop = False
            OnClick = btnSearchA2P11Click
          end
          object btnSearchA2P12: TcxButton
            Left = 922
            Top = 3
            Width = 68
            Height = 27
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #50641#49472#45796#50868
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 1
            TabStop = False
            OnClick = btnSearchA2P12Click
          end
        end
      end
      object cxTabSheet8: TcxTabSheet
        Caption = #49464#48512#45236#50669#48372#44592
        ImageIndex = 1
        object Shape8: TShape
          Left = 0
          Top = 35
          Width = 993
          Height = 1
          Align = alTop
          Brush.Style = bsClear
          Pen.Color = 12566402
          Pen.Style = psClear
          ExplicitTop = 8
        end
        object Shape9: TShape
          Left = 0
          Top = 0
          Width = 993
          Height = 1
          Align = alTop
          Brush.Style = bsClear
          Pen.Color = 12566402
          Pen.Style = psClear
          ExplicitTop = -2
        end
        object cxGridA22: TcxGrid
          Left = 0
          Top = 36
          Width = 993
          Height = 599
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          Constraints.MinHeight = 50
          PopupMenu = pmWkMenu
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object sg_xls: TcxGridDBTableView
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
            DataController.DataModeController.SmartRefresh = True
            DataController.Filter.Options = [fcoShowOperatorDescription, fcoSoftNull]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <
              item
                Links = <>
                SummaryItems = <
                  item
                  end>
              end>
            DataController.OnSortingChanged = sg_xlsDataControllerSortingChanged
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            Filtering.ColumnMRUItemsListCount = 0
            OptionsBehavior.CellHints = True
            OptionsBehavior.CopyCaptionsToClipboard = False
            OptionsBehavior.ImmediateEditor = False
            OptionsBehavior.CopyPreviewToClipboard = False
            OptionsBehavior.ExpandMasterRowOnDblClick = False
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.NoDataToDisplayInfoText = '  '
            OptionsView.CellAutoHeight = True
            OptionsView.DataRowHeight = 22
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.HeaderEndEllipsis = True
            OptionsView.HeaderHeight = 22
            OptionsView.IndicatorWidth = 0
            OnColumnHeaderClick = sg_xlsColumnHeaderClick
            object sg_xlsColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'No'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 41
            end
            object sg_xlsColumn2: TcxGridDBColumn
              DataBinding.FieldName = #51077#47141#51068#49884
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 132
            end
            object sg_xlsColumn3: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 71
            end
            object sg_xlsColumn4: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 125
            end
            object sg_xlsColumn5: TcxGridDBColumn
              DataBinding.FieldName = #44592#49324#49324#48264
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 68
            end
            object sg_xlsColumn6: TcxGridDBColumn
              DataBinding.FieldName = #51088#52404#49324#48264
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 65
            end
            object sg_xlsColumn7: TcxGridDBColumn
              DataBinding.FieldName = #44592#49324#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
            end
            object sg_xlsColumn8: TcxGridDBColumn
              DataBinding.FieldName = #49688#49688#47308#44536#47353
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 71
            end
            object sg_xlsColumn9: TcxGridDBColumn
              DataBinding.FieldName = #44036#45800#47700#47784
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 110
            end
            object sg_xlsColumn10: TcxGridDBColumn
              DataBinding.FieldName = #44396#48516
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
            end
            object sg_xlsColumn11: TcxGridDBColumn
              DataBinding.FieldName = #44277#50857#52880#49772#48320#46041#44552#50529
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;-,0.'
              HeaderAlignmentHorz = taCenter
              Width = 102
            end
            object sg_xlsColumn12: TcxGridDBColumn
              DataBinding.FieldName = #51088#52404#52880#49772#48320#46041#44552#50529
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;-,0.'
              HeaderAlignmentHorz = taCenter
              Width = 102
            end
            object sg_xlsColumn13: TcxGridDBColumn
              DataBinding.FieldName = #52880#49772#47700#47784
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 54
            end
            object sg_xlsColumn14: TcxGridDBColumn
              DataBinding.FieldName = #51092#50529
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;-,0.'
              HeaderAlignmentHorz = taCenter
            end
            object sg_xlsColumn15: TcxGridDBColumn
              DataBinding.FieldName = #51217#49688#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
            end
            object sg_xlsColumn16: TcxGridDBColumn
              DataBinding.FieldName = #51077#52636#44552#51088#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 66
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = sg_xls
          end
        end
        object cxGroupBox3: TcxGroupBox
          Left = 0
          Top = 1
          Align = alTop
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          DesignSize = (
            993
            34)
          Height = 34
          Width = 993
          object Shape10: TShape
            Left = 10
            Top = 4
            Width = 196
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object btnSearchA2P22: TcxButton
            Left = 920
            Top = 3
            Width = 68
            Height = 27
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #50641#49472#45796#50868
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 0
            TabStop = False
            OnClick = btnSearchA2P12Click
          end
          object btnSearchA2P21: TcxButton
            Left = 209
            Top = 3
            Width = 60
            Height = 27
            Cursor = crHandPoint
            Caption = #44160' '#49353
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 1
            TabStop = False
            OnClick = btnSearchA2Click
          end
          object cxLabel69: TcxLabel
            Left = 24
            Top = 9
            Caption = #52880#49772#47700#47784
            ParentColor = False
            ParentFont = False
            Style.Color = 16441805
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorX = 50
            AnchorY = 17
          end
          object edtWkCashMemo: TcxTextEdit
            Left = 95
            Top = 3
            TabStop = False
            AutoSize = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            Height = 26
            Width = 112
          end
        end
      end
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
      TabOrder = 1
      Height = 87
      Width = 993
      object Shape1: TShape
        Left = 10
        Top = 5
        Width = 601
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape2: TShape
        Left = 10
        Top = 31
        Width = 604
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape3: TShape
        Left = 10
        Top = 57
        Width = 196
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape4: TShape
        Left = 213
        Top = 57
        Width = 196
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape5: TShape
        Left = 415
        Top = 57
        Width = 199
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object cbWkComm: TcxComboBox
        Left = 298
        Top = 56
        TabStop = False
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #51204#52404)
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 26
        Width = 112
      end
      object cbWkStatus: TcxComboBox
        Left = 95
        Top = 56
        TabStop = False
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #51204#52404
          #51221#49345
          #51221#49345'('#49324#50857#47308#51648#49324#45824#45225')'
          #49688#49688#47308#48120#45225
          #48372#54744#47308#48120#45225
          #49324#50857#47308#48120#45225
          #49688#49688#47308'+'#49324#50857#47308#48120#45225
          #48708#51064#51613
          #44592#53440#51221#51648
          #48376#49324#51221#51648
          #53748#51649)
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Text = #51221#49345
        Height = 26
        Width = 112
      end
      object btnSearchA2: TcxButton
        Left = 620
        Top = 57
        Width = 122
        Height = 24
        Cursor = crHandPoint
        Caption = #44160' '#49353
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 2
        TabStop = False
        OnClick = btnSearchA2Click
      end
      object cxLabel10: TcxLabel
        Left = 316
        Top = 36
        Caption = '09:00'
        Transparent = True
      end
      object cxLabel11: TcxLabel
        Left = 24
        Top = 61
        Caption = #44592#49324#49345#53468
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
        Transparent = True
        AnchorX = 50
        AnchorY = 70
      end
      object cxLabel12: TcxLabel
        Left = 426
        Top = 61
        Caption = #51060#47492'/'#49324#48264
        ParentColor = False
        ParentFont = False
        Style.Color = 16575968
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 455
        AnchorY = 69
      end
      object cxLabel15: TcxLabel
        Left = 620
        Top = 14
        AutoSize = False
        Caption = #8251' '#48376#54868#47732#51008' '#44592#49324#52880#49772#51032' '#47784#46304' '#48320#46041#45236#50669#51012' '#54869#51064#54633#45768#45796'. '#13#10#8251' '#45908#48660#53364#47533#49884' '#44592#49324#48324' '#49464#48512#45236#50669#51060' '#54364#49884#46121#45768#45796'.'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        Height = 30
        Width = 299
      end
      object cxLabel54: TcxLabel
        Left = 27
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
        AnchorX = 52
        AnchorY = 18
      end
      object lblSosokNameA2: TcxLabel
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
        Width = 520
        AnchorX = 355
        AnchorY = 17
      end
      object cxLabel58: TcxLabel
        Left = 224
        Top = 61
        Caption = #49688#49688#47308#44536#47353
        ParentColor = False
        ParentFont = False
        Style.Color = 16575968
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 256
        AnchorY = 69
      end
      object cxLabel8: TcxLabel
        Left = 27
        Top = 35
        Caption = #44592'       '#44036
        ParentColor = False
        ParentFont = False
        Style.Color = 16575968
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleDisabled.BorderStyle = ebs3D
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 52
        AnchorY = 44
      end
      object cxLabel9: TcxLabel
        Left = 180
        Top = 35
        Caption = '09:00 ~ '
        Transparent = True
      end
      object edWkName: TcxTextEdit
        Left = 493
        Top = 56
        TabStop = False
        AutoSize = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 12
        Height = 26
        Width = 122
      end
      object cxDtEndA2: TcxDateEdit
        Left = 230
        Top = 30
        TabStop = False
        AutoSize = False
        ParentShowHint = False
        Properties.DateButtons = [btnToday]
        Properties.SaveTime = False
        Properties.ShowTime = False
        ShowHint = True
        Style.BorderStyle = ebsOffice11
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 13
        Height = 26
        Width = 84
      end
      object monthDay: TcxRadioButton
        Tag = 1
        Left = 547
        Top = 36
        Width = 47
        Height = 17
        Caption = #54620#45804
        TabOrder = 14
        OnClick = monthDayClick
        Transparent = True
      end
      object oneDay: TcxRadioButton
        Tag = 1
        Left = 383
        Top = 36
        Width = 45
        Height = 17
        Caption = #54616#47336
        Checked = True
        TabOrder = 15
        TabStop = True
        OnClick = oneDayClick
        Transparent = True
      end
      object cxDtStartA2: TcxDateEdit
        Left = 95
        Top = 30
        TabStop = False
        AutoSize = False
        EditValue = 39717d
        ParentShowHint = False
        Properties.DateButtons = [btnToday]
        Properties.SaveTime = False
        Properties.ShowTime = False
        ShowHint = True
        Style.BorderStyle = ebsOffice11
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 16
        Height = 26
        Width = 84
      end
      object threeDay: TcxRadioButton
        Tag = 1
        Left = 436
        Top = 36
        Width = 39
        Height = 17
        Caption = '3'#51068
        TabOrder = 17
        OnClick = threeDayClick
        Transparent = True
      end
      object weekDay: TcxRadioButton
        Tag = 1
        Left = 483
        Top = 36
        Width = 57
        Height = 17
        Caption = #51068#51452#51068
        TabOrder = 18
        OnClick = weekDayClick
        Transparent = True
      end
    end
  end
  object cxlsWkStatus: TcxListBox
    Left = 200
    Top = 360
    Width = 65
    Height = 97
    ImeName = 'Microsoft Office IME 2007'
    ItemHeight = 12
    Items.Strings = (
      ''
      '00'
      '01'
      '10'
      '21'
      '22'
      '23'
      '30'
      '40'
      '60'
      '50')
    TabOrder = 1
    Visible = False
  end
  object pmWkMenu: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = pmWkMenuPopup
    Left = 131
    Top = 384
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
end

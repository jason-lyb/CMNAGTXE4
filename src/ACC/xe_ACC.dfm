object Frm_ACC: TFrm_ACC
  Left = 722
  Top = 103
  BorderStyle = bsNone
  Caption = #51221#49328#44288#47532
  ClientHeight = 717
  ClientWidth = 1164
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  Position = poMainFormCenter
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
    Width = 1164
    Height = 717
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet3
    Properties.CustomButtons.Buttons = <>
    OnChange = cxPageControl1Change
    ClientRectBottom = 711
    ClientRectLeft = 2
    ClientRectRight = 1158
    ClientRectTop = 27
    object cxTabSheet1: TcxTabSheet
      Tag = 601
      Caption = #51648#49324#52880#49772#45236#50669
      ImageIndex = 0
      object Panel18: TPanel
        Left = 0
        Top = 0
        Width = 1156
        Height = 684
        Align = alClient
        BevelOuter = bvNone
        Color = 16444898
        TabOrder = 0
        object Shape6: TShape
          Left = 0
          Top = 63
          Width = 1156
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = -6
          ExplicitTop = 23
          ExplicitWidth = 305
        end
        object cxGroupBox2: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          ParentBackground = False
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clBtnFace
          TabOrder = 0
          Height = 63
          Width = 1156
          object cxLabel218: TcxLabel
            Left = 6
            Top = 6
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
            Width = 75
            AnchorX = 44
            AnchorY = 19
          end
          object lblSosokNameA1: TcxLabel
            Left = 78
            Top = 6
            AutoSize = False
            Caption = #49548#49549
            ParentColor = False
            Style.BorderStyle = ebsUltraFlat
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 13719147
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 324
            AnchorX = 240
            AnchorY = 19
          end
          object cxDtStartA1: TcxDateEdit
            Left = 78
            Top = 33
            AutoSize = False
            BeepOnEnter = False
            EditValue = 0d
            ParentShowHint = False
            Properties.Alignment.Horz = taCenter
            Properties.DateButtons = [btnNow, btnToday]
            Properties.DateOnError = deToday
            Properties.InputKind = ikStandard
            Properties.SaveTime = False
            Properties.ShowTime = False
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
            TabOrder = 2
            Height = 26
            Width = 90
          end
          object cxLabel264: TcxLabel
            Left = 217
            Top = 33
            AutoSize = False
            Caption = '~'
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 20
            AnchorX = 227
            AnchorY = 46
          end
          object cxDtEndA1: TcxDateEdit
            Left = 234
            Top = 33
            AutoSize = False
            BeepOnEnter = False
            EditValue = 0d
            ParentShowHint = False
            Properties.Alignment.Horz = taCenter
            Properties.DateButtons = [btnNow, btnToday]
            Properties.DateOnError = deToday
            Properties.InputKind = ikStandard
            Properties.SaveTime = False
            Properties.ShowTime = False
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
          object btnDateA1: TcxButton
            Left = 377
            Top = 34
            Width = 28
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
            TabOrder = 5
          end
          object cxLabel1: TcxLabel
            Left = 6
            Top = 33
            AutoSize = False
            Caption = #44592' '#44036
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 75
            AnchorX = 44
            AnchorY = 46
          end
          object cxTeStartA1: TcxTimeEdit
            Left = 165
            Top = 33
            AutoSize = False
            EditValue = 0.375d
            Properties.TimeFormat = tfHourMin
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
            Width = 55
          end
          object cxTeEndA1: TcxTimeEdit
            Left = 321
            Top = 33
            AutoSize = False
            EditValue = 0.375d
            Properties.TimeFormat = tfHourMin
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
            Width = 55
          end
          object cxLabel37: TcxLabel
            Left = 413
            Top = 8
            Caption = #8251' '#51312#54924#46108' '#47785#47197#51012' '#45908#48660#53364#47533#54616#49884#47732' '#51648#49324#48324' '#52880#49772#45236#50669#51012' '#54869#51064' '#54624#49688' '#51080#49845#45768#45796'.'
            ParentColor = False
            Style.BorderStyle = ebsNone
            Style.Color = 13483435
            Style.TextColor = 16744448
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 16
          end
          object btnSearchA1: TcxButton
            Left = 417
            Top = 30
            Width = 80
            Height = 26
            Cursor = crHandPoint
            Caption = #44160' '#49353
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 10
            TabStop = False
            OnClick = btnSearchA1Click
          end
          object btnExcelA1: TcxButton
            Left = 500
            Top = 30
            Width = 80
            Height = 26
            Cursor = crHandPoint
            Caption = #50641#49472#45796#50868
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 11
            TabStop = False
            OnClick = btnExcelA1Click
          end
          object btnHelpA1: TcxButton
            Left = 583
            Top = 30
            Width = 80
            Height = 26
            Cursor = crHandPoint
            Caption = #51060#50857#50504#45236
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 12
            TabStop = False
            OnClick = btnHelpA1Click
          end
        end
        object GridA1: TcxGrid
          Left = 0
          Top = 65
          Width = 1156
          Height = 619
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TabStop = False
          LookAndFeel.NativeStyle = False
          object GridA1View: TcxGridDBTableView
            PopupMenu = PopupMenuA1
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
            OnCellDblClick = GridA1ViewCellDblClick
            DataController.DataModeController.SmartRefresh = True
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = GridA1ViewColumn2
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = GridA1ViewColumn3
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = GridA1ViewColumn4
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = GridA1ViewColumn5
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = GridA1ViewColumn6
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = GridA1ViewColumn7
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = GridA1ViewColumn8
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = GridA1ViewColumn9
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = GridA1ViewColumn10
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = GridA1ViewColumn11
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = GridA1ViewColumn12
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = GridA1ViewColumn13
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = GridA1ViewColumn14
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = GridA1ViewColumn15
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = GridA1ViewColumn20
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.OnSortingChanged = Grid1ViewDataControllerSortingChanged
            OptionsCustomize.ColumnFiltering = False
            OptionsSelection.CellSelect = False
            OptionsView.NoDataToDisplayInfoText = ' '
            OptionsView.CellAutoHeight = True
            OptionsView.DataRowHeight = 22
            OptionsView.Footer = True
            OptionsView.FooterAutoHeight = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 23
            OnColumnHeaderClick = GridA1ViewColumnHeaderClick
            object GridA1ViewColumn16: TcxGridDBColumn
              DataBinding.FieldName = 'No'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 50
            end
            object GridA1ViewColumn18: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
            end
            object GridA1ViewColumn1: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Moving = False
              Width = 124
            end
            object GridA1ViewColumn2: TcxGridDBColumn
              DataBinding.FieldName = #44592#49324#44277#50857#52880#49772
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Moving = False
              Width = 80
            end
            object GridA1ViewColumn3: TcxGridDBColumn
              DataBinding.FieldName = #48156#51452#49688#51061
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Moving = False
              Width = 70
            end
            object GridA1ViewColumn4: TcxGridDBColumn
              DataBinding.FieldName = #49688#51452#51648#44553
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Moving = False
              Width = 70
            end
            object GridA1ViewColumn5: TcxGridDBColumn
              DataBinding.FieldName = #49556#47336#49496#49324#50857#47308
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Moving = False
              Width = 80
            end
            object GridA1ViewColumn6: TcxGridDBColumn
              DataBinding.FieldName = #48372#54744#47308
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Moving = False
              Width = 70
            end
            object GridA1ViewColumn20: TcxGridDBColumn
              DataBinding.FieldName = #44256#50857#48372#54744#47308
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 65
            end
            object GridA1ViewColumn7: TcxGridDBColumn
              DataBinding.FieldName = #52712#49548#48268#44552'('#44277#50857')'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Moving = False
              Width = 89
            end
            object GridA1ViewColumn8: TcxGridDBColumn
              DataBinding.FieldName = #53084#45824#54665
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Moving = False
              Width = 70
            end
            object GridA1ViewColumn9: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#51077#44552
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Moving = False
              Width = 70
            end
            object GridA1ViewColumn10: TcxGridDBColumn
              DataBinding.FieldName = #53084#47560#45320#51221#49328
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Moving = False
              Width = 80
            end
            object GridA1ViewColumn11: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#52880#49772#51060#46041
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Moving = False
              Width = 82
            end
            object GridA1ViewColumn12: TcxGridDBColumn
              DataBinding.FieldName = 'SMS'#52880#49772#52636#44552
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Moving = False
              Width = 81
            end
            object GridA1ViewColumn13: TcxGridDBColumn
              DataBinding.FieldName = #44592#53440
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Moving = False
              Width = 60
            end
            object GridA1ViewColumn14: TcxGridDBColumn
              DataBinding.FieldName = #54633#44228
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Moving = False
              Width = 90
            end
            object GridA1ViewColumn17: TcxGridDBColumn
              DataBinding.FieldName = #49884#51089#52880#49772
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object GridA1ViewColumn19: TcxGridDBColumn
              DataBinding.FieldName = #51333#47308#52880#49772
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object GridA1ViewColumn15: TcxGridDBColumn
              DataBinding.FieldName = #51092#50529
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Moving = False
              Width = 90
            end
          end
          object GridA1Level: TcxGridLevel
            GridView = GridA1View
          end
        end
      end
      object pnlHelpA1: TPanel
        Left = 479
        Top = 120
        Width = 513
        Height = 529
        BevelKind = bkFlat
        BevelOuter = bvNone
        Color = 16316393
        TabOrder = 1
        Visible = False
        DesignSize = (
          509
          525)
        object cxGroupBox1: TcxGroupBox
          Left = 0
          Top = 0
          Align = alClient
          Caption = #51060#50857#50504#45236
          ParentBackground = False
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = clBtnFace
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 525
          Width = 509
          object cxLabel6: TcxLabel
            Left = 3
            Top = 14
            Align = alClient
            Caption = 
              #13#10#48376' '#39#54637#47785#48324#51648#49324#52880#49772#39' '#45236#50669#51008' '#51648#49324#52880#49772#51032' '#47784#46304' '#48320#44221#45236#50669#51012' '#45208#53440#45253#45768#45796'.'#13#10#51593', '#54644#45817' '#44592#44036#46041#50504#51032' '#51648#49324#52880#49772#44032' '#51613#44032#54616#44256' ' +
              #44048#49548#54620' '#44163#51012' '#54637#47785#48324#47196' '#51312#54924#44032#45733#54633#45768#45796'.'#13#10#13#10#39#51648#49324#52880#49772#39#45716' '#49892#51228' '#54788#44552#51060#45208' '#47560#52268#44032#51648#51064' '#44480' '#51648#49324#51032' '#51092#44256#47484' '#45208#53440#45253#45768#45796'.'#13#10 +
              #13#10'*'#44592#49324#44277#50857#52880#49772': '#44592#49324#44032' '#50724#45908' '#50868#54665#49884' '#39#44592#49324#44277#50857#52880#49772#39#50640#49436' '#49688#49688#47308#44032' '#52264#44048#46108' '#52509#50529','#13#10' '#49688#49688#47308#51204#50529#51060' '#51648#49324#52880#49772#50640' '#52649#51204#46108 +
              ' '#45236#50669#51077#45768#45796'.'#13#10#13#10'*'#48156#51452#49688#51061': '#50724#45908#47484' '#48156#51452#54616#50668' '#53440#51648#49324'('#48376#49324#45236' '#53440' '#51648#49324' '#54252#54632')'#47196#48512#53552' '#48155#51008' '#44552#50529'(+ '#44552#50529')'#13#10#13#10'*'#49688 +
              #51452#51648#44553': '#53440#49324#51032' '#50724#45908#47484' '#49688#51452#54616#50668' '#53440#49324#50640' '#51648#44553#54620' '#44552#50529'(- '#44552#50529')'#13#10#13#10'*'#49556#47336#49496#49324#50857#47308': '#44592#49324#49324#50857#47308#47484' '#51648#49324#52880#49772#50640#49436' '#48320#44221#46108 +
              ' '#45236#50669#51077#45768#45796'.'#13#10' ('#51648#49324#45824#45225#51060#45208' '#54980#48520#50629#52404#50640' '#54644#45817')'#13#10#13#10'*'#48372#54744#47308': '#44592#49324#48372#54744#47308' '#54637#47785#51004#47196', '#44592#49324#51032' '#44277#50857#52880#49772#50640' '#52264#44048#54616#50668' ' +
              #51648#49324#52880#49772#47196' '#52649#51204#46104#45716#13#10' '#45236#50669' '#46321#51012' '#54364#49884#54633#45768#45796'.'#13#10#13#10'*'#52712#49548#48268#44552'('#44277#50857'): '#44592#49324#51032' '#50724#45908#52712#49548' '#48268#44552#51060' '#39#44277#50857#52880#49772#39#50640#49436' '#52264#44048 +
              #46108' '#44552#50529'.'#13#10' '#51060#44552#50529#46020' '#51648#49324#51032' '#52880#49772#50640' '#51201#47549#46121#45768#45796'.'#13#10#13#10'*'#53084#45824#54665': '#53084#49468#53552#47484' '#45824#54665'/'#51060#44288#51032' '#44221#50864' '#50577#49324#44032' '#50724#45908' '#45800#50948#47196' '#51221 +
              #49328'('#51201#47549'/'#52264#44048')'#51012' '#50557#49549#54620' '#44552#50529#13#10#13#10'*'#51648#49324#51077#44552': '#44480#49324#50640#49436' '#51648#49324#51032' '#39#44032#49345#44228#51340#39#47196' '#51649#51217' '#49569#44552#54616#50668' '#52649#51204#54620' '#44552#50529#13#10#13#10'*'#53084 +
              #47560#45320#51221#49328': '#53084#47560#45320#50640#49436' '#51648#49324#51032' '#52880#49772#47484' '#52264#44048#54616#44256', '#49569#44552#54616#50668' '#51221#49328' '#51077#44552#54644' '#46300#47536' '#44552#50529'.'#13#10' ('#48376#49324#45208' '#51648#49324#51032' '#44228#51340#47196' '#51077#44552')'#13 +
              #10#13#10'*'#51648#49324#52880#49772#51060#46041': '#48376#49324#45236' '#51648#49324#44036#50640' '#52880#49772#47484' '#51060#46041#54620' '#45236#50669#13#10#13#10'*SMS'#52880#49772' '#52636#44552': '#51648#49324#52880#49772#50640#49436' SMS'#52880#49772#47196' '#51060#46041#54620' ' +
              #45236#50669#13#10#13#10'*'#44592#53440': '#44592#49324#53748#51649#52649#51204'('#53748#51649#49884' '#44592#49324#44277#50857#52880#49772' '#51092#50529#51012' '#51648#49324#50640' '#52649#51204'), '#54980#48520#48277#51064#50868#54665#51648#44553#50529#13#10' ('#44592#49324#50640' '#51088#46041#51648#44553#52649 +
              #51204' '#46108' '#48512#48516'), '#48512#44032#49436#48708#49828#49324#50857#47308', '#44592#49324#54532#47196#44536#47016#49324#50857#47308' '#54872#48520' '#46321#13#10' '#53945#49688#49345#54889#50640' '#51032#54620' '#48372#51221#51077#47141' '#46321#51032' '#45236#50857#51077#45768#45796'.'#13#10
            ParentColor = False
            Style.BorderColor = 12303291
            Style.Color = 15921906
          end
        end
        object BtnCloseA1: TcxButton
          Left = 486
          Top = 21
          Width = 20
          Height = 20
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
          TabOrder = 1
          TabStop = False
          OnClick = BtnCloseA1Click
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Tag = 602
      Caption = #53685#51109#49885#47196#44536
      ImageIndex = 1
      object Shape5: TShape
        Left = 0
        Top = 63
        Width = 1156
        Height = 2
        Align = alTop
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitTop = 71
        ExplicitWidth = 995
      end
      object cxGroupBox3: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        ParentBackground = False
        ParentColor = False
        Style.BorderStyle = ebsFlat
        Style.Color = clBtnFace
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 63
        Width = 1156
        object lblSosokNameA2: TcxLabel
          Left = 78
          Top = 6
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
          Width = 324
          AnchorX = 240
          AnchorY = 19
        end
        object cxDtStartA2: TcxDateEdit
          Left = 78
          Top = 33
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.DateButtons = [btnNow, btnToday]
          Properties.DateOnError = deToday
          Properties.InputKind = ikStandard
          Properties.SaveTime = False
          Properties.ShowTime = False
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
          TabOrder = 1
          Height = 26
          Width = 90
        end
        object cxLabel3: TcxLabel
          Left = 217
          Top = 33
          AutoSize = False
          Caption = '~'
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 26
          Width = 20
          AnchorX = 227
          AnchorY = 46
        end
        object cxDtEndA2: TcxDateEdit
          Left = 234
          Top = 33
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.DateButtons = [btnNow, btnToday]
          Properties.DateOnError = deToday
          Properties.InputKind = ikStandard
          Properties.SaveTime = False
          Properties.ShowTime = False
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
        object btnSearchA2: TcxButton
          Left = 1074
          Top = 7
          Width = 78
          Height = 50
          Cursor = crHandPoint
          Caption = #44160#49353
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 4
          OnClick = btnSearchA2Click
        end
        object btnExcelA2: TcxButton
          Left = 1153
          Top = 7
          Width = 78
          Height = 50
          Cursor = crHandPoint
          Caption = #50641#49472
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 5
          OnClick = btnExcelA2Click
        end
        object btnDateA2: TcxButton
          Left = 377
          Top = 34
          Width = 28
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
          TabOrder = 6
        end
        object cxTeStartA2: TcxTimeEdit
          Left = 165
          Top = 33
          AutoSize = False
          EditValue = 0.375d
          Properties.TimeFormat = tfHourMin
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
          Width = 55
        end
        object cxTeEndA2: TcxTimeEdit
          Left = 321
          Top = 33
          AutoSize = False
          EditValue = 0.375d
          Properties.TimeFormat = tfHourMin
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
          Width = 55
        end
        object cxLabel5: TcxLabel
          Left = 510
          Top = 18
          Caption = 
            #8251' '#51312#54924#46108' '#47785#47197' '#51473#50640' '#51217#49688#48264#54840#44032' '#51080#45716' '#45936#51060#53552#45716' '#50724#45908#51221#48372', '#50724#45908#49345#49464#45236#50669#51012#13#10'   '#47560#50864#49828' '#50724#47480#51901#48260#53948' '#53364#47533#51004#47196' '#54869#51064#54624#49688' ' +
            #51080#49845#45768#45796'.'
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = 13483435
          Style.TextColor = 16744448
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorY = 32
        end
        object cxLabel2: TcxLabel
          Left = 6
          Top = 6
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
          Width = 75
          AnchorX = 44
          AnchorY = 19
        end
        object cxLabel4: TcxLabel
          Left = 6
          Top = 33
          AutoSize = False
          Caption = #44592' '#44036
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 26
          Width = 75
          AnchorX = 44
          AnchorY = 46
        end
      end
      object GridA2: TcxGrid
        Left = 0
        Top = 65
        Width = 1156
        Height = 619
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = False
        LookAndFeel.NativeStyle = False
        object GridA2View: TcxGridDBTableView
          PopupMenu = PopupMenuA1
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
              Column = GridA2ViewColumn3
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.OnSortingChanged = GridA2ViewDataControllerSortingChanged
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnMoving = False
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 22
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 23
          OnColumnHeaderClick = GridA2ViewColumnHeaderClick
          object GridA2ViewColumn8: TcxGridDBColumn
            DataBinding.FieldName = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 48
          end
          object GridA2ViewColumn9: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 135
          end
          object GridA2ViewColumn6: TcxGridDBColumn
            DataBinding.FieldName = #51077#47141#51068
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 132
          end
          object GridA2ViewColumn5: TcxGridDBColumn
            DataBinding.FieldName = #51077#47141#51088
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 132
          end
          object GridA2ViewColumn2: TcxGridDBColumn
            DataBinding.FieldName = #51077#52636#44552#51333#47448
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 120
          end
          object GridA2ViewColumn3: TcxGridDBColumn
            DataBinding.FieldName = #44552#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 102
          end
          object GridA2ViewColumn4: TcxGridDBColumn
            DataBinding.FieldName = #51092#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 102
          end
          object GridA2ViewColumn7: TcxGridDBColumn
            DataBinding.FieldName = #47700#47784
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 202
          end
          object GridA2ViewColumn1: TcxGridDBColumn
            DataBinding.FieldName = #51217#49688#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 89
          end
        end
        object GridA2Level: TcxGridLevel
          GridView = GridA2View
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Tag = 603
      Caption = #50724#45908#51221#49328
      ImageIndex = 2
      object Shape9: TShape
        Left = 0
        Top = 63
        Width = 1156
        Height = 2
        Align = alTop
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitTop = 71
        ExplicitWidth = 995
      end
      object cxGroupBox4: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        ParentBackground = False
        ParentColor = False
        Style.BorderStyle = ebsFlat
        Style.Color = clBtnFace
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 63
        Width = 1156
        object lblSosokNameA3: TcxLabel
          Left = 78
          Top = 6
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
          Width = 327
          AnchorX = 242
          AnchorY = 19
        end
        object cxDtStartA3: TcxDateEdit
          Left = 78
          Top = 33
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.DateButtons = [btnNow, btnToday]
          Properties.DateOnError = deToday
          Properties.InputKind = ikStandard
          Properties.SaveTime = False
          Properties.ShowTime = False
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
          TabOrder = 1
          Height = 26
          Width = 90
        end
        object cxLabel8: TcxLabel
          Left = 217
          Top = 33
          AutoSize = False
          Caption = '~'
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 26
          Width = 20
          AnchorX = 227
          AnchorY = 46
        end
        object cxDtEndA3: TcxDateEdit
          Left = 234
          Top = 33
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.DateButtons = [btnNow, btnToday]
          Properties.DateOnError = deToday
          Properties.InputKind = ikStandard
          Properties.SaveTime = False
          Properties.ShowTime = False
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
        object btnSearchA3: TcxButton
          Left = 1074
          Top = 7
          Width = 78
          Height = 50
          Cursor = crHandPoint
          Caption = #44160#49353
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 4
          OnClick = btnSearchA3Click
        end
        object btnExcelA3: TcxButton
          Left = 1153
          Top = 7
          Width = 78
          Height = 50
          Cursor = crHandPoint
          Caption = #50641#49472
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 5
          OnClick = btnExcelA3Click
        end
        object btnDateA3: TcxButton
          Left = 377
          Top = 34
          Width = 28
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
          TabOrder = 6
        end
        object cxTeStartA3: TcxTimeEdit
          Left = 165
          Top = 33
          AutoSize = False
          EditValue = 0.375d
          Properties.TimeFormat = tfHourMin
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
          Width = 55
        end
        object cxTeEndA3: TcxTimeEdit
          Left = 321
          Top = 33
          AutoSize = False
          EditValue = 0.375d
          Properties.TimeFormat = tfHourMin
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
          Width = 55
        end
        object cxLabel10: TcxLabel
          Left = 533
          Top = 12
          Caption = 
            #8251' 1. '#51648#49324#44592#51456#51004#47196#47564' '#51312#54924' '#44032#45733#54633#45768#45796'.'#13#10'   2. '#45817#51068' '#50724#45908#45716' '#51312#54924#54624#49688' '#50630#49845#45768#45796'.'#13#10'   3. '#47560#50864#49828' '#50724#47480#51901#48260#53948 +
            ' '#53364#47533#51004#47196' '#50724#45908#51221#48372', '#50724#45908#49345#49464#45236#50669#51012' '#48380#49688#51080#49845#45768#45796'.'
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = 13483435
          Style.TextColor = 16744448
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorY = 32
        end
        object cxLabel7: TcxLabel
          Left = 6
          Top = 6
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
          Width = 75
          AnchorX = 44
          AnchorY = 19
        end
        object cxLabel9: TcxLabel
          Left = 6
          Top = 33
          AutoSize = False
          Caption = #44592' '#44036
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 26
          Width = 75
          AnchorX = 44
          AnchorY = 46
        end
      end
      object GridA3: TcxGrid
        Left = 0
        Top = 65
        Width = 1156
        Height = 619
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = False
        LookAndFeel.NativeStyle = False
        object GridA3View: TcxGridDBTableView
          PopupMenu = PopupMenuA1
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
          DataController.DataModeController.SmartRefresh = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA3ViewColumn10
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA3ViewColumn11
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA3ViewColumn12
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA3ViewColumn13
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA3ViewColumn20
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA3ViewColumn21
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA3ViewColumn22
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.OnSortingChanged = GridA3ViewDataControllerSortingChanged
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 22
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 23
          OnColumnHeaderClick = GridA3ViewColumnHeaderClick
          object GridA3ViewColumn18: TcxGridDBColumn
            DataBinding.FieldName = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object GridA3ViewColumn1: TcxGridDBColumn
            DataBinding.FieldName = #45216#51676
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 125
          end
          object GridA3ViewColumn2: TcxGridDBColumn
            DataBinding.FieldName = #48156#51452#48376#49324
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 105
          end
          object GridA3ViewColumn3: TcxGridDBColumn
            DataBinding.FieldName = #48156#51452#51648#49324
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 104
          end
          object GridA3ViewColumn4: TcxGridDBColumn
            DataBinding.FieldName = #49688#51452#48376#49324
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 108
          end
          object GridA3ViewColumn5: TcxGridDBColumn
            DataBinding.FieldName = #49688#51452#51648#49324
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object GridA3ViewColumn6: TcxGridDBColumn
            DataBinding.FieldName = #44277#50976#44396#48516
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 62
          end
          object GridA3ViewColumn7: TcxGridDBColumn
            DataBinding.FieldName = #45824#54364#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 85
          end
          object GridA3ViewColumn8: TcxGridDBColumn
            DataBinding.FieldName = #52636#48156#51648
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 102
          end
          object GridA3ViewColumn9: TcxGridDBColumn
            DataBinding.FieldName = #46020#52265#51648
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 99
          end
          object GridA3ViewColumn10: TcxGridDBColumn
            DataBinding.FieldName = #51060#50857#44552#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 83
          end
          object GridA3ViewColumn11: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#49688#49688#47308
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 85
          end
          object GridA3ViewColumn22: TcxGridDBColumn
            DataBinding.FieldName = #44256#50857#48372#54744#47308
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 65
          end
          object GridA3ViewColumn12: TcxGridDBColumn
            DataBinding.FieldName = #49688#49688#47308'('#44277#50857#52880#49772')'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 101
          end
          object GridA3ViewColumn20: TcxGridDBColumn
            DataBinding.FieldName = #49688#49688#47308'('#51088#52404#52880#49772')'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            Properties.ReadOnly = True
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 101
          end
          object GridA3ViewColumn13: TcxGridDBColumn
            DataBinding.FieldName = #51221#49328#44552#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 81
          end
          object GridA3ViewColumn21: TcxGridDBColumn
            DataBinding.FieldName = #49688#51061#44552
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            Properties.ReadOnly = True
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 82
          end
          object GridA3ViewColumn19: TcxGridDBColumn
            DataBinding.FieldName = #51221#49328#48708#50984
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 54
          end
          object GridA3ViewColumn14: TcxGridDBColumn
            DataBinding.FieldName = #50868#54665#44592#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object GridA3ViewColumn15: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#49324#48264
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 60
          end
          object GridA3ViewColumn16: TcxGridDBColumn
            DataBinding.FieldName = #51217#49688#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 59
          end
          object GridA3ViewColumn17: TcxGridDBColumn
            DataBinding.FieldName = #44277#50976#52264#49688
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 54
          end
          object cxColGrid4ViewColumn22: TcxGridDBColumn
            DataBinding.FieldName = #48176#52264#54805#49885
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
          end
        end
        object GridA3Level: TcxGridLevel
          GridView = GridA3View
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Tag = 604
      Caption = #51648#49324#52649#51204#45236#50669
      ImageIndex = 3
      object Shape13: TShape
        Left = 0
        Top = 63
        Width = 1156
        Height = 2
        Align = alTop
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitTop = 71
        ExplicitWidth = 995
      end
      object cxGroupBox5: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        ParentBackground = False
        ParentColor = False
        Style.BorderStyle = ebsFlat
        Style.Color = clBtnFace
        TabOrder = 0
        Height = 63
        Width = 1156
        object lblSosokNameA4: TcxLabel
          Left = 78
          Top = 6
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
          Width = 324
          AnchorX = 240
          AnchorY = 19
        end
        object cxDtStartA4: TcxDateEdit
          Left = 78
          Top = 33
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.DateButtons = [btnNow, btnToday]
          Properties.DateOnError = deToday
          Properties.InputKind = ikStandard
          Properties.SaveTime = False
          Properties.ShowTime = False
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
          TabOrder = 1
          Height = 26
          Width = 90
        end
        object cxLabel12: TcxLabel
          Left = 217
          Top = 33
          AutoSize = False
          Caption = '~'
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 26
          Width = 20
          AnchorX = 227
          AnchorY = 46
        end
        object cxDtEndA4: TcxDateEdit
          Left = 234
          Top = 33
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.DateButtons = [btnNow, btnToday]
          Properties.DateOnError = deToday
          Properties.InputKind = ikStandard
          Properties.SaveTime = False
          Properties.ShowTime = False
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
        object btnSearchA4: TcxButton
          Left = 1074
          Top = 7
          Width = 78
          Height = 50
          Cursor = crHandPoint
          Caption = #44160#49353
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 4
          OnClick = btnSearchA4Click
        end
        object btnExcelA4: TcxButton
          Left = 1153
          Top = 7
          Width = 78
          Height = 50
          Cursor = crHandPoint
          Caption = #50641#49472
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 5
          OnClick = btnExcelA4Click
        end
        object btnDateA4: TcxButton
          Left = 377
          Top = 34
          Width = 28
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
          TabOrder = 6
        end
        object cxTeStartA4: TcxTimeEdit
          Left = 165
          Top = 33
          AutoSize = False
          EditValue = 0.375d
          Properties.TimeFormat = tfHourMin
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
          Width = 55
        end
        object cxTeEndA4: TcxTimeEdit
          Left = 321
          Top = 33
          AutoSize = False
          EditValue = 0.375d
          Properties.TimeFormat = tfHourMin
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
          Width = 55
        end
        object cxSEdtA4: TcxTextEdit
          Left = 489
          Top = 33
          AutoSize = False
          Properties.ImeMode = imSAlpha
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          Height = 26
          Width = 91
        end
        object cxLabel14: TcxLabel
          Left = 417
          Top = 33
          AutoSize = False
          Caption = #51077#44552#51088'ID'
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 26
          Width = 75
          AnchorX = 455
          AnchorY = 46
        end
        object cxLabel11: TcxLabel
          Left = 6
          Top = 6
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
          Width = 75
          AnchorX = 44
          AnchorY = 19
        end
        object cxLabel13: TcxLabel
          Left = 6
          Top = 33
          AutoSize = False
          Caption = #44592' '#44036
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 26
          Width = 75
          AnchorX = 44
          AnchorY = 46
        end
      end
      object GridA4: TcxGrid
        Left = 0
        Top = 65
        Width = 1156
        Height = 619
        Align = alClient
        TabOrder = 1
        TabStop = False
        LookAndFeel.NativeStyle = False
        object GridA4View: TcxGridDBTableView
          PopupMenu = PopupMenuA1
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
          DataController.DataModeController.SmartRefresh = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA4ViewColumn6
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.OnSortingChanged = GridA4ViewDataControllerSortingChanged
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnMoving = False
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 22
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 23
          OnColumnHeaderClick = GridA4ViewColumnHeaderClick
          object GridA4ViewColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object GridA4ViewColumn8: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 149
          end
          object GridA4ViewColumn2: TcxGridDBColumn
            DataBinding.FieldName = #51068#49884
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 143
          end
          object GridA4ViewColumn3: TcxGridDBColumn
            DataBinding.FieldName = #52649#51204#54637#47785
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 127
          end
          object GridA4ViewColumn4: TcxGridDBColumn
            DataBinding.FieldName = #51077#44552#51008#54665#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 83
          end
          object GridA4ViewColumn5: TcxGridDBColumn
            DataBinding.FieldName = #51077#44552#51088
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 69
          end
          object GridA4ViewColumn6: TcxGridDBColumn
            DataBinding.FieldName = #51077#44552#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 99
          end
          object GridA4ViewColumn7: TcxGridDBColumn
            DataBinding.FieldName = #48708#44256
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 382
          end
        end
        object GridA4Level: TcxGridLevel
          GridView = GridA4View
        end
      end
    end
    object cxTabSheet5: TcxTabSheet
      Tag = 605
      Caption = #44592#49324#52649#51204#45236#50669
      ImageIndex = 4
      object Shape18: TShape
        Left = 0
        Top = 63
        Width = 1156
        Height = 2
        Align = alTop
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitTop = 71
        ExplicitWidth = 995
      end
      object cxGroupBox6: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        ParentBackground = False
        ParentColor = False
        Style.BorderStyle = ebsFlat
        Style.Color = clBtnFace
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 63
        Width = 1156
        object lblSosokNameA5: TcxLabel
          Left = 78
          Top = 6
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
          Width = 324
          AnchorX = 240
          AnchorY = 19
        end
        object cxDtStartA5: TcxDateEdit
          Left = 78
          Top = 33
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.DateButtons = [btnNow, btnToday]
          Properties.DateOnError = deToday
          Properties.InputKind = ikStandard
          Properties.SaveTime = False
          Properties.ShowTime = False
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
          TabOrder = 1
          Height = 26
          Width = 90
        end
        object cxLabel16: TcxLabel
          Left = 217
          Top = 33
          AutoSize = False
          Caption = '~'
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 26
          Width = 20
          AnchorX = 227
          AnchorY = 46
        end
        object cxDtEndA5: TcxDateEdit
          Left = 234
          Top = 33
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.DateButtons = [btnNow, btnToday]
          Properties.DateOnError = deToday
          Properties.InputKind = ikStandard
          Properties.SaveTime = False
          Properties.ShowTime = False
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
        object btnSearchA5: TcxButton
          Left = 1074
          Top = 7
          Width = 78
          Height = 50
          Cursor = crHandPoint
          Caption = #44160#49353
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 4
          OnClick = btnSearchA5Click
        end
        object btnExcelA5: TcxButton
          Left = 1153
          Top = 7
          Width = 78
          Height = 50
          Cursor = crHandPoint
          Caption = #50641#49472
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 5
          OnClick = btnExcelA5Click
        end
        object btnDateA5: TcxButton
          Left = 377
          Top = 34
          Width = 28
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
          TabOrder = 6
        end
        object cxTeStartA5: TcxTimeEdit
          Left = 165
          Top = 33
          AutoSize = False
          EditValue = 0.375d
          Properties.TimeFormat = tfHourMin
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
          Width = 55
        end
        object cxTeEndA5: TcxTimeEdit
          Left = 321
          Top = 33
          AutoSize = False
          EditValue = 0.375d
          Properties.TimeFormat = tfHourMin
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
          Width = 55
        end
        object cxSEdtA5: TcxTextEdit
          Left = 533
          Top = 33
          AutoSize = False
          Properties.ImeMode = imSAlpha
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          Height = 26
          Width = 91
        end
        object cxLabel18: TcxLabel
          Left = 413
          Top = 33
          AutoSize = False
          Caption = #51077#44552#51088
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 26
          Width = 75
          AnchorX = 451
          AnchorY = 46
        end
        object cxCb1A5: TcxComboBox
          Left = 700
          Top = 33
          TabStop = False
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404
            #51077#44552
            #48372#51221#51077#47141
            #51088#52404#52880#49772
            #44592#49324#50640#49569#44552)
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 11
          Height = 26
          Width = 112
        end
        object cxLabel19: TcxLabel
          Left = 628
          Top = 33
          AutoSize = False
          Caption = #44396' '#48516
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 26
          Width = 75
          AnchorX = 666
          AnchorY = 46
        end
        object cxCbA5: TcxComboBox
          Left = 485
          Top = 33
          TabStop = False
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'ID'
            #51060#47492)
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 13
          Height = 26
          Width = 51
        end
        object cxLabel15: TcxLabel
          Left = 6
          Top = 6
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
          Width = 75
          AnchorX = 44
          AnchorY = 19
        end
        object cxLabel17: TcxLabel
          Left = 6
          Top = 33
          AutoSize = False
          Caption = #44592' '#44036
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 26
          Width = 75
          AnchorX = 44
          AnchorY = 46
        end
        object cxLabel50: TcxLabel
          Left = 818
          Top = 32
          AutoSize = False
          Caption = #47700#47784#44160#49353
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 26
          Width = 75
          AnchorX = 856
          AnchorY = 45
        end
        object cxSEdt1A5: TcxTextEdit
          Left = 890
          Top = 32
          AutoSize = False
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 17
          Height = 26
          Width = 127
        end
      end
      object GridA5: TcxGrid
        Left = 0
        Top = 65
        Width = 1156
        Height = 619
        Align = alClient
        TabOrder = 1
        TabStop = False
        LookAndFeel.NativeStyle = False
        object GridA5View: TcxGridDBTableView
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
              Column = GridA5ViewColumn5
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA5ViewColumn6
            end
            item
              Format = ',0;-,0'
              Kind = skSum
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.OnSortingChanged = GridA5ViewDataControllerSortingChanged
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnMoving = False
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 22
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 23
          OnColumnHeaderClick = GridA5ViewColumnHeaderClick
          object GridA5ViewColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 46
          end
          object GridA5ViewColumn10: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 122
          end
          object GridA5ViewColumn11: TcxGridDBColumn
            DataBinding.FieldName = #51068#49884
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 128
          end
          object GridA5ViewColumn2: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 116
          end
          object GridA5ViewColumn3: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#49324#48264
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 57
          end
          object GridA5ViewColumn4: TcxGridDBColumn
            DataBinding.FieldName = #52649#51204#54637#47785
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 97
          end
          object GridA5ViewColumn5: TcxGridDBColumn
            Caption = #44277#50857#52880#49772
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 88
          end
          object GridA5ViewColumn6: TcxGridDBColumn
            DataBinding.FieldName = #51088#52404#52880#49772
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 83
          end
          object GridA5ViewColumn7: TcxGridDBColumn
            DataBinding.FieldName = #51077#44552#51008#54665#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 95
          end
          object GridA5ViewColumn8: TcxGridDBColumn
            DataBinding.FieldName = #51077#44552#51088
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 111
          end
          object GridA5ViewColumn9: TcxGridDBColumn
            DataBinding.FieldName = #47700#47784
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 263
          end
        end
        object GridA5Level: TcxGridLevel
          GridView = GridA5View
        end
      end
    end
    object cxTabSheet6: TcxTabSheet
      Tag = 606
      Caption = #44592#49324#49324#50857#47308
      ImageIndex = 5
      object Shape22: TShape
        Left = 0
        Top = 63
        Width = 1156
        Height = 2
        Align = alTop
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitTop = 71
        ExplicitWidth = 995
      end
      object cxGroupBox7: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        ParentBackground = False
        ParentColor = False
        Style.BorderStyle = ebsFlat
        Style.Color = clBtnFace
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 63
        Width = 1156
        object lblSosokNameA6: TcxLabel
          Left = 78
          Top = 6
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
          Width = 321
          AnchorX = 239
          AnchorY = 19
        end
        object btnSearchA6: TcxButton
          Left = 1074
          Top = 7
          Width = 78
          Height = 50
          Cursor = crHandPoint
          Caption = #44160#49353
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 1
          OnClick = btnSearchA6Click
        end
        object btnExcelA6: TcxButton
          Left = 1153
          Top = 7
          Width = 78
          Height = 50
          Cursor = crHandPoint
          Caption = #50641#49472
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 2
          OnClick = btnExcelA6Click
        end
        object cxSEYYA6: TcxSpinEdit
          Left = 78
          Top = 33
          AutoSize = False
          Properties.Alignment.Horz = taRightJustify
          Properties.CanEdit = False
          Properties.MaxValue = 3000.000000000000000000
          Properties.MinValue = 2000.000000000000000000
          Properties.ReadOnly = False
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
          Value = 2008
          Height = 26
          Width = 60
        end
        object cxSEMMA6: TcxSpinEdit
          Left = 135
          Top = 33
          AutoSize = False
          Properties.Alignment.Horz = taRightJustify
          Properties.CanEdit = False
          Properties.MaxValue = 12.000000000000000000
          Properties.MinValue = 1.000000000000000000
          Properties.ReadOnly = False
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
          Value = 12
          Height = 26
          Width = 40
        end
        object cxCBA6: TcxComboBox
          Left = 205
          Top = 33
          TabStop = False
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #44592#49324#49324#48264
            #44592#49324#47749
            #51204#54868#48264#54840)
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
          Text = #44592#49324#49324#48264
          Visible = False
          Height = 26
          Width = 83
        end
        object cxSEdtA6: TcxTextEdit
          Left = 285
          Top = 33
          AutoSize = False
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          Visible = False
          Height = 26
          Width = 114
        end
        object cxLabel22: TcxLabel
          Left = 525
          Top = 23
          Caption = #8251' '#51312#54924#46108' '#47785#47197#51012' '#45908#48660#53364#47533#54616#49884#47732'  '#45225#48512#54620' '#44592#49324#47532#49828#53944#47484' '#48372#49892' '#49688' '#51080#49845#45768#45796'.'
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = 13483435
          Style.TextColor = 16744448
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorY = 31
        end
        object cxLabel20: TcxLabel
          Left = 6
          Top = 6
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
          Width = 75
          AnchorX = 44
          AnchorY = 19
        end
        object cxLabel21: TcxLabel
          Left = 6
          Top = 33
          AutoSize = False
          Caption = #51312#54924#45380#50900
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 26
          Width = 75
          AnchorX = 44
          AnchorY = 46
        end
      end
      object GridA6: TcxGrid
        Left = 0
        Top = 65
        Width = 1156
        Height = 619
        Align = alClient
        TabOrder = 1
        TabStop = False
        LookAndFeel.NativeStyle = False
        object GridA6View: TcxGridDBTableView
          PopupMenu = PopupMenuA1
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
          OnCellDblClick = GridA6ViewCellDblClick
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA6ViewColumn7
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA6ViewColumn8
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA6ViewColumn9
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA6ViewColumn10
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA6ViewColumn5
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA6ViewColumn6
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.OnSortingChanged = GridA6ViewDataControllerSortingChanged
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnMoving = False
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 22
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 23
          OnColumnHeaderClick = GridA6ViewColumnHeaderClick
          object GridA6ViewColumn12: TcxGridDBColumn
            DataBinding.FieldName = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 46
          end
          object GridA6ViewColumn1: TcxGridDBColumn
            DataBinding.FieldName = #48376#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 163
          end
          object GridA6ViewColumn2: TcxGridDBColumn
            DataBinding.FieldName = #48376#49324#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Visible = False
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 54
          end
          object GridA6ViewColumn3: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 164
          end
          object GridA6ViewColumn4: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Visible = False
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 54
          end
          object GridA6ViewColumn5: TcxGridDBColumn
            DataBinding.FieldName = #45225#48512#49688#51204#52404
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 97
          end
          object GridA6ViewColumn6: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#45225#48512#49688
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 92
          end
          object GridA6ViewColumn7: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#45225#48512#49688
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 87
          end
          object GridA6ViewColumn8: TcxGridDBColumn
            DataBinding.FieldName = #45225#48512#50529'('#44592#49324')'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 111
          end
          object GridA6ViewColumn9: TcxGridDBColumn
            DataBinding.FieldName = #45225#48512#50529'('#51648#49324')'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 109
          end
          object GridA6ViewColumn10: TcxGridDBColumn
            DataBinding.FieldName = #45225#48512#50529#54633#44228
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 102
          end
        end
        object GridA6Level: TcxGridLevel
          GridView = GridA6View
        end
      end
    end
    object cxTabSheet7: TcxTabSheet
      Tag = 607
      Caption = #44277#50976#53084#51221#49328
      ImageIndex = 6
      object Shape26: TShape
        Left = 0
        Top = 63
        Width = 1156
        Height = 2
        Align = alTop
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitTop = 71
        ExplicitWidth = 995
      end
      object cxGroupBox8: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        ParentBackground = False
        ParentColor = False
        Style.BorderStyle = ebsFlat
        Style.Color = clBtnFace
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 63
        Width = 1156
        object lblSosokNameA7: TcxLabel
          Left = 78
          Top = 6
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
          Width = 321
          AnchorX = 239
          AnchorY = 19
        end
        object cxDtStartA7: TcxDateEdit
          Left = 78
          Top = 33
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.DateButtons = [btnNow, btnToday]
          Properties.DateOnError = deToday
          Properties.InputKind = ikStandard
          Properties.SaveTime = False
          Properties.ShowTime = False
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
          TabOrder = 1
          Height = 26
          Width = 90
        end
        object cxDtEndA7: TcxDateEdit
          Left = 212
          Top = 33
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.DateButtons = [btnNow, btnToday]
          Properties.DateOnError = deToday
          Properties.InputKind = ikStandard
          Properties.SaveTime = False
          Properties.ShowTime = False
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
          TabOrder = 2
          Height = 26
          Width = 90
        end
        object btnSearchA7: TcxButton
          Left = 1074
          Top = 7
          Width = 78
          Height = 50
          Cursor = crHandPoint
          Caption = #44160#49353
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 3
          OnClick = btnSearchA7Click
        end
        object btnExcelA7: TcxButton
          Left = 1153
          Top = 7
          Width = 78
          Height = 50
          Cursor = crHandPoint
          Caption = #50641#49472
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 4
          OnClick = btnExcelA7Click
        end
        object btnDateA7: TcxButton
          Left = 336
          Top = 33
          Width = 28
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
          TabOrder = 5
        end
        object cxLabel26: TcxLabel
          Left = 411
          Top = 6
          AutoSize = False
          Caption = '  '#44277#50976#52264#49688
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 26
          Width = 646
          AnchorY = 19
        end
        object cxCBChk1A7: TcxCheckBox
          Left = 590
          Top = 10
          TabStop = False
          Caption = '1'#52264
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 7
          Transparent = True
          OnClick = cxCBChk0A7Click
        end
        object cxCBChk2A7: TcxCheckBox
          Left = 641
          Top = 10
          TabStop = False
          Caption = '2'#52264
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 8
          Transparent = True
          OnClick = cxCBChk0A7Click
        end
        object cxCBChk3A7: TcxCheckBox
          Left = 691
          Top = 10
          TabStop = False
          Caption = '3'#52264
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 9
          Transparent = True
          OnClick = cxCBChk0A7Click
        end
        object cxCBChk4A7: TcxCheckBox
          Left = 742
          Top = 10
          TabStop = False
          Caption = '4'#52264
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 10
          Transparent = True
          OnClick = cxCBChk0A7Click
        end
        object cxCBChk5A7: TcxCheckBox
          Left = 792
          Top = 10
          TabStop = False
          Caption = '5'#52264
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 11
          Transparent = True
          OnClick = cxCBChk0A7Click
        end
        object cxCBChk6A7: TcxCheckBox
          Left = 842
          Top = 10
          TabStop = False
          Caption = '6'#52264
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 12
          Transparent = True
          OnClick = cxCBChk0A7Click
        end
        object cxCBChk7A7: TcxCheckBox
          Left = 893
          Top = 10
          TabStop = False
          Caption = '7'#52264
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 13
          Transparent = True
          OnClick = cxCBChk0A7Click
        end
        object cxCBChk8A7: TcxCheckBox
          Left = 943
          Top = 10
          TabStop = False
          Caption = '8'#52264
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 14
          Transparent = True
          OnClick = cxCBChk0A7Click
        end
        object cxCBChk9A7: TcxCheckBox
          Left = 994
          Top = 10
          TabStop = False
          Caption = '9'#52264
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 15
          Transparent = True
          OnClick = cxCBChk0A7Click
        end
        object cxCBChk0A7: TcxCheckBox
          Left = 540
          Top = 10
          TabStop = False
          Caption = '0'#52264
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 16
          Transparent = True
          OnClick = cxCBChk0A7Click
        end
        object cxCBChkA7: TcxCheckBox
          Left = 490
          Top = 10
          TabStop = False
          Caption = #51204#52404
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 17
          Transparent = True
          OnClick = cxCBChkA7Click
        end
        object btnHelpA7: TcxButton
          Left = 411
          Top = 33
          Width = 80
          Height = 24
          Cursor = crHandPoint
          Caption = #51060#50857#50504#45236
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 18
          TabStop = False
          OnClick = btnHelpA7Click
        end
        object cxLabel27: TcxLabel
          Left = 637
          Top = 32
          Caption = #8251' '#48376#49324#44288#47532#51088#45716' '#48376#49324#44592#51456', '#51648#49324#44592#51456' '#51312#54924#44032#45733#13#10'   '#51648#49324#44288#47532#51088', '#49345#45812#50896#51008' '#51648#49324#44592#51456' '#51312#54924#44032#45733
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = 13483435
          Style.TextColor = 16744448
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorY = 46
        end
        object cxLabel98: TcxLabel
          Left = 165
          Top = 33
          AutoSize = False
          Caption = '09:00 ~'
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 26
          Width = 50
          AnchorX = 190
          AnchorY = 46
        end
        object cxLabel99: TcxLabel
          Left = 299
          Top = 33
          AutoSize = False
          Caption = '09:00'
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 26
          Width = 35
          AnchorX = 317
          AnchorY = 46
        end
        object cxLabel23: TcxLabel
          Left = 6
          Top = 6
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
          Width = 75
          AnchorX = 44
          AnchorY = 19
        end
        object cxLabel25: TcxLabel
          Left = 6
          Top = 33
          AutoSize = False
          Caption = #44592' '#44036
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 26
          Width = 75
          AnchorX = 44
          AnchorY = 46
        end
      end
      object GridA7: TcxGrid
        Left = 0
        Top = 65
        Width = 1156
        Height = 619
        Align = alClient
        PopupMenu = PopupMenuA1
        TabOrder = 1
        TabStop = False
        LookAndFeel.NativeStyle = False
        object GridA7View: TcxGridDBTableView
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
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.OnSortingChanged = GridA7ViewDataControllerSortingChanged
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 22
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 23
          Styles.OnGetContentStyle = GridA7ViewStylesGetContentStyle
          OnColumnHeaderClick = GridA7ViewColumnHeaderClick
          OnColumnPosChanged = GridA7ViewColumnPosChanged
          object GridA7ViewColumn1: TcxGridDBColumn
            DataBinding.FieldName = #53440#51077
            PropertiesClassName = 'TcxLabelProperties'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.CellMerging = True
            Width = 90
          end
          object GridA7ViewColumn8: TcxGridDBColumn
            DataBinding.FieldName = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 52
          end
          object GridA7ViewColumn11: TcxGridDBColumn
            DataBinding.FieldName = #50672#54633#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 130
          end
          object GridA7ViewColumn2: TcxGridDBColumn
            DataBinding.FieldName = #48376#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 138
          end
          object GridA7ViewColumn3: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 147
          end
          object GridA7ViewColumn7: TcxGridDBColumn
            DataBinding.FieldName = #48156#51452#48708
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 93
          end
          object GridA7ViewColumn9: TcxGridDBColumn
            DataBinding.FieldName = #51221#49328#48708#50984
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 58
          end
          object GridA7ViewColumn5: TcxGridDBColumn
            DataBinding.FieldName = #50868#54665#50836#44552
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 93
          end
          object GridA7ViewColumn6: TcxGridDBColumn
            DataBinding.FieldName = #49688#49688#47308
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 93
          end
          object GridA7ViewColumn12: TcxGridDBColumn
            DataBinding.FieldName = #49688#49688#47308'0'#50896' '#50868#54665#50836#44552
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            HeaderAlignmentHorz = taCenter
            Width = 120
          end
          object GridA7ViewColumn4: TcxGridDBColumn
            DataBinding.FieldName = #44148#49688
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 75
          end
          object GridA7ViewColumn10: TcxGridDBColumn
            DataBinding.FieldName = #49688#49688#47308'0'#50896' '#44148#49688
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object GridA7ViewColumn13: TcxGridDBColumn
            DataBinding.FieldName = #44148#49688#54633#44228
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            HeaderAlignmentHorz = taCenter
            Width = 75
          end
        end
        object GridA7Level: TcxGridLevel
          GridView = GridA7View
        end
      end
      object pnlHelpA7: TPanel
        Left = 512
        Top = 352
        Width = 449
        Height = 241
        BevelKind = bkFlat
        BevelOuter = bvNone
        Color = 16316393
        TabOrder = 2
        Visible = False
        DesignSize = (
          445
          237)
        object cxGroupBox9: TcxGroupBox
          Left = 0
          Top = 0
          Align = alClient
          Caption = #51060#50857#50504#45236
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 237
          Width = 445
          object cxLabel28: TcxLabel
            Left = 3
            Top = 14
            Align = alClient
            Caption = 
              #13#10#51221#49328#48708#50984#51008' '#50868#54665' '#50836#44552' '#51473', '#48156#51452#49324#44032' '#50619#51008' '#51060#51061' : '#49688#51452#49324#44032' '#50619#51008' '#51060#51061' '#51077#45768#45796'.'#13#10#13#10#50696') '#50868#54665#50836#44552#51060' 10000'#50896 +
              #51060#44256', 18:1 '#47196' '#51221#49328#48708#50984#51060' '#48372#51060#49888#45796#47732#13#10#13#10'    '#44592#49324#51032' '#49688#49688#47308' : '#50812#51901'+'#50724#47480#51901' ( 18+1 = 19% ) : ' +
              #47564#50896#51032' 19%'#51064' 1900'#50896#13#10'    '#48156#51452#49324' '#49688#51061#44552' : '#50812#51901'        ( 18% )        : '#47564#50896#51032' 18%' +
              #51064' 1800'#50896#13#10'    '#49688#51452#49324' '#49688#51061#44552' : '#50724#47480#51901'      ( 1%  )        : '#47564#50896#51032'  1%'#51064'  100'#50896#13 +
              #10'    '#51593', '#44592#49324#44032' '#45240' 1900'#50896#51012' '#48156#51452#49324#50752' '#49688#51452#49324#44032' '#45208#45600#44032#51652' '#44163#51077#45768#45796'.'#13#10'    '#44592#49324#44032' 2500'#50896#51012' '#49688#49688#47308#47196' '#45240 +
              #45796#47732', 18:7'#47196' '#49688#51452#49324#51032' '#51060#51061#51060' '#45458#50500#51665#45768#45796'.'#13#10'    '#13#10'    '#51060' '#44050#51008' '#51060#51061#44552#47564' '#54364#54788#54616#44592' '#46412#47928#50640', '#44592#49324' '#49688#49688#47308#48372 +
              #45796' '#48156#51452#48708#44032' '#45908' '#47566#50500#49436', '#13#10'    '#49688#51452#49324#44032' '#49552#54644#47484' '#48376' '#44221#50864#50640#45716' 0 '#51004#47196' '#54364#49884#46121#45768#45796'.'
            ParentColor = False
            Style.Color = 15921906
          end
        end
        object BtnClose: TcxButton
          Left = 422
          Top = 21
          Width = 20
          Height = 20
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
          TabOrder = 1
          TabStop = False
          OnClick = BtnCloseClick
        end
      end
      object lb_Title_List: TListBox
        Left = 390
        Top = 141
        Width = 113
        Height = 156
        ImeName = 'Microsoft IME 2003'
        ItemHeight = 12
        Items.Strings = (
          #53440#51077
          'No'
          #50672#54633#47749
          #48376#49324#47749
          #51648#49324#47749
          #48156#51452#48708
          #51221#49328#48708#50984
          #50868#54665#50836#44552
          #49688#49688#47308
          #49688#49688#47308'0'#50896' '#50868#54665#50836#44552
          #44148#49688
          #49688#49688#47308'0'#50896' '#44148#49688
          #44148#49688#54633#44228)
        TabOrder = 3
        Visible = False
      end
    end
    object cxTabSheet8: TcxTabSheet
      Tag = 608
      Caption = #52880#49772#51060#46041
      ImageIndex = 7
      object gbMainA8: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        TabOrder = 0
        Height = 684
        Width = 1156
        object cxGroupBox10: TcxGroupBox
          Left = 3
          Top = 3
          Caption = '  '#8251' '#52636#44552#51648#49324#50640#49436' '#51077#44552#51648#49324#47196' '#49440#53469#54620' '#51648#49324' '#46608#45716' SMS'#52880#49772#47484' '#51060#46041#54633#45768#45796'. '
          Style.BorderColor = clDefault
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 730
          Width = 525
          object chkUseCashMoveDefault: TcxCheckBox
            Left = 278
            Top = 24
            Caption = #44592#48376#52636#44552#51648#49324' '#49440#53469
            ParentBackground = False
            ParentColor = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.LookAndFeel.SkinName = 'Sharp'
            Style.TransparentBorder = True
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 0
            Transparent = True
            OnClick = chkUseCashMoveDefaultClick
          end
          object cxBtnOKLA8: TcxButton
            Left = 278
            Top = 241
            Width = 140
            Height = 27
            Cursor = crHandPoint
            Caption = #54869#51064
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 1
            TabStop = False
            OnClick = cxBtnOKLA8Click
          end
          object cxLabel31: TcxLabel
            Left = 246
            Top = 131
            AutoSize = False
            Caption = '<=='
            ParentColor = False
            Style.BorderColor = 15076287
            Style.BorderStyle = ebsNone
            Style.Color = 12189690
            Style.HotTrack = False
            Style.Shadow = False
            Style.TextColor = 13719147
            Style.TextStyle = [fsBold]
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            Height = 21
            Width = 29
            AnchorY = 142
          end
          object cxLabel32: TcxLabel
            Left = 12
            Top = 243
            AutoSize = False
            Caption = #51060#46041#44552#50529
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 13719147
            Style.TextStyle = [fsBold]
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 101
            AnchorX = 63
            AnchorY = 256
          end
          object cxLabel33: TcxLabel
            Left = 218
            Top = 243
            AutoSize = False
            Caption = '('#50896')'
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 26
            Width = 28
            AnchorX = 232
            AnchorY = 256
          end
          object cxLabel34: TcxLabel
            Left = 12
            Top = 304
            AutoSize = False
            Caption = '* '#51648#49324#44036#51032' '#52880#49772#51060#46041' '#44032#45733#54633#45768#45796'!'#13#10'* '#51648#49324#44036' SMS'#52880#49772#51060#46041' '#44032#45733#54633#45768#45796'!'#13#10'* '#51060#46041#49884' '#52880#49772#47484' '#54869#51064' '#54616#49464#50836'! '
            ParentColor = False
            Style.BorderColor = 15076287
            Style.BorderStyle = ebsNone
            Style.Color = 16774371
            Style.HotTrack = False
            Style.Shadow = False
            Style.TextColor = 13719147
            Style.TextStyle = [fsBold]
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            Height = 48
            Width = 228
            AnchorY = 328
          end
          object cxLabel29: TcxLabel
            Left = 12
            Top = 269
            AutoSize = False
            Caption = #52880#49772#47700#47784
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 13719147
            Style.TextStyle = [fsBold]
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 101
            AnchorX = 63
            AnchorY = 282
          end
          object cxEdtLMoveAmt: TcxCurrencyEdit
            Left = 110
            Top = 243
            AutoSize = False
            EditValue = 0
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0'
            Properties.Nullstring = '0'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 7
            OnKeyUp = cxEdtLMoveAmtKeyUp
            Height = 26
            Width = 111
          end
          object edtCashMoveDefaultBranch: TcxTextEdit
            Left = 277
            Top = 43
            AutoSize = False
            Enabled = False
            TabOrder = 8
            Height = 22
            Width = 237
          end
          object edtCashMoveMemo: TcxTextEdit
            Left = 110
            Top = 269
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Properties.MaxLength = 100
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 9
            Height = 26
            Width = 402
          end
          object Panel1: TPanel
            Left = 12
            Top = 24
            Width = 234
            Height = 40
            BevelOuter = bvNone
            Color = 16774371
            TabOrder = 10
            object cxLabel48: TcxLabel
              Left = 0
              Top = 0
              Align = alClient
              AutoSize = False
              ParentColor = False
              Style.BorderStyle = ebsFlat
              Style.Color = clWhite
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 40
              Width = 234
              AnchorX = 117
              AnchorY = 20
            end
            object cxrbBrCash: TcxRadioButton
              Left = 26
              Top = 11
              Width = 73
              Height = 17
              Caption = #51648#49324#52880#49772
              Checked = True
              TabOrder = 0
              TabStop = True
              LookAndFeel.SkinName = 'Sharp'
              Transparent = True
            end
            object chrbSmsCash: TcxRadioButton
              Left = 137
              Top = 11
              Width = 73
              Height = 17
              Caption = 'SMS'#52880#49772
              TabOrder = 1
              LookAndFeel.SkinName = 'Sharp'
              Transparent = True
            end
          end
          object cxGpCIS: TcxGroupBox
            Left = 12
            Top = 70
            Caption = '  '#8251' '#52880#49772' '#51077#44552' '#48376#49324' '#51648#49324
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            TabOrder = 11
            Height = 159
            Width = 234
            object cxcbCashMoveBrName1: TcxComboBox
              Left = 8
              Top = 44
              AutoSize = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                #51204#52404)
              Properties.OnChange = cxcbCashMoveBrName1PropertiesChange
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
              Text = #51204#52404
              OnClick = cxcbCashMoveBrName1Click
              Height = 23
              Width = 217
            end
            object cxcbCashMoveHdName1: TcxComboBox
              Left = 8
              Top = 19
              AutoSize = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                #51204#52404)
              Properties.OnChange = cxcbCashMoveHdName1PropertiesChange
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
              Text = #51204#52404
              Height = 23
              Width = 217
            end
            object cxLabel35: TcxLabel
              Left = 8
              Top = 93
              AutoSize = False
              Caption = ' '#51648#49324#52880#49772
              ParentColor = False
              Style.BorderStyle = ebsFlat
              Style.Color = clWhite
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 26
              Width = 84
              AnchorX = 50
              AnchorY = 106
            end
            object cxLabel36: TcxLabel
              Left = 8
              Top = 119
              AutoSize = False
              Caption = 'SMS'#52880#49772
              ParentColor = False
              Style.BorderStyle = ebsFlat
              Style.Color = clWhite
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 26
              Width = 84
              AnchorX = 50
              AnchorY = 132
            end
            object cxLblIBrCash: TcxLabel
              Left = 89
              Top = 93
              AutoSize = False
              Caption = ' '#51648#49324#52880#49772
              ParentColor = False
              Style.BorderStyle = ebsUltraFlat
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              Height = 26
              Width = 108
              AnchorX = 197
              AnchorY = 106
            end
            object cxLblISmCash: TcxLabel
              Left = 89
              Top = 119
              AutoSize = False
              Caption = ' '#51648#49324#52880#49772
              ParentColor = False
              Style.BorderStyle = ebsUltraFlat
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              Height = 26
              Width = 108
              AnchorX = 197
              AnchorY = 132
            end
            object cxLabel38: TcxLabel
              Left = 194
              Top = 93
              AutoSize = False
              Caption = '('#50896')'
              ParentColor = False
              Style.BorderStyle = ebsFlat
              Style.Color = clWhite
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 26
              Width = 30
              AnchorX = 209
              AnchorY = 106
            end
            object cxLabel39: TcxLabel
              Left = 194
              Top = 119
              AutoSize = False
              Caption = '('#50896')'
              ParentColor = False
              Style.BorderStyle = ebsFlat
              Style.Color = clWhite
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 26
              Width = 30
              AnchorX = 209
              AnchorY = 132
            end
            object cxLblBrView: TcxLabel
              Left = 8
              Top = 148
              AutoSize = False
              Caption = '  '#51648#49324' '#49440#53469#49884' '#51648#49324#52880#49772', '#13#10#13#10'  SMS'#52880#49772#44032' '#48372#50668#51665#45768#45796'.'
              ParentColor = False
              Style.BorderStyle = ebsOffice11
              Style.Color = 13818344
              Style.HotTrack = False
              Style.LookAndFeel.NativeStyle = False
              Style.TextColor = 13719147
              Style.TextStyle = [fsBold]
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Height = 52
              Width = 218
              AnchorY = 174
            end
            object edtCashMoveBrName1: TcxTextEdit
              Left = 8
              Top = 66
              OnFocusChanged = edtCashMoveBrName1FocusChanged
              AutoSize = False
              Properties.ImeMode = imSHanguel
              Properties.MaxLength = 100
              Properties.OnChange = edtCashMoveBrName1PropertiesChange
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 9
              OnEnter = edtCashMoveBrName1Enter
              OnExit = edtCashMoveBrName1Exit
              OnKeyDown = edtCashMoveBrName1KeyDown
              OnKeyUp = edtCashMoveBrName1KeyUp
              OnMouseDown = edtCashMoveBrName1MouseDown
              Height = 26
              Width = 217
            end
            object lbSearchBranch1: TcxLabel
              Left = 12
              Top = 71
              Cursor = crIBeam
              Caption = #51648#49324#44160#49353
              Style.TextColor = 10329501
              Transparent = True
              OnClick = lbSearchBranch1Click
            end
          end
          object cxGpCOS: TcxGroupBox
            Left = 278
            Top = 70
            Caption = '  '#8251' '#52880#49772' '#52636#44552' '#48376#49324' '#51648#49324
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            TabOrder = 12
            Height = 159
            Width = 234
            object cxcbCashMoveBrName2: TcxComboBox
              Left = 8
              Top = 44
              AutoSize = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                #51204#52404)
              Properties.OnChange = cxcbCashMoveBrName2PropertiesChange
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
              Text = #51204#52404
              OnClick = cxcbCashMoveBrName2Click
              Height = 23
              Width = 217
            end
            object cxcbCashMoveHdName2: TcxComboBox
              Left = 8
              Top = 19
              AutoSize = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                #51204#52404)
              Properties.OnChange = cxcbCashMoveHdName2PropertiesChange
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
              Text = #51204#52404
              Height = 23
              Width = 217
            end
            object cxLblOBrCash: TcxLabel
              Left = 88
              Top = 93
              AutoSize = False
              Caption = ' '#51648#49324#52880#49772
              ParentColor = False
              Style.BorderStyle = ebsUltraFlat
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              Height = 26
              Width = 108
              AnchorX = 196
              AnchorY = 106
            end
            object cxLblOSmCash: TcxLabel
              Left = 88
              Top = 119
              AutoSize = False
              Caption = ' '#51648#49324#52880#49772
              ParentColor = False
              Style.BorderStyle = ebsUltraFlat
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              Height = 26
              Width = 108
              AnchorX = 196
              AnchorY = 132
            end
            object edtCashMoveBrName2: TcxTextEdit
              Tag = 1
              Left = 8
              Top = 66
              OnFocusChanged = edtCashMoveBrName2FocusChanged
              AutoSize = False
              Properties.ImeMode = imSHanguel
              Properties.MaxLength = 100
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 5
              OnEnter = edtCashMoveBrName2Enter
              OnExit = edtCashMoveBrName2Exit
              OnKeyDown = edtCashMoveBrName2KeyDown
              OnKeyUp = edtCashMoveBrName2KeyUp
              OnMouseDown = edtCashMoveBrName2MouseDown
              Height = 26
              Width = 217
            end
            object lbSearchBranch2: TcxLabel
              Left = 14
              Top = 72
              Cursor = crIBeam
              Caption = #51648#49324#44160#49353
              Style.TextColor = 10329501
              Transparent = True
              OnClick = lbSearchBranch2Click
            end
            object cxLabel24: TcxLabel
              Left = 7
              Top = 93
              AutoSize = False
              Caption = ' '#51648#49324#52880#49772
              ParentColor = False
              Style.BorderStyle = ebsFlat
              Style.Color = clWhite
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 26
              Width = 84
              AnchorX = 49
              AnchorY = 106
            end
            object cxLabel40: TcxLabel
              Left = 7
              Top = 119
              AutoSize = False
              Caption = 'SMS'#52880#49772
              ParentColor = False
              Style.BorderStyle = ebsFlat
              Style.Color = clWhite
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 26
              Width = 84
              AnchorX = 49
              AnchorY = 132
            end
            object cxLabel41: TcxLabel
              Left = 193
              Top = 119
              AutoSize = False
              Caption = '('#50896')'
              ParentColor = False
              Style.BorderStyle = ebsFlat
              Style.Color = clWhite
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 26
              Width = 30
              AnchorX = 208
              AnchorY = 132
            end
            object cxLabel42: TcxLabel
              Left = 193
              Top = 93
              AutoSize = False
              Caption = '('#50896')'
              ParentColor = False
              Style.BorderStyle = ebsFlat
              Style.Color = clWhite
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 26
              Width = 30
              AnchorX = 208
              AnchorY = 106
            end
            object cxLblSMView: TcxLabel
              Left = 7
              Top = 146
              AutoSize = False
              Caption = '  '#51648#49324' '#49440#53469#49884' '#51648#49324#52880#49772', '#13#10#13#10'  SMS'#52880#49772#44032' '#48372#50668#51665#45768#45796'.'
              ParentColor = False
              Style.BorderStyle = ebsOffice11
              Style.Color = 13818344
              Style.HotTrack = False
              Style.LookAndFeel.NativeStyle = False
              Style.Shadow = False
              Style.TextColor = 13719147
              Style.TextStyle = [fsBold]
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Height = 55
              Width = 218
              AnchorY = 174
            end
          end
          object lst_BRList1: TcxListBox
            Left = 19
            Top = 404
            Width = 217
            Height = 92
            ImeName = 'Microsoft Office IME 2007'
            ItemHeight = 12
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            StyleFocused.Color = 11796479
            TabOrder = 13
            Visible = False
            OnDblClick = lst_BRList1DblClick
            OnExit = lst_BRList1Exit
            OnKeyDown = lst_BRList1KeyDown
          end
          object lst_BRList2: TcxListBox
            Left = 278
            Top = 406
            Width = 217
            Height = 92
            ImeName = 'Microsoft Office IME 2007'
            ItemHeight = 12
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            StyleFocused.Color = 11796479
            TabOrder = 14
            Visible = False
            OnDblClick = lst_BRList2DblClick
            OnExit = lst_BRList2Exit
            OnKeyDown = lst_BRList2KeyDown
          end
        end
        object cxGroupBox13: TcxGroupBox
          Left = 532
          Top = 3
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Height = 730
          Width = 458
          object cxBtnOKRA8: TcxButton
            Left = 243
            Top = 501
            Width = 142
            Height = 26
            Cursor = crHandPoint
            Caption = #54869#51064
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 0
            TabStop = False
            OnClick = cxBtnOKRA8Click
          end
          object cxEdtRMoveAmt: TcxCurrencyEdit
            Left = 85
            Top = 502
            AutoSize = False
            EditValue = 0
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0'
            Properties.Nullstring = '0'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Height = 26
            Width = 102
          end
          object cxGridA8: TcxGrid
            Left = 12
            Top = 209
            Width = 433
            Height = 259
            TabOrder = 2
            TabStop = False
            LookAndFeel.NativeStyle = False
            object cxBrCashMove: TcxGridBandedTableView
              Navigator.Buttons.CustomButtons = <>
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = ',0;-,0'
                  Kind = skSum
                  Column = cxBrCashMoveColumn3
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.BandMoving = False
              OptionsSelection.UnselectFocusedRecordOnExit = False
              OptionsView.NoDataToDisplayInfoText = ' '
              OptionsView.DataRowHeight = 22
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Header = False
              OptionsView.BandHeaderHeight = 23
              Bands = <
                item
                  Caption = 'No.'
                  Width = 43
                end
                item
                  Caption = #51648#49324#47749
                  Width = 207
                  OnHeaderClick = cxBrCashMoveBands1HeaderClick
                end
                item
                  Caption = #51648#49324#52880#49772
                  Width = 123
                  OnHeaderClick = cxBrCashMoveBands2HeaderClick
                end
                item
                  Caption = #49440#53469
                  Width = 38
                  OnHeaderClick = cxBrCashMoveBands3HeaderClick
                end
                item
                  Caption = #51648#49324#53076#46300
                  Visible = False
                end>
              object cxBrCashMoveColumn1: TcxGridBandedColumn
                Caption = 'No.'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Options.Editing = False
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxBrCashMoveColumn2: TcxGridBandedColumn
                Caption = #51648#49324#47749
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Options.Editing = False
                Position.BandIndex = 1
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxBrCashMoveColumn3: TcxGridBandedColumn
                Caption = #51648#49324#52880#49772
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                FooterAlignmentHorz = taRightJustify
                Options.Editing = False
                Position.BandIndex = 2
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxBrCashMoveColumn4: TcxGridBandedColumn
                Caption = #49440#53469
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.Alignment = taCenter
                Properties.FullFocusRect = True
                Properties.ImmediatePost = True
                Properties.ReadOnly = False
                Properties.ValueChecked = '1'
                Properties.ValueUnchecked = '0'
                Width = 20
                Position.BandIndex = 3
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxBrCashMoveColumn5: TcxGridBandedColumn
                Caption = #51648#49324#53076#46300
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Options.Editing = False
                Position.BandIndex = 4
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxBrCashMove
            end
          end
          object cxLabel44: TcxLabel
            Left = 12
            Top = 39
            AutoSize = False
            Caption = ' '#8251' 20'#49884#51060#54980#51312#51089#44552#51648
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 13719147
            Style.TextStyle = [fsBold]
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 27
            Width = 433
            AnchorY = 53
          end
          object edtCashMoveMultiMemo: TcxTextEdit
            Left = 85
            Top = 528
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Properties.MaxLength = 70
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            Height = 26
            Width = 358
          end
          object Panel2: TPanel
            Left = 17
            Top = 473
            Width = 195
            Height = 27
            BevelOuter = bvNone
            Color = 16774371
            TabOrder = 5
            object cxLabel65: TcxLabel
              Left = 0
              Top = 0
              Align = alClient
              AutoSize = False
              ParentColor = False
              Style.BorderStyle = ebsFlat
              Style.Color = clWhite
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 27
              Width = 195
              AnchorX = 98
              AnchorY = 14
            end
            object cxRBCashM: TcxRadioButton
              Left = 18
              Top = 6
              Width = 67
              Height = 17
              Caption = #52880#49772#51060#46041
              Checked = True
              TabOrder = 0
              TabStop = True
              LookAndFeel.SkinName = 'Sharp'
              Transparent = True
            end
            object cxRBCashB: TcxRadioButton
              Left = 97
              Top = 6
              Width = 82
              Height = 17
              Caption = #52880#49772#54217#51456#54868
              TabOrder = 1
              LookAndFeel.SkinName = 'Sharp'
              Transparent = True
            end
          end
          object PnlSelHdOpt: TPanel
            Left = 12
            Top = 67
            Width = 433
            Height = 25
            BevelOuter = bvNone
            Color = 16774371
            TabOrder = 6
            object cxLabel49: TcxLabel
              Left = 0
              Top = 0
              Align = alClient
              AutoSize = False
              ParentColor = False
              Style.BorderStyle = ebsFlat
              Style.Color = clWhite
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 433
              AnchorX = 217
              AnchorY = 13
            end
            object RB_SelHdOpt1: TcxRadioButton
              Left = 58
              Top = 3
              Caption = #49440#53469' '#48376#49324' '#45236
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = RB_SelHdOpt1Click
              AutoSize = True
              LookAndFeel.SkinName = 'Sharp'
              Transparent = True
            end
            object RB_SelHdOpt2: TcxRadioButton
              Left = 237
              Top = 3
              Caption = #49440#53469' '#48376#49324' '#50808' '#51204#52404
              TabOrder = 1
              OnClick = RB_SelHdOpt1Click
              AutoSize = True
              LookAndFeel.SkinName = 'Sharp'
              Transparent = True
            end
          end
          object cxGpCOM: TcxGroupBox
            Left = 12
            Top = 95
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            TabOrder = 7
            Height = 108
            Width = 433
            object lblCash: TcxLabel
              Left = -1
              Top = -1
              Hint = 'Color'
              AutoSize = False
              ParentColor = False
              Style.BorderStyle = ebsFlat
              Style.Color = 16777139
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 30
              Width = 435
              AnchorX = 217
              AnchorY = 14
            end
            object edtCashMoveBrName3: TcxTextEdit
              Tag = 1
              Left = 226
              Top = 54
              OnFocusChanged = edtCashMoveBrName3FocusChanged
              AutoSize = False
              Properties.ImeMode = imSHanguel
              Properties.MaxLength = 100
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 5
              OnEnter = edtCashMoveBrName3Enter
              OnExit = edtCashMoveBrName3Exit
              OnKeyDown = edtCashMoveBrName3KeyDown
              OnKeyUp = edtCashMoveBrName3KeyUp
              OnMouseDown = edtCashMoveBrName3MouseDown
              Height = 23
              Width = 204
            end
            object cxcbCashMoveBrName4: TcxComboBox
              Left = 9
              Top = 54
              AutoSize = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                #51204#52404)
              Properties.OnChange = cxcbCashMoveBrName4PropertiesChange
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
              Text = #51204#52404
              OnClick = cxcbCashMoveBrName4Click
              Height = 23
              Width = 217
            end
            object cxcbCashMoveHdName4: TcxComboBox
              Left = 9
              Top = 32
              AutoSize = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                #51204#52404)
              Properties.OnChange = cxcbCashMoveHdName4PropertiesChange
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
              Text = #51204#52404
              Height = 23
              Width = 217
            end
            object cxChkSel: TcxCheckBox
              Left = 357
              Top = 86
              Caption = #51204#52404#49440#53469
              Properties.OnChange = cxChkSelPropertiesChange
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 2
              Transparent = True
            end
            object cxLblBrCash: TcxLabel
              Left = 86
              Top = 78
              AutoSize = False
              Caption = ' '#51648#49324#52880#49772
              ParentColor = False
              Style.BorderStyle = ebsUltraFlat
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              Height = 26
              Width = 108
              AnchorX = 194
              AnchorY = 91
            end
            object lbSearchBranch3: TcxLabel
              Left = 232
              Top = 58
              Cursor = crIBeam
              Caption = #51648#49324#44160#49353
              Style.TextColor = 10329501
              Transparent = True
              OnClick = lbSearchBranch3Click
            end
            object rbCashOut: TcxRadioButton
              Left = 58
              Top = 7
              Width = 140
              Height = 17
              Caption = #52880#49772' '#52636#44552' '#48376#49324' '#51648#49324
              Checked = True
              Color = clBtnFace
              ParentColor = False
              TabOrder = 6
              TabStop = True
              OnClick = rbCashOutClick
              LookAndFeel.SkinName = 'Sharp'
              ParentBackground = False
              Transparent = True
            end
            object rbCashIn: TcxRadioButton
              Left = 237
              Top = 7
              Width = 140
              Height = 17
              Caption = #52880#49772' '#51077#44552' '#48376#49324' '#51648#49324
              Color = clBtnFace
              ParentColor = False
              TabOrder = 7
              OnClick = rbCashOutClick
              LookAndFeel.SkinName = 'Sharp'
              ParentBackground = False
              Transparent = True
            end
            object cxLabel43: TcxLabel
              Left = 9
              Top = 78
              AutoSize = False
              Caption = ' '#51648#49324#52880#49772
              ParentColor = False
              Style.BorderStyle = ebsFlat
              Style.Color = clWhite
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 26
              Width = 80
              AnchorX = 49
              AnchorY = 91
            end
            object cxLabel45: TcxLabel
              Left = 191
              Top = 78
              AutoSize = False
              Caption = '('#50896')'
              ParentColor = False
              Style.BorderStyle = ebsFlat
              Style.Color = clWhite
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 26
              Width = 35
              AnchorX = 209
              AnchorY = 91
            end
          end
          object lst_BRList3: TcxListBox
            Left = 182
            Top = 273
            Width = 204
            Height = 92
            ImeName = 'Microsoft Office IME 2007'
            ItemHeight = 12
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            StyleFocused.Color = 11796479
            TabOrder = 8
            Visible = False
            OnDblClick = lst_BRList3DblClick
            OnExit = lst_BRList3Exit
            OnKeyDown = lst_BRList3KeyDown
          end
          object cxLabel63: TcxLabel
            Left = 12
            Top = 5
            Caption = ' '#8251' '#54620#44060#51032' '#51648#49324#50640#49436' '#50668#47084#44060#51032' '#51648#49324#47196' '#46608#45716
            Transparent = True
          end
          object cxLabel64: TcxLabel
            Left = 32
            Top = 21
            Caption = #50668#47084#44060#51032' '#51648#49324#50640#49436' '#54620#44060#51032' '#51648#49324#47196' '#52880#49772#47484' '#46041#49884#50640' '#51060#46041#54633#45768#45796'. '
            Transparent = True
          end
          object cxGroupBox11: TcxGroupBox
            Left = 12
            Top = 557
            Alignment = alTopCenter
            Enabled = False
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.TextColor = 13719147
            Style.IsFontAssigned = True
            TabOrder = 11
            Height = 161
            Width = 433
            object cxMemo1: TcxMemo
              Left = 2
              Top = 6
              Lines.Strings = (
                ' 1. '#52880#49772#51060#46041' '
                '     '#52880#49772' '#52636#44552' - '#49440#53469#51648#49324#50640#49436' '#44033' '#51648#49324#50640' '#51060#46041' '#44552#50529#47564#53372#50473' '#51060#46041#54633#45768#45796'.'
                '     '#52880#49772' '#51077#44552' - '#44033' '#51648#49324#50640#49436' '#51060#46041' '#44552#50529#47564#53372#50473' '#49440#53469#51648#49324#47196' '#51060#46041#54633#45768#45796'.'
                ' 2. '#52880#49772#54217#51456#54868' : '#44033' '#51648#49324#52880#49772#47484' '#51077#47141#50529#51032' '#51092#50529#51004#47196' '#47582#52628#50612' '#48260#47549#45768#45796'.'
                '                    ('#51077#44552' '#46608#45716' '#52636#44552#51060' '#51088#46041#51004#47196' '#52376#47532#46120')'
                ''
                #8251' '#51452#51032') '#50948' '#51312#51089#49884' '#52636#44552#51648#49324#51032' '#52880#49772#44032' '#48512#51313#54616#47732' '#44032#45733#54620' '#51648#49324#44620#51648#47564' '
                '           '#50756#47308' '#54633#45768#45796'. ')
              ParentFont = False
              Properties.ReadOnly = True
              Style.BorderStyle = ebsNone
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = [fsBold]
              Style.TextColor = 13719147
              Style.TransparentBorder = True
              Style.IsFontAssigned = True
              StyleFocused.BorderStyle = ebsNone
              StyleHot.BorderStyle = ebsNone
              TabOrder = 0
              Height = 152
              Width = 428
            end
          end
          object cxLabel30: TcxLabel
            Left = 17
            Top = 502
            AutoSize = False
            Caption = #51060#46041#44552#50529
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 13719147
            Style.TextStyle = [fsBold]
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 71
            AnchorX = 53
            AnchorY = 515
          end
          object cxLabel46: TcxLabel
            Left = 17
            Top = 528
            AutoSize = False
            Caption = #52880#49772#47700#47784
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 13719147
            Style.TextStyle = [fsBold]
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 71
            AnchorX = 53
            AnchorY = 541
          end
          object cxLabel47: TcxLabel
            Left = 184
            Top = 502
            AutoSize = False
            Caption = '('#50896')'
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 26
            Width = 28
            AnchorX = 198
            AnchorY = 515
          end
        end
      end
    end
    object cxTabSheet9: TcxTabSheet
      Tag = 609
      Caption = 'SMS'#52880#49772#52649#51204
      ImageIndex = 8
      object Shape46: TShape
        Left = 0
        Top = 185
        Width = 1156
        Height = 2
        Align = alTop
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitLeft = -16
        ExplicitTop = 193
        ExplicitWidth = 1237
      end
      object cxGBA9: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        ParentBackground = False
        ParentColor = False
        Style.BorderStyle = ebsFlat
        Style.Color = clBtnFace
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 185
        Width = 1156
        object lblSosokNameA9: TcxLabel
          Left = 78
          Top = 6
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
          Width = 534
          AnchorX = 345
          AnchorY = 19
        end
        object cxDtStartA9: TcxDateEdit
          Left = 78
          Top = 153
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.DateButtons = [btnNow, btnToday]
          Properties.DateOnError = deToday
          Properties.InputKind = ikStandard
          Properties.SaveTime = False
          Properties.ShowTime = False
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
          TabOrder = 1
          Height = 26
          Width = 90
        end
        object cxLabel52: TcxLabel
          Left = 223
          Top = 160
          AutoSize = False
          Caption = '~'
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = 16441805
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 12
          AnchorX = 229
          AnchorY = 169
        end
        object cxDtEndA9: TcxDateEdit
          Left = 236
          Top = 153
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.DateButtons = [btnNow, btnToday]
          Properties.DateOnError = deToday
          Properties.InputKind = ikStandard
          Properties.SaveTime = False
          Properties.ShowTime = False
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
        object btnSearchA9: TcxButton
          Left = 410
          Top = 154
          Width = 78
          Height = 24
          Cursor = crHandPoint
          Caption = #44160#49353
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 4
          OnClick = btnSearchA9Click
        end
        object btnExcelA9: TcxButton
          Left = 489
          Top = 154
          Width = 78
          Height = 24
          Cursor = crHandPoint
          Caption = #50641#49472
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 5
          OnClick = btnExcelA9Click
        end
        object btnDateA9: TcxButton
          Left = 378
          Top = 154
          Width = 28
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
          TabOrder = 6
        end
        object cxTeStartA9: TcxTimeEdit
          Left = 165
          Top = 153
          AutoSize = False
          EditValue = 0.375d
          Properties.TimeFormat = tfHourMin
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
          Width = 55
        end
        object cxTeEndA9: TcxTimeEdit
          Left = 323
          Top = 153
          AutoSize = False
          EditValue = 0.375d
          Properties.TimeFormat = tfHourMin
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
          Width = 55
        end
        object cxLabel51: TcxLabel
          Left = 6
          Top = 6
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
          Width = 75
          AnchorX = 44
          AnchorY = 19
        end
        object cxLabel53: TcxLabel
          Left = 6
          Top = 153
          AutoSize = False
          Caption = #44592' '#44036
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 26
          Width = 75
          AnchorX = 44
          AnchorY = 166
        end
        object BtnChargeA9: TcxButton
          Left = 291
          Top = 119
          Width = 104
          Height = 24
          Cursor = crHandPoint
          Caption = #52649#51204
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 11
          TabStop = False
          OnClick = BtnChargeA9Click
        end
        object BtnSearch1A9: TcxButton
          Left = 495
          Top = 41
          Width = 104
          Height = 24
          Cursor = crHandPoint
          Caption = #51312'   '#54924
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 12
          TabStop = False
          OnClick = BtnSearch1A9Click
        end
        object cxLabel54: TcxLabel
          Left = 279
          Top = 40
          AutoSize = False
          Caption = ' '#51648#49324#52880#49772
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 26
          Width = 78
          AnchorX = 318
          AnchorY = 53
        end
        object cxLabel55: TcxLabel
          Left = 6
          Top = 40
          AutoSize = False
          Caption = 'SMS'#52880#49772
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 26
          Width = 78
          AnchorX = 45
          AnchorY = 53
        end
        object cxLabel56: TcxLabel
          Left = 459
          Top = 40
          AutoSize = False
          Caption = '('#50896')'
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 26
          Width = 32
          AnchorX = 475
          AnchorY = 53
        end
        object cxLabel57: TcxLabel
          Left = 186
          Top = 40
          AutoSize = False
          Caption = '('#50896')     <=='
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Height = 26
          Width = 96
          AnchorY = 53
        end
        object cxLabel58: TcxLabel
          Left = 26
          Top = 118
          AutoSize = False
          Caption = 'SMS '#52649#51204#52880#49772
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.TextColor = 13719147
          Style.TextStyle = [fsBold]
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 26
          Width = 116
          AnchorX = 84
          AnchorY = 131
        end
        object cxLabel59: TcxLabel
          Left = 254
          Top = 123
          Caption = '('#50896')'
          Transparent = True
        end
        object cxLabel60: TcxLabel
          Left = 6
          Top = 66
          AutoSize = False
          Caption = '  '#51068#48152' SMS'
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Height = 26
          Width = 485
          AnchorY = 79
        end
        object cxLabel62: TcxLabel
          Left = 497
          Top = 71
          AutoSize = False
          Caption = 
            '* '#52649#51204#52880#49772#45716' '#49707#51088#47564' '#51077#47141#54616#49464#50836#13#10'* '#51648#49324#52880#49772#47484' '#52264#44048#54616#50668' SMS'#52880#49772#47484' '#52649#51204#54633#45768#45796'.'#13#10'* '#51648#49324#52880#49772#47484' '#54869#51064#54616#49884#44256' SMS' +
            #52880#49772#47484' '#52649#51204#54616#49464#50836
          ParentColor = False
          Style.BorderColor = 15076287
          Style.BorderStyle = ebsNone
          Style.Color = 16774371
          Style.HotTrack = False
          Style.Shadow = False
          Style.TextColor = 13719147
          Style.TextStyle = [fsBold]
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 45
          Width = 313
          AnchorY = 94
        end
        object cxLabel66: TcxLabel
          Left = 6
          Top = 92
          AutoSize = False
          Caption = '  '#44305#44256' SMS'
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Height = 26
          Width = 485
          AnchorY = 105
        end
        object cxLblBrCashA9: TcxLabel
          Left = 354
          Top = 40
          AutoSize = False
          Caption = ' '#51648#49324#52880#49772
          ParentColor = False
          Style.BorderStyle = ebsUltraFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Height = 26
          Width = 108
          AnchorX = 462
          AnchorY = 53
        end
        object cxLblSMCashA9: TcxLabel
          Left = 81
          Top = 40
          AutoSize = False
          Caption = ' '#51648#49324#52880#49772
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Height = 26
          Width = 108
          AnchorX = 189
          AnchorY = 53
        end
        object cxLblSMCnt1A9: TcxLabel
          Left = 82
          Top = 71
          Caption = '0 '#50896' / '#44148#45817'  ('#51068#48152'SMS'#47564' '#48372#45244#46412' '#51204#49569#44032#45733#44148#49688' : '#44148')'
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = 13565951
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorY = 79
        end
        object cxLblSMCnt2A9: TcxLabel
          Left = 81
          Top = 98
          Caption = '0 '#50896' / '#44148#45817'  ('#51068#48152'SMS'#47564' '#48372#45244#46412' '#51204#49569#44032#45733#44148#49688' : '#44148')'
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = 13565951
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorY = 106
        end
        object EdtChargeCashA9: TcxCurrencyEdit
          Left = 139
          Top = 118
          AutoSize = False
          EditValue = 0
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0'
          Properties.Nullstring = '0'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 26
          Height = 26
          Width = 115
        end
      end
      object GridA9: TcxGrid
        Left = 0
        Top = 187
        Width = 1156
        Height = 497
        Align = alClient
        TabOrder = 1
        TabStop = False
        LookAndFeel.NativeStyle = False
        object GridA9DBTableView: TcxGridDBTableView
          PopupMenu = PopupMenuA1
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
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.OnSortingChanged = GridA9DBTableViewDataControllerSortingChanged
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnMoving = False
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 22
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 23
          OnColumnHeaderClick = GridA9DBTableViewColumnHeaderClick
          object GridA9DBTableViewColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'No.'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 47
          end
          object GridA9DBTableViewColumn2: TcxGridDBColumn
            DataBinding.FieldName = #51077#47141#51068
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 125
          end
          object GridA9DBTableViewColumn3: TcxGridDBColumn
            DataBinding.FieldName = #52649#51204#51648#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 158
          end
          object GridA9DBTableViewColumn4: TcxGridDBColumn
            DataBinding.FieldName = #52649#51204#51648#49324#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
          object GridA9DBTableViewColumn5: TcxGridDBColumn
            DataBinding.FieldName = #52636#44552#51648#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 181
          end
          object GridA9DBTableViewColumn6: TcxGridDBColumn
            DataBinding.FieldName = #52636#44552#51648#49324#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
          object GridA9DBTableViewColumn7: TcxGridDBColumn
            DataBinding.FieldName = #52649#51204#44552
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '###,##0.#'
            HeaderAlignmentHorz = taCenter
            Width = 84
          end
          object GridA9DBTableViewColumn8: TcxGridDBColumn
            DataBinding.FieldName = #53440#51077
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object GridA9DBTableViewColumn9: TcxGridDBColumn
            DataBinding.FieldName = #50500#51060#46356
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 79
          end
        end
        object GridA9Level: TcxGridLevel
          GridView = GridA9DBTableView
        end
      end
    end
    object cxTabSheet10: TcxTabSheet
      Caption = 'SMS'#52880#49772#51068#44292#52649#51204
      ImageIndex = 9
      object cxGroupBox12: TcxGroupBox
        Left = 0
        Top = 0
        Align = alLeft
        TabOrder = 0
        Height = 684
        Width = 461
        object cxLabel73: TcxLabel
          Left = 38
          Top = 67
          AutoSize = False
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = 13684944
          Style.TextColor = 13719147
          Style.TextStyle = [fsBold]
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 26
          Width = 234
          AnchorX = 155
          AnchorY = 80
        end
        object cxcbCashMoveHdName5: TcxComboBox
          Left = 115
          Top = 38
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404)
          Properties.OnChange = cxcbCashMoveHdName5PropertiesChange
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
          Text = #51204#52404
          Height = 26
          Width = 218
        end
        object cxLabel67: TcxLabel
          Left = 38
          Top = 38
          AutoSize = False
          Caption = #48376#49324#49440#53469
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 26
          Width = 80
          AnchorX = 78
          AnchorY = 51
        end
        object cxLabel68: TcxLabel
          Left = 38
          Top = 90
          AutoSize = False
          Caption = #44552' '#50529
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.TextColor = 13719147
          Style.TextStyle = [fsBold]
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 26
          Width = 96
          AnchorX = 86
          AnchorY = 103
        end
        object EdtChargeCashA9_1: TcxCurrencyEdit
          Left = 131
          Top = 90
          AutoSize = False
          EditValue = 0
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0'
          Properties.Nullstring = '0'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          OnKeyDown = EdtChargeCashA9_1KeyDown
          Height = 26
          Width = 115
        end
        object cxLabel69: TcxLabel
          Left = 243
          Top = 90
          AutoSize = False
          Caption = '('#50896')'
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 26
          Width = 29
          AnchorX = 258
          AnchorY = 103
        end
        object BtnSearch1A10: TcxButton
          Left = 338
          Top = 38
          Width = 59
          Height = 26
          Cursor = crHandPoint
          Caption = #51312#54924
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 5
          TabStop = False
          OnClick = BtnSearch1A10Click
        end
        object BtnApplyA10: TcxButton
          Left = 273
          Top = 69
          Width = 59
          Height = 46
          Cursor = crHandPoint
          Caption = #44552#50529#51201#50857
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 6
          TabStop = False
          OnClick = BtnApplyA10Click
        end
        object BtnChargeA10: TcxButton
          Left = 336
          Top = 69
          Width = 59
          Height = 46
          Cursor = crHandPoint
          Caption = #52649#51204
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 7
          TabStop = False
          OnClick = BtnChargeA10Click
        end
        object GridA10: TcxGrid
          Left = 3
          Top = 144
          Width = 455
          Height = 537
          Align = alBottom
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 8
          TabStop = False
          LookAndFeel.NativeStyle = False
          object GridA10DBTableView: TcxGridBandedTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGridBandedColumn3
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.OnSortingChanged = GridA10DBTableViewDataControllerSortingChanged
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.BandMoving = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.NoDataToDisplayInfoText = ' '
            OptionsView.DataRowHeight = 22
            OptionsView.GroupByBox = False
            OptionsView.Header = False
            OptionsView.BandHeaderHeight = 23
            Bands = <
              item
                Caption = 'No.'
                Width = 40
              end
              item
                Caption = #51648#49324#47749
                Width = 130
                OnHeaderClick = GridA91DBTableViewBands1HeaderClick
              end
              item
                Caption = #51648#49324#52880#49772
                Width = 84
                OnHeaderClick = GridA10DBTableViewBands2HeaderClick
              end
              item
                Caption = 'SMS'#52880#49772
                Width = 80
                OnHeaderClick = GridA10DBTableViewBands3HeaderClick
              end
              item
                Caption = #49440#53469
                Width = 38
              end
              item
                Caption = #44552#50529#51077#47141
                Width = 65
              end
              item
                Caption = #51648#49324#53076#46300
                Visible = False
              end>
            OnCustomDrawBandHeader = GridA10DBTableViewCustomDrawBandHeader
            object cxGridBandedColumn1: TcxGridBandedColumn
              Caption = 'No.'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              MinWidth = 0
              Options.Editing = False
              Width = 1
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn2: TcxGridBandedColumn
              Caption = #51648#49324#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Options.Editing = False
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn3: TcxGridBandedColumn
              Caption = #51648#49324#52880#49772
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn5: TcxGridBandedColumn
              Caption = #51648#49324#53076#46300
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              Options.Editing = False
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn4: TcxGridBandedColumn
              Caption = #49440#53469
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Properties.FullFocusRect = True
              Properties.ImmediatePost = True
              Properties.ReadOnly = False
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              Width = 20
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn6: TcxGridBandedColumn
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              Width = 20
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn7: TcxGridBandedColumn
              Width = 20
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = GridA10DBTableView
          end
        end
        object cxChkSel9: TcxCheckBox
          Left = 335
          Top = 123
          Caption = #51204#52404
          Properties.OnChange = cxCheckBox1PropertiesChange
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 9
          Transparent = True
        end
        object lblSosokNameA10: TcxLabel
          Left = 77
          Top = 6
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
          Width = 378
          AnchorX = 266
          AnchorY = 19
        end
        object cxLabel70: TcxLabel
          Left = 5
          Top = 6
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
          Width = 75
          AnchorX = 43
          AnchorY = 19
        end
        object cxLabel61: TcxLabel
          Left = 38
          Top = 123
          Caption = #8251' '#44033#44033#51032' '#51648#49324#52880#49772#50640#49436' SMS'#52880#49772#47196' '#52649#51204#46121#45768#45796'.'
          Style.TextColor = 16744448
          Transparent = True
        end
        object rbASel: TcxRadioButton
          Left = 67
          Top = 70
          Caption = #51092#50529#54217#51456#54868
          Checked = True
          TabOrder = 13
          TabStop = True
          AutoSize = True
          LookAndFeel.SkinName = 'Sharp'
          Transparent = True
        end
        object rbBSel: TcxRadioButton
          Left = 175
          Top = 70
          Caption = #51068#44292#51077#44552
          TabOrder = 14
          AutoSize = True
          LookAndFeel.SkinName = 'Sharp'
          Transparent = True
        end
      end
      object cxGroupBox14: TcxGroupBox
        Left = 467
        Top = 0
        Align = alClient
        TabOrder = 1
        DesignSize = (
          689
          684)
        Height = 684
        Width = 689
        object cxGroupBox15: TcxGroupBox
          Left = 0
          Top = 0
          Anchors = [akLeft, akTop, akRight]
          ParentBackground = False
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clBtnFace
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 39
          Width = 689
          object cxDtStartA10: TcxDateEdit
            Left = 273
            Top = 7
            AutoSize = False
            BeepOnEnter = False
            EditValue = 0d
            ParentShowHint = False
            Properties.Alignment.Horz = taCenter
            Properties.DateButtons = [btnNow, btnToday]
            Properties.DateOnError = deToday
            Properties.InputKind = ikStandard
            Properties.SaveTime = False
            Properties.ShowTime = False
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
            TabOrder = 0
            Height = 26
            Width = 90
          end
          object cxLabel72: TcxLabel
            Left = 418
            Top = 14
            AutoSize = False
            Caption = '~'
            ParentColor = False
            Style.BorderStyle = ebsNone
            Style.Color = 16441805
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            Height = 17
            Width = 12
            AnchorX = 424
            AnchorY = 23
          end
          object cxDtEndA10: TcxDateEdit
            Left = 431
            Top = 7
            AutoSize = False
            BeepOnEnter = False
            EditValue = 0d
            ParentShowHint = False
            Properties.Alignment.Horz = taCenter
            Properties.DateButtons = [btnNow, btnToday]
            Properties.DateOnError = deToday
            Properties.InputKind = ikStandard
            Properties.SaveTime = False
            Properties.ShowTime = False
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
            TabOrder = 2
            Height = 26
            Width = 90
          end
          object btnSearchA10: TcxButton
            Left = 605
            Top = 8
            Width = 78
            Height = 24
            Cursor = crHandPoint
            Caption = #44160#49353
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 3
            OnClick = btnSearchA10Click
          end
          object btnExcelA10: TcxButton
            Left = 684
            Top = 8
            Width = 78
            Height = 24
            Cursor = crHandPoint
            Caption = #50641#49472
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 4
            OnClick = btnExcelA10Click
          end
          object btnDateA10: TcxButton
            Left = 573
            Top = 8
            Width = 28
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
            TabOrder = 5
          end
          object cxTeStartA10: TcxTimeEdit
            Left = 360
            Top = 7
            AutoSize = False
            EditValue = 0.375d
            Properties.TimeFormat = tfHourMin
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
            Width = 55
          end
          object cxTeEndA10: TcxTimeEdit
            Left = 518
            Top = 7
            AutoSize = False
            EditValue = 0.375d
            Properties.TimeFormat = tfHourMin
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
            Width = 55
          end
          object cxLabel74: TcxLabel
            Left = 216
            Top = 7
            AutoSize = False
            Caption = #44592' '#44036
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 60
            AnchorX = 246
            AnchorY = 20
          end
          object cxLabel71: TcxLabel
            Left = 6
            Top = 7
            AutoSize = False
            Caption = #48376' '#49324
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 60
            AnchorX = 36
            AnchorY = 20
          end
          object lblHdNm: TcxLabel
            Left = 63
            Top = 7
            AutoSize = False
            Caption = #48376' '#49324
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWhite
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 151
            AnchorX = 139
            AnchorY = 20
          end
        end
        object GridA10_1: TcxGrid
          Left = 3
          Top = 41
          Width = 683
          Height = 640
          Align = alBottom
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 1
          TabStop = False
          LookAndFeel.NativeStyle = False
          object GridA10_1DBTableView: TcxGridDBTableView
            PopupMenu = PopupMenuA1
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
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.OnSortingChanged = GridA10_1DBTableViewDataControllerSortingChanged
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnMoving = False
            OptionsData.Editing = False
            OptionsView.NoDataToDisplayInfoText = ' '
            OptionsView.DataRowHeight = 22
            OptionsView.FooterAutoHeight = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 23
            OnColumnHeaderClick = GridA10_1DBTableViewColumnHeaderClick
            object cxGridDBColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'No.'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 47
            end
            object cxGridDBColumn2: TcxGridDBColumn
              DataBinding.FieldName = #51077#47141#51068
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 125
            end
            object cxGridDBColumn3: TcxGridDBColumn
              DataBinding.FieldName = #52649#51204#51648#49324#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 158
            end
            object cxGridDBColumn4: TcxGridDBColumn
              DataBinding.FieldName = #52649#51204#51648#49324#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGridDBColumn5: TcxGridDBColumn
              DataBinding.FieldName = #52636#44552#51648#49324#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 181
            end
            object cxGridDBColumn6: TcxGridDBColumn
              DataBinding.FieldName = #52636#44552#51648#49324#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGridDBColumn7: TcxGridDBColumn
              DataBinding.FieldName = #52649#51204#44552
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '###,##0.#'
              HeaderAlignmentHorz = taCenter
              Width = 84
            end
            object cxGridDBColumn8: TcxGridDBColumn
              DataBinding.FieldName = #53440#51077
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn9: TcxGridDBColumn
              DataBinding.FieldName = #50500#51060#46356
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 79
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = GridA10_1DBTableView
          end
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 461
        Top = 0
        Width = 6
        Height = 684
      end
    end
  end
  object pop_dateA1: TPopupMenu
    AutoHotkeys = maManual
    Left = 116
    Top = 588
    object MiToday: TMenuItem
      Caption = #50724#45720
      OnClick = MiTodayClick
    end
    object MiYesterday: TMenuItem
      Caption = #50612#51228
      OnClick = MiYesterdayClick
    end
    object MiOneWeek: TMenuItem
      Caption = #52572#44540#51068#51452#51068
      OnClick = MiOneWeekClick
    end
    object MiOneMonth: TMenuItem
      Caption = #52572#44540#54620#45804
      OnClick = MiOneMonthClick
    end
    object MiStartMonth: TMenuItem
      Caption = '1'#51068'~'#47568#51068
      OnClick = MiStartMonthClick
    end
  end
  object PopupMenuA1: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = PopupMenuA1Popup
    Left = 38
    Top = 587
    object N1: TMenuItem
      Caption = #50641#49472#45796#50868
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #51648#49324#48324' '#52880#49772#45236#50669
      OnClick = N2Click
    end
    object N11: TMenuItem
      Caption = #44592#49324#48324#54532#47196#44536#47016#49324#50857#45236#50669
      OnClick = N11Click
    end
    object N12: TMenuItem
      Caption = #49888#50857#52852#46300#44208#51116' '#49345#49464#51060#47141#54788#54889
      Visible = False
    end
    object N4: TMenuItem
      Caption = '-'
      Visible = False
    end
    object N5: TMenuItem
      Caption = #50724#45908#51221#48372#48372#44592
      Visible = False
      OnClick = N5Click
    end
    object N6: TMenuItem
      Caption = #50724#45908#49345#49464#45236#50669#48372#44592
      Visible = False
      OnClick = N6Click
    end
    object N7: TMenuItem
      Caption = '-'
      Visible = False
    end
    object N8: TMenuItem
      Caption = #44592#49324#44288#47532#51221#48372#48372#44592
      Visible = False
    end
    object N9: TMenuItem
      Caption = #44592#49324#52649#51204#54616#44592
      Visible = False
    end
    object SMS1: TMenuItem
      Caption = #44592#49324'SMS'#48372#45236#44592
      Visible = False
    end
    object N10: TMenuItem
      Caption = #44592#49324#50640#49569#44552#54616#44592
      Visible = False
    end
    object N13: TMenuItem
      Caption = #53440#51060#53952#52488#44592#54868
      OnClick = N13Click
    end
  end
  object cxSTR01: TcxStyleRepository
    Left = 112
    Top = 643
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clSilver
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 11458510
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet
      Styles.Content = cxStyle1
      Styles.Header = cxStyle2
      BuiltIn = True
    end
  end
end

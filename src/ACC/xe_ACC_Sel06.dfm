object Frm_ACC: TFrm_ACC
  Left = 722
  Top = 103
  BorderStyle = bsNone
  Caption = #51221#49328#44288#47532
  ClientHeight = 716
  ClientWidth = 1003
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 12
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 1003
    Height = 716
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet10
    Properties.CustomButtons.Buttons = <>
    OnChange = cxPageControl1Change
    ClientRectBottom = 710
    ClientRectLeft = 2
    ClientRectRight = 997
    ClientRectTop = 27
    object cxTabSheet1: TcxTabSheet
      Tag = 601
      Caption = #51648#49324#52880#49772#45236#50669
      ImageIndex = 0
      object Panel18: TPanel
        Left = 0
        Top = 0
        Width = 995
        Height = 683
        Align = alClient
        BevelOuter = bvNone
        Color = 16444898
        TabOrder = 0
        object Shape6: TShape
          Left = 0
          Top = 63
          Width = 995
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
          Width = 995
          object Shape2: TShape
            Left = 6
            Top = 7
            Width = 267
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape1: TShape
            Left = 6
            Top = 33
            Width = 376
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object cxLabel218: TcxLabel
            Left = 18
            Top = 11
            Caption = #49548'     '#49549
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 42
            AnchorY = 19
          end
          object lblSosokNameA1: TcxLabel
            Left = 83
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
            Width = 321
            AnchorX = 244
            AnchorY = 19
          end
          object cxDtStartA1: TcxDateEdit
            Left = 83
            Top = 32
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
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Height = 26
            Width = 87
          end
          object cxLabel264: TcxLabel
            Left = 223
            Top = 37
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
            AnchorY = 46
          end
          object cxDtEndA1: TcxDateEdit
            Left = 238
            Top = 32
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
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            Height = 26
            Width = 87
          end
          object btnDateA1: TcxButton
            Left = 376
            Top = 33
            Width = 28
            Height = 24
            Cursor = crHandPoint
            DropDownMenu = pop_dateA1
            Kind = cxbkDropDown
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000D2905C67D49663BF000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
              0000000000000000000000000000000000000000000000000001000000000000
              00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
              000000000000000000000000000000000000000000000000000D000000000000
              0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
              000000000000000000000000000000000000000000000000001800000000FF80
              0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
              000000000000000000000000000000000000000000000000002200000000C774
              30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
              81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002900000000C774
              30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
              81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002B00000000FF80
              0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
              0000000000000000000000000000000000000000000000000028000000000000
              0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
              0000000000000000000000000000000000000000000000000020000000000000
              00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
              0000000000000000000000000000000000000000000000000017000000000000
              0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
              000000000000000000000000000000000000000000000000000C000000000000
              000000000000000000000000000000000000D2905C67D49663BF000000000000
              0000000000000000000000000000000000000000000000000001000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 5
          end
          object cxLabel1: TcxLabel
            Left = 18
            Top = 37
            Caption = #44592'     '#44036
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 42
            AnchorY = 45
          end
          object cxTeStartA1: TcxTimeEdit
            Left = 169
            Top = 32
            AutoSize = False
            EditValue = 0.375d
            Properties.TimeFormat = tfHourMin
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 7
            Height = 26
            Width = 51
          end
          object cxTeEndA1: TcxTimeEdit
            Left = 324
            Top = 32
            AutoSize = False
            EditValue = 0.375d
            Properties.TimeFormat = tfHourMin
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 8
            Height = 26
            Width = 51
          end
          object cxLabel37: TcxLabel
            Left = 413
            Top = 8
            Caption = #8251' '#51312#54924#46108' '#47785#47197#51012' '#45908#48660#53364#47533#54616#49884#47732' '#51648#49324#48324' '#52880#49772#45236#50669#51012' '#54869#51064' '#54624#49688' '#51080#49845#45768#45796'.'
            ParentColor = False
            Style.BorderStyle = ebsNone
            Style.Color = 13483435
            Style.TextColor = clBlue
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
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 12
            TabStop = False
            OnClick = btnHelpA1Click
          end
        end
        object GridA1: TcxGrid
          Left = 0
          Top = 65
          Width = 995
          Height = 618
          Align = alClient
          TabOrder = 1
          TabStop = False
          LookAndFeel.NativeStyle = True
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
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.OnSortingChanged = Grid1ViewDataControllerSortingChanged
            OptionsCustomize.ColumnFiltering = False
            OptionsSelection.CellSelect = False
            OptionsView.NoDataToDisplayInfoText = ' '
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
              Visible = False
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
            object GridA1ViewColumn7: TcxGridDBColumn
              DataBinding.FieldName = #52712#49548#48268#44552'('#44277#50857')'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Moving = False
              Width = 88
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
        Height = 480
        BevelKind = bkFlat
        BevelOuter = bvNone
        Color = 16316393
        TabOrder = 1
        Visible = False
        DesignSize = (
          509
          476)
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
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 476
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
            Style.Color = 15269887
            ExplicitLeft = 2
            ExplicitTop = -1
            ExplicitWidth = 505
            ExplicitHeight = 475
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
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000001511
            93B91C17C2F41B17C3F41C16C2F41A14BFF41914BFF41913BFF41A14BFF41A13
            BEF41A13BEF41B14C1F41812BDF41B14C1F4140F93B90000000019199BB92E2D
            FBFF2423EFFF0B06B6FF201DE5FF2B29FAFF2824F4FF2824F4FF2723F4FF2722
            F4FF2925FCFF130DCEFF0A05B0FF211AEFFF2921FBFF161498B92322D4FE272B
            EFFF1312B1FF6A67BFFF1B1AB0FF1F20E2FF2D2EF4FF282AEDFF2929EEFF2C2D
            F4FF0E0DCAFF3F3CB5FF9090CEFF1210B1FF2321EEFF1F1BD0FE2121C9F4100E
            BBFF918ED3FFFFFFFFFFADAAE0FF100FB2FF1C20E0FF3036F4FF2F35F4FF0D0D
            CEFF3835B8FFECECF8FFFFFFFFFF6A67C6FF0F0DC0FF201ECAF42428D0F41D24
            D7FF433DC3FFEBEAF8FFFFFFFFFFAFADE3FF1D1BB9FF1D24DEFF171CD7FF3934
            BEFFEEEDF9FFFFFFFFFFACAAE4FF1F1BBDFF252CE7FF2221CDF4252AD1F4384F
            FAFF161ED4FF3A32C5FFEDEDF9FFFFFFFFFFD0CEF0FF201FC1FF1E1DC0FFE2E2
            F6FFFFFFFFFFB3B1E8FF1511BFFF232DE5FF3241F7FF2324CDF42228D2F4364F
            F3FF3950F3FF151DD8FF3E35CCFFDEDBF6FFFFFFFFFFCFCDF2FFCFCEF3FFFFFF
            FFFFD4D3F3FF2321C7FF202CE3FF3447F4FF3144F2FF2023D0F4454BD9F43B55
            F3FF334BEFFF3852F4FF1F2ADFFF211DCBFFCDCCF4FFFFFFFFFFFFFFFFFFCDCB
            F4FF2120CDFF2232E3FF354DF4FF2F44EEFF364DF2FF4247D7F46366DFF46E82
            F7FF556AF2FF4862F3FF2B3BE8FF221FD2FFCDCBF3FFFFFFFFFFFFFFFFFFCDCB
            F4FF201DD2FF242FE4FF445DF3FF5366F2FF6A7DF6FF6064DDF46064E1F47388
            F7FF788CF6FF6472F1FF514BE0FFD5D2F7FFFFFFFFFFDCDAF8FFDCDAF8FFFFFF
            FFFFDCDAF8FF655EE2FF575EEAFF7588F6FF6F83F6FF5D62DFF46166E3F47891
            F7FF6779F2FF5550E6FFCAC6F6FFFFFFFFFFE9E8FCFF5851E6FF5954E6FFE0DE
            FAFFFFFFFFFFF6F5FDFF6F69E9FF575FECFF748CF7FF5F64E2F4636AE4F46F82
            F3FF5E59EBFFC2BFF7FFFFFFFFFFF2F1FDFF6E66ECFF5D68EFFF6472F1FF5E57
            EBFFC5C1F8FFFFFFFFFFF1F0FDFF7670ECFF616BF1FF6268E4F4646CE6F45A5C
            EFFF928BF3FFFFFFFFFFF1F0FEFF6F68F0FF5B64EFFF7A92F6FF7A91F6FF6775
            F2FF5551EDFFC3BFF9FFFFFFFFFFAFA8F7FF5857F0FF6165E4F46B74F1FE7A91
            F6FF5A57F0FFAEA8F7FF7771F3FF5F68F2FF7D96F6FF798EF5FF788EF5FF7C94
            F6FF6D7FF4FF5F5BF0FF948CF5FF5956F1FF758BF6FF6972EFFE4E54B0B985A1
            F7FF7C94F6FF5B5BF3FF6975F5FF84A1F8FF8099F7FF7F98F7FF7F98F7FF7E97
            F6FF819CF6FF7588F5FF5C5FF3FF7990F5FF819DF7FF4C53AEB9000000005055
            B1B96970E9F4666CE9F46971E9F4676EE9F4676EE9F4666EE9F4666EE9F4676E
            E9F4666DE9F4676FE9F4676FE9F4676EE9F44E53B0B900000000}
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
        Width = 995
        Height = 2
        Align = alTop
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitTop = 71
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
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 63
        Width = 995
        object Shape3: TShape
          Left = 6
          Top = 7
          Width = 267
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape4: TShape
          Left = 6
          Top = 33
          Width = 376
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxLabel2: TcxLabel
          Left = 18
          Top = 11
          Caption = #49548'     '#49549
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 42
          AnchorY = 19
        end
        object lblSosokNameA2: TcxLabel
          Left = 83
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
          AnchorX = 244
          AnchorY = 19
        end
        object cxDtStartA2: TcxDateEdit
          Left = 83
          Top = 32
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
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Height = 26
          Width = 87
        end
        object cxLabel3: TcxLabel
          Left = 223
          Top = 37
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
          AnchorY = 46
        end
        object cxDtEndA2: TcxDateEdit
          Left = 238
          Top = 32
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
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Height = 26
          Width = 87
        end
        object btnSearchA2: TcxButton
          Left = 828
          Top = 7
          Width = 78
          Height = 50
          Cursor = crHandPoint
          Caption = #44160#49353
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 5
          OnClick = btnSearchA2Click
        end
        object btnExcelA2: TcxButton
          Left = 907
          Top = 7
          Width = 78
          Height = 50
          Cursor = crHandPoint
          Caption = #50641#49472
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 6
          OnClick = btnExcelA2Click
        end
        object btnDateA2: TcxButton
          Left = 376
          Top = 33
          Width = 28
          Height = 24
          Cursor = crHandPoint
          DropDownMenu = pop_dateA1
          Kind = cxbkDropDown
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000D2905C67D49663BF000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
            0000000000000000000000000000000000000000000000000001000000000000
            00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
            000000000000000000000000000000000000000000000000000D000000000000
            0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
            000000000000000000000000000000000000000000000000001800000000FF80
            0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
            000000000000000000000000000000000000000000000000002200000000C774
            30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
            81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002900000000C774
            30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
            81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002B00000000FF80
            0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
            0000000000000000000000000000000000000000000000000028000000000000
            0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
            0000000000000000000000000000000000000000000000000020000000000000
            00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
            0000000000000000000000000000000000000000000000000017000000000000
            0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
            000000000000000000000000000000000000000000000000000C000000000000
            000000000000000000000000000000000000D2905C67D49663BF000000000000
            0000000000000000000000000000000000000000000000000001000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 7
        end
        object cxLabel4: TcxLabel
          Left = 18
          Top = 37
          Caption = #44592'     '#44036
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 42
          AnchorY = 45
        end
        object cxTeStartA2: TcxTimeEdit
          Left = 169
          Top = 32
          AutoSize = False
          EditValue = 0.375d
          Properties.TimeFormat = tfHourMin
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          Height = 26
          Width = 51
        end
        object cxTeEndA2: TcxTimeEdit
          Left = 324
          Top = 32
          AutoSize = False
          EditValue = 0.375d
          Properties.TimeFormat = tfHourMin
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 10
          Height = 26
          Width = 51
        end
        object cxLabel5: TcxLabel
          Left = 417
          Top = 29
          Caption = 
            #8251' '#51312#54924#46108' '#47785#47197' '#51473#50640' '#51217#49688#48264#54840#44032' '#51080#45716' '#45936#51060#53552#45716' '#50724#45908#51221#48372', '#50724#45908#49345#49464#45236#50669#51012#13#10'    '#47560#50864#49828' '#50724#47480#51901#48260#53948' '#53364#47533#51004#47196' '#54869#51064#54624#49688 +
            ' '#51080#49845#45768#45796'.'
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = 13483435
          Style.TextColor = clBlue
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorY = 43
        end
      end
      object GridA2: TcxGrid
        Left = 0
        Top = 65
        Width = 995
        Height = 618
        Align = alClient
        TabOrder = 1
        TabStop = False
        LookAndFeel.NativeStyle = True
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
          OptionsView.HeaderHeight = 22
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
            Caption = #51077#47141#51068
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 132
          end
          object GridA2ViewColumn5: TcxGridDBColumn
            Caption = #51077#47141#51088
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 75
          end
          object GridA2ViewColumn2: TcxGridDBColumn
            Caption = #51077#52636#44552#51333#47448
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 120
          end
          object GridA2ViewColumn3: TcxGridDBColumn
            Caption = #44552#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 102
          end
          object GridA2ViewColumn4: TcxGridDBColumn
            Caption = #51092#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 102
          end
          object GridA2ViewColumn7: TcxGridDBColumn
            Caption = #47700#47784
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 202
          end
          object GridA2ViewColumn1: TcxGridDBColumn
            Caption = #51217#49688#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 54
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
        Width = 995
        Height = 2
        Align = alTop
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitTop = 71
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
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 63
        Width = 995
        object Shape7: TShape
          Left = 6
          Top = 7
          Width = 267
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape8: TShape
          Left = 6
          Top = 33
          Width = 376
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxLabel7: TcxLabel
          Left = 18
          Top = 11
          Caption = #49548'     '#49549
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 42
          AnchorY = 19
        end
        object lblSosokNameA3: TcxLabel
          Left = 83
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
          AnchorX = 244
          AnchorY = 19
        end
        object cxDtStartA3: TcxDateEdit
          Left = 83
          Top = 32
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
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Height = 26
          Width = 87
        end
        object cxLabel8: TcxLabel
          Left = 223
          Top = 37
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
          AnchorY = 46
        end
        object cxDtEndA3: TcxDateEdit
          Left = 238
          Top = 32
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
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Height = 26
          Width = 87
        end
        object btnSearchA3: TcxButton
          Left = 828
          Top = 7
          Width = 78
          Height = 50
          Cursor = crHandPoint
          Caption = #44160#49353
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 5
          OnClick = btnSearchA3Click
        end
        object btnExcelA3: TcxButton
          Left = 907
          Top = 7
          Width = 78
          Height = 50
          Cursor = crHandPoint
          Caption = #50641#49472
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 6
          OnClick = btnExcelA3Click
        end
        object btnDateA3: TcxButton
          Left = 376
          Top = 33
          Width = 28
          Height = 24
          Cursor = crHandPoint
          DropDownMenu = pop_dateA1
          Kind = cxbkDropDown
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000D2905C67D49663BF000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
            0000000000000000000000000000000000000000000000000001000000000000
            00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
            000000000000000000000000000000000000000000000000000D000000000000
            0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
            000000000000000000000000000000000000000000000000001800000000FF80
            0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
            000000000000000000000000000000000000000000000000002200000000C774
            30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
            81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002900000000C774
            30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
            81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002B00000000FF80
            0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
            0000000000000000000000000000000000000000000000000028000000000000
            0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
            0000000000000000000000000000000000000000000000000020000000000000
            00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
            0000000000000000000000000000000000000000000000000017000000000000
            0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
            000000000000000000000000000000000000000000000000000C000000000000
            000000000000000000000000000000000000D2905C67D49663BF000000000000
            0000000000000000000000000000000000000000000000000001000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 7
        end
        object cxLabel9: TcxLabel
          Left = 18
          Top = 37
          Caption = #44592'     '#44036
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 42
          AnchorY = 45
        end
        object cxTeStartA3: TcxTimeEdit
          Left = 169
          Top = 32
          AutoSize = False
          EditValue = 0.375d
          Properties.TimeFormat = tfHourMin
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          Height = 26
          Width = 51
        end
        object cxTeEndA3: TcxTimeEdit
          Left = 324
          Top = 32
          AutoSize = False
          EditValue = 0.375d
          Properties.TimeFormat = tfHourMin
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 10
          Height = 26
          Width = 51
        end
        object cxLabel10: TcxLabel
          Left = 412
          Top = 17
          Caption = 
            #8251' 1. '#51648#49324#44592#51456#51004#47196#47564' '#51312#54924' '#44032#45733#54633#45768#45796'.'#13#10'    2. '#45817#51068' '#50724#45908#45716' '#51312#54924#54624#49688' '#50630#49845#45768#45796'.'#13#10'    3. '#47560#50864#49828' '#50724#47480#51901 +
            #48260#53948' '#53364#47533#51004#47196' '#50724#45908#51221#48372', '#50724#45908#49345#49464#45236#50669#51012' '#48380#49688#51080#49845#45768#45796'.'
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = 13483435
          Style.TextColor = clBlue
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorY = 37
        end
      end
      object GridA3: TcxGrid
        Left = 0
        Top = 65
        Width = 995
        Height = 618
        Align = alClient
        TabOrder = 1
        TabStop = False
        LookAndFeel.NativeStyle = True
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
          OptionsView.HeaderHeight = 22
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
            Caption = #45216#51676
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 125
          end
          object GridA3ViewColumn2: TcxGridDBColumn
            Caption = #48156#51452#48376#49324
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 105
          end
          object GridA3ViewColumn3: TcxGridDBColumn
            Caption = #48156#51452#51648#49324
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 104
          end
          object GridA3ViewColumn4: TcxGridDBColumn
            Caption = #49688#51452#48376#49324
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 108
          end
          object GridA3ViewColumn5: TcxGridDBColumn
            Caption = #49688#51452#51648#49324
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object GridA3ViewColumn6: TcxGridDBColumn
            Caption = #44277#50976#44396#48516
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 62
          end
          object GridA3ViewColumn7: TcxGridDBColumn
            Caption = #45824#54364#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 85
          end
          object GridA3ViewColumn8: TcxGridDBColumn
            Caption = #52636#48156#51648
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 102
          end
          object GridA3ViewColumn9: TcxGridDBColumn
            Caption = #46020#52265#51648
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 99
          end
          object GridA3ViewColumn10: TcxGridDBColumn
            Caption = #51060#50857#44552#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 83
          end
          object GridA3ViewColumn11: TcxGridDBColumn
            Caption = #44592#49324#49688#49688#47308
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 85
          end
          object GridA3ViewColumn12: TcxGridDBColumn
            Caption = #49688#49688#47308'('#44277#50857#52880#49772')'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object GridA3ViewColumn20: TcxGridDBColumn
            Caption = #49688#49688#47308'('#51088#52404#52880#49772')'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            Properties.ReadOnly = True
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object GridA3ViewColumn13: TcxGridDBColumn
            Caption = #51221#49328#44552#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 81
          end
          object GridA3ViewColumn21: TcxGridDBColumn
            Caption = #49688#51061#44552
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
            Caption = #50868#54665#44592#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 74
          end
          object GridA3ViewColumn15: TcxGridDBColumn
            Caption = #44592#49324#49324#48264
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 60
          end
          object GridA3ViewColumn16: TcxGridDBColumn
            Caption = #51217#49688#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 59
          end
          object GridA3ViewColumn17: TcxGridDBColumn
            Caption = #44277#50976#52264#49688
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 54
          end
          object cxColGrid4ViewColumn22: TcxGridDBColumn
            Caption = #48176#52264#54805#49885
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
        Width = 995
        Height = 2
        Align = alTop
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitTop = 71
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
        Width = 995
        object Shape10: TShape
          Left = 6
          Top = 7
          Width = 267
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape11: TShape
          Left = 6
          Top = 33
          Width = 376
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape12: TShape
          Left = 410
          Top = 33
          Width = 87
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxLabel11: TcxLabel
          Left = 18
          Top = 11
          Caption = #49548'     '#49549
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 42
          AnchorY = 19
        end
        object lblSosokNameA4: TcxLabel
          Left = 83
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
          AnchorX = 244
          AnchorY = 19
        end
        object cxDtStartA4: TcxDateEdit
          Left = 83
          Top = 32
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
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Height = 26
          Width = 87
        end
        object cxLabel12: TcxLabel
          Left = 223
          Top = 37
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
          AnchorY = 46
        end
        object cxDtEndA4: TcxDateEdit
          Left = 238
          Top = 32
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
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Height = 26
          Width = 87
        end
        object btnSearchA4: TcxButton
          Left = 828
          Top = 7
          Width = 78
          Height = 50
          Cursor = crHandPoint
          Caption = #44160#49353
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 5
          OnClick = btnSearchA4Click
        end
        object btnExcelA4: TcxButton
          Left = 907
          Top = 7
          Width = 78
          Height = 50
          Cursor = crHandPoint
          Caption = #50641#49472
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 6
          OnClick = btnExcelA4Click
        end
        object btnDateA4: TcxButton
          Left = 376
          Top = 33
          Width = 28
          Height = 24
          Cursor = crHandPoint
          DropDownMenu = pop_dateA1
          Kind = cxbkDropDown
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000D2905C67D49663BF000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
            0000000000000000000000000000000000000000000000000001000000000000
            00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
            000000000000000000000000000000000000000000000000000D000000000000
            0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
            000000000000000000000000000000000000000000000000001800000000FF80
            0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
            000000000000000000000000000000000000000000000000002200000000C774
            30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
            81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002900000000C774
            30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
            81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002B00000000FF80
            0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
            0000000000000000000000000000000000000000000000000028000000000000
            0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
            0000000000000000000000000000000000000000000000000020000000000000
            00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
            0000000000000000000000000000000000000000000000000017000000000000
            0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
            000000000000000000000000000000000000000000000000000C000000000000
            000000000000000000000000000000000000D2905C67D49663BF000000000000
            0000000000000000000000000000000000000000000000000001000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 7
        end
        object cxLabel13: TcxLabel
          Left = 18
          Top = 37
          Caption = #44592'     '#44036
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 42
          AnchorY = 45
        end
        object cxTeStartA4: TcxTimeEdit
          Left = 169
          Top = 32
          AutoSize = False
          EditValue = 0.375d
          Properties.TimeFormat = tfHourMin
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          Height = 26
          Width = 51
        end
        object cxTeEndA4: TcxTimeEdit
          Left = 324
          Top = 32
          AutoSize = False
          EditValue = 0.375d
          Properties.TimeFormat = tfHourMin
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 10
          Height = 26
          Width = 51
        end
        object cxSEdtA4: TcxTextEdit
          Left = 476
          Top = 32
          AutoSize = False
          ImeMode = imSAlpha
          Properties.ImeMode = imSAlpha
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 11
          Height = 26
          Width = 91
        end
        object cxLabel14: TcxLabel
          Left = 419
          Top = 37
          Caption = #51077#44552#51088'ID'
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 445
          AnchorY = 45
        end
      end
      object GridA4: TcxGrid
        Left = 0
        Top = 65
        Width = 995
        Height = 618
        Align = alClient
        TabOrder = 1
        TabStop = False
        LookAndFeel.NativeStyle = True
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
          OptionsView.HeaderHeight = 22
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
            Caption = #51068#49884
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 143
          end
          object GridA4ViewColumn3: TcxGridDBColumn
            Caption = #52649#51204#54637#47785
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 127
          end
          object GridA4ViewColumn4: TcxGridDBColumn
            Caption = #51077#44552#51008#54665#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 83
          end
          object GridA4ViewColumn5: TcxGridDBColumn
            Caption = #51077#44552#51088
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 69
          end
          object GridA4ViewColumn6: TcxGridDBColumn
            Caption = #51077#44552#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 99
          end
          object GridA4ViewColumn7: TcxGridDBColumn
            Caption = #48708#44256
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 253
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
        Width = 995
        Height = 2
        Align = alTop
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitTop = 71
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
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 63
        Width = 995
        object Shape14: TShape
          Left = 6
          Top = 7
          Width = 267
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape15: TShape
          Left = 6
          Top = 33
          Width = 376
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape16: TShape
          Left = 410
          Top = 33
          Width = 127
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape17: TShape
          Left = 618
          Top = 33
          Width = 87
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxLabel15: TcxLabel
          Left = 18
          Top = 11
          Caption = #49548'     '#49549
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 42
          AnchorY = 19
        end
        object lblSosokNameA5: TcxLabel
          Left = 83
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
          AnchorX = 244
          AnchorY = 19
        end
        object cxDtStartA5: TcxDateEdit
          Left = 83
          Top = 32
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
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Height = 26
          Width = 87
        end
        object cxLabel16: TcxLabel
          Left = 223
          Top = 37
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
          AnchorY = 46
        end
        object cxDtEndA5: TcxDateEdit
          Left = 238
          Top = 32
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
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Height = 26
          Width = 87
        end
        object btnSearchA5: TcxButton
          Left = 828
          Top = 7
          Width = 78
          Height = 50
          Cursor = crHandPoint
          Caption = #44160#49353
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 5
          OnClick = btnSearchA5Click
        end
        object btnExcelA5: TcxButton
          Left = 907
          Top = 7
          Width = 78
          Height = 50
          Cursor = crHandPoint
          Caption = #50641#49472
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 6
          OnClick = btnExcelA5Click
        end
        object btnDateA5: TcxButton
          Left = 376
          Top = 33
          Width = 28
          Height = 24
          Cursor = crHandPoint
          DropDownMenu = pop_dateA1
          Kind = cxbkDropDown
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000D2905C67D49663BF000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
            0000000000000000000000000000000000000000000000000001000000000000
            00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
            000000000000000000000000000000000000000000000000000D000000000000
            0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
            000000000000000000000000000000000000000000000000001800000000FF80
            0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
            000000000000000000000000000000000000000000000000002200000000C774
            30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
            81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002900000000C774
            30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
            81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002B00000000FF80
            0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
            0000000000000000000000000000000000000000000000000028000000000000
            0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
            0000000000000000000000000000000000000000000000000020000000000000
            00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
            0000000000000000000000000000000000000000000000000017000000000000
            0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
            000000000000000000000000000000000000000000000000000C000000000000
            000000000000000000000000000000000000D2905C67D49663BF000000000000
            0000000000000000000000000000000000000000000000000001000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 7
        end
        object cxLabel17: TcxLabel
          Left = 18
          Top = 37
          Caption = #44592'     '#44036
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 42
          AnchorY = 45
        end
        object cxTeStartA5: TcxTimeEdit
          Left = 169
          Top = 32
          AutoSize = False
          EditValue = 0.375d
          Properties.TimeFormat = tfHourMin
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          Height = 26
          Width = 51
        end
        object cxTeEndA5: TcxTimeEdit
          Left = 324
          Top = 32
          AutoSize = False
          EditValue = 0.375d
          Properties.TimeFormat = tfHourMin
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 10
          Height = 26
          Width = 51
        end
        object cxSEdtA5: TcxTextEdit
          Left = 523
          Top = 32
          AutoSize = False
          ImeMode = imSAlpha
          Properties.ImeMode = imSAlpha
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 11
          Height = 26
          Width = 91
        end
        object cxLabel18: TcxLabel
          Left = 425
          Top = 37
          Caption = #51077#44552#51088
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 445
          AnchorY = 45
        end
        object cxCb1A5: TcxComboBox
          Left = 684
          Top = 32
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
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 13
          Height = 26
          Width = 112
        end
        object cxLabel19: TcxLabel
          Left = 635
          Top = 38
          Caption = #44396'  '#48516
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 653
          AnchorY = 46
        end
        object cxCbA5: TcxComboBox
          Left = 472
          Top = 32
          TabStop = False
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'ID'
            #51060#47492)
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 15
          Height = 26
          Width = 51
        end
      end
      object GridA5: TcxGrid
        Left = 0
        Top = 65
        Width = 995
        Height = 618
        Align = alClient
        TabOrder = 1
        TabStop = False
        LookAndFeel.NativeStyle = True
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
          OptionsView.HeaderHeight = 22
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
            Caption = #44592#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 63
          end
          object GridA5ViewColumn3: TcxGridDBColumn
            Caption = #44592#49324#49324#48264
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 57
          end
          object GridA5ViewColumn4: TcxGridDBColumn
            Caption = #52649#51204#54637#47785
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
            Caption = #51088#52404#52880#49772
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 83
          end
          object GridA5ViewColumn7: TcxGridDBColumn
            Caption = #51077#44552#51008#54665#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 70
          end
          object GridA5ViewColumn8: TcxGridDBColumn
            Caption = #51077#44552#51088
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object GridA5ViewColumn9: TcxGridDBColumn
            Caption = #47700#47784
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 209
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
        Width = 995
        Height = 2
        Align = alTop
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitTop = 71
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
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 63
        Width = 995
        object Shape19: TShape
          Left = 6
          Top = 7
          Width = 267
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape20: TShape
          Left = 6
          Top = 33
          Width = 163
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape21: TShape
          Left = 240
          Top = 33
          Width = 117
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
          Visible = False
        end
        object cxLabel20: TcxLabel
          Left = 18
          Top = 11
          Caption = #49548'     '#49549
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 42
          AnchorY = 19
        end
        object lblSosokNameA6: TcxLabel
          Left = 83
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
          AnchorX = 244
          AnchorY = 19
        end
        object btnSearchA6: TcxButton
          Left = 828
          Top = 7
          Width = 78
          Height = 50
          Cursor = crHandPoint
          Caption = #44160#49353
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 2
          OnClick = btnSearchA6Click
        end
        object btnExcelA6: TcxButton
          Left = 907
          Top = 7
          Width = 78
          Height = 50
          Cursor = crHandPoint
          Caption = #50641#49472
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 3
          OnClick = btnExcelA6Click
        end
        object cxLabel21: TcxLabel
          Left = 16
          Top = 37
          Caption = #51312#54924#45380#50900
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 42
          AnchorY = 45
        end
        object cxSEYYA6: TcxSpinEdit
          Left = 83
          Top = 32
          AutoSize = False
          Properties.Alignment.Horz = taRightJustify
          Properties.CanEdit = False
          Properties.MaxValue = 3000.000000000000000000
          Properties.MinValue = 2000.000000000000000000
          Properties.ReadOnly = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          Value = 2008
          Height = 26
          Width = 60
        end
        object cxSEMMA6: TcxSpinEdit
          Left = 147
          Top = 32
          AutoSize = False
          Properties.Alignment.Horz = taRightJustify
          Properties.CanEdit = False
          Properties.MaxValue = 12.000000000000000000
          Properties.MinValue = 1.000000000000000000
          Properties.ReadOnly = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          Value = 12
          Height = 26
          Width = 40
        end
        object cxCBA6: TcxComboBox
          Left = 205
          Top = 32
          TabStop = False
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #44592#49324#49324#48264
            #44592#49324#47749
            #51204#54868#48264#54840)
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          Text = #44592#49324#49324#48264
          Visible = False
          Height = 26
          Width = 83
        end
        object cxSEdtA6: TcxTextEdit
          Left = 290
          Top = 32
          AutoSize = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 8
          Visible = False
          Height = 26
          Width = 114
        end
        object cxLabel22: TcxLabel
          Left = 412
          Top = 41
          Caption = #8251' '#51312#54924#46108' '#47785#47197#51012' '#45908#48660#53364#47533#54616#49884#47732'  '#45225#48512#54620' '#44592#49324#47532#49828#53944#47484' '#48372#49892' '#49688' '#51080#49845#45768#45796'.'
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = 13483435
          Style.TextColor = clBlue
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorY = 49
        end
      end
      object GridA6: TcxGrid
        Left = 0
        Top = 65
        Width = 995
        Height = 618
        Align = alClient
        TabOrder = 1
        TabStop = False
        LookAndFeel.NativeStyle = True
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
          OptionsView.HeaderHeight = 22
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Shape26: TShape
        Left = 0
        Top = 63
        Width = 995
        Height = 2
        Align = alTop
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitTop = 71
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
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 63
        Width = 995
        object Shape23: TShape
          Left = 6
          Top = 7
          Width = 267
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape24: TShape
          Left = 6
          Top = 33
          Width = 376
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape25: TShape
          Left = 411
          Top = 7
          Width = 574
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxLabel23: TcxLabel
          Left = 18
          Top = 11
          Caption = #49548'     '#49549
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 42
          AnchorY = 19
        end
        object lblSosokNameA7: TcxLabel
          Left = 83
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
          AnchorX = 244
          AnchorY = 19
        end
        object cxDtStartA7: TcxDateEdit
          Left = 83
          Top = 32
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
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Height = 26
          Width = 87
        end
        object cxLabel24: TcxLabel
          Left = 223
          Top = 37
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
          AnchorY = 46
        end
        object cxDtEndA7: TcxDateEdit
          Left = 241
          Top = 32
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
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Height = 26
          Width = 87
        end
        object btnSearchA7: TcxButton
          Left = 828
          Top = 34
          Width = 78
          Height = 24
          Cursor = crHandPoint
          Caption = #44160#49353
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 5
          OnClick = btnSearchA7Click
        end
        object btnExcelA7: TcxButton
          Left = 912
          Top = 33
          Width = 78
          Height = 24
          Cursor = crHandPoint
          Caption = #50641#49472
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 6
          OnClick = btnExcelA7Click
        end
        object btnDateA7: TcxButton
          Left = 376
          Top = 33
          Width = 28
          Height = 24
          Cursor = crHandPoint
          DropDownMenu = pop_dateA1
          Kind = cxbkDropDown
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000D2905C67D49663BF000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
            0000000000000000000000000000000000000000000000000001000000000000
            00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
            000000000000000000000000000000000000000000000000000D000000000000
            0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
            000000000000000000000000000000000000000000000000001800000000FF80
            0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
            000000000000000000000000000000000000000000000000002200000000C774
            30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
            81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002900000000C774
            30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
            81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002B00000000FF80
            0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
            0000000000000000000000000000000000000000000000000028000000000000
            0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
            0000000000000000000000000000000000000000000000000020000000000000
            00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
            0000000000000000000000000000000000000000000000000017000000000000
            0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
            000000000000000000000000000000000000000000000000000C000000000000
            000000000000000000000000000000000000D2905C67D49663BF000000000000
            0000000000000000000000000000000000000000000000000001000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 7
        end
        object cxLabel25: TcxLabel
          Left = 18
          Top = 37
          Caption = #44592'     '#44036
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 42
          AnchorY = 45
        end
        object cxLabel26: TcxLabel
          Left = 424
          Top = 11
          Caption = #44277#50976#52264#49688
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 450
          AnchorY = 19
        end
        object cxCBChk1A7: TcxCheckBox
          Left = 578
          Top = 9
          TabStop = False
          Caption = '1'#52264
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 10
          Transparent = True
          OnClick = cxCBChk0A7Click
        end
        object cxCBChk2A7: TcxCheckBox
          Left = 622
          Top = 9
          TabStop = False
          Caption = '2'#52264
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 11
          Transparent = True
          OnClick = cxCBChk0A7Click
        end
        object cxCBChk3A7: TcxCheckBox
          Left = 666
          Top = 9
          TabStop = False
          Caption = '3'#52264
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 12
          Transparent = True
          OnClick = cxCBChk0A7Click
        end
        object cxCBChk4A7: TcxCheckBox
          Left = 710
          Top = 9
          TabStop = False
          Caption = '4'#52264
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 13
          Transparent = True
          OnClick = cxCBChk0A7Click
        end
        object cxCBChk5A7: TcxCheckBox
          Left = 754
          Top = 9
          TabStop = False
          Caption = '5'#52264
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 14
          Transparent = True
          OnClick = cxCBChk0A7Click
        end
        object cxCBChk6A7: TcxCheckBox
          Left = 798
          Top = 9
          TabStop = False
          Caption = '6'#52264
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 15
          Transparent = True
          OnClick = cxCBChk0A7Click
        end
        object cxCBChk7A7: TcxCheckBox
          Left = 842
          Top = 9
          TabStop = False
          Caption = '7'#52264
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 16
          Transparent = True
          OnClick = cxCBChk0A7Click
        end
        object cxCBChk8A7: TcxCheckBox
          Left = 886
          Top = 9
          TabStop = False
          Caption = '8'#52264
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 17
          Transparent = True
          OnClick = cxCBChk0A7Click
        end
        object cxCBChk9A7: TcxCheckBox
          Left = 930
          Top = 9
          TabStop = False
          Caption = '9'#52264
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 18
          Transparent = True
          OnClick = cxCBChk0A7Click
        end
        object cxCBChk0A7: TcxCheckBox
          Left = 534
          Top = 9
          TabStop = False
          Caption = '0'#52264
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 19
          Transparent = True
          OnClick = cxCBChk0A7Click
        end
        object cxCBChkA7: TcxCheckBox
          Left = 490
          Top = 9
          TabStop = False
          Caption = #51204#52404
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 20
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
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 21
          TabStop = False
          OnClick = btnHelpA7Click
        end
        object cxLabel27: TcxLabel
          Left = 528
          Top = 33
          AutoSize = False
          Caption = #8251' '#48376#49324#44288#47532#51088#45716' '#48376#49324#44592#51456', '#51648#49324#44592#51456' '#51312#54924#44032#45733#13#10'    '#51648#49324#44288#47532#51088', '#49345#45812#50896#51008' '#51648#49324#44592#51456' '#51312#54924#44032#45733
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = 13483435
          Style.TextColor = clBlue
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          Height = 29
          Width = 260
          AnchorY = 48
        end
        object cxLabel98: TcxLabel
          Left = 174
          Top = 37
          Caption = '09:00'
          Transparent = True
        end
        object cxLabel99: TcxLabel
          Left = 331
          Top = 37
          Caption = '09:00'
          Transparent = True
        end
      end
      object GridA7: TcxGrid
        Left = 0
        Top = 65
        Width = 995
        Height = 618
        Align = alClient
        PopupMenu = PopupMenuA1
        TabOrder = 1
        TabStop = False
        LookAndFeel.NativeStyle = True
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
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.OnSortingChanged = GridA7ViewDataControllerSortingChanged
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 22
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 22
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
        Left = 768
        Top = 128
        Width = 449
        Height = 209
        BevelKind = bkFlat
        BevelOuter = bvNone
        Color = 16316393
        TabOrder = 2
        Visible = False
        DesignSize = (
          445
          205)
        object cxGroupBox9: TcxGroupBox
          Left = 0
          Top = 0
          Align = alClient
          Caption = #51060#50857#50504#45236
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 205
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
            Style.Color = 15269887
            ExplicitLeft = 2
            ExplicitTop = -1
            ExplicitWidth = 441
            ExplicitHeight = 204
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
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000001511
            93B91C17C2F41B17C3F41C16C2F41A14BFF41914BFF41913BFF41A14BFF41A13
            BEF41A13BEF41B14C1F41812BDF41B14C1F4140F93B90000000019199BB92E2D
            FBFF2423EFFF0B06B6FF201DE5FF2B29FAFF2824F4FF2824F4FF2723F4FF2722
            F4FF2925FCFF130DCEFF0A05B0FF211AEFFF2921FBFF161498B92322D4FE272B
            EFFF1312B1FF6A67BFFF1B1AB0FF1F20E2FF2D2EF4FF282AEDFF2929EEFF2C2D
            F4FF0E0DCAFF3F3CB5FF9090CEFF1210B1FF2321EEFF1F1BD0FE2121C9F4100E
            BBFF918ED3FFFFFFFFFFADAAE0FF100FB2FF1C20E0FF3036F4FF2F35F4FF0D0D
            CEFF3835B8FFECECF8FFFFFFFFFF6A67C6FF0F0DC0FF201ECAF42428D0F41D24
            D7FF433DC3FFEBEAF8FFFFFFFFFFAFADE3FF1D1BB9FF1D24DEFF171CD7FF3934
            BEFFEEEDF9FFFFFFFFFFACAAE4FF1F1BBDFF252CE7FF2221CDF4252AD1F4384F
            FAFF161ED4FF3A32C5FFEDEDF9FFFFFFFFFFD0CEF0FF201FC1FF1E1DC0FFE2E2
            F6FFFFFFFFFFB3B1E8FF1511BFFF232DE5FF3241F7FF2324CDF42228D2F4364F
            F3FF3950F3FF151DD8FF3E35CCFFDEDBF6FFFFFFFFFFCFCDF2FFCFCEF3FFFFFF
            FFFFD4D3F3FF2321C7FF202CE3FF3447F4FF3144F2FF2023D0F4454BD9F43B55
            F3FF334BEFFF3852F4FF1F2ADFFF211DCBFFCDCCF4FFFFFFFFFFFFFFFFFFCDCB
            F4FF2120CDFF2232E3FF354DF4FF2F44EEFF364DF2FF4247D7F46366DFF46E82
            F7FF556AF2FF4862F3FF2B3BE8FF221FD2FFCDCBF3FFFFFFFFFFFFFFFFFFCDCB
            F4FF201DD2FF242FE4FF445DF3FF5366F2FF6A7DF6FF6064DDF46064E1F47388
            F7FF788CF6FF6472F1FF514BE0FFD5D2F7FFFFFFFFFFDCDAF8FFDCDAF8FFFFFF
            FFFFDCDAF8FF655EE2FF575EEAFF7588F6FF6F83F6FF5D62DFF46166E3F47891
            F7FF6779F2FF5550E6FFCAC6F6FFFFFFFFFFE9E8FCFF5851E6FF5954E6FFE0DE
            FAFFFFFFFFFFF6F5FDFF6F69E9FF575FECFF748CF7FF5F64E2F4636AE4F46F82
            F3FF5E59EBFFC2BFF7FFFFFFFFFFF2F1FDFF6E66ECFF5D68EFFF6472F1FF5E57
            EBFFC5C1F8FFFFFFFFFFF1F0FDFF7670ECFF616BF1FF6268E4F4646CE6F45A5C
            EFFF928BF3FFFFFFFFFFF1F0FEFF6F68F0FF5B64EFFF7A92F6FF7A91F6FF6775
            F2FF5551EDFFC3BFF9FFFFFFFFFFAFA8F7FF5857F0FF6165E4F46B74F1FE7A91
            F6FF5A57F0FFAEA8F7FF7771F3FF5F68F2FF7D96F6FF798EF5FF788EF5FF7C94
            F6FF6D7FF4FF5F5BF0FF948CF5FF5956F1FF758BF6FF6972EFFE4E54B0B985A1
            F7FF7C94F6FF5B5BF3FF6975F5FF84A1F8FF8099F7FF7F98F7FF7F98F7FF7E97
            F6FF819CF6FF7588F5FF5C5FF3FF7990F5FF819DF7FF4C53AEB9000000005055
            B1B96970E9F4666CE9F46971E9F4676EE9F4676EE9F4666EE9F4666EE9F4676E
            E9F4666DE9F4676FE9F4676FE9F4676EE9F44E53B0B900000000}
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
        Height = 683
        Width = 995
        object cxGroupBox10: TcxGroupBox
          Left = 3
          Top = 3
          Caption = '  '#8251' '#52636#44552#51648#49324#50640#49436' '#51077#44552#51648#49324#47196' '#49440#53469#54620' '#51648#49324' '#46608#45716' SMS'#52880#49772#47484' '#51060#46041#54633#45768#45796'. '
          Style.BorderColor = clDefault
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 662
          Width = 525
          object Shape27: TShape
            Left = 278
            Top = 24
            Width = 235
            Height = 40
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape28: TShape
            Left = 12
            Top = 216
            Width = 197
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape29: TShape
            Left = 12
            Top = 242
            Width = 197
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object chkUseCashMoveDefault: TcxCheckBox
            Left = 284
            Top = 25
            Caption = #44592#48376#52636#44552#51648#49324' '#49440#53469
            TabOrder = 0
            Transparent = True
            OnClick = chkUseCashMoveDefaultClick
          end
          object cxBtnOKLA8: TcxButton
            Left = 278
            Top = 214
            Width = 140
            Height = 27
            Cursor = crHandPoint
            Caption = #54869#51064
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
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
            Left = 37
            Top = 221
            Caption = #51060#46041#44552#50529
            ParentColor = False
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 13719147
            Style.TextStyle = [fsBold]
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 65
            AnchorY = 229
          end
          object cxLabel33: TcxLabel
            Left = 228
            Top = 221
            Caption = '('#50896')'
          end
          object cxLabel34: TcxLabel
            Left = 12
            Top = 276
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
            AnchorY = 300
          end
          object cxLabel29: TcxLabel
            Left = 37
            Top = 245
            Caption = #52880#49772#47700#47784
            ParentColor = False
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 13719147
            Style.TextStyle = [fsBold]
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 65
            AnchorY = 253
          end
          object cxEdtLMoveAmt: TcxCurrencyEdit
            Left = 110
            Top = 215
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
            Left = 278
            Top = 43
            AutoSize = False
            Enabled = False
            TabOrder = 8
            Height = 21
            Width = 235
          end
          object edtCashMoveMemo: TcxTextEdit
            Left = 110
            Top = 241
            AutoSize = False
            ImeMode = imSHanguel
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
            object Shape30: TShape
              Left = 0
              Top = 0
              Width = 234
              Height = 40
              Align = alClient
              Pen.Color = 12566402
              ExplicitLeft = -98
              ExplicitTop = 7
              ExplicitWidth = 267
              ExplicitHeight = 24
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
              Transparent = True
            end
            object chrbSmsCash: TcxRadioButton
              Left = 137
              Top = 11
              Width = 73
              Height = 17
              Caption = 'SMS'#52880#49772
              TabOrder = 1
              Transparent = True
            end
          end
          object cxGpCIS: TcxGroupBox
            Left = 12
            Top = 70
            Caption = '  '#8251' '#52880#49772' '#51077#44552' '#48376#49324' '#51648#49324
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 11
            Height = 133
            Width = 234
            object Shape31: TShape
              Left = 9
              Top = 68
              Width = 215
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object Shape32: TShape
              Left = 9
              Top = 94
              Width = 215
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object cxcbCashMoveBrName1: TcxComboBox
              Left = 8
              Top = 44
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
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              Text = #51204#52404
              Height = 23
              Width = 217
            end
            object cxLabel35: TcxLabel
              Left = 24
              Top = 72
              Caption = ' '#51648#49324#52880#49772
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              AnchorX = 52
              AnchorY = 80
            end
            object cxLabel36: TcxLabel
              Left = 24
              Top = 100
              Caption = 'SMS'#52880#49772
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              AnchorX = 52
              AnchorY = 108
            end
            object cxLblIBrCash: TcxLabel
              Left = 89
              Top = 67
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
              AnchorY = 80
            end
            object cxLblISmCash: TcxLabel
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
            object cxLabel38: TcxLabel
              Left = 198
              Top = 73
              Caption = '('#50896')'
              Transparent = True
            end
            object cxLabel39: TcxLabel
              Left = 198
              Top = 99
              Caption = '('#50896')'
              Transparent = True
            end
            object cxLblBrView: TcxLabel
              Left = 8
              Top = 122
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
              AnchorY = 148
            end
          end
          object cxGpCOS: TcxGroupBox
            Left = 278
            Top = 70
            Caption = '  '#8251' '#52880#49772' '#52636#44552' '#48376#49324' '#51648#49324
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 12
            Height = 133
            Width = 234
            object Shape33: TShape
              Left = 9
              Top = 68
              Width = 215
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object Shape34: TShape
              Left = 9
              Top = 94
              Width = 215
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object cxcbCashMoveBrName2: TcxComboBox
              Left = 8
              Top = 44
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
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              Text = #51204#52404
              Height = 23
              Width = 217
            end
            object cxLabel40: TcxLabel
              Left = 19
              Top = 71
              Caption = ' '#51648#49324#52880#49772
              ParentColor = False
              Style.LookAndFeel.NativeStyle = False
              Style.TextColor = clBlack
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              AnchorX = 47
              AnchorY = 79
            end
            object cxLblOBrCash: TcxLabel
              Left = 88
              Top = 67
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
              AnchorY = 80
            end
            object cxLabel41: TcxLabel
              Left = 19
              Top = 98
              Caption = 'SMS'#52880#49772
              ParentColor = False
              Style.LookAndFeel.NativeStyle = False
              Style.TextColor = clBlack
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              AnchorX = 47
              AnchorY = 106
            end
            object cxLblOSmCash: TcxLabel
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
            object cxLabel42: TcxLabel
              Left = 196
              Top = 73
              Caption = '('#50896')'
              Transparent = True
            end
            object cxLabel43: TcxLabel
              Left = 196
              Top = 99
              Caption = '('#50896')'
              Transparent = True
            end
            object cxLblSMView: TcxLabel
              Left = 10
              Top = 121
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
              AnchorY = 149
            end
          end
        end
        object cxGroupBox13: TcxGroupBox
          Left = 532
          Top = 3
          Caption = ' '#8251' '#54620#44060#51032' '#51648#49324#50640#49436' '#50668#47084#44060#51032' '#51648#49324#47196' '#52880#49772#47484' '#46041#49884#50640' '#51060#46041#54633#45768#45796'. '
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Height = 662
          Width = 458
          object Shape35: TShape
            Left = 18
            Top = 507
            Width = 223
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape36: TShape
            Left = 18
            Top = 533
            Width = 223
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object cxBtnOKRA8: TcxButton
            Left = 243
            Top = 505
            Width = 142
            Height = 26
            Cursor = crHandPoint
            Caption = #54869#51064
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 0
            TabStop = False
            OnClick = cxBtnOKRA8Click
          end
          object cxEdtRMoveAmt: TcxCurrencyEdit
            Left = 85
            Top = 506
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
            Top = 194
            Width = 433
            Height = 259
            TabOrder = 2
            TabStop = False
            LookAndFeel.NativeStyle = True
            object cxBrCashMove: TcxGridBandedTableView
              Navigator.Buttons.CustomButtons = <>
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
              OptionsView.BandHeaderHeight = 22
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
          object cxLabel30: TcxLabel
            Left = 25
            Top = 536
            Caption = #52880#49772#47700#47784
            ParentColor = False
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 13719147
            Style.TextStyle = [fsBold]
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 53
            AnchorY = 544
          end
          object cxLabel44: TcxLabel
            Left = 12
            Top = 24
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
            AnchorY = 38
          end
          object cxLabel45: TcxLabel
            Left = 12
            Top = 456
            AutoSize = False
            Caption = #49440#53469#46108' '#52636#44552' '#51648#49324' '#50808#50640' 00'#44060' '#51648#49324#44032' '#51080#49845#45768#45796'.'
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
            Width = 273
            AnchorY = 467
          end
          object cxLabel46: TcxLabel
            Left = 24
            Top = 511
            Caption = #51060#46041#44552#50529
            ParentColor = False
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 13719147
            Style.TextStyle = [fsBold]
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 52
            AnchorY = 519
          end
          object cxLabel47: TcxLabel
            Left = 189
            Top = 511
            Caption = '('#50896')'
            Transparent = True
          end
          object cxLabel48: TcxLabel
            Left = 13
            Top = 556
            AutoSize = False
            Caption = 
              #8251' '#49444#47749' '#13#10' 1. '#52880#49772#51060#46041' : '#44033' '#51648#49324#50640' '#51077#47141#50529#47564#53372#50473' '#51060#46041#54633#45768#45796'.'#13#10' 2. '#52880#49772#54217#51456#54868' : '#44033#51648#49324#52880#49772#47484' '#51077#47141#50529#51032' '#51092 +
              #50529#51004#47196' '#13#10'     '#47582#52628#50612' '#48260#47549#45768#45796'.('#51077#44552' '#46608#45716' '#52636#44552#51060' '#51088#46041#51004#47196' '#52376#47532#46120')'#13#10#13#10#8251' '#51452#51032') '#50948' '#51312#51089#49884' '#52636#44552#51648#49324#51032' '#52880#49772 +
              #44032#48512#51313#54616#47732' '#13#10'     '#44032#45733#54620#51648#49324#44620#51648#47564' '#50756#47308#54633#45768#45796'. '
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
            Height = 91
            Width = 427
            AnchorY = 602
          end
          object edtCashMoveMultiMemo: TcxTextEdit
            Left = 86
            Top = 532
            AutoSize = False
            ImeMode = imSHanguel
            Properties.ImeMode = imSHanguel
            Properties.MaxLength = 70
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 9
            Height = 26
            Width = 358
          end
          object Panel2: TPanel
            Left = 16
            Top = 475
            Width = 169
            Height = 27
            BevelOuter = bvNone
            Color = 16774371
            TabOrder = 10
            object Shape37: TShape
              Left = 0
              Top = 0
              Width = 169
              Height = 27
              Align = alClient
              Pen.Color = 12566402
              ExplicitLeft = -98
              ExplicitTop = 7
              ExplicitWidth = 267
              ExplicitHeight = 24
            end
            object cxRBCashM: TcxRadioButton
              Left = 8
              Top = 6
              Width = 67
              Height = 17
              Caption = #52880#49772#51060#46041
              Checked = True
              TabOrder = 0
              TabStop = True
              Transparent = True
            end
            object cxRBCashB: TcxRadioButton
              Left = 80
              Top = 6
              Width = 82
              Height = 17
              Caption = #52880#49772#54217#51456#54868
              TabOrder = 1
              Transparent = True
            end
          end
          object PnlSelHdOpt: TPanel
            Left = 12
            Top = 53
            Width = 433
            Height = 28
            BevelOuter = bvNone
            Color = 16774371
            TabOrder = 11
            object Shape38: TShape
              Left = 0
              Top = 0
              Width = 433
              Height = 28
              Align = alClient
              Pen.Color = 12566402
              ExplicitLeft = -98
              ExplicitTop = 7
              ExplicitWidth = 267
              ExplicitHeight = 24
            end
            object RB_SelHdOpt1: TcxRadioButton
              Left = 99
              Top = 6
              Width = 88
              Height = 17
              Caption = #49440#53469' '#48376#49324' '#45236
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = RB_SelHdOpt1Click
              Transparent = True
            end
            object RB_SelHdOpt2: TcxRadioButton
              Left = 237
              Top = 6
              Width = 117
              Height = 17
              Caption = #49440#53469' '#48376#49324' '#50808' '#51204#52404
              TabOrder = 1
              OnClick = RB_SelHdOpt1Click
              Transparent = True
            end
          end
          object cxGpCOM: TcxGroupBox
            Left = 12
            Top = 84
            Caption = '  '#8251' '#52880#49772' '#52636#44552' '#48376#49324' '#51648#49324
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 12
            Height = 104
            Width = 433
            object Shape39: TShape
              Left = 10
              Top = 67
              Width = 223
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object cxcbCashMoveBrName4: TcxComboBox
              Left = 9
              Top = 40
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
              Text = #51204#52404
              OnClick = cxcbCashMoveBrName4Click
              Height = 23
              Width = 224
            end
            object cxcbCashMoveHdName4: TcxComboBox
              Left = 9
              Top = 18
              AutoSize = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                #51204#52404)
              Properties.OnChange = cxcbCashMoveHdName4PropertiesChange
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              Text = #51204#52404
              Height = 23
              Width = 224
            end
            object cxChkSel: TcxCheckBox
              Left = 240
              Top = 70
              Caption = #49440#53469
              TabOrder = 2
              Transparent = True
              Visible = False
            end
            object cxLabel49: TcxLabel
              Left = 13
              Top = 71
              Caption = ' '#51648#49324#52880#49772
              ParentColor = False
              Style.Color = 13565951
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              AnchorX = 41
              AnchorY = 79
            end
            object cxLblBrCash: TcxLabel
              Left = 86
              Top = 66
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
              AnchorY = 79
            end
            object cxLabel50: TcxLabel
              Left = 197
              Top = 72
              Caption = '('#50896')'
              Transparent = True
            end
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
        Width = 995
        Height = 2
        Align = alTop
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitLeft = -6
        ExplicitTop = 23
        ExplicitWidth = 305
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
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        DesignSize = (
          995
          185)
        Height = 185
        Width = 995
        object Shape40: TShape
          Left = 6
          Top = 7
          Width = 267
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape41: TShape
          Left = 6
          Top = 156
          Width = 376
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxLabel51: TcxLabel
          Left = 18
          Top = 11
          Caption = #49548'     '#49549
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 42
          AnchorY = 19
        end
        object lblSosokNameA9: TcxLabel
          Left = 83
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
          AnchorX = 350
          AnchorY = 19
        end
        object cxDtStartA9: TcxDateEdit
          Left = 83
          Top = 155
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
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Height = 26
          Width = 87
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
          Left = 238
          Top = 155
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
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Height = 26
          Width = 87
        end
        object btnSearchA9: TcxButton
          Left = 410
          Top = 156
          Width = 78
          Height = 24
          Cursor = crHandPoint
          Caption = #44160#49353
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 5
          OnClick = btnSearchA9Click
        end
        object btnExcelA9: TcxButton
          Left = 489
          Top = 156
          Width = 78
          Height = 24
          Cursor = crHandPoint
          Caption = #50641#49472
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 6
          OnClick = btnExcelA9Click
        end
        object btnDateA9: TcxButton
          Left = 376
          Top = 156
          Width = 28
          Height = 24
          Cursor = crHandPoint
          DropDownMenu = pop_dateA1
          Kind = cxbkDropDown
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000D2905C67D49663BF000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
            0000000000000000000000000000000000000000000000000001000000000000
            00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
            000000000000000000000000000000000000000000000000000D000000000000
            0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
            000000000000000000000000000000000000000000000000001800000000FF80
            0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
            000000000000000000000000000000000000000000000000002200000000C774
            30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
            81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002900000000C774
            30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
            81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002B00000000FF80
            0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
            0000000000000000000000000000000000000000000000000028000000000000
            0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
            0000000000000000000000000000000000000000000000000020000000000000
            00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
            0000000000000000000000000000000000000000000000000017000000000000
            0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
            000000000000000000000000000000000000000000000000000C000000000000
            000000000000000000000000000000000000D2905C67D49663BF000000000000
            0000000000000000000000000000000000000000000000000001000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 7
        end
        object cxLabel53: TcxLabel
          Left = 18
          Top = 160
          Caption = #44592'     '#44036
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 42
          AnchorY = 168
        end
        object cxTeStartA9: TcxTimeEdit
          Left = 169
          Top = 155
          AutoSize = False
          EditValue = 0.375d
          Properties.TimeFormat = tfHourMin
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          Height = 26
          Width = 51
        end
        object cxTeEndA9: TcxTimeEdit
          Left = 324
          Top = 155
          AutoSize = False
          EditValue = 0.375d
          Properties.TimeFormat = tfHourMin
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 10
          Height = 26
          Width = 51
        end
        object cxGroupBox16: TcxGroupBox
          Left = 6
          Top = 35
          Anchors = [akLeft, akTop, akRight]
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 11
          Height = 117
          Width = 989
          object Shape42: TShape
            Left = 12
            Top = 8
            Width = 485
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape43: TShape
            Left = 12
            Top = 34
            Width = 485
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape44: TShape
            Left = 12
            Top = 60
            Width = 485
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape45: TShape
            Left = 12
            Top = 86
            Width = 247
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object cxLabel54: TcxLabel
            Left = 281
            Top = 11
            Caption = ' '#51648#49324#52880#49772
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorX = 309
            AnchorY = 19
          end
          object cxLblBrCashA9: TcxLabel
            Left = 351
            Top = 7
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
            AnchorX = 459
            AnchorY = 20
          end
          object cxLabel55: TcxLabel
            Left = 23
            Top = 12
            Caption = 'SMS'#52880#49772
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorX = 51
            AnchorY = 20
          end
          object cxLblSMCashA9: TcxLabel
            Left = 87
            Top = 7
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
            AnchorX = 195
            AnchorY = 20
          end
          object cxLabel56: TcxLabel
            Left = 460
            Top = 12
            Caption = '('#50896')'
            Transparent = True
          end
          object cxLabel57: TcxLabel
            Left = 196
            Top = 12
            Caption = '('#50896')'
            Transparent = True
          end
          object EdtChargeCashA9: TcxCurrencyEdit
            Left = 145
            Top = 85
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
            TabOrder = 6
            Height = 26
            Width = 115
          end
          object cxLabel58: TcxLabel
            Left = 34
            Top = 91
            Caption = 'SMS '#52649#51204#52880#49772
            ParentColor = False
            Style.TextColor = 13719147
            Style.TextStyle = [fsBold]
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 80
            AnchorY = 99
          end
          object cxLabel59: TcxLabel
            Left = 262
            Top = 92
            Caption = '('#50896')'
            Transparent = True
          end
          object BtnChargeA9: TcxButton
            Left = 297
            Top = 86
            Width = 104
            Height = 24
            Cursor = crHandPoint
            Caption = #52649#51204
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 9
            TabStop = False
            OnClick = BtnChargeA9Click
          end
          object cxLabel60: TcxLabel
            Left = 19
            Top = 38
            Caption = #51068#48152' SMS'
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorX = 49
            AnchorY = 46
          end
          object cxLabel61: TcxLabel
            Left = 19
            Top = 65
            Caption = #44305#44256' SMS'
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorX = 49
            AnchorY = 73
          end
          object cxLblSMCnt1A9: TcxLabel
            Left = 88
            Top = 38
            Caption = '0 '#50896' / '#44148#45817'  ('#51068#48152'SMS'#47564' '#48372#45244#46412' '#51204#49569#44032#45733#44148#49688' : '#44148')'
            ParentColor = False
            Style.BorderStyle = ebsNone
            Style.Color = 13565951
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 46
          end
          object cxLblSMCnt2A9: TcxLabel
            Left = 87
            Top = 65
            Caption = '0 '#50896' / '#44148#45817'  ('#51068#48152'SMS'#47564' '#48372#45244#46412' '#51204#49569#44032#45733#44148#49688' : '#44148')'
            ParentColor = False
            Style.BorderStyle = ebsNone
            Style.Color = 13565951
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 73
          end
          object cxLabel62: TcxLabel
            Left = 503
            Top = 38
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
            AnchorY = 61
          end
          object lbl1: TcxLabel
            Left = 232
            Top = 11
            Caption = '<=='
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object BtnSearch1A9: TcxButton
            Left = 501
            Top = 8
            Width = 104
            Height = 24
            Cursor = crHandPoint
            Caption = #51312'   '#54924
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 16
            TabStop = False
            OnClick = BtnSearch1A9Click
          end
        end
      end
      object GridA9: TcxGrid
        Left = 0
        Top = 187
        Width = 995
        Height = 496
        Align = alClient
        TabOrder = 1
        TabStop = False
        LookAndFeel.NativeStyle = True
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
          OptionsView.HeaderHeight = 22
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
            Width = 167
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
            Width = 110
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
      Tag = 610
      Caption = #49688#51061#44552#47532#49828#53944
      ImageIndex = 9
      object Shape49: TShape
        Left = 0
        Top = 63
        Width = 995
        Height = 2
        Align = alTop
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitTop = 71
      end
      object cxGroupBox15: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 63
        Width = 995
        object Shape47: TShape
          Left = 6
          Top = 7
          Width = 267
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape48: TShape
          Left = 6
          Top = 33
          Width = 376
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxLabel63: TcxLabel
          Left = 18
          Top = 11
          Caption = #49548'     '#49549
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 42
          AnchorY = 19
        end
        object lblSosokNameA10: TcxLabel
          Left = 83
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
          AnchorX = 244
          AnchorY = 19
        end
        object cxDtStartA10: TcxDateEdit
          Left = 83
          Top = 32
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
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Height = 26
          Width = 87
        end
        object cxLabel64: TcxLabel
          Left = 223
          Top = 37
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
          AnchorY = 46
        end
        object cxDtEndA10: TcxDateEdit
          Left = 238
          Top = 32
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
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Height = 26
          Width = 87
        end
        object btnSearchA10: TcxButton
          Left = 828
          Top = 7
          Width = 78
          Height = 50
          Cursor = crHandPoint
          Caption = #44160#49353
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 5
          OnClick = btnSearchA10Click
        end
        object btnExcelA10: TcxButton
          Left = 907
          Top = 7
          Width = 78
          Height = 50
          Cursor = crHandPoint
          Caption = #50641#49472
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 6
          OnClick = btnExcelA10Click
        end
        object btnDateA10: TcxButton
          Left = 376
          Top = 33
          Width = 28
          Height = 24
          Cursor = crHandPoint
          DropDownMenu = pop_dateA1
          Kind = cxbkDropDown
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000D2905C67D49663BF000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
            0000000000000000000000000000000000000000000000000001000000000000
            00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
            000000000000000000000000000000000000000000000000000D000000000000
            0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
            000000000000000000000000000000000000000000000000001800000000FF80
            0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
            000000000000000000000000000000000000000000000000002200000000C774
            30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
            81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002900000000C774
            30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
            81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002B00000000FF80
            0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
            0000000000000000000000000000000000000000000000000028000000000000
            0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
            0000000000000000000000000000000000000000000000000020000000000000
            00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
            0000000000000000000000000000000000000000000000000017000000000000
            0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
            000000000000000000000000000000000000000000000000000C000000000000
            000000000000000000000000000000000000D2905C67D49663BF000000000000
            0000000000000000000000000000000000000000000000000001000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 7
        end
        object cxLabel65: TcxLabel
          Left = 18
          Top = 37
          Caption = #44592'     '#44036
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 42
          AnchorY = 45
        end
        object cxTeStartA10: TcxTimeEdit
          Left = 166
          Top = 32
          AutoSize = False
          EditValue = 0.375d
          Properties.TimeFormat = tfHourMin
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          Height = 26
          Width = 51
        end
        object cxTeEndA10: TcxTimeEdit
          Left = 324
          Top = 32
          AutoSize = False
          EditValue = 0.375d
          Properties.TimeFormat = tfHourMin
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 10
          Height = 26
          Width = 51
        end
        object cxLabel66: TcxLabel
          Left = 453
          Top = 6
          Caption = 
            #8251' '#44033' '#54637#47785#51012' '#45908#48660#53364#47533#54616#50668' '#49345#49464#45236#50669#51012' '#54869#51064#54624' '#49688' '#51080#49845#45768#45796'.'#13#10#8251' '#54924#49353#48176#44221' '#54637#47785'('#51648#49324#50756#47308#53084#49688','#54633#44228','#51092#50529','#49688#51061#44552')'#50640' '#13 +
            #10'    '#54644#45817#54616#45716' '#49345#49464#45236#50669#51008' '#48372#49892#49688' '#50630#49845#45768#45796'.'
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = 13483435
          Style.TextColor = clBlue
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorY = 26
        end
        object cxLabel67: TcxLabel
          Left = 453
          Top = 47
          Caption = #8251' '#50724#54980' 9'#49884#48512#53552' '#50724#51204' 1'#49884#44620#51648#45716' '#44160#49353#54616#49892#49688' '#50630#49845#45768#45796'.'
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = 13483435
          Style.TextColor = clBlue
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorY = 55
        end
      end
      object GridA10: TcxGrid
        Left = 0
        Top = 65
        Width = 995
        Height = 618
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = True
        object cxGrid10View: TcxGridDBTableView
          PopupMenu = PopupMenuA1
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxGrid10ViewCellDblClick
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn4
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn3
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn5
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn6
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn7
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn8
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn9
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn10
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn11
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn12
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn13
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn14
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn15
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn16
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn17
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn18
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn19
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn20
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn21
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn22
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn23
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn24
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn26
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn27
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn28
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.OnSortingChanged = cxGrid10ViewDataControllerSortingChanged
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnMoving = False
          OptionsData.Editing = False
          OptionsSelection.InvertSelect = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 22
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 22
          OnColumnHeaderClick = cxGrid10ViewColumnHeaderClick
          object cxGrid10ViewColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 40
          end
          object cxGrid10ViewColumn2: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Width = 100
          end
          object cxGrid10ViewColumn3: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#44277#50857#52880#49772
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn4: TcxGridDBColumn
            DataBinding.FieldName = #48156#51452#49688#51061'('#44277#50857')'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn5: TcxGridDBColumn
            DataBinding.FieldName = #48156#51452#49688#51061'('#51088#52404')'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn6: TcxGridDBColumn
            DataBinding.FieldName = #49688#51452#51648#44553
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn26: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#50756#47308#53084#49688
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Styles.Content = cxStyle1
            Styles.Header = cxStyle2
            Width = 100
          end
          object cxGrid10ViewColumn27: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#51068#48708'('#44277#50857')'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn28: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#51068#48708'('#51088#52404')'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn7: TcxGridDBColumn
            DataBinding.FieldName = #49556#47336#49496#49324#50857#47308
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn8: TcxGridDBColumn
            DataBinding.FieldName = #48372#54744#47308
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn9: TcxGridDBColumn
            DataBinding.FieldName = #52712#49548#48268#44552'('#44277#50857')'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn10: TcxGridDBColumn
            DataBinding.FieldName = #52712#49548#48268#44552'('#51088#52404')'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn11: TcxGridDBColumn
            DataBinding.FieldName = #53084#45824#54665
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn12: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#51077#44552
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn13: TcxGridDBColumn
            DataBinding.FieldName = #53084#47560#45320#51221#49328
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn14: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#52880#49772#51060#46041
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn15: TcxGridDBColumn
            DataBinding.FieldName = 'SMS'#52880#49772#52636#44552
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn16: TcxGridDBColumn
            DataBinding.FieldName = #54980#48520#51077#44552
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn17: TcxGridDBColumn
            DataBinding.FieldName = #48372#51221#51077#47141
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn18: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#50640#49569#44552
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn19: TcxGridDBColumn
            DataBinding.FieldName = #53748#51649#54872#48520
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn20: TcxGridDBColumn
            DataBinding.FieldName = #44592#53440
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn21: TcxGridDBColumn
            DataBinding.FieldName = #54633#44228'('#44277#50857')'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Styles.Content = cxStyle1
            Styles.Header = cxStyle2
            Width = 100
          end
          object cxGrid10ViewColumn29: TcxGridDBColumn
            DataBinding.FieldName = #49884#51089#52880#49772
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            HeaderAlignmentHorz = taCenter
            Width = 80
          end
          object cxGrid10ViewColumn30: TcxGridDBColumn
            DataBinding.FieldName = #51333#47308#52880#49772
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            HeaderAlignmentHorz = taCenter
            Width = 80
          end
          object cxGrid10ViewColumn22: TcxGridDBColumn
            DataBinding.FieldName = #51092#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Styles.Content = cxStyle1
            Styles.Header = cxStyle2
            Width = 100
          end
          object cxGrid10ViewColumn23: TcxGridDBColumn
            DataBinding.FieldName = #49688#51061#44552'('#44277#50857'+'#51088#52404')'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 110
          end
          object cxGrid10ViewColumn24: TcxGridDBColumn
            DataBinding.FieldName = #49688#51061#44552'('#51088#52404')'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Styles.Content = cxStyle1
            Styles.Header = cxStyle2
            Width = 100
          end
          object cxGrid10ViewColumn25: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 20
          end
        end
        object GridA10Level1: TcxGridLevel
          GridView = cxGrid10View
        end
      end
    end
    object cxTabSheet11: TcxTabSheet
      Tag = 611
      Caption = #49688#51061#44552#44228#49328
      ImageIndex = 10
      object pnlMainA11: TPanel
        Left = 0
        Top = 0
        Width = 995
        Height = 683
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object Shape50: TShape
          Left = 0
          Top = 63
          Width = 995
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = -6
          ExplicitTop = 23
          ExplicitWidth = 305
        end
        object cxGroupBox11: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          ParentBackground = False
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clBtnFace
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 63
          Width = 995
          object Shape51: TShape
            Left = 6
            Top = 7
            Width = 267
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape52: TShape
            Left = 6
            Top = 33
            Width = 376
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object cxLabel68: TcxLabel
            Left = 18
            Top = 11
            Caption = #49548'     '#49549
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 42
            AnchorY = 19
          end
          object lblSosokNameA11: TcxLabel
            Left = 83
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
            AnchorX = 244
            AnchorY = 19
          end
          object cxDtStartA11: TcxDateEdit
            Left = 83
            Top = 32
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
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Height = 26
            Width = 87
          end
          object cxLabel69: TcxLabel
            Left = 223
            Top = 37
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
            AnchorY = 46
          end
          object cxDtEndA11: TcxDateEdit
            Left = 238
            Top = 32
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
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            Height = 26
            Width = 87
          end
          object btnSearchA11: TcxButton
            Left = 828
            Top = 7
            Width = 78
            Height = 50
            Cursor = crHandPoint
            Caption = #44160#49353
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 5
            OnClick = btnSearchA11Click
          end
          object btnExcelA11: TcxButton
            Left = 907
            Top = 7
            Width = 78
            Height = 50
            Cursor = crHandPoint
            Caption = #50641#49472
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 6
            OnClick = btnExcelA11Click
          end
          object btnDateA11: TcxButton
            Left = 376
            Top = 33
            Width = 28
            Height = 24
            Cursor = crHandPoint
            DropDownMenu = pop_dateA1
            Kind = cxbkDropDown
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000D2905C67D49663BF000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
              0000000000000000000000000000000000000000000000000001000000000000
              00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
              000000000000000000000000000000000000000000000000000D000000000000
              0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
              000000000000000000000000000000000000000000000000001800000000FF80
              0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
              000000000000000000000000000000000000000000000000002200000000C774
              30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
              81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002900000000C774
              30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
              81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002B00000000FF80
              0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
              0000000000000000000000000000000000000000000000000028000000000000
              0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
              0000000000000000000000000000000000000000000000000020000000000000
              00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
              0000000000000000000000000000000000000000000000000017000000000000
              0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
              000000000000000000000000000000000000000000000000000C000000000000
              000000000000000000000000000000000000D2905C67D49663BF000000000000
              0000000000000000000000000000000000000000000000000001000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 7
          end
          object cxLabel70: TcxLabel
            Left = 18
            Top = 37
            Caption = #44592'     '#44036
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 42
            AnchorY = 45
          end
          object cxTeStartA11: TcxTimeEdit
            Left = 166
            Top = 32
            AutoSize = False
            EditValue = 0.375d
            Properties.TimeFormat = tfHourMin
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 9
            Height = 26
            Width = 51
          end
          object cxTeEndA11: TcxTimeEdit
            Left = 324
            Top = 32
            AutoSize = False
            EditValue = 0.375d
            Properties.TimeFormat = tfHourMin
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 10
            Height = 26
            Width = 51
          end
          object btnHelpA11: TcxButton
            Left = 410
            Top = 33
            Width = 71
            Height = 24
            Cursor = crHandPoint
            Caption = #51060#50857#50504#45236
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 11
            TabStop = False
            OnClick = btnHelpA11Click
          end
        end
        object cxGridA11: TcxGrid
          Left = 0
          Top = 65
          Width = 995
          Height = 618
          Align = alClient
          TabOrder = 1
          LookAndFeel.NativeStyle = True
          object cxGridA11View: TcxGridDBTableView
            PopupMenu = PopupMenuA1
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Enabled = False
            Navigator.Buttons.First.Visible = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Filter.Enabled = False
            Navigator.Buttons.Filter.Visible = False
            OnCellDblClick = cxGridA11ViewCellDblClick
            DataController.DataModeController.SmartRefresh = True
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DataController.OnSortingChanged = cxGridA11ViewDataControllerSortingChanged
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            Filtering.ColumnMRUItemsListCount = 0
            OptionsBehavior.CellHints = True
            OptionsBehavior.CopyPreviewToClipboard = False
            OptionsBehavior.ExpandMasterRowOnDblClick = False
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.ColumnSorting = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.FocusRect = False
            OptionsView.NoDataToDisplayInfoText = ' '
            OptionsView.DataRowHeight = 22
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 22
            OnColumnHeaderClick = cxGridA11ViewColumnHeaderClick
            object Grid3ViewColumnGridView2cxGridViewColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'No'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.CellMerging = True
              Options.Sorting = False
              Width = 40
            end
            object Grid3ViewColumnGridView2cxGridViewColumn13: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.CellMerging = True
            end
            object Grid3ViewColumnGridView2cxGridViewColumn2: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.CellMerging = True
              Width = 100
            end
            object Grid3ViewColumnGridView2cxGridViewColumn3: TcxGridDBColumn
              DataBinding.FieldName = #44396#48516
              PropertiesClassName = 'TcxLabelProperties'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 100
            end
            object Grid3ViewColumnGridView2cxGridViewColumn4: TcxGridDBColumn
              DataBinding.FieldName = #49688#49688#47308'(R)'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Options.Sorting = False
              Width = 100
            end
            object Grid3ViewColumnGridView2cxGridViewColumn5: TcxGridDBColumn
              DataBinding.FieldName = #49688#49688#47308'(C)'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Options.Sorting = False
              Width = 100
            end
            object Grid3ViewColumnGridView2cxGridViewColumn6: TcxGridDBColumn
              DataBinding.FieldName = #48156#51452#48708
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Options.Sorting = False
              Width = 100
            end
            object Grid3ViewColumnGridView2cxGridViewColumn7: TcxGridDBColumn
              DataBinding.FieldName = #49688#51452#48708
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Options.Sorting = False
              Width = 100
            end
            object Grid3ViewColumnGridView2cxGridViewColumn8: TcxGridDBColumn
              DataBinding.FieldName = #53084#49468#53440#45824#54665
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Options.Sorting = False
              Width = 100
            end
            object Grid3ViewColumnGridView2cxGridViewColumn9: TcxGridDBColumn
              DataBinding.FieldName = #52712#49548#48268#44552'(R)'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Options.Sorting = False
              Width = 100
            end
            object Grid3ViewColumnGridView2cxGridViewColumn10: TcxGridDBColumn
              DataBinding.FieldName = #52712#49548#48268#44552'(C)'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Options.Sorting = False
              Width = 100
            end
            object Grid3ViewColumnGridView2cxGridViewColumn11: TcxGridDBColumn
              DataBinding.FieldName = #44592#53440
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Options.Sorting = False
              Width = 100
            end
            object Grid3ViewColumnGridView2cxGridViewColumn12: TcxGridDBColumn
              DataBinding.FieldName = #52509#44228
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Options.Sorting = False
              Width = 100
            end
          end
          object cxGridA11Level: TcxGridLevel
            GridView = cxGridA11View
          end
        end
        object pnlHelpA11: TPanel
          Left = 128
          Top = 216
          Width = 617
          Height = 289
          BevelKind = bkFlat
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 2
          Visible = False
          DesignSize = (
            613
            285)
          object cxGroupBox12: TcxGroupBox
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
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Height = 285
            Width = 613
            object cxLabel71: TcxLabel
              Left = 3
              Top = 14
              Align = alClient
              Caption = 
                #13#10#8251' '#54644#45817#54637#47785#51012' '#53364#47533#54616#47732' '#49464#48512#45236#50669#51012' '#48380' '#49688' '#51080#49845#45768#45796'.'#13#10#13#10#8251' '#49688#49688#47308'(R)  : '#49548#49549#44592#49324#51032' '#44277#50857#52880#49772' '#51473#50640#49436' '#50724#45908#49688 +
                #49688#47308#47196' '#52264#44048#46108' '#44552#50529#51077#45768#45796'.'#13#10'     ('#51060' '#44552#50529#51473#50640#49436' '#53440#51648#49324#51032' '#50724#45908#47484' '#51105#50520#51012' '#44221#50864#50640#45716' '#39#53440#49324#53084#39#44552#50529#51060' '#50732#46972#44032#44172' '#46121#45768 +
                #45796'.)'#13#10#13#10#8251' '#49688#49688#47308'(C)  : '#49548#49549' '#44592#49324#51032' '#51088#52404#52880#49772#50640#49436' '#50724#45908#50868#54665' '#49688#49688#47308#47196' '#52264#44048#46108' '#44552#50529' '#52509#50529'.'#13#10#13#10#8251' '#48156#51452#48708' :' +
                ' '#50724#45908#47484' '#48156#51452#54616#50668' '#53440#51648#49324'('#48376#49324#45236' '#53440' '#51648#49324' '#54252#54632')'#47196#48512#53552' '#48155#51008' '#44552#50529'.'#13#10#13#10#8251' '#52712#49548#48268#44552'(R) : '#44592#49324#51032' '#50724#45908#52712#49548' '#48268#44552#51060 +
                ' '#8216#44277#50857#52880#49772#8217#50640#49436' '#52264#44048#46108' '#44552#50529'.'#13#10#13#10#8251' '#49688#51452#48708' : '#53440#49324#51032' '#50724#45908#47484' '#49688#51452#54616#50668' '#53440#49324#50640' '#51648#44553#54620' '#44552#50529'('#47560#51060#45320#49828' '#54364#49884').'#13#10 +
                #13#10#8251' '#53084#49468#53552' : '#53084#49468#53552#47484' '#45824#54665'/'#51060#44288#51032' '#44221#50864' '#50577#49324#44032' '#50724#45908' '#45800#50948#47196' '#51221#49328#51012' '#50557#49549#54620' '#44552#50529#51032' '#54633#44228'.'#13#10#13#10#8251' '#44592#53440'  : S' +
                'MS '#52649#51204#44552#50529' '#46321'.'#13#10#13#10#8251' '#52509#44228'  : '#54644#45817' '#44592#44036' '#50948' '#44552#50529#51012' '#47784#46160' '#54633#52828' '#44163#51077#45768#45796'.'#13#10'     '#45800', '#53440#49324#53084' '#44552#50529#51008' (' +
                '-)'#51060#44256', '#53084#49468#53552#46020' (-)'#44032' '#46104#45716' '#44221#50864#44032' '#51080#49845#45768#45796'.'
              ParentColor = False
              Style.Color = 15269887
              ExplicitLeft = 2
              ExplicitTop = -1
              ExplicitWidth = 609
              ExplicitHeight = 284
            end
          end
          object BtnCloseA11: TcxButton
            Left = 590
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
            OptionsImage.Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000001511
              93B91C17C2F41B17C3F41C16C2F41A14BFF41914BFF41913BFF41A14BFF41A13
              BEF41A13BEF41B14C1F41812BDF41B14C1F4140F93B90000000019199BB92E2D
              FBFF2423EFFF0B06B6FF201DE5FF2B29FAFF2824F4FF2824F4FF2723F4FF2722
              F4FF2925FCFF130DCEFF0A05B0FF211AEFFF2921FBFF161498B92322D4FE272B
              EFFF1312B1FF6A67BFFF1B1AB0FF1F20E2FF2D2EF4FF282AEDFF2929EEFF2C2D
              F4FF0E0DCAFF3F3CB5FF9090CEFF1210B1FF2321EEFF1F1BD0FE2121C9F4100E
              BBFF918ED3FFFFFFFFFFADAAE0FF100FB2FF1C20E0FF3036F4FF2F35F4FF0D0D
              CEFF3835B8FFECECF8FFFFFFFFFF6A67C6FF0F0DC0FF201ECAF42428D0F41D24
              D7FF433DC3FFEBEAF8FFFFFFFFFFAFADE3FF1D1BB9FF1D24DEFF171CD7FF3934
              BEFFEEEDF9FFFFFFFFFFACAAE4FF1F1BBDFF252CE7FF2221CDF4252AD1F4384F
              FAFF161ED4FF3A32C5FFEDEDF9FFFFFFFFFFD0CEF0FF201FC1FF1E1DC0FFE2E2
              F6FFFFFFFFFFB3B1E8FF1511BFFF232DE5FF3241F7FF2324CDF42228D2F4364F
              F3FF3950F3FF151DD8FF3E35CCFFDEDBF6FFFFFFFFFFCFCDF2FFCFCEF3FFFFFF
              FFFFD4D3F3FF2321C7FF202CE3FF3447F4FF3144F2FF2023D0F4454BD9F43B55
              F3FF334BEFFF3852F4FF1F2ADFFF211DCBFFCDCCF4FFFFFFFFFFFFFFFFFFCDCB
              F4FF2120CDFF2232E3FF354DF4FF2F44EEFF364DF2FF4247D7F46366DFF46E82
              F7FF556AF2FF4862F3FF2B3BE8FF221FD2FFCDCBF3FFFFFFFFFFFFFFFFFFCDCB
              F4FF201DD2FF242FE4FF445DF3FF5366F2FF6A7DF6FF6064DDF46064E1F47388
              F7FF788CF6FF6472F1FF514BE0FFD5D2F7FFFFFFFFFFDCDAF8FFDCDAF8FFFFFF
              FFFFDCDAF8FF655EE2FF575EEAFF7588F6FF6F83F6FF5D62DFF46166E3F47891
              F7FF6779F2FF5550E6FFCAC6F6FFFFFFFFFFE9E8FCFF5851E6FF5954E6FFE0DE
              FAFFFFFFFFFFF6F5FDFF6F69E9FF575FECFF748CF7FF5F64E2F4636AE4F46F82
              F3FF5E59EBFFC2BFF7FFFFFFFFFFF2F1FDFF6E66ECFF5D68EFFF6472F1FF5E57
              EBFFC5C1F8FFFFFFFFFFF1F0FDFF7670ECFF616BF1FF6268E4F4646CE6F45A5C
              EFFF928BF3FFFFFFFFFFF1F0FEFF6F68F0FF5B64EFFF7A92F6FF7A91F6FF6775
              F2FF5551EDFFC3BFF9FFFFFFFFFFAFA8F7FF5857F0FF6165E4F46B74F1FE7A91
              F6FF5A57F0FFAEA8F7FF7771F3FF5F68F2FF7D96F6FF798EF5FF788EF5FF7C94
              F6FF6D7FF4FF5F5BF0FF948CF5FF5956F1FF758BF6FF6972EFFE4E54B0B985A1
              F7FF7C94F6FF5B5BF3FF6975F5FF84A1F8FF8099F7FF7F98F7FF7F98F7FF7E97
              F6FF819CF6FF7588F5FF5C5FF3FF7990F5FF819DF7FF4C53AEB9000000005055
              B1B96970E9F4666CE9F46971E9F4676EE9F4676EE9F4666EE9F4666EE9F4676E
              E9F4666DE9F4676FE9F4676FE9F4676EE9F44E53B0B900000000}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            TabStop = False
            OnClick = BtnCloseA11Click
          end
        end
      end
    end
    object cxTabSheet12: TcxTabSheet
      Tag = 612
      Caption = #53084#50868#54665#51221#49328
      ImageIndex = 11
      object pnlMainA12: TPanel
        Left = 0
        Top = 0
        Width = 995
        Height = 683
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object Shape53: TShape
          Left = 0
          Top = 63
          Width = 995
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = -6
          ExplicitTop = 23
          ExplicitWidth = 305
        end
        object cxGroupBox14: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          ParentBackground = False
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clBtnFace
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 63
          Width = 995
          object Shape54: TShape
            Left = 6
            Top = 7
            Width = 267
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape55: TShape
            Left = 6
            Top = 33
            Width = 376
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object cxLabel72: TcxLabel
            Left = 18
            Top = 11
            Caption = #49548'     '#49549
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 42
            AnchorY = 19
          end
          object lblSosokNameA12: TcxLabel
            Left = 83
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
            AnchorX = 244
            AnchorY = 19
          end
          object cxDtStartA12: TcxDateEdit
            Left = 83
            Top = 32
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
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Height = 26
            Width = 87
          end
          object cxLabel73: TcxLabel
            Left = 223
            Top = 37
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
            AnchorY = 46
          end
          object cxDtEndA12: TcxDateEdit
            Left = 238
            Top = 32
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
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            Height = 26
            Width = 87
          end
          object btnSearchA12: TcxButton
            Left = 828
            Top = 7
            Width = 78
            Height = 50
            Cursor = crHandPoint
            Caption = #44160#49353
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 5
            OnClick = btnSearchA12Click
          end
          object btnExcelA12: TcxButton
            Left = 907
            Top = 7
            Width = 78
            Height = 50
            Cursor = crHandPoint
            Caption = #50641#49472
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 6
            OnClick = btnExcelA12Click
          end
          object btnDateA12: TcxButton
            Left = 376
            Top = 33
            Width = 28
            Height = 24
            Cursor = crHandPoint
            DropDownMenu = pop_dateA1
            Kind = cxbkDropDown
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000D2905C67D49663BF000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
              0000000000000000000000000000000000000000000000000001000000000000
              00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
              000000000000000000000000000000000000000000000000000D000000000000
              0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
              000000000000000000000000000000000000000000000000001800000000FF80
              0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
              000000000000000000000000000000000000000000000000002200000000C774
              30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
              81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002900000000C774
              30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
              81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002B00000000FF80
              0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
              0000000000000000000000000000000000000000000000000028000000000000
              0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
              0000000000000000000000000000000000000000000000000020000000000000
              00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
              0000000000000000000000000000000000000000000000000017000000000000
              0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
              000000000000000000000000000000000000000000000000000C000000000000
              000000000000000000000000000000000000D2905C67D49663BF000000000000
              0000000000000000000000000000000000000000000000000001000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 7
          end
          object cxLabel74: TcxLabel
            Left = 18
            Top = 37
            Caption = #44592'     '#44036
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 42
            AnchorY = 45
          end
          object cxTeStartA12: TcxTimeEdit
            Left = 166
            Top = 31
            AutoSize = False
            EditValue = 0.375d
            Properties.TimeFormat = tfHourMin
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 9
            Height = 26
            Width = 51
          end
          object cxTeEndA12: TcxTimeEdit
            Left = 324
            Top = 32
            AutoSize = False
            EditValue = 0.375d
            Properties.TimeFormat = tfHourMin
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 10
            Height = 26
            Width = 51
          end
          object btnHelpA12: TcxButton
            Left = 410
            Top = 33
            Width = 71
            Height = 24
            Cursor = crHandPoint
            Caption = #51060#50857#50504#45236
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 11
            TabStop = False
            OnClick = btnHelpA12Click
          end
        end
        object cxGridA12: TcxGrid
          Left = 0
          Top = 65
          Width = 995
          Height = 618
          Align = alClient
          TabOrder = 1
          LookAndFeel.NativeStyle = True
          object cxGridA12View: TcxGridDBTableView
            PopupMenu = PopupMenuA1
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0'
                Kind = skSum
                Column = cxGridDBColumn4
              end
              item
                Format = '#,##0'
                Kind = skSum
                Column = cxGridDBColumn5
              end
              item
                Format = '#,##0'
                Kind = skSum
                Column = cxGridDBColumn6
              end
              item
                Format = '#,##0'
                Kind = skSum
                Column = cxGridDBColumn7
              end
              item
                Format = '#,##0'
                Kind = skSum
                Column = cxGridDBColumn8
              end
              item
                Format = '#,##0'
                Kind = skSum
                Column = cxGridDBColumn9
              end
              item
                Format = '#,##0'
                Kind = skSum
                Column = cxGridDBColumn10
              end
              item
                Format = '#,##0'
                Kind = skSum
                Column = cxGridDBColumn11
              end
              item
                Format = '#,##0'
                Kind = skSum
                Column = cxGridDBColumn12
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.OnSortingChanged = cxGridA12ViewDataControllerSortingChanged
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnMoving = False
            OptionsSelection.CellSelect = False
            OptionsView.NoDataToDisplayInfoText = ' '
            OptionsView.DataRowHeight = 22
            OptionsView.Footer = True
            OptionsView.FooterAutoHeight = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 22
            OnColumnHeaderClick = cxGridA12ViewColumnHeaderClick
            object cxGridDBColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'No'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 40
            end
            object cxGridDBColumn2: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
            object cxGridDBColumn3: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Width = 100
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = #49688#49688#47308'(R)'
              DataBinding.FieldName = #44592#49324#44277#50857#52880#49772
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Options.Sorting = False
              Width = 100
            end
            object cxGridDBColumn5: TcxGridDBColumn
              Caption = #48156#51452#48708
              DataBinding.FieldName = #48156#51452#49688#51061'('#44277#50857')'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Width = 100
            end
            object cxGridDBColumn6: TcxGridDBColumn
              Caption = #49688#51452#48708
              DataBinding.FieldName = #48156#51452#49688#51061'('#51088#52404')'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Options.Sorting = False
              Width = 100
            end
            object cxGridDBColumn7: TcxGridDBColumn
              Caption = #52712#49548#48268#44552'(R)'
              DataBinding.FieldName = #49688#51452#51648#44553
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Options.Sorting = False
              Width = 100
            end
            object cxGridDBColumn8: TcxGridDBColumn
              Caption = #53084#49468#53440#45824#54665
              DataBinding.FieldName = #51648#49324#50756#47308#53084#49688
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Options.Sorting = False
              Width = 100
            end
            object cxGridDBColumn9: TcxGridDBColumn
              Caption = #51648#49324#51077#44552
              DataBinding.FieldName = #44592#49324#51068#48708'('#44277#50857')'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Options.Sorting = False
              Width = 100
            end
            object cxGridDBColumn10: TcxGridDBColumn
              Caption = #51648#49324#52636#44552
              DataBinding.FieldName = #44592#49324#51068#48708'('#51088#52404')'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Options.Sorting = False
              Width = 100
            end
            object cxGridDBColumn11: TcxGridDBColumn
              Caption = #44592#53440
              DataBinding.FieldName = #49556#47336#49496#49324#50857#47308
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Options.Sorting = False
              Width = 100
            end
            object cxGridDBColumn12: TcxGridDBColumn
              Caption = #51092#50529
              DataBinding.FieldName = #48372#54744#47308
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Options.Sorting = False
              Width = 100
            end
          end
          object cxGridA12Level: TcxGridLevel
            GridView = cxGridA12View
          end
        end
        object pnlHelpA12: TPanel
          Left = 166
          Top = 126
          Width = 617
          Height = 419
          BevelKind = bkFlat
          BevelOuter = bvNone
          Color = 16316393
          TabOrder = 2
          Visible = False
          DesignSize = (
            613
            415)
          object cxGroupBox17: TcxGroupBox
            Left = 0
            Top = 0
            Align = alClient
            Caption = #51060#50857#50504#45236
            ParentBackground = False
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clBtnFace
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Height = 415
            Width = 613
            object cxLabel75: TcxLabel
              Left = 3
              Top = 14
              Align = alClient
              Caption = 
                #13#10'***'#50864#52769' '#49345#45800' '#49444#47749' ***'#13#10#13#10'-'#51648#49324#51092#50529': '#49548#49549' '#51648#49324#51032' '#39#51092#50529#39#54633#44228'.('#53364#47533#54616#50668' '#51648#49324#44036' '#51060#51204#44032#45733')'#13#10'-SMS'#51092 +
                #50529': '#49548#49549' '#51648#49324#51032' '#39'SMS'#51092#50529#39' '#54633#44228'.('#53364#47533#54616#50668' '#51648#49324#48324' '#52649#51204#44032#45733')'#13#10'-'#44592#49324#44277#50857#52880#49772#52509#51092#50529': '#54788#51116' '#49884#49828#53596#50640' '#50696#52824#46104#50612' '#51080 +
                #45716' '#44592#49324#51032' '#44277#50857#52880#49772#51032' '#52509' '#54633#44228' '#51092#50529#13#10'-'#44592#49324#51088#52404#52880#49772#52509#51092#50529': '#51648#49324#50640#49436' '#51649#51217' '#49688#44552#54616#44256' '#44592#49324#50640#44172' '#51088#52404#51201#51004#47196' '#52649#51204#54620' '#51088#52404#52880 +
                #49772#51032' '#52509' '#54633#44228' '#51092#50529#13#10#13#10'*'#49688#49688#47308'(R): '#44592#49324#44032' '#50724#45908' '#50868#54665#49884' '#39#44277#50857#52880#49772#39#50640#49436' '#49688#49688#47308#44032' '#52264#44048#46108' '#52509#50529', '#49688#49688#47308#51204#50529#51060' '#51648 +
                #49324#52880#49772#50640' '#52649#51204#46121#45768#45796'.'#13#10#13#10'*'#48156#51452#48708': '#50724#45908#47484' '#48156#51452#54616#50668' '#53440#51648#49324'('#48376#49324#45236' '#53440' '#51648#49324' '#54252#54632')'#47196#48512#53552' '#48155#51008' '#44552#50529#13#10#13#10'*'#49688#51452#48708':' +
                ' '#53440#49324#51032' '#50724#45908#47484' '#49688#51452#54616#50668' '#53440#49324#50640' '#51648#44553#54620' '#44552#50529'(- '#54364#49884')'#13#10#13#10'*'#52712#49548#48268#44552': '#44592#49324#51032' '#50724#45908#52712#49548' '#48268#44552#51060' '#39#44277#50857#52880#49772#39#50640#49436' '#52264 +
                #44048#46108' '#44552#50529'. '#51060#44552#50529#46020' '#51648#49324#51032' '#51092#50529#50640' '#51201#47549#46121#45768#45796'.'#13#10#13#10'*'#53084#49468#53552': '#53084#49468#53552#47484' '#45824#54665'/'#51060#44288#51032' '#44221#50864' '#50577#49324#44032' '#50724#45908' '#45800#50948#47196' '#51221#49328 +
                #51012' '#50557#49549#54620' '#44552#50529#51032' '#54633#44228#13#10#13#10'*'#51648#49324#51077#44552': '#44480#49324#50640#49436' '#51648#49324#51032' '#39#44032#49345#44228#51340#39#47196' '#49569#44552#54616#50668' '#52649#51204#54620' '#44552#50529#13#10#13#10'*'#51648#49324#52636#44552': '#53084#47560 +
                #45320#54924#49324#50640#49436' '#51648#49324#51032' '#54788#44552' '#49569#44552#54616#50668' '#51221#49328' '#51077#44552#54644' '#46300#47536' '#44552#50529'.('#48376#49324#44228#51340#47196' '#51077#44552')'#13#10#13#10'*'#44592#53440': '#44592#49324#53748#51649#54872#48520#50529'('#44592#49324#44277#50857#52880#49772 +
                '), SMS'#52649#51204#50529'(-), '#44592#49324#49324#50857#47308#45824#45225#50529', '#13#10' '#54980#48520#48277#51064#50868#54665#51648#44553#50529'('#44592#49324#50640' '#51088#46041#51648#44553#52649#51204' '#46108' '#48512#48516'), '#48512#44032#49324#50857#47308#46321' '#53945#49688 +
                #49345#54889#50640' '#51032#54620' '#48372#51221#51077#47141' '#46321#51032' '#45236#50857#51076'.'#13#10#13#10'*'#51092#50529': '#51648#49324#51109#50529#44284' '#46041#51068#54633#45768#45796'. '#46384#46972#49436', '#54788#49884#51216' '#51092#50529#51012' '#54364#49884#54633#45768#45796'.'#13#10#13#10 +
                #9670#39#51221#49328#39#51060#46976'?: '#50668#44592#49436' '#51221#49328#51008' '#53084#47560#45320#50640#49436' '#44480' '#51648#49324#50640' '#44277#51201#51004#47196' '#44228#49328#54624' '#44552#50529#51012' '#47568#54633#45768#45796'. '#13#10'   '#46384#46972#49436', '#44480' '#51648#49324#50640 +
                #49436' '#51088#52404#51201#51004#47196' '#49688#44552#54620' '#39#44592#49324' '#51088#52404#52880#49772#39#45716' '#49688#52824#50640' '#54252#54632#51060' '#46020#51648' '#50506#49845#45768#45796'.'#13#10#13#10#9670'<'#50641#49472#45796#50868'>'#51012' '#48155#51004#49884#47732' '#50948' '#45236#50669#51012' '#44148 +
                #48324#47196' '#51312#54924#54624' '#49688' '#51080#49845#45768#45796'.('#50724#45908' '#49688'/'#48156#51452' '#54252#54632')'
              ParentColor = False
              Style.Color = 15269887
              ExplicitLeft = 2
              ExplicitTop = -1
              ExplicitWidth = 609
              ExplicitHeight = 414
            end
          end
          object BtnCloseA12: TcxButton
            Left = 590
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
            OptionsImage.Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000001511
              93B91C17C2F41B17C3F41C16C2F41A14BFF41914BFF41913BFF41A14BFF41A13
              BEF41A13BEF41B14C1F41812BDF41B14C1F4140F93B90000000019199BB92E2D
              FBFF2423EFFF0B06B6FF201DE5FF2B29FAFF2824F4FF2824F4FF2723F4FF2722
              F4FF2925FCFF130DCEFF0A05B0FF211AEFFF2921FBFF161498B92322D4FE272B
              EFFF1312B1FF6A67BFFF1B1AB0FF1F20E2FF2D2EF4FF282AEDFF2929EEFF2C2D
              F4FF0E0DCAFF3F3CB5FF9090CEFF1210B1FF2321EEFF1F1BD0FE2121C9F4100E
              BBFF918ED3FFFFFFFFFFADAAE0FF100FB2FF1C20E0FF3036F4FF2F35F4FF0D0D
              CEFF3835B8FFECECF8FFFFFFFFFF6A67C6FF0F0DC0FF201ECAF42428D0F41D24
              D7FF433DC3FFEBEAF8FFFFFFFFFFAFADE3FF1D1BB9FF1D24DEFF171CD7FF3934
              BEFFEEEDF9FFFFFFFFFFACAAE4FF1F1BBDFF252CE7FF2221CDF4252AD1F4384F
              FAFF161ED4FF3A32C5FFEDEDF9FFFFFFFFFFD0CEF0FF201FC1FF1E1DC0FFE2E2
              F6FFFFFFFFFFB3B1E8FF1511BFFF232DE5FF3241F7FF2324CDF42228D2F4364F
              F3FF3950F3FF151DD8FF3E35CCFFDEDBF6FFFFFFFFFFCFCDF2FFCFCEF3FFFFFF
              FFFFD4D3F3FF2321C7FF202CE3FF3447F4FF3144F2FF2023D0F4454BD9F43B55
              F3FF334BEFFF3852F4FF1F2ADFFF211DCBFFCDCCF4FFFFFFFFFFFFFFFFFFCDCB
              F4FF2120CDFF2232E3FF354DF4FF2F44EEFF364DF2FF4247D7F46366DFF46E82
              F7FF556AF2FF4862F3FF2B3BE8FF221FD2FFCDCBF3FFFFFFFFFFFFFFFFFFCDCB
              F4FF201DD2FF242FE4FF445DF3FF5366F2FF6A7DF6FF6064DDF46064E1F47388
              F7FF788CF6FF6472F1FF514BE0FFD5D2F7FFFFFFFFFFDCDAF8FFDCDAF8FFFFFF
              FFFFDCDAF8FF655EE2FF575EEAFF7588F6FF6F83F6FF5D62DFF46166E3F47891
              F7FF6779F2FF5550E6FFCAC6F6FFFFFFFFFFE9E8FCFF5851E6FF5954E6FFE0DE
              FAFFFFFFFFFFF6F5FDFF6F69E9FF575FECFF748CF7FF5F64E2F4636AE4F46F82
              F3FF5E59EBFFC2BFF7FFFFFFFFFFF2F1FDFF6E66ECFF5D68EFFF6472F1FF5E57
              EBFFC5C1F8FFFFFFFFFFF1F0FDFF7670ECFF616BF1FF6268E4F4646CE6F45A5C
              EFFF928BF3FFFFFFFFFFF1F0FEFF6F68F0FF5B64EFFF7A92F6FF7A91F6FF6775
              F2FF5551EDFFC3BFF9FFFFFFFFFFAFA8F7FF5857F0FF6165E4F46B74F1FE7A91
              F6FF5A57F0FFAEA8F7FF7771F3FF5F68F2FF7D96F6FF798EF5FF788EF5FF7C94
              F6FF6D7FF4FF5F5BF0FF948CF5FF5956F1FF758BF6FF6972EFFE4E54B0B985A1
              F7FF7C94F6FF5B5BF3FF6975F5FF84A1F8FF8099F7FF7F98F7FF7F98F7FF7E97
              F6FF819CF6FF7588F5FF5C5FF3FF7990F5FF819DF7FF4C53AEB9000000005055
              B1B96970E9F4666CE9F46971E9F4676EE9F4676EE9F4666EE9F4666EE9F4676E
              E9F4666DE9F4676FE9F4676FE9F4676EE9F44E53B0B900000000}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            TabStop = False
            OnClick = BtnCloseA12Click
          end
        end
      end
    end
    object cxTabSheet13: TcxTabSheet
      Tag = 613
      Caption = #44592#49324#49688#49688#47308#54788#54889
      ImageIndex = 12
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnlMainA13: TPanel
        Left = 0
        Top = 0
        Width = 995
        Height = 683
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object Shape56: TShape
          Left = 0
          Top = 63
          Width = 995
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = -6
          ExplicitTop = 23
          ExplicitWidth = 305
        end
        object cxGroupBox18: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          ParentBackground = False
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clBtnFace
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 63
          Width = 995
          object Shape57: TShape
            Left = 6
            Top = 7
            Width = 267
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape58: TShape
            Left = 6
            Top = 33
            Width = 376
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object cxLabel76: TcxLabel
            Left = 18
            Top = 11
            Caption = #49548'     '#49549
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 42
            AnchorY = 19
          end
          object lblSosokNameA13: TcxLabel
            Left = 83
            Top = 6
            AutoSize = False
            Caption = #49548#49549
            ParentColor = False
            Style.BorderStyle = ebsSingle
            Style.LookAndFeel.NativeStyle = False
            Style.Shadow = False
            Style.TextColor = 13719147
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 321
            AnchorX = 244
            AnchorY = 19
          end
          object cxDtStartA13: TcxDateEdit
            Left = 83
            Top = 32
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
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Height = 26
            Width = 87
          end
          object cxLabel77: TcxLabel
            Left = 223
            Top = 37
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
            AnchorY = 46
          end
          object cxDtEndA13: TcxDateEdit
            Left = 238
            Top = 32
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
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            Height = 26
            Width = 87
          end
          object btnSearchA13: TcxButton
            Left = 828
            Top = 7
            Width = 78
            Height = 50
            Cursor = crHandPoint
            Caption = #44160#49353
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 5
            OnClick = btnSearchA13Click
          end
          object btnExcelA13: TcxButton
            Left = 907
            Top = 7
            Width = 78
            Height = 50
            Cursor = crHandPoint
            Caption = #50641#49472
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 6
            OnClick = btnExcelA13Click
          end
          object btnDateA13: TcxButton
            Left = 376
            Top = 33
            Width = 28
            Height = 24
            Cursor = crHandPoint
            DropDownMenu = pop_dateA1
            Kind = cxbkDropDown
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000D2905C67D49663BF000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
              0000000000000000000000000000000000000000000000000001000000000000
              00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
              000000000000000000000000000000000000000000000000000D000000000000
              0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
              000000000000000000000000000000000000000000000000001800000000FF80
              0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
              000000000000000000000000000000000000000000000000002200000000C774
              30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
              81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002900000000C774
              30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
              81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002B00000000FF80
              0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
              0000000000000000000000000000000000000000000000000028000000000000
              0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
              0000000000000000000000000000000000000000000000000020000000000000
              00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
              0000000000000000000000000000000000000000000000000017000000000000
              0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
              000000000000000000000000000000000000000000000000000C000000000000
              000000000000000000000000000000000000D2905C67D49663BF000000000000
              0000000000000000000000000000000000000000000000000001000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 7
          end
          object cxLabel78: TcxLabel
            Left = 18
            Top = 37
            Caption = #44592'     '#44036
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 42
            AnchorY = 45
          end
          object cxTeStartA13: TcxTimeEdit
            Left = 169
            Top = 32
            AutoSize = False
            EditValue = 0.375d
            Properties.TimeFormat = tfHourMin
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 9
            Height = 26
            Width = 51
          end
          object cxTeEndA13: TcxTimeEdit
            Left = 324
            Top = 32
            AutoSize = False
            EditValue = 0.375d
            Properties.TimeFormat = tfHourMin
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 10
            Height = 26
            Width = 51
          end
          object btnHelpA13: TcxButton
            Left = 410
            Top = 33
            Width = 71
            Height = 24
            Cursor = crHandPoint
            Caption = #51060#50857#50504#45236
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 11
            TabStop = False
            OnClick = btnHelpA13Click
          end
        end
        object cxGridA13: TcxGrid
          Left = 0
          Top = 65
          Width = 995
          Height = 618
          Align = alClient
          PopupMenu = PopupMenuA1
          TabOrder = 1
          LookAndFeel.NativeStyle = True
          object cxGridA13View: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            OnCellDblClick = cxGridA13ViewCellDblClick
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0'
                Kind = skSum
                Column = cxGridDBColumn18
              end
              item
                Format = '#,##0'
                Kind = skSum
                Column = cxGridDBColumn19
              end
              item
                Format = '#,##0'
                Kind = skSum
                Column = cxGridDBColumn20
              end
              item
                Format = '#,##0'
                Kind = skSum
                Column = cxGridDBColumn21
              end
              item
                Format = '#,##0'
                Kind = skSum
                Column = cxGridDBColumn22
              end
              item
                Format = '#,##0'
                Kind = skSum
                Column = cxGridDBColumn23
              end
              item
                Format = '#,##0'
                Kind = skSum
                Column = cxGridDBColumn24
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.OnSortingChanged = cxGridA13ViewDataControllerSortingChanged
            OptionsBehavior.CellHints = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnMoving = False
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.NoDataToDisplayInfoText = ' '
            OptionsView.DataRowHeight = 22
            OptionsView.Footer = True
            OptionsView.FooterAutoHeight = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 22
            OnColumnHeaderClick = cxGridA13ViewColumnHeaderClick
            object cxGridDBColumn13: TcxGridDBColumn
              DataBinding.FieldName = 'No'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 40
            end
            object cxGridDBColumn14: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#53076#46300
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
            object cxGridDBColumn15: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Width = 100
            end
            object cxGridDBColumn16: TcxGridDBColumn
              DataBinding.FieldName = #44592#49324#51077#44552'(R)'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Width = 100
            end
            object cxGridDBColumn17: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#51077#47141'(C)'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Width = 100
            end
            object cxGridDBColumn18: TcxGridDBColumn
              DataBinding.FieldName = #49688#49688#47308'(R)'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Options.Sorting = False
              Width = 100
            end
            object cxGridDBColumn19: TcxGridDBColumn
              DataBinding.FieldName = #49688#49688#47308'(C)'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Options.Sorting = False
              Width = 100
            end
            object cxGridDBColumn20: TcxGridDBColumn
              DataBinding.FieldName = #52712#49548#48268#44552'(R)'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Options.Sorting = False
              Width = 100
            end
            object cxGridDBColumn21: TcxGridDBColumn
              DataBinding.FieldName = #52712#49548#48268#44552'(C)'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Options.Sorting = False
              Width = 100
            end
            object cxGridDBColumn22: TcxGridDBColumn
              DataBinding.FieldName = #44592#49324#52636#44552'(R)'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Options.Sorting = False
              Width = 100
            end
            object cxGridDBColumn23: TcxGridDBColumn
              DataBinding.FieldName = #44592#49324#52636#44552'(C)'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Options.Sorting = False
              Width = 100
            end
            object cxGridDBColumn24: TcxGridDBColumn
              DataBinding.FieldName = #49324#50857','#48372#54744#47308
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Options.Sorting = False
              Width = 100
            end
          end
          object cxGridA13Level: TcxGridLevel
            GridView = cxGridA13View
          end
        end
        object pnlHelpA13: TPanel
          Left = 128
          Top = 216
          Width = 529
          Height = 369
          BevelKind = bkFlat
          BevelOuter = bvNone
          Color = 16316393
          TabOrder = 2
          Visible = False
          DesignSize = (
            525
            365)
          object cxGropuBox12: TcxGroupBox
            Left = 0
            Top = 0
            Align = alClient
            Caption = #51060#50857#50504#45236
            ParentBackground = False
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clBtnFace
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Height = 365
            Width = 525
            object cxMemo1: TcxMemo
              Left = 3
              Top = 14
              Align = alClient
              Lines.Strings = (
                '** '#47784#46304#54637#47785#51012' '#53364#47533#54616#47732' '#45236#50669#51060' '#54364#49884#46121#45768#45796'.'
                '** R: '#8216#44277#50857#52880#49772#8217#47484' '#51032#48120#54616#47728', '#44032#49345#44228#51340'('#53084#47560#45320' '#49884#49828#53596')'#47196' '#51077#44552#54620' '#44552#50529#51077#45768#45796'.'
                '/ C: '#8216#51088#52404#52880#49772#8217#47484' '#51032#48120#54616#47728', '#51648#49324#50640#49436' '#51076#51032#51201#51004#47196' '#52649#51204#54620' '#44552#50529#51077#45768#45796'.'
                ''
                '*'#44592#49324#51077#44552'(R): '#49548#49549#44592#49324#44032' '#51088#49888#51032' '#44032#49345#44228#51340#47196' '#51077#44552#54620' '#44277#50857#52880#49772' '#44552#50529'.'
                '  ('#54532#47196#44536#47016#49324#50857#47308' '#48143' '#48372#54744#47308#51032' '#51077#44552#51012' '#47785#51201#51004#47196' '#51077#44552#54620' '#44552#50529#46020' '#54252#54632#54633#45768#45796'.)'
                '* '#51648#49324#51077#47141'(C): '#51648#49324#50640#49436' '#8216#44592#49324#44288#47532#8217' '#47700#45684#51032' '#8216#52649#51204#54616#44592#8217#47484' '#51060#50857#54616#50668','
                '  '#44592#49324#51032' '#51088#52404#52880#49772#47484' '#52649#51204#54620' '#44552#50529'('#44592#49324#47196#48512#53552' '#51648#49324#44032' '#51649#51217' '#49688#44552#54620' '#44552#50529'('#54788#44552#49688#51077') '#46321'. '
                '  '#45800', '#48372#45320#49828#47196' '#52649#51204#54644' '#51456' '#44163#46020' '#54252#54632#46120') '
                '  -> '#9733#53364#47533#9756#54616#47732' '#47532#49828#53944#47484' '#48380' '#49688' '#51080#49845#45768#45796'.'
                ''
                '* '#49688#49688#47308'(R): '#49548#49549' '#44592#49324#51032' '#44277#50857#52880#49772#50640#49436' '#50724#45908#50868#54665' '#49688#49688#47308#47196' '#52264#44048#46108' '#44552#50529' '#52509#50529
                '* '#49688#49688#47308'(C): '#49548#49549' '#44592#49324#51032' '#51088#52404#52880#49772#50640#49436' '#50724#45908#50868#54665' '#49688#49688#47308#47196' '#52264#44048#46108' '#44552#50529' '#52509#50529
                ''
                '* '#52712#49548#48268#44552'(R): '#49548#49549' '#44592#49324#51032' '#44277#50857#52880#49772#50640#49436' '#50724#45908#52712#49548' '#48268#44552#51004#47196' '#52264#44048#46108' '#44552#50529' '#52509#50529
                '* '#52712#49548#48268#44552'(C): '#49548#49549' '#44592#49324#51032' '#51088#52404#52880#49772#50640#49436' '#50724#45908#52712#49548' '#48268#44552#51004#47196' '#52264#44048#46108' '#44552#50529' '#52509#50529
                ''
                '* '#44592#49324#52636#44552'(R): '#49548#49549' '#44592#49324#51032' '#44277#50857#52880#49772#50640#49436' '#52636#44552'('#54872#48520')'#46108' '#44552#50529'('#53748#49324' '#46321#51032' '#44221#50864')'
                '* '#44592#49324#52636#44552'(C): '#49548#49549' '#44592#49324#51032' '#51088#52404#52880#49772#50640#49436' '#52636#44552#54620' '#44552#50529'.'#8216#44592#49324#44288#47532#8217' '#50640#49436' '#52649#51204#54616#44592' '#48260#53948#51012' '
                '   '#51060#50857#54616#50668' '#51648#49324#44288#47532#51088#44032' '#52636#44552' '#51312#51089#54620' '#44552#50529#51032' '#54633#44228' '#51077#45768#45796'.'
                ''
                '*'#49324#50857','#48372#54744#47308': '#49548#49549' '#44592#49324#51032' '#44277#50857#52880#49772#50640#49436' '#54532#47196#44536#47016#49324#50857#47308' '#48143' '#48372#54744#47308#47196' '#52264#44048#46108' '#44552#50529#51032' '#52509#50529' ')
              Properties.ReadOnly = True
              TabOrder = 0
              Height = 342
              Width = 519
            end
            object cxLabel79: TcxLabel
              Left = 3
              Top = 14
              Align = alClient
              Caption = 
                #13#10'** '#47784#46304#54637#47785#51012' '#53364#47533#54616#47732' '#45236#50669#51060' '#54364#49884#46121#45768#45796'.'#13#10#13#10'** R: '#8216#44277#50857#52880#49772#8217#47484' '#51032#48120#54616#47728', '#44032#49345#44228#51340'('#53084#47560#45320' '#49884#49828#53596')'#47196 +
                ' '#51077#44552#54620' '#44552#50529#51077#45768#45796'.'#13#10'/ C: '#8216#51088#52404#52880#49772#8217#47484' '#51032#48120#54616#47728', '#51648#49324#50640#49436' '#51076#51032#51201#51004#47196' '#52649#51204#54620' '#44552#50529#51077#45768#45796'.'#13#10#13#10'*'#44592#49324#51077#44552'(R' +
                '): '#49548#49549#44592#49324#44032' '#51088#49888#51032' '#44032#49345#44228#51340#47196' '#51077#44552#54620' '#44277#50857#52880#49772' '#44552#50529'.'#13#10'  ('#54532#47196#44536#47016#49324#50857#47308' '#48143' '#48372#54744#47308#51032' '#51077#44552#51012' '#47785#51201#51004#47196' '#51077#44552#54620' ' +
                #44552#50529#46020' '#54252#54632#54633#45768#45796'.)'#13#10#13#10'* '#51648#49324#51077#47141'(C): '#51648#49324#50640#49436' '#8216#44592#49324#44288#47532#8217' '#47700#45684#51032' '#8216#52649#51204#54616#44592#8217#47484' '#51060#50857#54616#50668','#13#10'  '#44592#49324#51032' '#51088 +
                #52404#52880#49772#47484' '#52649#51204#54620' '#44552#50529'('#44592#49324#47196#48512#53552' '#51648#49324#44032' '#51649#51217' '#49688#44552#54620' '#44552#50529'('#54788#44552#49688#51077') '#46321'. '#13#10'  '#45800', '#48372#45320#49828#47196' '#52649#51204#54644' '#51456' '#44163#46020' '#54252#54632 +
                #46120') '#13#10'  -> '#9733#53364#47533#9756#54616#47732' '#47532#49828#53944#47484' '#48380' '#49688' '#51080#49845#45768#45796'.'#13#10#13#10'* '#49688#49688#47308'(R): '#49548#49549' '#44592#49324#51032' '#44277#50857#52880#49772#50640#49436' '#50724#45908#50868#54665' ' +
                #49688#49688#47308#47196' '#52264#44048#46108' '#44552#50529' '#52509#50529#13#10#13#10'* '#49688#49688#47308'(C): '#49548#49549' '#44592#49324#51032' '#51088#52404#52880#49772#50640#49436' '#50724#45908#50868#54665' '#49688#49688#47308#47196' '#52264#44048#46108' '#44552#50529' '#52509#50529#13#10#13 +
                #10'* '#52712#49548#48268#44552'(R): '#49548#49549' '#44592#49324#51032' '#44277#50857#52880#49772#50640#49436' '#50724#45908#52712#49548' '#48268#44552#51004#47196' '#52264#44048#46108' '#44552#50529' '#52509#50529#13#10#13#10'* '#52712#49548#48268#44552'(C): '#49548#49549' '#44592 +
                #49324#51032' '#51088#52404#52880#49772#50640#49436' '#50724#45908#52712#49548' '#48268#44552#51004#47196' '#52264#44048#46108' '#44552#50529' '#52509#50529#13#10#13#10'* '#44592#49324#52636#44552'(R): '#49548#49549' '#44592#49324#51032' '#44277#50857#52880#49772#50640#49436' '#52636#44552'('#54872#48520')' +
                #46108' '#44552#50529'('#53748#49324' '#46321#51032' '#44221#50864')'#13#10'* '#44592#49324#52636#44552'(C): '#49548#49549' '#44592#49324#51032' '#51088#52404#52880#49772#50640#49436' '#52636#44552#54620' '#44552#50529'.'#8216#44592#49324#44288#47532#8217' '#50640#49436' '#52649#51204#54616#44592' '#48260 +
                #53948#51012' '#13#10'   '#51060#50857#54616#50668' '#51648#49324#44288#47532#51088#44032' '#52636#44552' '#51312#51089#54620' '#44552#50529#51032' '#54633#44228' '#51077#45768#45796'.'#13#10#13#10'*'#49324#50857','#48372#54744#47308': '#49548#49549' '#44592#49324#51032' '#44277#50857#52880#49772#50640#49436 +
                ' '#54532#47196#44536#47016#49324#50857#47308' '#48143' '#48372#54744#47308#47196' '#52264#44048#46108' '#44552#50529#51032' '#52509#50529' '#13#10
              ParentColor = False
              Style.Color = 15269887
              ExplicitLeft = 2
              ExplicitTop = -1
              ExplicitWidth = 521
              ExplicitHeight = 364
            end
          end
          object BtnCloseA13: TcxButton
            Left = 502
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
            OptionsImage.Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000001511
              93B91C17C2F41B17C3F41C16C2F41A14BFF41914BFF41913BFF41A14BFF41A13
              BEF41A13BEF41B14C1F41812BDF41B14C1F4140F93B90000000019199BB92E2D
              FBFF2423EFFF0B06B6FF201DE5FF2B29FAFF2824F4FF2824F4FF2723F4FF2722
              F4FF2925FCFF130DCEFF0A05B0FF211AEFFF2921FBFF161498B92322D4FE272B
              EFFF1312B1FF6A67BFFF1B1AB0FF1F20E2FF2D2EF4FF282AEDFF2929EEFF2C2D
              F4FF0E0DCAFF3F3CB5FF9090CEFF1210B1FF2321EEFF1F1BD0FE2121C9F4100E
              BBFF918ED3FFFFFFFFFFADAAE0FF100FB2FF1C20E0FF3036F4FF2F35F4FF0D0D
              CEFF3835B8FFECECF8FFFFFFFFFF6A67C6FF0F0DC0FF201ECAF42428D0F41D24
              D7FF433DC3FFEBEAF8FFFFFFFFFFAFADE3FF1D1BB9FF1D24DEFF171CD7FF3934
              BEFFEEEDF9FFFFFFFFFFACAAE4FF1F1BBDFF252CE7FF2221CDF4252AD1F4384F
              FAFF161ED4FF3A32C5FFEDEDF9FFFFFFFFFFD0CEF0FF201FC1FF1E1DC0FFE2E2
              F6FFFFFFFFFFB3B1E8FF1511BFFF232DE5FF3241F7FF2324CDF42228D2F4364F
              F3FF3950F3FF151DD8FF3E35CCFFDEDBF6FFFFFFFFFFCFCDF2FFCFCEF3FFFFFF
              FFFFD4D3F3FF2321C7FF202CE3FF3447F4FF3144F2FF2023D0F4454BD9F43B55
              F3FF334BEFFF3852F4FF1F2ADFFF211DCBFFCDCCF4FFFFFFFFFFFFFFFFFFCDCB
              F4FF2120CDFF2232E3FF354DF4FF2F44EEFF364DF2FF4247D7F46366DFF46E82
              F7FF556AF2FF4862F3FF2B3BE8FF221FD2FFCDCBF3FFFFFFFFFFFFFFFFFFCDCB
              F4FF201DD2FF242FE4FF445DF3FF5366F2FF6A7DF6FF6064DDF46064E1F47388
              F7FF788CF6FF6472F1FF514BE0FFD5D2F7FFFFFFFFFFDCDAF8FFDCDAF8FFFFFF
              FFFFDCDAF8FF655EE2FF575EEAFF7588F6FF6F83F6FF5D62DFF46166E3F47891
              F7FF6779F2FF5550E6FFCAC6F6FFFFFFFFFFE9E8FCFF5851E6FF5954E6FFE0DE
              FAFFFFFFFFFFF6F5FDFF6F69E9FF575FECFF748CF7FF5F64E2F4636AE4F46F82
              F3FF5E59EBFFC2BFF7FFFFFFFFFFF2F1FDFF6E66ECFF5D68EFFF6472F1FF5E57
              EBFFC5C1F8FFFFFFFFFFF1F0FDFF7670ECFF616BF1FF6268E4F4646CE6F45A5C
              EFFF928BF3FFFFFFFFFFF1F0FEFF6F68F0FF5B64EFFF7A92F6FF7A91F6FF6775
              F2FF5551EDFFC3BFF9FFFFFFFFFFAFA8F7FF5857F0FF6165E4F46B74F1FE7A91
              F6FF5A57F0FFAEA8F7FF7771F3FF5F68F2FF7D96F6FF798EF5FF788EF5FF7C94
              F6FF6D7FF4FF5F5BF0FF948CF5FF5956F1FF758BF6FF6972EFFE4E54B0B985A1
              F7FF7C94F6FF5B5BF3FF6975F5FF84A1F8FF8099F7FF7F98F7FF7F98F7FF7E97
              F6FF819CF6FF7588F5FF5C5FF3FF7990F5FF819DF7FF4C53AEB9000000005055
              B1B96970E9F4666CE9F46971E9F4676EE9F4676EE9F4666EE9F4666EE9F4676E
              E9F4666DE9F4676FE9F4676FE9F4676EE9F44E53B0B900000000}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            TabStop = False
            OnClick = BtnCloseA13Click
          end
        end
      end
    end
    object cxTabSheet14: TcxTabSheet
      Tag = 614
      Caption = #53084#45824#54665#49688#49688#47308
      ImageIndex = 13
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxPageControl2: TcxPageControl
        Left = 0
        Top = 0
        Width = 995
        Height = 683
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = cxTabSheet142
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 677
        ClientRectLeft = 2
        ClientRectRight = 989
        ClientRectTop = 27
        object cxTabSheet141: TcxTabSheet
          Caption = #44592#44036#44160#49353
          ImageIndex = 0
          object PnlMain: TPanel
            Left = 0
            Top = 0
            Width = 987
            Height = 650
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel3: TPanel
              Left = 0
              Top = 0
              Width = 987
              Height = 650
              Align = alClient
              BevelOuter = bvNone
              Color = 16444898
              TabOrder = 0
              object Shape59: TShape
                Left = 0
                Top = 63
                Width = 987
                Height = 2
                Align = alTop
                Brush.Style = bsClear
                Pen.Style = psClear
                ExplicitLeft = -6
                ExplicitTop = 23
                ExplicitWidth = 305
              end
              object cxGroupBox19: TcxGroupBox
                Left = 0
                Top = 0
                Align = alTop
                ParentBackground = False
                ParentColor = False
                Style.BorderStyle = ebsFlat
                Style.Color = clBtnFace
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 0
                Height = 63
                Width = 987
                object Shape60: TShape
                  Left = 6
                  Top = 7
                  Width = 267
                  Height = 24
                  Pen.Color = 12566402
                  Shape = stRoundRect
                end
                object Shape61: TShape
                  Left = 6
                  Top = 33
                  Width = 376
                  Height = 24
                  Pen.Color = 12566402
                  Shape = stRoundRect
                end
                object cxLabel80: TcxLabel
                  Left = 18
                  Top = 11
                  Caption = #49548'     '#49549
                  ParentColor = False
                  Style.TextColor = clBlack
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Properties.ShadowedColor = clGray
                  Transparent = True
                  AnchorX = 42
                  AnchorY = 19
                end
                object lblSosokNameA14: TcxLabel
                  Left = 83
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
                  AnchorX = 244
                  AnchorY = 19
                end
                object cxDtStartA14: TcxDateEdit
                  Left = 83
                  Top = 32
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
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.Color = 11796479
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 2
                  Height = 26
                  Width = 87
                end
                object cxLabel81: TcxLabel
                  Left = 223
                  Top = 37
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
                  AnchorY = 46
                end
                object cxDtEndA14: TcxDateEdit
                  Left = 241
                  Top = 32
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
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.Color = 11796479
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 4
                  Height = 26
                  Width = 87
                end
                object btnSearchA14: TcxButton
                  Left = 828
                  Top = 7
                  Width = 78
                  Height = 50
                  Cursor = crHandPoint
                  Caption = #44160#49353
                  Colors.Normal = 16773362
                  Colors.Pressed = 16644080
                  LookAndFeel.Kind = lfFlat
                  LookAndFeel.NativeStyle = False
                  OptionsImage.Layout = blGlyphBottom
                  TabOrder = 5
                  OnClick = btnSearchA14Click
                end
                object btnExcelA14: TcxButton
                  Left = 907
                  Top = 7
                  Width = 78
                  Height = 50
                  Cursor = crHandPoint
                  Caption = #50641#49472
                  Colors.Normal = 16773362
                  Colors.Pressed = 16644080
                  LookAndFeel.Kind = lfFlat
                  LookAndFeel.NativeStyle = False
                  OptionsImage.Layout = blGlyphBottom
                  TabOrder = 6
                  OnClick = btnExcelA14Click
                end
                object btnDateA14: TcxButton
                  Left = 376
                  Top = 33
                  Width = 28
                  Height = 24
                  Cursor = crHandPoint
                  DropDownMenu = pop_dateA1
                  Kind = cxbkDropDown
                  LookAndFeel.Kind = lfFlat
                  LookAndFeel.NativeStyle = False
                  OptionsImage.Glyph.Data = {
                    36040000424D3604000000000000360000002800000010000000100000000100
                    2000000000000004000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000000000000000000000000000D2905C67D49663BF000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
                    0000000000000000000000000000000000000000000000000001000000000000
                    00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
                    000000000000000000000000000000000000000000000000000D000000000000
                    0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
                    000000000000000000000000000000000000000000000000001800000000FF80
                    0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
                    000000000000000000000000000000000000000000000000002200000000C774
                    30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
                    81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002900000000C774
                    30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
                    81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002B00000000FF80
                    0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
                    0000000000000000000000000000000000000000000000000028000000000000
                    0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
                    0000000000000000000000000000000000000000000000000020000000000000
                    00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
                    0000000000000000000000000000000000000000000000000017000000000000
                    0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
                    000000000000000000000000000000000000000000000000000C000000000000
                    000000000000000000000000000000000000D2905C67D49663BF000000000000
                    0000000000000000000000000000000000000000000000000001000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000}
                  OptionsImage.Layout = blGlyphBottom
                  TabOrder = 7
                end
                object cxLabel82: TcxLabel
                  Left = 18
                  Top = 37
                  Caption = #44592'     '#44036
                  ParentColor = False
                  Style.TextColor = clBlack
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Properties.ShadowedColor = clGray
                  Transparent = True
                  AnchorX = 42
                  AnchorY = 45
                end
                object cxTeStartA14: TcxTimeEdit
                  Left = 169
                  Top = 32
                  AutoSize = False
                  EditValue = 0.375d
                  Properties.TimeFormat = tfHourMin
                  Style.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.Color = 11796479
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 9
                  Height = 26
                  Width = 51
                end
                object cxTeEndA14: TcxTimeEdit
                  Left = 324
                  Top = 32
                  AutoSize = False
                  EditValue = 0.375d
                  Properties.TimeFormat = tfHourMin
                  Style.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.Color = 11796479
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 10
                  Height = 26
                  Width = 51
                end
                object cxLabel86: TcxLabel
                  Left = 453
                  Top = 30
                  Caption = #8251' '#54637#47785#51012' '#45908#48660#53364#47533#54616#50668' '#49345#49464#45236#50669#51012' '#54869#51064#54624' '#49688' '#51080#49845#45768#45796'.'
                  ParentColor = False
                  Style.BorderStyle = ebsNone
                  Style.Color = 13483435
                  Style.TextColor = clBlue
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  Transparent = True
                  AnchorY = 38
                end
              end
              object cxGridA14: TcxGrid
                Left = 0
                Top = 65
                Width = 987
                Height = 585
                Align = alClient
                PopupMenu = PopupMenuA1
                TabOrder = 1
                LookAndFeel.NativeStyle = True
                object cxGridA14View: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  OnCellDblClick = cxGridA14ViewCellDblClick
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  DataController.OnSortingChanged = cxGridA14ViewDataControllerSortingChanged
                  OptionsCustomize.ColumnFiltering = False
                  OptionsCustomize.ColumnMoving = False
                  OptionsSelection.CellSelect = False
                  OptionsView.NoDataToDisplayInfoText = ' '
                  OptionsView.DataRowHeight = 22
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderHeight = 22
                  OnColumnHeaderClick = cxGridA14ViewColumnHeaderClick
                  object cxGridDBColumn33: TcxGridDBColumn
                    DataBinding.FieldName = 'No'
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
                    HeaderAlignmentHorz = taCenter
                    Options.Sorting = False
                    Width = 40
                  end
                  object cxGridDBColumn34: TcxGridDBColumn
                    DataBinding.FieldName = #48376#49324#53076#46300
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Horz = taLeftJustify
                    Properties.Alignment.Vert = taVCenter
                    HeaderAlignmentHorz = taCenter
                    Options.Moving = False
                    Width = 100
                  end
                  object cxGridDBColumn35: TcxGridDBColumn
                    DataBinding.FieldName = #48376#49324#47749
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Vert = taVCenter
                    FooterAlignmentHorz = taRightJustify
                    HeaderAlignmentHorz = taCenter
                    Options.Filtering = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 100
                  end
                  object cxGridDBColumn36: TcxGridDBColumn
                    DataBinding.FieldName = #51648#49324#53076#46300
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Vert = taVCenter
                    FooterAlignmentHorz = taRightJustify
                    HeaderAlignmentHorz = taCenter
                    Options.Filtering = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 100
                  end
                  object cxGridDBColumn37: TcxGridDBColumn
                    DataBinding.FieldName = #51648#49324#47749
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Vert = taVCenter
                    FooterAlignmentHorz = taRightJustify
                    HeaderAlignmentHorz = taCenter
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 100
                  end
                  object cxGridDBColumn38: TcxGridDBColumn
                    DataBinding.FieldName = #44552#50529
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = ',0;-,0'
                    FooterAlignmentHorz = taRightJustify
                    HeaderAlignmentHorz = taCenter
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 100
                  end
                end
                object cxGridA14Level: TcxGridLevel
                  GridView = cxGridA14View
                end
              end
            end
          end
        end
        object cxTabSheet142: TcxTabSheet
          Caption = #50900#48324#44160#49353
          ImageIndex = 1
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 987
            Height = 650
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel5: TPanel
              Left = 0
              Top = 0
              Width = 987
              Height = 650
              Align = alClient
              BevelOuter = bvNone
              Color = 16444898
              TabOrder = 0
              object Shape62: TShape
                Left = 0
                Top = 63
                Width = 987
                Height = 2
                Align = alTop
                Brush.Style = bsClear
                Pen.Style = psClear
                ExplicitLeft = -6
                ExplicitTop = 23
                ExplicitWidth = 305
              end
              object cxGroupBox20: TcxGroupBox
                Left = 0
                Top = 0
                Align = alTop
                ParentBackground = False
                ParentColor = False
                Style.BorderStyle = ebsFlat
                Style.Color = clBtnFace
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 0
                Height = 63
                Width = 987
                object Shape63: TShape
                  Left = 6
                  Top = 7
                  Width = 267
                  Height = 24
                  Pen.Color = 12566402
                  Shape = stRoundRect
                end
                object Shape64: TShape
                  Left = 6
                  Top = 33
                  Width = 181
                  Height = 24
                  Pen.Color = 12566402
                  Shape = stRoundRect
                end
                object cxLabel83: TcxLabel
                  Left = 18
                  Top = 11
                  Caption = #49548'     '#49549
                  ParentColor = False
                  Style.TextColor = clBlack
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Properties.ShadowedColor = clGray
                  Transparent = True
                  AnchorX = 42
                  AnchorY = 19
                end
                object lblSosokNameA141: TcxLabel
                  Left = 83
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
                  AnchorX = 244
                  AnchorY = 19
                end
                object btnSearchA141: TcxButton
                  Left = 828
                  Top = 7
                  Width = 78
                  Height = 50
                  Cursor = crHandPoint
                  Caption = #44160#49353
                  Colors.Normal = 16773362
                  Colors.Pressed = 16644080
                  LookAndFeel.Kind = lfFlat
                  LookAndFeel.NativeStyle = False
                  OptionsImage.Layout = blGlyphBottom
                  TabOrder = 2
                  OnClick = btnSearchA141Click
                end
                object btnExcelA141: TcxButton
                  Left = 907
                  Top = 7
                  Width = 78
                  Height = 50
                  Cursor = crHandPoint
                  Caption = #50641#49472
                  Colors.Normal = 16773362
                  Colors.Pressed = 16644080
                  LookAndFeel.Kind = lfFlat
                  LookAndFeel.NativeStyle = False
                  OptionsImage.Layout = blGlyphBottom
                  TabOrder = 3
                  OnClick = btnExcelA141Click
                end
                object cxLabel84: TcxLabel
                  Left = 16
                  Top = 37
                  Caption = #51312#54924#45380#50900
                  ParentColor = False
                  Style.TextColor = clBlack
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Properties.ShadowedColor = clGray
                  Transparent = True
                  AnchorX = 42
                  AnchorY = 45
                end
                object cxSEMonth: TcxSpinEdit
                  Left = 149
                  Top = 32
                  AutoSize = False
                  Properties.Alignment.Horz = taRightJustify
                  Properties.CanEdit = False
                  Properties.MaxValue = 12.000000000000000000
                  Properties.MinValue = 1.000000000000000000
                  Properties.ReadOnly = False
                  Style.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.Color = 11796479
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 5
                  Value = 12
                  Height = 26
                  Width = 40
                end
                object cxSEYear: TcxSpinEdit
                  Left = 83
                  Top = 32
                  AutoSize = False
                  Properties.Alignment.Horz = taRightJustify
                  Properties.CanEdit = False
                  Properties.MaxValue = 3000.000000000000000000
                  Properties.MinValue = 2000.000000000000000000
                  Properties.ReadOnly = False
                  Style.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.Color = 11796479
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 6
                  Value = 2008
                  Height = 26
                  Width = 60
                end
                object cxLabel85: TcxLabel
                  Left = 453
                  Top = 30
                  Caption = #8251' '#54637#47785#51012' '#45908#48660#53364#47533#54616#50668' '#49345#49464#45236#50669#51012' '#54869#51064#54624' '#49688' '#51080#49845#45768#45796'.'
                  ParentColor = False
                  Style.BorderStyle = ebsNone
                  Style.Color = 13483435
                  Style.TextColor = clBlue
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  Transparent = True
                  AnchorY = 38
                end
              end
              object cxGridA141: TcxGrid
                Left = 0
                Top = 65
                Width = 987
                Height = 585
                Align = alClient
                PopupMenu = PopupMenuA1
                TabOrder = 1
                LookAndFeel.NativeStyle = True
                object cxGridA141View: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  OnCellDblClick = cxGridA141ViewCellDblClick
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  DataController.OnSortingChanged = cxGridA141ViewDataControllerSortingChanged
                  OptionsCustomize.ColumnFiltering = False
                  OptionsCustomize.ColumnMoving = False
                  OptionsSelection.CellSelect = False
                  OptionsView.NoDataToDisplayInfoText = ' '
                  OptionsView.DataRowHeight = 22
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderHeight = 22
                  OnColumnHeaderClick = cxGridA14ViewColumnHeaderClick
                  object cxGridDBColumn25: TcxGridDBColumn
                    DataBinding.FieldName = 'No'
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
                    HeaderAlignmentHorz = taCenter
                    Options.Sorting = False
                    Width = 40
                  end
                  object cxGridDBColumn26: TcxGridDBColumn
                    DataBinding.FieldName = #48376#49324#51221#48372
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Horz = taLeftJustify
                    Properties.Alignment.Vert = taVCenter
                    HeaderAlignmentHorz = taCenter
                    Options.Moving = False
                    Width = 100
                  end
                  object cxGridDBColumn27: TcxGridDBColumn
                    DataBinding.FieldName = #51648#49324#51221#48372
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Vert = taVCenter
                    FooterAlignmentHorz = taRightJustify
                    HeaderAlignmentHorz = taCenter
                    Options.Filtering = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 100
                  end
                  object cxGridDBColumn28: TcxGridDBColumn
                    DataBinding.FieldName = #53084#45824#54665#49444#51221#44552#50529
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = ',0;-,0'
                    FooterAlignmentHorz = taRightJustify
                    HeaderAlignmentHorz = taCenter
                    Options.Filtering = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 100
                  end
                  object cxGridDBColumn29: TcxGridDBColumn
                    DataBinding.FieldName = #51077#44552#51648#49324
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Vert = taVCenter
                    FooterAlignmentHorz = taRightJustify
                    HeaderAlignmentHorz = taCenter
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 100
                  end
                  object cxGridDBColumn30: TcxGridDBColumn
                    DataBinding.FieldName = #44148#49688
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = ',0;-,0'
                    FooterAlignmentHorz = taRightJustify
                    HeaderAlignmentHorz = taCenter
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 100
                  end
                  object cxGridDBColumn31: TcxGridDBColumn
                    DataBinding.FieldName = #50868#54665#50836#44552#54633#44228
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = ',0;-,0'
                    HeaderAlignmentHorz = taCenter
                    Width = 95
                  end
                  object cxGridDBColumn32: TcxGridDBColumn
                    DataBinding.FieldName = #51077#44552'/'#52264#44048#54633#44228
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = ',0;-,0'
                    HeaderAlignmentHorz = taCenter
                    Width = 116
                  end
                end
                object cxGridA141Level: TcxGridLevel
                  GridView = cxGridA141View
                end
              end
            end
          end
        end
      end
    end
    object cxTabSheet15: TcxTabSheet
      Tag = 615
      Caption = #53216#54256#49849#51064#54788#54889
      ImageIndex = 14
      object pnlMainA15: TPanel
        Left = 0
        Top = 0
        Width = 995
        Height = 683
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object Shape65: TShape
          Left = 0
          Top = 63
          Width = 995
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = -6
          ExplicitTop = 23
          ExplicitWidth = 305
        end
        object cxGroupBox21: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          ParentBackground = False
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clBtnFace
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 63
          Width = 995
          object Shape66: TShape
            Left = 6
            Top = 7
            Width = 267
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape67: TShape
            Left = 6
            Top = 33
            Width = 376
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object cxLabel87: TcxLabel
            Left = 18
            Top = 11
            Caption = #49548'     '#49549
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 42
            AnchorY = 19
          end
          object lblSosokNameA15: TcxLabel
            Left = 83
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
            AnchorX = 244
            AnchorY = 19
          end
          object cxDtStartA15: TcxDateEdit
            Left = 76
            Top = 32
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
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Height = 26
            Width = 87
          end
          object cxLabel88: TcxLabel
            Left = 223
            Top = 37
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
            AnchorY = 46
          end
          object cxDtEndA15: TcxDateEdit
            Left = 238
            Top = 32
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
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            Height = 26
            Width = 87
          end
          object btnSearchA15: TcxButton
            Left = 828
            Top = 7
            Width = 78
            Height = 50
            Cursor = crHandPoint
            Caption = #44160#49353
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 5
            OnClick = btnSearchA15Click
          end
          object btnExcelA15: TcxButton
            Left = 907
            Top = 7
            Width = 78
            Height = 50
            Cursor = crHandPoint
            Caption = #50641#49472
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 6
            OnClick = btnExcelA15Click
          end
          object btnDateA15: TcxButton
            Left = 376
            Top = 33
            Width = 28
            Height = 24
            Cursor = crHandPoint
            DropDownMenu = pop_dateA1
            Kind = cxbkDropDown
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000D2905C67D49663BF000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
              0000000000000000000000000000000000000000000000000001000000000000
              00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
              000000000000000000000000000000000000000000000000000D000000000000
              0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
              000000000000000000000000000000000000000000000000001800000000FF80
              0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
              000000000000000000000000000000000000000000000000002200000000C774
              30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
              81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002900000000C774
              30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
              81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002B00000000FF80
              0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
              0000000000000000000000000000000000000000000000000028000000000000
              0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
              0000000000000000000000000000000000000000000000000020000000000000
              00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
              0000000000000000000000000000000000000000000000000017000000000000
              0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
              000000000000000000000000000000000000000000000000000C000000000000
              000000000000000000000000000000000000D2905C67D49663BF000000000000
              0000000000000000000000000000000000000000000000000001000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 7
          end
          object cxLabel89: TcxLabel
            Left = 18
            Top = 37
            Caption = #44592'     '#44036
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 42
            AnchorY = 45
          end
          object cxTeStartA15: TcxTimeEdit
            Left = 169
            Top = 32
            AutoSize = False
            EditValue = 0.375d
            Properties.TimeFormat = tfHourMin
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 9
            Height = 26
            Width = 51
          end
          object cxTeEndA15: TcxTimeEdit
            Left = 324
            Top = 32
            AutoSize = False
            EditValue = 0.375d
            Properties.TimeFormat = tfHourMin
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 10
            Height = 26
            Width = 51
          end
        end
        object cxGridA15: TcxGrid
          Left = 0
          Top = 65
          Width = 995
          Height = 618
          Align = alClient
          PopupMenu = PopupMenuA1
          TabOrder = 1
          LookAndFeel.NativeStyle = True
          object cxGridA15View: TcxGridDBTableView
            PopupMenu = PopupMenuA1
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DataController.OnSortingChanged = cxGridA15ViewDataControllerSortingChanged
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnMoving = False
            OptionsSelection.CellSelect = False
            OptionsView.NoDataToDisplayInfoText = ' '
            OptionsView.DataRowHeight = 22
            OptionsView.FooterAutoHeight = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 22
            OnColumnHeaderClick = cxGridA14ViewColumnHeaderClick
            object cxGridDBColumn39: TcxGridDBColumn
              DataBinding.FieldName = 'No'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 40
            end
            object cxGridDBColumn40: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Width = 150
            end
            object cxGridDBColumn41: TcxGridDBColumn
              DataBinding.FieldName = #51064#51613#51068#49884
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Moving = False
              Width = 115
            end
            object cxGridDBColumn42: TcxGridDBColumn
              DataBinding.FieldName = #49849#51064#51068#49884
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Moving = False
              Width = 115
            end
            object cxGridDBColumn43: TcxGridDBColumn
              DataBinding.FieldName = #53216#54256#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Width = 100
            end
            object cxGridDBColumn44: TcxGridDBColumn
              DataBinding.FieldName = #53216#54256#44552#50529
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Width = 100
            end
            object cxGridDBColumn45: TcxGridDBColumn
              DataBinding.FieldName = #47560#51068'.'#51204#54872#50529
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn46: TcxGridDBColumn
              DataBinding.FieldName = #51217#49688#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 70
            end
            object cxGridDBColumn47: TcxGridDBColumn
              DataBinding.FieldName = #44256#44061#51204#54868#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object cxGridDBColumn48: TcxGridDBColumn
              DataBinding.FieldName = #49345#45812#50896'ID('#51060#47492')'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn49: TcxGridDBColumn
              DataBinding.FieldName = #49849#51064#52712#49548#51068#49884
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 115
            end
            object cxGridDBColumn50: TcxGridDBColumn
              DataBinding.FieldName = #52712#49548#49324#50976
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 200
            end
            object cxgrdbclmnGridView7Column1: TcxGridDBColumn
              DataBinding.FieldName = #44208#51116#49345#53468
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGridA15Level: TcxGridLevel
            GridView = cxGridA15View
          end
        end
      end
    end
    object cxTabSheet16: TcxTabSheet
      Tag = 616
      Caption = #53216#54256#49324#50857#54788#54889
      ImageIndex = 15
      object pnlMainA16: TPanel
        Left = 0
        Top = 0
        Width = 995
        Height = 683
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object Shape68: TShape
          Left = 0
          Top = 63
          Width = 995
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = -6
          ExplicitTop = 23
          ExplicitWidth = 305
        end
        object cxGroupBox22: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          ParentBackground = False
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clBtnFace
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 63
          Width = 995
          object Shape69: TShape
            Left = 6
            Top = 7
            Width = 267
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape70: TShape
            Left = 6
            Top = 33
            Width = 376
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object cxLabel90: TcxLabel
            Left = 18
            Top = 11
            Caption = #49548'     '#49549
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 42
            AnchorY = 19
          end
          object lblSosokNameA16: TcxLabel
            Left = 83
            Top = 6
            AutoSize = False
            Caption = #49548#49549
            ParentColor = False
            Style.BorderStyle = ebsSingle
            Style.LookAndFeel.NativeStyle = False
            Style.Shadow = False
            Style.TextColor = 13719147
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 321
            AnchorX = 244
            AnchorY = 19
          end
          object cxDtStartA16: TcxDateEdit
            Left = 83
            Top = 32
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
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Height = 26
            Width = 87
          end
          object cxLabel91: TcxLabel
            Left = 223
            Top = 37
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
            AnchorY = 46
          end
          object cxDtEndA16: TcxDateEdit
            Left = 238
            Top = 32
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
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            Height = 26
            Width = 87
          end
          object btnSearchA16: TcxButton
            Left = 828
            Top = 7
            Width = 78
            Height = 50
            Cursor = crHandPoint
            Caption = #44160#49353
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 5
            OnClick = btnSearchA16Click
          end
          object btnExcelA16: TcxButton
            Left = 907
            Top = 7
            Width = 78
            Height = 50
            Cursor = crHandPoint
            Caption = #50641#49472
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 6
            OnClick = btnExcelA16Click
          end
          object btnDateA16: TcxButton
            Left = 376
            Top = 33
            Width = 28
            Height = 24
            Cursor = crHandPoint
            DropDownMenu = pop_dateA1
            Kind = cxbkDropDown
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000D2905C67D49663BF000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
              0000000000000000000000000000000000000000000000000001000000000000
              00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
              000000000000000000000000000000000000000000000000000D000000000000
              0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
              000000000000000000000000000000000000000000000000001800000000FF80
              0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
              000000000000000000000000000000000000000000000000002200000000C774
              30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
              81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002900000000C774
              30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
              81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002B00000000FF80
              0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
              0000000000000000000000000000000000000000000000000028000000000000
              0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
              0000000000000000000000000000000000000000000000000020000000000000
              00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
              0000000000000000000000000000000000000000000000000017000000000000
              0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
              000000000000000000000000000000000000000000000000000C000000000000
              000000000000000000000000000000000000D2905C67D49663BF000000000000
              0000000000000000000000000000000000000000000000000001000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 7
          end
          object cxLabel92: TcxLabel
            Left = 18
            Top = 37
            Caption = #44592'     '#44036
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 42
            AnchorY = 45
          end
          object cxTeStartA16: TcxTimeEdit
            Left = 169
            Top = 32
            AutoSize = False
            EditValue = 0.375d
            Properties.TimeFormat = tfHourMin
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 9
            Height = 26
            Width = 51
          end
          object cxTeEndA16: TcxTimeEdit
            Left = 324
            Top = 32
            AutoSize = False
            EditValue = 0.375d
            Properties.TimeFormat = tfHourMin
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 10
            Height = 26
            Width = 51
          end
        end
        object cxGridA16: TcxGrid
          Left = 0
          Top = 65
          Width = 995
          Height = 618
          Align = alClient
          PopupMenu = PopupMenuA1
          TabOrder = 1
          LookAndFeel.NativeStyle = True
          object cxGridA16View: TcxGridDBTableView
            PopupMenu = PopupMenuA1
            Navigator.Buttons.CustomButtons = <>
            OnCellDblClick = cxGridA16ViewCellDblClick
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DataController.OnSortingChanged = cxGridA16ViewDataControllerSortingChanged
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnMoving = False
            OptionsSelection.CellSelect = False
            OptionsView.NoDataToDisplayInfoText = ' '
            OptionsView.DataRowHeight = 22
            OptionsView.FooterAutoHeight = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 22
            OnColumnHeaderClick = cxGridA14ViewColumnHeaderClick
            object cxGridDBColumn51: TcxGridDBColumn
              DataBinding.FieldName = 'No'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 40
            end
            object cxGridDBColumn52: TcxGridDBColumn
              DataBinding.FieldName = #51217#49688#51068#49884
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Width = 115
            end
            object cxGridDBColumn53: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Moving = False
              Width = 150
            end
            object cxGridDBColumn54: TcxGridDBColumn
              DataBinding.FieldName = #44256#44061#51204#54868#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Moving = False
              Width = 100
            end
            object cxGridDBColumn55: TcxGridDBColumn
              DataBinding.FieldName = #44256#44061#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Width = 130
            end
            object cxGridDBColumn56: TcxGridDBColumn
              DataBinding.FieldName = #45824#47532#50868#51204#50836#44552
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Width = 100
            end
            object cxGridDBColumn57: TcxGridDBColumn
              DataBinding.FieldName = #53216#54256#49324#50857#44552#50529
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0;-,0'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn58: TcxGridDBColumn
              DataBinding.FieldName = #49345#45812#50896'ID('#51060#47492')'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn59: TcxGridDBColumn
              DataBinding.FieldName = #51217#49688#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
          end
          object cxGridA16Level: TcxGridLevel
            GridView = cxGridA16View
          end
        end
      end
    end
    object cxTabSheet17: TcxTabSheet
      Tag = 617
      Caption = #52852#46300#44208#51228#54788#54889
      ImageIndex = 16
      object pnlMainA17: TPanel
        Left = 0
        Top = 0
        Width = 995
        Height = 683
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object Shape71: TShape
          Left = 0
          Top = 63
          Width = 995
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = -6
          ExplicitTop = 23
          ExplicitWidth = 305
        end
        object cxGroupBox23: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          ParentBackground = False
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clBtnFace
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 63
          Width = 995
          object Shape72: TShape
            Left = 6
            Top = 7
            Width = 267
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape73: TShape
            Left = 6
            Top = 33
            Width = 376
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape74: TShape
            Left = 410
            Top = 33
            Width = 95
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape75: TShape
            Left = 566
            Top = 32
            Width = 95
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object cxLabel93: TcxLabel
            Left = 18
            Top = 11
            Caption = #49548'     '#49549
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 42
            AnchorY = 19
          end
          object lblSosokNameA17: TcxLabel
            Left = 83
            Top = 6
            AutoSize = False
            Caption = #49548#49549
            ParentColor = False
            Style.BorderStyle = ebsSingle
            Style.LookAndFeel.NativeStyle = False
            Style.Shadow = False
            Style.TextColor = 13719147
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 321
            AnchorX = 244
            AnchorY = 19
          end
          object cxDtStartA17: TcxDateEdit
            Left = 83
            Top = 32
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
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Height = 26
            Width = 87
          end
          object cxLabel94: TcxLabel
            Left = 223
            Top = 37
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
            AnchorY = 46
          end
          object cxDtEndA17: TcxDateEdit
            Left = 238
            Top = 32
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
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            Height = 26
            Width = 87
          end
          object btnSearchA17: TcxButton
            Left = 828
            Top = 7
            Width = 78
            Height = 50
            Cursor = crHandPoint
            Caption = #44160#49353
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 5
            OnClick = btnSearchA17Click
          end
          object btnExcelA17: TcxButton
            Left = 907
            Top = 7
            Width = 78
            Height = 50
            Cursor = crHandPoint
            Caption = #50641#49472
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 6
            OnClick = btnExcelA17Click
          end
          object btnDateA17: TcxButton
            Left = 376
            Top = 33
            Width = 28
            Height = 24
            Cursor = crHandPoint
            DropDownMenu = pop_dateA1
            Kind = cxbkDropDown
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000D2905C67D49663BF000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
              0000000000000000000000000000000000000000000000000001000000000000
              00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
              000000000000000000000000000000000000000000000000000D000000000000
              0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
              000000000000000000000000000000000000000000000000001800000000FF80
              0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
              000000000000000000000000000000000000000000000000002200000000C774
              30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
              81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002900000000C774
              30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
              81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002B00000000FF80
              0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
              0000000000000000000000000000000000000000000000000028000000000000
              0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
              0000000000000000000000000000000000000000000000000020000000000000
              00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
              0000000000000000000000000000000000000000000000000017000000000000
              0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
              000000000000000000000000000000000000000000000000000C000000000000
              000000000000000000000000000000000000D2905C67D49663BF000000000000
              0000000000000000000000000000000000000000000000000001000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 7
          end
          object cxLabel95: TcxLabel
            Left = 18
            Top = 37
            Caption = #44592'     '#44036
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 42
            AnchorY = 45
          end
          object cxTeStartA17: TcxTimeEdit
            Left = 169
            Top = 32
            AutoSize = False
            EditValue = 0.375d
            Properties.TimeFormat = tfHourMin
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 9
            Height = 26
            Width = 51
          end
          object cxTeEndA17: TcxTimeEdit
            Left = 324
            Top = 32
            AutoSize = False
            EditValue = 0.375d
            Properties.TimeFormat = tfHourMin
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 10
            Height = 26
            Width = 51
          end
          object cxLabel96: TcxLabel
            Left = 416
            Top = 37
            Caption = #50724#45908#49345#53468
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 442
            AnchorY = 45
          end
          object cxLabel97: TcxLabel
            Left = 573
            Top = 37
            Caption = #49849#51064#49345#53468
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 599
            AnchorY = 45
          end
          object cxCbA17: TcxComboBox
            Left = 472
            Top = 32
            TabStop = False
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #51204#52404
              #50756#47308
              #52712#49548)
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 13
            Height = 26
            Width = 89
          end
          object cxCb1A17: TcxComboBox
            Left = 628
            Top = 31
            TabStop = False
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #51204#52404
              #48120#49849#51064
              #49849#51064#50756#47308)
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 14
            Height = 26
            Width = 89
          end
        end
        object cxGridA17: TcxGrid
          Left = 0
          Top = 65
          Width = 995
          Height = 618
          Align = alClient
          BevelEdges = [beLeft, beTop, beBottom]
          BevelInner = bvNone
          BevelOuter = bvNone
          Constraints.MinHeight = 300
          PopupMenu = PopupMenuA1
          TabOrder = 1
          LookAndFeel.NativeStyle = True
          object cxGridA17View: TcxGridDBTableView
            PopupMenu = PopupMenuA1
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
            FilterBox.CustomizeDialog = False
            OnCellDblClick = cxGridA17ViewCellDblClick
            DataController.Filter.Options = [fcoShowOperatorDescription, fcoSoftNull]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.;-,0.'
                Kind = skSum
                Column = cxgrdbclmn_counselColumn7
              end
              item
                Format = ',0.;-,0.'
                Kind = skSum
                Column = cxgrdbclmn_counselColumn12
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.OnSortingChanged = cxGridA17ViewDataControllerSortingChanged
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            Filtering.ColumnMRUItemsListCount = 0
            OptionsBehavior.PostponedSynchronization = False
            OptionsBehavior.CopyCaptionsToClipboard = False
            OptionsBehavior.DragHighlighting = False
            OptionsBehavior.DragOpening = False
            OptionsBehavior.DragScrolling = False
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.ImmediateEditor = False
            OptionsBehavior.ColumnHeaderHints = False
            OptionsBehavior.CopyPreviewToClipboard = False
            OptionsBehavior.ExpandMasterRowOnDblClick = False
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnsQuickCustomizationReordering = qcrEnabled
            OptionsData.Appending = True
            OptionsSelection.CellSelect = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.CellEndEllipsis = True
            OptionsView.FocusRect = False
            OptionsView.NoDataToDisplayInfoText = '  '
            OptionsView.DataRowHeight = 23
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.Footer = True
            OptionsView.FooterAutoHeight = True
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 23
            OptionsView.IndicatorWidth = 0
            Styles.OnGetContentStyle = cxGridA17ViewStylesGetContentStyle
            OnColumnHeaderClick = cxGridA14ViewColumnHeaderClick
            object cxgrdbclmn_counselColumn1: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 0
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.GroupFooters = False
              Options.Grouping = False
            end
            object cxgrdbclmn_counselColumn2: TcxGridDBColumn
              DataBinding.FieldName = #45824#54364#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 0
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 63
            end
            object cxgrdbclmn_counselColumn3: TcxGridDBColumn
              DataBinding.FieldName = #44256#44061#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 0
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 95
            end
            object cxgrdbclmn_counselColumn4: TcxGridDBColumn
              DataBinding.FieldName = #44256#44061#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 0
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 52
            end
            object cxgrdbclmn_counselColumn5: TcxGridDBColumn
              DataBinding.FieldName = #44256#44061#44396#48516
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 0
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.GroupFooters = False
              Options.Grouping = False
            end
            object cxgrdbclmn_counselColumn6: TcxGridDBColumn
              DataBinding.FieldName = #52636#48156#51648
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 0
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 172
            end
            object cxgrdbclmn_counselColumn8: TcxGridDBColumn
              DataBinding.FieldName = #46020#52265#51648
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 0
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 123
            end
            object cxgrdbclmn_counselColumn7: TcxGridDBColumn
              DataBinding.FieldName = #50836#44552
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;-,0.'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              MinWidth = 0
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.GroupFooters = False
              Options.Grouping = False
            end
            object cxgrdbclmn_counselColumn9: TcxGridDBColumn
              DataBinding.FieldName = #50724#45908#49345#53468
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 0
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.GroupFooters = False
              Options.Grouping = False
            end
            object cxgrdbclmn_counselColumn10: TcxGridDBColumn
              DataBinding.FieldName = #44208#51228#48169#49885
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 0
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.GroupFooters = False
              Options.Grouping = False
            end
            object cxgrdbclmn_counselColumn11: TcxGridDBColumn
              DataBinding.FieldName = #49849#51064#49345#53468
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 0
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.GroupFooters = False
              Options.Grouping = False
            end
            object cxgrdbclmn_counselColumn12: TcxGridDBColumn
              DataBinding.FieldName = #49849#51064#44552#50529
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;-,0.'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              MinWidth = 0
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.GroupFooters = False
              Options.Grouping = False
            end
            object cxgrdbclmn_counselColumn14: TcxGridDBColumn
              DataBinding.FieldName = #49849#51064#51068#49884
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 0
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 122
            end
            object cxgrdbclmn_counselColumn15: TcxGridDBColumn
              DataBinding.FieldName = #49849#51064#49345#45812#50896
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 0
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 79
            end
            object cxgrdbclmn_counselColumn16: TcxGridDBColumn
              DataBinding.FieldName = #51217#49688#49884#44036
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 0
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 122
            end
            object cxgrdbclmn_counselColumn17: TcxGridDBColumn
              DataBinding.FieldName = #48176#52264#49884#44036
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 0
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 122
            end
            object cxgrdbclmn_counselColumn18: TcxGridDBColumn
              DataBinding.FieldName = #50756#47308#49884#44036
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 0
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 122
            end
            object cxgrdbclmn_counselColumn19: TcxGridDBColumn
              DataBinding.FieldName = #49345#45812#50896
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 0
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.GroupFooters = False
              Options.Grouping = False
            end
            object cxgrdbclmn_counselColumn20: TcxGridDBColumn
              DataBinding.FieldName = #44592#49324#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 0
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 87
            end
            object cxgrdbclmn_counselColumn21: TcxGridDBColumn
              DataBinding.FieldName = #51217#49688#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 0
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.GroupFooters = False
              Options.Grouping = False
            end
            object cxgrdbclmn_counselColumn22: TcxGridDBColumn
              DataBinding.FieldName = #52852#46300#49849#51064#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
              Width = 76
            end
            object cxgrdbclmn_counselColumn23: TcxGridDBColumn
              DataBinding.FieldName = #48156#51452#51648#49324
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
          end
          object cxGridA17Level: TcxGridLevel
            GridView = cxGridA17View
          end
        end
      end
    end
  end
  object pop_dateA1: TPopupMenu
    AutoHotkeys = maManual
    Left = 132
    Top = 228
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
    Top = 227
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
    Left = 144
    Top = 627
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

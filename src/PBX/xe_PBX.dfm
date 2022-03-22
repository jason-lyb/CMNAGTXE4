object frm_PBX: Tfrm_PBX
  Left = 411
  Top = 309
  BorderStyle = bsNone
  Caption = 'frm_PBX'
  ClientHeight = 666
  ClientWidth = 1245
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 12
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 1245
    Height = 666
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet18
    Properties.CustomButtons.Buttons = <>
    OnChange = cxPageControl1Change
    ClientRectBottom = 660
    ClientRectLeft = 2
    ClientRectRight = 1239
    ClientRectTop = 27
    object cxTS_cl: TcxTabSheet
      Tag = 701
      Caption = #53685#54868#54788#54889
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object PnlMain_cl: TPanel
        Left = 0
        Top = 0
        Width = 1237
        Height = 633
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Shape6: TShape
          Left = 0
          Top = 41
          Width = 1237
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
          TabOrder = 0
          Height = 41
          Width = 1237
          object Shape2: TShape
            Left = 6
            Top = 9
            Width = 290
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape3: TShape
            Left = 300
            Top = 9
            Width = 124
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape32: TShape
            Left = 499
            Top = 9
            Width = 124
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object btnDate_cl: TcxButton
            Tag = 2
            Left = 271
            Top = 9
            Width = 25
            Height = 24
            Cursor = crHandPoint
            DropDownMenu = pm_date
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
            TabOrder = 0
          end
          object cxDtStart_cl: TcxDateEdit
            Left = 80
            Top = 8
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
            Width = 84
          end
          object cxDtEnd_cl: TcxDateEdit
            Left = 184
            Top = 8
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
            Width = 84
          end
          object btnSearch1: TcxButton
            Left = 699
            Top = 4
            Width = 58
            Height = 33
            Cursor = crHandPoint
            Caption = #44160'  '#49353
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 3
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnSearch1Click
          end
          object btnExcel_cl: TcxButton
            Left = 760
            Top = 4
            Width = 58
            Height = 33
            Cursor = crHandPoint
            Caption = #50641#49472#45796#50868
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 4
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnExcel_clClick
          end
          object cxLabel10: TcxLabel
            Left = 18
            Top = 14
            Caption = #44592'    '#44036
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 44
            AnchorY = 22
          end
          object cbGrpNm1: TcxComboBox
            Left = 375
            Top = 8
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.OnChange = cbGrpNm1PropertiesChange
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
            Width = 122
          end
          object cxLabel13: TcxLabel
            Left = 313
            Top = 14
            Caption = #49345#45812#44536#47353
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 339
            AnchorY = 22
          end
          object cbAgtNm1: TcxComboBox
            Tag = 1
            Left = 574
            Top = 8
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
            TabOrder = 8
            Height = 26
            Width = 122
          end
          object cxLabel49: TcxLabel
            Left = 517
            Top = 14
            Caption = #49345#45812#50896
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 537
            AnchorY = 22
          end
          object cxLabel8: TcxLabel
            Left = 163
            Top = 14
            Caption = ' ~ '
            Transparent = True
          end
          object btnGraph_cl: TcxButton
            Left = 821
            Top = 4
            Width = 58
            Height = 33
            Cursor = crHandPoint
            Caption = #44536#47000#54532
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 11
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnGraph_clClick
          end
        end
        object cxPC_cl: TcxPageControl
          Left = 0
          Top = 43
          Width = 1237
          Height = 590
          Align = alClient
          TabOrder = 1
          Properties.ActivePage = cxTabSheet11
          Properties.CustomButtons.Buttons = <>
          Properties.TabHeight = 23
          Properties.TabWidth = 70
          ClientRectBottom = 584
          ClientRectLeft = 2
          ClientRectRight = 1231
          ClientRectTop = 32
          object cxTabSheet11: TcxTabSheet
            Caption = #49345#45812#50896#48324
            ImageIndex = 0
            object AdvSplitter4: TAdvSplitter
              Left = 824
              Top = 0
              Width = 5
              Height = 552
              Align = alRight
              Appearance.BorderColor = clNone
              Appearance.BorderColorHot = clNone
              Appearance.Color = clWhite
              Appearance.ColorTo = clSilver
              Appearance.ColorHot = clWhite
              Appearance.ColorHotTo = clGray
              GripStyle = sgDots
              ExplicitLeft = 825
              ExplicitHeight = 531
            end
            object pnlLeftA1: TPanel
              Left = 0
              Top = 0
              Width = 824
              Height = 552
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object AdvSplitter1: TAdvSplitter
                Left = 0
                Top = 353
                Width = 824
                Height = 5
                Cursor = crVSplit
                Align = alBottom
                Appearance.BorderColor = clNone
                Appearance.BorderColorHot = clNone
                Appearance.Color = clWhite
                Appearance.ColorTo = clSilver
                Appearance.ColorHot = clWhite
                Appearance.ColorHotTo = clGray
                GripStyle = sgDots
                ExplicitLeft = -23
                ExplicitTop = 166
                ExplicitWidth = 761
              end
              object cxGrdPBX_cl_a: TcxGrid
                Left = 0
                Top = 0
                Width = 824
                Height = 353
                Align = alClient
                BevelInner = bvNone
                BevelOuter = bvNone
                TabOrder = 0
                LookAndFeel.NativeStyle = False
                object cxGrdVPBX_cl_a: TcxGridBandedTableView
                  Navigator.Buttons.CustomButtons = <>
                  FilterBox.CustomizeDialog = False
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = ',0.;-,0.'
                      Kind = skSum
                      Column = cxGrdVPBX_cl_aColumn11
                    end
                    item
                      Format = ',0.;-,0.'
                      Kind = skSum
                      Column = cxGrdVPBX_cl_aColumn9
                    end
                    item
                      Format = ',0.;-,0.'
                      Kind = skSum
                      Column = cxGrdVPBX_cl_aColumn11
                    end
                    item
                      Format = ',0.;-,0.'
                      Kind = skSum
                      Column = cxGrdVPBX_cl_aColumn13
                    end
                    item
                      Format = ',0.;-,0.'
                      Kind = skSum
                      Column = cxGrdVPBX_cl_aColumn15
                    end
                    item
                      Format = ',0.;-,0.'
                      Kind = skSum
                      Column = cxGrdVPBX_cl_aColumn17
                    end
                    item
                      Format = ',0.;-,0.'
                      Kind = skSum
                      Column = cxGrdVPBX_cl_aColumn5
                    end
                    item
                      Format = ',0.;-,0.'
                      Kind = skSum
                      Column = cxGrdVPBX_cl_aColumn19
                    end
                    item
                      Kind = skSum
                      OnGetText = cxGrdVPBX_cl_aTcxGridDataControllerTcxDataSummaryFooterSummaryItems19GetText
                      Column = cxGrdVPBX_cl_aColumn4
                    end
                    item
                      Kind = skSum
                      OnGetText = cxGrdVPBX_cl_aTcxGridDataControllerTcxDataSummaryFooterSummaryItems19GetText
                      Column = cxGrdVPBX_cl_aColumn6
                    end
                    item
                      Kind = skSum
                      OnGetText = cxGrdVPBX_cl_aTcxGridDataControllerTcxDataSummaryFooterSummaryItems19GetText
                      Column = cxGrdVPBX_cl_aColumn7
                    end
                    item
                      Kind = skAverage
                      OnGetText = cxGrdVPBX_cl_aTcxGridDataControllerTcxDataSummaryFooterSummaryItems19GetText
                      Column = cxGrdVPBX_cl_aColumn8
                    end
                    item
                      Kind = skSum
                      OnGetText = cxGrdVPBX_cl_aTcxGridDataControllerTcxDataSummaryFooterSummaryItems19GetText
                      Column = cxGrdVPBX_cl_aColumn20
                    end
                    item
                      Kind = skAverage
                      OnGetText = cxGrdVPBX_cl_aTcxGridDataControllerTcxDataSummaryFooterSummaryItems19GetText
                      Column = cxGrdVPBX_cl_aColumn38
                    end
                    item
                      Format = '0%;-0%'
                      Kind = skSum
                      Column = cxGrdVPBX_cl_aColumn10
                    end
                    item
                      Format = '0%;-0%'
                      Kind = skAverage
                      Column = cxGrdVPBX_cl_aColumn12
                    end
                    item
                      Format = ',0.;-,0.'
                      Kind = skSum
                      Column = cxGrdVPBX_cl_aColumn3
                    end
                    item
                      Format = '0%;-0%'
                      Kind = skAverage
                      Column = cxGrdVPBX_cl_aColumn14
                    end
                    item
                      Format = '0%;-0%'
                      Kind = skAverage
                      Column = cxGrdVPBX_cl_aColumn16
                    end
                    item
                      Format = '0%;-0%'
                      Kind = skAverage
                      Column = cxGrdVPBX_cl_aColumn18
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
                      Caption = #49692#48264
                      Width = 46
                    end
                    item
                      Caption = #49345#45812#50896#47749
                      Width = 82
                    end
                    item
                      Caption = #49345#45812#44536#47353#47749
                      Width = 98
                    end
                    item
                      Caption = #51204#52404#53084#49688
                      Width = 62
                    end
                    item
                      Caption = #51204#52404#53685#54868#49884#44036'(ARS'#54252#54632')'
                      Width = 136
                    end
                    item
                      Caption = #51064#48148#50868#46300
                    end
                    item
                      Caption = #50500#50883#48148#50868#46300
                    end
                    item
                      Caption = #49345#45812#50896#50672#44208#49457#44277
                      Position.BandIndex = 5
                      Position.ColIndex = 0
                      Width = 100
                    end
                    item
                      Caption = #52509#53685#54868#49884#44036'(ARS'#54252#54632')'
                      Position.BandIndex = 5
                      Position.ColIndex = 1
                      Width = 136
                    end
                    item
                      Caption = #49892#51228#53685#54868#49884#44036
                      Position.BandIndex = 5
                      Position.ColIndex = 2
                      Width = 78
                    end
                    item
                      Caption = #54217#44512#53685#54868#49884#44036
                      Position.BandIndex = 5
                      Position.ColIndex = 3
                      Width = 78
                    end
                    item
                      Caption = '20'#52488#45236' '#51025#45824'(CTI'#53328#54252#54632')'
                      Position.BandIndex = 5
                      Position.ColIndex = 4
                      Visible = False
                    end
                    item
                      Caption = '20'#52488#45236' '#51025#45824'('#47553#51060#54980')'
                      Position.BandIndex = 5
                      Position.ColIndex = 5
                    end
                    item
                      Caption = '20~30'#52488#45236' '#51025#45824'('#47553#51060#54980')'
                      Position.BandIndex = 5
                      Position.ColIndex = 6
                    end
                    item
                      Caption = '30~40'#52488#45236' '#51025#45824'('#47553#51060#54980')'
                      Position.BandIndex = 5
                      Position.ColIndex = 7
                    end
                    item
                      Caption = '40'#52488#51060#54980' '#51025#45824'('#47553#51060#54980')'
                      Position.BandIndex = 5
                      Position.ColIndex = 8
                    end
                    item
                      Caption = #51204#54868#44152#44592
                      Position.BandIndex = 6
                      Position.ColIndex = 0
                    end
                    item
                      Caption = #52509#53685#54868#49884#44036
                      Position.BandIndex = 6
                      Position.ColIndex = 1
                      Width = 66
                    end
                    item
                      Caption = #54217#44512#53685#54868#49884#44036
                      Position.BandIndex = 6
                      Position.ColIndex = 2
                      Width = 78
                    end
                    item
                      Caption = #53084#49688
                      Position.BandIndex = 11
                      Position.ColIndex = 0
                      Visible = False
                      Width = 70
                    end
                    item
                      Caption = #54140#49468#53944
                      Position.BandIndex = 11
                      Position.ColIndex = 1
                      Visible = False
                      Width = 70
                    end
                    item
                      Caption = #53084#49688
                      Position.BandIndex = 12
                      Position.ColIndex = 0
                      Width = 70
                    end
                    item
                      Caption = #54140#49468#53944
                      Position.BandIndex = 12
                      Position.ColIndex = 1
                      Width = 70
                    end
                    item
                      Caption = #53084#49688
                      Position.BandIndex = 13
                      Position.ColIndex = 0
                      Width = 70
                    end
                    item
                      Caption = #54140#49468#53944
                      Position.BandIndex = 13
                      Position.ColIndex = 1
                      Width = 70
                    end
                    item
                      Caption = #53084#49688
                      Position.BandIndex = 14
                      Position.ColIndex = 0
                      Width = 70
                    end
                    item
                      Caption = #54140#49468#53944
                      Position.BandIndex = 14
                      Position.ColIndex = 1
                      Width = 70
                    end
                    item
                      Caption = #53084#49688
                      Position.BandIndex = 15
                      Position.ColIndex = 0
                      Width = 70
                    end
                    item
                      Caption = #54140#49468#53944
                      Position.BandIndex = 15
                      Position.ColIndex = 1
                      Width = 70
                    end>
                  object cxGrdVPBX_cl_aColumn1: TcxGridBandedColumn
                    Caption = #49692#48264
                    DataBinding.ValueType = 'Integer'
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 0
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGrdVPBX_cl_aColumn21: TcxGridBandedColumn
                    Caption = #49345#45812#50896#47749
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Vert = taVCenter
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 1
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGrdVPBX_cl_aColumn2: TcxGridBandedColumn
                    Caption = #49345#45812#44536#47353#47749
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
                    MinWidth = 64
                    Options.Editing = False
                    Options.Moving = False
                    Options.Sorting = False
                    Position.BandIndex = 2
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGrdVPBX_cl_aColumn3: TcxGridBandedColumn
                    Caption = #51204#52404#53084#49688
                    DataBinding.ValueType = 'Integer'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = ',0.;-,0.'
                    FooterAlignmentHorz = taRightJustify
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 3
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGrdVPBX_cl_aColumn4: TcxGridBandedColumn
                    Caption = #51204#52404#53685#54868#49884#44036'(ARS'#54252#54632')'
                    PropertiesClassName = 'TcxTimeEditProperties'
                    Properties.Alignment.Horz = taCenter
                    FooterAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 4
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGrdVPBX_cl_aColumn5: TcxGridBandedColumn
                    Caption = #49345#45812#50896#50672#44208#49457#44277
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = ',0.;-,0.'
                    FooterAlignmentHorz = taRightJustify
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 7
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGrdVPBX_cl_aColumn6: TcxGridBandedColumn
                    Caption = #52509#53685#54868#49884#44036'(ARS'#54252#54632')'
                    PropertiesClassName = 'TcxTimeEditProperties'
                    Properties.Alignment.Horz = taCenter
                    FooterAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 8
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGrdVPBX_cl_aColumn7: TcxGridBandedColumn
                    Caption = #49888#51228#53685#54868#49884#44036
                    PropertiesClassName = 'TcxTimeEditProperties'
                    Properties.Alignment.Horz = taCenter
                    FooterAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 9
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGrdVPBX_cl_aColumn8: TcxGridBandedColumn
                    Caption = #54217#44512#53685#54868#49884#44036
                    PropertiesClassName = 'TcxTimeEditProperties'
                    Properties.Alignment.Horz = taCenter
                    FooterAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 10
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGrdVPBX_cl_aColumn9: TcxGridBandedColumn
                    Caption = #53084#49688
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = ',0.;-,0.'
                    FooterAlignmentHorz = taRightJustify
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 19
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGrdVPBX_cl_aColumn10: TcxGridBandedColumn
                    Caption = #54140#49468#53944
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = '0%;-0%'
                    FooterAlignmentHorz = taRightJustify
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 20
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGrdVPBX_cl_aColumn11: TcxGridBandedColumn
                    Caption = #53084#49688
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = ',0.;-,0.'
                    FooterAlignmentHorz = taRightJustify
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 21
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGrdVPBX_cl_aColumn12: TcxGridBandedColumn
                    Caption = #54140#49468#53944
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = '0%;-0%'
                    FooterAlignmentHorz = taRightJustify
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 22
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGrdVPBX_cl_aColumn13: TcxGridBandedColumn
                    Caption = #53084#49688
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = ',0.;-,0.'
                    FooterAlignmentHorz = taRightJustify
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 23
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGrdVPBX_cl_aColumn14: TcxGridBandedColumn
                    Caption = #54140#49468#53944
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = '0%;-0%'
                    FooterAlignmentHorz = taRightJustify
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 24
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGrdVPBX_cl_aColumn15: TcxGridBandedColumn
                    Caption = #53084#49688
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = ',0.;-,0.'
                    FooterAlignmentHorz = taRightJustify
                    Options.Editing = False
                    Options.Moving = False
                    Width = 71
                    Position.BandIndex = 25
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGrdVPBX_cl_aColumn16: TcxGridBandedColumn
                    Caption = #54140#49468#53944
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = '0%;-0%'
                    FooterAlignmentHorz = taRightJustify
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 26
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGrdVPBX_cl_aColumn17: TcxGridBandedColumn
                    Caption = #53084#49688
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = ',0.;-,0.'
                    FooterAlignmentHorz = taRightJustify
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 27
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGrdVPBX_cl_aColumn18: TcxGridBandedColumn
                    Caption = #54140#49468#53944
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = '0%;-0%'
                    FooterAlignmentHorz = taRightJustify
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 28
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGrdVPBX_cl_aColumn19: TcxGridBandedColumn
                    Caption = #51204#54868#44152#44592
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = ',0.;-,0.'
                    FooterAlignmentHorz = taRightJustify
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 16
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGrdVPBX_cl_aColumn20: TcxGridBandedColumn
                    Caption = #52509#53685#54868#49884#44036
                    PropertiesClassName = 'TcxTimeEditProperties'
                    Properties.Alignment.Horz = taCenter
                    FooterAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 17
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGrdVPBX_cl_aColumn38: TcxGridBandedColumn
                    Caption = #54217#44512#53685#54868#49884#44036
                    PropertiesClassName = 'TcxTimeEditProperties'
                    Properties.Alignment.Horz = taCenter
                    FooterAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 18
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                end
                object cxGridLevel7: TcxGridLevel
                  GridView = cxGrdVPBX_cl_a
                end
              end
              object pnlChart_cl_a: TPanel
                Left = 0
                Top = 358
                Width = 824
                Height = 194
                Align = alBottom
                BevelOuter = bvNone
                TabOrder = 1
                object Panel1: TPanel
                  Left = 0
                  Top = 0
                  Width = 824
                  Height = 34
                  Align = alTop
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Shape9: TShape
                    Left = 5
                    Top = 5
                    Width = 198
                    Height = 24
                    Pen.Color = 12566402
                    Shape = stRoundRect
                  end
                  object cbChartKindA1_1: TcxComboBox
                    Left = 80
                    Top = 4
                    AutoSize = False
                    Properties.DropDownListStyle = lsFixedList
                    Properties.Items.Strings = (
                      'Column Diagram'
                      'Bar Diagram'
                      'Stacked Area Diagram'
                      'Stacked Bars Diagram'
                      'Stacked Column Diagram'
                      'Line Diagram'
                      'Area Diagram'
                      'Pie Diagram')
                    Properties.OnChange = cbChartKindA1PropertiesChange
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
                    Text = 'Column Diagram'
                    Height = 26
                    Width = 147
                  end
                  object cxLabel6: TcxLabel
                    Left = 13
                    Top = 9
                    Caption = #44536#47000#54532#49440#53469
                    ParentColor = False
                    Style.TextColor = clBlack
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
                    Properties.ShadowedColor = clGray
                    Transparent = True
                    AnchorX = 45
                    AnchorY = 17
                  end
                  object btnChartA6: TcxButton
                    Left = 888
                    Top = 4
                    Width = 75
                    Height = 25
                    Caption = 'btnChartA6'
                    TabOrder = 2
                    Visible = False
                  end
                  object cbKindA1_1: TcxComboBox
                    Left = 232
                    Top = 4
                    AutoSize = False
                    Properties.DropDownListStyle = lsFixedList
                    Properties.Items.Strings = (
                      #49345#45812#50896' '#51204#52404' '#53084#49688#47196' '#48372#44592
                      #49345#45812#50896' '#53084#51025#45824' '#52488'(sec)'#45800#50948' '#48372#44592)
                    Properties.OnChange = cbKindA1PropertiesChange
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
                    Text = #49345#45812#50896' '#51204#52404' '#53084#49688#47196' '#48372#44592
                    Height = 26
                    Width = 222
                  end
                  object btnGraphExit_cl_a: TcxButton
                    Left = 460
                    Top = 4
                    Width = 58
                    Height = 25
                    Cursor = crHandPoint
                    Caption = #45803' '#44592
                    Colors.Default = 16773362
                    Colors.Normal = 16773362
                    Colors.Pressed = 16644080
                    LookAndFeel.Kind = lfFlat
                    LookAndFeel.NativeStyle = False
                    LookAndFeel.SkinName = 'Sharp'
                    TabOrder = 4
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = #44404#47548
                    Font.Style = []
                    ParentFont = False
                    OnClick = btnGraphExit_cl_aClick
                  end
                end
                object cxGrdCPBX_cl_a: TcxGrid
                  Left = 0
                  Top = 34
                  Width = 824
                  Height = 160
                  Align = alClient
                  TabOrder = 1
                  object cxGrdCvPBX_cl_a: TcxGridChartView
                    DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
                    DiagramColumn.Active = True
                    DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
                    DiagramPie.Values.CaptionPosition = pdvcpCenter
                    OptionsBehavior.ValueHints = False
                    Title.Alignment = cpaStart
                    Title.Text = #49345#45812#50896#48324' '#53685#44228
                    object cxGrdCvPBX_cl_aSeries1: TcxGridChartSeries
                      DisplayText = #51204#52404#53084#49688
                      GroupSummaryKind = skCount
                    end
                    object cxGrdCvPBX_cl_aSeries2: TcxGridChartSeries
                      DisplayText = #49345#45812#50896#50672#44208#49457#44277
                    end
                    object cxGrdCvPBX_cl_aSeries3: TcxGridChartSeries
                      DisplayText = #50500#50883#48148#50868#46300#53084#49688
                    end
                    object cxGrdCvPBX_cl_aSeries4: TcxGridChartSeries
                      DisplayText = '40'#52488#51060#54980#51025#45824
                      Visible = False
                    end
                  end
                  object cxGridLevelA1_1: TcxGridLevel
                    GridView = cxGrdCvPBX_cl_a
                  end
                end
              end
            end
            object cxGrdPBX_clK_a: TcxGrid
              Left = 829
              Top = 0
              Width = 400
              Height = 552
              Align = alRight
              BevelInner = bvNone
              BevelOuter = bvNone
              TabOrder = 1
              LookAndFeel.NativeStyle = False
              object cxGrdVPBX_clK_a: TcxGridBandedTableView
                Navigator.Buttons.CustomButtons = <>
                FilterBox.CustomizeDialog = False
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
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
                  end>
                DataController.Summary.SummaryGroups = <>
                OptionsBehavior.FocusFirstCellOnNewRecord = True
                OptionsCustomize.ColumnFiltering = False
                OptionsCustomize.ColumnHidingOnGrouping = False
                OptionsCustomize.ColumnHorzSizing = False
                OptionsCustomize.BandMoving = False
                OptionsCustomize.ColumnVertSizing = False
                OptionsData.Editing = False
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
                    Width = 33
                  end
                  item
                    Caption = #49345#45812#50896#47749
                    Width = 83
                  end
                  item
                    Caption = #53685#54868#53084#49688
                  end
                  item
                    Caption = #52509#53685#54868#49884#44036
                    Width = 66
                  end
                  item
                    Caption = #54217#44512#53685#54868#49884#44036
                    Width = 78
                  end
                  item
                    Caption = #51216#49688
                    Width = 50
                  end>
                object cxGridBandedColumn124: TcxGridBandedColumn
                  Caption = #49692#48264
                  DataBinding.ValueType = 'Integer'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.DisplayFormat = ',0.;-,0.'
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn125: TcxGridBandedColumn
                  Caption = #49345#45812#50896#47749
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Vert = taVCenter
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 1
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn126: TcxGridBandedColumn
                  Caption = #53685#54868#53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  MinWidth = 64
                  Options.Editing = False
                  Options.Moving = False
                  Options.Sorting = False
                  Position.BandIndex = 2
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn127: TcxGridBandedColumn
                  Caption = #52509#53685#54868#49884#44036
                  DataBinding.ValueType = 'Integer'
                  PropertiesClassName = 'TcxTimeEditProperties'
                  Properties.Alignment.Horz = taCenter
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 3
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn128: TcxGridBandedColumn
                  Caption = #54217#44512#53685#54868#49884#44036
                  PropertiesClassName = 'TcxTimeEditProperties'
                  Properties.Alignment.Horz = taCenter
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 4
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGrdVPBX_clK_aColumn1: TcxGridBandedColumn
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  Position.BandIndex = 5
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
              end
              object cxGridLevel19: TcxGridLevel
                GridView = cxGrdVPBX_clK_a
              end
            end
          end
          object cxTabSheet12: TcxTabSheet
            Caption = #49884#44036#45824#48324
            ImageIndex = 1
            object AdvSplitter2: TAdvSplitter
              Left = 866
              Top = 0
              Width = 5
              Height = 552
              Align = alRight
              Appearance.BorderColor = clNone
              Appearance.BorderColorHot = clNone
              Appearance.Color = clWhite
              Appearance.ColorTo = clSilver
              Appearance.ColorHot = clWhite
              Appearance.ColorHotTo = clGray
              GripStyle = sgDots
              ExplicitLeft = 739
              ExplicitHeight = 531
            end
            object cxGrdPBX_cl_t: TcxGrid
              Left = 0
              Top = 0
              Width = 866
              Height = 552
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              TabOrder = 0
              LookAndFeel.NativeStyle = False
              object cxGrdVPBX_cl_t: TcxGridBandedTableView
                Navigator.Buttons.CustomButtons = <>
                FilterBox.CustomizeDialog = False
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
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
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn83
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn85
                  end
                  item
                    Kind = skSum
                    OnGetText = cxGrdVPBX_cl_aTcxGridDataControllerTcxDataSummaryFooterSummaryItems19GetText
                    Column = cxGridBandedColumn84
                  end
                  item
                    Kind = skSum
                    OnGetText = cxGrdVPBX_cl_aTcxGridDataControllerTcxDataSummaryFooterSummaryItems19GetText
                    Column = cxGridBandedColumn86
                  end
                  item
                    Kind = skSum
                    OnGetText = cxGrdVPBX_cl_aTcxGridDataControllerTcxDataSummaryFooterSummaryItems19GetText
                    Column = cxGridBandedColumn87
                  end
                  item
                    Kind = skAverage
                    OnGetText = cxGrdVPBX_cl_aTcxGridDataControllerTcxDataSummaryFooterSummaryItems19GetText
                    Column = cxGridBandedColumn88
                  end
                  item
                    Kind = skSum
                    Column = cxGridBandedColumn89
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn91
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn93
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn95
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn97
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn99
                  end
                  item
                    Kind = skAverage
                    OnGetText = cxGrdVPBX_cl_aTcxGridDataControllerTcxDataSummaryFooterSummaryItems19GetText
                    Column = cxGridBandedColumn101
                  end
                  item
                    Kind = skSum
                    OnGetText = cxGrdVPBX_cl_aTcxGridDataControllerTcxDataSummaryFooterSummaryItems19GetText
                    Column = cxGridBandedColumn100
                  end
                  item
                    Kind = skAverage
                    Column = cxGridBandedColumn90
                  end
                  item
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGridBandedColumn92
                  end
                  item
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGridBandedColumn94
                  end
                  item
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGridBandedColumn96
                  end
                  item
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGridBandedColumn98
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
                    Caption = #49692#48264
                    Width = 46
                  end
                  item
                    Caption = #49345#45812#50896#47749
                    Visible = False
                    Width = 82
                  end
                  item
                    Caption = #49884#44036
                    Width = 98
                  end
                  item
                    Caption = #51204#52404#53084#49688
                    Width = 62
                  end
                  item
                    Caption = #51204#52404#53685#54868#49884#44036'(ARS'#54252#54632')'
                    Width = 152
                  end
                  item
                    Caption = #51064#48148#50868#46300
                  end
                  item
                    Caption = #50500#50883#48148#50868#46300
                  end
                  item
                    Caption = #49345#45812#50896#50672#44208#49457#44277
                    Position.BandIndex = 5
                    Position.ColIndex = 0
                    Width = 100
                  end
                  item
                    Caption = #52509#53685#54868#49884#44036'(ARS'#54252#54632')'
                    Position.BandIndex = 5
                    Position.ColIndex = 1
                    Width = 136
                  end
                  item
                    Caption = #49892#51228#53685#54868#49884#44036
                    Position.BandIndex = 5
                    Position.ColIndex = 2
                    Width = 78
                  end
                  item
                    Caption = #54217#44512#53685#54868#49884#44036
                    Position.BandIndex = 5
                    Position.ColIndex = 3
                    Width = 78
                  end
                  item
                    Caption = '20'#52488#45236' '#51025#45824'(CTI'#53328#54252#54632')'
                    Position.BandIndex = 5
                    Position.ColIndex = 4
                    Visible = False
                  end
                  item
                    Caption = '20'#52488#45236' '#51025#45824'('#47553#51060#54980')'
                    Position.BandIndex = 5
                    Position.ColIndex = 5
                  end
                  item
                    Caption = '20~30'#52488#45236' '#51025#45824'('#47553#51060#54980')'
                    Position.BandIndex = 5
                    Position.ColIndex = 6
                  end
                  item
                    Caption = '30~40'#52488#45236' '#51025#45824'('#47553#51060#54980')'
                    Position.BandIndex = 5
                    Position.ColIndex = 7
                  end
                  item
                    Caption = '40'#52488#51060#54980' '#51025#45824'('#47553#51060#54980')'
                    Position.BandIndex = 5
                    Position.ColIndex = 8
                  end
                  item
                    Caption = #51204#54868#44152#44592
                    Position.BandIndex = 6
                    Position.ColIndex = 0
                  end
                  item
                    Caption = #52509#53685#54868#49884#44036
                    Position.BandIndex = 6
                    Position.ColIndex = 1
                    Width = 66
                  end
                  item
                    Caption = #54217#44512#53685#54868#49884#44036
                    Position.BandIndex = 6
                    Position.ColIndex = 2
                    Width = 78
                  end
                  item
                    Caption = #53084#49688
                    Position.BandIndex = 11
                    Position.ColIndex = 0
                    Visible = False
                    Width = 70
                  end
                  item
                    Caption = #54140#49468#53944
                    Position.BandIndex = 11
                    Position.ColIndex = 1
                    Visible = False
                    Width = 70
                  end
                  item
                    Caption = #53084#49688
                    Position.BandIndex = 12
                    Position.ColIndex = 0
                    Width = 70
                  end
                  item
                    Caption = #54140#49468#53944
                    Position.BandIndex = 12
                    Position.ColIndex = 1
                    Width = 70
                  end
                  item
                    Caption = #53084#49688
                    Position.BandIndex = 13
                    Position.ColIndex = 0
                    Width = 70
                  end
                  item
                    Caption = #54140#49468#53944
                    Position.BandIndex = 13
                    Position.ColIndex = 1
                    Width = 70
                  end
                  item
                    Caption = #53084#49688
                    Position.BandIndex = 14
                    Position.ColIndex = 0
                    Width = 70
                  end
                  item
                    Caption = #54140#49468#53944
                    Position.BandIndex = 14
                    Position.ColIndex = 1
                    Width = 70
                  end
                  item
                    Caption = #53084#49688
                    Position.BandIndex = 15
                    Position.ColIndex = 0
                    Width = 70
                  end
                  item
                    Caption = #54140#49468#53944
                    Position.BandIndex = 15
                    Position.ColIndex = 1
                    Width = 70
                  end>
                object cxGridBandedColumn80: TcxGridBandedColumn
                  Caption = #49692#48264
                  DataBinding.ValueType = 'Integer'
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn81: TcxGridBandedColumn
                  Caption = #49345#45812#50896#47749
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Vert = taVCenter
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 1
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn82: TcxGridBandedColumn
                  Caption = #49345#45812#44536#47353#47749
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  MinWidth = 64
                  Options.Editing = False
                  Options.Moving = False
                  Options.Sorting = False
                  Position.BandIndex = 2
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn83: TcxGridBandedColumn
                  Caption = #51204#52404#53084#49688
                  DataBinding.ValueType = 'Integer'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 3
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn84: TcxGridBandedColumn
                  Caption = #51204#52404#53685#54868#49884#44036'(ARS'#54252#54632')'
                  PropertiesClassName = 'TcxTimeEditProperties'
                  Properties.Alignment.Horz = taCenter
                  FooterAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 4
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn85: TcxGridBandedColumn
                  Caption = #49345#45812#50896#50672#44208#49457#44277
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 7
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn86: TcxGridBandedColumn
                  Caption = #52509#53685#54868#49884#44036'(ARS'#54252#54632')'
                  PropertiesClassName = 'TcxTimeEditProperties'
                  Properties.Alignment.Horz = taCenter
                  FooterAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 8
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn87: TcxGridBandedColumn
                  Caption = #49888#51228#53685#54868#49884#44036
                  PropertiesClassName = 'TcxTimeEditProperties'
                  Properties.Alignment.Horz = taCenter
                  FooterAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 9
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn88: TcxGridBandedColumn
                  Caption = #54217#44512#53685#54868#49884#44036
                  PropertiesClassName = 'TcxTimeEditProperties'
                  Properties.Alignment.Horz = taCenter
                  FooterAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 10
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn89: TcxGridBandedColumn
                  Caption = #53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 19
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn90: TcxGridBandedColumn
                  Caption = #54140#49468#53944
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 20
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn91: TcxGridBandedColumn
                  Caption = #53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 21
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn92: TcxGridBandedColumn
                  Caption = #54140#49468#53944
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 22
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn93: TcxGridBandedColumn
                  Caption = #53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 23
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn94: TcxGridBandedColumn
                  Caption = #54140#49468#53944
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 24
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn95: TcxGridBandedColumn
                  Caption = #53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Width = 71
                  Position.BandIndex = 25
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn96: TcxGridBandedColumn
                  Caption = #54140#49468#53944
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 26
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn97: TcxGridBandedColumn
                  Caption = #53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 27
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn98: TcxGridBandedColumn
                  Caption = #54140#49468#53944
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 28
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn99: TcxGridBandedColumn
                  Caption = #51204#54868#44152#44592
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 16
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn100: TcxGridBandedColumn
                  Caption = #52509#53685#54868#49884#44036
                  PropertiesClassName = 'TcxTimeEditProperties'
                  Properties.Alignment.Horz = taCenter
                  FooterAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 17
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn101: TcxGridBandedColumn
                  Caption = #54217#44512#53685#54868#49884#44036
                  PropertiesClassName = 'TcxTimeEditProperties'
                  Properties.Alignment.Horz = taCenter
                  FooterAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 18
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
              end
              object cxGridLevel13: TcxGridLevel
                GridView = cxGrdVPBX_cl_t
              end
            end
            object pnlChart_cl_t: TPanel
              Left = 871
              Top = 0
              Width = 358
              Height = 552
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 1
              object cxGrdCPBX_cl_t: TcxGrid
                Left = 0
                Top = 61
                Width = 358
                Height = 491
                Align = alClient
                TabOrder = 0
                object cxGrdCvPBX_cl_t: TcxGridChartView
                  DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
                  DiagramColumn.Active = True
                  DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
                  DiagramPie.Values.CaptionPosition = pdvcpCenter
                  OptionsBehavior.ValueHints = False
                  Title.Alignment = cpaStart
                  Title.Text = #49884#44036#45824#48324#53685#44228
                  object cxGrdCvPBX_cl_tSeries1: TcxGridChartSeries
                    DisplayText = #51204#52404#53084#49688
                  end
                  object cxGrdCvPBX_cl_tSeries2: TcxGridChartSeries
                    DisplayText = #49345#45812#50896#50672#44208#49457#44277
                  end
                  object cxGrdCvPBX_cl_tSeries3: TcxGridChartSeries
                    DisplayText = #50500#50883#48148#50868#46300#53084#49688
                  end
                  object cxGrdCvPBX_cl_tSeries4: TcxGridChartSeries
                    DisplayText = '40'#52488#51060#54980#51025#45824
                    Visible = False
                  end
                end
                object cxGridLevelA1_2: TcxGridLevel
                  GridView = cxGrdCvPBX_cl_t
                end
              end
              object Panel4: TPanel
                Left = 0
                Top = 0
                Width = 358
                Height = 61
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 1
                object Shape54: TShape
                  Left = 5
                  Top = 5
                  Width = 198
                  Height = 24
                  Pen.Color = 12566402
                  Shape = stRoundRect
                end
                object cbChartKindA1_2: TcxComboBox
                  Left = 80
                  Top = 4
                  AutoSize = False
                  Properties.DropDownListStyle = lsFixedList
                  Properties.Items.Strings = (
                    'Column Diagram'
                    'Bar Diagram'
                    'Stacked Area Diagram'
                    'Stacked Bars Diagram'
                    'Stacked Column Diagram'
                    'Line Diagram'
                    'Area Diagram'
                    'Pie Diagram')
                  Properties.OnChange = cbChartKindA1_2PropertiesChange
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
                  Text = 'Column Diagram'
                  Height = 26
                  Width = 147
                end
                object cxLabel33: TcxLabel
                  Left = 13
                  Top = 9
                  Caption = #44536#47000#54532#49440#53469
                  ParentColor = False
                  Style.TextColor = clBlack
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Properties.ShadowedColor = clGray
                  Transparent = True
                  AnchorX = 45
                  AnchorY = 17
                end
                object cxButton8: TcxButton
                  Left = 888
                  Top = 4
                  Width = 75
                  Height = 25
                  Caption = 'btnChartA6'
                  TabOrder = 2
                  Visible = False
                end
                object cbKindA1_2: TcxComboBox
                  Left = 5
                  Top = 31
                  AutoSize = False
                  Properties.DropDownListStyle = lsFixedList
                  Properties.Items.Strings = (
                    #49345#45812#50896' '#51204#52404' '#53084#49688#47196' '#48372#44592
                    #49345#45812#50896' '#53084#51025#45824' '#52488'(sec)'#45800#50948' '#48372#44592)
                  Properties.OnChange = cbKindA1_2PropertiesChange
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
                  Text = #49345#45812#50896' '#51204#52404' '#53084#49688#47196' '#48372#44592
                  Height = 26
                  Width = 222
                end
                object btnGraphExit_cl_t: TcxButton
                  Left = 231
                  Top = 5
                  Width = 58
                  Height = 52
                  Cursor = crHandPoint
                  Caption = #45803' '#44592
                  Colors.Default = 16773362
                  Colors.Normal = 16773362
                  Colors.Pressed = 16644080
                  LookAndFeel.Kind = lfFlat
                  LookAndFeel.NativeStyle = False
                  LookAndFeel.SkinName = 'Sharp'
                  TabOrder = 4
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = #44404#47548
                  Font.Style = []
                  ParentFont = False
                  OnClick = btnGraphExit_cl_tClick
                end
              end
            end
          end
          object cxTabSheet13: TcxTabSheet
            Caption = #51068#48324
            ImageIndex = 2
            object AdvSplitter3: TAdvSplitter
              Left = 866
              Top = 0
              Width = 5
              Height = 552
              Align = alRight
              Appearance.BorderColor = clNone
              Appearance.BorderColorHot = clNone
              Appearance.Color = clWhite
              Appearance.ColorTo = clSilver
              Appearance.ColorHot = clWhite
              Appearance.ColorHotTo = clGray
              GripStyle = sgDots
              ExplicitLeft = 739
              ExplicitHeight = 531
            end
            object cxGrdPBX_cl_d: TcxGrid
              Left = 0
              Top = 0
              Width = 866
              Height = 552
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              TabOrder = 0
              LookAndFeel.NativeStyle = False
              object cxGrdVPBX_cl_d: TcxGridBandedTableView
                Navigator.Buttons.CustomButtons = <>
                FilterBox.CustomizeDialog = False
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
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
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn105
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn107
                  end
                  item
                    Kind = skSum
                    Column = cxGridBandedColumn111
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn113
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn115
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn117
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn119
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn121
                  end
                  item
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGridBandedColumn112
                  end
                  item
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGridBandedColumn114
                  end
                  item
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGridBandedColumn116
                  end
                  item
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGridBandedColumn118
                  end
                  item
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGridBandedColumn120
                  end
                  item
                    Kind = skSum
                    OnGetText = cxGrdVPBX_cl_aTcxGridDataControllerTcxDataSummaryFooterSummaryItems19GetText
                    Column = cxGridBandedColumn106
                  end
                  item
                    Kind = skSum
                    OnGetText = cxGrdVPBX_cl_aTcxGridDataControllerTcxDataSummaryFooterSummaryItems19GetText
                    Column = cxGridBandedColumn108
                  end
                  item
                    Kind = skSum
                    OnGetText = cxGrdVPBX_cl_aTcxGridDataControllerTcxDataSummaryFooterSummaryItems19GetText
                    Column = cxGridBandedColumn109
                  end
                  item
                    Kind = skAverage
                    OnGetText = cxGrdVPBX_cl_aTcxGridDataControllerTcxDataSummaryFooterSummaryItems19GetText
                    Column = cxGridBandedColumn110
                  end
                  item
                    Kind = skSum
                    OnGetText = cxGrdVPBX_cl_aTcxGridDataControllerTcxDataSummaryFooterSummaryItems19GetText
                    Column = cxGridBandedColumn122
                  end
                  item
                    Kind = skAverage
                    OnGetText = cxGrdVPBX_cl_aTcxGridDataControllerTcxDataSummaryFooterSummaryItems19GetText
                    Column = cxGridBandedColumn123
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
                    Caption = #49692#48264
                    Width = 46
                  end
                  item
                    Caption = #49345#45812#50896#47749
                    Visible = False
                    Width = 82
                  end
                  item
                    Caption = #51068#51088
                    Width = 98
                  end
                  item
                    Caption = #51204#52404#53084#49688
                    Width = 62
                  end
                  item
                    Caption = #51204#52404#53685#54868#49884#44036'(ARS'#54252#54632')'
                    Width = 152
                  end
                  item
                    Caption = #51064#48148#50868#46300
                  end
                  item
                    Caption = #50500#50883#48148#50868#46300
                  end
                  item
                    Caption = #49345#45812#50896#50672#44208#49457#44277
                    Position.BandIndex = 5
                    Position.ColIndex = 0
                    Width = 100
                  end
                  item
                    Caption = #52509#53685#54868#49884#44036'(ARS'#54252#54632')'
                    Position.BandIndex = 5
                    Position.ColIndex = 1
                    Width = 136
                  end
                  item
                    Caption = #49892#51228#53685#54868#49884#44036
                    Position.BandIndex = 5
                    Position.ColIndex = 2
                    Width = 78
                  end
                  item
                    Caption = #54217#44512#53685#54868#49884#44036
                    Position.BandIndex = 5
                    Position.ColIndex = 3
                    Width = 78
                  end
                  item
                    Caption = '20'#52488#45236' '#51025#45824'(CTI'#53328#54252#54632')'
                    Position.BandIndex = 5
                    Position.ColIndex = 4
                    Visible = False
                  end
                  item
                    Caption = '20'#52488#45236' '#51025#45824'('#47553#51060#54980')'
                    Position.BandIndex = 5
                    Position.ColIndex = 5
                  end
                  item
                    Caption = '20~30'#52488#45236' '#51025#45824'('#47553#51060#54980')'
                    Position.BandIndex = 5
                    Position.ColIndex = 6
                  end
                  item
                    Caption = '30~40'#52488#45236' '#51025#45824'('#47553#51060#54980')'
                    Position.BandIndex = 5
                    Position.ColIndex = 7
                  end
                  item
                    Caption = '40'#52488#51060#54980' '#51025#45824'('#47553#51060#54980')'
                    Position.BandIndex = 5
                    Position.ColIndex = 8
                  end
                  item
                    Caption = #51204#54868#44152#44592
                    Position.BandIndex = 6
                    Position.ColIndex = 0
                  end
                  item
                    Caption = #52509#53685#54868#49884#44036
                    Position.BandIndex = 6
                    Position.ColIndex = 1
                    Width = 66
                  end
                  item
                    Caption = #54217#44512#53685#54868#49884#44036
                    Position.BandIndex = 6
                    Position.ColIndex = 2
                    Width = 78
                  end
                  item
                    Caption = #53084#49688
                    Position.BandIndex = 11
                    Position.ColIndex = 0
                    Visible = False
                    Width = 70
                  end
                  item
                    Caption = #54140#49468#53944
                    Position.BandIndex = 11
                    Position.ColIndex = 1
                    Visible = False
                    Width = 70
                  end
                  item
                    Caption = #53084#49688
                    Position.BandIndex = 12
                    Position.ColIndex = 0
                    Width = 70
                  end
                  item
                    Caption = #54140#49468#53944
                    Position.BandIndex = 12
                    Position.ColIndex = 1
                    Width = 70
                  end
                  item
                    Caption = #53084#49688
                    Position.BandIndex = 13
                    Position.ColIndex = 0
                    Width = 70
                  end
                  item
                    Caption = #54140#49468#53944
                    Position.BandIndex = 13
                    Position.ColIndex = 1
                    Width = 70
                  end
                  item
                    Caption = #53084#49688
                    Position.BandIndex = 14
                    Position.ColIndex = 0
                    Width = 70
                  end
                  item
                    Caption = #54140#49468#53944
                    Position.BandIndex = 14
                    Position.ColIndex = 1
                    Width = 70
                  end
                  item
                    Caption = #53084#49688
                    Position.BandIndex = 15
                    Position.ColIndex = 0
                    Width = 70
                  end
                  item
                    Caption = #54140#49468#53944
                    Position.BandIndex = 15
                    Position.ColIndex = 1
                    Width = 70
                  end>
                object cxGridBandedColumn102: TcxGridBandedColumn
                  Caption = #49692#48264
                  DataBinding.ValueType = 'Integer'
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn103: TcxGridBandedColumn
                  Caption = #49345#45812#50896#47749
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Vert = taVCenter
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 1
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn104: TcxGridBandedColumn
                  Caption = #49345#45812#44536#47353#47749
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  MinWidth = 64
                  Options.Editing = False
                  Options.Moving = False
                  Options.Sorting = False
                  Position.BandIndex = 2
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn105: TcxGridBandedColumn
                  Caption = #51204#52404#53084#49688
                  DataBinding.ValueType = 'Integer'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 3
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn106: TcxGridBandedColumn
                  Caption = #51204#52404#53685#54868#49884#44036'(ARS'#54252#54632')'
                  PropertiesClassName = 'TcxTimeEditProperties'
                  Properties.Alignment.Horz = taCenter
                  FooterAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 4
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn107: TcxGridBandedColumn
                  Caption = #49345#45812#50896#50672#44208#49457#44277
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 7
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn108: TcxGridBandedColumn
                  Caption = #52509#53685#54868#49884#44036'(ARS'#54252#54632')'
                  PropertiesClassName = 'TcxTimeEditProperties'
                  Properties.Alignment.Horz = taCenter
                  FooterAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 8
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn109: TcxGridBandedColumn
                  Caption = #49888#51228#53685#54868#49884#44036
                  PropertiesClassName = 'TcxTimeEditProperties'
                  Properties.Alignment.Horz = taCenter
                  FooterAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 9
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn110: TcxGridBandedColumn
                  Caption = #54217#44512#53685#54868#49884#44036
                  PropertiesClassName = 'TcxTimeEditProperties'
                  Properties.Alignment.Horz = taCenter
                  FooterAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 10
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn111: TcxGridBandedColumn
                  Caption = #53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 19
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn112: TcxGridBandedColumn
                  Caption = #54140#49468#53944
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 20
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn113: TcxGridBandedColumn
                  Caption = #53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 21
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn114: TcxGridBandedColumn
                  Caption = #54140#49468#53944
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 22
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn115: TcxGridBandedColumn
                  Caption = #53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 23
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn116: TcxGridBandedColumn
                  Caption = #54140#49468#53944
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 24
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn117: TcxGridBandedColumn
                  Caption = #53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Width = 71
                  Position.BandIndex = 25
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn118: TcxGridBandedColumn
                  Caption = #54140#49468#53944
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 26
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn119: TcxGridBandedColumn
                  Caption = #53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 27
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn120: TcxGridBandedColumn
                  Caption = #54140#49468#53944
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 28
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn121: TcxGridBandedColumn
                  Caption = #51204#54868#44152#44592
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 16
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn122: TcxGridBandedColumn
                  Caption = #52509#53685#54868#49884#44036
                  PropertiesClassName = 'TcxTimeEditProperties'
                  Properties.Alignment.Horz = taCenter
                  FooterAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 17
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn123: TcxGridBandedColumn
                  Caption = #54217#44512#53685#54868#49884#44036
                  PropertiesClassName = 'TcxTimeEditProperties'
                  Properties.Alignment.Horz = taCenter
                  FooterAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 18
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
              end
              object cxGridLevel16: TcxGridLevel
                GridView = cxGrdVPBX_cl_d
              end
            end
            object pnlChart_cl_d: TPanel
              Left = 871
              Top = 0
              Width = 358
              Height = 552
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 1
              object Panel6: TPanel
                Left = 0
                Top = 0
                Width = 358
                Height = 61
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
                object Shape55: TShape
                  Left = 5
                  Top = 5
                  Width = 198
                  Height = 24
                  Pen.Color = 12566402
                  Shape = stRoundRect
                end
                object cbChartKindA1_3: TcxComboBox
                  Left = 80
                  Top = 4
                  AutoSize = False
                  Properties.DropDownListStyle = lsFixedList
                  Properties.Items.Strings = (
                    'Column Diagram'
                    'Bar Diagram'
                    'Stacked Area Diagram'
                    'Stacked Bars Diagram'
                    'Stacked Column Diagram'
                    'Line Diagram'
                    'Area Diagram'
                    'Pie Diagram')
                  Properties.OnChange = cbChartKindA1_3PropertiesChange
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
                  Text = 'Column Diagram'
                  Height = 26
                  Width = 147
                end
                object cxLabel36: TcxLabel
                  Left = 13
                  Top = 9
                  Caption = #44536#47000#54532#49440#53469
                  ParentColor = False
                  Style.TextColor = clBlack
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Properties.ShadowedColor = clGray
                  Transparent = True
                  AnchorX = 45
                  AnchorY = 17
                end
                object cxButton11: TcxButton
                  Left = 888
                  Top = 4
                  Width = 75
                  Height = 25
                  Caption = 'btnChartA6'
                  TabOrder = 2
                  Visible = False
                end
                object cbKindA1_3: TcxComboBox
                  Left = 5
                  Top = 31
                  AutoSize = False
                  Properties.DropDownListStyle = lsFixedList
                  Properties.Items.Strings = (
                    #49345#45812#50896' '#51204#52404' '#53084#49688#47196' '#48372#44592
                    #49345#45812#50896' '#53084#51025#45824' '#52488'(sec)'#45800#50948' '#48372#44592)
                  Properties.OnChange = cbKindA1_3PropertiesChange
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
                  Text = #49345#45812#50896' '#51204#52404' '#53084#49688#47196' '#48372#44592
                  Height = 26
                  Width = 222
                end
                object btnGraphExit_cl_d: TcxButton
                  Left = 231
                  Top = 5
                  Width = 58
                  Height = 52
                  Cursor = crHandPoint
                  Caption = #45803' '#44592
                  Colors.Default = 16773362
                  Colors.Normal = 16773362
                  Colors.Pressed = 16644080
                  LookAndFeel.Kind = lfFlat
                  LookAndFeel.NativeStyle = False
                  LookAndFeel.SkinName = 'Sharp'
                  TabOrder = 4
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = #44404#47548
                  Font.Style = []
                  ParentFont = False
                  OnClick = btnGraphExit_cl_dClick
                end
              end
              object cxGrdCPBX_cl_d: TcxGrid
                Left = 0
                Top = 61
                Width = 358
                Height = 491
                Align = alClient
                TabOrder = 1
                object cxGrdCvPBX_cl_d: TcxGridChartView
                  DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
                  DiagramColumn.Active = True
                  DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
                  DiagramPie.Values.CaptionPosition = pdvcpCenter
                  OptionsBehavior.ValueHints = False
                  Title.Alignment = cpaStart
                  Title.Text = #51068#48324' '#53685#44228
                  object cxGrdCvPBX_cl_dSeries1: TcxGridChartSeries
                    DisplayText = #51204#52404#53084#49688
                  end
                  object cxGrdCvPBX_cl_dSeries2: TcxGridChartSeries
                    DisplayText = #49345#45812#50896#50672#44208#49457#44277
                  end
                  object cxGrdCvPBX_cl_dSeries3: TcxGridChartSeries
                    DisplayText = #50500#50883#48148#50868#46300#53084#49688
                  end
                  object cxGrdCvPBX_cl_dSeries4: TcxGridChartSeries
                    DisplayText = '40'#52488#51060#54980#51025#45824
                    Visible = False
                  end
                end
                object cxGridLevelA1_3: TcxGridLevel
                  GridView = cxGrdCvPBX_cl_d
                end
              end
            end
          end
        end
      end
    end
    object cxTS_ca: TcxTabSheet
      Tag = 702
      Caption = #53685#54868#48516#49437
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object PnlMain_ca: TPanel
        Left = 0
        Top = 0
        Width = 1237
        Height = 633
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Shape7: TShape
          Left = 0
          Top = 41
          Width = 1237
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
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 41
          Width = 1237
          object Shape5: TShape
            Left = 6
            Top = 9
            Width = 290
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape8: TShape
            Left = 499
            Top = 9
            Width = 124
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape59: TShape
            Left = 300
            Top = 9
            Width = 124
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object btnDate_ca: TcxButton
            Tag = 2
            Left = 271
            Top = 9
            Width = 25
            Height = 24
            Cursor = crHandPoint
            DropDownMenu = pm_date
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
            TabOrder = 0
          end
          object cxDtStart_ca: TcxDateEdit
            Left = 80
            Top = 8
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
            Width = 84
          end
          object cxDtEnd_ca: TcxDateEdit
            Left = 184
            Top = 8
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
            Width = 84
          end
          object cxLabel5: TcxLabel
            Left = 163
            Top = 14
            Caption = ' ~ '
            Transparent = True
          end
          object btnSearch2: TcxButton
            Left = 699
            Top = 4
            Width = 58
            Height = 33
            Cursor = crHandPoint
            Caption = #44160'  '#49353
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 4
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnSearch2Click
          end
          object btnExcel_ca: TcxButton
            Left = 760
            Top = 4
            Width = 58
            Height = 33
            Cursor = crHandPoint
            Caption = #50641#49472#45796#50868
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 5
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnExcel_caClick
          end
          object cxLabel7: TcxLabel
            Left = 21
            Top = 14
            Caption = #44592'   '#44036
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 44
            AnchorY = 22
          end
          object cbAgtNm2: TcxComboBox
            Tag = 2
            Left = 574
            Top = 8
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
            TabOrder = 7
            Height = 26
            Width = 122
          end
          object cxLabel14: TcxLabel
            Left = 517
            Top = 14
            Caption = #49345#45812#50896
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 537
            AnchorY = 22
          end
          object cxLabel65: TcxLabel
            Left = 313
            Top = 14
            Caption = #49345#45812#44536#47353
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 339
            AnchorY = 22
          end
          object cbGrpNm2: TcxComboBox
            Left = 375
            Top = 8
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.OnChange = cbGrpNm2PropertiesChange
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 10
            Height = 26
            Width = 122
          end
          object btnGraph_ca: TcxButton
            Left = 821
            Top = 4
            Width = 58
            Height = 33
            Cursor = crHandPoint
            Caption = #44536#47000#54532
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 11
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnGraph_caClick
          end
        end
        object cxPC_ca: TcxPageControl
          Left = 0
          Top = 43
          Width = 1237
          Height = 590
          Align = alClient
          TabOrder = 1
          Properties.ActivePage = cxTabSheet14
          Properties.CustomButtons.Buttons = <>
          Properties.TabHeight = 23
          Properties.TabWidth = 70
          ClientRectBottom = 584
          ClientRectLeft = 2
          ClientRectRight = 1231
          ClientRectTop = 32
          object cxTabSheet14: TcxTabSheet
            Caption = #49345#45812#50896#48324
            ImageIndex = 0
            object AdvSplitter6: TAdvSplitter
              Left = 824
              Top = 0
              Width = 5
              Height = 552
              Align = alRight
              Appearance.BorderColor = clNone
              Appearance.BorderColorHot = clNone
              Appearance.Color = clWhite
              Appearance.ColorTo = clSilver
              Appearance.ColorHot = clWhite
              Appearance.ColorHotTo = clGray
              GripStyle = sgDots
              ExplicitLeft = 771
              ExplicitHeight = 531
            end
            object pnlLeftA2: TPanel
              Left = 0
              Top = 0
              Width = 824
              Height = 552
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object AdvSplitter5: TAdvSplitter
                Left = 0
                Top = 353
                Width = 824
                Height = 5
                Cursor = crVSplit
                Align = alBottom
                Appearance.BorderColor = clNone
                Appearance.BorderColorHot = clNone
                Appearance.Color = clWhite
                Appearance.ColorTo = clSilver
                Appearance.ColorHot = clWhite
                Appearance.ColorHotTo = clGray
                GripStyle = sgDots
                ExplicitLeft = -2
                ExplicitTop = 325
                ExplicitWidth = 1094
              end
              object cxGrdPBX_ca_a: TcxGrid
                Left = 0
                Top = 0
                Width = 824
                Height = 353
                Align = alClient
                BevelInner = bvNone
                BevelOuter = bvNone
                TabOrder = 0
                LookAndFeel.NativeStyle = False
                object cxGrdVPBX_ca_a: TcxGridBandedTableView
                  Navigator.Buttons.CustomButtons = <>
                  FilterBox.CustomizeDialog = False
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = ',0.;-,0.'
                      Kind = skSum
                      Column = cxGridBandedColumn33
                    end
                    item
                      Format = ',0.;-,0.'
                      Kind = skSum
                      Column = cxGridBandedColumn34
                    end
                    item
                      Format = ',0.;-,0.'
                      Kind = skSum
                      Column = cxGridBandedColumn36
                    end
                    item
                      Format = ',0.;-,0.'
                      Kind = skSum
                      Column = cxGridBandedColumn38
                    end
                    item
                      Format = ',0.;-,0.'
                      Kind = skSum
                      Column = cxGridBandedColumn40
                    end
                    item
                      Format = '0%;-0%'
                      Kind = skAverage
                      Column = cxGridBandedColumn41
                    end
                    item
                      Format = '0%;-0%'
                      Kind = skAverage
                      Column = cxGridBandedColumn39
                    end
                    item
                      Format = '0%;-0%'
                      Kind = skAverage
                      Column = cxGridBandedColumn37
                    end
                    item
                      Format = '0%;-0%'
                      Kind = skAverage
                      Column = cxGridBandedColumn35
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
                      Caption = #49692#48264
                      Width = 46
                    end
                    item
                      Caption = #49345#45812#50896#47749
                      Width = 98
                    end
                    item
                      Caption = #49345#45812#44536#47353#47749
                      Width = 97
                    end
                    item
                      Caption = #49345#45812#50896#50672#44208#50836#52397
                      Width = 152
                    end
                    item
                      Caption = #49345#45812#50896#50672#44208#49457#44277
                    end
                    item
                      Caption = #49345#45812#50896#47924#51025#45813
                    end
                    item
                      Caption = #49345#45812#50896#47924#51025#45813#54980#53084#48177#50836#52397
                      Width = 155
                    end
                    item
                      Caption = #49345#45812#50896#47924#51025#45813#54980#53084#48177#51333#47308
                      Width = 171
                    end
                    item
                      Caption = #53084#49688
                      Position.BandIndex = 4
                      Position.ColIndex = 0
                      Width = 70
                    end
                    item
                      Caption = #54140#49468#53944
                      Position.BandIndex = 4
                      Position.ColIndex = 1
                      Width = 70
                    end
                    item
                      Caption = #53084#49688
                      Position.BandIndex = 5
                      Position.ColIndex = 0
                      Width = 70
                    end
                    item
                      Caption = #54140#49468#53944
                      Position.BandIndex = 5
                      Position.ColIndex = 1
                      Width = 70
                    end
                    item
                      Caption = #53084#49688
                      Position.BandIndex = 6
                      Position.ColIndex = 0
                      Width = 80
                    end
                    item
                      Caption = #54140#49468#53944
                      Position.BandIndex = 6
                      Position.ColIndex = 1
                      Width = 75
                    end
                    item
                      Caption = #53084#49688
                      Position.BandIndex = 7
                      Position.ColIndex = 0
                      Width = 89
                    end
                    item
                      Caption = #54140#49468#53944
                      Position.BandIndex = 7
                      Position.ColIndex = 1
                      Width = 82
                    end>
                  object cxGridBandedColumn30: TcxGridBandedColumn
                    Caption = 'No'
                    DataBinding.ValueType = 'Integer'
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 0
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridBandedColumn31: TcxGridBandedColumn
                    Caption = #49345#45812#50896#47749
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
                    MinWidth = 64
                    Options.Editing = False
                    Options.Moving = False
                    Options.Sorting = False
                    Position.BandIndex = 1
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridBandedColumn32: TcxGridBandedColumn
                    Caption = #49345#45812#44536#47353#47749
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Vert = taVCenter
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 2
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridBandedColumn33: TcxGridBandedColumn
                    Caption = #49345#45812#50896#50672#44208#50836#52397
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = ',0.;-,0.'
                    FooterAlignmentHorz = taRightJustify
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 3
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridBandedColumn34: TcxGridBandedColumn
                    Caption = #53084#49688
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = ',0.;-,0.'
                    FooterAlignmentHorz = taRightJustify
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 8
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridBandedColumn35: TcxGridBandedColumn
                    Caption = #54140#49468#53944
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = '0%;-0%'
                    FooterAlignmentHorz = taRightJustify
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 9
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridBandedColumn36: TcxGridBandedColumn
                    Caption = #53084#49688
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = ',0.;-,0.'
                    FooterAlignmentHorz = taRightJustify
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 10
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridBandedColumn37: TcxGridBandedColumn
                    Caption = #54140#49468#53944
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = '0%;-0%'
                    FooterAlignmentHorz = taRightJustify
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 11
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridBandedColumn38: TcxGridBandedColumn
                    Caption = #53084#49688
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = ',0.;-,0.'
                    FooterAlignmentHorz = taRightJustify
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 12
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridBandedColumn39: TcxGridBandedColumn
                    Caption = #54140#49468#53944
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = '0%;-0%'
                    FooterAlignmentHorz = taRightJustify
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 13
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridBandedColumn40: TcxGridBandedColumn
                    Caption = #53084#49688
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = ',0.;-,0.'
                    FooterAlignmentHorz = taRightJustify
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 14
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridBandedColumn41: TcxGridBandedColumn
                    Caption = #54140#49468#53944
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.DisplayFormat = '0%;-0%'
                    FooterAlignmentHorz = taRightJustify
                    Options.Editing = False
                    Options.Moving = False
                    Position.BandIndex = 15
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                end
                object cxGridLevel6: TcxGridLevel
                  GridView = cxGrdVPBX_ca_a
                end
              end
              object pnlChart_ca_a: TPanel
                Left = 0
                Top = 358
                Width = 824
                Height = 194
                Align = alBottom
                BevelOuter = bvNone
                TabOrder = 1
                object Panel8: TPanel
                  Left = 0
                  Top = 0
                  Width = 824
                  Height = 34
                  Align = alTop
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Shape58: TShape
                    Left = 5
                    Top = 5
                    Width = 198
                    Height = 24
                    Pen.Color = 12566402
                    Shape = stRoundRect
                  end
                  object cbChartKindA2_1: TcxComboBox
                    Left = 80
                    Top = 4
                    AutoSize = False
                    Properties.DropDownListStyle = lsFixedList
                    Properties.Items.Strings = (
                      'Column Diagram'
                      'Bar Diagram'
                      'Stacked Area Diagram'
                      'Stacked Bars Diagram'
                      'Stacked Column Diagram'
                      'Line Diagram'
                      'Area Diagram'
                      'Pie Diagram')
                    Properties.OnChange = cbChartKindA2_1PropertiesChange
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
                    Text = 'Column Diagram'
                    Height = 26
                    Width = 147
                  end
                  object cxLabel37: TcxLabel
                    Left = 13
                    Top = 9
                    Caption = #44536#47000#54532#49440#53469
                    ParentColor = False
                    Style.TextColor = clBlack
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
                    Properties.ShadowedColor = clGray
                    Transparent = True
                    AnchorX = 45
                    AnchorY = 17
                  end
                  object cxButton22: TcxButton
                    Left = 888
                    Top = 4
                    Width = 75
                    Height = 25
                    Caption = 'btnChartA6'
                    TabOrder = 2
                    Visible = False
                  end
                  object cbKindA2_1: TcxComboBox
                    Left = 232
                    Top = 4
                    AutoSize = False
                    Properties.DropDownListStyle = lsFixedList
                    Properties.Items.Strings = (
                      #49345#45812#50896' '#51025#45813' '#53084#49688#47196' '#48372#44592)
                    Properties.OnChange = cbKindA2_1PropertiesChange
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
                    Text = #49345#45812#50896' '#51025#45813' '#53084#49688#47196' '#48372#44592
                    Height = 26
                    Width = 222
                  end
                  object btnGraphExit_ca_a: TcxButton
                    Left = 460
                    Top = 4
                    Width = 58
                    Height = 25
                    Cursor = crHandPoint
                    Caption = #45803' '#44592
                    Colors.Default = 16773362
                    Colors.Normal = 16773362
                    Colors.Pressed = 16644080
                    LookAndFeel.Kind = lfFlat
                    LookAndFeel.NativeStyle = False
                    LookAndFeel.SkinName = 'Sharp'
                    TabOrder = 4
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = #44404#47548
                    Font.Style = []
                    ParentFont = False
                    OnClick = btnGraphExit_ca_aClick
                  end
                end
                object cxGrdCPBX_ca_a: TcxGrid
                  Left = 0
                  Top = 34
                  Width = 824
                  Height = 160
                  Align = alClient
                  TabOrder = 1
                  object cxGrdCvPBX_ca_a: TcxGridChartView
                    DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
                    DiagramColumn.Active = True
                    DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
                    DiagramPie.Values.CaptionPosition = pdvcpCenter
                    OptionsBehavior.ValueHints = False
                    Title.Alignment = cpaStart
                    Title.Text = #49345#45812#50896#48324' '#53685#44228
                    object cxGrdCvPBX_ca_aSeries1: TcxGridChartSeries
                      DisplayText = #49345#45812#50896#50672#44208#50836#52397
                      GroupSummaryKind = skCount
                    end
                    object cxGrdCvPBX_ca_aSeries2: TcxGridChartSeries
                      DisplayText = #49345#45812#50896#50672#44208#49457#44277
                    end
                    object cxGrdCvPBX_ca_aSeries3: TcxGridChartSeries
                      DisplayText = #49345#45812#50896#47924#51025#45813
                    end
                    object cxGrdCvPBX_ca_aSeries4: TcxGridChartSeries
                      DisplayText = '40'#52488#51060#54980#51025#45824
                      Visible = False
                    end
                  end
                  object cxGridLevel5: TcxGridLevel
                    GridView = cxGrdCvPBX_ca_a
                  end
                end
              end
            end
            object cxGrdPBX_caK_a: TcxGrid
              Left = 829
              Top = 0
              Width = 400
              Height = 552
              Align = alRight
              BevelInner = bvNone
              BevelOuter = bvNone
              TabOrder = 1
              LookAndFeel.NativeStyle = False
              object cxGrdVPBX_caK_a: TcxGridBandedTableView
                Navigator.Buttons.CustomButtons = <>
                FilterBox.CustomizeDialog = False
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
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
                OptionsView.GroupByBox = False
                OptionsView.Header = False
                OptionsView.HeaderHeight = 20
                OptionsView.BandHeaderHeight = 23
                Bands = <
                  item
                    Caption = #49692#48264
                    Width = 33
                  end
                  item
                    Caption = #49345#45812#50896#47749
                    Width = 82
                  end
                  item
                    Caption = #50672#44208#50836#52397
                  end
                  item
                    Caption = #50672#44208#49457#44277
                    Width = 66
                  end
                  item
                    Caption = #47924#51025#45813
                    Width = 78
                  end
                  item
                    Caption = #51216#49688
                  end>
                object cxGridBandedColumn151: TcxGridBandedColumn
                  Caption = 'No'
                  DataBinding.ValueType = 'Integer'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.DisplayFormat = ',0.;-,0.'
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn152: TcxGridBandedColumn
                  Caption = #49345#45812#50896#47749
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Vert = taVCenter
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 1
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn153: TcxGridBandedColumn
                  Caption = #49345#45812#44536#47353#47749
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  MinWidth = 64
                  Options.Editing = False
                  Options.Moving = False
                  Options.Sorting = False
                  Position.BandIndex = 2
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn154: TcxGridBandedColumn
                  Caption = #51204#52404#53084#49688
                  DataBinding.ValueType = 'Integer'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 3
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn155: TcxGridBandedColumn
                  Caption = #51204#52404#53685#54868#49884#44036'(ARS'#54252#54632')'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 4
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGrdVPBX_caK_aColumn1: TcxGridBandedColumn
                  Caption = #51216#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.00;-,0.00'
                  Position.BandIndex = 5
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
              end
              object cxGridLevel14: TcxGridLevel
                GridView = cxGrdVPBX_caK_a
              end
            end
          end
          object cxTabSheet15: TcxTabSheet
            Caption = #49884#44036#45824#48324
            ImageIndex = 1
            object AdvSplitter7: TAdvSplitter
              Left = 866
              Top = 0
              Width = 5
              Height = 552
              Align = alRight
              Appearance.BorderColor = clNone
              Appearance.BorderColorHot = clNone
              Appearance.Color = clWhite
              Appearance.ColorTo = clSilver
              Appearance.ColorHot = clWhite
              Appearance.ColorHotTo = clGray
              GripStyle = sgDots
              ExplicitLeft = 739
              ExplicitHeight = 531
            end
            object cxGrdPBX_ca_t: TcxGrid
              Left = 0
              Top = 0
              Width = 866
              Height = 552
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              TabOrder = 0
              LookAndFeel.NativeStyle = False
              object cxGrdVPBX_ca_t: TcxGridBandedTableView
                Navigator.Buttons.CustomButtons = <>
                FilterBox.CustomizeDialog = False
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
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
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGridBandedColumn46
                  end
                  item
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGridBandedColumn48
                  end
                  item
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGridBandedColumn50
                  end
                  item
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGridBandedColumn52
                  end
                  item
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGridBandedColumn54
                  end
                  item
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGridBandedColumn56
                  end
                  item
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGridBandedColumn58
                  end
                  item
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGridBandedColumn60
                  end
                  item
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGridBandedColumn62
                  end
                  item
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGrdVPBX_ca_tColumn1
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn44
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn45
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn47
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn49
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn51
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn53
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn55
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn57
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn59
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn61
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
                    Caption = #49692#48264
                    Width = 46
                  end
                  item
                    Caption = #49884#44036
                    Width = 98
                  end
                  item
                    Caption = #51204#52404#53084#49688
                    Width = 62
                  end
                  item
                    Caption = #47704#53944#51473#45130#51020
                    Width = 111
                  end
                  item
                    Caption = #49345#45812#50896#50672#44208#50836#52397
                    Width = 104
                  end
                  item
                    Caption = 'CTI'#53328' '#51064#51077#54980' '#51333#47308
                    Width = 122
                  end
                  item
                    Caption = 'CTI'#53328' '#51064#51077#54980' '#53084#48177' '#50836#52397
                    Width = 144
                  end
                  item
                    Caption = 'CTI'#53328' '#51064#51077#54980' '#53084#48177' '#51333#47308
                    Width = 142
                  end
                  item
                    Caption = #49345#45812#50896' '#50672#44208' '#49457#44277
                    Width = 122
                  end
                  item
                    Caption = #49345#45812#50896' '#47924#51025#45813
                    Width = 130
                  end
                  item
                    Caption = #49345#45812#50896' '#47924#51025#45813#54980' '#53084#48177#50836#52397
                    Width = 157
                  end
                  item
                    Caption = #49345#45812#50896' '#47924#51025#45813#54980' '#53084#48177#51333#47308
                    Width = 157
                  end
                  item
                    Caption = #53084#49688
                    Position.BandIndex = 3
                    Position.ColIndex = 0
                    Width = 70
                  end
                  item
                    Caption = #54140#49468#53944
                    Position.BandIndex = 3
                    Position.ColIndex = 1
                    Width = 70
                  end
                  item
                    Caption = #53084#49688
                    Position.BandIndex = 4
                    Position.ColIndex = 0
                    Width = 70
                  end
                  item
                    Caption = #54140#49468#53944
                    Position.BandIndex = 4
                    Position.ColIndex = 1
                    Width = 70
                  end
                  item
                    Caption = #53084#49688
                    Position.BandIndex = 5
                    Position.ColIndex = 0
                    Width = 70
                  end
                  item
                    Caption = #54140#49468#53944
                    Position.BandIndex = 5
                    Position.ColIndex = 1
                    Width = 70
                  end
                  item
                    Caption = #53084#49688
                    Position.BandIndex = 6
                    Position.ColIndex = 0
                    Width = 70
                  end
                  item
                    Caption = #54140#49468#53944
                    Position.BandIndex = 6
                    Position.ColIndex = 1
                    Width = 70
                  end
                  item
                    Caption = #53084#49688
                    Position.BandIndex = 7
                    Position.ColIndex = 0
                    Width = 70
                  end
                  item
                    Caption = #54140#49468#53944
                    Position.BandIndex = 7
                    Position.ColIndex = 1
                    Width = 70
                  end
                  item
                    Caption = #53084#49688
                    Position.BandIndex = 8
                    Position.ColIndex = 0
                  end
                  item
                    Caption = #54140#49468#53944
                    Position.BandIndex = 8
                    Position.ColIndex = 1
                  end
                  item
                    Caption = #53084#49688
                    Position.BandIndex = 9
                    Position.ColIndex = 0
                  end
                  item
                    Caption = #54140#49468#53944
                    Position.BandIndex = 9
                    Position.ColIndex = 1
                  end
                  item
                    Caption = #53084#49688
                    Position.BandIndex = 10
                    Position.ColIndex = 0
                  end
                  item
                    Caption = #54140#49468#53944
                    Position.BandIndex = 10
                    Position.ColIndex = 1
                  end
                  item
                    Caption = #53084#49688
                    Position.BandIndex = 11
                    Position.ColIndex = 0
                  end
                  item
                    Caption = #54140#49468#53944
                    Position.BandIndex = 11
                    Position.ColIndex = 1
                  end
                  item
                    Caption = #51025#45813#47456'['#50672#44208#49457#44277'/'#50672#44208#50836#52397']'
                    Width = 160
                  end>
                object cxGridBandedColumn42: TcxGridBandedColumn
                  Caption = #49692#48264
                  DataBinding.ValueType = 'Integer'
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn43: TcxGridBandedColumn
                  Caption = #45216#51676
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  MinWidth = 64
                  Options.Editing = False
                  Options.Moving = False
                  Options.Sorting = False
                  Position.BandIndex = 1
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn44: TcxGridBandedColumn
                  Caption = #51204#52404#53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 2
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn45: TcxGridBandedColumn
                  Caption = #53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 12
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn46: TcxGridBandedColumn
                  Caption = #54140#49468#53944
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 13
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn47: TcxGridBandedColumn
                  Caption = #53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 14
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn48: TcxGridBandedColumn
                  Caption = #54140#49468#53944
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 15
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn49: TcxGridBandedColumn
                  Caption = #53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 16
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn50: TcxGridBandedColumn
                  Caption = #54140#49468#53944
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 17
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn51: TcxGridBandedColumn
                  Caption = #53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 18
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn52: TcxGridBandedColumn
                  Caption = #54140#49468#53944
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 19
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn53: TcxGridBandedColumn
                  Caption = #53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 20
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn54: TcxGridBandedColumn
                  Caption = #54140#49468#53944
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 21
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn55: TcxGridBandedColumn
                  Caption = #53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 22
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn56: TcxGridBandedColumn
                  Caption = #54140#49468#53944
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Width = 71
                  Position.BandIndex = 23
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn57: TcxGridBandedColumn
                  Caption = #53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 24
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn58: TcxGridBandedColumn
                  Caption = #54140#49468#53944
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 25
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn59: TcxGridBandedColumn
                  Caption = #53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 26
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn60: TcxGridBandedColumn
                  Caption = #54140#49468#53944
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 27
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn61: TcxGridBandedColumn
                  Caption = #53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 28
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn62: TcxGridBandedColumn
                  Caption = #54140#49468#53944
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 29
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGrdVPBX_ca_tColumn1: TcxGridBandedColumn
                  Caption = #51025#45813#47456'['#50672#44208#49457#44277'/'#50672#44208#50836#52397']'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 30
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
              end
              object cxGridLevel9: TcxGridLevel
                GridView = cxGrdVPBX_ca_t
              end
            end
            object pnlChart_ca_t: TPanel
              Left = 871
              Top = 0
              Width = 358
              Height = 552
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 1
              object cxGrdCPBX_ca_t: TcxGrid
                Left = 0
                Top = 61
                Width = 358
                Height = 491
                Align = alClient
                TabOrder = 0
                object cxGrdCvPBX_ca_t: TcxGridChartView
                  DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
                  DiagramColumn.Active = True
                  DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
                  DiagramPie.Values.CaptionPosition = pdvcpCenter
                  OptionsBehavior.ValueHints = False
                  Title.Alignment = cpaStart
                  Title.Text = #49884#44036#45824#48324#53685#44228
                  object cxGrdCvPBX_ca_tSeries1: TcxGridChartSeries
                    DisplayText = #51204#52404#53084#49688
                  end
                  object cxGrdCvPBX_ca_tSeries2: TcxGridChartSeries
                    DisplayText = #49345#45812#50896#50672#44208#50836#52397
                  end
                  object cxGrdCvPBX_ca_tSeries3: TcxGridChartSeries
                    DisplayText = #49345#45812#50896#50672#44208#49457#44277
                  end
                  object cxGrdCvPBX_ca_tSeries4: TcxGridChartSeries
                    DisplayText = #47924#51025#45813
                  end
                end
                object cxGridLevel15: TcxGridLevel
                  GridView = cxGrdCvPBX_ca_t
                end
              end
              object Panel10: TPanel
                Left = 0
                Top = 0
                Width = 358
                Height = 61
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 1
                object Shape60: TShape
                  Left = 5
                  Top = 5
                  Width = 198
                  Height = 24
                  Pen.Color = 12566402
                  Shape = stRoundRect
                end
                object cbChartKindA2_2: TcxComboBox
                  Left = 80
                  Top = 4
                  AutoSize = False
                  Properties.DropDownListStyle = lsFixedList
                  Properties.Items.Strings = (
                    'Column Diagram'
                    'Bar Diagram'
                    'Stacked Area Diagram'
                    'Stacked Bars Diagram'
                    'Stacked Column Diagram'
                    'Line Diagram'
                    'Area Diagram'
                    'Pie Diagram')
                  Properties.OnChange = cbChartKindA2_2PropertiesChange
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
                  Text = 'Column Diagram'
                  Height = 26
                  Width = 147
                end
                object cxLabel38: TcxLabel
                  Left = 13
                  Top = 9
                  Caption = #44536#47000#54532#49440#53469
                  ParentColor = False
                  Style.TextColor = clBlack
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Properties.ShadowedColor = clGray
                  Transparent = True
                  AnchorX = 45
                  AnchorY = 17
                end
                object cxButton24: TcxButton
                  Left = 888
                  Top = 4
                  Width = 75
                  Height = 25
                  Caption = 'btnChartA6'
                  TabOrder = 2
                  Visible = False
                end
                object cbKindA2_2: TcxComboBox
                  Left = 5
                  Top = 31
                  AutoSize = False
                  Properties.DropDownListStyle = lsFixedList
                  Properties.Items.Strings = (
                    #51204#52404' '#53084#49688#47196' '#48372#44592
                    #47704#53944'/CTI'#53328#51064#51077' '#48372#44592
                    #53084#48177' '#44288#47144' '#48372#44592)
                  Properties.OnChange = cbKindA2_2PropertiesChange
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
                  Text = #51204#52404' '#53084#49688#47196' '#48372#44592
                  Height = 26
                  Width = 222
                end
                object btnGraphExit_ca_t: TcxButton
                  Left = 231
                  Top = 5
                  Width = 58
                  Height = 52
                  Cursor = crHandPoint
                  Caption = #45803' '#44592
                  Colors.Default = 16773362
                  Colors.Normal = 16773362
                  Colors.Pressed = 16644080
                  LookAndFeel.Kind = lfFlat
                  LookAndFeel.NativeStyle = False
                  LookAndFeel.SkinName = 'Sharp'
                  TabOrder = 4
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = #44404#47548
                  Font.Style = []
                  ParentFont = False
                  OnClick = btnGraphExit_ca_tClick
                end
              end
            end
          end
          object cxTabSheet16: TcxTabSheet
            Caption = #51068#48324
            ImageIndex = 2
            object AdvSplitter8: TAdvSplitter
              Left = 866
              Top = 0
              Width = 5
              Height = 552
              Align = alRight
              Appearance.BorderColor = clNone
              Appearance.BorderColorHot = clNone
              Appearance.Color = clWhite
              Appearance.ColorTo = clSilver
              Appearance.ColorHot = clWhite
              Appearance.ColorHotTo = clGray
              GripStyle = sgDots
              ExplicitLeft = 739
              ExplicitHeight = 531
            end
            object cxGrdPBX_ca_d: TcxGrid
              Left = 0
              Top = 0
              Width = 866
              Height = 552
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              TabOrder = 0
              LookAndFeel.NativeStyle = False
              object cxGrdVPBX_ca_d: TcxGridBandedTableView
                Navigator.Buttons.CustomButtons = <>
                FilterBox.CustomizeDialog = False
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
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
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn131
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn132
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn134
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn136
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn138
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn140
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn142
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn144
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn146
                  end
                  item
                    Format = ',0.;-,0.'
                    Kind = skSum
                    Column = cxGridBandedColumn148
                  end
                  item
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGridBandedColumn133
                  end
                  item
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGridBandedColumn135
                  end
                  item
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGridBandedColumn137
                  end
                  item
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGridBandedColumn139
                  end
                  item
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGridBandedColumn141
                  end
                  item
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGridBandedColumn143
                  end
                  item
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGridBandedColumn145
                  end
                  item
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGridBandedColumn147
                  end
                  item
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGridBandedColumn149
                  end
                  item
                    Format = '0%;-0%'
                    Kind = skAverage
                    Column = cxGridBandedColumn150
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
                    Caption = #49692#48264
                    Width = 46
                  end
                  item
                    Caption = #45216#51676
                    Width = 98
                  end
                  item
                    Caption = #51204#52404#53084#49688
                    Width = 62
                  end
                  item
                    Caption = #47704#53944#51473#45130#51020
                    Width = 111
                  end
                  item
                    Caption = #49345#45812#50896#50672#44208#50836#52397
                    Width = 104
                  end
                  item
                    Caption = 'CTI'#53328' '#51064#51077#54980' '#51333#47308
                    Width = 122
                  end
                  item
                    Caption = 'CTI'#53328' '#51064#51077#54980' '#53084#48177' '#50836#52397
                    Width = 144
                  end
                  item
                    Caption = 'CTI'#53328' '#51064#51077#54980' '#53084#48177' '#51333#47308
                    Width = 142
                  end
                  item
                    Caption = #49345#45812#50896' '#50672#44208' '#49457#44277
                    Width = 122
                  end
                  item
                    Caption = #49345#45812#50896' '#47924#51025#45813
                    Width = 130
                  end
                  item
                    Caption = #49345#45812#50896' '#47924#51025#45813#54980' '#53084#48177#50836#52397
                    Width = 157
                  end
                  item
                    Caption = #49345#45812#50896' '#47924#51025#45813#54980' '#53084#48177#51333#47308
                    Width = 157
                  end
                  item
                    Caption = #53084#49688
                    Position.BandIndex = 3
                    Position.ColIndex = 0
                    Width = 70
                  end
                  item
                    Caption = #54140#49468#53944
                    Position.BandIndex = 3
                    Position.ColIndex = 1
                    Width = 70
                  end
                  item
                    Caption = #53084#49688
                    Position.BandIndex = 4
                    Position.ColIndex = 0
                    Width = 70
                  end
                  item
                    Caption = #54140#49468#53944
                    Position.BandIndex = 4
                    Position.ColIndex = 1
                    Width = 70
                  end
                  item
                    Caption = #53084#49688
                    Position.BandIndex = 5
                    Position.ColIndex = 0
                    Width = 70
                  end
                  item
                    Caption = #54140#49468#53944
                    Position.BandIndex = 5
                    Position.ColIndex = 1
                    Width = 70
                  end
                  item
                    Caption = #53084#49688
                    Position.BandIndex = 6
                    Position.ColIndex = 0
                    Width = 70
                  end
                  item
                    Caption = #54140#49468#53944
                    Position.BandIndex = 6
                    Position.ColIndex = 1
                    Width = 70
                  end
                  item
                    Caption = #53084#49688
                    Position.BandIndex = 7
                    Position.ColIndex = 0
                    Width = 70
                  end
                  item
                    Caption = #54140#49468#53944
                    Position.BandIndex = 7
                    Position.ColIndex = 1
                    Width = 70
                  end
                  item
                    Caption = #53084#49688
                    Position.BandIndex = 8
                    Position.ColIndex = 0
                  end
                  item
                    Caption = #54140#49468#53944
                    Position.BandIndex = 8
                    Position.ColIndex = 1
                  end
                  item
                    Caption = #53084#49688
                    Position.BandIndex = 9
                    Position.ColIndex = 0
                  end
                  item
                    Caption = #54140#49468#53944
                    Position.BandIndex = 9
                    Position.ColIndex = 1
                  end
                  item
                    Caption = #53084#49688
                    Position.BandIndex = 10
                    Position.ColIndex = 0
                  end
                  item
                    Caption = #54140#49468#53944
                    Position.BandIndex = 10
                    Position.ColIndex = 1
                  end
                  item
                    Caption = #53084#49688
                    Position.BandIndex = 11
                    Position.ColIndex = 0
                  end
                  item
                    Caption = #54140#49468#53944
                    Position.BandIndex = 11
                    Position.ColIndex = 1
                  end
                  item
                    Caption = #51025#45813#47456'['#50672#44208#49457#44277'/'#50672#44208#50836#52397']'
                    Width = 160
                  end>
                object cxGridBandedColumn129: TcxGridBandedColumn
                  Caption = #49692#48264
                  DataBinding.ValueType = 'Integer'
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn130: TcxGridBandedColumn
                  Caption = #45216#51676
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  MinWidth = 64
                  Options.Editing = False
                  Options.Moving = False
                  Options.Sorting = False
                  Position.BandIndex = 1
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn131: TcxGridBandedColumn
                  Caption = #51204#52404#53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 2
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn132: TcxGridBandedColumn
                  Caption = #53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 12
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn133: TcxGridBandedColumn
                  Caption = #54140#49468#53944
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 13
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn134: TcxGridBandedColumn
                  Caption = #53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 14
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn135: TcxGridBandedColumn
                  Caption = #54140#49468#53944
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 15
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn136: TcxGridBandedColumn
                  Caption = #53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 16
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn137: TcxGridBandedColumn
                  Caption = #54140#49468#53944
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 17
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn138: TcxGridBandedColumn
                  Caption = #53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 18
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn139: TcxGridBandedColumn
                  Caption = #54140#49468#53944
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 19
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn140: TcxGridBandedColumn
                  Caption = #53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 20
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn141: TcxGridBandedColumn
                  Caption = #54140#49468#53944
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 21
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn142: TcxGridBandedColumn
                  Caption = #53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 22
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn143: TcxGridBandedColumn
                  Caption = #54140#49468#53944
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Width = 71
                  Position.BandIndex = 23
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn144: TcxGridBandedColumn
                  Caption = #53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 24
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn145: TcxGridBandedColumn
                  Caption = #54140#49468#53944
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 25
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn146: TcxGridBandedColumn
                  Caption = #53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 26
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn147: TcxGridBandedColumn
                  Caption = #54140#49468#53944
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 27
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn148: TcxGridBandedColumn
                  Caption = #53084#49688
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.;-,0.'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 28
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn149: TcxGridBandedColumn
                  Caption = #54140#49468#53944
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 29
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn150: TcxGridBandedColumn
                  Caption = #51025#45813#47456'['#50672#44208#49457#44277'/'#50672#44208#50836#52397']'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = '0%;-0%'
                  FooterAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 30
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
              end
              object cxGridLevel20: TcxGridLevel
                GridView = cxGrdVPBX_ca_d
              end
            end
            object pnlChart_ca_d: TPanel
              Left = 871
              Top = 0
              Width = 358
              Height = 552
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 1
              object Panel12: TPanel
                Left = 0
                Top = 0
                Width = 358
                Height = 61
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
                object Shape61: TShape
                  Left = 5
                  Top = 5
                  Width = 198
                  Height = 24
                  Pen.Color = 12566402
                  Shape = stRoundRect
                end
                object cbChartKindA2_3: TcxComboBox
                  Left = 80
                  Top = 4
                  AutoSize = False
                  Properties.DropDownListStyle = lsFixedList
                  Properties.Items.Strings = (
                    'Column Diagram'
                    'Bar Diagram'
                    'Stacked Area Diagram'
                    'Stacked Bars Diagram'
                    'Stacked Column Diagram'
                    'Line Diagram'
                    'Area Diagram'
                    'Pie Diagram')
                  Properties.OnChange = cbChartKindA2_3PropertiesChange
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
                  Text = 'Column Diagram'
                  Height = 26
                  Width = 147
                end
                object cxLabel39: TcxLabel
                  Left = 13
                  Top = 9
                  Caption = #44536#47000#54532#49440#53469
                  ParentColor = False
                  Style.TextColor = clBlack
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Properties.ShadowedColor = clGray
                  Transparent = True
                  AnchorX = 45
                  AnchorY = 17
                end
                object cxButton26: TcxButton
                  Left = 888
                  Top = 4
                  Width = 75
                  Height = 25
                  Caption = 'btnChartA6'
                  TabOrder = 2
                  Visible = False
                end
                object cbKindA2_3: TcxComboBox
                  Left = 5
                  Top = 31
                  AutoSize = False
                  Properties.DropDownListStyle = lsFixedList
                  Properties.Items.Strings = (
                    #51204#52404' '#53084#49688#47196' '#48372#44592
                    #47704#53944'/CTI'#53328#51064#51077' '#48372#44592
                    #53084#48177' '#44288#47144' '#48372#44592)
                  Properties.OnChange = cbKindA2_3PropertiesChange
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
                  Text = #51204#52404' '#53084#49688#47196' '#48372#44592
                  Height = 26
                  Width = 222
                end
                object btnGraphExit_ca_d: TcxButton
                  Left = 231
                  Top = 5
                  Width = 58
                  Height = 52
                  Cursor = crHandPoint
                  Caption = #45803' '#44592
                  Colors.Default = 16773362
                  Colors.Normal = 16773362
                  Colors.Pressed = 16644080
                  LookAndFeel.Kind = lfFlat
                  LookAndFeel.NativeStyle = False
                  LookAndFeel.SkinName = 'Sharp'
                  TabOrder = 4
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = #44404#47548
                  Font.Style = []
                  ParentFont = False
                  OnClick = btnGraphExit_ca_dClick
                end
              end
              object cxGrdCPBX_ca_d: TcxGrid
                Left = 0
                Top = 61
                Width = 358
                Height = 491
                Align = alClient
                TabOrder = 1
                object cxGrdCvPBX_ca_d: TcxGridChartView
                  DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
                  DiagramColumn.Active = True
                  DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
                  DiagramPie.Values.CaptionPosition = pdvcpCenter
                  OptionsBehavior.ValueHints = False
                  Title.Alignment = cpaStart
                  Title.Text = #51068#48324' '#53685#44228
                  object cxGrdCvPBX_ca_dSeries1: TcxGridChartSeries
                    DisplayText = #51204#52404#53084#49688
                  end
                  object cxGrdCvPBX_ca_dSeries2: TcxGridChartSeries
                    DisplayText = #49345#45812#50896#50672#44208#50836#52397
                  end
                  object cxGrdCvPBX_ca_dSeries3: TcxGridChartSeries
                    DisplayText = #49345#45812#50896#50672#44208#49457#44277
                  end
                  object cxGrdCvPBX_ca_dSeries4: TcxGridChartSeries
                    DisplayText = #47924#51025#45813
                  end
                end
                object cxGridLevel17: TcxGridLevel
                  GridView = cxGrdCvPBX_ca_d
                end
              end
            end
          end
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Tag = 708
      Caption = #51064#48148#50868#46300#49444#51221
      ImageIndex = 7
      object PnlMainA3: TPanel
        Left = 0
        Top = 0
        Width = 1237
        Height = 633
        Align = alClient
        BevelOuter = bvNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Shape37: TShape
          Left = 0
          Top = 65
          Width = 1237
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = -6
          ExplicitTop = 23
          ExplicitWidth = 305
        end
        object cxGridA3: TcxGrid
          Left = 0
          Top = 67
          Width = 1237
          Height = 566
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object cxGridPBX3: TcxGridBandedTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.CustomizeDialog = False
            OnCellDblClick = cxGridPBX3CellDblClick
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
                Caption = 'No'
                Width = 36
              end
              item
                Caption = #49440#53469
                Width = 35
                OnHeaderClick = cxGridPBX3Bands0HeaderClick
              end
              item
                Caption = #44592#48376#51221#48372
                Width = 645
              end
              item
                Caption = #44060#48324#52265#49888#51221#48372
                Width = 300
              end
              item
                Caption = 'TEL'#49436#48260
                Width = 298
              end
              item
                Caption = #47704#53944
                Width = 279
              end
              item
                Caption = #48512#44032#49436#48708#49828'-'#44060#51064#54596#53552#47553
                Width = 437
              end
              item
                Caption = #48512#44032#49436#48708#49828'-080'#49688#49888#44144#48512
                Width = 240
              end
              item
                Caption = #48512#44032#49436#48708#49828'-VIP'#46972#50864#54021
                Visible = False
                Width = 202
              end
              item
                Caption = #48512#44032#49436#48708#49828'-Call'#46972#50864#54021
                Visible = False
                Width = 213
              end
              item
                Caption = #54840#48516#48176#50864#49440#49692#50948
                Width = 58
              end
              item
                Caption = #50612#54540#50672#46041
                Width = 61
              end
              item
                Caption = #54840#48516#48176#44536#47353
                Position.BandIndex = 2
                Position.ColIndex = 0
                Width = 70
              end
              item
                Caption = #45824#54364#48264#54840
                Position.BandIndex = 2
                Position.ColIndex = 1
                Width = 90
              end
              item
                Caption = #52265#49888#48264#54840
                Position.BandIndex = 2
                Position.ColIndex = 2
                Width = 90
              end
              item
                Caption = #49436#48708#49828#47749
                Position.BandIndex = 2
                Position.ColIndex = 3
                Width = 90
              end
              item
                Caption = #47749#51032#51088'/'#53685#49888#49324
                Position.BandIndex = 2
                Position.ColIndex = 4
                Width = 70
              end
              item
                Caption = #50504#45236#47928#44396
                Position.BandIndex = 2
                Position.ColIndex = 5
                Width = 75
              end
              item
                Caption = #44060#48324#52265#49888#48264#54840
                Position.BandIndex = 3
                Position.ColIndex = 0
                Width = 83
              end
              item
                Caption = #44060#48324#52265#49888#49324#50857#50668#48512
                Position.BandIndex = 3
                Position.ColIndex = 1
                Width = 108
              end
              item
                Caption = #49884#51089#49884#44036
                Position.BandIndex = 3
                Position.ColIndex = 2
                Width = 55
              end
              item
                Caption = #51333#47308#49884#44036
                Position.BandIndex = 3
                Position.ColIndex = 3
                Width = 54
              end
              item
                Caption = 'CTI-Q'#45824#44592#47704#53944
                Position.BandIndex = 5
                Position.ColIndex = 0
                Width = 182
              end
              item
                Caption = 'VIP CTI-Q'#45824#44592#47704#53944
                Position.BandIndex = 5
                Position.ColIndex = 1
                Width = 125
              end
              item
                Caption = #51060#47492#50630#45716' CTI-Q'#45824#44592#47704#53944
                Position.BandIndex = 5
                Position.ColIndex = 2
                Visible = False
                Width = 137
              end
              item
                Caption = #51060#47492#51080#45716' CTI-Q'#45824#44592#47704#53944
                Position.BandIndex = 5
                Position.ColIndex = 3
                Visible = False
                Width = 142
              end
              item
                Caption = #44060#48324#54596#53552#47553#49324#50857#50668#48512
                Position.BandIndex = 6
                Position.ColIndex = 0
                Width = 127
              end
              item
                Caption = #54596#53552#47553#47704#53944
                Position.BandIndex = 6
                Position.ColIndex = 1
                Width = 108
              end
              item
                Caption = #54596#53552#47553#49884#51089#49884#44036
                Position.BandIndex = 6
                Position.ColIndex = 2
                Width = 101
              end
              item
                Caption = #54596#53552#47553#51333#47308#49884#44036
                Position.BandIndex = 6
                Position.ColIndex = 3
                Width = 101
              end
              item
                Caption = '080'#49688#49888#44144#48512#49324#50857#50668#48512
                Position.BandIndex = 7
                Position.ColIndex = 0
                Width = 130
              end
              item
                Caption = '080'#49688#49888#44144#48512#47704#53944
                Position.BandIndex = 7
                Position.ColIndex = 1
                Width = 110
              end
              item
                Caption = 'VIP'#46972#50864#54021#49324#50857#50668#48512
                Position.BandIndex = 8
                Position.ColIndex = 0
                Visible = False
                Width = 112
              end
              item
                Caption = 'VIP'#46972#50864#54021#44536#47353
                Position.BandIndex = 8
                Position.ColIndex = 1
                Visible = False
                Width = 90
              end
              item
                Caption = 'Call'#46972#50864#54021#49324#50857#50668#48512
                Position.BandIndex = 9
                Position.ColIndex = 0
                Visible = False
                Width = 119
              end
              item
                Caption = 'Call'#46972#50864#54021#44536#47353
                Position.BandIndex = 9
                Position.ColIndex = 1
                Visible = False
                Width = 94
              end
              item
                Caption = #53084#47560#45320
                Position.BandIndex = 4
                Position.ColIndex = 0
                Width = 64
              end
              item
                Caption = #53441#49569
                Position.BandIndex = 4
                Position.ColIndex = 1
                Width = 65
              end
              item
                Caption = #47196#51648
                Position.BandIndex = 4
                Position.ColIndex = 2
              end
              item
                Caption = #53084#47560#53944
                Position.BandIndex = 4
                Position.ColIndex = 3
              end
              item
                Caption = #50500#51060#53080
                Position.BandIndex = 4
                Position.ColIndex = 4
              end
              item
                Caption = 'G365'
                Position.BandIndex = 4
                Position.ColIndex = 5
              end
              item
                Caption = #51064#49457
                Position.BandIndex = 4
                Position.ColIndex = 6
              end>
            object cxGridBandedColumn1: TcxGridBandedColumn
              Caption = #49440#53469
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxCheckBoxProperties'
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Position.BandIndex = 1
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
              Position.BandIndex = 12
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn3: TcxGridBandedColumn
              Caption = #45824#54364#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 13
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
              Position.BandIndex = 14
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
              Position.BandIndex = 15
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn6: TcxGridBandedColumn
              Caption = #47749#51032#51088'/'#53685#49888#49324
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 16
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn7: TcxGridBandedColumn
              Caption = #50504#45236#47928#44396
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 17
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn8: TcxGridBandedColumn
              Caption = #44060#48324#52265#49888#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 18
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn9: TcxGridBandedColumn
              Caption = #44060#48324#52265#49888#49324#50857#50668#48512
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 19
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn10: TcxGridBandedColumn
              Caption = #49884#51089#49884#44036
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 20
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn11: TcxGridBandedColumn
              Caption = #51333#47308#49884#44036
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 21
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn12: TcxGridBandedColumn
              Caption = 'TEL'#49436#48260
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 36
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn13: TcxGridBandedColumn
              Caption = #53441#49569
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 20
              Position.BandIndex = 37
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn14: TcxGridBandedColumn
              Caption = 'CTI-Q'#45824#44592#47704#53944
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 22
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn15: TcxGridBandedColumn
              Caption = 'VIP CTI-Q'#45824#44592#47704#53944
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 23
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn16: TcxGridBandedColumn
              Caption = #51060#47492#50630#45716' CTI-Q'#45824#44592#47704#53944
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 24
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn17: TcxGridBandedColumn
              Caption = #51060#47492#51080#45716' CTI-Q'#45824#44592#47704#53944
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Width = 71
              Position.BandIndex = 25
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn18: TcxGridBandedColumn
              Caption = ' '#44060#48324#54596#53552#47553#49324#50857#50668#48512
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 26
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn19: TcxGridBandedColumn
              Caption = #54596#53552#47553#47704#53944
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 27
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn20: TcxGridBandedColumn
              Caption = #54596#53552#47553#49884#51089#49884#44036
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 28
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn21: TcxGridBandedColumn
              Caption = #54596#53552#47553#51333#47308#49884#44036
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 29
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn22: TcxGridBandedColumn
              Caption = '080'#49688#49888#44144#48512#49324#50857#50668#48512
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 30
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn23: TcxGridBandedColumn
              Caption = '080'#49688#49888#44144#48512#47704#53944
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 31
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn24: TcxGridBandedColumn
              Caption = 'VIP'#46972#50864#54021#49324#50857#50668#48512
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 32
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn25: TcxGridBandedColumn
              Caption = 'VIP'#46972#50864#54021#44536#47353
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 33
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn26: TcxGridBandedColumn
              Caption = 'Call'#46972#50864#54021#49324#50857#50668#48512
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 34
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn27: TcxGridBandedColumn
              Caption = 'Call'#46972#50864#54021#44536#47353
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Visible = False
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 35
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn28: TcxGridBandedColumn
              Caption = #54840#48516#48176#50864#49440#49692#50948
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 10
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn29: TcxGridBandedColumn
              Caption = #50612#54540#50672#46041
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 11
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridPBX3Column1: TcxGridBandedColumn
              Caption = #47196#51648
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 38
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridPBX3Column2: TcxGridBandedColumn
              Caption = #53084#47560#53944
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 39
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridPBX3Column3: TcxGridBandedColumn
              Caption = #50500#51060#53080
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 40
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridPBX3Column4: TcxGridBandedColumn
              Caption = 'G365'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 41
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridPBX3Column5: TcxGridBandedColumn
              Caption = #51064#49457
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 42
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridPBX3Column6: TcxGridBandedColumn
              Caption = 'No'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
          end
          object cxGridLevel8: TcxGridLevel
            GridView = cxGridPBX3
          end
        end
        object cxGroupBox9: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Height = 65
          Width = 1237
          object Shape39: TShape
            Left = 193
            Top = 34
            Width = 147
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape57: TShape
            Left = 193
            Top = 7
            Width = 124
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape40: TShape
            Left = 6
            Top = 7
            Width = 147
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape96: TShape
            Left = 6
            Top = 34
            Width = 147
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object btn_3_3: TcxButton
            Tag = 1
            Left = 574
            Top = 6
            Width = 83
            Height = 25
            Cursor = crHandPoint
            Caption = #49688'  '#51221
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 2
            OnClick = btn_3_3Click
          end
          object btn_3_1: TcxButton
            Left = 402
            Top = 6
            Width = 83
            Height = 53
            Cursor = crHandPoint
            Caption = #44160'  '#49353
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 0
            OnClick = btn_3_1Click
          end
          object btn_3_2: TcxButton
            Left = 488
            Top = 6
            Width = 83
            Height = 53
            Cursor = crHandPoint
            Caption = #49888#44508#46321#47197
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 1
            OnClick = btn_3_2Click
          end
          object cxLabel46: TcxLabel
            Left = 205
            Top = 39
            Caption = #49436#48708#49828#47749
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 231
            AnchorY = 47
          end
          object btn_3_5: TcxButton
            Left = 660
            Top = 6
            Width = 83
            Height = 53
            Cursor = crHandPoint
            Caption = #50641#49472#52636#47141
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 4
            OnClick = btn_3_5Click
          end
          object btn_3_4: TcxButton
            Tag = 1
            Left = 574
            Top = 34
            Width = 83
            Height = 25
            Cursor = crHandPoint
            Caption = #49325'  '#51228
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 3
            OnClick = btn_3_4Click
          end
          object cxLabel48: TcxLabel
            Left = 205
            Top = 12
            Caption = #45824#54364#48264#54840
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 231
            AnchorY = 20
          end
          object cxLabel47: TcxLabel
            Left = 9
            Top = 12
            Caption = #54840#48516#48176#44536#47353
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 41
            AnchorY = 20
          end
          object cxLabel92: TcxLabel
            Left = 15
            Top = 39
            Caption = #52265#49888#48264#54840
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 41
            AnchorY = 47
          end
          object edtSearch_3_2: TcxTextEdit
            Left = 266
            Top = 6
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 9
            OnKeyDown = edtSearch_3_1KeyDown
            Height = 26
            Width = 130
          end
          object edtSearch_3_1: TcxTextEdit
            Left = 74
            Top = 6
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 10
            OnKeyDown = edtSearch_3_1KeyDown
            Height = 26
            Width = 119
          end
          object edtSearch_3_3: TcxTextEdit
            Left = 74
            Top = 33
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 11
            OnKeyDown = edtSearch_3_1KeyDown
            Height = 26
            Width = 119
          end
          object edtSearch_3_4: TcxTextEdit
            Left = 266
            Top = 33
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 12
            OnKeyDown = edtSearch_3_1KeyDown
            Height = 26
            Width = 130
          end
          object cxButton4: TcxButton
            Left = 746
            Top = 6
            Width = 83
            Height = 53
            Cursor = crHandPoint
            Caption = #52265#49888#49444#51221
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 13
            OnClick = cxButton4Click
          end
        end
      end
    end
    object cxTabSheet10: TcxTabSheet
      Caption = #49345#45812#44536#47353#49444#51221
      ImageIndex = 9
      object PnlMainA4: TPanel
        Left = 0
        Top = 0
        Width = 1237
        Height = 633
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object Shape15: TShape
          Left = 0
          Top = 41
          Width = 1237
          Height = 2
          Align = alTop
          Pen.Style = psClear
        end
        object cxGroupBox3: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 41
          Width = 1237
          object Shape12: TShape
            Left = 5
            Top = 9
            Width = 124
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object cbGrpNm4: TcxComboBox
            Left = 80
            Top = 8
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
            TabOrder = 0
            OnKeyDown = cbGrpNm4KeyDown
            Height = 26
            Width = 122
          end
          object cxLabel15: TcxLabel
            Left = 18
            Top = 14
            Caption = #49345#45812#44536#47353
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 44
            AnchorY = 22
          end
          object btn_4_1: TcxButton
            Left = 370
            Top = 8
            Width = 83
            Height = 24
            Cursor = crHandPoint
            Caption = #44160'  '#49353
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 2
            OnClick = btn_4_1Click
          end
          object btn_4_2: TcxButton
            Left = 456
            Top = 8
            Width = 83
            Height = 24
            Cursor = crHandPoint
            Caption = #49888#44508#46321#47197
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 3
            OnClick = btn_4_2Click
          end
          object btn_4_3: TcxButton
            Tag = 1
            Left = 542
            Top = 8
            Width = 83
            Height = 24
            Cursor = crHandPoint
            Caption = #49688'  '#51221
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 4
            OnClick = btn_4_3Click
          end
          object btn_4_4: TcxButton
            Tag = 1
            Left = 628
            Top = 8
            Width = 83
            Height = 24
            Cursor = crHandPoint
            Caption = #49325'  '#51228
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 5
            OnClick = btn_4_4Click
          end
          object btn_4_5: TcxButton
            Left = 714
            Top = 8
            Width = 83
            Height = 24
            Cursor = crHandPoint
            Caption = #50641#49472#52636#47141
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 6
            OnClick = btn_4_5Click
          end
        end
        object cxGridA4: TcxGrid
          Left = 0
          Top = 43
          Width = 1237
          Height = 590
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 2
          LookAndFeel.NativeStyle = False
          object cxGridPBX4: TcxGridBandedTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.CustomizeDialog = False
            OnCellDblClick = cxGridPBX4CellDblClick
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DataController.OnSortingChanged = cxGridPBX4DataControllerSortingChanged
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
            OnColumnHeaderClick = cxGridPBX4ColumnHeaderClick
            Bands = <
              item
                Caption = #49440#53469
                Width = 50
                OnHeaderClick = cxGridPBX4Bands0HeaderClick
              end
              item
                Caption = #49345#45812#44536#47353'ID'
                Width = 150
              end
              item
                Caption = #49345#45812#44536#47353#47749
                Width = 110
              end
              item
                Caption = #49345#45812#44536#47353#49444#47749
                Width = 400
              end
              item
                Caption = #46321#47197#51088
                Width = 100
              end>
            object cxGridBandedColumn178: TcxGridBandedColumn
              Caption = #44396#48516
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxCheckBoxProperties'
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn179: TcxGridBandedColumn
              Caption = #55092#51068
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.Moving = False
              Options.Sorting = False
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn180: TcxGridBandedColumn
              Caption = #44540#47924#51333#47308
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn181: TcxGridBandedColumn
              Caption = #49324#50857#50668#48512
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn182: TcxGridBandedColumn
              Caption = #50500#52840#49884#51089
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
          end
          object cxGridLevel28: TcxGridLevel
            GridView = cxGridPBX4
          end
        end
        object grpAgtGroup: TcxGroupBox
          Left = 272
          Top = 238
          Caption = #49345#45812#44536#47353#52628#44032
          TabOrder = 1
          Visible = False
          OnMouseDown = grpWorkSetMouseDown
          DesignSize = (
            464
            117)
          Height = 121
          Width = 464
          object Shape100: TShape
            Left = 9
            Top = 22
            Width = 86
            Height = 24
            Pen.Color = 12566402
          end
          object Shape101: TShape
            Left = 233
            Top = 22
            Width = 85
            Height = 24
            Pen.Color = 12566402
          end
          object Shape102: TShape
            Left = 9
            Top = 52
            Width = 86
            Height = 24
            Pen.Color = 12566402
          end
          object cxLabel76: TcxLabel
            Left = 18
            Top = 26
            Caption = #49345#45812#44536#47353'ID'
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 50
            AnchorY = 34
          end
          object cxLabel77: TcxLabel
            Left = 12
            Top = 56
            Caption = #49345#45812#44536#47353#49444#47749
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 50
            AnchorY = 64
          end
          object cxLabel78: TcxLabel
            Left = 243
            Top = 26
            Caption = #49345#45812#44536#47353#47749
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 275
            AnchorY = 34
          end
          object edtGrpId_ai_g: TcxTextEdit
            Left = 92
            Top = 21
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnKeyDown = edtGrpId_ai_gKeyDown
            Height = 26
            Width = 140
          end
          object edtGrpDesc_ai_g: TcxTextEdit
            Left = 92
            Top = 51
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            OnKeyDown = edtGrpDesc_ai_gKeyDown
            Height = 26
            Width = 363
          end
          object edtGrpNm_ai_g: TcxTextEdit
            Left = 315
            Top = 21
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnKeyDown = edtGrpNm_ai_gKeyDown
            Height = 26
            Width = 140
          end
          object btnSave_ai_g: TcxButton
            Left = 302
            Top = 83
            Width = 75
            Height = 22
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #51200' '#51109
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnSave_ai_gClick
          end
          object btnCancel_ai_g: TcxButton
            Left = 379
            Top = 83
            Width = 75
            Height = 22
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #52712' '#49548
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnCancel_ai_gClick
          end
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = #49345#45812#50896#49444#51221
      ImageIndex = 12
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1237
        Height = 633
        Align = alClient
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Shape46: TShape
          Left = 0
          Top = 41
          Width = 1237
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
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 41
          Width = 1237
          object Shape13: TShape
            Left = 6
            Top = 9
            Width = 124
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape52: TShape
            Left = 203
            Top = 9
            Width = 147
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object cbGrpNm5: TcxComboBox
            Tag = 5
            Left = 80
            Top = 8
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
            TabOrder = 0
            Height = 26
            Width = 122
          end
          object cxLabel12: TcxLabel
            Left = 18
            Top = 14
            Caption = #49345#45812#44536#47353
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 44
            AnchorY = 22
          end
          object cxLabel16: TcxLabel
            Left = 215
            Top = 13
            Caption = #49345#45812#50896'ID'
            ParentColor = False
            Style.Color = 16575968
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 241
            AnchorY = 21
          end
          object btn_5_1: TcxButton
            Left = 406
            Top = 8
            Width = 83
            Height = 24
            Cursor = crHandPoint
            Caption = #44160'  '#49353
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 3
            OnClick = btn_5_1Click
          end
          object btn_5_2: TcxButton
            Left = 492
            Top = 8
            Width = 83
            Height = 24
            Cursor = crHandPoint
            Caption = #49888#44508#46321#47197
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 4
            OnClick = btn_5_2Click
          end
          object btn_5_3: TcxButton
            Tag = 1
            Left = 578
            Top = 8
            Width = 83
            Height = 24
            Cursor = crHandPoint
            Caption = #49688'  '#51221
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 5
            OnClick = btn_5_3Click
          end
          object btn_5_4: TcxButton
            Tag = 1
            Left = 664
            Top = 8
            Width = 83
            Height = 24
            Cursor = crHandPoint
            Caption = #49325'  '#51228
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 6
            OnClick = btn_5_4Click
          end
          object btn_5_5: TcxButton
            Left = 750
            Top = 8
            Width = 83
            Height = 24
            Cursor = crHandPoint
            Caption = #50641#49472#52636#47141
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 7
            OnClick = btn_5_5Click
          end
          object edt_5_1: TcxTextEdit
            Left = 278
            Top = 8
            AutoSize = False
            Properties.ImeMode = imSAlpha
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 8
            OnKeyDown = edt_5_1KeyDown
            Height = 26
            Width = 122
          end
        end
        object cxGridA5: TcxGrid
          Left = 0
          Top = 43
          Width = 1237
          Height = 590
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 2
          LookAndFeel.NativeStyle = False
          object cxGridPBX5: TcxGridBandedTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.CustomizeDialog = False
            OnCellDblClick = cxGridPBX5CellDblClick
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DataController.OnSortingChanged = cxGridPBX5DataControllerSortingChanged
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
            OnColumnHeaderClick = cxGridPBX5ColumnHeaderClick
            Bands = <
              item
                Caption = #49440#53469
                Width = 40
                OnHeaderClick = cxGridPBX5Bands0HeaderClick
              end
              item
                Caption = #49345#45812#50896'ID'
                Width = 80
              end
              item
                Caption = #48708#48128#48264#54840
                Width = 80
              end
              item
                Caption = #49345#45812#50896#47749
                Width = 80
              end
              item
                Caption = #49345#45812#44536#47353#47749
                Width = 130
              end
              item
                Caption = #49345#45812#50896#49444#47749
                Width = 100
              end
              item
                Caption = #49345#45812#50896#53440#51077
                Width = 80
              end
              item
                Caption = #45236#49440#48264#54840
                Width = 80
              end
              item
                Caption = #51088#46041#51025#45813'('#52488')'
                Width = 80
              end
              item
                Caption = #51088#46041#51025#45813#49324#50857#50668#48512
                Width = 105
              end
              item
                Caption = #48156#49888#51648#50669#48264#54840
                Width = 80
              end
              item
                Caption = #48156#49888#51648#50669#48264#54840#49324#50857#50668#48512
                Width = 130
              end
              item
                Caption = #48264#54840#47560#53433#50668#48512
                Width = 80
              end
              item
                Caption = #51204#54868#45130#51008#54980#51088#46041#45824#44592#49324#50857#50668#48512
                Width = 165
              end
              item
                Caption = #51204#54868#45130#51008#54980#51088#46041#45824#44592'('#52488')'
                Width = 138
              end
              item
                Caption = #46321#44553
                Width = 60
              end
              item
                Caption = #46321#47197#51088
                Width = 100
              end>
            object cxGridBandedColumn202: TcxGridBandedColumn
              Caption = #49440#53469
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Options.Moving = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn203: TcxGridBandedColumn
              Caption = #49345#45812#50896'ID'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn204: TcxGridBandedColumn
              Caption = #48708#48128#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              MinWidth = 64
              Options.Editing = False
              Options.Moving = False
              Options.Sorting = False
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn205: TcxGridBandedColumn
              Caption = #49345#45812#50896#47749
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn206: TcxGridBandedColumn
              Caption = #49345#45812#44536#47353#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn207: TcxGridBandedColumn
              Caption = #49345#45812#50896#49444#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn208: TcxGridBandedColumn
              Caption = #49345#45812#50896#53440#51077
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn209: TcxGridBandedColumn
              Caption = #45236#49440#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 7
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn210: TcxGridBandedColumn
              Caption = #51088#46041#51025#45813'('#52488')'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 8
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn211: TcxGridBandedColumn
              Caption = #51088#46041#51025#45813#49324#50857#50668#48512
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 9
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn212: TcxGridBandedColumn
              Caption = #48156#49888#51648#50669#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 10
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn213: TcxGridBandedColumn
              Caption = #48156#49888#51648#50669#48264#54840#49324#50857#50668#48512
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 11
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn214: TcxGridBandedColumn
              Caption = #48264#54840#47560#53433#50668#48512
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 12
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn215: TcxGridBandedColumn
              Caption = #51204#54868#45130#51008#54980#51088#46041#45824#44592#49324#50857#50668#48512
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 13
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn216: TcxGridBandedColumn
              Caption = #51204#54868#45130#51008#54980#51088#46041#45824#44592'('#52488')'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 14
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn217: TcxGridBandedColumn
              Caption = #46321#44553
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Moving = False
              Width = 71
              Position.BandIndex = 15
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn218: TcxGridBandedColumn
              Caption = #46321#47197#51088
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 16
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridPBX5Column1: TcxGridBandedColumn
              Caption = #44536#47353'ID'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
          end
          object cxGridLevel33: TcxGridLevel
            GridView = cxGridPBX5
          end
        end
        object grpAgentSet: TcxGroupBox
          Left = 248
          Top = 167
          Caption = #49345#45812#50896' '#52628#44032
          TabOrder = 1
          Visible = False
          OnMouseDown = grpWorkSetMouseDown
          DesignSize = (
            540
            204)
          Height = 208
          Width = 540
          object Shape103: TShape
            Left = 12
            Top = 20
            Width = 104
            Height = 24
            Pen.Color = 12566402
          end
          object Shape104: TShape
            Left = 258
            Top = 46
            Width = 133
            Height = 24
            Pen.Color = 12566402
          end
          object Shape105: TShape
            Left = 12
            Top = 72
            Width = 104
            Height = 24
            Pen.Color = 12566402
          end
          object Shape106: TShape
            Left = 258
            Top = 20
            Width = 133
            Height = 24
            Pen.Color = 12566402
          end
          object Shape107: TShape
            Left = 12
            Top = 46
            Width = 104
            Height = 24
            Pen.Color = 12566402
          end
          object Shape108: TShape
            Left = 26
            Top = 289
            Width = 104
            Height = 24
            Pen.Color = 12566402
            Visible = False
          end
          object Shape109: TShape
            Left = 12
            Top = 98
            Width = 133
            Height = 24
            Pen.Color = 12566402
          end
          object Shape110: TShape
            Left = 28
            Top = 343
            Width = 104
            Height = 24
            Pen.Color = 12566402
          end
          object Shape111: TShape
            Left = 12
            Top = 124
            Width = 133
            Height = 24
            Pen.Color = 12566402
          end
          object Shape112: TShape
            Left = 280
            Top = 286
            Width = 104
            Height = 24
            Pen.Color = 12566402
          end
          object Shape113: TShape
            Left = 178
            Top = 260
            Width = 133
            Height = 24
            Pen.Color = 12566402
          end
          object Shape114: TShape
            Left = 256
            Top = 124
            Width = 134
            Height = 24
            Pen.Color = 12566402
          end
          object Shape115: TShape
            Left = 257
            Top = 98
            Width = 133
            Height = 24
            Pen.Color = 12566402
          end
          object Shape116: TShape
            Left = 237
            Top = 312
            Width = 104
            Height = 24
            Pen.Color = 12566402
          end
          object Shape117: TShape
            Left = 12
            Top = 153
            Width = 133
            Height = 24
            Brush.Color = 12910591
            Pen.Color = 12566402
          end
          object cxLabel93: TcxLabel
            Left = 59
            Top = 24
            Caption = #49345#45812#50896'ID'
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 85
            AnchorY = 32
          end
          object cxLabel94: TcxLabel
            Left = 48
            Top = 50
            Caption = #49345#45812#50896#51060#47492
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 80
            AnchorY = 58
          end
          object cxLabel95: TcxLabel
            Left = 322
            Top = 51
            Caption = #49345#45812#44536#47353#47749
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 354
            AnchorY = 59
          end
          object edtAgtDesc_ai_s: TcxTextEdit
            Left = 114
            Top = 71
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Properties.MaxLength = 40
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            Height = 26
            Width = 415
          end
          object cxLabel96: TcxLabel
            Left = 334
            Top = 24
            Caption = #48708#48128#48264#54840
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 360
            AnchorY = 32
          end
          object cbGrpNm5s: TcxComboBox
            Left = 389
            Top = 45
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
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
            Width = 140
          end
          object edtAgtPw_ai_s: TcxTextEdit
            Left = 389
            Top = 19
            AutoSize = False
            Properties.ImeMode = imSAlpha
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Height = 26
            Width = 140
          end
          object cxLabel97: TcxLabel
            Left = 48
            Top = 77
            Caption = #49345#45812#50896#49444#47749
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 80
            AnchorY = 85
          end
          object edtExtNo_ai_s: TcxTextEdit
            Left = 114
            Top = 97
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Properties.MaxLength = 40
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 6
            Height = 26
            Width = 140
          end
          object cxLabel98: TcxLabel
            Left = 63
            Top = 294
            Caption = #49345#45812#50896#53440#51077
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            Visible = False
            AnchorX = 95
            AnchorY = 302
          end
          object edtAgtId_ai_s: TcxTextEdit
            Left = 114
            Top = 19
            AutoSize = False
            Properties.ImeMode = imSAlpha
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Height = 26
            Width = 140
          end
          object edtAgtNm_ai_s: TcxTextEdit
            Left = 114
            Top = 45
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Height = 26
            Width = 140
          end
          object cbAgtType_ai_s: TcxComboBox
            Left = 128
            Top = 288
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
            Properties.Items.Strings = (
              'IN/OUT'
              'IN'
              'OUT')
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 5
            Text = 'IN/OUT'
            Visible = False
            Height = 26
            Width = 140
          end
          object cxLabel99: TcxLabel
            Left = 59
            Top = 102
            Caption = #45236#49440#48264#54840
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 85
            AnchorY = 110
          end
          object edtAutoAnswerSec_ai_s: TcxTextEdit
            Left = 130
            Top = 342
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Properties.MaxLength = 40
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 7
            Height = 26
            Width = 140
          end
          object cxLabel100: TcxLabel
            Left = 54
            Top = 348
            Caption = #51088#46041#51025#45813'('#52488')'
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 92
            AnchorY = 356
          end
          object cbAutoAnswerYn_ai_s: TcxComboBox
            Left = 114
            Top = 123
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
            Properties.Items.Strings = (
              #48120#49324#50857
              #49324#50857)
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
            TabOrder = 8
            Text = #49324#50857
            Height = 26
            Width = 140
          end
          object cxLabel101: TcxLabel
            Left = 14
            Top = 129
            Caption = #51088#46041#51025#45813#49324#50857#50668#48512
            ParentColor = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorY = 137
          end
          object edtPrefix_ai_s: TcxTextEdit
            Left = 382
            Top = 285
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Properties.MaxLength = 40
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 9
            Height = 26
            Width = 140
          end
          object cxLabel102: TcxLabel
            Left = 304
            Top = 290
            Caption = #48156#49888#51648#50669#48264#54840
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 342
            AnchorY = 298
          end
          object cbPrefixYn_ai_s: TcxComboBox
            Left = 309
            Top = 259
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
            Properties.Items.Strings = (
              #48120#49324#50857
              #49324#50857)
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 10
            Text = #48120#49324#50857
            Height = 26
            Width = 140
          end
          object cxLabel103: TcxLabel
            Left = 182
            Top = 264
            Caption = #48156#49888#51648#50669#48264#54840#49324#50857#50668#48512
            ParentColor = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorY = 272
          end
          object edtAutoWaitSec_ai_s: TcxTextEdit
            Left = 388
            Top = 123
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Properties.MaxLength = 40
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 11
            Height = 26
            Width = 140
          end
          object cxLabel104: TcxLabel
            Left = 284
            Top = 128
            Caption = #51204#54868#45130#44256#45824#44592'('#52488')'
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 334
            AnchorY = 136
          end
          object cbAutoWaitYn_ai_s: TcxComboBox
            Left = 388
            Top = 97
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
            Properties.Items.Strings = (
              #48120#49324#50857
              #49324#50857)
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
            TabOrder = 12
            Text = #48120#49324#50857
            Height = 26
            Width = 140
          end
          object cxLabel105: TcxLabel
            Left = 258
            Top = 102
            Caption = #51204#54868#45130#44256#45824#44592' '#49324#50857#50668#48512
            ParentColor = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorY = 110
          end
          object cxLabel106: TcxLabel
            Left = 261
            Top = 316
            Caption = #48264#54840#47560#53433#50668#48512
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 299
            AnchorY = 324
          end
          object cbMarkingYn_ai_s: TcxComboBox
            Left = 339
            Top = 311
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
            Properties.Items.Strings = (
              #48120#49324#50857
              #49324#50857)
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 13
            Text = #48120#49324#50857
            Height = 26
            Width = 140
          end
          object cxLabel107: TcxLabel
            Left = 48
            Top = 157
            Caption = #49345#45812#50896#46321#44553
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 80
            AnchorY = 165
          end
          object cbAgtLevel_ai_s: TcxComboBox
            Left = 114
            Top = 152
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
            Properties.Items.Strings = (
              #51068#48152
              #44288#47532#51088)
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
            TabOrder = 14
            Text = #51068#48152
            Height = 26
            Width = 140
          end
          object btnSave_ai_s: TcxButton
            Left = 382
            Top = 153
            Width = 69
            Height = 41
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #51200' '#51109
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 15
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnSave_ai_sClick
          end
          object chk_Clear: TcxCheckBox
            Left = 260
            Top = 164
            Caption = #51200#51109' '#54980' '#49888#44508#46321#47197
            ParentFont = False
            Style.Font.Charset = HANGEUL_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = []
            Style.LookAndFeel.SkinName = 'Sharp'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 32
            Transparent = True
          end
          object btnCancel_ai_s: TcxButton
            Left = 459
            Top = 153
            Width = 69
            Height = 41
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #52712' '#49548
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnCancel_ai_sClick
          end
        end
      end
    end
    object cxTabSheet5: TcxTabSheet
      Tag = 709
      Caption = #44288#47532#51088#49444#51221
      ImageIndex = 8
      object PnlMainA6: TPanel
        Left = 0
        Top = 0
        Width = 1237
        Height = 633
        Align = alClient
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Shape42: TShape
          Left = 0
          Top = 41
          Width = 1237
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = -6
          ExplicitTop = 23
          ExplicitWidth = 305
        end
        object cxGridA6: TcxGrid
          Left = 0
          Top = 43
          Width = 1237
          Height = 590
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 2
          LookAndFeel.NativeStyle = False
          object cxGridPBX6: TcxGridBandedTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.CustomizeDialog = False
            OnCellDblClick = cxGridPBX6CellDblClick
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DataController.OnSortingChanged = cxGridPBX6DataControllerSortingChanged
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
            OnColumnHeaderClick = cxGridPBX6ColumnHeaderClick
            Bands = <
              item
                Caption = #49440#53469
                Width = 40
                OnHeaderClick = cxGridPBX6Bands0HeaderClick
              end
              item
                Caption = #44288#47532#51088'ID'
                Width = 120
              end
              item
                Caption = #44288#47532#51088#47749
                Width = 120
              end
              item
                Caption = #44288#47532#51088#49444#47749
                Width = 300
              end
              item
                Caption = #45236#49440#48264#54840
                Width = 100
              end
              item
                Caption = #44288#47532#51088#44428#54620
                Width = 100
              end
              item
                Caption = #46321#47197#51088
                Width = 100
              end>
            object cxGridBandedColumn183: TcxGridBandedColumn
              Caption = #49440#53469
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Options.Moving = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn184: TcxGridBandedColumn
              Caption = #44288#47532#51088'ID'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn185: TcxGridBandedColumn
              Caption = #44288#47532#51088#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              MinWidth = 64
              Options.Editing = False
              Options.Moving = False
              Options.Sorting = False
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn186: TcxGridBandedColumn
              Caption = #44288#47532#51088#49444#47749
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn187: TcxGridBandedColumn
              Caption = #45236#49440#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn227: TcxGridBandedColumn
              Caption = #44288#47532#51088#44428#54620
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn228: TcxGridBandedColumn
              Caption = #46321#47197#51088
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn229: TcxGridBandedColumn
              Caption = #48708#48128#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
          end
          object cxGridLevel4: TcxGridLevel
            GridView = cxGridPBX6
          end
        end
        object cxGroupBox10: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 41
          Width = 1237
          object Shape45: TShape
            Left = 6
            Top = 9
            Width = 91
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object cxLabel55: TcxLabel
            Left = 18
            Top = 14
            Caption = #44288#47532#51088'ID'
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 44
            AnchorY = 22
          end
          object btn_6_1: TcxButton
            Left = 198
            Top = 8
            Width = 83
            Height = 24
            Cursor = crHandPoint
            Caption = #44160'  '#49353
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 1
            OnClick = btn_6_1Click
          end
          object btn_6_2: TcxButton
            Left = 284
            Top = 8
            Width = 83
            Height = 24
            Cursor = crHandPoint
            Caption = #49888#44508#46321#47197
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 2
            OnClick = btn_6_2Click
          end
          object btn_6_3: TcxButton
            Tag = 1
            Left = 370
            Top = 8
            Width = 83
            Height = 24
            Cursor = crHandPoint
            Caption = #49688'  '#51221
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 3
            OnClick = btn_6_3Click
          end
          object btn_6_4: TcxButton
            Tag = 1
            Left = 456
            Top = 8
            Width = 83
            Height = 24
            Cursor = crHandPoint
            Caption = #49325'  '#51228
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 4
            OnClick = btn_6_4Click
          end
          object btn_6_5: TcxButton
            Left = 542
            Top = 8
            Width = 83
            Height = 24
            Cursor = crHandPoint
            Caption = #50641#49472#52636#47141
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 5
            OnClick = btn_6_5Click
          end
          object edt_6_1: TcxTextEdit
            Left = 80
            Top = 8
            AutoSize = False
            Properties.ImeMode = imSAlpha
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 6
            OnKeyDown = edt_6_1KeyDown
            Height = 26
            Width = 113
          end
          object btn_6_6: TcxButton
            Left = 675
            Top = 8
            Width = 188
            Height = 24
            Cursor = crHandPoint
            Caption = #45824#54364#44288#47532#51088' '#48708#48128#48264#54840#48320#44221
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 7
            Visible = False
            OnClick = btn_6_6Click
          end
        end
        object grpAdminSet: TcxGroupBox
          Left = 112
          Top = 122
          Caption = #44288#47532#51088' '#52628#44032
          TabOrder = 1
          Visible = False
          OnMouseDown = grpAdminSetMouseDown
          DesignSize = (
            472
            173)
          Height = 177
          Width = 472
          object Shape118: TShape
            Left = 15
            Top = 22
            Width = 84
            Height = 24
            Pen.Color = 12566402
          end
          object Shape119: TShape
            Left = 15
            Top = 74
            Width = 84
            Height = 24
            Pen.Color = 12566402
          end
          object Shape120: TShape
            Left = 238
            Top = 22
            Width = 84
            Height = 24
            Pen.Color = 12566402
          end
          object Shape121: TShape
            Left = 15
            Top = 48
            Width = 84
            Height = 24
            Pen.Color = 12566402
          end
          object Shape122: TShape
            Left = 238
            Top = 48
            Width = 84
            Height = 24
            Pen.Color = 12566402
          end
          object Shape123: TShape
            Left = 15
            Top = 100
            Width = 84
            Height = 24
            Pen.Color = 12566402
          end
          object cxLabel108: TcxLabel
            Left = 44
            Top = 26
            Caption = #44288#47532#51088'ID'
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 70
            AnchorY = 34
          end
          object cxLabel109: TcxLabel
            Left = 43
            Top = 52
            Caption = #44288#47532#51088#47749
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 69
            AnchorY = 60
          end
          object edt_Desc: TcxTextEdit
            Left = 97
            Top = 73
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Properties.MaxLength = 40
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            Height = 26
            Width = 363
          end
          object cxLabel110: TcxLabel
            Left = 264
            Top = 26
            Caption = #48708#48128#48264#54840
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 290
            AnchorY = 34
          end
          object edt_PW: TcxTextEdit
            Left = 320
            Top = 21
            AutoSize = False
            Properties.EchoMode = eemPassword
            Properties.ImeMode = imSAlpha
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Height = 26
            Width = 140
          end
          object cxLabel111: TcxLabel
            Left = 31
            Top = 79
            Caption = #44288#47532#51088#49444#47749
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 63
            AnchorY = 87
          end
          object edt_ExtNo: TcxTextEdit
            Left = 320
            Top = 47
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Properties.MaxLength = 40
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            Height = 26
            Width = 140
          end
          object edt_ID: TcxTextEdit
            Left = 97
            Top = 21
            AutoSize = False
            Properties.ImeMode = imSAlpha
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Height = 26
            Width = 140
          end
          object edt_NM: TcxTextEdit
            Left = 97
            Top = 47
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Height = 26
            Width = 140
          end
          object cxLabel112: TcxLabel
            Left = 264
            Top = 53
            Caption = #45236#49440#48264#54840
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 290
            AnchorY = 61
          end
          object cxLabel113: TcxLabel
            Left = 31
            Top = 104
            Caption = #44288#47532#51088#44428#54620
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 63
            AnchorY = 112
          end
          object cb_Level: TcxComboBox
            Left = 97
            Top = 99
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
            Properties.Items.Strings = (
              #47700#51064#44288#47532#51088
              #51648#49324#51109)
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
            TabOrder = 5
            Height = 26
            Width = 140
          end
          object btnSave_ad_s: TcxButton
            Left = 303
            Top = 133
            Width = 75
            Height = 24
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #51200' '#51109
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
            OnClick = btnSave_ad_sClick
          end
          object btnCancel_ad_s: TcxButton
            Left = 380
            Top = 133
            Width = 75
            Height = 24
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #52712' '#49548
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
            OnClick = btnCancel_ad_sClick
          end
        end
        object pnl_MasterPwChange: TPanel
          Left = 605
          Top = 126
          Width = 244
          Height = 171
          BevelInner = bvRaised
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 3
          Visible = False
          DesignSize = (
            244
            171)
          object Shape1: TShape
            Left = 5
            Top = 39
            Width = 100
            Height = 24
            Pen.Color = 12566402
          end
          object Shape4: TShape
            Left = 5
            Top = 71
            Width = 100
            Height = 24
            Pen.Color = 12566402
          end
          object Shape11: TShape
            Left = 5
            Top = 96
            Width = 100
            Height = 24
            Pen.Color = 12566402
          end
          object Panel24: TPanel
            Left = 1
            Top = 1
            Width = 242
            Height = 33
            Align = alTop
            BevelOuter = bvNone
            Caption = #45824#54364#44288#47532#51088' '#48708#48128#48264#54840#48320#44221
            Color = clBlack
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 3
          end
          object edt_NowPw: TcxTextEdit
            Left = 101
            Top = 38
            AutoSize = False
            Properties.EchoMode = eemPassword
            Properties.ImeMode = imSAlpha
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnKeyDown = edt_NowPwKeyDown
            Height = 26
            Width = 140
          end
          object cxLabel2: TcxLabel
            Left = 15
            Top = 43
            Caption = #54788#51116#48708#48128#48264#54840
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 53
            AnchorY = 51
          end
          object edt_NewPW: TcxTextEdit
            Left = 101
            Top = 70
            AutoSize = False
            Properties.EchoMode = eemPassword
            Properties.ImeMode = imSAlpha
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnKeyDown = edt_NewPWKeyDown
            Height = 26
            Width = 140
          end
          object cxLabel3: TcxLabel
            Left = 15
            Top = 76
            Caption = #49888#44508#48708#48128#48264#54840
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 53
            AnchorY = 84
          end
          object edt_ConfirmPw: TcxTextEdit
            Left = 101
            Top = 95
            AutoSize = False
            Properties.EchoMode = eemPassword
            Properties.ImeMode = imSAlpha
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            OnKeyDown = edt_ConfirmPwKeyDown
            Height = 26
            Width = 140
          end
          object cxLabel4: TcxLabel
            Left = 15
            Top = 100
            Caption = #54869#51064#48708#48128#48264#54840
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 53
            AnchorY = 108
          end
          object btn_PwChange: TcxButton
            Left = 5
            Top = 128
            Width = 164
            Height = 32
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #51200' '#51109
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
            OnClick = btn_PwChangeClick
          end
          object btn_PwClose: TcxButton
            Left = 175
            Top = 128
            Width = 65
            Height = 32
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #45803#44592
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 8
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btn_PwCloseClick
          end
        end
      end
    end
    object cxTabSheet17: TcxTabSheet
      Caption = #44288#47532#51088#44428#54620#49444#51221
      ImageIndex = 10
      object PnlMainA7: TPanel
        Left = 0
        Top = 0
        Width = 1237
        Height = 633
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object Shape38: TShape
          Left = 0
          Top = 41
          Width = 1237
          Height = 2
          Align = alTop
          Pen.Style = psClear
          ExplicitLeft = -6
          ExplicitTop = 23
          ExplicitWidth = 305
        end
        object cxGroupBox21: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 41
          Width = 1237
          object Shape56: TShape
            Left = 5
            Top = 9
            Width = 164
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object cxLabel53: TcxLabel
            Left = 18
            Top = 14
            Caption = #44288#47532#51088#47749
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 44
            AnchorY = 22
          end
          object btn_7_1: TcxButton
            Left = 217
            Top = 8
            Width = 83
            Height = 24
            Cursor = crHandPoint
            Caption = #44160'  '#49353
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 1
            OnClick = btn_7_1Click
          end
          object btn_7_3: TcxButton
            Tag = 1
            Left = 303
            Top = 8
            Width = 83
            Height = 24
            Cursor = crHandPoint
            Caption = #49688'  '#51221
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 2
            OnClick = btn_7_3Click
          end
          object btn_7_5: TcxButton
            Left = 389
            Top = 8
            Width = 83
            Height = 24
            Cursor = crHandPoint
            Caption = #50641#49472#52636#47141
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 3
            OnClick = btn_7_5Click
          end
          object cbMngNm7: TcxComboBox
            Left = 76
            Top = 8
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.OnChange = cbMngNm7PropertiesChange
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
            OnKeyDown = cbMngNm7KeyDown
            Height = 26
            Width = 122
          end
        end
        object cxGridA7: TcxGrid
          Left = 0
          Top = 43
          Width = 1237
          Height = 590
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 1
          LookAndFeel.NativeStyle = False
          object cxGridPBX7: TcxGridBandedTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.CustomizeDialog = False
            OnCellDblClick = cxGridPBX6CellDblClick
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DataController.OnSortingChanged = cxGridPBX6DataControllerSortingChanged
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
            OnColumnHeaderClick = cxGridPBX6ColumnHeaderClick
            Bands = <
              item
                Caption = #49440#53469
                Width = 40
                OnHeaderClick = cxGridPBX7Bands0HeaderClick
              end
              item
                Caption = #54840#48516#48176#44536#47353
                Width = 120
              end
              item
                Caption = #49436#48708#49828#47749
                Width = 303
              end
              item
                Caption = #45824#54364#48264#54840
                Width = 170
              end>
            object cxGridBandedColumn188: TcxGridBandedColumn
              Caption = #49440#53469
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxCheckBoxProperties'
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn189: TcxGridBandedColumn
              Caption = #44288#47532#51088'ID'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.Moving = False
              Options.Sorting = False
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn190: TcxGridBandedColumn
              Caption = #44288#47532#51088#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn191: TcxGridBandedColumn
              Caption = #44288#47532#51088#49444#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
          end
          object cxGridLevel10: TcxGridLevel
            GridView = cxGridPBX7
          end
        end
      end
    end
    object cxTabSheet19: TcxTabSheet
      Caption = #48512#44032#49436#48708#49828#49444#51221
      ImageIndex = 12
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1237
        Height = 633
        Align = alClient
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Shape86: TShape
          Left = 0
          Top = 38
          Width = 1237
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = -6
          ExplicitTop = 23
          ExplicitWidth = 305
        end
        object Shape88: TShape
          Left = 0
          Top = 72
          Width = 1237
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitTop = 46
          ExplicitWidth = 1102
        end
        object cxGroupBox19: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 38
          Width = 1237
          object btnSearch_ps: TcxButton
            Left = 596
            Top = 6
            Width = 58
            Height = 26
            Cursor = crHandPoint
            Caption = #44160'  '#49353
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnSearch_psClick
          end
          object btnExcel_ps: TcxButton
            Left = 657
            Top = 6
            Width = 58
            Height = 26
            Cursor = crHandPoint
            Caption = #50641#49472#45796#50868
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnExcel_psClick
          end
          object cxLabel91: TcxLabel
            Left = 726
            Top = 11
            Caption = #8251' '#49688#51221' : '#45236#50669' '#45908#48660#53364#47533' '#54980' '#49688#51221' '#48260#53948' '#53364#47533
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorY = 19
          end
        end
        object cxGrdPBX_ps: TcxGrid
          Left = 0
          Top = 74
          Width = 1237
          Height = 559
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 1
          LookAndFeel.NativeStyle = False
          object cxGrdVPBX_ps: TcxGridBandedTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.CustomizeDialog = False
            OnCellDblClick = cxGrdVPBX_psCellDblClick
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
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
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnHorzSizing = False
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.BandMoving = False
            OptionsCustomize.BandSizing = False
            OptionsCustomize.ColumnVertSizing = False
            OptionsData.Editing = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.NoDataToDisplayInfoText = '  '
            OptionsView.DataRowHeight = 40
            OptionsView.GroupByBox = False
            OptionsView.Header = False
            OptionsView.HeaderHeight = 20
            OptionsView.BandHeaderHeight = 40
            Bands = <
              item
                Caption = 'IDX'
                Width = 40
              end
              item
                Caption = #49436#48708#49828' '#49345#54408
                Width = 200
              end
              item
                Caption = #49436#48708#49828' '#54637#47785
                Width = 217
              end
              item
                Caption = #49324#50857' '#50976#47924
                Width = 80
              end
              item
                Caption = #49884#51089#49884#44036'('#44592#44036','#51064#50896#49688')'
                Width = 147
              end
              item
                Caption = #51333#47308#49884#44036
                Width = 146
              end
              item
                Caption = #51204#54868#48264#54840
                Width = 107
              end
              item
                Caption = #45824#44592'('#52488')'
                Width = 88
              end>
            object cxGridBandedColumn170: TcxGridBandedColumn
              Caption = #44396#48516
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn171: TcxGridBandedColumn
              Caption = #49436#48708#49828#49345#54408
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.Moving = False
              Options.Sorting = False
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn172: TcxGridBandedColumn
              Caption = #49436#48708#49828#54637#47785
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn173: TcxGridBandedColumn
              Caption = #49324#50857#50976#47924
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DropDownListStyle = lsEditFixedList
              Properties.Items.Strings = (
                #49324#50857#50504#54632
                #49324#50857#54632)
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn174: TcxGridBandedColumn
              Caption = #49884#51089#44592#44036
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn175: TcxGridBandedColumn
              Caption = #51333#47308#49884#44036
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn176: TcxGridBandedColumn
              Caption = #51204#54868#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn177: TcxGridBandedColumn
              Caption = #50976#54952#44592#44036
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 7
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrdVPBX_psColumn1: TcxGridBandedColumn
              Caption = 'ItemCode'
              Visible = False
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
          end
          object cxGridLevel22: TcxGridLevel
            GridView = cxGrdVPBX_ps
          end
        end
        object cxGroupBox20: TcxGroupBox
          Left = 0
          Top = 40
          Align = alTop
          TabOrder = 2
          Height = 32
          Width = 1237
          object Shape89: TShape
            Left = 3
            Top = 4
            Width = 39
            Height = 24
            Brush.Color = 13295856
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape90: TShape
            Left = 43
            Top = 4
            Width = 199
            Height = 24
            Brush.Color = 13295856
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape91: TShape
            Left = 243
            Top = 4
            Width = 215
            Height = 24
            Brush.Color = 13295856
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape92: TShape
            Left = 539
            Top = 4
            Width = 145
            Height = 24
            Brush.Color = 13295856
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape93: TShape
            Left = 685
            Top = 4
            Width = 145
            Height = 24
            Brush.Color = 13295856
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape94: TShape
            Left = 831
            Top = 4
            Width = 106
            Height = 24
            Brush.Color = 13295856
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape95: TShape
            Left = 938
            Top = 4
            Width = 88
            Height = 24
            Brush.Color = 13295856
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object btnUp_ps: TcxButton
            Left = 1035
            Top = 3
            Width = 58
            Height = 26
            Cursor = crHandPoint
            Caption = #49688#51221
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnUp_psClick
          end
          object lblIdx_ps: TcxLabel
            Left = 17
            Top = 8
            Caption = '1'
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 22
            AnchorY = 16
          end
          object lblpdt_ps: TcxLabel
            Left = 131
            Top = 8
            Caption = 'Basic'
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 148
            AnchorY = 16
          end
          object lblItNm_ps: TcxLabel
            Left = 250
            Top = 8
            Caption = #45936#51060#53552#48288#51060#49828' '#48372#50504
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorY = 16
          end
          object cbUse_ps: TcxComboBox
            Left = 458
            Top = 3
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #49324#50857#50504#54632
              #49324#50857#54632)
            Properties.OnChange = cbGrpNm1PropertiesChange
            Style.Color = 13295856
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.Color = 13295856
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 4
            Height = 26
            Width = 81
          end
          object lblGu1: TcxLabel
            Left = 563
            Top = 8
            Caption = #49884#44036#51077#47141
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 589
            AnchorY = 16
          end
          object meGu1: TcxMaskEdit
            Left = 636
            Top = 6
            Properties.Alignment.Horz = taCenter
            Properties.EditMask = '!99:99;1;_'
            TabOrder = 6
            Text = '  :  '
            Width = 45
          end
          object lblGu2: TcxLabel
            Left = 710
            Top = 8
            Caption = #49884#44036#51077#47141
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 736
            AnchorY = 16
          end
          object meGu2: TcxMaskEdit
            Left = 782
            Top = 6
            Properties.Alignment.Horz = taCenter
            Properties.EditMask = '!99:99;1;_'
            TabOrder = 8
            Text = '00:00'
            Width = 45
          end
          object meGu3: TcxTextEdit
            Left = 835
            Top = 6
            TabOrder = 9
            Text = 'meGu3'
            Width = 99
          end
          object cuGu4: TcxCurrencyEdit
            Left = 939
            Top = 6
            Properties.DisplayFormat = ',0.;-,0.'
            TabOrder = 10
            Width = 37
          end
          object lblGu4: TcxLabel
            Left = 974
            Top = 8
            Caption = #45824#44592'('#52488')'
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 1000
            AnchorY = 16
          end
        end
      end
    end
    object cxTabSheet18: TcxTabSheet
      Caption = #47704#53944#49444#51221
      ImageIndex = 0
      object PnlMainA8: TPanel
        Left = 0
        Top = 0
        Width = 1237
        Height = 633
        Align = alClient
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Shape97: TShape
          Left = 0
          Top = 0
          Width = 1237
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = -6
          ExplicitTop = 23
          ExplicitWidth = 305
        end
        object PnlMainA8_1: TPanel
          Left = 0
          Top = 2
          Width = 1237
          Height = 223
          Align = alTop
          BevelOuter = bvNone
          Caption = 'PnlMainA8_1'
          ParentBackground = False
          TabOrder = 0
          object Shape43: TShape
            Left = 0
            Top = 41
            Width = 1237
            Height = 2
            Align = alTop
            Pen.Style = psClear
            ExplicitTop = 49
          end
          object cxGridA8_1: TcxGrid
            Left = 0
            Top = 43
            Width = 1237
            Height = 180
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            object cxGridPBX8_1: TcxGridDBTableView
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
              OnCellDblClick = cxGridPBX8_1CellDblClick
              DataController.DataModeController.SmartRefresh = True
              DataController.Filter.Options = [fcoShowOperatorDescription, fcoSoftNull]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              DataController.OnSortingChanged = cxGridPBX8_1DataControllerSortingChanged
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
              OptionsView.FocusRect = False
              OptionsView.NoDataToDisplayInfoText = '  '
              OptionsView.DataRowHeight = 22
              OptionsView.ExpandButtonsForEmptyDetails = False
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 23
              OnColumnHeaderClick = cxGridPBX8_1ColumnHeaderClick
              object cxGridPBX8_1Column1: TcxGridDBColumn
                DataBinding.FieldName = 'No'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 54
              end
              object cxGridPBX8_1Column2: TcxGridDBColumn
                DataBinding.FieldName = #47704#53944#44396#48516
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                FooterAlignmentHorz = taRightJustify
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 123
              end
              object cxGridPBX8_1Column3: TcxGridDBColumn
                DataBinding.FieldName = #47704#53944#51060#47492
                PropertiesClassName = 'TcxLabelProperties'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 300
              end
              object cxGridPBX8_1Column4: TcxGridDBColumn
                DataBinding.FieldName = #47704#53944#49324#50857#50668#48512
                PropertiesClassName = 'TcxLabelProperties'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 78
              end
            end
            object cxGridLevel24: TcxGridLevel
              GridView = cxGridPBX8_1
            end
          end
          object cxGroupBox29: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            TabOrder = 1
            Height = 41
            Width = 1237
            object Shape10: TShape
              Left = 9
              Top = 8
              Width = 232
              Height = 24
              Brush.Color = 12566463
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object cxLabel9: TcxLabel
              Left = 69
              Top = 13
              Caption = #49884#49828#53596#47704#53944' '#49444#51221
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
              AnchorX = 120
              AnchorY = 21
            end
            object btn_8: TcxButton
              Left = 558
              Top = 8
              Width = 77
              Height = 26
              Cursor = crHandPoint
              Caption = #44160'  '#49353
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 1
              OnClick = btn_8Click
            end
          end
        end
        object PnlMainA8_2: TPanel
          Left = 0
          Top = 225
          Width = 1237
          Height = 408
          Align = alClient
          Caption = 'PnlMainA8_2'
          ParentBackground = False
          TabOrder = 1
          object Shape48: TShape
            Left = 1
            Top = 84
            Width = 1235
            Height = 2
            Align = alTop
            Pen.Style = psClear
            ExplicitLeft = 0
            ExplicitTop = 49
            ExplicitWidth = 1237
          end
          object cxGridA8_2: TcxGrid
            Left = 1
            Top = 86
            Width = 1235
            Height = 321
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            object cxGridPBX8_2: TcxGridDBTableView
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
              OnCellClick = cxGridPBX8_2CellClick
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
              OptionsView.FocusRect = False
              OptionsView.NoDataToDisplayInfoText = '  '
              OptionsView.DataRowHeight = 22
              OptionsView.ExpandButtonsForEmptyDetails = False
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 23
              object cxGridDBColumn41: TcxGridDBColumn
                Caption = #49440#53469
                PropertiesClassName = 'TcxCheckBoxProperties'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 54
              end
              object cxGridDBColumn42: TcxGridDBColumn
                DataBinding.FieldName = #47704#53944#47749
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 160
              end
              object cxGridDBColumn44: TcxGridDBColumn
                DataBinding.FieldName = #47704#53944#51060#47492
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 212
              end
              object cxGridDBColumn45: TcxGridDBColumn
                DataBinding.FieldName = #47704#53944#46307#44592
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    ImageIndex = 55
                    Kind = bkGlyph
                  end>
                Properties.Images = Frm_Main.cxSmallImages
                Properties.ViewStyle = vsButtonsAutoWidth
                Properties.OnButtonClick = cxGridDBColumn45PropertiesButtonClick
                HeaderAlignmentHorz = taCenter
                Options.ShowEditButtons = isebAlways
                Width = 62
              end
            end
            object cxGridLevel25: TcxGridLevel
              GridView = cxGridPBX8_2
            end
          end
          object cxGroupBox30: TcxGroupBox
            Left = 1
            Top = 1
            Align = alTop
            TabOrder = 1
            Height = 83
            Width = 1235
            object Shape44: TShape
              Left = 8
              Top = 9
              Width = 89
              Height = 64
              Brush.Color = 12566463
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object Shape98: TShape
              Left = 501
              Top = 14
              Width = 124
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object Shape99: TShape
              Left = 501
              Top = 45
              Width = 124
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object cxLabel11: TcxLabel
              Left = 20
              Top = 33
              Caption = #47553#44256' '#49444#51221
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
              AnchorX = 52
              AnchorY = 41
            end
            object pnl_MediaBase: TPanel
              Left = 108
              Top = 9
              Width = 384
              Height = 64
              BevelOuter = bvNone
              TabOrder = 1
            end
            object btn_8_1: TcxButton
              Left = 826
              Top = 14
              Width = 77
              Height = 55
              Cursor = crHandPoint
              Caption = #44160'  '#49353
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 2
              OnClick = btn_8_1Click
            end
            object btn_8_2: TcxButton
              Tag = 1
              Left = 905
              Top = 14
              Width = 83
              Height = 26
              Cursor = crHandPoint
              Caption = #52628#44032
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 3
              OnClick = btn_8_2Click
            end
            object btn_8_4: TcxButton
              Tag = 1
              Left = 905
              Top = 44
              Width = 83
              Height = 26
              Cursor = crHandPoint
              Caption = #49325#51228
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 4
              OnClick = btn_8_4Click
            end
            object btn_8_5: TcxButton
              Left = 990
              Top = 14
              Width = 77
              Height = 55
              Cursor = crHandPoint
              Caption = #47704#53944#44081#49888
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 5
              OnClick = btn_8_5Click
            end
            object cb_8_1: TcxComboBox
              Left = 576
              Top = 13
              AutoSize = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'IVR '#49884#49828#53596' '#47704#53944
                'IVR '#47704#53944
                'CTI '#47704#53944
                #54596#53552#47553' '#47704#53944
                #49688#49888#44144#48512' '#47704#53944
                'Outbound '#52972#47084#47553)
              Properties.OnChange = cb_8_1PropertiesChange
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
              Text = 'IVR '#49884#49828#53596' '#47704#53944
              Height = 26
              Width = 248
            end
            object cb_8_2: TcxComboBox
              Left = 576
              Top = 44
              AutoSize = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'IVR '#49884#49828#53596' '#47704#53944
                'IVR '#47704#53944
                'CTI '#47704#53944
                #54596#53552#47553' '#47704#53944
                #49688#49888#44144#48512' '#47704#53944
                'Outbound '#52972#47084#47553)
              Properties.OnChange = cb_8_2PropertiesChange
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
              Text = 'IVR '#49884#49828#53596' '#47704#53944
              Height = 26
              Width = 248
            end
            object cxLabel54: TcxLabel
              Left = 505
              Top = 19
              Caption = #47704#53944#53440#51077
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 531
              AnchorY = 27
            end
            object cxLabel75: TcxLabel
              Left = 505
              Top = 50
              Caption = #47704#53944#44396#48516
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 531
              AnchorY = 58
            end
          end
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = #54840#48516#48176#44428#54620#49444#51221
      ImageIndex = 13
      object PnlMainA9: TPanel
        Left = 0
        Top = 0
        Width = 1237
        Height = 633
        Align = alClient
        BevelOuter = bvNone
        Caption = 'PnlMainA8_2'
        ParentBackground = False
        TabOrder = 0
        object Panel14: TPanel
          Left = 0
          Top = 0
          Width = 1237
          Height = 43
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object cxGroupBox22: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            TabOrder = 0
            Height = 41
            Width = 1237
            object btnSearch_qe: TcxButton
              Left = 594
              Top = 6
              Width = 77
              Height = 29
              Cursor = crHandPoint
              Caption = #44160'  '#49353
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 0
              OnClick = btnSearch_qeClick
            end
            object btnUpdate_qe: TcxButton
              Tag = 1
              Left = 834
              Top = 6
              Width = 77
              Height = 30
              Cursor = crHandPoint
              Caption = #44428#54620' '#51200#51109
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 1
              OnClick = btnUpdate_qeClick
            end
            object btnCopy_qe: TcxButton
              Left = 674
              Top = 6
              Width = 77
              Height = 30
              Cursor = crHandPoint
              Caption = #44428#54620#48373#49324
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 2
              OnClick = btnCopy_qeClick
            end
            object btnPaste_qe: TcxButton
              Left = 754
              Top = 6
              Width = 77
              Height = 30
              Cursor = crHandPoint
              Caption = #44428#54620#51201#50857
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              Enabled = False
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 3
              OnClick = btnPaste_qeClick
            end
          end
        end
        object lst_ID: TcxListBox
          Left = 1084
          Top = 102
          Width = 217
          Height = 92
          ImeName = 'Microsoft Office IME 2007'
          ItemHeight = 15
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = #44404#47548
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          StyleFocused.Color = 11796479
          TabOrder = 1
          Visible = False
          OnDblClick = lst_IDDblClick
          OnExit = lst_IDExit
          OnKeyDown = lst_IDKeyDown
        end
        object Panel21: TPanel
          Left = 0
          Top = 43
          Width = 1237
          Height = 590
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          object Panel15: TPanel
            Left = 215
            Top = 0
            Width = 1022
            Height = 590
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            object Shape125: TShape
              Left = 0
              Top = 26
              Width = 1022
              Height = 2
              Align = alTop
              Brush.Style = bsClear
              Pen.Style = psClear
              ExplicitLeft = -2
              ExplicitTop = 34
              ExplicitWidth = 888
            end
            object lblSelAgentId_s: TcxLabel
              Left = 0
              Top = 0
              Align = alTop
              AutoSize = False
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsSingle
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548#52404
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = False
              Style.TextColor = 13719147
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Height = 26
              Width = 1022
              AnchorY = 13
            end
            object lblSelGroupId: TcxLabel
              Left = 808
              Top = 5
              Caption = 'lblSelGroupId'
              Visible = False
            end
            object cxGridA9: TcxGrid
              Left = 0
              Top = 28
              Width = 1022
              Height = 562
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              TabOrder = 2
              LookAndFeel.NativeStyle = False
              object cxGridPBX9: TcxGridBandedTableView
                Navigator.Buttons.CustomButtons = <>
                FilterBox.CustomizeDialog = False
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
                    Caption = #49440#53469
                    Width = 40
                    OnHeaderClick = cxGridPBX9Bands0HeaderClick
                  end
                  item
                    Caption = #54840#48516#48176#44536#47353
                    Width = 100
                  end
                  item
                    Caption = #49436#48708#49828#47749
                    Width = 200
                  end
                  item
                    Caption = #45824#54364#48264#54840
                    Width = 130
                  end
                  item
                    Caption = #52265#49888#48264#54840
                    Width = 130
                  end
                  item
                    Caption = #50864#49440#49692#50948
                    Width = 70
                  end>
                object cxGridBandedColumn192: TcxGridBandedColumn
                  Caption = #49440#53469
                  DataBinding.ValueType = 'Integer'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.Alignment = taCenter
                  FooterAlignmentHorz = taRightJustify
                  HeaderAlignmentHorz = taCenter
                  Options.Moving = False
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn193: TcxGridBandedColumn
                  Caption = #54840#48516#48176#44536#47353
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  FooterAlignmentHorz = taRightJustify
                  HeaderAlignmentHorz = taCenter
                  MinWidth = 64
                  Options.Editing = False
                  Options.Moving = False
                  Options.Sorting = False
                  Position.BandIndex = 1
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn194: TcxGridBandedColumn
                  Caption = #49436#48708#49828#47749
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 2
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn195: TcxGridBandedColumn
                  Caption = #45824#54364#48264#54840
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 3
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn196: TcxGridBandedColumn
                  Caption = #52265#49888#48264#54840
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 4
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn197: TcxGridBandedColumn
                  Caption = #50864#49440#49692#50948
                  PropertiesClassName = 'TcxLabelProperties'
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 5
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
              end
              object cxGridLevel30: TcxGridLevel
                GridView = cxGridPBX9
              end
            end
          end
          object Panel22: TPanel
            Left = 0
            Top = 0
            Width = 209
            Height = 590
            Align = alLeft
            BevelOuter = bvNone
            Constraints.MinWidth = 200
            TabOrder = 0
            object cxGroupBox23: TcxGroupBox
              Left = 0
              Top = 0
              Align = alTop
              TabOrder = 0
              DesignSize = (
                209
                241)
              Height = 241
              Width = 209
              object edtGrpNm_qe_s: TcxTextEdit
                Left = 1
                Top = 2
                OnFocusChanged = edtGrpNm_qe_sFocusChanged
                Anchors = [akLeft, akTop, akRight]
                AutoSize = False
                Properties.ImeMode = imSHanguel
                Properties.MaxLength = 100
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.Color = 11796479
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 0
                OnEnter = edtGrpNm_qe_sEnter
                OnExit = edtGrpNm_qe_sExit
                OnKeyDown = edtGrpNm_qe_sKeyDown
                Height = 26
                Width = 173
              end
              object lbGrpNm9: TcxLabel
                Left = 6
                Top = 7
                Cursor = crIBeam
                Caption = #49345#45812#44536#47353#47749'/ID'#47196' '#44160#49353
                Style.TextColor = 10329501
                Transparent = True
                OnClick = lbGrpNm9Click
              end
              object cxGrdPBX_grp_qe_s: TcxGrid
                Left = 3
                Top = 30
                Width = 203
                Height = 208
                Align = alBottom
                Anchors = [akLeft, akTop, akRight, akBottom]
                BevelInner = bvNone
                BevelOuter = bvNone
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #44404#47548
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                LookAndFeel.NativeStyle = False
                object cxGrdVPBX_grp_qe_s: TcxGridDBTableView
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
                  OnCellDblClick = cxGrdVPBX_grp_qe_sCellDblClick
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
                  OptionsSelection.HideFocusRectOnExit = False
                  OptionsView.NoDataToDisplayInfoText = '  '
                  OptionsView.DataRowHeight = 22
                  OptionsView.ExpandButtonsForEmptyDetails = False
                  OptionsView.GridLineColor = clSilver
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderHeight = 23
                  object cxGridDBColumn7: TcxGridDBColumn
                    DataBinding.FieldName = #49345#45812#44536#47353
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Vert = taVCenter
                    HeaderAlignmentHorz = taCenter
                    Options.Editing = False
                    Width = 175
                  end
                  object cxGridDBColumn8: TcxGridDBColumn
                    DataBinding.FieldName = #44536#47353'ID'
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Vert = taVCenter
                    Visible = False
                    HeaderAlignmentHorz = taCenter
                    Options.Editing = False
                    Width = 197
                  end
                  object cxGrdVPBX_grp_qe_sColumn1: TcxGridDBColumn
                    DataBinding.FieldName = #44536#47353#47749
                    PropertiesClassName = 'TcxLabelProperties'
                    Visible = False
                  end
                end
                object cxGridLevel23: TcxGridLevel
                  GridView = cxGrdVPBX_grp_qe_s
                end
              end
              object btnSch_grp_qe_s: TcxButton
                Left = 174
                Top = 3
                Width = 32
                Height = 24
                Cursor = crHandPoint
                Anchors = [akTop, akRight]
                Caption = #44160#49353
                Colors.Normal = 16773362
                Colors.Pressed = 16644080
                LookAndFeel.Kind = lfFlat
                LookAndFeel.NativeStyle = False
                LookAndFeel.SkinName = 'Sharp'
                OptionsImage.Layout = blGlyphBottom
                TabOrder = 1
                OnClick = btnSch_grp_qe_sClick
              end
            end
            object cxGroupBox24: TcxGroupBox
              Left = 0
              Top = 247
              Align = alClient
              TabOrder = 1
              DesignSize = (
                209
                343)
              Height = 343
              Width = 209
              object edtAgtNm_qe_s: TcxTextEdit
                Left = 1
                Top = 2
                OnFocusChanged = edtAgtNm_qe_sFocusChanged
                Anchors = [akLeft, akTop, akRight]
                AutoSize = False
                Properties.ImeMode = imSHanguel
                Properties.MaxLength = 100
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.Color = 11796479
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 0
                OnEnter = edtAgtNm_qe_sEnter
                OnExit = edtAgtNm_qe_sExit
                OnKeyDown = edtAgtNm_qe_sKeyDown
                Height = 26
                Width = 173
              end
              object lbAgtNm9: TcxLabel
                Left = 6
                Top = 7
                Cursor = crIBeam
                Caption = #49345#45812#50896#47749'/ID'#47196' '#44160#49353
                Style.TextColor = 10329501
                Transparent = True
                OnClick = lbAgtNm9Click
              end
              object cxGrdPBX_agt_qe_s: TcxGrid
                Left = 3
                Top = 29
                Width = 203
                Height = 311
                Align = alBottom
                Anchors = [akLeft, akTop, akRight, akBottom]
                BevelInner = bvNone
                BevelOuter = bvNone
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #44404#47548
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                LookAndFeel.NativeStyle = False
                object cxGrdVPBX_agt_qe_s: TcxGridDBTableView
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
                  OnCellDblClick = cxGrdVPBX_agt_qe_sCellDblClick
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
                  OptionsSelection.CellSelect = False
                  OptionsSelection.HideFocusRectOnExit = False
                  OptionsView.NoDataToDisplayInfoText = '  '
                  OptionsView.DataRowHeight = 22
                  OptionsView.ExpandButtonsForEmptyDetails = False
                  OptionsView.GridLineColor = clSilver
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderHeight = 23
                  object cxGridDBColumn9: TcxGridDBColumn
                    DataBinding.FieldName = #49345#45812#50896
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Vert = taVCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 175
                  end
                  object cxGridDBColumn10: TcxGridDBColumn
                    DataBinding.FieldName = #49345#45812#50896'ID'
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Vert = taVCenter
                    Visible = False
                    HeaderAlignmentHorz = taCenter
                    Options.Editing = False
                    Width = 197
                  end
                  object cxGrdVPBX_agt_qe_sColumn1: TcxGridDBColumn
                    DataBinding.FieldName = #49345#45812#50896#47749
                    PropertiesClassName = 'TcxLabelProperties'
                    Visible = False
                  end
                end
                object cxGridLevel29: TcxGridLevel
                  GridView = cxGrdVPBX_agt_qe_s
                end
              end
              object btnSch_agt_qe_s: TcxButton
                Left = 174
                Top = 4
                Width = 32
                Height = 24
                Cursor = crHandPoint
                Anchors = [akTop, akRight]
                Caption = #44160#49353
                Colors.Normal = 16773362
                Colors.Pressed = 16644080
                LookAndFeel.Kind = lfFlat
                LookAndFeel.NativeStyle = False
                LookAndFeel.SkinName = 'Sharp'
                OptionsImage.Layout = blGlyphBottom
                TabOrder = 1
                OnClick = btnSch_agt_qe_sClick
              end
            end
            object cxSplitter1: TcxSplitter
              Left = 0
              Top = 241
              Width = 209
              Height = 6
              AlignSplitter = salTop
            end
          end
          object cxSplitter2: TcxSplitter
            Left = 209
            Top = 0
            Width = 6
            Height = 590
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #54840#48516#48176#50864#49440#49692#50948#49444#51221
      ImageIndex = 14
      object PnlMainA10: TPanel
        Left = 0
        Top = 0
        Width = 1237
        Height = 633
        Align = alClient
        BevelOuter = bvNone
        Caption = 'PnlMainA8_2'
        ParentBackground = False
        TabOrder = 0
        object Panel17: TPanel
          Left = 0
          Top = 0
          Width = 1237
          Height = 43
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object cxGroupBox25: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            TabOrder = 0
            Height = 41
            Width = 1237
            object btnSearch_qe_p: TcxButton
              Left = 594
              Top = 6
              Width = 77
              Height = 29
              Cursor = crHandPoint
              Caption = #44160'  '#49353
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 0
              OnClick = btnSearch_qe_pClick
            end
            object btnDelete_qe_p: TcxButton
              Tag = 1
              Left = 834
              Top = 6
              Width = 77
              Height = 30
              Cursor = crHandPoint
              Caption = #49325' '#51228
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 1
              OnClick = btnDelete_qe_pClick
            end
            object btnInsert_qe_p: TcxButton
              Left = 674
              Top = 6
              Width = 77
              Height = 30
              Cursor = crHandPoint
              Caption = #52628' '#44032
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 2
              OnClick = btnInsert_qe_pClick
            end
            object btnUpdate_qe_p: TcxButton
              Left = 754
              Top = 6
              Width = 77
              Height = 30
              Cursor = crHandPoint
              Caption = #49688' '#51221
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 3
              OnClick = btnUpdate_qe_pClick
            end
          end
        end
        object cxListBox1: TcxListBox
          Left = 1084
          Top = 102
          Width = 217
          Height = 92
          ImeName = 'Microsoft Office IME 2007'
          ItemHeight = 15
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = #44404#47548
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          StyleFocused.Color = 11796479
          TabOrder = 1
          Visible = False
          OnDblClick = lst_IDDblClick
          OnExit = lst_IDExit
          OnKeyDown = lst_IDKeyDown
        end
        object Panel18: TPanel
          Left = 0
          Top = 43
          Width = 1237
          Height = 590
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          object Panel19: TPanel
            Left = 430
            Top = 0
            Width = 807
            Height = 590
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            object Shape127: TShape
              Left = 0
              Top = 54
              Width = 807
              Height = 2
              Align = alTop
              Brush.Style = bsClear
              Pen.Style = psClear
              ExplicitLeft = -2
              ExplicitTop = 34
              ExplicitWidth = 888
            end
            object Shape128: TShape
              Left = 0
              Top = 26
              Width = 807
              Height = 2
              Align = alTop
              Brush.Style = bsClear
              Pen.Style = psClear
              ExplicitLeft = -2
              ExplicitTop = 18
              ExplicitWidth = 674
            end
            object lblSelAgent_p: TcxLabel
              Left = 0
              Top = 28
              Align = alTop
              AutoSize = False
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsSingle
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548#52404
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = False
              Style.TextColor = 13719147
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Height = 26
              Width = 807
              AnchorY = 41
            end
            object cxGridA10: TcxGrid
              Left = 0
              Top = 56
              Width = 807
              Height = 534
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              TabOrder = 1
              LookAndFeel.NativeStyle = False
              object cxGridPBX10: TcxGridBandedTableView
                Navigator.Buttons.CustomButtons = <>
                FilterBox.CustomizeDialog = False
                OnCellDblClick = cxGridPBX10CellDblClick
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
                    Caption = #49440#53469
                    Width = 40
                    OnHeaderClick = cxGridPBX10Bands0HeaderClick
                  end
                  item
                    Caption = #49345#45812#50896#47749
                    Width = 200
                  end
                  item
                    Caption = #50864#49440#49692#50948
                    Width = 100
                  end>
                object cxGridBandedColumn198: TcxGridBandedColumn
                  Caption = #49440#53469
                  DataBinding.ValueType = 'Integer'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.Alignment = taCenter
                  FooterAlignmentHorz = taRightJustify
                  HeaderAlignmentHorz = taCenter
                  Options.Moving = False
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn199: TcxGridBandedColumn
                  Caption = #49345#45812#50896#47749
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  FooterAlignmentHorz = taRightJustify
                  HeaderAlignmentHorz = taCenter
                  MinWidth = 64
                  Options.Editing = False
                  Options.Moving = False
                  Options.Sorting = False
                  Width = 200
                  Position.BandIndex = 1
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn200: TcxGridBandedColumn
                  Caption = #50864#49440#49692#50948
                  PropertiesClassName = 'TcxLabelProperties'
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = 2
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn201: TcxGridBandedColumn
                  Caption = #49345#45812#50896'ID'
                  PropertiesClassName = 'TcxLabelProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Moving = False
                  Position.BandIndex = -1
                  Position.ColIndex = -1
                  Position.RowIndex = -1
                end
              end
              object cxGridLevel26: TcxGridLevel
                GridView = cxGridPBX10
              end
            end
            object lblSelExten_p: TcxLabel
              Left = 0
              Top = 0
              Align = alTop
              AutoSize = False
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsSingle
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548#52404
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = False
              Style.TextColor = 13719147
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Height = 26
              Width = 807
              AnchorY = 13
            end
            object lblSelExtenNo_p: TcxLabel
              Left = 572
              Top = 6
              Caption = 'lblSelExtenNo_p'
              Visible = False
            end
          end
          object Panel20: TPanel
            Left = 215
            Top = 0
            Width = 209
            Height = 590
            Align = alLeft
            BevelOuter = bvNone
            Constraints.MinWidth = 200
            TabOrder = 0
            object cxGroupBox26: TcxGroupBox
              Left = 0
              Top = 0
              Align = alTop
              TabOrder = 0
              DesignSize = (
                209
                241)
              Height = 241
              Width = 209
              object edtGrpNm_qe_p: TcxTextEdit
                Left = 1
                Top = 2
                OnFocusChanged = edtGrpNm_qe_pFocusChanged
                Anchors = [akLeft, akTop, akRight]
                AutoSize = False
                Properties.ImeMode = imSHanguel
                Properties.MaxLength = 100
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.Color = 11796479
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 0
                OnEnter = edtGrpNm_qe_pEnter
                OnExit = edtGrpNm_qe_pExit
                OnKeyDown = edtGrpNm_qe_pKeyDown
                Height = 26
                Width = 173
              end
              object lbGrpNm10: TcxLabel
                Left = 6
                Top = 7
                Cursor = crIBeam
                Caption = #49345#45812#44536#47353#47749'/ID'#47196' '#44160#49353
                Style.TextColor = 10329501
                Transparent = True
                OnClick = lbGrpNm10Click
              end
              object cxGrdPBX_grp_qe_p: TcxGrid
                Left = 3
                Top = 30
                Width = 203
                Height = 208
                Align = alBottom
                Anchors = [akLeft, akTop, akRight, akBottom]
                BevelInner = bvNone
                BevelOuter = bvNone
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #44404#47548
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                LookAndFeel.NativeStyle = False
                object cxGrdVPBX_grp_qe_p: TcxGridDBTableView
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
                  OnCellDblClick = cxGrdVPBX_grp_qe_pCellDblClick
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
                  OptionsSelection.HideFocusRectOnExit = False
                  OptionsView.NoDataToDisplayInfoText = '  '
                  OptionsView.DataRowHeight = 22
                  OptionsView.ExpandButtonsForEmptyDetails = False
                  OptionsView.GridLineColor = clSilver
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderHeight = 23
                  object cxGridDBColumn11: TcxGridDBColumn
                    DataBinding.FieldName = #49345#45812#44536#47353
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Vert = taVCenter
                    HeaderAlignmentHorz = taCenter
                    Options.Editing = False
                    Width = 175
                  end
                  object cxGridDBColumn12: TcxGridDBColumn
                    DataBinding.FieldName = #44536#47353'ID'
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Vert = taVCenter
                    Visible = False
                    HeaderAlignmentHorz = taCenter
                    Options.Editing = False
                    Width = 197
                  end
                  object cxGridDBColumn13: TcxGridDBColumn
                    DataBinding.FieldName = #44536#47353#47749
                    PropertiesClassName = 'TcxLabelProperties'
                    Visible = False
                  end
                end
                object cxGridLevel27: TcxGridLevel
                  GridView = cxGrdVPBX_grp_qe_p
                end
              end
              object btnSch_grp_qe_p: TcxButton
                Left = 174
                Top = 3
                Width = 32
                Height = 24
                Cursor = crHandPoint
                Anchors = [akTop, akRight]
                Caption = #44160#49353
                Colors.Normal = 16773362
                Colors.Pressed = 16644080
                LookAndFeel.Kind = lfFlat
                LookAndFeel.NativeStyle = False
                LookAndFeel.SkinName = 'Sharp'
                OptionsImage.Layout = blGlyphBottom
                TabOrder = 1
                OnClick = btnSch_grp_qe_pClick
              end
            end
            object cxGroupBox27: TcxGroupBox
              Left = 0
              Top = 247
              Align = alClient
              TabOrder = 1
              DesignSize = (
                209
                343)
              Height = 343
              Width = 209
              object edtAgtNm_qe_p: TcxTextEdit
                Left = 1
                Top = 2
                OnFocusChanged = edtAgtNm_qe_pFocusChanged
                Anchors = [akLeft, akTop, akRight]
                AutoSize = False
                Properties.ImeMode = imSHanguel
                Properties.MaxLength = 100
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.Color = 11796479
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 0
                OnEnter = edtAgtNm_qe_pEnter
                OnExit = edtAgtNm_qe_pExit
                OnKeyDown = edtAgtNm_qe_pKeyDown
                Height = 26
                Width = 173
              end
              object lbAgtNm10: TcxLabel
                Left = 6
                Top = 7
                Cursor = crIBeam
                Caption = #49345#45812#50896#47749'/ID'#47196' '#44160#49353
                Style.TextColor = 10329501
                Transparent = True
                OnClick = lbAgtNm10Click
              end
              object cxGrdPBX_agt_qe_p: TcxGrid
                Left = 3
                Top = 29
                Width = 203
                Height = 311
                Align = alBottom
                Anchors = [akLeft, akTop, akRight, akBottom]
                BevelInner = bvNone
                BevelOuter = bvNone
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #44404#47548
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                LookAndFeel.NativeStyle = False
                object cxGrdVPBX_agt_qe_p: TcxGridDBTableView
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
                  OnCellDblClick = cxGrdVPBX_agt_qe_pCellDblClick
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
                  OptionsSelection.CellSelect = False
                  OptionsSelection.HideFocusRectOnExit = False
                  OptionsView.NoDataToDisplayInfoText = '  '
                  OptionsView.DataRowHeight = 22
                  OptionsView.ExpandButtonsForEmptyDetails = False
                  OptionsView.GridLineColor = clSilver
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderHeight = 23
                  object cxGridDBColumn14: TcxGridDBColumn
                    DataBinding.FieldName = #49345#45812#50896
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Vert = taVCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 175
                  end
                  object cxGridDBColumn15: TcxGridDBColumn
                    DataBinding.FieldName = #49345#45812#50896'ID'
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Vert = taVCenter
                    Visible = False
                    HeaderAlignmentHorz = taCenter
                    Options.Editing = False
                    Width = 197
                  end
                  object cxGridDBColumn16: TcxGridDBColumn
                    DataBinding.FieldName = #49345#45812#50896#47749
                    PropertiesClassName = 'TcxLabelProperties'
                    Visible = False
                  end
                end
                object cxGridLevel31: TcxGridLevel
                  GridView = cxGrdVPBX_agt_qe_p
                end
              end
              object btnSch_agt_qe_p: TcxButton
                Left = 174
                Top = 3
                Width = 32
                Height = 24
                Cursor = crHandPoint
                Anchors = [akTop, akRight]
                Caption = #44160#49353
                Colors.Normal = 16773362
                Colors.Pressed = 16644080
                LookAndFeel.Kind = lfFlat
                LookAndFeel.NativeStyle = False
                LookAndFeel.SkinName = 'Sharp'
                OptionsImage.Layout = blGlyphBottom
                TabOrder = 1
                OnClick = btnSch_agt_qe_pClick
              end
            end
            object cxSplitter3: TcxSplitter
              Left = 0
              Top = 241
              Width = 209
              Height = 6
              AlignSplitter = salTop
            end
          end
          object cxSplitter4: TcxSplitter
            Left = 209
            Top = 0
            Width = 6
            Height = 590
          end
          object Panel23: TPanel
            Left = 0
            Top = 0
            Width = 209
            Height = 590
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            object cxGroupBox28: TcxGroupBox
              Left = 0
              Top = 0
              Align = alClient
              TabOrder = 0
              DesignSize = (
                209
                590)
              Height = 590
              Width = 209
              object edt_Keynumber10: TcxTextEdit
                Left = 4
                Top = 2
                OnFocusChanged = edt_Keynumber10FocusChanged
                Anchors = [akLeft, akTop, akRight]
                AutoSize = False
                Properties.ImeMode = imSHanguel
                Properties.MaxLength = 100
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.Color = 11796479
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 0
                OnEnter = edt_Keynumber10Enter
                OnExit = edt_Keynumber10Exit
                OnKeyDown = edt_Keynumber10KeyDown
                Height = 26
                Width = 173
              end
              object lbKeynumber10: TcxLabel
                Left = 10
                Top = 7
                Cursor = crIBeam
                Caption = #45824#54364#48264#54840#47196' '#44160#49353
                Style.TextColor = 10329501
                Transparent = True
                OnClick = lbKeynumber10Click
              end
              object btnSch_Ext_qe_p: TcxButton
                Left = 177
                Top = 3
                Width = 32
                Height = 24
                Cursor = crHandPoint
                Anchors = [akTop, akRight]
                Caption = #44160#49353
                Colors.Normal = 16773362
                Colors.Pressed = 16644080
                LookAndFeel.Kind = lfFlat
                LookAndFeel.NativeStyle = False
                LookAndFeel.SkinName = 'Sharp'
                OptionsImage.Layout = blGlyphBottom
                TabOrder = 2
                OnClick = btnSch_Ext_qe_pClick
              end
              object cxGrdPBX_ext_qe_p: TcxGrid
                Left = 3
                Top = 30
                Width = 203
                Height = 557
                Align = alBottom
                Anchors = [akLeft, akTop, akRight, akBottom]
                BevelInner = bvNone
                BevelOuter = bvNone
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #44404#47548
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                LookAndFeel.NativeStyle = False
                object cxGrdVPBX_ext_qe_p: TcxGridDBTableView
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
                  OnCellDblClick = cxGrdVPBX_ext_qe_pCellDblClick
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
                  OptionsSelection.HideFocusRectOnExit = False
                  OptionsView.NoDataToDisplayInfoText = '  '
                  OptionsView.DataRowHeight = 22
                  OptionsView.ExpandButtonsForEmptyDetails = False
                  OptionsView.GridLineColor = clSilver
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderHeight = 23
                  object cxGridDBColumn17: TcxGridDBColumn
                    DataBinding.FieldName = #45824#54364#48264#54840'(ACD'#44536#47353')'
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Vert = taVCenter
                    HeaderAlignmentHorz = taCenter
                    Options.Editing = False
                    Width = 175
                  end
                  object cxGridDBColumn18: TcxGridDBColumn
                    DataBinding.FieldName = #45824#54364#48264#54840
                    PropertiesClassName = 'TcxLabelProperties'
                    Properties.Alignment.Vert = taVCenter
                    Visible = False
                    HeaderAlignmentHorz = taCenter
                    Options.Editing = False
                    Width = 197
                  end
                  object cxGridDBColumn19: TcxGridDBColumn
                    DataBinding.FieldName = 'ACD'#44536#47353
                    PropertiesClassName = 'TcxLabelProperties'
                    Visible = False
                  end
                end
                object cxGridLevel32: TcxGridLevel
                  GridView = cxGrdVPBX_ext_qe_p
                end
              end
            end
          end
          object cxSplitter5: TcxSplitter
            Left = 424
            Top = 0
            Width = 6
            Height = 590
          end
        end
        object grpCallDistSet: TcxGroupBox
          Left = 456
          Top = 264
          Cursor = crSizeAll
          Caption = #54840' '#48516#48176' '#50864#49440' '#49692#50948' '#46321#47197' / '#49688#51221
          TabOrder = 3
          Visible = False
          OnMouseDown = grpHdaySetMouseDown
          Height = 193
          Width = 334
          object Shape129: TShape
            Left = 8
            Top = 18
            Width = 120
            Height = 24
            Pen.Color = 12566402
          end
          object Shape130: TShape
            Left = 8
            Top = 44
            Width = 120
            Height = 24
            Pen.Color = 12566402
          end
          object Shape131: TShape
            Left = 8
            Top = 70
            Width = 120
            Height = 24
            Pen.Color = 12566402
          end
          object btnSave_qe: TcxButton
            Left = 96
            Top = 156
            Width = 77
            Height = 26
            Cursor = crHandPoint
            Caption = #51200' '#51109
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnSave_qeClick
          end
          object btnExit_qe: TcxButton
            Left = 179
            Top = 156
            Width = 77
            Height = 26
            Cursor = crHandPoint
            Caption = #52712' '#49548
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnExit_qeClick
          end
          object cxLabel118: TcxLabel
            Left = 14
            Top = 22
            Caption = #45824#54364#48264#54840'(ACD'#44536#47353')'
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 67
            AnchorY = 30
          end
          object cxLabel119: TcxLabel
            Left = 68
            Top = 49
            Caption = #49345#45812#50896'ID'
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 94
            AnchorY = 57
          end
          object cbAgtNm10_1: TcxComboBox
            Left = 126
            Top = 43
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
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
            Width = 200
          end
          object cxLabel120: TcxLabel
            Left = 67
            Top = 75
            Caption = #50864#49440#49692#50948
            ParentColor = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 93
            AnchorY = 83
          end
          object edtCallDist: TcxTextEdit
            Left = 126
            Top = 17
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Properties.ReadOnly = True
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 6
            Height = 26
            Width = 200
          end
          object cxLabel121: TcxLabel
            Left = 14
            Top = 99
            Caption = #8251' '#50864#49440' '#49692#50948#45716' 0 ~ 5 '#44620#51648
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
          object cxLabel122: TcxLabel
            Left = 33
            Top = 132
            Caption = #45458#51012' '#49688#47197' '#48744#47532' '#48155#51012' '#49688' '#51080#49845#45768#45796
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
          object cbPriority: TcxComboBox
            Left = 126
            Top = 69
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.ImeMode = imSAlpha
            Properties.Items.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4'
              '5')
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
            TabOrder = 9
            Text = '0'
            Height = 26
            Width = 200
          end
          object cxLabel123: TcxLabel
            Left = 14
            Top = 117
            Caption = #8251' '#47784#46304' '#49345#45812#50896' '#49345#53468#44032' '#39#49345#45812#45824#44592#39' '#51473' '#51068#46412' '#49707#51088#44032' '
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
        end
      end
    end
    object cxTS_wk: TcxTabSheet
      Tag = 710
      Caption = #44540#47924#49884#44036#49444#51221
      ImageIndex = 9
      object PnlMain_wk: TPanel
        Left = 0
        Top = 0
        Width = 1237
        Height = 633
        Align = alClient
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Shape47: TShape
          Left = 0
          Top = 38
          Width = 1237
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
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 38
          Width = 1237
          object btnSearch_wk: TcxButton
            Left = 596
            Top = 6
            Width = 58
            Height = 26
            Cursor = crHandPoint
            Caption = #44160'  '#49353
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnSearch_wkClick
          end
          object btnExcel_wk: TcxButton
            Left = 718
            Top = 6
            Width = 58
            Height = 26
            Cursor = crHandPoint
            Caption = #50641#49472#45796#50868
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnExcel_wkClick
          end
          object btnUp_wk: TcxButton
            Left = 657
            Top = 6
            Width = 58
            Height = 26
            Cursor = crHandPoint
            Caption = #49688'  '#51221
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnUp_wkClick
          end
        end
        object cxGrdPBX_wk: TcxGrid
          Left = 0
          Top = 40
          Width = 1237
          Height = 593
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 1
          LookAndFeel.NativeStyle = False
          object cxGrdVPBX_wk: TcxGridBandedTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.CustomizeDialog = False
            OnCellDblClick = cxGrdVPBX_wkCellDblClick
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
                Caption = #44396#48516
                Width = 89
              end
              item
                Caption = #44540#47924#49884#44036
                Width = 216
              end
              item
                Caption = #50500#52840#49884#44036
                Width = 217
              end
              item
                Caption = #51216#49900#49884#44036
                Width = 190
              end
              item
                Caption = #51200#45377#49884#44036
                Width = 229
              end
              item
                Caption = #44540#47924#49884#51089
                Position.BandIndex = 1
                Position.ColIndex = 0
                Width = 70
              end
              item
                Caption = #44540#47924#51333#47308
                Position.BandIndex = 1
                Position.ColIndex = 1
                Width = 62
              end
              item
                Caption = #49324#50857#50668#48512
                Position.BandIndex = 1
                Position.ColIndex = 2
                Width = 68
              end
              item
                Caption = #50500#52840#49884#51089
                Position.BandIndex = 2
                Position.ColIndex = 0
                Width = 76
              end
              item
                Caption = #50500#52840#51333#47308
                Position.BandIndex = 2
                Position.ColIndex = 1
                Width = 57
              end
              item
                Caption = #49324#50857#50668#48512
                Position.BandIndex = 2
                Position.ColIndex = 2
                Width = 84
              end
              item
                Caption = #51216#49900#49884#51089
                Position.BandIndex = 3
                Position.ColIndex = 0
                Width = 70
              end
              item
                Caption = #51216#49900#51333#47308
                Position.BandIndex = 3
                Position.ColIndex = 1
                Width = 80
              end
              item
                Caption = #49324#50857#50668#48512
                Position.BandIndex = 3
                Position.ColIndex = 2
                Width = 75
              end
              item
                Caption = #51200#45377#49884#51089
                Position.BandIndex = 4
                Position.ColIndex = 0
                Width = 82
              end
              item
                Caption = #51200#45377#51333#47308
                Position.BandIndex = 4
                Position.ColIndex = 1
                Width = 81
              end
              item
                Caption = #49324#50857#50668#48512
                Position.BandIndex = 4
                Position.ColIndex = 2
                Width = 74
              end
              item
                Caption = #46321#47197#51088
                Width = 95
              end>
            object cxGridBandedColumn63: TcxGridBandedColumn
              Caption = #44396#48516
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn64: TcxGridBandedColumn
              Caption = #44540#47924#49884#44036
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.Moving = False
              Options.Sorting = False
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn65: TcxGridBandedColumn
              Caption = #44540#47924#51333#47308
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn66: TcxGridBandedColumn
              Caption = #49324#50857#50668#48512
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 7
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn67: TcxGridBandedColumn
              Caption = #50500#52840#49884#51089
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 8
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn68: TcxGridBandedColumn
              Caption = #50500#52840#51333#47308
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 9
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn69: TcxGridBandedColumn
              Caption = #49324#50857#50668#48512
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 10
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn70: TcxGridBandedColumn
              Caption = #51216#49900#49884#51089
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 11
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn71: TcxGridBandedColumn
              Caption = #51216#49900#51333#47308
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 12
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn72: TcxGridBandedColumn
              Caption = #49324#50857#50668#48512
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 13
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn73: TcxGridBandedColumn
              Caption = #51200#45377#49884#51089
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 14
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn74: TcxGridBandedColumn
              Caption = #51200#45377#51333#47308
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 15
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrdVPBX_wkColumn1: TcxGridBandedColumn
              Caption = #49324#50857#50668#48512
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 16
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrdVPBX_wkColumn2: TcxGridBandedColumn
              Caption = #46321#47197#51088
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 17
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
          end
          object cxGridLevel12: TcxGridLevel
            GridView = cxGrdVPBX_wk
          end
        end
        object grpWorkSet: TcxGroupBox
          Left = 184
          Top = 120
          Cursor = crSizeAll
          Caption = #44540#47924' '#49884#44036' '#49688#51221
          TabOrder = 2
          Visible = False
          OnMouseDown = grpWorkSetMouseDown
          Height = 217
          Width = 653
          object Shape20: TShape
            Left = 8
            Top = 23
            Width = 113
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape21: TShape
            Left = 8
            Top = 52
            Width = 113
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape22: TShape
            Left = 8
            Top = 81
            Width = 113
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape23: TShape
            Left = 8
            Top = 110
            Width = 113
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape25: TShape
            Left = 8
            Top = 139
            Width = 113
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape26: TShape
            Left = 216
            Top = 53
            Width = 113
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape27: TShape
            Left = 216
            Top = 82
            Width = 113
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape28: TShape
            Left = 216
            Top = 111
            Width = 113
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape29: TShape
            Left = 216
            Top = 140
            Width = 113
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape30: TShape
            Left = 425
            Top = 53
            Width = 113
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape36: TShape
            Left = 425
            Top = 82
            Width = 113
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape49: TShape
            Left = 425
            Top = 111
            Width = 113
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape50: TShape
            Left = 425
            Top = 140
            Width = 113
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object cxLabel20: TcxLabel
            Left = 14
            Top = 26
            Caption = #50836#51068' '#44396#48516
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 43
            AnchorY = 34
          end
          object cbWorkday: TcxComboBox
            Left = 79
            Top = 22
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #54217#51068
              #53664#50836#51068
              #51068#50836#51068)
            Properties.OnChange = cbGrpNm1PropertiesChange
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
            Width = 122
          end
          object cxLabel21: TcxLabel
            Left = 14
            Top = 56
            Caption = #44540#47924' '#49884#51089
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 43
            AnchorY = 64
          end
          object cxLabel22: TcxLabel
            Left = 14
            Top = 86
            Caption = #50500#52840' '#49884#51089
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 43
            AnchorY = 94
          end
          object cxLabel23: TcxLabel
            Left = 14
            Top = 144
            Caption = #51200#45377' '#49884#51089
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 43
            AnchorY = 152
          end
          object cxLabel24: TcxLabel
            Left = 14
            Top = 114
            Caption = #51216#49900' '#49884#51089
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 43
            AnchorY = 122
          end
          object edtWorkS: TcxTextEdit
            Left = 79
            Top = 51
            AutoSize = False
            TabOrder = 6
            Height = 26
            Width = 122
          end
          object edtBreakS: TcxTextEdit
            Left = 79
            Top = 80
            AutoSize = False
            TabOrder = 7
            Height = 26
            Width = 122
          end
          object edtLunchS: TcxTextEdit
            Left = 79
            Top = 109
            AutoSize = False
            TabOrder = 8
            OnKeyPress = edtLunchSKeyPress
            Height = 26
            Width = 122
          end
          object edtDinnerS: TcxTextEdit
            Left = 79
            Top = 138
            AutoSize = False
            TabOrder = 9
            Height = 26
            Width = 122
          end
          object cxLabel25: TcxLabel
            Left = 223
            Top = 56
            Caption = #44540#47924' '#51333#47308
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 252
            AnchorY = 64
          end
          object cxLabel26: TcxLabel
            Left = 223
            Top = 86
            Caption = #50500#52840' '#51333#47308
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 252
            AnchorY = 94
          end
          object cxLabel27: TcxLabel
            Left = 223
            Top = 144
            Caption = #51200#45377' '#51333#47308
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 252
            AnchorY = 152
          end
          object cxLabel28: TcxLabel
            Left = 223
            Top = 114
            Caption = #51216#49900' '#51333#47308
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 252
            AnchorY = 122
          end
          object edtWorkE: TcxTextEdit
            Left = 287
            Top = 52
            AutoSize = False
            TabOrder = 14
            Height = 26
            Width = 122
          end
          object edtBreakE: TcxTextEdit
            Left = 287
            Top = 81
            AutoSize = False
            TabOrder = 15
            Height = 26
            Width = 122
          end
          object edtLunchE: TcxTextEdit
            Left = 287
            Top = 110
            AutoSize = False
            TabOrder = 16
            OnKeyPress = edtLunchEKeyPress
            Height = 26
            Width = 122
          end
          object edtDinnerE: TcxTextEdit
            Left = 287
            Top = 139
            AutoSize = False
            TabOrder = 17
            Height = 26
            Width = 122
          end
          object cxLabel29: TcxLabel
            Left = 432
            Top = 56
            Caption = #44540#47924' '#49884#44036' '#49324#50857
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 476
            AnchorY = 64
          end
          object cxLabel30: TcxLabel
            Left = 432
            Top = 86
            Caption = #50500#52840' '#49884#44036' '#49324#50857
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorY = 94
          end
          object cxLabel31: TcxLabel
            Left = 432
            Top = 144
            Caption = #51200#45377' '#49884#44036' '#49324#50857
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorY = 152
          end
          object cxLabel32: TcxLabel
            Left = 432
            Top = 114
            Caption = #51216#49900' '#49884#44036' '#49324#50857
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorY = 122
          end
          object cbUseWork: TcxComboBox
            Left = 523
            Top = 52
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #49324#50857
              #48120#49324#50857)
            Properties.OnChange = cbGrpNm1PropertiesChange
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 22
            Height = 26
            Width = 122
          end
          object cbUseBreak: TcxComboBox
            Left = 523
            Top = 81
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #49324#50857
              #48120#49324#50857)
            Properties.OnChange = cbGrpNm1PropertiesChange
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 23
            Height = 26
            Width = 122
          end
          object cbUseLunch: TcxComboBox
            Left = 523
            Top = 110
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #49324#50857
              #48120#49324#50857)
            Properties.OnChange = cbGrpNm1PropertiesChange
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 24
            Height = 26
            Width = 122
          end
          object cbUseDinner: TcxComboBox
            Left = 523
            Top = 139
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #49324#50857
              #48120#49324#50857)
            Properties.OnChange = cbGrpNm1PropertiesChange
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 25
            Height = 26
            Width = 122
          end
          object btnSave_wk: TcxButton
            Left = 246
            Top = 175
            Width = 77
            Height = 26
            Cursor = crHandPoint
            Caption = #51200' '#51109
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 26
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnSave_wkClick
          end
          object btnExit_wk: TcxButton
            Left = 329
            Top = 175
            Width = 77
            Height = 26
            Cursor = crHandPoint
            Caption = #52712' '#49548
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 27
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnExit_wkClick
          end
        end
      end
    end
    object cxTS_hd: TcxTabSheet
      Caption = #55092#51068#49444#51221
      ImageIndex = 10
      object PnlMain_hd: TPanel
        Left = 0
        Top = 0
        Width = 1237
        Height = 633
        Align = alClient
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Shape14: TShape
          Left = 0
          Top = 38
          Width = 1237
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = -6
          ExplicitTop = 23
          ExplicitWidth = 305
        end
        object cxGroupBox4: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 38
          Width = 1237
          object btnSearch_hd: TcxButton
            Left = 596
            Top = 6
            Width = 58
            Height = 26
            Cursor = crHandPoint
            Caption = #44160'  '#49353
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnSearch_hdClick
          end
          object btnIns_hd: TcxButton
            Left = 657
            Top = 6
            Width = 58
            Height = 26
            Cursor = crHandPoint
            Caption = #52628'  '#44032
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnIns_hdClick
          end
          object btnUp_hd: TcxButton
            Left = 718
            Top = 6
            Width = 58
            Height = 26
            Cursor = crHandPoint
            Caption = #49688'  '#51221
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnUp_hdClick
          end
          object btnDel_hd: TcxButton
            Left = 779
            Top = 6
            Width = 58
            Height = 26
            Cursor = crHandPoint
            Caption = #49440#53469#49325#51228
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 3
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnDel_hdClick
          end
          object btnExcel_hd: TcxButton
            Left = 840
            Top = 6
            Width = 58
            Height = 26
            Cursor = crHandPoint
            Caption = #50641#49472#45796#50868
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 4
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnExcel_hdClick
          end
        end
        object cxGrdPBX_hd: TcxGrid
          Left = 0
          Top = 40
          Width = 1237
          Height = 593
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 1
          LookAndFeel.NativeStyle = False
          object cxGrdVPBX_hd: TcxGridBandedTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.CustomizeDialog = False
            OnCellDblClick = cxGrdVPBX_hdCellDblClick
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
                Caption = #49440#53469
                Width = 40
              end
              item
                Caption = #55092#51068
                Width = 100
              end
              item
                Caption = #50836#51068
                Width = 100
              end
              item
                Caption = #49444#47749
                Width = 500
              end
              item
                Caption = #46321#47197#51088
                Width = 100
              end>
            object cxGridBandedColumn75: TcxGridBandedColumn
              Caption = #44396#48516
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxCheckBoxProperties'
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn76: TcxGridBandedColumn
              Caption = #55092#51068
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.Moving = False
              Options.Sorting = False
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn77: TcxGridBandedColumn
              Caption = #44540#47924#51333#47308
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn78: TcxGridBandedColumn
              Caption = #49324#50857#50668#48512
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn79: TcxGridBandedColumn
              Caption = #50500#52840#49884#51089
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGrdVPBX_hd
          end
        end
        object grpHdaySet: TcxGroupBox
          Left = 296
          Top = 216
          Cursor = crSizeAll
          Caption = #55092#51068' '#46321#47197' / '#49688#51221
          TabOrder = 2
          Visible = False
          OnMouseDown = grpHdaySetMouseDown
          Height = 137
          Width = 433
          object Shape16: TShape
            Left = 8
            Top = 29
            Width = 113
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape17: TShape
            Left = 232
            Top = 28
            Width = 113
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape53: TShape
            Left = 8
            Top = 59
            Width = 113
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object lblOHday: TcxLabel
            Left = 23
            Top = 32
            Caption = #55092'  '#51068
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 43
            AnchorY = 40
          end
          object cxLabel34: TcxLabel
            Left = 247
            Top = 32
            Caption = #50836'  '#51068
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 267
            AnchorY = 40
          end
          object cxLabel35: TcxLabel
            Left = 23
            Top = 64
            Caption = #49444'  '#47749
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 43
            AnchorY = 72
          end
          object edtContents: TcxTextEdit
            Left = 79
            Top = 58
            AutoSize = False
            Properties.ImeMode = imSHanguel
            TabOrder = 3
            Height = 26
            Width = 346
          end
          object edtWeekday: TcxTextEdit
            Left = 303
            Top = 27
            AutoSize = False
            Properties.ReadOnly = True
            TabOrder = 4
            Height = 26
            Width = 122
          end
          object btnSave_hd: TcxButton
            Left = 136
            Top = 95
            Width = 77
            Height = 26
            Cursor = crHandPoint
            Caption = #51200' '#51109
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 5
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnSave_hdClick
          end
          object btnExit_hd: TcxButton
            Left = 219
            Top = 95
            Width = 77
            Height = 26
            Cursor = crHandPoint
            Caption = #52712' '#49548
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 6
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnExit_hdClick
          end
          object cxDtHDay: TcxDateEdit
            Left = 79
            Top = 28
            TabStop = False
            AutoSize = False
            EditValue = 39717d
            ParentShowHint = False
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            Properties.ShowTime = False
            Properties.OnChange = cxDtHDayPropertiesChange
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
            TabOrder = 7
            Height = 26
            Width = 147
          end
        end
      end
    end
    object cxTS_vi: TcxTabSheet
      Caption = 'VIP'#44256#44061#44288#47532
      ImageIndex = 11
      object AdvSplitter9: TAdvSplitter
        Left = 299
        Top = 0
        Width = 5
        Height = 633
        Appearance.BorderColor = clNone
        Appearance.BorderColorHot = clNone
        Appearance.Color = clWhite
        Appearance.ColorTo = clSilver
        Appearance.ColorHot = clWhite
        Appearance.ColorHotTo = clGray
        GripStyle = sgDots
        ExplicitLeft = 825
      end
      object pnlMain_vi: TPanel
        Left = 304
        Top = 0
        Width = 933
        Height = 633
        Align = alClient
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Shape18: TShape
          Left = 0
          Top = 132
          Width = 933
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = -6
          ExplicitTop = 23
          ExplicitWidth = 305
        end
        object cxGroupBox8: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          DesignSize = (
            933
            132)
          Height = 132
          Width = 933
          object Label7: TLabel
            Tag = 1
            Left = 577
            Top = 39
            Width = 92
            Height = 12
            Cursor = crHandPoint
            Caption = '['#50577#49885#45796#50868#47196#46300']'
            Font.Charset = ANSI_CHARSET
            Font.Color = 16744448
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = Label7Click
          end
          object lblTitle_vi: TcxLabel
            Left = 6
            Top = 4
            Anchors = [akLeft, akTop, akRight]
            AutoSize = False
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 13719147
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 921
            AnchorY = 17
          end
          object btnSearch_vi: TcxButton
            Left = 390
            Top = 34
            Width = 58
            Height = 93
            Cursor = crHandPoint
            Caption = #44160'  '#49353
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnSearch_viClick
          end
          object btnIns_vi: TcxButton
            Left = 452
            Top = 34
            Width = 58
            Height = 24
            Cursor = crHandPoint
            Caption = #52628'  '#44032
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnIns_viClick
          end
          object btnUp_vi: TcxButton
            Left = 452
            Top = 68
            Width = 58
            Height = 24
            Cursor = crHandPoint
            Caption = #49688'  '#51221
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnUp_viClick
          end
          object btnDel_vi: TcxButton
            Left = 452
            Top = 103
            Width = 58
            Height = 24
            Cursor = crHandPoint
            Caption = #49440#53469#49325#51228
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 3
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnDel_viClick
          end
          object btnExcel_vi: TcxButton
            Left = 513
            Top = 68
            Width = 58
            Height = 24
            Cursor = crHandPoint
            Caption = #50641#49472#45796#50868
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 5
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnExcel_viClick
          end
          object btnFileUp_vi: TcxButton
            Left = 513
            Top = 34
            Width = 58
            Height = 24
            Cursor = crHandPoint
            Caption = #54028#51068#46321#47197
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 4
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnFileUp_viClick
          end
          object cxGroupBox6: TcxGroupBox
            Left = 6
            Top = 34
            TabOrder = 7
            Height = 93
            Width = 177
            object Shape19: TShape
              Left = 6
              Top = 5
              Width = 100
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object Shape64: TShape
              Left = 6
              Top = 34
              Width = 128
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object Shape65: TShape
              Left = 6
              Top = 63
              Width = 100
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
              Visible = False
            end
            object cxLabel41: TcxLabel
              Left = 13
              Top = 10
              Caption = #52509' '#44060#49688
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 36
              AnchorY = 18
            end
            object cxLabel44: TcxLabel
              Left = 12
              Top = 39
              Caption = #51312#54924#44060#49688
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 38
              AnchorY = 47
            end
            object cxLabel50: TcxLabel
              Left = 13
              Top = 67
              Caption = #49324#50857#54943#49688
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              Visible = False
              AnchorX = 39
              AnchorY = 75
            end
            object edtCntS_vi: TcxCurrencyEdit
              Left = 65
              Top = 33
              AutoSize = False
              EditValue = 0.000000000000000000
              Properties.DisplayFormat = ',0.;-,0.'
              TabOrder = 0
              Height = 26
              Width = 45
            end
            object edtUCnt_vi: TcxCurrencyEdit
              Left = 65
              Top = 62
              AutoSize = False
              EditValue = 0.000000000000000000
              Properties.DisplayFormat = ',0.;-,0.'
              TabOrder = 2
              Visible = False
              Height = 26
              Width = 45
            end
            object edtCntE_vi: TcxCurrencyEdit
              Left = 123
              Top = 33
              AutoSize = False
              EditValue = 10000.000000000000000000
              Properties.DisplayFormat = ',0.;-,0.'
              TabOrder = 1
              Height = 26
              Width = 45
            end
            object cxLabel58: TcxLabel
              Left = 111
              Top = 67
              Caption = #44148' '#51060#49345
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              Visible = False
              AnchorX = 134
              AnchorY = 75
            end
            object lblTCnt_vi: TcxLabel
              Left = 65
              Top = 4
              AutoSize = False
              Caption = '0'
              ParentColor = False
              Style.BorderStyle = ebsFlat
              Style.Color = clWhite
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Height = 26
              Width = 46
              AnchorX = 88
              AnchorY = 17
            end
          end
          object cxGroupBox7: TcxGroupBox
            Left = 185
            Top = 34
            Caption = #45936#51060#53440#44032' '#47566#51012#46412' '#51452#51032
            TabOrder = 8
            Height = 93
            Width = 202
            object Shape31: TShape
              Left = 7
              Top = 15
              Width = 100
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object Shape24: TShape
              Left = 7
              Top = 41
              Width = 100
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object cxLabel56: TcxLabel
              Left = 8
              Top = 20
              Caption = #44256#44061#51204#54868#48264#54840
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 46
              AnchorY = 28
            end
            object edtCallIdS_vi: TcxTextEdit
              Left = 84
              Top = 14
              AutoSize = False
              Properties.ImeMode = imSHanguel
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 0
              OnKeyDown = edtCallIdS_viKeyDown
              OnKeyPress = edtCallIdS_viKeyPress
              Height = 26
              Width = 111
            end
            object cxLabel43: TcxLabel
              Left = 27
              Top = 46
              Caption = #44256#44061#47749
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 47
              AnchorY = 54
            end
            object edtCallNmS_vi: TcxTextEdit
              Left = 84
              Top = 40
              AutoSize = False
              Properties.ImeMode = imSHanguel
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              OnKeyDown = edtCallNmS_viKeyDown
              Height = 26
              Width = 111
            end
            object ckAll_vi: TcxCheckBox
              Left = 6
              Top = 67
              Caption = #51204#52404' '#48264#54840#50640#49436' '#44160#49353
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 2
              Transparent = True
            end
          end
          object pnl7: TPanel
            Left = 728
            Top = 58
            Width = 18
            Height = 16
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 9
            object img2: TImage
              Left = 0
              Top = 0
              Width = 16
              Height = 16
              Cursor = crHandPoint
              Align = alClient
              AutoSize = True
              ParentShowHint = False
              Picture.Data = {
                055449636F6E0000010001001010000001002000680400001600000028000000
                1000000020000000010020000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000002D1F122B3A2918A10000006F00000010000000000000000000000000
                000000000000000000000000000000000000000000000000000000050000000C
                0000001CBE9266EA9F744BE00000006E00000014000000000000000000000000
                00000000000000000000000000000000000000060000001A0000003A0000005E
                987858C1DCB792FF907356DF000000940000004A0000001D0000000800000000
                0000000000000000000000000000000F00000044453526A47E644BD5987F67E6
                C6A989FFEAC49FFFBB9A77F5463625D1000000AD0000008F0000004E00000014
                00000000000000000000000D634D377EA68A6DF2C1A48AFFCFAF92FFDEBF9DFF
                F3CEAAFFFFE7C0FFE4C3A0FFC4A685FFAF8D6BF9513D28D3000000A300000060
                000000130000000495785A85B9A289FFDCC3A9FFFCDCBDFFFFEFCEFFE3B693FF
                9D3A11FFC87547FFFFDDB8FFFFDEBAFFE4C5A5FFC3A486FF74583BDF000000A2
                0000004EA686673BB8A590FFE3CDB7FFFFEACDFFFFE8CBFFFFF4D7FFD3A988FF
                490000FF701F00FFFFE1BCFFFFE8C7FFFFE3BFFFEDCDAFFFC2A587FF4B3A29CE
                0000009AC4A98DBFD9C7B5FFFFECD4FFFFEBD1FFFFE6CDFFFFE9CFFFFFEFD6FF
                DCB699FFF1D1B6FFFFEFD2FFFFE3C5FFFFE3C5FFFFE5C6FFE5CAADFFB29476F4
                000000BBCAB8A9FFF6E2D1FFFFF1DDFFFFEBD6FFFFEAD5FFFFEBD4FFFFFBE6FF
                CB8960FFE8BF9FFFFFFFE9FFFFE7CDFFFFE4CAFFFFE8CBFFFBE1C4FFD6BBA0FF
                33302CCACFC5B9FFFBECDDFFFFF3E3FFFFEEDEFFFFEEDCFFFFF1DFFFFFFFF8FF
                CEA082FFA54619FFFFEBCFFFFFF8E4FFFFE9D3FFFFEAD0FFFFE8CEFFDEC6B0FF
                6F675EDAD2C9BFFFFCF1E6FFFFF7EBFFFFF2E5FFFFF4E7FFFFF6E7FFFFF2DEFF
                FFFEEFFF88340FFFA73B0FFFEDD2B8FFFFF8E7FFFFEDD9FFFFF0DAFFDDC7B2FF
                605A54CCDDCFC2D6F4EFE9FFFFFFF6FFFFF7EDFFFFFFFFFFC5997FFF8D1D00FF
                EBD3BEFFAB7A5EFF640000FFBD886AFFFFFFF8FFFFF9E9FFFAF0E1FFD6C0ABFF
                1514146FE5D0BA56E3E2E0FFFFFEFCFFFFFFFBFFFFFFFFFFBD9885FF5C0000FF
                E2C5B2FF853E21FF570000FFD2B39DFFFFFFFFFFFFFFFDFFF0E5DAFF998673B9
                0000001D00000000E6D9CC9DEBEBECFFFFFFFFFFFFFFFFFFFFFFFFFFC59A84FF
                B9714DFF904E36FFC2A797FFFFFFFFFFFFFFFFFFF5F1EDFFCDBCABD900000021
                000000000000000000000000E7DDD386EFEDECFFFAFCFEFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F0ECFFCFC1B3B50000001300000000
                00000000000000000000000000000000EDDFCE26E9E3DD9AEEEAE6EBF5F5F6FF
                F6F9FAFFF8F9F9FFF3EEE9F2E5DDD5AEBEB2A541000000050000000000000000
                00000000FF0F0000F80F0000E0030000C00100008000000B00001C47000044B8
                00006EFA00007FFF000085FF000085FF000083FF000086FF80018CFFC00394FF
                E0079FFF}
              ShowHint = False
              OnClick = img2Click
              ExplicitLeft = 16
              ExplicitTop = -12
              ExplicitWidth = 18
            end
          end
          object cxLabel19: TcxLabel
            Left = 577
            Top = 57
            Caption = #8251' '#54028#51068' '#51089#49457#51452#51032#49324#54637'>>'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
        end
        object cxGrdPBX_vi: TcxGrid
          Left = 0
          Top = 134
          Width = 933
          Height = 499
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 1
          LookAndFeel.NativeStyle = False
          object cxGrdVPBX_vi: TcxGridBandedTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.CustomizeDialog = False
            OnCellDblClick = cxGrdVPBX_viCellDblClick
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DataController.OnSortingChanged = cxGridPBX5DataControllerSortingChanged
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
                Caption = #49440#53469
                Width = 40
                OnHeaderClick = cxGrdVPBX_viBands0HeaderClick
              end
              item
                Caption = #54840#48516#48176#44536#47353
                Width = 70
              end
              item
                Caption = #44256#44061#51204#54868#48264#54840
                Width = 100
              end
              item
                Caption = #44256#44061#47749
                Width = 120
              end
              item
                Caption = #44256#44061#49444#47749
                Width = 225
              end
              item
                Caption = #49324#50857#54943#49688
                Visible = False
                Width = 100
              end
              item
                Caption = #46321#47197#51088
                Width = 80
              end
              item
                Caption = #46321#47197'/'#49688#51221#51068
                Width = 120
              end>
            object cxGridBandedColumn219: TcxGridBandedColumn
              Caption = #49440#53469
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Options.Moving = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn220: TcxGridBandedColumn
              Caption = #54840#48516#48176#44536#47353
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn221: TcxGridBandedColumn
              Caption = #44256#44061#51204#54868#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              MinWidth = 64
              Options.Editing = False
              Options.Moving = False
              Options.Sorting = False
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn222: TcxGridBandedColumn
              Caption = #44256#44061#47749
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn223: TcxGridBandedColumn
              Caption = #44256#44061#49444#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn224: TcxGridBandedColumn
              Caption = #49324#50857#54943#49688
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Visible = False
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn225: TcxGridBandedColumn
              Caption = #46321#47197#51088
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn226: TcxGridBandedColumn
              Caption = #46321#47197'/'#49688#51221#51068
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 7
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn230: TcxGridBandedColumn
              Caption = 'IDX'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Visible = False
              FooterAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
          end
          object cxGridLevel11: TcxGridLevel
            GridView = cxGrdVPBX_vi
          end
        end
        object cxGrdPBX_vi_Excel: TcxGrid
          Left = 242
          Top = 334
          Width = 469
          Height = 198
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 2
          Visible = False
          LookAndFeel.NativeStyle = False
          object cxGrdVPBX_vi_Excel: TcxGridBandedTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.CustomizeDialog = False
            OnCellDblClick = cxGrdVPBX_viCellDblClick
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DataController.OnSortingChanged = cxGridPBX5DataControllerSortingChanged
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
                Caption = #49440#53469
                Width = 40
              end
              item
                Caption = #54840#48516#48176#44536#47353
                Width = 70
              end
              item
                Caption = #44256#44061#51204#54868#48264#54840
                Width = 100
              end
              item
                Caption = #44256#44061#47749
                Width = 120
              end
              item
                Caption = #44256#44061#49444#47749
                Width = 225
              end
              item
                Caption = #49324#50857#54943#49688
                Visible = False
                Width = 100
              end
              item
                Caption = #46321#47197#51088
                Width = 80
              end
              item
                Caption = #46321#47197'/'#49688#51221#51068
                Width = 120
              end>
            object cxGridBandedColumn161: TcxGridBandedColumn
              Caption = #49440#53469
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Options.Moving = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn162: TcxGridBandedColumn
              Caption = #54840#48516#48176#44536#47353
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn163: TcxGridBandedColumn
              Caption = #44256#44061#51204#54868#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              MinWidth = 64
              Options.Editing = False
              Options.Moving = False
              Options.Sorting = False
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn164: TcxGridBandedColumn
              Caption = #44256#44061#47749
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn165: TcxGridBandedColumn
              Caption = #44256#44061#49444#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn166: TcxGridBandedColumn
              Caption = #49324#50857#54943#49688
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Visible = False
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn167: TcxGridBandedColumn
              Caption = #46321#47197#51088
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn168: TcxGridBandedColumn
              Caption = #46321#47197'/'#49688#51221#51068
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 7
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn169: TcxGridBandedColumn
              Caption = 'IDX'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Visible = False
              FooterAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
          end
          object cxGridLevel21: TcxGridLevel
            GridView = cxGrdVPBX_vi_Excel
          end
        end
      end
      object pnlLeft_vi: TPanel
        Left = 0
        Top = 0
        Width = 299
        Height = 633
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object Shape62: TShape
          Left = 0
          Top = 32
          Width = 299
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitTop = 72
          ExplicitWidth = 255
        end
        object cxGroupBox5: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          TabOrder = 0
          Height = 32
          Width = 299
          object Shape63: TShape
            Left = 3
            Top = 4
            Width = 118
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object btnSch_vi_s: TcxButton
            Left = 237
            Top = 4
            Width = 58
            Height = 24
            Cursor = crHandPoint
            Caption = #44160'  '#49353
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnSch_vi_sClick
          end
          object cxLabel40: TcxLabel
            Left = 8
            Top = 8
            Caption = #45824#54364#48264#54840
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 34
            AnchorY = 16
          end
          object edtSch_vi: TcxTextEdit
            Left = 62
            Top = 3
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Height = 26
            Width = 172
          end
        end
        object cxGrdPBX_vi_s: TcxGrid
          Left = 0
          Top = 34
          Width = 299
          Height = 599
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
          object cxGrdVPBX_vi_s: TcxGridDBTableView
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
            OnCellDblClick = cxGrdVPBX_vi_sCellDblClick
            DataController.DataModeController.SmartRefresh = True
            DataController.Filter.Options = [fcoShowOperatorDescription, fcoSoftNull]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.;-,0.'
                Kind = skSum
              end
              item
                Format = ',0.;-,0.'
                Kind = skSum
              end
              item
                Format = ',0.;-,0.'
                Kind = skAverage
              end
              item
              end
              item
                Column = cxGridDBColumn2
              end
              item
                Format = ',0.;-,0.'
                Kind = skSum
              end
              item
                Format = ',0.;-,0.'
                Column = cxGridDBColumn3
              end>
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
            OptionsView.HeaderHeight = 23
            object cxGridDBColumn1: TcxGridDBColumn
              DataBinding.FieldName = #49436#48708#49828#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 123
            end
            object cxGridDBColumn2: TcxGridDBColumn
              DataBinding.FieldName = #45824#54364#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 87
            end
            object cxGridDBColumn3: TcxGridDBColumn
              DataBinding.FieldName = #54840#48516#48176#44536#47353
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 66
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGrdVPBX_vi_s
          end
        end
      end
      object grpVipSet: TcxGroupBox
        Left = 97
        Top = 206
        Cursor = crSizeAll
        Caption = 'VIP '#44256#44061' '#52628#44032
        TabOrder = 2
        Visible = False
        OnMouseDown = grpVipSetMouseDown
        Height = 217
        Width = 443
        object Shape66: TShape
          Left = 8
          Top = 23
          Width = 113
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape67: TShape
          Left = 230
          Top = 23
          Width = 113
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape68: TShape
          Left = 8
          Top = 50
          Width = 113
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape69: TShape
          Left = 8
          Top = 88
          Width = 113
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape70: TShape
          Left = 8
          Top = 117
          Width = 113
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape73: TShape
          Left = 230
          Top = 89
          Width = 113
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape74: TShape
          Left = 8
          Top = 145
          Width = 113
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
          Visible = False
        end
        object cxLabel59: TcxLabel
          Left = 22
          Top = 26
          Caption = #54840#48516#48176#44536#47353
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 54
          AnchorY = 34
        end
        object cxLabel60: TcxLabel
          Left = 246
          Top = 27
          Caption = #45824#54364#48264#54840
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 272
          AnchorY = 35
        end
        object cxLabel61: TcxLabel
          Left = 28
          Top = 55
          Caption = #49436#48708#49828#47749
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 54
          AnchorY = 63
        end
        object cxLabel63: TcxLabel
          Left = 28
          Top = 122
          Caption = #44256#44061#49444#47749
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 54
          AnchorY = 130
        end
        object cxLabel64: TcxLabel
          Left = 16
          Top = 92
          Caption = #44256#44061#51204#54868#48264#54840
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 54
          AnchorY = 100
        end
        object edtSvcNo_vi: TcxTextEdit
          Left = 312
          Top = 22
          AutoSize = False
          Enabled = False
          TabOrder = 11
          Height = 26
          Width = 122
        end
        object edtBuzNm_vi: TcxTextEdit
          Left = 97
          Top = 49
          AutoSize = False
          Enabled = False
          TabOrder = 12
          Height = 26
          Width = 337
        end
        object edtCallId_vi: TcxTextEdit
          Left = 97
          Top = 87
          AutoSize = False
          TabOrder = 0
          OnKeyPress = edtCallId_viKeyPress
          Height = 26
          Width = 122
        end
        object edtCallDesc_vi: TcxTextEdit
          Left = 97
          Top = 116
          AutoSize = False
          Properties.ImeMode = imSHanguel
          TabOrder = 2
          Height = 26
          Width = 337
        end
        object cxLabel79: TcxLabel
          Left = 28
          Top = 149
          Caption = #49324#50857#54943#49688
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Visible = False
          AnchorX = 54
          AnchorY = 157
        end
        object cxLabel80: TcxLabel
          Left = 253
          Top = 92
          Caption = #44256#44061#47749
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 273
          AnchorY = 100
        end
        object edtCallNm_vi: TcxTextEdit
          Left = 312
          Top = 88
          AutoSize = False
          Properties.ImeMode = imSHanguel
          TabOrder = 1
          Height = 26
          Width = 122
        end
        object btnSave_vi: TcxButton
          Left = 273
          Top = 175
          Width = 77
          Height = 26
          Cursor = crHandPoint
          Caption = #51200' '#51109
          Colors.Default = 16773362
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 4
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          OnClick = btnSave_viClick
        end
        object btnExit_vi: TcxButton
          Left = 356
          Top = 175
          Width = 77
          Height = 26
          Cursor = crHandPoint
          Caption = #52712' '#49548
          Colors.Default = 16773362
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 5
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          OnClick = btnExit_viClick
        end
        object edtUseCnt_vi: TcxCurrencyEdit
          Left = 97
          Top = 144
          AutoSize = False
          Properties.DisplayFormat = ',0.;-,0.'
          TabOrder = 3
          Visible = False
          Height = 26
          Width = 122
        end
        object edtQexen_vi: TcxTextEdit
          Left = 97
          Top = 22
          AutoSize = False
          Enabled = False
          TabOrder = 15
          Height = 26
          Width = 122
        end
      end
    end
    object cxTS_bl: TcxTabSheet
      Caption = #49688#49888#44144#48512#44256#44061#44288#47532
      ImageIndex = 12
      object AdvSplitter10: TAdvSplitter
        Left = 299
        Top = 0
        Width = 5
        Height = 633
        Appearance.BorderColor = clNone
        Appearance.BorderColorHot = clNone
        Appearance.Color = clWhite
        Appearance.ColorTo = clSilver
        Appearance.ColorHot = clWhite
        Appearance.ColorHotTo = clGray
        GripStyle = sgDots
        ExplicitLeft = 8
      end
      object pnlLeft_bl: TPanel
        Left = 0
        Top = 0
        Width = 299
        Height = 633
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object Shape76: TShape
          Left = 0
          Top = 32
          Width = 299
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitTop = 72
          ExplicitWidth = 255
        end
        object cxGroupBox13: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          TabOrder = 0
          Height = 32
          Width = 299
          object Shape77: TShape
            Left = 3
            Top = 4
            Width = 118
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object btnSch_bl_s: TcxButton
            Left = 237
            Top = 4
            Width = 58
            Height = 24
            Cursor = crHandPoint
            Caption = #44160'  '#49353
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnSch_bl_sClick
          end
          object cxLabel71: TcxLabel
            Left = 8
            Top = 8
            Caption = #45824#54364#48264#54840
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 34
            AnchorY = 16
          end
          object edtSch_bl: TcxTextEdit
            Left = 62
            Top = 3
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Height = 26
            Width = 172
          end
        end
        object cxGrdPBX_bl_s: TcxGrid
          Left = 0
          Top = 34
          Width = 299
          Height = 599
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
          object cxGrdVPBX_bl_s: TcxGridDBTableView
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
            OnCellDblClick = cxGrdVPBX_bl_sCellDblClick
            DataController.DataModeController.SmartRefresh = True
            DataController.Filter.Options = [fcoShowOperatorDescription, fcoSoftNull]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.;-,0.'
                Kind = skSum
              end
              item
                Format = ',0.;-,0.'
                Kind = skSum
              end
              item
                Format = ',0.;-,0.'
                Kind = skAverage
              end
              item
              end
              item
                Column = cxGridDBColumn5
              end
              item
                Format = ',0.;-,0.'
                Kind = skSum
              end
              item
                Format = ',0.;-,0.'
                Column = cxGridDBColumn6
              end>
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
            OptionsView.HeaderHeight = 23
            object cxGridDBColumn4: TcxGridDBColumn
              DataBinding.FieldName = #49436#48708#49828#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 123
            end
            object cxGridDBColumn5: TcxGridDBColumn
              DataBinding.FieldName = #45824#54364#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 87
            end
            object cxGridDBColumn6: TcxGridDBColumn
              DataBinding.FieldName = #54840#48516#48176#44536#47353
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 66
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGrdVPBX_bl_s
          end
        end
      end
      object pnlMain_bl: TPanel
        Left = 304
        Top = 0
        Width = 933
        Height = 633
        Align = alClient
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Shape78: TShape
          Left = 0
          Top = 132
          Width = 933
          Height = 2
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = -6
          ExplicitTop = 23
          ExplicitWidth = 305
        end
        object cxGroupBox15: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 0
          DesignSize = (
            933
            132)
          Height = 132
          Width = 933
          object Label1: TLabel
            Tag = 2
            Left = 577
            Top = 39
            Width = 92
            Height = 12
            Cursor = crHandPoint
            Caption = '['#50577#49885#45796#50868#47196#46300']'
            Font.Charset = ANSI_CHARSET
            Font.Color = 16744448
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = Label7Click
          end
          object lblTitle_bl: TcxLabel
            Left = 6
            Top = 4
            Anchors = [akLeft, akTop, akRight]
            AutoSize = False
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548#52404
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = 13719147
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 921
            AnchorY = 17
          end
          object btnSearch_bl: TcxButton
            Left = 390
            Top = 34
            Width = 58
            Height = 93
            Cursor = crHandPoint
            Caption = #44160'  '#49353
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnSearch_blClick
          end
          object btnIns_bl: TcxButton
            Left = 452
            Top = 34
            Width = 58
            Height = 24
            Cursor = crHandPoint
            Caption = #52628'  '#44032
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnIns_blClick
          end
          object btnUp_bl: TcxButton
            Left = 452
            Top = 68
            Width = 58
            Height = 24
            Cursor = crHandPoint
            Caption = #49688'  '#51221
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnUp_blClick
          end
          object btnDel_bl: TcxButton
            Left = 452
            Top = 103
            Width = 58
            Height = 24
            Cursor = crHandPoint
            Caption = #49440#53469#49325#51228
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 3
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnDel_blClick
          end
          object btnExcel_bl: TcxButton
            Left = 513
            Top = 68
            Width = 58
            Height = 24
            Cursor = crHandPoint
            Caption = #50641#49472#45796#50868
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 5
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnExcel_blClick
          end
          object btnFileUp_bl: TcxButton
            Left = 513
            Top = 34
            Width = 58
            Height = 24
            Cursor = crHandPoint
            Caption = #54028#51068#46321#47197
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 4
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            OnClick = btnFileUp_blClick
          end
          object cxGroupBox16: TcxGroupBox
            Left = 6
            Top = 34
            TabOrder = 7
            Height = 93
            Width = 177
            object Shape79: TShape
              Left = 6
              Top = 5
              Width = 100
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object Shape80: TShape
              Left = 6
              Top = 34
              Width = 128
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object Shape81: TShape
              Left = 6
              Top = 63
              Width = 100
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
              Visible = False
            end
            object cxLabel81: TcxLabel
              Left = 13
              Top = 10
              Caption = #52509' '#44060#49688
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 36
              AnchorY = 18
            end
            object cxLabel82: TcxLabel
              Left = 12
              Top = 39
              Caption = #51312#54924#44060#49688
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 38
              AnchorY = 47
            end
            object cxLabel83: TcxLabel
              Left = 13
              Top = 67
              Caption = #49324#50857#54943#49688
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              Visible = False
              AnchorX = 39
              AnchorY = 75
            end
            object edtCntS_bl: TcxCurrencyEdit
              Left = 65
              Top = 33
              AutoSize = False
              EditValue = 0.000000000000000000
              Properties.DisplayFormat = ',0.;-,0.'
              TabOrder = 3
              Height = 26
              Width = 45
            end
            object edtUCnt_bl: TcxCurrencyEdit
              Left = 65
              Top = 62
              AutoSize = False
              EditValue = 0.000000000000000000
              Properties.DisplayFormat = ',0.;-,0.'
              TabOrder = 4
              Visible = False
              Height = 26
              Width = 45
            end
            object edtCntE_bl: TcxCurrencyEdit
              Left = 123
              Top = 33
              AutoSize = False
              EditValue = 10000.000000000000000000
              Properties.DisplayFormat = ',0.;-,0.'
              TabOrder = 5
              Height = 26
              Width = 45
            end
            object cxLabel84: TcxLabel
              Left = 111
              Top = 67
              Caption = #44148' '#51060#49345
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              Visible = False
              AnchorX = 134
              AnchorY = 75
            end
            object lblTCnt_bl: TcxLabel
              Left = 65
              Top = 4
              AutoSize = False
              Caption = '0'
              ParentColor = False
              Style.BorderStyle = ebsFlat
              Style.Color = clWhite
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Height = 26
              Width = 46
              AnchorX = 88
              AnchorY = 17
            end
          end
          object cxGroupBox17: TcxGroupBox
            Left = 185
            Top = 34
            Caption = #45936#51060#53440#44032' '#47566#51012#46412' '#51452#51032
            TabOrder = 8
            Height = 93
            Width = 202
            object Shape82: TShape
              Left = 7
              Top = 15
              Width = 100
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object Shape83: TShape
              Left = 7
              Top = 41
              Width = 100
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object cxLabel85: TcxLabel
              Left = 8
              Top = 20
              Caption = #44256#44061#51204#54868#48264#54840
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 46
              AnchorY = 28
            end
            object edtCallIdS_bl: TcxTextEdit
              Left = 84
              Top = 14
              AutoSize = False
              Properties.ImeMode = imSHanguel
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              OnKeyDown = edtCallIdS_blKeyDown
              OnKeyPress = edtCallIdS_blKeyPress
              Height = 26
              Width = 111
            end
            object cxLabel86: TcxLabel
              Left = 27
              Top = 46
              Caption = #44256#44061#47749
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 47
              AnchorY = 54
            end
            object edtCallNmS_bl: TcxTextEdit
              Left = 84
              Top = 40
              AutoSize = False
              Properties.ImeMode = imSHanguel
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 3
              OnKeyDown = edtCallNmS_blKeyDown
              Height = 26
              Width = 111
            end
            object ckAll_bl: TcxCheckBox
              Left = 6
              Top = 67
              Caption = #51204#52404' '#48264#54840#50640#49436' '#44160#49353
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 4
              Transparent = True
            end
          end
          object Panel16: TPanel
            Left = 728
            Top = 59
            Width = 18
            Height = 16
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 9
            object Image1: TImage
              Left = 0
              Top = 0
              Width = 16
              Height = 16
              Cursor = crHandPoint
              Align = alClient
              AutoSize = True
              ParentShowHint = False
              Picture.Data = {
                055449636F6E0000010001001010000001002000680400001600000028000000
                1000000020000000010020000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000002D1F122B3A2918A10000006F00000010000000000000000000000000
                000000000000000000000000000000000000000000000000000000050000000C
                0000001CBE9266EA9F744BE00000006E00000014000000000000000000000000
                00000000000000000000000000000000000000060000001A0000003A0000005E
                987858C1DCB792FF907356DF000000940000004A0000001D0000000800000000
                0000000000000000000000000000000F00000044453526A47E644BD5987F67E6
                C6A989FFEAC49FFFBB9A77F5463625D1000000AD0000008F0000004E00000014
                00000000000000000000000D634D377EA68A6DF2C1A48AFFCFAF92FFDEBF9DFF
                F3CEAAFFFFE7C0FFE4C3A0FFC4A685FFAF8D6BF9513D28D3000000A300000060
                000000130000000495785A85B9A289FFDCC3A9FFFCDCBDFFFFEFCEFFE3B693FF
                9D3A11FFC87547FFFFDDB8FFFFDEBAFFE4C5A5FFC3A486FF74583BDF000000A2
                0000004EA686673BB8A590FFE3CDB7FFFFEACDFFFFE8CBFFFFF4D7FFD3A988FF
                490000FF701F00FFFFE1BCFFFFE8C7FFFFE3BFFFEDCDAFFFC2A587FF4B3A29CE
                0000009AC4A98DBFD9C7B5FFFFECD4FFFFEBD1FFFFE6CDFFFFE9CFFFFFEFD6FF
                DCB699FFF1D1B6FFFFEFD2FFFFE3C5FFFFE3C5FFFFE5C6FFE5CAADFFB29476F4
                000000BBCAB8A9FFF6E2D1FFFFF1DDFFFFEBD6FFFFEAD5FFFFEBD4FFFFFBE6FF
                CB8960FFE8BF9FFFFFFFE9FFFFE7CDFFFFE4CAFFFFE8CBFFFBE1C4FFD6BBA0FF
                33302CCACFC5B9FFFBECDDFFFFF3E3FFFFEEDEFFFFEEDCFFFFF1DFFFFFFFF8FF
                CEA082FFA54619FFFFEBCFFFFFF8E4FFFFE9D3FFFFEAD0FFFFE8CEFFDEC6B0FF
                6F675EDAD2C9BFFFFCF1E6FFFFF7EBFFFFF2E5FFFFF4E7FFFFF6E7FFFFF2DEFF
                FFFEEFFF88340FFFA73B0FFFEDD2B8FFFFF8E7FFFFEDD9FFFFF0DAFFDDC7B2FF
                605A54CCDDCFC2D6F4EFE9FFFFFFF6FFFFF7EDFFFFFFFFFFC5997FFF8D1D00FF
                EBD3BEFFAB7A5EFF640000FFBD886AFFFFFFF8FFFFF9E9FFFAF0E1FFD6C0ABFF
                1514146FE5D0BA56E3E2E0FFFFFEFCFFFFFFFBFFFFFFFFFFBD9885FF5C0000FF
                E2C5B2FF853E21FF570000FFD2B39DFFFFFFFFFFFFFFFDFFF0E5DAFF998673B9
                0000001D00000000E6D9CC9DEBEBECFFFFFFFFFFFFFFFFFFFFFFFFFFC59A84FF
                B9714DFF904E36FFC2A797FFFFFFFFFFFFFFFFFFF5F1EDFFCDBCABD900000021
                000000000000000000000000E7DDD386EFEDECFFFAFCFEFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F0ECFFCFC1B3B50000001300000000
                00000000000000000000000000000000EDDFCE26E9E3DD9AEEEAE6EBF5F5F6FF
                F6F9FAFFF8F9F9FFF3EEE9F2E5DDD5AEBEB2A541000000050000000000000000
                00000000FF0F0000F80F0000E0030000C00100008000000B00001C47000044B8
                00006EFA00007FFF000085FF000085FF000083FF000086FF80018CFFC00394FF
                E0079FFF}
              ShowHint = False
              OnClick = img2Click
              ExplicitLeft = 16
              ExplicitTop = -12
              ExplicitWidth = 18
            end
          end
          object cxLabel51: TcxLabel
            Left = 577
            Top = 58
            Caption = #8251' '#54028#51068' '#51089#49457#51452#51032#49324#54637'>>'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
        end
        object cxGrdPBX_bl: TcxGrid
          Left = 0
          Top = 134
          Width = 933
          Height = 499
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 1
          LookAndFeel.NativeStyle = False
          object cxGrdVPBX_bl: TcxGridBandedTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.CustomizeDialog = False
            OnCellDblClick = cxGrdVPBX_blCellDblClick
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DataController.OnSortingChanged = cxGridPBX5DataControllerSortingChanged
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
                Caption = #49440#53469
                Width = 40
                OnHeaderClick = cxGrdVPBX_blBands0HeaderClick
              end
              item
                Caption = #54840#48516#48176#44536#47353
                Width = 70
              end
              item
                Caption = #44256#44061#51204#54868#48264#54840
                Width = 100
              end
              item
                Caption = #44256#44061#47749
                Width = 120
              end
              item
                Caption = #44256#44061#49444#47749
                Width = 225
              end
              item
                Caption = #49324#50857#54943#49688
                Visible = False
                Width = 100
              end
              item
                Caption = #49688#49888#44144#48512#48276#50948
                Width = 78
              end
              item
                Caption = #46321#47197#51088
                Width = 80
              end
              item
                Caption = #46321#47197'/'#49688#51221#51068
                Width = 120
              end>
            object cxGridBandedColumn156: TcxGridBandedColumn
              Caption = #49440#53469
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Options.Moving = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn157: TcxGridBandedColumn
              Caption = #54840#48516#48176#44536#47353
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn158: TcxGridBandedColumn
              Caption = #44256#44061#51204#54868#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              MinWidth = 64
              Options.Editing = False
              Options.Moving = False
              Options.Sorting = False
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn159: TcxGridBandedColumn
              Caption = #44256#44061#47749
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn160: TcxGridBandedColumn
              Caption = #44256#44061#49444#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn231: TcxGridBandedColumn
              Caption = #49324#50857#54943#49688
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Visible = False
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn232: TcxGridBandedColumn
              Caption = #49688#49888#44144#48512#48276#50948
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn233: TcxGridBandedColumn
              Caption = #46321#47197#51088
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 7
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn234: TcxGridBandedColumn
              Caption = #46321#47197'/'#49688#51221#51068
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 8
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn235: TcxGridBandedColumn
              Caption = 'IDX'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
          end
          object cxGridLevel18: TcxGridLevel
            GridView = cxGrdVPBX_bl
          end
        end
        object cxGrdPBX_bl_Excel: TcxGrid
          Left = 188
          Top = 393
          Width = 464
          Height = 148
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 2
          Visible = False
          LookAndFeel.NativeStyle = False
          object cxGrdVPBX_bl_Excel: TcxGridBandedTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.CustomizeDialog = False
            OnCellDblClick = cxGrdVPBX_blCellDblClick
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DataController.OnSortingChanged = cxGridPBX5DataControllerSortingChanged
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
                Caption = #49440#53469
                Width = 40
              end
              item
                Caption = #54840#48516#48176#44536#47353
                Width = 70
              end
              item
                Caption = #44256#44061#51204#54868#48264#54840
                Width = 100
              end
              item
                Caption = #44256#44061#47749
                Width = 120
              end
              item
                Caption = #44256#44061#49444#47749
                Width = 225
              end
              item
                Caption = #49324#50857#54943#49688
                Visible = False
                Width = 100
              end
              item
                Caption = #49688#49888#44144#48512#48276#50948
                Width = 78
              end
              item
                Caption = #46321#47197#51088
                Width = 80
              end
              item
                Caption = #46321#47197'/'#49688#51221#51068
                Width = 120
              end>
            object cxGridBandedColumn236: TcxGridBandedColumn
              Caption = #49440#53469
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Options.Moving = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn237: TcxGridBandedColumn
              Caption = #54840#48516#48176#44536#47353
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn238: TcxGridBandedColumn
              Caption = #44256#44061#51204#54868#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              MinWidth = 64
              Options.Editing = False
              Options.Moving = False
              Options.Sorting = False
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn239: TcxGridBandedColumn
              Caption = #44256#44061#47749
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn240: TcxGridBandedColumn
              Caption = #44256#44061#49444#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn241: TcxGridBandedColumn
              Caption = #49324#50857#54943#49688
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Visible = False
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn242: TcxGridBandedColumn
              Caption = #49688#49888#44144#48512#48276#50948
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn243: TcxGridBandedColumn
              Caption = #46321#47197#51088
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 7
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn244: TcxGridBandedColumn
              Caption = #46321#47197'/'#49688#51221#51068
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = 8
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn245: TcxGridBandedColumn
              Caption = 'IDX'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Moving = False
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
          end
          object cxGridLevel34: TcxGridLevel
            GridView = cxGrdVPBX_bl_Excel
          end
        end
      end
      object grpBListSet: TcxGroupBox
        Left = 365
        Top = 240
        Cursor = crSizeAll
        Caption = #49688#49888#44144#48512'('#48660#47001#47532#49828#53944') '#52628#44032
        TabOrder = 0
        Visible = False
        OnMouseDown = grpBListSetMouseDown
        Height = 217
        Width = 443
        object Shape33: TShape
          Left = 8
          Top = 23
          Width = 113
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape34: TShape
          Left = 230
          Top = 23
          Width = 113
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape35: TShape
          Left = 8
          Top = 50
          Width = 113
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape41: TShape
          Left = 8
          Top = 88
          Width = 113
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape71: TShape
          Left = 8
          Top = 117
          Width = 113
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape72: TShape
          Left = 230
          Top = 89
          Width = 113
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape75: TShape
          Left = 8
          Top = 145
          Width = 113
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
          Visible = False
        end
        object Shape84: TShape
          Left = 8
          Top = 174
          Width = 113
          Height = 24
          Brush.Color = 8454143
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxLabel42: TcxLabel
          Left = 22
          Top = 26
          Caption = #54840#48516#48176#44536#47353
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 54
          AnchorY = 34
        end
        object cxLabel62: TcxLabel
          Left = 246
          Top = 27
          Caption = #45824#54364#48264#54840
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 272
          AnchorY = 35
        end
        object cxLabel66: TcxLabel
          Left = 28
          Top = 55
          Caption = #49436#48708#49828#47749
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 54
          AnchorY = 63
        end
        object cxLabel67: TcxLabel
          Left = 28
          Top = 122
          Caption = #44256#44061#49444#47749
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 54
          AnchorY = 130
        end
        object cxLabel68: TcxLabel
          Left = 16
          Top = 92
          Caption = #44256#44061#51204#54868#48264#54840
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 54
          AnchorY = 100
        end
        object edtSvcNo_bl: TcxTextEdit
          Left = 312
          Top = 22
          AutoSize = False
          Enabled = False
          TabOrder = 12
          Height = 26
          Width = 122
        end
        object edtBuzNm_bl: TcxTextEdit
          Left = 97
          Top = 49
          AutoSize = False
          Enabled = False
          TabOrder = 13
          Height = 26
          Width = 337
        end
        object edtCallId_bl: TcxTextEdit
          Left = 97
          Top = 87
          AutoSize = False
          TabOrder = 0
          OnKeyPress = edtCallId_blKeyPress
          Height = 26
          Width = 122
        end
        object edtCallDesc_bl: TcxTextEdit
          Left = 97
          Top = 116
          AutoSize = False
          Properties.ImeMode = imSHanguel
          TabOrder = 2
          Height = 26
          Width = 337
        end
        object cxLabel69: TcxLabel
          Left = 28
          Top = 149
          Caption = #49324#50857#54943#49688
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Visible = False
          AnchorX = 54
          AnchorY = 157
        end
        object cxLabel70: TcxLabel
          Left = 253
          Top = 92
          Caption = #44256#44061#47749
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 273
          AnchorY = 100
        end
        object edtCallNm_bl: TcxTextEdit
          Left = 312
          Top = 88
          AutoSize = False
          Properties.ImeMode = imSHanguel
          TabOrder = 1
          Height = 26
          Width = 122
        end
        object btnSave_bl: TcxButton
          Left = 273
          Top = 175
          Width = 77
          Height = 26
          Cursor = crHandPoint
          Caption = #51200' '#51109
          Colors.Default = 16773362
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 5
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          OnClick = btnSave_blClick
        end
        object btnExit_bl: TcxButton
          Left = 356
          Top = 175
          Width = 77
          Height = 26
          Cursor = crHandPoint
          Caption = #52712' '#49548
          Colors.Default = 16773362
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 6
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          OnClick = btnExit_blClick
        end
        object edtUseCnt_bl: TcxCurrencyEdit
          Left = 97
          Top = 144
          AutoSize = False
          Properties.DisplayFormat = ',0.;-,0.'
          TabOrder = 3
          Visible = False
          Height = 26
          Width = 122
        end
        object edtQexen_bl: TcxTextEdit
          Left = 97
          Top = 22
          AutoSize = False
          Enabled = False
          TabOrder = 16
          Height = 26
          Width = 122
        end
        object cxLabel87: TcxLabel
          Left = 16
          Top = 179
          Caption = #49688#49888#44144#48512#48276#50948
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 54
          AnchorY = 187
        end
        object cbType_bl: TcxComboBox
          Left = 97
          Top = 173
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404
            #54840#48516#48176#44536#47353)
          Properties.OnChange = cbGrpNm1PropertiesChange
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
          Text = #51204#52404
          Height = 26
          Width = 122
        end
      end
    end
  end
  object grpFileUpload: TcxGroupBox
    Left = 1188
    Top = 347
    Caption = 'VIP '#44256#44061' '#54028#51068' '#46321#47197
    TabOrder = 1
    Visible = False
    OnMouseDown = grpFileUploadMouseDown
    Height = 368
    Width = 679
    object Shape85: TShape
      Left = 6
      Top = 25
      Width = 113
      Height = 24
      Pen.Color = 12566402
      Shape = stRoundRect
    end
    object cxLabel18: TcxLabel
      Left = 17
      Top = 28
      Caption = #54028#51068#51060#47492
      ParentColor = False
      Style.TextColor = clBlack
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ShadowedColor = clGray
      Transparent = True
      AnchorX = 43
      AnchorY = 36
    end
    object edtFilename: TcxTextEdit
      Left = 77
      Top = 24
      AutoSize = False
      Properties.ReadOnly = True
      TabOrder = 1
      Height = 26
      Width = 485
    end
    object btnFileUpLoad: TcxButton
      Left = 568
      Top = 24
      Width = 104
      Height = 26
      Cursor = crHandPoint
      Caption = #48520#47084#50724#44592
      Colors.Default = 16773362
      Colors.Normal = 16773362
      Colors.Pressed = 16644080
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      OnClick = btnFileUpLoadClick
    end
    object cxGroupBox18: TcxGroupBox
      Left = 8
      Top = 82
      Caption = #48520#47084#50728' '#54028#51068
      TabOrder = 3
      Height = 271
      Width = 666
      object btnFileUpSave: TcxButton
        Left = 469
        Top = 232
        Width = 89
        Height = 26
        Cursor = crHandPoint
        Caption = #51200' '#51109
        Colors.Default = 16773362
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        OnClick = btnFileUpSaveClick
      end
      object btnFileUpExit: TcxButton
        Left = 565
        Top = 232
        Width = 89
        Height = 26
        Cursor = crHandPoint
        Caption = #52712' '#49548
        Colors.Default = 16773362
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        OnClick = btnFileUpExitClick
      end
      object cxGroupBox12: TcxGroupBox
        Left = 9
        Top = 16
        TabOrder = 2
        Height = 19
        Width = 648
        object Gauge1: TAdvProgressBar
          Left = 0
          Top = 0
          Width = 648
          Height = 19
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
          Version = '1.3.1.0'
        end
      end
      object cxGridFileExcelList: TcxGrid
        Left = 9
        Top = 40
        Width = 648
        Height = 186
        BevelInner = bvNone
        BevelOuter = bvNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object cxViewFileExcelList: TcxGridDBTableView
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
          OptionsSelection.MultiSelect = True
          OptionsSelection.CellMultiSelect = True
          OptionsSelection.InvertSelect = False
          OptionsView.FocusRect = False
          OptionsView.NoDataToDisplayInfoText = '  '
          OptionsView.DataRowHeight = 22
          OptionsView.ExpandButtonsForEmptyDetails = False
          OptionsView.GridLineColor = clSilver
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 23
          object cxColXls2: TcxGridDBColumn
            DataBinding.FieldName = #54840#48516#48176#44536#47353
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 66
          end
          object cxColXls3: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#51204#54868#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 83
          end
          object cxColXls4: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#47749
            HeaderAlignmentHorz = taCenter
            Width = 98
          end
          object cxColXls5: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#49444#47749
            HeaderAlignmentHorz = taCenter
            Width = 240
          end
          object cxColXls6: TcxGridDBColumn
            Caption = #46321#47197#51088
            HeaderAlignmentHorz = taCenter
          end
          object cxColXls7: TcxGridDBColumn
            DataBinding.FieldName = #53440#51077
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 39
          end
          object cxColXls8: TcxGridDBColumn
            DataBinding.FieldName = #50629#52404#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 53
          end
          object cxColXls9: TcxGridDBColumn
            Caption = #49324#50857
            DataBinding.FieldName = #54943#49688
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
          object cxColXls1: TcxGridDBColumn
            DataBinding.FieldName = #49692#49436
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
        end
        object cxLevelLeveFilelExcelList: TcxGridLevel
          GridView = cxViewFileExcelList
        end
      end
    end
    object cxLabel1: TcxLabel
      Left = 223
      Top = 57
      Caption = #8251' '#51200#51109#49884' '#44845' '#51228#47785' '#54364#49884#51460#51012' '#51228#44144#54980' '#51200#51109#54644' '#51452#49901#49884#50836' !!!!!'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Transparent = True
    end
    object chkFirstRowHeader: TcxCheckBox
      Left = 568
      Top = 55
      Caption = #52395#50676#51008#51228#47785
      State = cbsChecked
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
    end
  end
  object pnl_Notice: TPanel
    Left = 1188
    Top = 203
    Width = 336
    Height = 138
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 2
    Visible = False
    object Panel25: TPanel
      Left = 0
      Top = 0
      Width = 332
      Height = 28
      Align = alTop
      BevelOuter = bvNone
      Caption = #54028#51068#51089#49457#49884' '#51452#51032' '#49324#54637
      Color = 8421440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        332
        28)
      object btn_HelpClose: TcxButton
        Left = 309
        Top = 4
        Width = 20
        Height = 20
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Cancel = True
        LookAndFeel.Kind = lfFlat
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
        TabOrder = 0
        OnClick = btn_HelpCloseClick
      end
    end
    object cxLabel45: TcxLabel
      Left = 2
      Top = 108
      Caption = '1) '#51204#54868#48264#54840' '#50526' '#8216'0'#8217' '#51060' '#49325#51228#46104#51648' '#50506#44172' '#51096' '#51200#51109#54644' '#51452#49464#50836
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Transparent = True
    end
    object cxLabel52: TcxLabel
      Left = 2
      Top = 34
      Caption = '- '#54840#48516#48176#48264#54840' : '#51340#52769' '#54840#48516#48176#44536#47353#48264#54840
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.TextColor = clBlack
      Style.TextStyle = []
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Transparent = True
    end
    object cxLabel57: TcxLabel
      Left = 2
      Top = 49
      Caption = '- '#46321#47197#51088' : '#54788#51116' '#47196#44536#51064' '#44288#47532#51088' ID        - '#49324#50857' : 0('#44592#48376')'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.TextColor = clBlack
      Style.TextStyle = []
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Transparent = True
    end
    object cxLabel73: TcxLabel
      Left = 2
      Top = 65
      Caption = '- '#53440#51077' >> 1 : VIP, 2 : '#49688#49888#44144#48512', 5 : '#51204#52404#49688#49888#44144#48512
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.TextColor = clBlack
      Style.TextStyle = []
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Transparent = True
    end
    object cxLabel74: TcxLabel
      Left = 2
      Top = 82
      Caption = '- '#50629#52404#53076#46300' : CID'#49444#51221' > '#50629#52404#53076#46300#50640#49436' '#54869#51064
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.TextColor = clBlack
      Style.TextStyle = []
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Transparent = True
    end
  end
  object pm_date: TPopupMenu
    AutoHotkeys = maManual
    Left = 68
    Top = 528
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
  object dlgOpen: TOpenDialog
    Left = 1016
    Top = 308
  end
  object tmrSI415A: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = tmrSI415ATimer
    Left = 153
    Top = 528
  end
  object OpenDialog1: TOpenDialog
    Filter = #50641#49472'|*.xls|'#50641#49472'(2007'#51060#49345')|*.xlsx|'#50641#49472'|*.csv|'#47928#49436'| *.txt'
    Left = 1032
    Top = 372
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 420
    Top = 386
  end
end

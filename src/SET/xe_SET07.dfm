object Frm_SET07: TFrm_SET07
  Left = 787
  Top = 268
  BorderStyle = bsNone
  Caption = 'SET07'
  ClientHeight = 472
  ClientWidth = 358
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 358
    Height = 472
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 33
      Width = 354
      Height = 435
      Align = alClient
      BevelOuter = bvNone
      Color = 16444898
      TabOrder = 0
      object cxGroupBox2: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 45
        Align = alTop
        ParentBackground = False
        ParentColor = False
        Style.BorderStyle = ebsNone
        Style.Color = clBtnFace
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Height = 36
        Width = 348
        object btnSaveType: TcxButton
          Left = 277
          Top = 7
          Width = 61
          Height = 23
          Cursor = crHandPoint
          Caption = #51200' '#51109
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 0
          OnClick = btnSaveTypeClick
        end
        object cxLabel48: TcxLabel
          Left = 9
          Top = 9
          AutoSize = False
          Caption = #49888#44508#53440#51077#47749
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = clWhite
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 20
          Width = 81
          AnchorX = 50
          AnchorY = 19
        end
        object ed_TermType_NewNm: TcxTextEdit
          Left = 91
          Top = 9
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Width = 180
        end
      end
      object cxGroupBox1: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Align = alTop
        ParentBackground = False
        ParentColor = False
        Style.BorderStyle = ebsNone
        Style.Color = clBtnFace
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 1
        DesignSize = (
          348
          36)
        Height = 36
        Width = 348
        object btnTypeDelete: TcxButton
          Left = 277
          Top = 6
          Width = 61
          Height = 23
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #53440#51077#49325#51228
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 0
          OnClick = btnTypeDeleteClick
        end
        object cbTermTypeName: TcxComboBox
          Left = 91
          Top = 7
          Properties.DropDownListStyle = lsFixedList
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 1
          OnClick = cbTermTypeNameClick
          Width = 180
        end
        object cxLabel46: TcxLabel
          Left = 9
          Top = 7
          AutoSize = False
          Caption = #44396#44036#53440#51077#47749
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = clWhite
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 20
          Width = 81
          AnchorX = 50
          AnchorY = 17
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 84
        Width = 354
        Height = 351
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object cxGroupBox3: TcxGroupBox
          AlignWithMargins = True
          Left = 246
          Top = 3
          Align = alRight
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Height = 345
          Width = 105
          object btnSave: TcxButton
            Left = 7
            Top = 11
            Width = 90
            Height = 54
            Cursor = crHandPoint
            Caption = #45936#51060#53552#51200#51109
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 0
            OnClick = btnSaveClick
          end
          object btnFileImport: TcxButton
            Left = 7
            Top = 71
            Width = 90
            Height = 27
            Cursor = crHandPoint
            Caption = #54028#51068#44032#51256#50724#44592
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 1
            OnClick = btnFileImportClick
          end
          object btnRemoveAll: TcxButton
            Left = 8
            Top = 308
            Width = 89
            Height = 26
            Cursor = crHandPoint
            Caption = #51204#52404#54665#49325#51228
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 2
            OnClick = btnRemoveAllClick
          end
          object btnSavaAs: TcxButton
            Left = 7
            Top = 99
            Width = 90
            Height = 27
            Cursor = crHandPoint
            Caption = #45796#47480#51060#47492#51200#51109
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 3
            OnClick = btnSavaAsClick
          end
          object lbTermTypeCd: TcxListBox
            Left = 61
            Top = 203
            Width = 33
            Height = 41
            ImeName = 'Microsoft Office IME 2007'
            ItemHeight = 12
            TabOrder = 4
            Visible = False
          end
        end
        object adsg_term_type: TAdvColumnGrid
          Left = 0
          Top = 0
          Width = 243
          Height = 351
          Cursor = crDefault
          Align = alClient
          ColCount = 4
          DefaultRowHeight = 21
          DrawingStyle = gdsClassic
          RowCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          GradientEndColor = 14671839
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goEditing, goTabs]
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 0
          OnKeyDown = adsg_term_typeKeyDown
          GridFixedLineColor = 10987431
          HoverRowCells = [hcNormal, hcSelected]
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ActiveCellColor = 9758459
          ActiveCellColorTo = 1414638
          AutoThemeAdapt = True
          CellNode.TreeColor = clSilver
          ColumnHeaders.Strings = (
            'No.'
            #49884#51089#44144#47532
            #46020#52265#44144#47532
            #50836#44552)
          ControlLook.FixedGradientFrom = 15524577
          ControlLook.FixedGradientTo = 11769496
          ControlLook.FixedGradientHoverFrom = clGray
          ControlLook.FixedGradientHoverTo = clWhite
          ControlLook.FixedGradientDownFrom = clGray
          ControlLook.FixedGradientDownTo = clSilver
          ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
          ControlLook.DropDownHeader.Font.Color = clWindowText
          ControlLook.DropDownHeader.Font.Height = -11
          ControlLook.DropDownHeader.Font.Name = 'Tahoma'
          ControlLook.DropDownHeader.Font.Style = []
          ControlLook.DropDownHeader.Visible = True
          ControlLook.DropDownHeader.Buttons = <>
          ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
          ControlLook.DropDownFooter.Font.Color = clWindowText
          ControlLook.DropDownFooter.Font.Height = -11
          ControlLook.DropDownFooter.Font.Name = 'Tahoma'
          ControlLook.DropDownFooter.Font.Style = []
          ControlLook.DropDownFooter.Visible = True
          ControlLook.DropDownFooter.Buttons = <>
          Filter = <>
          FilterDropDown.Font.Charset = DEFAULT_CHARSET
          FilterDropDown.Font.Color = clWindowText
          FilterDropDown.Font.Height = -11
          FilterDropDown.Font.Name = 'MS Sans Serif'
          FilterDropDown.Font.Style = []
          FilterDropDown.Height = 200
          FilterDropDown.Width = 200
          FilterDropDownClear = '(All)'
          FilterEdit.TypeNames.Strings = (
            'Starts with'
            'Ends with'
            'Contains'
            'Not contains'
            'Equal'
            'Not equal'
            'Clear')
          FixedColWidth = 46
          FixedRowHeight = 22
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -12
          FixedFont.Name = #44404#47548
          FixedFont.Style = []
          FloatFormat = '%.2f'
          HoverButtons.Buttons = <>
          HoverButtons.Position = hbLeftFromColumnLeft
          HTMLSettings.ImageFolder = 'images'
          HTMLSettings.ImageBaseName = 'img'
          PrintSettings.DateFormat = 'dd/mm/yyyy'
          PrintSettings.Font.Charset = DEFAULT_CHARSET
          PrintSettings.Font.Color = clWindowText
          PrintSettings.Font.Height = -11
          PrintSettings.Font.Name = 'MS Sans Serif'
          PrintSettings.Font.Style = []
          PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
          PrintSettings.FixedFont.Color = clWindowText
          PrintSettings.FixedFont.Height = -11
          PrintSettings.FixedFont.Name = 'MS Sans Serif'
          PrintSettings.FixedFont.Style = []
          PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
          PrintSettings.HeaderFont.Color = clWindowText
          PrintSettings.HeaderFont.Height = -11
          PrintSettings.HeaderFont.Name = 'MS Sans Serif'
          PrintSettings.HeaderFont.Style = []
          PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
          PrintSettings.FooterFont.Color = clWindowText
          PrintSettings.FooterFont.Height = -11
          PrintSettings.FooterFont.Name = 'MS Sans Serif'
          PrintSettings.FooterFont.Style = []
          PrintSettings.PageNumSep = '/'
          ScrollWidth = 15
          SearchFooter.Color = 15524577
          SearchFooter.ColorTo = 11769496
          SearchFooter.FindNextCaption = 'Find &next'
          SearchFooter.FindPrevCaption = 'Find &previous'
          SearchFooter.Font.Charset = DEFAULT_CHARSET
          SearchFooter.Font.Color = clWindowText
          SearchFooter.Font.Height = -11
          SearchFooter.Font.Name = 'MS Sans Serif'
          SearchFooter.Font.Style = []
          SearchFooter.HighLightCaption = 'Highlight'
          SearchFooter.HintClose = 'Close'
          SearchFooter.HintFindNext = 'Find next occurence'
          SearchFooter.HintFindPrev = 'Find previous occurence'
          SearchFooter.HintHighlight = 'Highlight occurences'
          SearchFooter.MatchCaseCaption = 'Match case'
          SearchFooter.ResultFormat = '(%d of %d)'
          SelectionColor = 15561512
          SelectionTextColor = clWhite
          SortSettings.DefaultFormat = ssAutomatic
          SortSettings.Show = True
          Version = '3.1.6.4'
          Columns = <
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taRightJustify
              Borders = []
              BorderPen.Color = clSilver
              ButtonHeight = 18
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              ColumnPopupType = cpFixedCellsRClick
              DropDownCount = 8
              EditLength = 0
              Editor = edNormal
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'No.'
              HeaderAlignment = taCenter
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Password = False
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = False
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 46
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taCenter
              Borders = []
              BorderPen.Color = clSilver
              ButtonHeight = 18
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              ColumnPopupType = cpFixedCellsRClick
              DropDownCount = 8
              EditLength = 0
              Editor = edNormal
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = #49884#51089#44144#47532
              HeaderAlignment = taCenter
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Password = False
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = False
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 57
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taCenter
              Borders = []
              BorderPen.Color = clSilver
              ButtonHeight = 18
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              ColumnPopupType = cpFixedCellsRClick
              DropDownCount = 8
              EditLength = 0
              Editor = edNormal
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = #46020#52265#44144#47532
              HeaderAlignment = taCenter
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Password = False
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = False
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 60
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taCenter
              Borders = []
              BorderPen.Color = clSilver
              ButtonHeight = 18
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              ColumnPopupType = cpFixedCellsRClick
              DropDownCount = 8
              EditLength = 0
              Editor = edNormal
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = #50836#44552
              HeaderAlignment = taCenter
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Password = False
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = False
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 59
            end>
          ColWidths = (
            46
            57
            60
            59)
          RowHeights = (
            22
            21)
        end
      end
    end
    object pnl_ReName: TPanel
      Left = 26
      Top = 254
      Width = 297
      Height = 101
      BevelKind = bkFlat
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      object Gauge1: TAdvProgressBar
        Left = 0
        Top = 73
        Width = 171
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
        Version = '1.3.1.0'
      end
      object cxGroupBox4: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Caption = '    '#45796#47480' '#51060#47492#51004#47196' '#51200#51109
        TabOrder = 5
        OnMouseDown = cxGroupBox4MouseDown
        Height = 97
        Width = 293
      end
      object cxLabel123: TcxLabel
        Left = 2
        Top = 32
        AutoSize = False
        Style.BorderStyle = ebsOffice11
        Height = 35
        Width = 289
      end
      object cxLabel124: TcxLabel
        Left = 7
        Top = 39
        AutoSize = False
        Caption = #53440#51077#47749
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Style.Color = clWhite
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 20
        Width = 81
        AnchorX = 48
        AnchorY = 49
      end
      object ed_charge_NewName: TcxTextEdit
        Left = 88
        Top = 39
        Properties.ImeMode = imSHanguel
        TabOrder = 0
        Width = 198
      end
      object btnSaveAsType: TcxButton
        Left = 174
        Top = 70
        Width = 56
        Height = 23
        Cursor = crHandPoint
        Caption = #51200' '#51109
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 1
        OnClick = btnSaveAsTypeClick
      end
      object btnSaveAsClose: TcxButton
        Left = 232
        Top = 70
        Width = 56
        Height = 23
        Cursor = crHandPoint
        Caption = #52712' '#49548
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 2
        OnClick = btnSaveAsCloseClick
      end
    end
    object pnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 354
      Height = 33
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  '#44144#47532#44396#44036' '#53440#51077#49444#51221
      Color = 12566463
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      OnMouseDown = pnlTitleMouseDown
      DesignSize = (
        354
        33)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 354
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = False
      end
      object cxButton1: TcxButton
        Left = 320
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
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'xls'
    Filter = 'xls|*.xls'
    Left = 124
    Top = 25
  end
end

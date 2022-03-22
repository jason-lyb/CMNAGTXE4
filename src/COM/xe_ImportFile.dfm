object Frm_ImportFile: TFrm_ImportFile
  Left = 355
  Top = 126
  BorderStyle = bsNone
  Caption = 'Frm_ImportFile'
  ClientHeight = 454
  ClientWidth = 648
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 648
    Height = 454
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    object cxGroupBox1: TcxGroupBox
      Left = 2
      Top = 39
      TabOrder = 1
      Height = 409
      Width = 640
      object btnLoadFromFile: TcxButton
        Left = 556
        Top = 66
        Width = 75
        Height = 25
        Caption = #54028#51068#52286#44592
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 0
        OnClick = btnLoadFromFileClick
      end
      object btnSelFinish: TcxButton
        Left = 551
        Top = 373
        Width = 75
        Height = 25
        Caption = #50756#47308
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 1
        OnClick = btnSelFinishClick
      end
      object chkFirstRowHeader: TcxCheckBox
        Left = 72
        Top = 97
        Caption = #52395#54665#51008' '#51228#47785
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 2
        Transparent = True
        OnClick = chkFirstRowHeaderClick
      end
      object edtCount: TEdit
        Left = 11
        Top = 378
        Width = 85
        Height = 23
        ImeName = 'Microsoft IME 2003'
        TabOrder = 3
        Text = '0'
      end
      object edtFilePath: TcxTextEdit
        Left = 72
        Top = 70
        Properties.ReadOnly = True
        TabOrder = 4
        Width = 481
      end
      object grdFileImport: TAdvColumnGrid
        Left = 11
        Top = 144
        Width = 617
        Height = 227
        Cursor = crDefault
        ColCount = 1
        DrawingStyle = gdsClassic
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goEditing]
        ParentFont = False
        PopupMenu = pmGrid
        ScrollBars = ssBoth
        TabOrder = 5
        OnDrawCell = grdFileImportDrawCell
        OnKeyDown = grdFileImportKeyDown
        HoverRowCells = [hcNormal, hcSelected]
        OnCanClickCell = grdFileImportCanClickCell
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          '')
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
        FixedColWidth = 50
        FixedRowHeight = 22
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        FloatingFooter.FooterStyle = fsColumnPreview
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
        ShowDesignHelper = False
        SortSettings.DefaultFormat = ssAutomatic
        Version = '3.1.6.4'
        Columns = <
          item
            AutoMinSize = 0
            AutoMaxSize = 0
            Alignment = taLeftJustify
            Borders = []
            BorderPen.Color = clSilver
            ButtonHeight = 18
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            ColumnPopupType = cpFixedCellsLClick
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
            HeaderAlignment = taLeftJustify
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
            Width = 50
          end>
        OnColumnPopup = grdFileImportColumnPopup
        ColWidths = (
          50)
        RowHeights = (
          22
          22)
      end
      object lbl2: TcxLabel
        Left = 16
        Top = 13
        Hint = 'Color'
        Caption = 
          '1, '#54028#51068'('#50641#49472', '#53581#49828#53944')'#51012' '#49440#53469#54616#49884#44144#45208' '#50641#49472#54028#51068#51032' '#50689#50669#51012' '#48373#49324' '#54980' '#48537#50668#45347#44592' '#54616#49464#50836'.'#13#10'2, '#44536#47532#46300#50640#49436' '#54644#45908'('#54665#47672#47532 +
          ')'#47484' '#53364#47533#54616#49884#50612' '#54637#47785#51012' '#49440#53469#54616#49464#50836'.'#13#10'3, '#50756#47308#48260#53948#51012' '#53364#47533#54616#49464#50836'.'
        Style.TextColor = 16744448
        Transparent = True
      end
      object Label1: TcxLabel
        Left = 16
        Top = 125
        Caption = '['#51088#52404#49324#48264']'
        Transparent = True
      end
      object Label2: TcxLabel
        Left = 80
        Top = 125
        Caption = '- ['#51077#44552#50529']'
        Transparent = True
      end
      object lbMemo: TcxLabel
        Left = 214
        Top = 125
        Caption = '- ['#47700#47784']'
        Transparent = True
      end
      object lbBrNo: TcxLabel
        Left = 142
        Top = 125
        Caption = '- ['#51648#49324#53076#46300']'
        Transparent = True
      end
      object lbComment: TcxLabel
        Left = 263
        Top = 125
        Caption = #49692#49436#47196' '#54637#47785#51012' '#51077#47141#54616#50668' '#51452#49901#49884#50724'.'
        Transparent = True
      end
      object lbl1: TcxLabel
        Left = 17
        Top = 73
        Caption = #54028#51068#44221#47196
        Transparent = True
      end
    end
    object pnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 644
      Height = 33
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '   '#51228#47785#51008' SetCaption'#51012' '#51060#50857
      Color = 12566463
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnMouseDown = pnlTitleMouseDown
      DesignSize = (
        644
        33)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 644
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = False
      end
      object btnClose: TcxButton
        Left = 610
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
  object pmColumn: TPopupMenu
    AutoHotkeys = maManual
    AutoPopup = False
    Left = 584
    Top = 243
    object mniDefault: TMenuItem
      Tag = -1
      Caption = ' '
      OnClick = mniColumnClick
    end
    object mniSeparate: TMenuItem
      Tag = -1
      Caption = '-'
    end
  end
  object dlgOpen: TOpenDialog
    Filter = 
      #54728#50857#54028#51068'|*.xls;*.xlsx;*.txt;*.cvs|'#50641#49472#54028#51068'(*.xls;*.xlsx)|*.xls;*.xlsx|'#53581#49828 +
      #53944#54028#51068'(*.txt;*.cvs)|*.txt;*.cvs'
    Left = 588
    Top = 311
  end
  object pmGrid: TPopupMenu
    AutoHotkeys = maManual
    Left = 588
    Top = 175
    object mniFileLoad: TMenuItem
      Caption = #54028#51068#48520#47084#50724#44592
      OnClick = mniFileLoadClick
    end
    object mniLoadClipboard: TMenuItem
      Caption = #53364#47549#48372#46300#48537#50668#45347#44592
      OnClick = mniLoadClipboardClick
    end
    object mniGridSep: TMenuItem
      Caption = '-'
    end
    object mniGridClear: TMenuItem
      Caption = #52488#44592#54868
      OnClick = mniGridClearClick
    end
  end
end

object Frm_JON63: TFrm_JON63
  Left = 246
  Top = 359
  Caption = 'Frm_JON63'
  ClientHeight = 371
  ClientWidth = 334
  Color = clBtnFace
  Constraints.MaxHeight = 410
  Constraints.MaxWidth = 350
  Constraints.MinHeight = 410
  Constraints.MinWidth = 350
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
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 334
    Height = 338
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 334
      Height = 113
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 2
      ParentBackground = False
      TabOrder = 0
      object GB_View: TcxGroupBox
        Left = 2
        Top = 2
        Align = alClient
        Caption = #44160#49353
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 0
        DesignSize = (
          330
          105)
        Height = 109
        Width = 330
        object btnDelete: TcxButton
          Left = 272
          Top = 63
          Width = 56
          Height = 39
          Cursor = crHandPoint
          Caption = #49325#51228
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 10
          TabStop = False
          Visible = False
          WordWrap = True
          OnClick = btnDeleteClick
        end
        object edtEndDesc: TcxTextEdit
          Left = 57
          Top = 37
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Enabled = False
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Text = #49436#50872#49884' '#44053#45224#44396' '#49340#49457#46041
          Visible = False
          Height = 24
          Width = 0
        end
        object edtStartDesc: TcxTextEdit
          Left = 57
          Top = 14
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Enabled = False
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Text = #49436#50872#49884' '#49569#54028#44396' '#44032#46973#46041
          Visible = False
          Height = 24
          Width = 0
        end
        object lbl2: TcxLabel
          Left = 3
          Top = 21
          AutoSize = False
          Caption = #52636#48156#51648
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Color = 16441805
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 28
          Width = 62
          AnchorX = 34
          AnchorY = 35
        end
        object edt_STPoi: TcxTextEdit
          Left = 63
          Top = 21
          AutoSize = False
          ParentFont = False
          Properties.ImeMode = imSHanguel
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          OnKeyDown = edt_STPoiKeyDown
          Height = 28
          Width = 150
        end
        object edt_EDPoi: TcxTextEdit
          Left = 63
          Top = 48
          AutoSize = False
          ParentFont = False
          Properties.ImeMode = imSHanguel
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          OnKeyDown = edt_EDPoiKeyDown
          Height = 28
          Width = 150
        end
        object cxLabel1: TcxLabel
          Left = 3
          Top = 48
          AutoSize = False
          Caption = #46020#52265#51648
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Color = 16441805
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 28
          Width = 62
          AnchorX = 34
          AnchorY = 62
        end
        object cxLabel2: TcxLabel
          Left = 3
          Top = 75
          AutoSize = False
          Caption = #50836'   '#44552
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Color = 16441805
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 28
          Width = 62
          AnchorX = 34
          AnchorY = 89
        end
        object edt_Charge: TcxTextEdit
          Left = 63
          Top = 75
          AutoSize = False
          ParentFont = False
          Properties.ImeMode = imSAlpha
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          OnKeyDown = edt_ChargeKeyDown
          OnKeyPress = edt_ChargeKeyPress
          Height = 28
          Width = 150
        end
        object btnInsert: TcxButton
          Left = 271
          Top = 62
          Width = 56
          Height = 39
          Cursor = crHandPoint
          Caption = #46321#47197
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 7
          TabStop = False
          WordWrap = True
          OnClick = btnInsertClick
        end
        object btnUpdate: TcxButton
          Left = 214
          Top = 62
          Width = 55
          Height = 39
          Cursor = crHandPoint
          Caption = #49688#51221
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 11
          TabStop = False
          WordWrap = True
          OnClick = btnUpdateClick
        end
        object btnSearch: TcxButton
          Left = 214
          Top = 21
          Width = 114
          Height = 40
          Cursor = crHandPoint
          Caption = #51312#54924
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 0
          TabStop = False
          WordWrap = True
          OnClick = btnSearchClick
        end
      end
      object edt_SEQ: TcxTextEdit
        Left = 265
        Top = 0
        AutoSize = False
        ParentFont = False
        Properties.ImeMode = imSHanguel
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Visible = False
        OnKeyDown = edt_STPoiKeyDown
        Height = 28
        Width = 40
      end
    end
    object GridA2: TcxGrid
      Left = 0
      Top = 113
      Width = 334
      Height = 225
      Align = alClient
      TabOrder = 1
      TabStop = False
      LookAndFeel.NativeStyle = False
      object cxGridALL7Charge: TcxGridDBTableView
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
        OnCellClick = cxGridALL7ChargeCellClick
        OnCellDblClick = cxGridALL7ChargeCellDblClick
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0;-,0'
            Kind = skSum
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnMoving = False
        OptionsData.Editing = False
        OptionsView.NoDataToDisplayInfoText = ' '
        OptionsView.DataRowHeight = 22
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 23
        object cxGridALL7ChargeColumn9: TcxGridDBColumn
          DataBinding.FieldName = #52636#48156#51648
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 116
        end
        object cxGridALL7ChargeColumn6: TcxGridDBColumn
          DataBinding.FieldName = #46020#52265#51648
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 116
        end
        object cxGridALL7ChargeColumn5: TcxGridDBColumn
          DataBinding.FieldName = #50836#44552'('#52380#50896')'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object cxGridALL7ChargeColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'SEQ'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
      end
      object GridA2Level: TcxGridLevel
        GridView = cxGridALL7Charge
      end
    end
  end
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 334
    Height = 33
    Cursor = crSizeAll
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '   ['#50836#44552#54364']'
    Color = 12566463
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    OnMouseDown = pnlTitleMouseDown
    DesignSize = (
      334
      33)
    object cxLblActive: TLabel
      Left = 0
      Top = 0
      Width = 334
      Height = 5
      Align = alTop
      AutoSize = False
      Color = 33023
      ParentColor = False
      Transparent = False
      ExplicitWidth = 650
    end
    object BtnClose: TcxButton
      Left = 307
      Top = 6
      Width = 23
      Height = 25
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
    object lb_FromTo: TcxLabel
      Left = 84
      Top = 9
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 473
    Top = 310
    PixelsPerInch = 96
    object cxStyleNew: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clRed
    end
  end
  object TmrChkTag: TTimer
    Tag = 100
    Enabled = False
    Interval = 500
    OnTimer = TmrChkTagTimer
    Left = 138
    Top = 160
  end
end

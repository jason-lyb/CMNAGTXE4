object Frm_JON30S: TFrm_JON30S
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Frm_JON30S'
  ClientHeight = 813
  ClientWidth = 441
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  FormStyle = fsStayOnTop
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Shape18: TShape
    Left = 0
    Top = 33
    Width = 441
    Height = 3
    Align = alTop
    Brush.Style = bsClear
    Pen.Style = psClear
    ExplicitLeft = 8
    ExplicitTop = 501
    ExplicitWidth = 433
  end
  object Panel1: TPanel
    Left = 0
    Top = 36
    Width = 441
    Height = 777
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 36
    Width = 441
    Height = 777
    Align = alClient
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 771
    ClientRectLeft = 2
    ClientRectRight = 435
    ClientRectTop = 29
    object cxTabSheet1: TcxTabSheet
      Caption = #44160#49353#49444#51221
      ImageIndex = 0
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 433
        Height = 742
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Shape9: TShape
          Left = 0
          Top = 349
          Width = 433
          Height = 3
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = 10
          ExplicitTop = 390
          ExplicitWidth = 385
        end
        object Shape11: TShape
          Left = 0
          Top = 130
          Width = 433
          Height = 3
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = 4
          ExplicitTop = 100
        end
        object Shape14: TShape
          Left = 0
          Top = 257
          Width = 433
          Height = 3
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = 10
          ExplicitTop = 218
          ExplicitWidth = 385
        end
        object Shape15: TShape
          Left = 0
          Top = 489
          Width = 433
          Height = 3
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = 2
          ExplicitTop = 527
        end
        object Shape17: TShape
          Left = 0
          Top = 696
          Width = 433
          Height = 3
          Align = alTop
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitTop = 690
        end
        object cxGroupBox3: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Caption = #44160#49353' '#49436#48260' '#49444#51221
          TabOrder = 0
          Height = 130
          Width = 433
          object Search_SETCHK16: TcxCheckBox
            Left = 10
            Top = 18
            Caption = #49828#54168#49500'POI'#51064#49885
            Style.LookAndFeel.SkinName = 'Sharp'
            Style.TextColor = 8404992
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 0
            Transparent = True
          end
          object Search_SETCHK17: TcxCheckBox
            Left = 138
            Top = 18
            Caption = #51088#46041#50756#49457#49324#50857
            Style.LookAndFeel.SkinName = 'Sharp'
            Style.TextColor = 8404992
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 1
            Transparent = True
          end
          object Search_SETCHK18: TcxCheckBox
            Left = 258
            Top = 18
            Caption = #50724#53440#48372#51221#49324#50857
            Style.LookAndFeel.SkinName = 'Sharp'
            Style.TextColor = 8404992
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 2
            Transparent = True
          end
          object Search_SETCHK19: TcxCheckBox
            Left = 10
            Top = 58
            Caption = #49324#50857#51088' POI'#44208#44284' + '#49436#48260' POI'#44208#44284' '#54632#44760' '#48372#44592
            Style.LookAndFeel.SkinName = 'Sharp'
            Style.TextColor = 8404992
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 3
            Transparent = True
          end
          object cxBtnSetA: TcxButton
            Left = 326
            Top = 38
            Width = 104
            Height = 50
            Cursor = crHandPoint
            Caption = #44160#49353#49436#48260#51648#50669#49444#51221
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 4
            OnClick = cxBtnSetAClick
          end
          object cxLabel18: TcxLabel
            Left = 4
            Top = 80
            Hint = 'Color'
            Caption = #8251' '#46041#47749' + '#39' '#39' + POI '#44160#49353#51008' '#44160#49353#46041#51032' '#51473#49900#50948#52824#47484' '#44592#51456#51004#47196' '
            ParentColor = False
            Style.Color = 8404992
            Style.TextColor = clBlue
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorX = 162
            AnchorY = 90
          end
          object cxLabel19: TcxLabel
            Left = 17
            Top = 93
            Hint = 'Color'
            Caption = #44032#44620#50868'POI'#47484' '#50864#49440#51221#47148#54644#51469#45768#45796'.  ex) '#50669#49340#46041' '#50808#54872#51008#54665
            ParentColor = False
            Style.Color = 8404992
            Style.TextColor = clBlue
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorX = 162
            AnchorY = 103
          end
          object Search_SETCHK22: TcxCheckBox
            Left = 326
            Top = 101
            Caption = #44160#49353#44208#44284#54633#52432#49436#48372#44592'('#49436#48260'POI + '#49892#49884#44036#50937#44160#49353'POI)'
            State = cbsChecked
            Style.LookAndFeel.SkinName = 'Sharp'
            Style.TextColor = 8404992
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 7
            Transparent = True
            Visible = False
          end
          object Search_SETCHK23: TcxCheckBox
            Left = 10
            Top = 38
            Caption = #53084#47560#45320' POI '#49324#50857#50504#54632
            ParentFont = False
            Properties.OnChange = Search_SETCHK23PropertiesChange
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #47569#51008#44256#46357
            Style.Font.Style = []
            Style.LookAndFeel.SkinName = 'Sharp'
            Style.TextColor = 8404992
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 8
            Transparent = True
          end
        end
        object cxGroupBox4: TcxGroupBox
          Left = 0
          Top = 133
          Align = alTop
          Caption = #49892#49884#44036' '#50937' '#44160#49353' '#49444#51221
          TabOrder = 1
          Height = 124
          Width = 433
          object Shape28: TShape
            Left = 24
            Top = 96
            Width = 147
            Height = 21
            Brush.Style = bsClear
            Pen.Color = 16763799
          end
          object Search_SETCHK1: TcxCheckBox
            Left = 10
            Top = 18
            Caption = ' '#49892#49884#44036' '#50937#44160#49353' '#54728#50857'('#44160#49353#51060' '#45712#47540#44221#50864' '#44428#51109#54616#51648' '#50504#51020')'
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 0
            Transparent = True
            OnClick = Search_SETCHK1Click
          end
          object Search_SETCHK1_2: TcxCheckBox
            Left = 21
            Top = 58
            Caption = ' '#47700#51064#44160#49353#44208#44284' '#50630#51012#46412#47564' '#50937#44160#49353#49324#50857'('#44160#49353#44208#44284' '#51648#50672#46112#49688' '#51080#51020')'
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 1
            Transparent = True
          end
          object Search_SETCHK1_3: TcxCheckBox
            Left = 21
            Top = 38
            Caption = ' '#49828#54168#51060#49828#48148' KEY'#47196' '#44160#49353
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 2
            Transparent = True
            OnClick = Search_SETCHK1_3Click
          end
          object Search_SETCHK8: TcxCheckBox
            Left = 21
            Top = 77
            Caption = ' '#47700#51064' '#44160#49353' '#44208#44284' '#50630#51012' '#44221#50864' '#51088#46041' '#49440#53469
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 3
            Transparent = True
          end
          object Search_SETCHK11: TcxCheckBox
            Left = 198
            Top = 38
            Caption = #50937' '#44160#49353#47564' '#49324#50857'('#51068#48152'POI '#44160#49353#50504#54632')'
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 4
            Transparent = True
          end
          object cbAuto: TcxCheckBox
            Left = 178
            Top = 98
            Caption = #51088#46041#50724#47448#44048#51648'/'#48320#44221'( N'#49324' -> D'#49324#47196#47564#48320#44221' )'
            State = cbsChecked
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 7
            Transparent = True
            Visible = False
          end
          object rbSelN: TcxRadioButton
            Left = 29
            Top = 97
            Caption = 'N'#49324
            Checked = True
            TabOrder = 5
            TabStop = True
            AutoSize = True
          end
          object rbSelD: TcxRadioButton
            Left = 76
            Top = 97
            Caption = 'D'#49324
            TabOrder = 6
            AutoSize = True
          end
          object rbSelA: TcxRadioButton
            Left = 121
            Top = 97
            Caption = #53685#54633
            TabOrder = 8
            AutoSize = True
          end
        end
        object cxGroupBox5: TcxGroupBox
          Left = 0
          Top = 260
          Align = alTop
          Caption = #52636'/'#46020#52265#51648' '#51088#46041' '#50756#49457' '#49444#51221
          TabOrder = 2
          Height = 89
          Width = 433
          object Search_SETCHK2: TcxCheckBox
            Left = 10
            Top = 16
            Caption = ' '#51088#46041' '#50756#49457' '#44592#45733' '#49324#50857' ('#44592#48376#44050#51008' "'#49464#48512#51648#47749'" '#51088#46041#50756#49457#51076')'
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 0
            Transparent = True
            OnClick = Search_SETCHK2Click
          end
          object Search_SETCHK2_1: TcxCheckBox
            Left = 21
            Top = 37
            Caption = ' '#46041#47749#51012' '#54637#49345' POI'#50526#50640' '#48537#51076
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 1
            Transparent = True
          end
          object Search_SETCHK2_2: TcxCheckBox
            Left = 198
            Top = 37
            Caption = ' '#49464#48512#51648#47749' '#51088#46041#51004#47196' '#48537#51076
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 2
            Transparent = True
          end
          object Search_SETCHK2_3: TcxCheckBox
            Left = 21
            Top = 57
            Caption = ' '#51064#44540'POI'#47484' '#51088#46041#51004#47196' '#48537#51076
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 3
            Transparent = True
          end
          object Search_SETCHK2_4: TcxCheckBox
            Left = 198
            Top = 57
            Caption = ' '#46020#52265#51648' '#51088#46041#50756#49457' '#44592#45733' '#49324#50857' '#50504#54632
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 4
            Transparent = True
          end
        end
        object cxGroupBox6: TcxGroupBox
          Left = 0
          Top = 352
          Align = alTop
          Caption = #44592#53440' '#44160#49353' '#49444#51221
          TabOrder = 3
          Height = 137
          Width = 433
          object Search_SETCHK12: TcxCheckBox
            Left = 10
            Top = 73
            Caption = ' '#49324#50857#51088' '#47196#52972' '#46608#45716' MySql '#51200#51109' '#51648#47749' '#49324#50857' '#50504#54632
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 0
            Transparent = True
          end
          object Search_SETCHK13: TcxCheckBox
            Left = 10
            Top = 18
            Caption = ' '#47700#51064' '#39#47532#39#51221#48372' '#48120#54364#49884'('#47196#52972' '#39#47532#39#51452#49548' '#51064#49885#51228#50808')'
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 1
            Transparent = True
          end
          object Search_SETCHK14: TcxCheckBox
            Left = 10
            Top = 91
            Caption = ' '#46020#52265#51648' '#46041'/'#49884' '#50864#49440#44160#49353' '#49324#50857
            Properties.OnChange = Search_SETCHK14PropertiesChange
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 2
            Transparent = True
          end
          object Search_SETCHK15: TcxCheckBox
            Left = 10
            Top = 111
            Caption = ' '#46020#52265#51648' '#48120#51077#47141#49884' '#51217#49688'/'#45824#44592' '#50504#46120
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 3
            Transparent = True
          end
          object Search_SETCHK21: TcxCheckBox
            Left = 198
            Top = 54
            Caption = ' '#51452#49548#50640' '#48277'/'#54665#51221#46041#47749' '#54364#49884
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 4
            Transparent = True
          end
          object Search_SETCHK3: TcxCheckBox
            Left = 10
            Top = 36
            Caption = ' '#44160#49353#50612#44032' '#46041#47749#44284' '#50756#51204' '#51068#52824#49884' '#51068#48152'POI '#44160#49353' '#50504#54632
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 5
            Transparent = True
          end
          object Search_SETCHK6: TcxCheckBox
            Left = 10
            Top = 54
            Caption = ' '#46020#52265#51648' '#44160#49353#50504#54632
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 6
            Transparent = True
          end
          object Search_SETCHK14_1: TcxCheckBox
            Left = 200
            Top = 91
            Caption = ' '#46020#52265#51648#46041#47749' '#44057#51012#44221#50864#47564' '#50864#49440#44160#49353#49324#50857
            Properties.OnChange = Search_SETCHK14_1PropertiesChange
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 7
            Transparent = True
            Visible = False
          end
        end
        object cxGroupBox7: TcxGroupBox
          Left = 0
          Top = 492
          Align = alTop
          Caption = #48120#45768#47605' '#48143' '#51064#44540' '#44592#49324' '#44160#49353' '#49444#51221
          TabOrder = 4
          DesignSize = (
            433
            200)
          Height = 204
          Width = 433
          object Image9: TImage
            Left = 95
            Top = 112
            Width = 17
            Height = 18
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
              0000001008060000001FF3FF610000033449444154388D55934B685D551486BF
              73CE7D2437373724B169081A95A6416B1221A9D60E7CC4E04045D081DA220E8A
              D48A13A1034550A82038108A1347828262C107D2818F89E844A894164DC41AA3
              4D9368539AE43E4FCED9EFBD1D84A0FEB0E01FAC6F0D167C11FF499214E3EA9E
              893BFA6E3BFE6275E4E0D1A454EB8B428C4C1BC175AE2F6D2C9E79CFA7E7DFCF
              DA579ABB4CB45BE2A4ABFB96D9D75E9979F2F8CB7377F7770F241E2D1C2AB748
              61D8AC4B16161A5C3C377FB9BDF2F189F6FAB7DF056F43029014CA5D37CEBD71
              FAF9B74E9E7CE4CE5A29DAF6648D80EC3854E6C9528BD78EFE5AC2D0F0E0404B
              8D3DA683FF59B5172F2700C353C79E79F6CDD74FCD0C7715EAEB1E93060E8F17
              98DE5F62E2D6127BFB13FE5C1334DB9AE02DB55AA97BB333F4A06A5CF82C498A
              BDB50347DE3DF3F8ECC80D8D754FDA7088DC72DF640967037D3D31237B8AF474
              C5FC70B181901A6B0D7114F536DB3E14F6EE7BF481F1F1D17D5B1B867C332073
              8FCA2D6F7F244953C3A18932471FEE6768A048BA6D305AA3B4A65C8672DFD489
              4253540E57BAA1B5A111AD80121E291C4A1A82778CDDD40BC0B99F5AA4A94249
              85320AEF348562B1A760434F6295A6AD1D6A3BECC0C221A565EE502FD3B75798
              5F4CF9F0EC5FA4A9446B89F70AEF24118602DE90B625499C60F280C81D79E688
              F1DC3F53C5BAC0E90F96B9BA9E62AC22C68097382F714653288496BABE9E91F4
              9530C223738F948E521CF8F58F0EBFFCEE595EEDA095C23A451476C63989568A
              78B062BF5A59AA87762723CB04520A94922825D9CE0C1B5B122104C62A700A6F
              15464B8C9158ABAE2559BA5A2FF5DE336B93EA681C1CC6188C324CEEEFE1D517
              C63938D9CF37DFAFB055EFEC1CF012E72442E688E6E2A92478635DBE76C514A6
              9FB0212A5B6B505A91678A03633596D7DA7CF1F51242E478B7F340172469AB79
              3EBBFAF94BD18E07A5B8367AE45861F0A1772AD5AE6A1241E41DE5620067505A
              139C22048DF58AB4D558CAFEFEE4292B56E71380105CD0E96F0BB113F32E0CDE
              E57D3C1845066B15C648829368231142F84EBB7E56AC7FFA9C136B97FE67E3BF
              56566A5D83F73E1DF74C4D95AA370F1185A2D726CBE5A56B51BAF8A56A5EF811
              2FF5EEFE3FD1C40BB84D025ED20000000049454E44AE426082}
            Transparent = True
          end
          object Image10: TImage
            Left = 228
            Top = 112
            Width = 17
            Height = 18
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
              0000001008060000001FF3FF610000031749444154388D6593DB6B5C5514C6BF
              BDCF653A939949939934C124ED18C58AA606D314C5D07889D8177D1291EA8BE0
              4315C14B11FC0704E9A35A149FFA265141C537855A122D86922A296D494A1B6D
              6BE3CC9C8967CE755FCED97BFB30A656F2C182F5B0D66FC1F7B108EE90ED968B
              8313CF3EBFE7C0EBAFD062F571EA946D2D33F0D0CB55E42D76AE9C3A1535CF7C
              ADF3946DEF90EDA63C3439F5C0D14F3E7AF2C8C1C307F639C4CE1448AE91C619
              C230C3662BC5CA4ADBACAFFEB6E45D3EF1A688AE5D00000B00FA86261F7EE49D
              CFBF79F78D99A9B1924DF2C0E0BE410B871A0EF6D61CDCFC4B204972ECA9B9A4
              7FA0D6F0C5BD47987F715149BF65D96EB96FEAD5852F8EBF363D29B60C829606
              911ACF4CBB2815082A250A0BC0F94B31589AC1A21A7D95EA40978D3F94B61717
              ECFEC6732F3DF1F4D4A37147216E69B058C381823185DBDE70A1118612424848
              2951B081E1D1C663C19FB347AD7D4F7DFCE9FCFCE868E26944BE4212E730CAA0
              E00043BB2D4489C6E9E52E6E6E320491006302291320542164F511DB38D599B8
              2B213A804834EA558AB75E1C806DF5AE175C0BC75E18C1DCC10ADE7EFF021817
              50B980D2190C7166284C8106BE4010088491C4F81001BD9DCD7F9A182B627799
              82310EC17B658CA654B20481CF11C51C51CCB077C4C1F54DB103B0B61161FAC1
              0AA4E09042F4002A0395413BDEDA4A11850C9C0934EE72B17229D801F8F95C1B
              7387EA909CFF0B61D04AC694B756167EFF23429CA4A8F51B140B04E72FFEBD03
              B074EE16EEBFA71FC3350B79C6C03943166F2CD074F3CB9337D69BACE9C518AC
              12AC6D84F0837407A0ED7571E35688FD136528CDC112C6847FE6A4A564D773EC
              92CDCDF8E18E2FE82FBFB6214586FD7757D0F45234BD04CD76826FBF5FC3E99F
              AEE2DAF516BA61AC626FF503D95DFE8A0000A16EB13CF6F289E2F0FCB15D25D7
              B58806D10A3039A073189DC11809A30518E732F2563FE3ADEFDE335AB25EDA46
              E55974F947A2922B0A8393B9421D268356BDCC33C9C118431A47EB8977F6B8E8
              FCF0A1D192FFEF1BB745AD5265577D76562967CE68D88006212627245B12FEF2
              59A3D2E8CEF97F007D98C4793B26AC140000000049454E44AE426082}
            Transparent = True
          end
          object Image11: TImage
            Left = 95
            Top = 133
            Width = 17
            Height = 18
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
              0000001008060000001FF3FF610000033B49444154388D65925B4C9B0518869F
              FFD0B21668D8D8A04081325858751D0332186262E1C68B199D9AB864263A134F
              8987EC423313BD5C4C8CDE716154668287388DD30B35660A2C125094C3066C6A
              8050686B29A3A5961E6869FFFFF362998EF9DE3FEFF77CF93E85DBA25B6CD6A6
              BB7AEE6969ED3DDDD6B2EEDB53B2EE328D75331451FDC3239583F3F3331F44D7
              AECE493E6770679C35CDAED7DFBCF86978359617898BC89F22E6B088F19148FE
              55C9263AE5AB2FDB33DD271E7BDB5EEA2ABBC56900CEEA66D7BBEF0F7CF6DC93
              3DC71D8E900A53F8032B7C3398241A3771553B28DAE5C1D36CB5F4B44F1EF347
              0E37FAFDE91F0ADB9B394DB7D8AC2FBED2D7F7FC53BE07346D1A98603399E285
              371486C784915F616F5912CFFE3850C4EEDD654AFBDDD39ED1A9E64238E41F51
              9B0EF674BDF4EC7D2735ED0A300A1223BCBAC15F1105804201AE5E2F204618CC
              351083C6C62AF5E5676E9C29717436A8ED9DBDA79D155B3A3204120323425D65
              10774D1A45015D37E93AEC4731C360864122A0283C74BFEA68F4384FE96DDE84
              0F990556C03449A5B639FFC57E4AEC3934CD469923CB4F13159416AFD3DDBA00
              AA80A252525ACED136AB4F77D883B50820093073FC3C5DC185EFDC88DC5C21BA
              61E7F26F6E16030EBABCBFA0EA1650351095FA1A5B9D2A46D4C458048983C4B8
              3E5F4C9135BFE3C4564B81F8E62EFC411B480ACC0C6000AAA8C188B28C3977B3
              8024D7162AF01E08EC28D0B402871AFD8CCF79801C900529B01CB2F9D5A919E7
              D0767611D820F6B785F08D328E7A17EE7833850EEF1F8CCD7801054427B7AD33
              392B43EAE4C46CFFA5CBF539CC104B413B765B96869AB51D78A1A0D1E15D6029
              5445245A0E8A9D6F87EB638BD7C62FA8B1D59999BEFEF6F78201AB64B652F83A
              AEA069D9FF1954EC4D70A479898D4425C98CDBE81F287D2B9D080515005B89AB
              FCC4A347CE9F3B3BFA60AD2BA3AC459DFC38D6098A0202AA6272EAF8282276B2
              F93AE3ECB9960F3F19F8FA4C6A3390F97786ADD4B5A7BBF7F1772E7EEE496FC5
              DC22E98322E95A91548348EA80E41387E4D2F70FC71F39F9F46BF6E2BAE2FFDC
              6E17556CDABEAA568FBB69DF13F71EC3575B9D77812E2B216D69745C1D9CFF7D
              FAE3643CB02C6298B7987F00E571754E3BAB38510000000049454E44AE426082}
            Transparent = True
          end
          object Image12: TImage
            Left = 228
            Top = 133
            Width = 17
            Height = 18
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
              0000001008060000001FF3FF610000032449444154388D6593CF6F547514C53F
              DFEFFB353FE94CA7D35A9AC11128B4D0046C955A6940038606818D86851195A0
              894BFE0462A271E1CA85899118576ED4C4A42151379A081AC440DA8AFCB02DAD
              D301D2CEBC99F766E6CDBC376FDE7331A98ADEE4E66EEEB9B927E71CC17F4B2A
              4624FFF4B1FC93CFBD3E30D037258DC8008AE236ABD6EDC5855F67CDE2FC6741
              717185300801C423D8546E78E8C0B10FF63F73F064B22729D023108B831E01CD
              A08360E5F75BA5DF2E7D7EA171FBF2451A5557D9048B546E74F08537BE18DA37
              71C8119AA8042AA63028873AA630A8AA71AA5A1CFA876289DCAEA3B615867E71
              E14AF780914C46A6CF7C1AD931FA6CADE971625F9E9D29837C3A4ABE37C61399
              04DB7BE3ECCE2678E8AB146452517AD253CDC2DA9C0A4076E4453FD57F646379
              9913A38FB1707D9E9F96D6614B0A9229E8C940324534DDCB9B13435C7BD0C14D
              0D1AEC39FCAE443534B2BB5E93C57B8A6E9B8C8FE4F9FE66012710DDF6031CAF
              8DD372295B357E295438D023D01C1BE2C9BD2A88049A31FED6CB47397B7C0A5D
              55D833FC3848098A0A8AF2AFA9118F686C8DEBD427D21C7FEF2E2AA06244B35F
              DD58E1E4E17132E924A72647D014F93F85010A158752C3E5E31F6E6257AAA808
              116244FDBEFE3EDD130AEF5C9AE3E29983DC7A6831B766FE23B110BC3AB983D9
              F955EE6DD8EC4D1B84AD262AE021E59F44623BA787079919CBA1299272D3C75C
              2A11061DF07D7AA31AA9A8CEDB874608C2908F667F06C746D269D7310B3F0A29
              1142A02A92B59A47DCD0C9F76D414A890C039EDA96A150B2B09D16AA9488B607
              353B5409FC80CA1F9F9856FDF4B2E5C61DCBE7F92F97F0EB16D46DA855C12A73
              C1AE805DE5A5C9DD7C78FE3477960AE036BEEE5A59D155A6CFBE1F9B79E57C27
              3BA4B89D101A35B04DA86E80B90EE575A896116E8B84A1D2705AF783D5EB47BA
              4E0C3B0156E96A3BB135D7C90C8CA1EA1229C173A15907A70E76159C06B43D3C
              AF7D3F2CDD3DC7FAC2D5BFB340CB7259BEF61DADB64924B99FBA956093865DE9
              7ED4723A78CEB7AC5E3E4769F10A61103E92C6AE5EAA20BDAD9F81ED33A4F263
              C4D21A753BA478A342BBF90D1B77E6E878EEE6FA5F9F41504CD155F2E9000000
              0049454E44AE426082}
            Transparent = True
          end
          object Image13: TImage
            Left = 95
            Top = 157
            Width = 17
            Height = 18
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
              0000001008060000001FF3FF610000031649444154388D6D935B4CDB7514C73F
              FFDFAFFDFF4B2FB48C52264EE82A10908B97CD69D818A323594834C44427F136
              7961466362A266BE2CC66962E2E50123D1478DC6071FF4CD2D2C74238A1A6236
              0296ADE000079416563A0ABDFD7BF9FB400471FBBE9EF339E7E47BCE51F88FA4
              A22A55DA21DF61E799571ACAFCBD2EB756A559A448AF934FC5980CAD0E7F3592
              39F7CD52EEF778011D006507D6B443EEB7FBFDCDCFBF5FD75CE1CCAD9B498555
              0A9B2AF63D0287078419E647098DFCFDE56B43A9372EE58D6C510208A19A9B2A
              FBCEF674F79EB35A356BF0A2CEDA8C24BD62261B33B11156589D81C432F88EE2
              DEA71D7CC288B92766F58B7F290095EECEA74E9E78FD3B2D596E59BE62A61417
              8F75FD4CDD23E3584A3244AFB772F58797C9245C08133476C3D2384B03931D6D
              52CA125B4B73EFD70D3EDFBEA95F1268453B3655727AF034F54702DCF3C038B5
              ED43ECA99E2578FE198C22DCBE09F55D94EA33D552F1B8DB8FF5F49CBAB4724D
              5008BB7016F6E22896D374708A54B88E66FF05BADF39435ED7F8A06513C3D8B2
              EDFE0EB87583A4105276BA5C36565736B6B761180A37C6DA585BF06E018A41F4
              7AEB360CB07815F636611326B32CD1B379EEA6AAA6718EF67F4C26E1E4C2879F
              EC8A6513A0D940601828CA9DB09005DAFB3EC351112130F01E0B57DAEEDA44E4
              7285755533F3FF1A26358BBD7C9544F45E428127778D0F6073432A0ED2E9F426
              3D15B5FD76E954F4B88AC5B0A31A5664C14632E2656EF40491E0018CAD93D996
              EF082C4F704B44A36353D7A6162E37B4789072A74BF97DF39CFAE224CF0D3E4D
              F581D15D70890B543B0497870744A190CE442263EFDE9CBDBDFED0E14A84D82A
              92D735926B6ED28932F4947D1B56AD50DF057F5E8E4D0436CE0E4A80CDE4E2A2
              1E7745F67B5A8F373EEC5193114926E6663AD0C3C48F7DAC845AC1109479A1F6
              18CCFFCADCD0F4472F4EE6BF9DDD7926A1C946E70BDD9D35AF7EFAE0A335F526
              348A4933A2A022A582E680D41AC5E9B1D8D0F7E197DE9ACF0D07F364EF301FAF
              F097D638FCCF7678DE7C5C45DD2F0C61312031B7F15B28B479FEA73F529F8FA4
              8D78E6DFFC7F001BD32F6291DFFDB80000000049454E44AE426082}
            Transparent = True
          end
          object Image14: TImage
            Left = 228
            Top = 157
            Width = 17
            Height = 18
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
              0000001008060000001FF3FF610000031B49444154388D6593DB6B5C5514C6BF
              BDCFC93939393371324E4862D3C2C4A68654694434912824582AA64A4B1151F0
              C53ED4472FF80FF8AE883EF96041A562B514510AA58AA5DA626DAD62A5750A35
              A1B9B4B1E94C3233E7B2EF7BFB10E22DDFD37AF9FDD662C147F0AF447E1C4DDE
              FDCCFE677B5F3E18BBD254E0157C6124EA6245D571E7EB6F1A1F7EF05BFBCC49
              6172B1C1908DE1DEEEFB47DFDCFEDEBBD3D3E34FC4631D44755808A9C1B906CF
              24D69632D42EDC76BFCEFFF2D517F5B75F5D66B33700C05B87778EBE3F76E4F8
              CC1B138F78559FE4DA02BD14DD0FFAF0CA14CD4509652DBA074252EA2C8F14D7
              AA938BF2EAA954375B5EE4C7D15BA31F7FF4D46BE3E3CC0149CB4038877BF606
              082B145D033E94B058BE9241720512007150DC12B607B6D6F2735FFA93E5A7F7
              4D3DFEF06EA60DDA6D07C60C5CC18186FFFCC62B5064A982140A4A2A04450FDB
              4A430746D247A7E881CAA183E190479A7585A42591B615D616051A3509384073
              8BD9EF5BC81289ACAD902512792A11DF15D0AD64D70B7E648AD319934838C0B8
              85ED04465E2C22EEF7600D004230F67C059D15820B47E621B8805602C66A6C89
              86F7508F74F9EB9B05D24422DE46511EEE40D84D417DC00F098AFD011ED8D70B
              A914F25C804B01A604E050A65C0BA42D8E2C11C8138EC220056F1BFC3F22D3A8
              EC88D661C9C1058776DAD106AFABA4C990270C79CAD03314E0D6E5649360EEE2
              2AAA132508C9202407971CD2C806AD933BDF369652E429038D2DA28A8F1B979A
              9B04D7CE2E63C763BDD04442680E21186EF1EBA7E899F62787E767575DB29A23
              EEA7C8D7241A0B9B2FB8FED34D74F584E81BEE82361C1963E64FFBFBA7F44AF2
              DD8959513BB9B2D442EB76869F3F5B80C8D926419AA63877F42AAC93908A21CD
              578EFDC12F9E2500D01F5687670AAF1CEB8B067779014558F631F8500F8CD350
              56837816974FCF412A06AD0556DB8D1FCEE79F3F57D70B37FF2E535F58DDBE3B
              3EF44E89F6ED0D228F586A6188868682750A4A4B30C16DC692E3E7F9D1D7EB66
              61E93F6D04808046E17D9D13333B833D2FF9089E74B081710606866BD53C51D3
              3F1E9E93974E4B30B9C1FC05E206B4B2BF47D2A50000000049454E44AE426082}
            Transparent = True
          end
          object Image15: TImage
            Left = 95
            Top = 178
            Width = 17
            Height = 18
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
              0000001008060000001FF3FF610000031449444154388D65915D4C95051CC67F
              EF0BE795C311860A7888348E7C2D9CCBAD450846D640D9DC5837D4CC8DE9855B
              EBBAE6D6876EDD74D34D56DE20AEA4D656CC4D670D53E29B95858893228D5041
              F99273E41CCF39EFF978DFA70BFBB0CEB3FD2F7FBFFFB33D068FC422774D6DC1
              EE96B6B2B68355BBEE37AD5F9FF0C95D66E94E227265A0B8E7F4CC8513BFA446
              FB93C493FC3F9B7DD5151DFBBE391BB91E76A490A4DF24B74F72BAA4D46139E1
              7A5DEF7A29FD4ECDDB5F161981D20CF8FB4F2E8DBBC9F443506764CF9C51E8DB
              4185072FC88D774ACE3129F5BA225375FAA8F9CD81222350F24FEDCE57CF9D75
              134949972475C8899DD0E40BD31A7B22ADCBE58E964E9E975247A5D45B52F290
              22534FEB68CD9153165E8F595BB0BBE595F71AF61AD63830085A41F125EC3F7C
              00286D12FF3517DCBBE02E0229D6060AD87FF8EABE1AABBECE7CB9B2ED80AF3C
              6CA25E50109C050CCF1DBCD50B6080E14993BBED323877FF92CC03A2BC7531BB
              29F0EC7EB3EAF96833BA06DC047719271266FE5823963F8EE171B0FCCB44C7AA
              58BD5803CE02B80BE0AE62E678D9F99CD398BD2E6FD587E640ABE026880C6D65
              B1730FB8B98087C46C0989D912223F3C45FECEAF302C13CC6C90436199B3D194
              56C0B9010A0141A21325986BEC8C995DDB223619004541312005A647E6D29C1D
              C1BD06BA0F0A13BD52816FFB788660EDF651C2234DA024C80699046F672D9813
              831B7BDCF834B0423A9443E2D663E4D78D6608F276F4121E6E010C5016724C46
              86B2FBCDD333BD9DD3E71A1CDC39EC1B1B302C1B6FF55486207FC73089D932EC
              9B158097DB7DB5A9BEE91FBBCCC9D4485FD7FBCF743F9859871B8D52F0622F86
              15CB10646D5821AF7698F4BD2D2463659C3C5EF4E9987D710C806223F0F8C7CD
              6F0C85AF6E9213CA556A769382DDED0A761F78785F1F941BF2CB59AE54727E97
              BE78ED831E7F5645E17F3E141B81D277B71EF9FCF7537BD24E3020452BA568A9
              F460B314A994BBFAA4E6BE3B943CDEFA61873FFB5FD87854E2C16B6DB31AEADB
              CB5BDBB734DE6A2A2E730B0D238B7B73E6E2D040CEF9BEE99F3F9B88F5FF6413
              4BFFCDFC0989B7A6E344E62AC60000000049454E44AE426082}
            Transparent = True
          end
          object Image16: TImage
            Left = 228
            Top = 178
            Width = 17
            Height = 18
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
              0000001008060000001FF3FF610000032449444154388D5D934D6F945500859F
              FBBEEF743AD319DA4E9A91B69162AB486B53292E50828A1A2244BB331A830635
              A95B63FC0D2E74E1C2C484A51B312CDCF885314AA910D12A3416B5800CB18ED6
              B6633B9DE97CDCEFEB4688E949CEEE3CAB738E609BB2493EFF64E1F8F454F1C4
              894E72E3719C895AA64145AD6D5DAE5D3855B2B3272FD52E5CF1C13900F17F78
              3C77E0F0DBF79F7CEFC0D1D1B1E86E810E0EA91D4A1ADA75C5EA8D063F5F2AB7
              CE6F7EF1CEECCA876F6E34CB32BE054FE41E7AFCFDC73E38FDE01B7B77D31FA1
              33011D818B023E09901174F6251487F3A9A9570F3D1CAD0FF4CCDDF8FA2B0150
              48EF2C9E3A7866E6D1D727C614010604B5B2C118F79F2DD65A442A2012875186
              E2FE2EFFCA53AFBD94001CE97E767AF2893D638DAA25DE1BB37251D2AA59A4B4
              286DD1DA6094421BCDAE8339CAF355D285383A343CF556924DF2B9A7079F7FAE
              6322C2F70A42CA432610C7D0A105C208621B913209290BB2651939DC47B32AF1
              F5A83FC145997494BDAF513514F6256406120A93A9EDE5DC5608D05CD7CC9D2E
              E171242244023AA24645D3B991E2FA6775C65EE8A1BD6969540CC107BCF70411
              189CC873F9A332CD9A424A855292241068CA366DA9E91AECE6AEA33952194175
              C9B2F45D1DEB1CD63A3AF2823BF7ED60CF2345AC75CC9FB989328A2444CE575A
              FFA866BD279D6423327D090085914E88C148870F9E7CB1832811F40C6600F0C1
              D25692C4A26A8BB585B3F7FED97F2CB880DAB27CF3EE124A3ACA0B9BD42A6D8C
              33DC319A255388183FD2CFE4B121B4D234DB6D621F9CCF75F6B67754469E51EB
              36BA76768DAB33AB2C5FAB51AFB69052225B92B57295BF7EAB509A5F66B954E1
              FB8F7F6575756D360658D1A5DF7BC4D0A8BE9A19DBF8A389D61AA535DA288CD5
              98A070686C906CD5B7B8B95066FDEF5AF54AE3D3E331800BD6364465B6570C4D
              46263DECBDC57885F11A1B3436288C9758AF704ED26AC8EAF5E6C5E945F3EDCC
              ED2FD44CA559D23F7E92D0D59136DDFB7DB08943E350382F5146D292ED506B6E
              CE2D36CEBFFC8B39F7A5C705B17D28B1484583E97B7615187A71B778A0A72FBB
              33529AF093FADC18D13857D23FCCEAD06EDDCAFF0B2551CBA27FFF939A000000
              0049454E44AE426082}
            Transparent = True
          end
          object Search_SETCHK10: TcxCheckBox
            Left = 21
            Top = 88
            Caption = ' '#51064#44540' '#44592#49324#49345#53468' '#51204#52404#44160#49353
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 0
            Transparent = True
          end
          object Search_SETCHK4_1: TcxCheckBox
            Left = 21
            Top = 69
            Caption = ' '#51064#44540#44592#49324' '#44160#49353#49324#50857
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 1
            Transparent = True
          end
          object Search_SETCHK9: TcxCheckBox
            Left = 198
            Top = 88
            Caption = ' '#51064#44540#44592#49324' '#44592#48376' '#52897#49496#49324#50857
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 2
            Transparent = True
          end
          object cxLabel10: TcxLabel
            Left = 113
            Top = 158
            Caption = '- '#48120#51217#49549#44592#49324
            Transparent = True
          end
          object cxLabel11: TcxLabel
            Left = 246
            Top = 134
            Caption = '- '#50868#54665#51473#44592#49324
            Transparent = True
          end
          object cxLabel12: TcxLabel
            Left = 246
            Top = 179
            Caption = '- '#50868#54665#51473#44592#49324
            Transparent = True
          end
          object cxLabel3: TcxLabel
            Left = 25
            Top = 111
            Caption = '['#51088#49324']'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorX = 43
            AnchorY = 121
          end
          object cxLabel4: TcxLabel
            Left = 246
            Top = 113
            Caption = '- '#45800#49692#51217#49549#44592#49324
            Transparent = True
          end
          object cxLabel5: TcxLabel
            Left = 113
            Top = 134
            Caption = '- '#50724#45908#51217#49549#44592#49324
            Transparent = True
          end
          object cxLabel6: TcxLabel
            Left = 113
            Top = 179
            Caption = '- '#50724#45908#51217#49549#44592#49324
            Transparent = True
          end
          object cxLabel7: TcxLabel
            Left = 246
            Top = 158
            Caption = '- '#45800#49692#51217#49549#44592#49324
            Transparent = True
          end
          object cxLabel8: TcxLabel
            Left = 23
            Top = 156
            Caption = '['#53440#49324']'
            Transparent = True
          end
          object cxLabel9: TcxLabel
            Left = 113
            Top = 113
            Caption = '- '#48120#51217#49549#44592#49324
            Transparent = True
          end
          object chkUseMiniMap: TcxCheckBox
            Left = 10
            Top = 16
            Hint = #48120#45768#47605#49324#50857
            Anchors = [akTop, akRight]
            Caption = #48120#45768#47605' '#49324#50857
            ParentShowHint = False
            ShowHint = True
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 13
            Transparent = True
            OnClick = chkUseMiniMapClick
          end
          object Search_SETCHK4: TcxCheckBox
            Left = 21
            Top = 32
            Caption = ' POI'#44160#49353#49884' '#51064#44540#44592#49324' '#51088#46041#44160#49353#49324#50857' (500'#48120#53552' '#51060#45236' '#44592#49324#44160#49353')'
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 14
            Transparent = True
            OnClick = Search_SETCHK4Click
          end
          object Search_SETCHK4_2: TcxCheckBox
            Left = 45
            Top = 50
            Caption = ' POI'#44160#49353#49884' 3'#52488' '#51648#50672#44160#49353' '#49324#50857
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 15
            Transparent = True
          end
        end
        object cxGroupBox9: TcxGroupBox
          Left = 0
          Top = 699
          Align = alClient
          TabOrder = 5
          Height = 43
          Width = 433
          object btnClose2: TcxButton
            Left = 218
            Top = 3
            Width = 212
            Height = 38
            Cursor = crHandPoint
            Caption = #45803' '#44592
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 0
            OnClick = btnClose2Click
          end
          object btnClose4: TcxButton
            Left = 3
            Top = 3
            Width = 212
            Height = 38
            Cursor = crHandPoint
            Caption = #51200' '#51109
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 1
            OnClick = btnClose4Click
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #44160#49353' API Key '#44288#47532
      ImageIndex = 1
      DesignSize = (
        433
        742)
      object Shape16: TShape
        Left = 0
        Top = 0
        Width = 433
        Height = 3
        Align = alTop
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitLeft = -3
        ExplicitTop = 102
      end
      object Shape24: TShape
        Left = 0
        Top = 413
        Width = 433
        Height = 3
        Align = alBottom
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitLeft = -3
        ExplicitTop = 340
      end
      object cxgrpNew: TcxGroupBox
        Left = 0
        Top = 3
        Align = alClient
        Caption = #39'N'#39#49324' API '#44288#47532
        TabOrder = 0
        Height = 410
        Width = 433
        object cxGrid3: TcxGrid
          Left = 3
          Top = 179
          Width = 427
          Height = 224
          Align = alBottom
          BevelInner = bvNone
          BevelOuter = bvNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object cxViewNaverAPI: TcxGridDBTableView
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
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCellDblClick = cxViewNaverAPICellDblClick
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
            OptionsCustomize.ColumnSorting = False
            OptionsData.Editing = False
            OptionsView.FocusRect = False
            OptionsView.NoDataToDisplayInfoText = '  '
            OptionsView.DataRowHeight = 22
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 22
            object cxGridDBColumn8: TcxGridDBColumn
              DataBinding.FieldName = 'No.'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 27
            end
            object cxGridDBColumn10: TcxGridDBColumn
              DataBinding.FieldName = 'API Key'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
              Width = 103
            end
            object cxGridDBColumn11: TcxGridDBColumn
              DataBinding.FieldName = #50500#51060#46356
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 129
            end
            object cxGridDBColumn12: TcxGridDBColumn
              DataBinding.FieldName = #54056#49828#50892#46300
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxGridDBColumn13: TcxGridDBColumn
              DataBinding.FieldName = #47700' '#47784
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 111
            end
            object cxGridDBColumn14: TcxGridDBColumn
              DataBinding.FieldName = #49324#50857#50668#48512
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 55
            end
            object cxGridDBColumn15: TcxGridDBColumn
              DataBinding.FieldName = #48376#49324#53076#46300
              Visible = False
            end
            object cxGridDBColumn16: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#53076#46300
              Visible = False
            end
            object cxGridDBColumn17: TcxGridDBColumn
              DataBinding.FieldName = 'SEQ'
              Visible = False
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxViewNaverAPI
          end
        end
        object cxGroupBox1: TcxGroupBox
          Left = 3
          Top = 15
          Caption = ' '#51312' '#54924
          TabOrder = 0
          Height = 78
          Width = 367
          object Shape19: TShape
            Left = 3
            Top = 43
            Width = 67
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape20: TShape
            Left = 66
            Top = 43
            Width = 241
            Height = 24
            Pen.Color = clSilver
          end
          object Shape21: TShape
            Left = 3
            Top = 16
            Width = 67
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object BtnApiNSch: TcxButton
            Left = 311
            Top = 16
            Width = 50
            Height = 51
            Cursor = crHandPoint
            Caption = #51312' '#54924
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            TabOrder = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object cxLabel22: TcxLabel
            Left = 10
            Top = 19
            Caption = #50500' '#51060' '#46356
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 34
            AnchorY = 29
          end
          object cxLabel23: TcxLabel
            Left = 5
            Top = 45
            Caption = #49324#50857' '#50976#47924
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 33
            AnchorY = 55
          end
          object EdNSNID: TcxTextEdit
            Left = 65
            Top = 15
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            Height = 26
            Width = 243
          end
          object RBNSA: TcxRadioButton
            Left = 72
            Top = 46
            Width = 48
            Height = 17
            Caption = #51204#52404
            Checked = True
            TabOrder = 4
            TabStop = True
            Transparent = True
          end
          object RBNSN: TcxRadioButton
            Left = 219
            Top = 46
            Width = 75
            Height = 17
            Caption = #49324#50857#50504#54632
            TabOrder = 5
            Transparent = True
          end
          object RBNSY: TcxRadioButton
            Left = 147
            Top = 46
            Width = 48
            Height = 17
            Caption = #49324#50857
            TabOrder = 6
            Transparent = True
          end
        end
        object BtnApiNA: TcxButton
          Left = 376
          Top = 15
          Width = 50
          Height = 78
          Cursor = crHandPoint
          Caption = #52628' '#44032
          Colors.Default = 16773362
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          TabOrder = 1
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = BtnApiNAClick
        end
        object PnlNaverAPINMng: TcxGroupBox
          Left = 10
          Top = 129
          Caption = ' '#46321#47197
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Visible = False
          Height = 145
          Width = 412
          object Shape22: TShape
            Left = 4
            Top = 17
            Width = 107
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape23: TShape
            Left = 4
            Top = 43
            Width = 107
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape25: TShape
            Left = 4
            Top = 71
            Width = 107
            Height = 36
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape26: TShape
            Left = 5
            Top = 110
            Width = 107
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape27: TShape
            Left = 87
            Top = 110
            Width = 148
            Height = 24
            Pen.Color = clSilver
          end
          object EdNNId: TcxTextEdit
            Left = 87
            Top = 16
            AutoSize = False
            Properties.ImeMode = imSAlpha
            Properties.OnChange = EdNNIdPropertiesChange
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Height = 26
            Width = 213
          end
          object EdNNPw: TcxTextEdit
            Left = 87
            Top = 42
            AutoSize = False
            Properties.ImeMode = imSAlpha
            Properties.OnChange = EdNNIdPropertiesChange
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Height = 26
            Width = 213
          end
          object cxMemo2: TcxMemo
            Left = 87
            Top = 70
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Height = 38
            Width = 321
          end
          object RBNY: TcxRadioButton
            Left = 92
            Top = 114
            Width = 62
            Height = 17
            Caption = ' '#49324' '#50857
            Checked = True
            TabOrder = 3
            TabStop = True
            Transparent = True
          end
          object RBNN: TcxRadioButton
            Left = 154
            Top = 114
            Width = 80
            Height = 17
            Caption = ' '#49324#50857#50504#54632
            TabOrder = 4
            Transparent = True
          end
          object BtnApiNU: TcxButton
            Left = 237
            Top = 110
            Width = 54
            Height = 24
            Cursor = crHandPoint
            Caption = #49688' '#51221
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            TabOrder = 5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = BtnApiNUClick
          end
          object BtnApiND: TcxButton
            Left = 294
            Top = 110
            Width = 55
            Height = 24
            Cursor = crHandPoint
            Caption = #49325' '#51228
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            TabOrder = 6
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = BtnApiNDClick
          end
          object cxButton8: TcxButton
            Left = 352
            Top = 110
            Width = 55
            Height = 24
            Cursor = crHandPoint
            Caption = #45803' '#44592
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            TabOrder = 7
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = cxButton8Click
          end
          object BtnApiNTest: TcxButton
            Left = 306
            Top = 16
            Width = 101
            Height = 51
            Cursor = crHandPoint
            Caption = 'API '#51221#49345' '#54869#51064
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            TabOrder = 8
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = BtnApiNTestClick
          end
          object cxLabel24: TcxLabel
            Left = 23
            Top = 19
            Caption = #50500' '#51060' '#46356
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 47
            AnchorY = 29
          end
          object cxLabel25: TcxLabel
            Left = 23
            Top = 45
            Caption = #54056#49828#50892#46300
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 49
            AnchorY = 55
          end
          object cxLabel27: TcxLabel
            Left = 22
            Top = 78
            Caption = #47700'     '#47784
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 46
            AnchorY = 88
          end
          object cxLabel28: TcxLabel
            Left = 18
            Top = 113
            Caption = #49324#50857' '#50976#47924
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 46
            AnchorY = 123
          end
        end
      end
      object cxgrpOld: TcxGroupBox
        Left = 0
        Top = 416
        Align = alBottom
        Caption = #39'D'#39#49324' API '#44288#47532
        TabOrder = 1
        Height = 326
        Width = 433
        object BtnApiA: TcxButton
          Left = 376
          Top = 15
          Width = 50
          Height = 78
          Cursor = crHandPoint
          Caption = #52628' '#44032
          Colors.Default = 16773362
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = BtnApiAClick
        end
        object cxGridNaverAPI: TcxGrid
          Left = 3
          Top = 95
          Width = 427
          Height = 224
          Align = alBottom
          BevelInner = bvNone
          BevelOuter = bvNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object cxViewDaumAPI: TcxGridDBTableView
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
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCellDblClick = cxViewDaumAPICellDblClick
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
            OptionsCustomize.ColumnSorting = False
            OptionsData.Editing = False
            OptionsView.FocusRect = False
            OptionsView.NoDataToDisplayInfoText = '  '
            OptionsView.DataRowHeight = 22
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 22
            object cxViewDaumAPIColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'No.'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 27
            end
            object cxViewDaumAPIColumn3: TcxGridDBColumn
              DataBinding.FieldName = #50545' '#51060#47492
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 83
            end
            object cxViewDaumAPIColumn2: TcxGridDBColumn
              DataBinding.FieldName = 'API Key'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 111
            end
            object cxViewDaumAPIColumn4: TcxGridDBColumn
              DataBinding.FieldName = #50500#51060#46356#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxViewDaumAPIColumn5: TcxGridDBColumn
              DataBinding.FieldName = #47700' '#47784
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 121
            end
            object cxViewDaumAPIColumn6: TcxGridDBColumn
              DataBinding.FieldName = #49324#50857#50668#48512
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 60
            end
            object cxViewDaumAPIColumn7: TcxGridDBColumn
              DataBinding.FieldName = #48376#49324#53076#46300
              Visible = False
            end
            object cxViewDaumAPIColumn8: TcxGridDBColumn
              DataBinding.FieldName = #51648#49324#53076#46300
              Visible = False
            end
            object cxViewDaumAPIColumn9: TcxGridDBColumn
              DataBinding.FieldName = 'SEQ'
              Visible = False
            end
          end
          object cxGridLevel4: TcxGridLevel
            GridView = cxViewDaumAPI
          end
        end
        object cxGroupBox10: TcxGroupBox
          Left = 3
          Top = 15
          Caption = ' '#51312' '#54924
          TabOrder = 2
          Height = 78
          Width = 367
          object Shape1: TShape
            Left = 3
            Top = 43
            Width = 67
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape2: TShape
            Left = 66
            Top = 43
            Width = 241
            Height = 24
            Pen.Color = clSilver
          end
          object Shape35: TShape
            Left = 3
            Top = 16
            Width = 67
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object BtnApiSch: TcxButton
            Left = 311
            Top = 16
            Width = 50
            Height = 51
            Cursor = crHandPoint
            Caption = #51312' '#54924
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            TabOrder = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = BtnApiSchClick
          end
          object cxLabel1: TcxLabel
            Left = 11
            Top = 19
            Caption = 'API Key'
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 34
            AnchorY = 29
          end
          object cxLabel2: TcxLabel
            Left = 5
            Top = 45
            Caption = #49324#50857' '#50976#47924
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 33
            AnchorY = 55
          end
          object EdNSKey: TcxTextEdit
            Left = 65
            Top = 15
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            Height = 26
            Width = 243
          end
          object RBSA: TcxRadioButton
            Left = 72
            Top = 46
            Width = 48
            Height = 17
            Caption = #51204#52404
            Checked = True
            TabOrder = 4
            TabStop = True
            Transparent = True
          end
          object RBSN: TcxRadioButton
            Left = 219
            Top = 46
            Width = 75
            Height = 17
            Caption = #49324#50857#50504#54632
            TabOrder = 5
            Transparent = True
          end
          object RBSY: TcxRadioButton
            Left = 147
            Top = 46
            Width = 48
            Height = 17
            Caption = #49324#50857
            TabOrder = 6
            Transparent = True
          end
        end
        object PnlNaverAPIMng: TcxGroupBox
          Left = 10
          Top = 113
          Caption = ' '#46321#47197
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Visible = False
          Height = 145
          Width = 412
          object Shape3: TShape
            Left = 5
            Top = 17
            Width = 107
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape4: TShape
            Left = 211
            Top = 17
            Width = 107
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
            Visible = False
          end
          object Shape5: TShape
            Left = 5
            Top = 44
            Width = 107
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape6: TShape
            Left = 4
            Top = 71
            Width = 107
            Height = 36
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape7: TShape
            Left = 5
            Top = 110
            Width = 107
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape8: TShape
            Left = 87
            Top = 110
            Width = 148
            Height = 24
            Pen.Color = clSilver
          end
          object EdNId: TcxTextEdit
            Left = 87
            Top = 16
            AutoSize = False
            Properties.ImeMode = imSHanguel
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Height = 26
            Width = 320
          end
          object EdNNm: TcxTextEdit
            Left = 301
            Top = 16
            AutoSize = False
            Properties.ImeMode = imSAlpha
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Visible = False
            Height = 26
            Width = 107
          end
          object EdNKey: TcxTextEdit
            Left = 87
            Top = 43
            AutoSize = False
            Properties.ImeMode = imSAlpha
            Properties.OnChange = EdNKeyPropertiesChange
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Height = 26
            Width = 217
          end
          object cxMemo1: TcxMemo
            Left = 87
            Top = 70
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            Height = 38
            Width = 321
          end
          object RBY: TcxRadioButton
            Left = 92
            Top = 114
            Width = 62
            Height = 17
            Caption = ' '#49324' '#50857
            Checked = True
            TabOrder = 4
            TabStop = True
            Transparent = True
          end
          object RBN: TcxRadioButton
            Left = 154
            Top = 114
            Width = 80
            Height = 17
            Caption = ' '#49324#50857#50504#54632
            TabOrder = 5
            Transparent = True
          end
          object BtnApiU: TcxButton
            Left = 237
            Top = 110
            Width = 54
            Height = 24
            Cursor = crHandPoint
            Caption = #49688' '#51221
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            TabOrder = 6
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = BtnApiUClick
          end
          object BtnApiD: TcxButton
            Left = 294
            Top = 110
            Width = 55
            Height = 24
            Cursor = crHandPoint
            Caption = #49325' '#51228
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            TabOrder = 7
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = BtnApiDClick
          end
          object cxButton77: TcxButton
            Left = 352
            Top = 110
            Width = 55
            Height = 24
            Cursor = crHandPoint
            Caption = #45803' '#44592
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            TabOrder = 8
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = cxButton77Click
          end
          object BtnApiTest: TcxButton
            Left = 306
            Top = 44
            Width = 101
            Height = 24
            Cursor = crHandPoint
            Caption = 'API '#51221#49345' '#54869#51064
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
            OnClick = BtnApiTestClick
          end
          object cxLabel13: TcxLabel
            Left = 25
            Top = 19
            Caption = #50545' '#51060#47492
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 47
            AnchorY = 29
          end
          object cxLabel14: TcxLabel
            Left = 231
            Top = 19
            Caption = #50500#51060#46356#47749
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            Visible = False
            AnchorX = 257
            AnchorY = 29
          end
          object cxLabel15: TcxLabel
            Left = 21
            Top = 47
            Caption = ' API Key'
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 46
            AnchorY = 57
          end
          object cxLabel16: TcxLabel
            Left = 22
            Top = 78
            Caption = #47700'     '#47784
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 46
            AnchorY = 88
          end
          object cxLabel17: TcxLabel
            Left = 18
            Top = 113
            Caption = #49324#50857' '#50976#47924
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 46
            AnchorY = 123
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 1
        Width = 434
        Height = 742
        Anchors = [akLeft, akTop, akBottom]
        BevelKind = bkTile
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 2
        object chk_NAPIKey: TcxCheckBox
          Left = 13
          Top = 20
          Caption = ' N'#49324' API KEY '#49324#50857'('#51088#46041' '#51201#50857#51473')'
          ParentFont = False
          Properties.ReadOnly = True
          State = cbsChecked
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.SkinName = 'Sharp'
          Style.TextColor = 8404992
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 0
          Transparent = True
          Visible = False
        end
        object chk_DAPIKey: TcxCheckBox
          Left = 13
          Top = 49
          Caption = ' D'#49324' API KEY '#49324#50857'('#49440#53469'-'#49324#50857#54632')'
          ParentFont = False
          Properties.OnChange = chk_DAPIKeyPropertiesChange
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.SkinName = 'Sharp'
          Style.TextColor = 8404992
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 1
          Transparent = True
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = #44160#49353' POI '#52824#54872' '#44288#47532
      ImageIndex = 2
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        TabOrder = 0
        Height = 742
        Width = 433
        object Shape10: TShape
          Left = 3
          Top = 5
          Width = 106
          Height = 23
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxGrid1: TcxGrid
          Left = 3
          Top = 85
          Width = 427
          Height = 654
          Align = alBottom
          BevelInner = bvNone
          BevelOuter = bvNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object cxViewPOICNm: TcxGridDBTableView
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
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCellDblClick = cxViewPOICNmCellDblClick
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
            OptionsCustomize.ColumnSorting = False
            OptionsData.Editing = False
            OptionsView.FocusRect = False
            OptionsView.NoDataToDisplayInfoText = '  '
            OptionsView.DataRowHeight = 22
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 22
            object cxGridDBColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'No.'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 27
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = 'POI'#47749
              DataBinding.FieldName = 'API Key'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 163
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = 'POI'#52824#54872#47749
              DataBinding.FieldName = #44160#49353'ID'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 151
            end
            object cxGridDBColumn9: TcxGridDBColumn
              DataBinding.FieldName = 'SEQ'
              Visible = False
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxViewPOICNm
          end
        end
        object BtnPoiSch: TcxButton
          Left = 274
          Top = 6
          Width = 50
          Height = 67
          Cursor = crHandPoint
          Caption = #51312' '#54924
          Colors.Default = 16773362
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 1
          OnClick = BtnPoiSchClick
        end
        object BtnPoiA: TcxButton
          Left = 326
          Top = 6
          Width = 50
          Height = 67
          Cursor = crHandPoint
          Caption = #52628' '#44032
          Colors.Default = 16773362
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 2
          OnClick = BtnPoiAClick
        end
        object BtnPoiSchC: TcxButton
          Left = 378
          Top = 6
          Width = 50
          Height = 67
          Cursor = crHandPoint
          Caption = #45803' '#44592
          Colors.Default = 16773362
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 3
          OnClick = BtnPoiSchCClick
        end
        object cbPOICngYn: TcxCheckBox
          Left = 8
          Top = 7
          Caption = 'POI'#52824#54872' '#49324#50857
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.LookAndFeel.SkinName = 'Sharp'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 5
          Transparent = True
          OnClick = cbPOICngYnClick
        end
        object cxButton1: TcxButton
          Left = 115
          Top = 5
          Width = 89
          Height = 23
          Cursor = crHandPoint
          Caption = #44592#48376' '#52824#54872' '#48372#44592
          Colors.Default = 16773362
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 6
          OnClick = cxButton1Click
        end
        object cxGrpPOIBase: TcxGroupBox
          Left = 16
          Top = 265
          Caption = #44592#48376' '#52824#54872' '#45236#50669' '
          TabOrder = 7
          Visible = False
          DesignSize = (
            414
            191)
          Height = 195
          Width = 414
          object Label4: TLabel
            Left = 11
            Top = 167
            Width = 149
            Height = 15
            Caption = #8251' '#51200#51109' '#54980' '#49324#50857' '#44032#45733#54633#45768#45796'.'
          end
          object cxGrid2: TcxGrid
            Left = 3
            Top = 17
            Width = 408
            Height = 142
            Align = alTop
            BevelInner = bvNone
            BevelOuter = bvNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object cxViewPOIBaseCNm: TcxGridDBTableView
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
              ScrollbarAnnotations.CustomAnnotations = <>
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
              OptionsCustomize.ColumnSorting = False
              OptionsData.Editing = False
              OptionsView.FocusRect = False
              OptionsView.NoDataToDisplayInfoText = '  '
              OptionsView.DataRowHeight = 22
              OptionsView.ExpandButtonsForEmptyDetails = False
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 22
              Styles.Background = Frm_Main.cxStyleGridBackColor
              object cxGridDBColumn4: TcxGridDBColumn
                DataBinding.FieldName = 'No.'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 27
              end
              object cxGridDBColumn5: TcxGridDBColumn
                Caption = 'POI'#47749
                DataBinding.FieldName = 'API Key'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 176
              end
              object cxGridDBColumn6: TcxGridDBColumn
                Caption = 'POI'#52824#54872#47749
                DataBinding.FieldName = #44160#49353'ID'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 184
              end
              object cxGridDBColumn7: TcxGridDBColumn
                DataBinding.FieldName = 'SEQ'
                Visible = False
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxViewPOIBaseCNm
            end
          end
          object cxButton2: TcxButton
            Left = 300
            Top = 160
            Width = 54
            Height = 24
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #51200' '#51109
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 1
            OnClick = cxButton2Click
          end
          object cxButton3: TcxButton
            Left = 356
            Top = 160
            Width = 55
            Height = 24
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #45803' '#44592
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 2
            OnClick = cxButton3Click
          end
        end
        object gbPOIMng: TcxGroupBox
          Left = 8
          Top = 123
          Caption = ' '#46321#47197
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Visible = False
          Height = 83
          Width = 412
          object Shape12: TShape
            Left = 5
            Top = 18
            Width = 107
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape13: TShape
            Left = 211
            Top = 18
            Width = 107
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object EdPOINm: TcxTextEdit
            Left = 87
            Top = 17
            AutoSize = False
            Properties.ImeMode = imSAlpha
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Height = 26
            Width = 120
          end
          object EdPOICNm: TcxTextEdit
            Left = 301
            Top = 17
            AutoSize = False
            Properties.ImeMode = imSAlpha
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Height = 26
            Width = 107
          end
          object BtnPOIU: TcxButton
            Left = 237
            Top = 46
            Width = 54
            Height = 24
            Cursor = crHandPoint
            Caption = #49688' '#51221
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 2
            OnClick = BtnPOIUClick
          end
          object BtnPOID: TcxButton
            Left = 294
            Top = 46
            Width = 55
            Height = 24
            Cursor = crHandPoint
            Caption = #49325' '#51228
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 3
            OnClick = BtnPOIDClick
          end
          object BtnPOIE: TcxButton
            Left = 352
            Top = 46
            Width = 55
            Height = 24
            Cursor = crHandPoint
            Caption = #45803' '#44592
            Colors.Default = 16773362
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 4
            OnClick = BtnPOIEClick
          end
          object cxLabel20: TcxLabel
            Left = 30
            Top = 20
            Caption = 'POI'#47749
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 48
            AnchorY = 30
          end
          object cxLabel21: TcxLabel
            Left = 227
            Top = 20
            Caption = 'POI'#52824#54872#47749
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 257
            AnchorY = 30
          end
        end
        object Label1: TcxLabel
          Left = 8
          Top = 61
          Caption = #8251' '#52636#48156#51648' POI '#47560#51648#47561' '#47749#52845' '#51068#52824#49884' '#52824#54872#46121#45768#45796'.'
          Transparent = True
        end
        object Label2: TcxLabel
          Left = 7
          Top = 31
          Caption = #50696#49884') POI'#47749' : '#49324#44144#47532' , POI'#52824#54872#47749' : 4'
          Transparent = True
        end
        object Label3: TcxLabel
          Left = 6
          Top = 45
          Caption = ' - '#44053#45224#49324#44144#47532' -> '#44053#45224'4 '#51088#46041#52824#54872
          Transparent = True
        end
      end
    end
  end
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 441
    Height = 33
    Cursor = crSizeAll
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '   POI '#44160#49353' '#49444#51221
    Color = 12566463
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    OnMouseDown = pnlTitleMouseDown
    DesignSize = (
      441
      33)
    object cxLblActive: TLabel
      Left = 0
      Top = 0
      Width = 441
      Height = 5
      Align = alTop
      AutoSize = False
      Color = 33023
      ParentColor = False
      Transparent = False
      ExplicitWidth = 810
    end
    object BtnClose: TcxButton
      Left = 405
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
      OnClick = BtnCloseClick
    end
    object btnGetList: TcxButton
      Left = 2
      Top = 13
      Width = 14
      Height = 10
      Anchors = [akTop, akRight]
      TabOrder = 1
      Visible = False
      OnClick = btnGetListClick
    end
  end
end

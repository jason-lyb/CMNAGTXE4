object Frm_JON35: TFrm_JON35
  Left = 846
  Top = 429
  BorderStyle = bsNone
  Caption = 'Frm_JON35'
  ClientHeight = 187
  ClientWidth = 272
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 272
    Height = 187
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 16444898
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 27
      Top = 52
      Caption = #51204#54868#50772#49845#45768#45796'.'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -32
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object btn_Answer: TcxButton
      Left = 13
      Top = 100
      Width = 241
      Height = 73
      Caption = #51204#54868#48155#44592
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btn_AnswerClick
    end
    object cxLabel2: TcxLabel
      Left = 11
      Top = 8
      Caption = 'DNIS :'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 11
      Top = 33
      Caption = #45824#54364#48264#54840' :'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
  end
  object tmr_Ring: TTimer
    Enabled = False
    Interval = 500
    OnTimer = tmr_RingTimer
    Left = 12
    Top = 44
  end
  object tmr1: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = tmr1Timer
    Left = 180
    Top = 20
  end
  object IdHTTPBix: TIdHTTP
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
    Left = 216
    Top = 128
  end
end

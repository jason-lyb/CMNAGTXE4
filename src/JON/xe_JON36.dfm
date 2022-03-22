object Frm_JON36: TFrm_JON36
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Frm_JON36'
  ClientHeight = 155
  ClientWidth = 342
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poOwnerFormCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object edtEmail: TcxTextEdit
    Left = 57
    Top = 56
    AutoSize = False
    Properties.ImeMode = imSAlpha
    TabOrder = 0
    TextHint = 'sample@email.com'
    Height = 25
    Width = 220
  end
  object cxLabel1: TcxLabel
    Left = 59
    Top = 22
    Caption = #52852#46300#51204#54364' '#48155#51012' '#51060#47700#51068#51012' '#51077#47141' '#54616#49464#50836'~'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = #47569#51008' '#44256#46357
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object btnSendMail: TcxButton
    Left = 57
    Top = 110
    Width = 105
    Height = 27
    Cursor = crHandPoint
    Caption = #51116#48156#49569
    LookAndFeel.SkinName = 'Sharp'
    TabOrder = 2
    OnClick = btnSendMailClick
  end
  object btnClose: TcxButton
    Left = 172
    Top = 110
    Width = 105
    Height = 27
    Cursor = crHandPoint
    Caption = #52712' '#49548
    LookAndFeel.SkinName = 'Sharp'
    TabOrder = 3
    OnClick = btnCloseClick
  end
  object WebBrowser1: TWebBrowser
    Left = 8
    Top = 216
    Width = 161
    Height = 121
    TabOrder = 4
    OnDocumentComplete = WebBrowser1DocumentComplete
    ControlData = {
      4C000000A4100000810C00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
end

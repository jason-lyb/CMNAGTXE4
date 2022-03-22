object Frm_RoadMap: TFrm_RoadMap
  Left = 0
  Top = 0
  Caption = #45796#51020' '#47196#46300#47605
  ClientHeight = 688
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 779
    Height = 688
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 494
    ExplicitHeight = 337
    object WebBrowser1: TWebBrowser
      Left = 0
      Top = 0
      Width = 779
      Height = 688
      Align = alClient
      TabOrder = 0
      OnBeforeNavigate2 = WebBrowser1BeforeNavigate2
      ExplicitLeft = 32
      ExplicitTop = 56
      ExplicitWidth = 300
      ExplicitHeight = 150
      ControlData = {
        4C000000835000001B4700000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
  end
end

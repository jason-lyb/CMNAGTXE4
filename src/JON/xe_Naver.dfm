object Frm_Naver: TFrm_Naver
  Left = 0
  Top = 0
  Caption = 'Frm_Naver'
  ClientHeight = 337
  ClientWidth = 494
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 494
    Height = 337
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 80
    Top = 96
  end
end

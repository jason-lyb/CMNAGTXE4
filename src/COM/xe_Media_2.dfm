object frm_Media_2: Tfrm_Media_2
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  ClientHeight = 65
  ClientWidth = 277
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object MediaPlayer0: TMediaPlayer
    Left = 0
    Top = 0
    Width = 277
    Height = 65
    Align = alClient
    ColoredButtons = []
    EnabledButtons = [btPlay, btPause, btStop]
    VisibleButtons = [btPlay, btPause, btStop]
    AutoEnable = False
    AutoRewind = False
    DeviceType = dtWaveAudio
    DoubleBuffered = True
    Display = MediaPlayer0
    Visible = False
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = MediaPlayer0Click
  end
end

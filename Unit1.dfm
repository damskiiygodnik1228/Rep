object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 566
  ClientWidth = 953
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 352
    Top = 136
    Width = 153
    Height = 15
    Caption = #1055#1091#1090#1077#1096#1077#1089#1090#1074#1091#1077#1084' '#1087#1086' '#1041#1077#1083#1072#1088#1091#1089#1080
    OnClick = Label1Click
  end
  object MediaPlayer1: TMediaPlayer
    Left = 615
    Top = 611
    Width = 85
    Height = 30
    VisibleButtons = [btPlay, btPause, btStop]
    AutoOpen = True
    DoubleBuffered = True
    Display = Panel1
    FileName = 
      'C:\Users\37529\Desktop\'#1082#1091#1088#1089#1086#1074#1086#1081'\Win32\Debug\3851641-hd_1920_1080' +
      '_30fps--online-audio-convert.com.wma'
    Visible = False
    ParentDoubleBuffered = False
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = -16
    Top = -19
    Width = 993
    Height = 681
    Caption = 'Panel1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 384
    Top = 385
    Width = 225
    Height = 49
    Caption = #1082#1072#1088#1090#1072' '#1041#1077#1083#1072#1088#1091#1089#1080
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object OpenDialog1: TOpenDialog
    Filter = '|*.wma'
    Left = 792
    Top = 336
  end
end

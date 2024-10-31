object Form13: TForm13
  Left = 0
  Top = 0
  Caption = 'Form13'
  ClientHeight = 694
  ClientWidth = 1007
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 36
    Top = 576
    Width = 3
    Height = 15
  end
  object Label2: TLabel
    Left = 80
    Top = 152
    Width = 3
    Height = 15
  end
  object RadioGroup1: TRadioGroup
    Left = 336
    Top = 32
    Width = 305
    Height = 153
    Caption = #1074#1099#1073#1086#1088' '#1075#1086#1088#1086#1076#1072
    Items.Strings = (
      #1043#1088#1086#1076#1085#1086
      #1041#1088#1077#1089#1090
      #1052#1080#1085#1089#1082
      #1042#1080#1090#1077#1073#1089#1082
      #1052#1086#1075#1080#1083#1077#1074
      #1043#1086#1084#1077#1083#1100)
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
  object RadioGroup2: TRadioGroup
    Left = 104
    Top = 205
    Width = 825
    Height = 345
    Caption = #1074#1086#1087#1088#1086#1089#1099
    TabOrder = 1
  end
  object Button1: TButton
    Left = 424
    Top = 584
    Width = 137
    Height = 49
    Caption = #1076#1072#1083#1077#1077
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 640
    Top = 584
    Width = 91
    Height = 49
    Caption = #1086#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 3
    OnClick = Button2Click
  end
end

object sozdatorder: Tsozdatorder
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1086#1079#1076#1072#1090#1100' '#1087#1088#1080#1093#1086#1076#1085#1099#1081' '#1082#1072#1089#1089#1086#1074#1099#1081' '#1086#1088#1076#1077#1088
  ClientHeight = 157
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 24
    Height = 19
    Caption = #8470':'
  end
  object Label2: TLabel
    Left = 64
    Top = 16
    Width = 46
    Height = 19
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 24
    Top = 41
    Width = 59
    Height = 19
    Caption = #1050#1083#1080#1077#1085#1090':'
  end
  object Label4: TLabel
    Left = 96
    Top = 41
    Width = 46
    Height = 19
    Caption = 'Label4'
  end
  object Label5: TLabel
    Left = 24
    Top = 66
    Width = 124
    Height = 19
    Caption = #1050#1072#1089#1089#1086#1074#1099#1081' '#1086#1088#1076#1077#1088':'
  end
  object Label6: TLabel
    Left = 154
    Top = 66
    Width = 126
    Height = 19
    Caption = #1052#1052#1044#1053#1055#1056'-999999'
  end
  object Label7: TLabel
    Left = 24
    Top = 104
    Width = 87
    Height = 19
    Caption = #1057#1091#1084#1084#1072' '#1075#1088#1085'.:'
  end
  object Edit1: TEdit
    Left = 136
    Top = 101
    Width = 105
    Height = 27
    TabOrder = 0
    TextHint = #1057#1091#1084#1084#1072
    OnKeyPress = Edit1KeyPress
  end
  object Button2: TButton
    Left = 300
    Top = 112
    Width = 129
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 1
    OnClick = Button2Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 208
    Top = 16
    Width = 186
    Height = 27
    Date = 42016.958730983800000000
    Time = 42016.958730983800000000
    TabOrder = 2
  end
end

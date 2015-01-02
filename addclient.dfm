object addclients: Taddclients
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1083#1080#1077#1085#1090#1072
  ClientHeight = 161
  ClientWidth = 448
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 61
    Height = 19
    Caption = #1060'.'#1048'.'#1054'. :'
  end
  object Label2: TLabel
    Left = 24
    Top = 57
    Width = 101
    Height = 19
    Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':'
  end
  object Label3: TLabel
    Left = 24
    Top = 96
    Width = 79
    Height = 19
    Caption = #1058#1077#1083#1077#1092#1086#1085':'
  end
  object Edit1: TEdit
    Left = 112
    Top = 24
    Width = 313
    Height = 27
    TabOrder = 0
  end
  object Edit3: TEdit
    Left = 109
    Top = 90
    Width = 148
    Height = 27
    TabOrder = 1
    TextHint = '+38-099-0000012'
  end
  object Button1: TButton
    Left = 336
    Top = 120
    Width = 89
    Height = 33
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 136
    Top = 57
    Width = 289
    Height = 27
    TabOrder = 3
    Text = #1063#1072#1089#1090#1085#1099#1081' '#1082#1083#1080#1077#1085#1090
  end
end

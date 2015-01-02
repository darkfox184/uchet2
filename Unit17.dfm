object dusluga: Tdusluga
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1091#1089#1083#1091#1075#1080' '#1074' '#1089#1095#1077#1090
  ClientHeight = 316
  ClientWidth = 612
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object Label3: TLabel
    Left = 272
    Top = 62
    Width = 309
    Height = 19
    Caption = #1053#1086#1084#1077#1088' '#1075#1072#1088#1072#1085#1090#1080#1081#1085#1086#1075#1086' '#1090#1072#1083#1086#1085#1072' / '#1085#1072#1082#1083#1072#1076#1085#1086#1081':'
  end
  object Label4: TLabel
    Left = 407
    Top = 8
    Width = 126
    Height = 19
    Caption = #1044#1072#1090#1072' '#1074#1099#1087#1086#1085#1077#1085#1080#1103':'
  end
  object Label2: TLabel
    Left = 424
    Top = 184
    Width = 82
    Height = 19
    Caption = ' '#1055#1088#1086#1076#1072#1074#1077#1094':'
  end
  object Label5: TLabel
    Left = 18
    Top = 62
    Width = 130
    Height = 19
    Caption = #1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088':'
  end
  object Label7: TLabel
    Left = 18
    Top = 126
    Width = 132
    Height = 19
    Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072':'
  end
  object Label9: TLabel
    Left = 18
    Top = 184
    Width = 147
    Height = 19
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1090#1086#1074#1072#1088#1072':'
  end
  object Label10: TLabel
    Left = 18
    Top = 246
    Width = 72
    Height = 19
    Caption = #1047#1072#1082#1072#1079#1095#1080#1082':'
  end
  object Label11: TLabel
    Left = 218
    Top = 184
    Width = 106
    Height = 19
    Caption = #1062#1077#1085#1072' '#1082#1083#1080#1077#1085#1090#1072':'
  end
  object Label14: TLabel
    Left = 18
    Top = 4
    Width = 92
    Height = 19
    Caption = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072':'
  end
  object Edit3: TEdit
    Left = 18
    Top = 209
    Width = 147
    Height = 27
    TabOrder = 0
    Text = '1'
  end
  object Edit4: TEdit
    Left = 218
    Top = 209
    Width = 151
    Height = 27
    TabOrder = 1
  end
  object edit8: TEdit
    Left = 18
    Top = 87
    Width = 207
    Height = 27
    TabOrder = 2
    OnClick = Edit8Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 407
    Top = 29
    Width = 186
    Height = 27
    Date = 42001.681688217590000000
    Time = 42001.681688217590000000
    TabOrder = 3
  end
  object save: TButton
    Left = 349
    Top = 271
    Width = 126
    Height = 27
    Caption = #1055#1088#1086#1076#1072#1090#1100
    TabOrder = 4
    OnClick = saveClick
  end
  object Button2: TButton
    Left = 500
    Top = 271
    Width = 93
    Height = 27
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 5
  end
  object ComboBox1: TComboBox
    Left = 424
    Top = 209
    Width = 169
    Height = 27
    TabOrder = 6
    TextHint = #1042#1099#1073#1086#1088' '#1087#1088#1086#1076#1072#1074#1094#1072
    Items.Strings = (
      #1050#1091#1083#1080#1082' '#1042'.'#1048'.'
      #1050#1086#1079#1072#1095#1091#1082' '#1042'.'#1055'.')
  end
  object DateTimePicker2: TDateTimePicker
    Left = 18
    Top = 29
    Width = 186
    Height = 27
    Date = 42001.681688217590000000
    Time = 42001.681688217590000000
    TabOrder = 7
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 272
    Top = 87
    Width = 321
    Height = 27
    Hint = #1042#1099#1073#1086#1088' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
    KeyField = 'id'
    ListField = 'gark'
    ListSource = DataModule2.shet2_DataSource
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 18
    Top = 151
    Width = 577
    Height = 27
    KeyField = 'id'
    ListField = 'name'
    ListSource = DataModule2.ucluga_DataSource
    TabOrder = 9
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 18
    Top = 271
    Width = 243
    Height = 27
    Hint = #1042#1099#1073#1086#1088' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
    KeyField = 'id'
    ListField = 'fio'
    ListSource = DataModule2.clients_DataSource
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
  end
end

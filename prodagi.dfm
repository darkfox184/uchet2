object prtovar: Tprtovar
  Left = 0
  Top = 0
  Caption = #1055#1088#1086#1076#1072#1078#1080' '#1090#1086#1074#1072#1088#1072
  ClientHeight = 529
  ClientWidth = 1276
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 19
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 1276
    Height = 456
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 10
    ExplicitWidth = 1286
    ExplicitHeight = 466
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1276
    Height = 73
    Align = alTop
    TabOrder = 9
    ExplicitTop = -6
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 1276
    Height = 456
    Align = alClient
    Color = clBtnFace
    DataSource = DataModule2.tovar_DataSource
    GradientEndColor = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Tahoma'
    TitleFont.Pitch = fpVariable
    TitleFont.Style = [fsBold]
    TitleFont.Quality = fqAntialiased
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Caption = #8470
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomgart'
        Title.Caption = #1057#1095#1077#1090'/ '#1075#1072#1088#1072#1085#1090#1080#1103
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomer'
        Title.Caption = #1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'datepr'
        Title.Caption = #1044#1072#1090#1072' '#1087#1088#1086#1076#1072#1078#1080
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'description'
        Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        Width = 383
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pricep'
        Title.Caption = #1062#1077#1085#1072' '#1075#1088#1085'./'#1096#1090'.'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'koll'
        Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prodavec'
        Title.Caption = #1055#1088#1086#1076#1072#1074#1077#1094
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fio'
        Title.Caption = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gark'
        Title.Caption = #1043#1072#1088#1072#1085#1090#1080#1103
        Width = 72
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 0
    Top = 9
    Width = 137
    Height = 50
    Caption = #1055#1077#1095#1072#1090#1100' '#1089#1095#1077#1090#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 143
    Top = 9
    Width = 242
    Height = 50
    Caption = #1055#1077#1095#1072#1090#1100' '#1075#1072#1088#1072#1085#1090#1080#1081#1085#1086#1075#1086' '#1090#1072#1083#1086#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button4: TButton
    Left = 727
    Top = 9
    Width = 138
    Height = 50
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1090#1086#1074#1072#1088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button4Click
  end
  object redaktirovat: TButton
    Left = 391
    Top = 8
    Width = 330
    Height = 50
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' / '#1042#1077#1088#1085#1091#1090#1100' '#1085#1072' '#1089#1082#1083#1072#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = redaktirovatClick
  end
  object Edit1: TEdit
    Left = 896
    Top = 39
    Width = 161
    Height = 27
    TabOrder = 5
    TextHint = #1055#1086#1080#1089#1082
    Visible = False
  end
  object ComboBox1: TComboBox
    Left = 896
    Top = 5
    Width = 161
    Height = 27
    TabOrder = 6
    TextHint = #1055#1072#1088#1072#1084#1077#1090#1088' '#1087#1086#1080#1089#1082#1072
    OnClick = ComboBox1Click
    Items.Strings = (
      #1055#1086#1080#1089#1082' '#1089#1077#1088#1080#1081#1085#1086#1084#1091' '#1085#1086#1084#1077#1088#1091
      #1055#1086#1080#1089#1082' '#1087#1086' '#1076#1072#1090#1077
      #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1102
      #1055#1086#1080#1089#1082' '#1087#1086' '#1089#1095#1077#1090#1091'/'#1075#1072#1088#1072#1085#1090#1080#1081#1085#1086#1084#1091' '#1090#1072#1083#1086#1085#1091)
  end
  object search: TButton
    Left = 1071
    Top = 8
    Width = 95
    Height = 49
    Caption = #1055#1086#1080#1089#1082
    Default = True
    TabOrder = 7
    OnClick = searchClick
  end
  object DateTimePicker1: TDateTimePicker
    Left = 896
    Top = 38
    Width = 161
    Height = 27
    Date = 42001.802970416670000000
    Time = 42001.802970416670000000
    TabOrder = 8
    Visible = False
  end
end

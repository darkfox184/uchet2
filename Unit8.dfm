object sklad: Tsklad
  Left = 0
  Top = 0
  Caption = #1058#1086#1074#1072#1088' '#1085#1072' '#1089#1082#1083#1072#1076#1077
  ClientHeight = 473
  ClientWidth = 1346
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 1346
    Height = 400
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 11
    ExplicitLeft = -123
    ExplicitTop = 7
    ExplicitWidth = 1286
    ExplicitHeight = 466
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1346
    Height = 73
    Align = alTop
    TabOrder = 10
    ExplicitTop = -6
    object Label1: TLabel
      Left = 872
      Top = 10
      Width = 76
      Height = 19
      Caption = #1050#1091#1088#1089' USD:'
    end
    object Label2: TLabel
      Left = 872
      Top = 35
      Width = 32
      Height = 19
      Caption = '20,5'
    end
    object Label3: TLabel
      Left = 910
      Top = 35
      Width = 30
      Height = 19
      Caption = #1075#1088#1085'.'
    end
    object Button5: TButton
      Left = 727
      Top = 8
      Width = 130
      Height = 50
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 1346
    Height = 400
    Align = alClient
    DataSource = DataModule2.sklad_DataSource
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
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
        FieldName = 'nomer'
        Title.Caption = #1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088
        Width = 142
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dateb'
        Title.Caption = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'description'
        Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        Width = 346
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pricez'
        Title.Caption = #1062#1077#1085#1072' USD'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prisegrn'
        ImeMode = imHanguel
        Title.Caption = #1062#1077#1085#1072' '#1075#1088#1085'.'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'koll'
        Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prodavec'
        Title.Caption = #1055#1088#1086#1076#1072#1074#1077#1094
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fio'
        Title.Caption = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'garb'
        Title.Caption = #1043#1075#1072#1088#1072#1085#1090#1080#1103' '#1073#1072#1079#1099
        Width = 150
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
    Top = 8
    Width = 137
    Height = 50
    Caption = #1055#1088#1086#1076#1072#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Button2: TButton
    Left = 143
    Top = 8
    Width = 162
    Height = 51
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Button4: TButton
    Left = 447
    Top = 8
    Width = 138
    Height = 50
    Caption = #1057#1086#1079#1076#1072#1090#1100' '#1089#1095#1077#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Button6: TButton
    Left = 311
    Top = 8
    Width = 130
    Height = 50
    Caption = #1059#1076#1072#1083#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object Button3: TButton
    Left = 591
    Top = 8
    Width = 130
    Height = 50
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 1053
    Top = 40
    Width = 161
    Height = 27
    TabOrder = 6
    TextHint = #1055#1086#1080#1089#1082
    Visible = False
  end
  object ComboBox1: TComboBox
    Left = 1027
    Top = 7
    Width = 187
    Height = 27
    TabOrder = 7
    TextHint = #1055#1072#1088#1072#1084#1077#1090#1088' '#1087#1086#1080#1089#1082#1072
    Items.Strings = (
      #1055#1086#1080#1089#1082' '#1089#1077#1088#1080#1081#1085#1086#1084#1091' '#1085#1086#1084#1077#1088#1091
      #1055#1086#1080#1089#1082' '#1087#1086' '#1076#1072#1090#1077
      #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1102
      #1055#1086#1080#1089#1082' '#1087#1086' '#1089#1095#1077#1090#1091'/'#1075#1072#1088#1072#1085#1090#1080#1081#1085#1086#1084#1091' '#1090#1072#1083#1086#1085#1091)
  end
  object search: TButton
    Left = 1220
    Top = 8
    Width = 95
    Height = 48
    Caption = #1055#1086#1080#1089#1082
    TabOrder = 8
  end
  object DateTimePicker1: TDateTimePicker
    Left = 1027
    Top = 40
    Width = 187
    Height = 27
    Date = 42001.802970416670000000
    Time = 42001.802970416670000000
    TabOrder = 9
    Visible = False
  end
end

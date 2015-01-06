object zakazpart: Tzakazpart
  Left = 0
  Top = 0
  Caption = #1047#1072#1082#1072#1079#1099' '#1087#1072#1088#1090#1085#1077#1088#1086#1074
  ClientHeight = 460
  ClientWidth = 1210
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 1210
    Height = 379
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1210
    Height = 81
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 950
      Top = 14
      Width = 76
      Height = 19
      Caption = #1050#1091#1088#1089' USD:'
    end
    object Label2: TLabel
      Left = 1032
      Top = 14
      Width = 32
      Height = 19
      Caption = '20,5'
    end
    object Label3: TLabel
      Left = 1070
      Top = 14
      Width = 30
      Height = 19
      Caption = #1075#1088#1085'.'
    end
    object Label4: TLabel
      Left = 722
      Top = 39
      Width = 148
      Height = 19
      Caption = ' '#1057#1091#1084#1084#1072' '#1079#1072#1082#1072#1079#1072', '#1075#1088#1085'.:'
    end
    object Label5: TLabel
      Left = 876
      Top = 39
      Width = 32
      Height = 19
      Caption = '20,5'
    end
    object Label6: TLabel
      Left = 722
      Top = 14
      Width = 149
      Height = 19
      Caption = ' '#1057#1091#1084#1084#1072' '#1079#1072#1082#1072#1079#1072', USD:'
    end
    object Label7: TLabel
      Left = 882
      Top = 14
      Width = 32
      Height = 19
      Caption = '20,5'
    end
    object Button1: TButton
      Left = 12
      Top = 5
      Width = 173
      Height = 27
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1079#1072#1082#1072#1079
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 200
      Top = 5
      Width = 129
      Height = 27
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 1
      OnClick = Button3Click
    end
    object Button2: TButton
      Left = 12
      Top = 38
      Width = 173
      Height = 29
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074#1089#1077' '#1074' '#1079#1072#1082#1072#1079
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button4: TButton
      Left = 487
      Top = 38
      Width = 130
      Height = 29
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 200
      Top = 38
      Width = 129
      Height = 29
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 4
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 335
      Top = 5
      Width = 146
      Height = 27
      Caption = #1054#1090#1075#1088#1091#1079#1082#1072' '#1090#1086#1074#1072#1088#1072
      TabOrder = 5
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 335
      Top = 38
      Width = 146
      Height = 29
      Caption = #1054#1073#1088#1072#1073#1086#1090#1072#1090#1100' '#1079#1072#1082#1072#1079
      TabOrder = 6
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 487
      Top = 5
      Width = 130
      Height = 27
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      TabOrder = 7
      OnClick = Button8Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 81
    Width = 1210
    Height = 379
    Align = alClient
    DataSource = Data8.zakaz_DataSource
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
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
        Title.Caption = #1040#1088#1090#1080#1082#1091#1083
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'datez'
        Title.Caption = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'description'
        Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        Width = 404
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pricez'
        Title.Caption = #1062#1077#1085#1072' USD'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prisegrn'
        ImeMode = imHanguel
        Title.Caption = #1062#1077#1085#1072' '#1075#1088#1085'./'#1096#1090'.'
        Width = 106
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
        Title.Caption = #1043#1072#1088#1072#1085#1090#1080#1103' '#1073#1072#1079#1099
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Title.Caption = #1057#1090#1072#1090#1091#1089' '#1079#1072#1082#1072#1079#1072
        Width = 196
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'coments'
        Title.Caption = #1050#1086#1084#1077#1085#1090#1072#1088#1080#1081' '#1082' '#1079#1072#1082#1072#1079#1091
        Width = 160
        Visible = True
      end>
  end
end

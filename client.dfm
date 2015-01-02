object clients: Tclients
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1082#1083#1080#1077#1085#1090#1072#1084#1080
  ClientHeight = 310
  ClientWidth = 645
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
  object panel1: TPanel
    Left = 0
    Top = 0
    Width = 645
    Height = 65
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 16
      Top = 8
      Width = 97
      Height = 51
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 119
      Top = 8
      Width = 138
      Height = 51
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object Button3: TButton
    Left = 263
    Top = 8
    Width = 104
    Height = 51
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 1
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 645
    Height = 245
    Align = alClient
    DataSource = DataModule2.clients_DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
        Title.Caption = #8470
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fio'
        Title.Caption = #1060'.'#1048'.'#1054'. '#1082#1083#1080#1077#1085#1090#1072
        Width = 211
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'org'
        Title.Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        Width = 225
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tel'
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085
        Width = 129
        Visible = True
      end>
  end
end

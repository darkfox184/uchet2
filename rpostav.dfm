object postav: Tpostav
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 2
  Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072#1084#1080
  ClientHeight = 306
  ClientWidth = 641
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
    Width = 641
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
    Width = 641
    Height = 241
    Align = alClient
    Color = clBtnFace
    DataSource = DataModule2.post_DataSource1
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
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Title.Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
        Title.Color = clActiveBorder
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 562
        Visible = True
      end>
  end
end

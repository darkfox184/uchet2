object nakladd: Tnakladd
  Left = 0
  Top = 0
  AutoSize = True
  BorderStyle = bsDialog
  BorderWidth = 10
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
  ClientHeight = 112
  ClientWidth = 401
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
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 92
    Height = 19
    Caption = #1053#1072#1082#1072#1083#1072#1076#1085#1072#1103':'
  end
  object Label2: TLabel
    Left = 0
    Top = 38
    Width = 83
    Height = 19
    Caption = #1055#1086#1089#1090#1072#1074#1094#1080#1082':'
  end
  object Edit1: TEdit
    Left = 103
    Top = 0
    Width = 298
    Height = 27
    TabOrder = 0
  end
  object Button1: TButton
    Left = 312
    Top = 79
    Width = 89
    Height = 33
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 103
    Top = 37
    Width = 235
    Height = 27
    Hint = #1042#1099#1073#1086#1088' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
    KeyField = 'id'
    ListField = 'name'
    ListSource = DataModule2.post_DataSource1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
end

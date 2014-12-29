object pshet: Tpshet
  Left = 0
  Top = 0
  Caption = #1055#1077#1095#1072#1090#1100' '#1089#1095#1077#1090#1072
  ClientHeight = 481
  ClientWidth = 680
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object frxPreview1: TfrxPreview
    Left = 0
    Top = 0
    Width = 680
    Height = 481
    Align = alClient
    OutlineVisible = True
    OutlineWidth = 121
    ThumbnailVisible = False
    UseReportHints = True
  end
  object frxReport1: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42001.431641794000000000
    ReportOptions.LastChange = 42001.625337812500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 48
    Top = 200
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' '#1084#1086#1080
        Value = Null
      end
      item
        Name = 'sum1'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 699.213050000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            
              #1047#1072#1082#1072#1079' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103' '#8470' [frxDBDataset1."nomgart"] '#1086#1090'  [frxDBDataset1.' +
              '"date_format(datepr, '#39'%d.%m.%Y'#39')"] '#1075'.')
          ParentFont = False
          Formats = <
            item
            end
            item
              FormatStr = 'dd.mm.yyyy'
              Kind = fkDateTime
            end>
        end
        object Memo22: TfrxMemoView
          Left = 7.559060000000000000
          Top = 52.913420000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100': [frxDBDataset1."fio"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 204.094620000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1description: TfrxMemoView
          Width = 456.566929133858000000
          Height = 18.897650000000000000
          DataField = 'description'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."description"]')
          ParentFont = False
        end
        object frxDBDataset1pricep: TfrxMemoView
          Left = 456.566929130000000000
          Width = 86.551181102362200000
          Height = 18.897650000000000000
          DataField = 'pricep'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."pricep"]')
          ParentFont = False
        end
        object frxDBDataset1koll: TfrxMemoView
          Left = 543.118110236220000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          DataField = 'koll'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."koll"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 622.488188980000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[<frxDBDataset1."pricep">*<frxDBDataset1."koll">]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          Width = 456.566929130000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1086#1074#1072#1088)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 542.937007870000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 456.630180000000000000
          Width = 86.551146930000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1062#1077#1085#1072)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 622.488560000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1057#1091#1084#1084#1072)
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 188.976500000000000000
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 548.031850000000000000
          Top = 7.559060000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              #1048#1090#1086#1075#1086': [SUM(<frxDBDataset1."pricep">*<frxDBDataset1."koll">)] '#1075#1088 +
              #1085'.')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 680.315400000000000000
          Height = 30.236240000000000000
          Memo.UTF8W = (
            #1054#1090#1075#1088#1091#1079#1080#1083': _____________________')
        end
        object Memo5: TfrxMemoView
          Left = 389.291590000000000000
          Top = 37.795300000000000000
          Width = 317.480520000000000000
          Height = 49.133890000000000000
          Memo.UTF8W = (
            #1055#1088#1077#1090#1077#1085#1079#1080#1080' '#1087#1086' '#1082#1072#1095#1077#1089#1090#1074#1091' '#1080' '#1082#1086#1084#1087#1083#1077#1082#1090#1072#1094#1080#1080' '#1085#1077' '#1080#1084#1077#1102
            ''
            #1047#1072#1082#1072#1079#1095#1080#1082': _____________________')
        end
        object Memo21: TfrxMemoView
          Left = 11.338590000000000000
          Top = 117.165430000000000000
          Width = 699.213050000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              #1047#1072#1082#1072#1079' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103' '#8470' [frxDBDataset1."nomgart"] '#1086#1090'  [frxDBDataset1.' +
              '"date_format(datepr, '#39'%d.%m.%Y'#39')"] '#1075'.')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo23: TfrxMemoView
          Left = 11.338590000000000000
          Top = 162.519790000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100': [frxDBDataset1."fio"]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 457.323130000000000000
        Width = 718.110700000000000000
        object Memo14: TfrxMemoView
          Top = 3.779530000000000000
          Width = 456.566929130000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1086#1074#1072#1088)
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 543.118110236220000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086)
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 456.566929133858000000
          Top = 3.779530000000000000
          Width = 86.551146930000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1062#1077#1085#1072)
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 622.488188976378000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1057#1091#1084#1084#1072)
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 502.677490000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo10: TfrxMemoView
          Width = 456.566929130000000000
          Height = 18.897650000000000000
          DataField = 'description'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."description"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 456.566929133858000000
          Width = 86.551181100000000000
          Height = 18.897650000000000000
          DataField = 'pricep'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."pricep"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 543.118110236220000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          DataField = 'koll'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."koll"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 622.488188976378000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[<frxDBDataset1."pricep">*<frxDBDataset1."koll">]')
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Height = 86.929190000000000000
        Top = 544.252320000000000000
        Width = 718.110700000000000000
        object Memo18: TfrxMemoView
          Left = 544.252320000000000000
          Top = 3.779530000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              #1048#1090#1086#1075#1086': [SUM(<frxDBDataset1."pricep">*<frxDBDataset1."koll">)] '#1075#1088 +
              #1085'.')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Top = 18.897650000000000000
          Width = 680.315400000000000000
          Height = 30.236240000000000000
          Memo.UTF8W = (
            #1054#1090#1075#1088#1091#1079#1080#1083': _____________________')
        end
        object Memo20: TfrxMemoView
          Left = 385.512060000000000000
          Top = 34.015770000000000000
          Width = 317.480520000000000000
          Height = 49.133890000000000000
          Memo.UTF8W = (
            #1055#1088#1077#1090#1077#1085#1079#1080#1080' '#1087#1086' '#1082#1072#1095#1077#1089#1090#1074#1091' '#1080' '#1082#1086#1084#1087#1083#1077#1082#1090#1072#1094#1080#1080' '#1085#1077' '#1080#1084#1077#1102
            ''
            #1047#1072#1082#1072#1079#1095#1080#1082': _____________________')
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = DataModule2.shet_Query2
    BCDToCurrency = False
    Left = 48
    Top = 128
  end
end

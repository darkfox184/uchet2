object DataModule2: TDataModule2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 762
  Width = 756
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Server=mysql317.1gb.ua'
      'Password=75e6ac86a34'
      'User_Name=gbua_z_clo63190'
      'Database=gbua_z_clo63190'
      'CharacterSet=cp1251'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object Auth_Query: TFDQuery
    Connection = FDConnection1
    Left = 128
    Top = 16
  end
  object tovar_Query: TFDQuery
    Connection = FDConnection1
    Left = 128
    Top = 80
  end
  object tovar_DataSource: TDataSource
    DataSet = tovar_Query
    Left = 216
    Top = 80
  end
  object garant_Query: TFDQuery
    Connection = FDConnection1
    Left = 136
    Top = 152
  end
  object garant_Query2: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT description, gark, nomer,fio,date_format(datepr, '#39'%d.%m.%' +
        'Y'#39'),nomgart FROM pgar ')
    Left = 216
    Top = 152
  end
  object shet_Query1: TFDQuery
    Connection = FDConnection1
    Left = 312
    Top = 152
  end
  object shet_Query2: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT description,koll,pricep,fio,date_format(datepr, '#39'%d.%m.%Y' +
        #39'),nomgart FROM pshet ')
    Left = 392
    Top = 152
  end
  object del_tov_Query: TFDQuery
    Connection = FDConnection1
    Left = 304
    Top = 80
  end
  object retovp_Query1: TFDQuery
    Connection = FDConnection1
    Left = 136
    Top = 224
  end
  object redtovp_save_Query1: TFDQuery
    Connection = FDConnection1
    Left = 240
    Top = 224
  end
  object redtovp_search_Query1: TFDQuery
    Connection = FDConnection1
    Left = 384
    Top = 224
  end
  object sklad_Query: TFDQuery
    Connection = FDConnection1
    Left = 32
    Top = 296
  end
  object sklad_DataSource: TDataSource
    DataSet = sklad_Query
    Left = 120
    Top = 296
  end
  object options_Query: TFDQuery
    Connection = FDConnection1
    Left = 40
    Top = 216
  end
  object options_save_Query: TFDQuery
    Connection = FDConnection1
    Left = 40
    Top = 160
  end
  object shet_FDQuery: TFDQuery
    Connection = FDConnection1
    Left = 240
    Top = 296
  end
  object shet2_FDQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT  id,gark  FROM garant where status=0 ORDER BY id DESC ')
    Left = 352
    Top = 296
  end
  object shet2_DataSource: TDataSource
    DataSet = shet2_FDQuery
    Left = 440
    Top = 296
  end
  object zakaz_Query: TFDQuery
    Connection = FDConnection1
    Left = 32
    Top = 376
  end
  object zakaz_DataSource: TDataSource
    DataSet = zakaz_Query
    Left = 128
    Top = 376
  end
  object ucluga_Query: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM  `uslugi`')
    Left = 344
    Top = 376
  end
  object ucluga_DataSource: TDataSource
    DataSet = ucluga_Query
    Left = 432
    Top = 376
  end
  object clients_Query: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT id, fio FROM  `clients`')
    Left = 32
    Top = 464
  end
  object clients_DataSource: TDataSource
    DataSet = clients_Query
    Left = 120
    Top = 464
  end
  object clients_Query1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM  `clients`')
    Left = 216
    Top = 464
  end
  object clients_DataSource1: TDataSource
    DataSet = clients_Query1
    Left = 320
    Top = 464
  end
  object clients_Query2: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      '')
    Left = 416
    Top = 464
  end
  object post_Query: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM `nakladnaya` ORDER BY id desc LIMIT 10')
    Left = 40
    Top = 528
  end
  object post_DataSource: TDataSource
    DataSet = post_Query
    Left = 128
    Top = 528
  end
  object post_Query2: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      '')
    Left = 424
    Top = 536
  end
  object post_DataSource1: TDataSource
    DataSet = post_Query1
    Left = 320
    Top = 536
  end
  object post_Query1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM postavschiki')
    Left = 240
    Top = 536
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM `nakladnaya` LIMIT 0 , 10')
    Left = 32
    Top = 584
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 120
    Top = 584
  end
  object sum_Query: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM `nakladnaya` LIMIT 0 , 10')
    Left = 488
    Top = 11
  end
  object opzakaz_Query: TFDQuery
    Connection = FDConnection1
    Left = 248
    Top = 384
  end
  object pzakaz_Query: TFDQuery
    Connection = FDConnection1
    Left = 536
    Top = 368
  end
  object pzakaz_DataSource: TDataSource
    DataSet = pzakaz_Query
    Left = 632
    Top = 368
  end
  object Balans_Query: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM `nakladnaya` LIMIT 0 , 10')
    Left = 496
    Top = 75
  end
  object Balans_Source: TDataSource
    DataSet = Balans_Query
    Left = 584
    Top = 72
  end
  object balans2_Query: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM `nakladnaya` LIMIT 0 , 10')
    Left = 672
    Top = 83
  end
  object balans3_Query: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM `nakladnaya` LIMIT 0 , 10')
    Left = 680
    Top = 163
  end
end

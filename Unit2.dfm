object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 627
  Width = 491
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Server=foxvaler.mysql.ukraine.com.ua'
      'Password=xqn3y6hf'
      'User_Name=foxvaler_copm'
      'Database=foxvaler_copm'
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
end
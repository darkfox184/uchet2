object Data8: TData8
  OldCreateOrder = False
  Height = 340
  Width = 675
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
  object zakaz_Query: TFDQuery
    Connection = FDConnection1
    Left = 128
    Top = 12
  end
  object zakaz_DataSource: TDataSource
    DataSet = zakaz_Query
    Left = 224
    Top = 12
  end
  object sum_Query: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM `nakladnaya` LIMIT 0 , 10')
    Left = 320
    Top = 11
  end
  object options_Query: TFDQuery
    Connection = FDConnection1
    Left = 400
    Top = 8
  end
  object del_Query: TFDQuery
    Connection = FDConnection1
    Left = 504
    Top = 16
  end
  object ins_Query: TFDQuery
    Connection = FDConnection1
    Left = 576
    Top = 16
  end
  object clients_Query: TFDQuery
    Connection = FDConnection2
    SQL.Strings = (
      'SELECT id, fio FROM  `clients`')
    Left = 32
    Top = 92
  end
  object clients_DataSource: TDataSource
    DataSet = clients_Query
    Left = 120
    Top = 92
  end
  object sel_Query: TFDQuery
    Connection = FDConnection1
    Left = 504
    Top = 88
  end
  object sel2_Query: TFDQuery
    Connection = FDConnection2
    Left = 584
    Top = 88
  end
  object shet_Query: TFDQuery
    Connection = FDConnection2
    SQL.Strings = (
      'SELECT  id,gark  FROM garant ORDER BY id DESC, id LIMIT 10'
      '')
    Left = 32
    Top = 172
  end
  object shet_DataSource: TDataSource
    DataSet = shet_Query
    Left = 120
    Top = 172
  end
  object pzakaz_Query: TFDQuery
    Connection = FDConnection1
    Left = 264
    Top = 180
  end
  object pzakaz_DataSource: TDataSource
    DataSet = pzakaz_Query
    Left = 360
    Top = 180
  end
  object FDConnection2: TFDConnection
    Params.Strings = (
      'Server=mysql317.1gb.ua'
      'Password=75e6ac86a34'
      'User_Name=gbua_z_clo63190'
      'Database=gbua_z_clo63190'
      'CharacterSet=cp1251'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 32
    Top = 248
  end
  object insz_Query: TFDQuery
    Connection = FDConnection2
    Left = 584
    Top = 168
  end
  object sel3_Query: TFDQuery
    Connection = FDConnection1
    Left = 504
    Top = 176
  end
  object options_save_Query: TFDQuery
    Connection = FDConnection1
    Left = 400
    Top = 64
  end
end

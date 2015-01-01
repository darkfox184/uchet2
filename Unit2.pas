unit Unit2;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDataModule2 = class(TDataModule)
    FDConnection1: TFDConnection;
    Auth_Query: TFDQuery;
    tovar_Query: TFDQuery;
    tovar_DataSource: TDataSource;
    garant_Query: TFDQuery;
    garant_Query2: TFDQuery;
    shet_Query1: TFDQuery;
    shet_Query2: TFDQuery;
    del_tov_Query: TFDQuery;
    retovp_Query1: TFDQuery;
    redtovp_save_Query1: TFDQuery;
    redtovp_search_Query1: TFDQuery;
    sklad_Query: TFDQuery;
    sklad_DataSource: TDataSource;
    options_Query: TFDQuery;
    options_save_Query: TFDQuery;
    shet_FDQuery: TFDQuery;
    shet2_FDQuery: TFDQuery;
    shet2_DataSource: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

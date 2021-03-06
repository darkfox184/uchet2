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
    zakaz_Query: TFDQuery;
    zakaz_DataSource: TDataSource;
    ucluga_Query: TFDQuery;
    ucluga_DataSource: TDataSource;
    clients_Query: TFDQuery;
    clients_DataSource: TDataSource;
    clients_Query1: TFDQuery;
    clients_DataSource1: TDataSource;
    clients_Query2: TFDQuery;
    post_Query: TFDQuery;
    post_DataSource: TDataSource;
    post_Query2: TFDQuery;
    post_DataSource1: TDataSource;
    post_Query1: TFDQuery;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    sum_Query: TFDQuery;
    opzakaz_Query: TFDQuery;
    pzakaz_Query: TFDQuery;
    pzakaz_DataSource: TDataSource;
    Balans_Query: TFDQuery;
    Balans_Source: TDataSource;
    balans2_Query: TFDQuery;
    balans3_Query: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
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

procedure TDataModule2.DataModuleCreate(Sender: TObject);
begin
DataModule2.clients_Query.active:=true;
end;

end.

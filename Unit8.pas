unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  Tsklad = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    Button6: TButton;
    Button3: TButton;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    search: TButton;
    DateTimePicker1: TDateTimePicker;
    Panel1: TPanel;
    Panel2: TPanel;
    Button5: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  sklad: Tsklad;

implementation

{$R *.dfm}

uses Unit2;

procedure Tsklad.Button3Click(Sender: TObject);
begin
DataModule2.sklad_Query.SQL.Clear;
DataModule2.sklad_Query.SQL.Add ('SELECT sklad.id, sklad.nomer, sklad.dateb, sklad.pricez, sklad.koll, sklad.fio, sklad.description, sklad.prodavec, sklad.garb, options.valuta, sklad.pricez*options.valuta as prisegrn  FROM sklad, options ');
DataModule2.sklad_Query.open;
DataModule2.options_Query.SQL.Clear;
DataModule2.options_Query.SQL.Add ('SELECT valuta  FROM options ');
DataModule2.options_Query.open;
label2.Caption:=DataModule2.options_Query.Fields[0].AsString;
end;

procedure Tsklad.FormCreate(Sender: TObject);
begin
DataModule2.sklad_Query.SQL.Clear;
DataModule2.sklad_Query.SQL.Add ('SELECT sklad.id, sklad.nomer, sklad.dateb, sklad.pricez, sklad.koll, sklad.fio, sklad.description, sklad.prodavec, sklad.garb, options.valuta, sklad.pricez*options.valuta as prisegrn  FROM sklad, options ');
DataModule2.sklad_Query.open;
DataModule2.options_Query.SQL.Clear;
DataModule2.options_Query.SQL.Add ('SELECT valuta  FROM options ');
DataModule2.options_Query.open;
label2.Caption:=DataModule2.options_Query.Fields[0].AsString;
end;

end.

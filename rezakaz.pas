unit rezakaz;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.DBCtrls;

type
  Tredzakaz = class(TForm)
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    description: TEdit;
    pricez: TEdit;
    koll: TEdit;
    nomer: TEdit;
    garb: TEdit;
    dskbtn: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    datez: TDateTimePicker;
    id: TEdit;
    Label1: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    procedure Button2Click(Sender: TObject);
    procedure dskbtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  redzakaz: Tredzakaz;

implementation

{$R *.dfm}

uses Unit2, rzakaz;

procedure Tredzakaz.Button2Click(Sender: TObject);
begin
close;
end;

procedure Tredzakaz.dskbtnClick(Sender: TObject);
begin
DataModule2.redtovp_save_Query1.SQL.Clear;
DataModule2.redtovp_save_Query1.SQL.Add ('Update zakaz SET datez=:datez, nomer=:nomer, description=:description, pricez=:pricez, garb =:garb, fio=:fio,prodavec=:prodavec, koll=:koll WHERE id=:id ');
DataModule2.redtovp_save_Query1.ParamByName('datez').AsDate:=datez.DateTime;
DataModule2.redtovp_save_Query1.ParamByName('nomer').AsString:=nomer.Text;
DataModule2.redtovp_save_Query1.ParamByName('description').AsString:=description.Text;
DataModule2.redtovp_save_Query1.ParamByName('pricez').Value:=StringReplace(pricez.Text, ',', '.', [rfReplaceAll]);
DataModule2.redtovp_save_Query1.ParamByName('garb').Value:=garb.Text;
DataModule2.redtovp_save_Query1.ParamByName('fio').AsString:=DBLookupComboBox3.Text;
DataModule2.redtovp_save_Query1.ParamByName('koll').Value:=koll.Text;
DataModule2.redtovp_save_Query1.ParamByName('prodavec').AsString:=combobox1.Text;
DataModule2.redtovp_save_Query1.ParamByName('id').AsString:=id.text;
DataModule2.redtovp_save_Query1.ExecSQL;
DataModule2.zakaz_Query.Refresh;
DataModule2.zakaz_Query.SQL.Clear;
DataModule2.zakaz_Query.SQL.Add ('SELECT zakaz.id, zakaz.nomer, zakaz.datez, zakaz.pricez, zakaz.koll, zakaz.fio, zakaz.description, zakaz.prodavec, zakaz.garb, options.valuta, zakaz.pricez*options.valuta as prisegrn  FROM zakaz, options where zakaz.poluch =:poluch ');
DataModule2.zakaz_Query.ParamByName('poluch').Value:='���';
DataModule2.zakaz_Query.open;
DataModule2.sum_Query.SQL.Clear;
DataModule2.sum_Query.SQL.Add ('SELECT zakaz.pricez, zakaz.koll, options.valuta, SUM( zakaz.koll * zakaz.pricez * options.valuta ) AS sumzakaz, SUM(zakaz.pricez * zakaz.koll ) AS sumus  FROM zakaz, options WHERE zakaz.poluch=:poluch ');
DataModule2.sum_Query.ParamByName('poluch').Value:='���';
DataModule2.sum_Query.Open;
zakaz.label5.Caption:=DataModule2.sum_Query.Fields[3].AsString;
zakaz.label7.Caption:=DataModule2.sum_Query.Fields[4].AsString;
DataModule2.options_Query.SQL.Clear;
DataModule2.options_Query.SQL.Add ('SELECT valuta  FROM options ');
DataModule2.options_Query.open;
zakaz.label2.Caption:=DataModule2.options_Query.Fields[0].AsString;

close;
end;

end.
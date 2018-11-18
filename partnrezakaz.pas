unit partnrezakaz;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.StdCtrls;

type
  Tpartnredzakaz = class(TForm)
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Label1: TLabel;
    description: TEdit;
    pricez: TEdit;
    koll: TEdit;
    nomer: TEdit;
    garb: TEdit;
    dskbtn: TButton;
    ComboBox1: TComboBox;
    datez: TDateTimePicker;
    id: TEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    procedure dskbtnClick(Sender: TObject);
    procedure pricezKeyPress(Sender: TObject; var Key: Char);
    procedure kollKeyPress(Sender: TObject; var Key: Char);
    procedure garbKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  partnredzakaz: Tpartnredzakaz;

implementation

{$R *.dfm}

uses data8_1, partzakaz;

procedure Tpartnredzakaz.dskbtnClick(Sender: TObject);
begin
if (nomer.Text='') or (description.Text='')or (pricez.Text='')or (garb.Text='')or (koll.Text='') or (combobox1.Text='')or (DBLookupComboBox3.Text='') then
 begin
  MessageDlg('Вы не заполнили все поля для оформления заказа?',mtWarning, mbOKCancel, 0)
end else
begin
Data8.ins_Query.SQL.Clear;
Data8.ins_Query.SQL.Add ('Update pzakaz SET datez=:datez, nomer=:nomer, description=:description, pricez=:pricez, garb =:garb, fio=:fio,');
Data8.ins_Query.SQL.Add ('prodavec=:prodavec, koll=:koll WHERE id=:id ');
Data8.ins_Query.ParamByName('datez').AsDate:=datez.DateTime;
Data8.ins_Query.ParamByName('nomer').AsString:=nomer.Text;
Data8.ins_Query.ParamByName('description').AsString:=description.Text;
Data8.ins_Query.ParamByName('pricez').Value:=StringReplace(pricez.Text, ',', '.', [rfReplaceAll]);
Data8.ins_Query.ParamByName('garb').Value:=garb.Text;
Data8.ins_Query.ParamByName('fio').AsString:=DBLookupComboBox3.Text;
Data8.ins_Query.ParamByName('koll').Value:=koll.Text;
Data8.ins_Query.ParamByName('prodavec').AsString:=combobox1.Text;
Data8.ins_Query.ParamByName('id').AsString:=id.text;
Data8.ins_Query.ExecSQL;
Data8.zakaz_Query.Refresh;
Data8.zakaz_Query.SQL.Clear;
Data8.zakaz_Query.SQL.Add ('SELECT pzakaz.id, pzakaz.nomer, pzakaz.datez, pzakaz.pricez, pzakaz.koll, pzakaz.fio, pzakaz.description, pzakaz.prodavec, ');
 Data8.zakaz_Query.SQL.Add ('pzakaz.garb, options.valuta, pzakaz.pricez*options.valuta as prisegrn  FROM pzakaz, options where pzakaz.poluch =:poluch ');
Data8.zakaz_Query.ParamByName('poluch').Value:='нет';
Data8.zakaz_Query.open;
Data8.sum_Query.SQL.Clear;
Data8.sum_Query.SQL.Add ('SELECT ANY_VALUE(pzakaz.pricez), ANY_VALUE (pzakaz.koll), ANY_VALUE (options.valuta), SUM( pzakaz.koll * pzakaz.pricez * options.valuta ) AS sumzakaz, ');
Data8.sum_Query.SQL.Add ('SUM(pzakaz.pricez * pzakaz.koll ) AS sumus  FROM pzakaz, options WHERE pzakaz.poluch=:poluch ');
Data8.sum_Query.ParamByName('poluch').Value:='нет';
Data8.sum_Query.Open;
zakazpart.label5.Caption:=Data8.sum_Query.Fields[3].AsString;
zakazpart.label7.Caption:=Data8.sum_Query.Fields[4].AsString;
Data8.options_Query.SQL.Clear;
Data8.options_Query.SQL.Add ('SELECT valuta  FROM options ');
Data8.options_Query.open;
zakazpart.label2.Caption:=Data8.options_Query.Fields[0].AsString;

close;
end;
end;

procedure Tpartnredzakaz.garbKeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9', #8]) then
Key:=#0;
end;

procedure Tpartnredzakaz.kollKeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9', #8]) then
Key:=#0;
end;

procedure Tpartnredzakaz.pricezKeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9',',','.', #8]) then
Key:=#0;
end;

end.

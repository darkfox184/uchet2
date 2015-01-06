unit prtovskl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.DBCtrls;

type
  Topskladf = class(TForm)
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
    prodavec: TComboBox;
    datez: TDateTimePicker;
    id: TEdit;
    Label1: TLabel;
    snomer: TEdit;
    Label4: TLabel;
    Label11: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure dskbtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  opskladf: Topskladf;

implementation

{$R *.dfm}

uses Unit2, rzakaz;

procedure Topskladf.dskbtnClick(Sender: TObject);
begin

DataModule2.redtovp_save_Query1.SQL.Clear;
DataModule2.redtovp_save_Query1.SQL.Add ('INSERT INTO sklad (dateb,nomer,description,pricez,garb,fio,prodavec,koll ) VALUES(:datez,:nomer,:description,:pricez,:garb,:fio,:prodavec,:koll) ');
DataModule2.redtovp_save_Query1.ParamByName('datez').AsDate:=datez.DateTime;
DataModule2.redtovp_save_Query1.ParamByName('nomer').AsString:=snomer.Text;
DataModule2.redtovp_save_Query1.ParamByName('description').AsString:=description.Text;
DataModule2.redtovp_save_Query1.ParamByName('pricez').Value:=StringReplace(pricez.Text, ',', '.', [rfReplaceAll]);
DataModule2.redtovp_save_Query1.ParamByName('garb').Value:=garb.Text;
DataModule2.redtovp_save_Query1.ParamByName('fio').AsString:=DBLookupComboBox1.Text;
DataModule2.redtovp_save_Query1.ParamByName('koll').Value:=koll.Text;
DataModule2.redtovp_save_Query1.ParamByName('prodavec').AsString:=prodavec.Text;
DataModule2.redtovp_save_Query1.ExecSQL;
DataModule2.opzakaz_Query.SQL.Clear;
DataModule2.opzakaz_Query.SQL.Add ('Update zakaz SET poluch=:poluch, nakladnaya=:nakladnaya, snomer=:snomer, datez=:datez, nomer=:nomer, description=:description, pricez=:pricez, garb =:garb, fio=:fio,prodavec=:prodavec, koll=:koll WHERE id=:id ');
DataModule2.opzakaz_Query.ParamByName('datez').AsDate:=datez.DateTime;
DataModule2.opzakaz_Query.ParamByName('nomer').AsString:=nomer.Text;
DataModule2.opzakaz_Query.ParamByName('description').AsString:=description.Text;
DataModule2.opzakaz_Query.ParamByName('pricez').Value:=StringReplace(pricez.Text, ',', '.', [rfReplaceAll]);
DataModule2.opzakaz_Query.ParamByName('garb').Value:=garb.Text;
DataModule2.opzakaz_Query.ParamByName('fio').AsString:=DBLookupComboBox1.Text;
DataModule2.opzakaz_Query.ParamByName('koll').Value:=koll.Text;
DataModule2.opzakaz_Query.ParamByName('prodavec').AsString:=prodavec.Text;
DataModule2.opzakaz_Query.ParamByName('id').AsString:=id.text;
DataModule2.opzakaz_Query.ParamByName('snomer').AsString:=snomer.text;
DataModule2.opzakaz_Query.ParamByName('nakladnaya').AsString:=DBLookupComboBox3.text;
DataModule2.opzakaz_Query.ParamByName('poluch').AsString:='��';
DataModule2.opzakaz_Query.ExecSQL;
DataModule2.zakaz_Query.Refresh;




close;
end;

end.

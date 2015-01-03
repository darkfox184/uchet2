unit Unit17;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ComCtrls;

type
  Tdusluga = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    DateTimePicker1: TDateTimePicker;
    save: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    DateTimePicker2: TDateTimePicker;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    edit8: TEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    procedure saveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dusluga: Tdusluga;

implementation

{$R *.dfm}

uses Unit2, prodagi;

procedure Tdusluga.Edit8Click(Sender: TObject);
begin
edit8.text:=floattostr(random(10000000000000));
end;

procedure Tdusluga.FormCreate(Sender: TObject);
begin
DataModule2.clients_Query.Active:=true;
DataModule2.shet2_FDQuery.Active:=true;
DataModule2.ucluga_Query.Active:=true;
edit8.text:=floattostr(random(100000000));
end;

procedure Tdusluga.saveClick(Sender: TObject);
begin
DataModule2.tovar_Query.Active:=false;
DataModule2.redtovp_save_Query1.SQL.Clear;
DataModule2.redtovp_save_Query1.SQL.Add ('INSERT INTO tovar (dateb,datepr,nomer,description,pricez,pricep,garb,gark,nomgart,fio,prodavec,koll ) VALUES(:dateb,:datepr,:nomer,:description,:pricez,:pricep,:garb,:gark,:nomgart,:fio,:prodavec,:koll) ');
DataModule2.redtovp_save_Query1.ParamByName('dateb').AsDate:=DateTimePicker2.DateTime;
DataModule2.redtovp_save_Query1.ParamByName('datepr').AsDate:=DateTimePicker1.DateTime;
DataModule2.redtovp_save_Query1.ParamByName('nomer').AsString:=edit8.Text;
DataModule2.redtovp_save_Query1.ParamByName('description').AsString:=DBLookupComboBox2.Text;
DataModule2.redtovp_save_Query1.ParamByName('pricez').AsString:='0';
DataModule2.redtovp_save_Query1.ParamByName('pricep').AsString:=StringReplace(edit4.Text, ',', '.', [rfReplaceAll]);;
DataModule2.redtovp_save_Query1.ParamByName('garb').AsString:='0';
DataModule2.redtovp_save_Query1.ParamByName('gark').AsString:='0';
DataModule2.redtovp_save_Query1.ParamByName('nomgart').AsString:=DBLookupComboBox1.Text;
DataModule2.redtovp_save_Query1.ParamByName('fio').AsString:=DBLookupComboBox3.Text;
DataModule2.redtovp_save_Query1.ParamByName('koll').AsString:=edit3.Text;
DataModule2.redtovp_save_Query1.ParamByName('prodavec').AsString:=combobox1.Text;
DataModule2.redtovp_save_Query1.ExecSQL;
DataModule2.tovar_Query.Active:=true;
DataModule2.tovar_Query.Refresh;
close;
prtovar.show;
end;

end.

unit dobavltov;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.DBCtrls;

type
  Tdsklad = class(TForm)
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    dskbtn: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    DateTimePicker2: TDateTimePicker;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure Button2Click(Sender: TObject);
    procedure dskbtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dsklad: Tdsklad;

implementation

{$R *.dfm}

uses Unit2;

procedure Tdsklad.Button2Click(Sender: TObject);
begin
close;
end;

procedure Tdsklad.dskbtnClick(Sender: TObject);
begin
DataModule2.sklad_Query.Active:=false;
DataModule2.redtovp_save_Query1.SQL.Clear;
DataModule2.redtovp_save_Query1.SQL.Add ('INSERT INTO sklad (dateb,nomer,description,pricez,garb,fio,prodavec,koll ) VALUES(:dateb,:nomer,:description,:pricez,:garb,:fio,:prodavec,:koll) ');
DataModule2.redtovp_save_Query1.ParamByName('dateb').AsDate:=DateTimePicker2.DateTime;
DataModule2.redtovp_save_Query1.ParamByName('nomer').AsString:=edit8.Text;
DataModule2.redtovp_save_Query1.ParamByName('description').AsString:=edit1.Text;
DataModule2.redtovp_save_Query1.ParamByName('pricez').AsString:=StringReplace(edit2.Text, ',', '.', [rfReplaceAll]);
DataModule2.redtovp_save_Query1.ParamByName('garb').AsString:=edit9.Text;
DataModule2.redtovp_save_Query1.ParamByName('fio').AsString:=DBLookupComboBox1.Text;
DataModule2.redtovp_save_Query1.ParamByName('koll').AsString:=edit3.Text;
DataModule2.redtovp_save_Query1.ParamByName('prodavec').AsString:=combobox1.Text;
DataModule2.redtovp_save_Query1.ExecSQL;
DataModule2.sklad_Query.Active:=true;
DataModule2.sklad_Query.Refresh;

close;
end;

end.

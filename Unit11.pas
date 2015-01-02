unit Unit11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls;

type
  Tredsklad = class(TForm)
    Label1: TLabel;
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
    Edit6: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    save: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    DateTimePicker2: TDateTimePicker;
    Edit7: TEdit;
    procedure saveClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  redsklad: Tredsklad;



implementation

{$R *.dfm}

uses Unit2;

procedure Tredsklad.Button2Click(Sender: TObject);
begin
close;
end;

procedure Tredsklad.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=',' then  key:='.';

end;

procedure Tredsklad.saveClick(Sender: TObject);

begin
DataModule2.redtovp_save_Query1.SQL.Clear;
DataModule2.redtovp_save_Query1.SQL.Add ('Update sklad SET dateb=:dateb, nomer=:nomer, description=:description, pricez=:pricez, garb =:garb, fio=:fio,prodavec=:prodavec, koll=:koll WHERE id=:id ');
DataModule2.redtovp_save_Query1.ParamByName('dateb').AsDate:=DateTimePicker2.DateTime;
DataModule2.redtovp_save_Query1.ParamByName('nomer').AsString:=edit8.Text;
DataModule2.redtovp_save_Query1.ParamByName('description').AsString:=edit1.Text;
DataModule2.redtovp_save_Query1.ParamByName('pricez').Value:=StringReplace(edit2.Text, ',', '.', [rfReplaceAll]);
DataModule2.redtovp_save_Query1.ParamByName('garb').Value:=edit9.Text;
DataModule2.redtovp_save_Query1.ParamByName('fio').AsString:=edit6.Text;
DataModule2.redtovp_save_Query1.ParamByName('koll').Value:=edit3.Text;
DataModule2.redtovp_save_Query1.ParamByName('prodavec').AsString:=combobox1.Text;
DataModule2.redtovp_save_Query1.ParamByName('id').AsString:=edit7.text;
DataModule2.redtovp_save_Query1.ExecSQL;
DataModule2.sklad_Query.Refresh;
close;
end;

end.

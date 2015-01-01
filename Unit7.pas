unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  Tredtovpr = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    DateTimePicker1: TDateTimePicker;
    save: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    Label14: TLabel;
    DateTimePicker2: TDateTimePicker;
    Edit7: TEdit;
    Button1: TButton;
    procedure Button2Click(Sender: TObject);
    procedure saveClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  redtovpr: Tredtovpr;

implementation

{$R *.dfm}

uses Unit2;

procedure Tredtovpr.Button1Click(Sender: TObject);
begin
DataModule2.sklad_Query.Active:=false;
DataModule2.redtovp_save_Query1.SQL.Clear;
DataModule2.redtovp_save_Query1.SQL.Add ('INSERT INTO sklad (dateb,datepr,nomer,description,pricez,pricep,garb,gark,nomgart,fio,prodavec,koll ) VALUES(:dateb,:datepr,:nomer,:description,:pricez,:pricep,:garb,:gark,:nomgart,:fio,:prodavec,:koll) ');
DataModule2.redtovp_save_Query1.ParamByName('dateb').AsDate:=DateTimePicker2.DateTime;
DataModule2.redtovp_save_Query1.ParamByName('datepr').AsDate:=DateTimePicker1.DateTime;
DataModule2.redtovp_save_Query1.ParamByName('nomer').AsString:=edit8.Text;
DataModule2.redtovp_save_Query1.ParamByName('description').AsString:=edit1.Text;
DataModule2.redtovp_save_Query1.ParamByName('pricez').AsString:=edit2.Text;
DataModule2.redtovp_save_Query1.ParamByName('pricep').AsString:=edit4.Text;
DataModule2.redtovp_save_Query1.ParamByName('garb').AsString:=edit9.Text;
DataModule2.redtovp_save_Query1.ParamByName('gark').AsString:=edit5.Text;
DataModule2.redtovp_save_Query1.ParamByName('nomgart').AsString:=edit10.Text;
DataModule2.redtovp_save_Query1.ParamByName('fio').AsString:=edit6.Text;
DataModule2.redtovp_save_Query1.ParamByName('koll').AsString:=edit3.Text;
DataModule2.redtovp_save_Query1.ParamByName('prodavec').AsString:=combobox1.Text;
DataModule2.redtovp_save_Query1.ExecSQL;
DataModule2.del_tov_Query.SQL.Clear;
DataModule2.del_tov_Query.SQL.Add ('DELETE FROM tovar where id=:in3');
DataModule2.del_tov_Query.ParamByName('in3').AsString:=edit7.text;;
DataModule2.del_tov_Query.ExecSQL;
DataModule2.sklad_Query.Active:=true;
DataModule2.sklad_Query.Refresh;
DataModule2.tovar_Query.Refresh;
close;
end;

procedure Tredtovpr.Button2Click(Sender: TObject);
begin
Close;
end;

procedure Tredtovpr.saveClick(Sender: TObject);
begin

DataModule2.redtovp_save_Query1.SQL.Clear;
DataModule2.redtovp_save_Query1.SQL.Add ('Update  tovar SET dateb=:dateb ,datepr = :datepr , nomer=:nomer,description =:description,pricez = :pricez, nomgart =:nomgart, pricep =:pricep, garb =:garb,gark =:gark, fio =:fio,prodavec = :prodavec,koll = :koll WHERE id=:in1');
DataModule2.redtovp_save_Query1.ParamByName('in1').AsString:=edit7.text;
DataModule2.redtovp_save_Query1.ParamByName('dateb').AsDate:=DateTimePicker2.DateTime;
DataModule2.redtovp_save_Query1.ParamByName('datepr').AsDate:=DateTimePicker1.DateTime;
DataModule2.redtovp_save_Query1.ParamByName('nomer').AsString:=edit8.Text;
DataModule2.redtovp_save_Query1.ParamByName('description').AsString:=edit1.Text;

DataModule2.redtovp_save_Query1.ParamByName('pricez').AsString:=StringReplace(edit2.Text, ',', '.', [rfReplaceAll]);

DataModule2.redtovp_save_Query1.ParamByName('pricep').AsString:=StringReplace(edit4.Text, ',', '.', [rfReplaceAll]);
DataModule2.redtovp_save_Query1.ParamByName('garb').AsString:=edit9.Text;
DataModule2.redtovp_save_Query1.ParamByName('gark').AsString:=edit5.Text;
DataModule2.redtovp_save_Query1.ParamByName('nomgart').AsString:=edit10.Text;
DataModule2.redtovp_save_Query1.ParamByName('fio').AsString:=edit6.Text;
DataModule2.redtovp_save_Query1.ParamByName('koll').AsString:=edit3.Text;
DataModule2.redtovp_save_Query1.ParamByName('prodavec').AsString:=combobox1.Text;
DataModule2.redtovp_save_Query1.ExecSQL;

DataModule2.tovar_Query.Refresh;
close;
end;

end.

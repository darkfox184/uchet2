unit rsklprod;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls;

type
  Tprodaga = class(TForm)
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
    Label14: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    DateTimePicker1: TDateTimePicker;
    save: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    DateTimePicker2: TDateTimePicker;
    Edit7: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure Button2Click(Sender: TObject);
    procedure saveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  prodaga: Tprodaga;


implementation

{$R *.dfm}

uses Unit2, rsklad;

procedure Tprodaga.Button2Click(Sender: TObject);
begin
close;
end;

procedure Tprodaga.saveClick(Sender: TObject);
 var kollpr,kollpr1 :integer;
begin
kollpr:=strtoint(edit3.Text);
if koll=kollpr then  begin
DataModule2.tovar_Query.Active:=false;
DataModule2.redtovp_save_Query1.SQL.Clear;
DataModule2.redtovp_save_Query1.SQL.Add ('INSERT INTO tovar (dateb,datepr,nomer,description,pricez,pricep,garb,gark,nomgart,fio,prodavec,koll ) VALUES(:dateb,:datepr,:nomer,:description,:pricez,:pricep,:garb,:gark,:nomgart,:fio,:prodavec,:koll) ');
DataModule2.redtovp_save_Query1.ParamByName('dateb').AsDate:=DateTimePicker2.DateTime;
DataModule2.redtovp_save_Query1.ParamByName('datepr').AsDate:=DateTimePicker1.DateTime;
DataModule2.redtovp_save_Query1.ParamByName('nomer').AsString:=edit8.Text;
DataModule2.redtovp_save_Query1.ParamByName('description').AsString:=edit1.Text;
DataModule2.redtovp_save_Query1.ParamByName('pricez').AsString:=StringReplace(edit2.Text, ',', '.', [rfReplaceAll]);
DataModule2.redtovp_save_Query1.ParamByName('pricep').AsString:=StringReplace(edit4.Text, ',', '.', [rfReplaceAll]);;
DataModule2.redtovp_save_Query1.ParamByName('garb').AsString:=edit9.Text;
DataModule2.redtovp_save_Query1.ParamByName('gark').AsString:=edit5.Text;
DataModule2.redtovp_save_Query1.ParamByName('nomgart').AsString:=DBLookupComboBox1.Text;
DataModule2.redtovp_save_Query1.ParamByName('fio').AsString:=DBLookupComboBox2.Text;
DataModule2.redtovp_save_Query1.ParamByName('koll').AsString:=edit3.Text;
DataModule2.redtovp_save_Query1.ParamByName('prodavec').AsString:=combobox1.Text;
DataModule2.redtovp_save_Query1.ExecSQL;
DataModule2.del_tov_Query.SQL.Clear;
DataModule2.del_tov_Query.SQL.Add ('DELETE FROM sklad where id=:in3');
DataModule2.del_tov_Query.ParamByName('in3').AsString:=edit7.text;;
DataModule2.del_tov_Query.ExecSQL;
DataModule2.tovar_Query.Active:=true;
DataModule2.tovar_Query.Refresh;
DataModule2.sklad_Query.Refresh;

end
else begin
kollpr1:=koll-kollpr;//���������� ������� ������
if kollpr1>=1 then begin
 DataModule2.tovar_Query.Active:=false;
DataModule2.redtovp_save_Query1.SQL.Clear;
DataModule2.redtovp_save_Query1.SQL.Add ('INSERT INTO tovar (dateb,datepr,nomer,description,pricez,pricep,garb,gark,nomgart,fio,prodavec,koll ) VALUES(:dateb,:datepr,:nomer,:description,:pricez,:pricep,:garb,:gark,:nomgart,:fio,:prodavec,:koll) ');
DataModule2.redtovp_save_Query1.ParamByName('dateb').AsDate:=DateTimePicker2.DateTime;
DataModule2.redtovp_save_Query1.ParamByName('datepr').AsDate:=DateTimePicker1.DateTime;
DataModule2.redtovp_save_Query1.ParamByName('nomer').AsString:=edit8.Text;
DataModule2.redtovp_save_Query1.ParamByName('description').AsString:=edit1.Text;
DataModule2.redtovp_save_Query1.ParamByName('pricez').AsString:=edit2.Text;
DataModule2.redtovp_save_Query1.ParamByName('pricep').AsString:=edit4.Text;
DataModule2.redtovp_save_Query1.ParamByName('garb').AsString:=edit9.Text;
DataModule2.redtovp_save_Query1.ParamByName('gark').AsString:=edit5.Text;
DataModule2.redtovp_save_Query1.ParamByName('nomgart').AsString:=DBLookupComboBox1.Text;
DataModule2.redtovp_save_Query1.ParamByName('fio').AsString:=DBLookupComboBox2.Text;
DataModule2.redtovp_save_Query1.ParamByName('koll').Value:=kollpr;
DataModule2.redtovp_save_Query1.ParamByName('prodavec').AsString:=combobox1.Text;
DataModule2.redtovp_save_Query1.ExecSQL;
DataModule2.del_tov_Query.SQL.Clear;
DataModule2.del_tov_Query.SQL.Add ('update  sklad SET  koll =:kollpr1  WHERE id=:id');
DataModule2.del_tov_Query.ParamByName('id').AsString:=edit7.text;
DataModule2.del_tov_Query.ParamByName('kollpr1').Value:=kollpr1;
DataModule2.del_tov_Query.ExecSQL;
DataModule2.tovar_Query.Active:=true;
DataModule2.tovar_Query.Refresh;
DataModule2.sklad_Query.Refresh;
end
else begin
  showmessage('������������ ������ �� ������!');
end;


end;
 close;
end;

end.

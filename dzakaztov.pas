unit dzakaztov;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.DBCtrls;

type
  Tdzakaz = class(TForm)
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
    ComboBox1: TComboBox;
    DateTimePicker2: TDateTimePicker;
    DBLookupComboBox3: TDBLookupComboBox;
    Button2: TButton;
    procedure dskbtnClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);

    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dzakaz: Tdzakaz;

implementation

{$R *.dfm}

uses Unit2;

procedure Tdzakaz.Button2Click(Sender: TObject);
begin
close;
end;

procedure Tdzakaz.dskbtnClick(Sender: TObject);
var i:integer;
begin
if (edit8.Text='') or (edit1.Text='')or (edit2.Text='')or (edit9.Text='')or (edit3.Text='') or (combobox1.Text='')or (DBLookupComboBox3.Text='')  then  begin
  MessageDlg('�� �� ��������� ��� ���� ��� ���������� ������!',mtWarning, mbOKCancel, 0)
end else
begin
DataModule2.redtovp_save_Query1.SQL.Clear;
DataModule2.redtovp_save_Query1.SQL.Add ('INSERT INTO zakaz (datez,nomer,description,pricez,garb,fio,prodavec,koll,poluch ) VALUES(:datez,:nomer,:description,:pricez,:garb,:fio,:prodavec,:koll, :poluch) ');
DataModule2.redtovp_save_Query1.ParamByName('datez').AsDate:=DateTimePicker2.DateTime;
DataModule2.redtovp_save_Query1.ParamByName('nomer').AsString:=edit8.Text;
DataModule2.redtovp_save_Query1.ParamByName('description').AsString:=edit1.Text;
DataModule2.redtovp_save_Query1.ParamByName('pricez').AsString:=StringReplace(edit2.Text, ',', '.', [rfReplaceAll]);
DataModule2.redtovp_save_Query1.ParamByName('garb').AsString:=edit9.Text;
DataModule2.redtovp_save_Query1.ParamByName('fio').AsString:=DBLookupComboBox3.Text;
DataModule2.redtovp_save_Query1.ParamByName('koll').AsString:=edit3.Text;
DataModule2.redtovp_save_Query1.ParamByName('prodavec').AsString:=combobox1.Text;
DataModule2.redtovp_save_Query1.ParamByName('poluch').AsString:='���';
DataModule2.redtovp_save_Query1.ExecSQL;
DataModule2.zakaz_Query.Refresh;
//form clear
for i:=0 to ComponentCount-1 do
 begin
  if (Components[i] is TEdit)then (Components[i] as TEdit).Text:='';

 end;
   edit8.Text:='KT';
end;


end;

procedure Tdzakaz.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9',',','.', #8]) then
Key:=#0;
end;

procedure Tdzakaz.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9', #8]) then
Key:=#0;
end;

procedure Tdzakaz.Edit9KeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9', #8]) then
Key:=#0;
end;

procedure Tdzakaz.FormActivate(Sender: TObject);
begin
DataModule2.clients_Query.Refresh;
end;



procedure Tdzakaz.FormCreate(Sender: TObject);
begin
DateTimePicker2.Date:=Date;
end;

end.

unit partndzakaz;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.StdCtrls;

type
  Tpartdzakaz = class(TForm)
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
    procedure FormActivate(Sender: TObject);
    procedure dskbtnClick(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  partdzakaz: Tpartdzakaz;

implementation

{$R *.dfm}

uses data8_1;

procedure Tpartdzakaz.Button2Click(Sender: TObject);
begin
close;
end;

procedure Tpartdzakaz.dskbtnClick(Sender: TObject);
var i:integer;
begin
if (edit8.Text='') or (edit1.Text='')or (edit2.Text='')or (edit9.Text='')or (edit3.Text='') or (combobox1.Text='')or (DBLookupComboBox3.Text='') then
 begin
  MessageDlg('�� �� ��������� ��� ���� ��� ���������� ������?',mtWarning, mbOKCancel, 0)
end else
begin
 Data8.ins_Query.SQL.Clear;
Data8.ins_Query.SQL.Add ('INSERT INTO pzakaz (datez,nomer,description,pricez,garb,fio,prodavec,koll,poluch ) ');
Data8.ins_Query.SQL.Add ('VALUES(:datez,:nomer,:description,:pricez,:garb,:fio,:prodavec,:koll, :poluch) ');
Data8.ins_Query.ParamByName('datez').AsDate:=DateTimePicker2.DateTime;
Data8.ins_Query.ParamByName('nomer').AsString:=edit8.Text;
Data8.ins_Query.ParamByName('description').AsString:=edit1.Text;
Data8.ins_Query.ParamByName('pricez').AsString:=StringReplace(edit2.Text, ',', '.', [rfReplaceAll]);
Data8.ins_Query.ParamByName('garb').AsString:=edit9.Text;
Data8.ins_Query.ParamByName('fio').AsString:=DBLookupComboBox3.Text;
Data8.ins_Query.ParamByName('koll').AsString:=edit3.Text;
Data8.ins_Query.ParamByName('prodavec').AsString:=combobox1.Text;
Data8.ins_Query.ParamByName('poluch').AsString:='���';
Data8.ins_Query.ExecSQL;
Data8.zakaz_Query.Refresh;
for i:=0 to ComponentCount-1 do
 begin
  if (Components[i] is TEdit)then (Components[i] as TEdit).Text:='';
 end;
  edit8.Text:='KT';
 end;

end;

procedure Tpartdzakaz.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9',',','.', #8]) then
Key:=#0;
end;

procedure Tpartdzakaz.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9', #8]) then
Key:=#0;
end;

procedure Tpartdzakaz.Edit9KeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9', #8]) then
Key:=#0;
end;

procedure Tpartdzakaz.FormActivate(Sender: TObject);
begin
Data8.clients_Query.refresh;
DateTimePicker2.Date:=Date;
end;

end.

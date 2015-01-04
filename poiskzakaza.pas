unit poiskzakaza;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ButtonGroup;

type
  Tzakazpoisk = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Button2: TButton;
    GroupBox1: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    GroupBox2: TGroupBox;
    DateTimePicker3: TDateTimePicker;
    search: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Button3: TButton;
    Button4: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure searchClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  zakazpoisk: Tzakazpoisk;

implementation

{$R *.dfm}

uses Unit2, dzakaztov, rezakaz, prtovskl;

procedure Tzakazpoisk.Button1Click(Sender: TObject);
var
date1,date2:string;
begin
DataModule2.zakaz_Query.SQL.Clear;
DataModule2.zakaz_Query.SQL.Add ('SELECT * FROM zakaz  where `datez`>=:date1 AND `datez`<=:date2 AND poluch =:poluch ');
DataModule2.zakaz_Query.ParamByName('poluch').Value:='��';
date1:= FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date);
date2:= FormatDateTime('yyyy-mm-dd',DateTimePicker2.Date);
DataModule2.zakaz_Query.ParamByName('date1').Value:=date1;
DataModule2.zakaz_Query.ParamByName('date2').Value:=date2;
DataModule2.zakaz_Query.open;
end;

procedure Tzakazpoisk.Button2Click(Sender: TObject);
begin
DataModule2.redtovp_save_Query1.SQL.Clear;
DataModule2.redtovp_save_Query1.SQL.Add ('Update zakaz SET poluch =:poluch WHERE id=:id ');
DataModule2.redtovp_save_Query1.ParamByName('poluch').AsString:='���';
DataModule2.redtovp_save_Query1.ParamByName('id').AsString:=DBGrid1.Fields[0].AsString;;
DataModule2.redtovp_save_Query1.ExecSQL;
DataModule2.zakaz_Query.Refresh;
end;

procedure Tzakazpoisk.Button3Click(Sender: TObject);
begin
DataModule2.zakaz_Query.SQL.Clear;
DataModule2.zakaz_Query.SQL.Add ('SELECT *  FROM zakaz Where poluch =:poluch  ORDER BY id DESC, id LIMIT 100  ');
DataModule2.zakaz_Query.ParamByName('poluch').AsString:='��';
DataModule2.zakaz_Query.open;
end;

procedure Tzakazpoisk.Button4Click(Sender: TObject);
var
  buttonSelected : Integer;
begin
  // ����������� ������� � ��������������
  buttonSelected := MessageDlg('�� ������������� ������ ������� ����� �� ������?',mtWarning, mbOKCancel, 0);
     // ����� ���� ��������� ������
  if buttonSelected = mrOK     then
  begin
   DataModule2.del_tov_Query.SQL.Clear;
DataModule2.del_tov_Query.SQL.Add ('DELETE FROM zakaz where id=:in3');
DataModule2.del_tov_Query.ParamByName('in3').AsString:=DBGrid1.Fields[0].AsString;
DataModule2.del_tov_Query.ExecSQL;
DataModule2.zakaz_Query.Refresh;
  end;
if buttonSelected = mrCancel then
begin
 DataModule2.zakaz_Query.Refresh;
  end;

end;

procedure Tzakazpoisk.ComboBox1Change(Sender: TObject);
begin

if combobox1.ItemIndex=1 then
begin
  DateTimePicker3.Visible:=true;
  edit1.Visible:=false;
end
else
begin
  edit1.Visible:=true;
  DateTimePicker3.Visible:=false
end;
end;

procedure Tzakazpoisk.FormActivate(Sender: TObject);
begin
DataModule2.zakaz_Query.SQL.Clear;
DataModule2.zakaz_Query.SQL.Add ('SELECT * FROM zakaz Where poluch =:poluch  ORDER BY id DESC, id LIMIT 100 ');
DataModule2.zakaz_Query.ParamByName('poluch').asstring:='��';
DataModule2.zakaz_Query.open;

end;

procedure Tzakazpoisk.FormCreate(Sender: TObject);
begin
DataModule2.zakaz_Query.SQL.Clear;
DataModule2.zakaz_Query.SQL.Add ('SELECT *  FROM zakaz Where poluch =:poluch  ORDER BY id DESC, id LIMIT 100  ');
DataModule2.zakaz_Query.ParamByName('poluch').asstring:='��';
DataModule2.zakaz_Query.open;


end;



procedure Tzakazpoisk.searchClick(Sender: TObject);
var
str:string;
begin
if combobox1.ItemIndex=0 then begin
DataModule2.zakaz_Query.SQL.Clear;
DataModule2.zakaz_Query.SQL.Add ('SELECT *  FROM zakaz where snomer like ''%'+edit1.text+'%'' AND poluch =:poluch');
DataModule2.zakaz_Query.ParamByName('poluch').AsString:='��';
DataModule2.zakaz_Query.open;
  end;
if combobox1.ItemIndex=1 then begin
str:= FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date);
DataModule2.zakaz_Query.SQL.Clear;
DataModule2.zakaz_Query.SQL.Add ('SELECT *  FROM zakaz where datez=:in3 AND poluch =:poluch');
DataModule2.zakaz_Query.ParamByName('in3').Value:=str;
DataModule2.zakaz_Query.ParamByName('poluch').AsString:='��';
DataModule2.zakaz_Query.open;
  end;
if combobox1.ItemIndex=2 then begin
DataModule2.zakaz_Query.SQL.Clear;
DataModule2.zakaz_Query.SQL.Add ('SELECT * FROM zakaz where description like ''%'+edit1.text+'%'' AND poluch =:poluch');
DataModule2.zakaz_Query.ParamByName('poluch').AsString:='��';
DataModule2.zakaz_Query.open;
  end;
if combobox1.ItemIndex=3 then begin
DataModule2.zakaz_Query.SQL.Clear;
DataModule2.zakaz_Query.SQL.Add ('SELECT * FROM zakaz where nakladnaya like ''%'+edit1.text+'%'' AND poluch =:poluch');
DataModule2.zakaz_Query.ParamByName('poluch').AsString:='��';
DataModule2.zakaz_Query.open;
  end;
  if combobox1.ItemIndex=4 then begin
DataModule2.zakaz_Query.SQL.Clear;
DataModule2.zakaz_Query.SQL.Add ('SELECT * FROM zakaz where fio like ''%'+edit1.text+'%'' AND poluch =:poluch');
DataModule2.zakaz_Query.ParamByName('poluch').AsString:='��';
DataModule2.zakaz_Query.open;
  end;
end;

end.

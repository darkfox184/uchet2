unit kassaord;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  Torderkassa = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Button5: TButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    label2: TLabel;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  orderkassa: Torderkassa;

implementation

{$R *.dfm}

uses Unit2, sozdatorder2, balanskorekter;

procedure Torderkassa.Button1Click(Sender: TObject);
begin
if (DBLookupComboBox1.KeyValue>0)  then  begin
sozdatorder.Label4.Caption:=DBLookupComboBox1.text;
sozdatorder.Label2.Caption:=DBLookupComboBox1.KeyValue;
sozdatorder.show;
end else
begin
  MessageDlg('�� �� ������� �������!',mtWarning, mbOKCancel, 0)
end;
end;

procedure Torderkassa.Button2Click(Sender: TObject);
begin
if (DBLookupComboBox1.KeyValue>0)  then  begin
balanskorekt.Label4.Caption:=DBLookupComboBox1.text;
balanskorekt.Label2.Caption:=DBLookupComboBox1.KeyValue;
balanskorekt.show;
end else
begin
  MessageDlg('�� �� ������� �������!',mtWarning, mbOKCancel, 0)
end;

end;

procedure Torderkassa.Button3Click(Sender: TObject);
begin
DataModule2.Balans_Query.SQL.Clear;
DataModule2.Balans_Query.SQL.Add ('SELECT *  FROM balans  where id_cl =:id ');
DataModule2.Balans_Query.ParamByName('id').Value:=DBLookupComboBox1.KeyValue;
DataModule2.Balans_Query.open;
end;

procedure Torderkassa.Button5Click(Sender: TObject);
var
date1,date2:string;
begin
if (DBLookupComboBox1.KeyValue>0)  then  begin
DataModule2.Balans_Query.SQL.Clear;
DataModule2.Balans_Query.SQL.Add ('SELECT *  FROM balans  where`dateop`>=:date1 AND `dateop`<=:date2 AND id_cl =:id ');
DataModule2.Balans_Query.ParamByName('id').Value:=DBLookupComboBox1.KeyValue;
date1:= FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date);
date2:= FormatDateTime('yyyy-mm-dd',DateTimePicker2.Date);
DataModule2.Balans_Query.ParamByName('date1').Value:=date1;
DataModule2.Balans_Query.ParamByName('date2').Value:=date2;
DataModule2.Balans_Query.open;
end else
begin
  MessageDlg('�� �� ������� �������!',mtWarning, mbOKCancel, 0)
end;

end;

procedure Torderkassa.DBLookupComboBox1Click(Sender: TObject);
begin
DataModule2.Balans_Query.SQL.Clear;
DataModule2.Balans_Query.SQL.Add ('SELECT *  FROM balans  where id_cl =:id ');
DataModule2.Balans_Query.ParamByName('id').Value:=DBLookupComboBox1.KeyValue;
DataModule2.Balans_Query.open;
end;

procedure Torderkassa.FormCreate(Sender: TObject);
begin
datamodule2.clients_Query1.active:=true;

end;

end.
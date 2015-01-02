unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  Tsklad = class(TForm)
    DBGrid1: TDBGrid;
    prodat: TButton;
    Button2: TButton;
    schet_create: TButton;
    Button6: TButton;
    Button3: TButton;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    search: TButton;
    DateTimePicker1: TDateTimePicker;
    Panel1: TPanel;
    Panel2: TPanel;
    Button5: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure schet_createClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure prodatClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  sklad: Tsklad;
  koll:integer;

implementation

{$R *.dfm}

uses Unit2, Unit10, Unit11;

procedure Tsklad.Button2Click(Sender: TObject);

begin

redsklad.edit7.text:=DBGrid1.Fields[0].AsString;
DataModule2.retovp_Query1.SQL.Clear;
DataModule2.retovp_Query1.SQL.Add ('SELECT *  FROM sklad where id=:in4');
DataModule2.retovp_Query1.ParamByName('in4').AsString:=DBGrid1.Fields[0].AsString;
DataModule2.retovp_Query1.open;
redsklad.edit8.Text:=DataModule2.retovp_Query1.Fields[3].AsString;
redsklad.edit9.Text:=DataModule2.retovp_Query1.Fields[7].AsString;
redsklad.edit1.Text:=DataModule2.retovp_Query1.Fields[4].AsString;
redsklad.edit2.Text:=DataModule2.retovp_Query1.Fields[5].AsString;
redsklad.edit3.Text:=DataModule2.retovp_Query1.Fields[12].AsString;
redsklad.edit6.Text:=DataModule2.retovp_Query1.Fields[10].AsString;
redsklad.DateTimePicker2.DateTime:=DataModule2.retovp_Query1.Fields[2].AsDateTime;
redsklad.ComboBox1.Text:=DataModule2.retovp_Query1.Fields[11].AsString;
DataModule2.shet2_FDQuery.Active:=true;
DataModule2.shet2_FDQuery.Refresh;
redsklad.show;
end;

procedure Tsklad.Button3Click(Sender: TObject);
begin
DataModule2.sklad_Query.SQL.Clear;
DataModule2.sklad_Query.SQL.Add ('SELECT sklad.id, sklad.nomer, sklad.dateb, sklad.pricez, sklad.koll, sklad.fio, sklad.description, sklad.prodavec, sklad.garb, options.valuta, sklad.pricez*options.valuta as prisegrn  FROM sklad, options ORDER BY sklad.id desc ');
DataModule2.sklad_Query.open;
DataModule2.options_Query.SQL.Clear;
DataModule2.options_Query.SQL.Add ('SELECT valuta  FROM options ');
DataModule2.options_Query.open;
label2.Caption:=DataModule2.options_Query.Fields[0].AsString;
end;

procedure Tsklad.Button6Click(Sender: TObject);
var
  buttonSelected : Integer;
begin
  // Отображение диалога с подтверждением
  buttonSelected := MessageDlg('Вы действительно хотите удалить товар со склада?',mtWarning, mbOKCancel, 0);
     // Показ типа выбранной кнопки
  if buttonSelected = mrOK     then
  begin
  DataModule2.del_tov_Query.SQL.Clear;
DataModule2.del_tov_Query.SQL.Add ('DELETE FROM sklad where id=:in3');
DataModule2.del_tov_Query.ParamByName('in3').AsString:=DBGrid1.Fields[0].AsString;
DataModule2.del_tov_Query.ExecSQL;
DataModule2.tovar_Query.Refresh;
  end;
if buttonSelected = mrCancel then
begin
 DataModule2.tovar_Query.Refresh;
  end;
 end;

procedure Tsklad.FormCreate(Sender: TObject);
begin
DataModule2.sklad_Query.SQL.Clear;
DataModule2.sklad_Query.SQL.Add ('SELECT sklad.id, sklad.nomer, sklad.dateb, sklad.pricez, sklad.koll, sklad.fio, sklad.description, sklad.prodavec, sklad.garb, options.valuta, sklad.pricez*options.valuta as prisegrn  FROM sklad, options ORDER BY sklad.id desc ');
DataModule2.sklad_Query.open;
DataModule2.options_Query.SQL.Clear;
DataModule2.options_Query.SQL.Add ('SELECT valuta  FROM options ');
DataModule2.options_Query.open;
label2.Caption:=DataModule2.options_Query.Fields[0].AsString;
end;

procedure Tsklad.prodatClick(Sender: TObject);
begin
prodaga.edit7.text:=DBGrid1.Fields[0].AsString;
DataModule2.retovp_Query1.SQL.Clear;
DataModule2.retovp_Query1.SQL.Add ('SELECT *  FROM sklad where id=:in4');
DataModule2.retovp_Query1.ParamByName('in4').AsString:=DBGrid1.Fields[0].AsString;
DataModule2.retovp_Query1.open;
prodaga.edit8.Text:=DataModule2.retovp_Query1.Fields[3].AsString;
prodaga.edit9.Text:=DataModule2.retovp_Query1.Fields[7].AsString;
prodaga.edit1.Text:=DataModule2.retovp_Query1.Fields[4].AsString;
prodaga.edit2.Text:=DataModule2.retovp_Query1.Fields[5].AsString;
prodaga.edit4.Text:=DataModule2.retovp_Query1.Fields[6].AsString;
prodaga.edit3.Text:=DataModule2.retovp_Query1.Fields[12].AsString;
koll:=DataModule2.retovp_Query1.Fields[12].AsInteger;
prodaga.edit5.Text:=DataModule2.retovp_Query1.Fields[8].AsString;
prodaga.edit6.Text:=DataModule2.retovp_Query1.Fields[10].AsString;
prodaga.DateTimePicker1.DateTime:=DataModule2.retovp_Query1.Fields[1].AsDateTime;
prodaga.DateTimePicker2.DateTime:=DataModule2.retovp_Query1.Fields[2].AsDateTime;
prodaga.ComboBox1.Text:=DataModule2.retovp_Query1.Fields[11].AsString;
DataModule2.shet2_FDQuery.Active:=true;
DataModule2.shet2_FDQuery.Refresh;
prodaga.show;
end;

procedure Tsklad.schet_createClick(Sender: TObject);
var count:integer;
gark:string;
begin
DataModule2.shet_FDQuery.SQL.Clear;
DataModule2.shet_FDQuery.SQL.Add ('SELECT number  FROM garant ORDER BY id DESC, id LIMIT 1 ');
DataModule2.shet_FDQuery.open;
count:=DataModule2.shet_FDQuery.Fields[0].AsInteger;
inc(count);
gark:=IntToStr(count);
if count<1000 then begin gark:='000'+gark;
end;
if count<10000 then begin  gark:='00'+gark;
end
else begin
if count<100000 then gark:='0'+gark;
end;
gark:='ММДН-'+gark;
DataModule2.shet_FDQuery.SQL.Clear;
DataModule2.shet_FDQuery.SQL.Add ('INSERT INTO garant (gark, number) VALUES (:gark, :number)  ');
DataModule2.shet_FDQuery.ParamByName('gark').Value:=gark;
DataModule2.shet_FDQuery.ParamByName('number').Value:=count;
DataModule2.shet_FDQuery.ExecSQL;
DataModule2.shet2_FDQuery.Active:=true;
DataModule2.shet2_FDQuery.Refresh;
ShowMessage( 'Накладная '+gark+'! Успешно создана!'  );
end;

end.

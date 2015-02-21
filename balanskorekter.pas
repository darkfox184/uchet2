unit balanskorekter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  Tbalanskorekt = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Button2: TButton;
    DateTimePicker1: TDateTimePicker;
    Memo1: TMemo;
    Label8: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  balanskorekt: Tbalanskorekt;
   count:integer;
  gark:string;
implementation

{$R *.dfm}

uses Unit2;

procedure Tbalanskorekt.Button2Click(Sender: TObject);
var sum:real;
begin
if (edit1.Text='')or (memo1.Text='')  then  begin
  MessageDlg('�� �� ������� ����� ������!',mtWarning, mbOKCancel, 0)
end else
begin
DataModule2.balans2_Query.SQL.Clear;
DataModule2.balans2_Query.SQL.Add ('SELECT balans.balans, clients.datepp FROM balans,clients Where balans.dateop=clients.datepp AND balans.id_cl=:id');
DataModule2.balans2_Query.ParamByName('id').Value:=label2.Caption;
DataModule2.balans2_Query.open;
sum:=DataModule2.balans2_Query.Fields[0].Asfloat - strtofloat(edit1.text);

DataModule2.shet_FDQuery.SQL.Clear;
DataModule2.shet_FDQuery.SQL.Add ('SELECT schet FROM prnakl ORDER BY id DESC, id LIMIT 1 ');
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
gark:='������-'+gark;
datetimepicker1.DateTime:=now;

DataModule2.shet_FDQuery.SQL.Clear;
DataModule2.shet_FDQuery.SQL.Add ('INSERT INTO prnakl (nameprnakl, schet, dateprnakl) VALUES (:nameprnakl, :number, :dateprnakl)  ');
DataModule2.shet_FDQuery.ParamByName('nameprnakl').Value:=gark;
DataModule2.shet_FDQuery.ParamByName('number').Value:=count;
DataModule2.shet_FDQuery.ParamByName('dateprnakl').Value:=datetimepicker1.DateTime;
DataModule2.shet_FDQuery.ExecSQL;



DataModule2.shet_FDQuery.SQL.Clear;
DataModule2.shet_FDQuery.SQL.Add ('INSERT INTO balans (nakl, id_cl,dateop,rashod,balans,coments ) VALUES (:nameprnakl, :id_cl, :dateprnakl, :rashod, :balans, :coments)  ');
DataModule2.shet_FDQuery.ParamByName('nameprnakl').Value:=gark;
DataModule2.shet_FDQuery.ParamByName('id_cl').Value:=label2.Caption;
DataModule2.shet_FDQuery.ParamByName('dateprnakl').Value:=datetimepicker1.DateTime;
DataModule2.shet_FDQuery.ParamByName('rashod').Value:=StringReplace(edit1.Text, ',', '.', [rfReplaceAll]);
DataModule2.shet_FDQuery.ParamByName('balans').Value:=sum;
DataModule2.shet_FDQuery.ParamByName('coments').Value:=memo1.text;
DataModule2.shet_FDQuery.ExecSQL;

DataModule2.shet_FDQuery.SQL.Clear;
DataModule2.shet_FDQuery.SQL.Add ('UPDATE clients SET datepp=:dateprnakl WHERE id=:id   ');
DataModule2.shet_FDQuery.ParamByName('dateprnakl').Value:=datetimepicker1.DateTime;
DataModule2.shet_FDQuery.ParamByName('id').Value:=label2.Caption;
DataModule2.shet_FDQuery.ExecSQL;

DataModule2.Balans_Query.SQL.Clear;
DataModule2.Balans_Query.SQL.Add ('SELECT *  FROM balans  where id_cl =:id ');
DataModule2.Balans_Query.ParamByName('id').Value:=label2.Caption;
DataModule2.Balans_Query.open;
close;
end;
end;

procedure Tbalanskorekt.FormShow(Sender: TObject);
begin
DataModule2.shet_FDQuery.SQL.Clear;
DataModule2.shet_FDQuery.SQL.Add ('SELECT schet FROM prnakl ORDER BY id DESC, id LIMIT 1 ');
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
gark:='������-'+gark;
label6.Caption:=gark;
datetimepicker1.DateTime:=now;
end;

end.

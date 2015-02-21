unit rsklad;

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
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure schet_createClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure prodatClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure searchClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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

uses Unit2, rsklprod, redtovskl, dobavltov;

procedure Tsklad.Button1Click(Sender: TObject);
begin
 DataModule2.sklad_Query.SQL.Clear;
DataModule2.sklad_Query.SQL.Add ('SELECT sklad.id, sklad.nomer, sklad.dateb,sklad.kursp, sklad.pricez, sklad.koll, sklad.fio, sklad.description, sklad.prodavec, sklad.garb, options.valuta, ');
DataModule2.sklad_Query.SQL.Add ('sklad.pricez*options.valuta as prisegrn, sklad.pricez*sklad.kursp as przak   FROM sklad, options ORDER BY sklad.id desc ');
DataModule2.sklad_Query.open;
DataModule2.options_Query.SQL.Clear;
DataModule2.options_Query.SQL.Add ('SELECT valuta  FROM options ');
DataModule2.options_Query.open;
label2.Caption:=DataModule2.options_Query.Fields[0].AsString;
end;

procedure Tsklad.Button2Click(Sender: TObject);

begin
if (not Assigned(redsklad)) then redsklad:=Tredsklad.Create(Self);
DataModule2.clients_Query.Active:=true;
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
redsklad.edit4.Text:=DataModule2.retovp_Query1.Fields[13].AsString;
DataModule2.del_tov_Query.SQL.Clear;
DataModule2.del_tov_Query.SQL.Add ('select id,fio FROM clients where fio=:in3');
DataModule2.del_tov_Query.ParamByName('in3').AsString:=DBGrid1.Fields[9].AsString;
DataModule2.del_tov_Query.Open;
redsklad.DBLookupComboBox1.KeyValue:= DataModule2.del_tov_Query.Fields[0].AsString;


redsklad.DateTimePicker2.DateTime:=DataModule2.retovp_Query1.Fields[2].AsDateTime;
redsklad.ComboBox1.Text:=DataModule2.retovp_Query1.Fields[11].AsString;
DataModule2.shet2_FDQuery.Active:=true;
DataModule2.shet2_FDQuery.Refresh;
redsklad.showmodal;
end;

procedure Tsklad.Button5Click(Sender: TObject);
begin
if (not Assigned(dsklad)) then dsklad:=Tdsklad.Create(Self);
DataModule2.clients_Query.Refresh;
dsklad.show;
end;

procedure Tsklad.Button6Click(Sender: TObject);
var
  buttonSelected : Integer;
begin
  // ����������� ������� � ��������������
  buttonSelected := MessageDlg('�� ������������� ������ ������� ����� �� ������?',mtWarning, mbOKCancel, 0);
     // ����� ���� ��������� ������
  if buttonSelected = mrOK     then
  begin
  DataModule2.del_tov_Query.SQL.Clear;
DataModule2.del_tov_Query.SQL.Add ('DELETE FROM sklad where id=:in3');
DataModule2.del_tov_Query.ParamByName('in3').AsString:=DBGrid1.Fields[0].AsString;
DataModule2.del_tov_Query.ExecSQL;
DataModule2.sklad_Query.Refresh;
  end;
if buttonSelected = mrCancel then
begin
DataModule2.sklad_Query.Refresh;
  end;
 end;

procedure Tsklad.ComboBox1Click(Sender: TObject);
begin
if combobox1.ItemIndex=1 then
begin
  DateTimePicker1.Visible:=true;
  edit1.Visible:=false;
end
else
begin
  edit1.Visible:=true;
  DateTimePicker1.Visible:=false
end;
end;

procedure Tsklad.FormActivate(Sender: TObject);
begin
DataModule2.sklad_Query.SQL.Clear;
DataModule2.sklad_Query.SQL.Add ('SELECT sklad.id, sklad.nomer, sklad.dateb,sklad.kursp, sklad.pricez, sklad.koll, sklad.fio, sklad.description, sklad.prodavec, sklad.garb, options.valuta, ');
DataModule2.sklad_Query.SQL.Add ('sklad.pricez*options.valuta as prisegrn, sklad.pricez*sklad.kursp as przak   FROM sklad, options ORDER BY sklad.id desc ');
DataModule2.sklad_Query.open;
DataModule2.options_Query.SQL.Clear;
DataModule2.options_Query.SQL.Add ('SELECT valuta  FROM options ');
DataModule2.options_Query.open;
label2.Caption:=DataModule2.options_Query.Fields[0].AsString;
end;

procedure Tsklad.FormCreate(Sender: TObject);
begin
DataModule2.sklad_Query.SQL.Clear;
DataModule2.sklad_Query.SQL.Add ('SELECT sklad.id, sklad.nomer,sklad.kursp,  sklad.dateb, sklad.pricez, sklad.koll, sklad.fio, sklad.description, sklad.prodavec, sklad.garb, options.valuta,');
 DataModule2.sklad_Query.SQL.Add ('sklad.pricez*options.valuta as prisegrn, sklad.pricez*sklad.kursp as przak   FROM sklad, options ORDER BY sklad.id desc ');
DataModule2.sklad_Query.open;
DataModule2.options_Query.SQL.Clear;
DataModule2.options_Query.SQL.Add ('SELECT valuta  FROM options ');
DataModule2.options_Query.open;
label2.Caption:=DataModule2.options_Query.Fields[0].AsString;
end;

procedure Tsklad.prodatClick(Sender: TObject);
begin
if (not Assigned(prodaga)) then prodaga:=Tprodaga.Create(Self);
DataModule2.clients_Query.Active:=true;
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
DataModule2.del_tov_Query.SQL.Clear;
DataModule2.del_tov_Query.SQL.Add ('select id,fio FROM clients where fio=:in3');
DataModule2.del_tov_Query.ParamByName('in3').AsString:=DBGrid1.Fields[9].AsString;
DataModule2.del_tov_Query.Open;
prodaga.DBLookupComboBox2.KeyValue:= DataModule2.del_tov_Query.Fields[0].AsString;

//prodaga.DateTimePicker1.DateTime:=DataModule2.retovp_Query1.Fields[1].AsDateTime;
prodaga.DateTimePicker2.DateTime:=DataModule2.retovp_Query1.Fields[2].AsDateTime;
prodaga.ComboBox1.Text:=DataModule2.retovp_Query1.Fields[11].AsString;
DataModule2.shet2_FDQuery.Active:=true;
DataModule2.shet2_FDQuery.Refresh;
prodaga.showmodal;
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
gark:='����-'+gark;
DataModule2.shet_FDQuery.SQL.Clear;
DataModule2.shet_FDQuery.SQL.Add ('INSERT INTO garant (gark, number) VALUES (:gark, :number)  ');
DataModule2.shet_FDQuery.ParamByName('gark').Value:=gark;
DataModule2.shet_FDQuery.ParamByName('number').Value:=count;
DataModule2.shet_FDQuery.ExecSQL;
DataModule2.shet2_FDQuery.Active:=true;
DataModule2.shet2_FDQuery.Refresh;
ShowMessage( '��������� '+gark+'! ������� �������!'  );
end;

procedure Tsklad.searchClick(Sender: TObject);
var
str:string;
begin
if combobox1.ItemIndex=0 then begin
DataModule2.sklad_Query.SQL.Clear;
DataModule2.sklad_Query.SQL.Add ('SELECT sklad.id, sklad.nomer, sklad.dateb,sklad.kursp, sklad.pricez, sklad.koll, sklad.fio, sklad.description, sklad.prodavec, ');
DataModule2.sklad_Query.SQL.Add ('sklad.garb, options.valuta, sklad.pricez*options.valuta as prisegrn, sklad.pricez*sklad.kursp as przak   FROM sklad, options where sklad.nomer like ''%'+edit1.text+'%''');
DataModule2.sklad_Query.open;
  end;
if combobox1.ItemIndex=1 then begin
str:= FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date);
DataModule2.sklad_Query.SQL.Clear;
DataModule2.sklad_Query.SQL.Add ('SELECT sklad.id, sklad.nomer, sklad.dateb,sklad.kursp, sklad.pricez, sklad.koll, sklad.fio, sklad.description, sklad.prodavec,  ');
DataModule2.sklad_Query.SQL.Add ('sklad.garb, options.valuta, sklad.pricez*options.valuta as prisegrn, sklad.pricez*sklad.kursp as przak   FROM sklad, options where sklad.datepr=:in3');
DataModule2.sklad_Query.ParamByName('in3').Value:=str;
DataModule2.sklad_Query.open;
  end;
if combobox1.ItemIndex=2 then begin
DataModule2.sklad_Query.SQL.Clear;
DataModule2.sklad_Query.SQL.Add ('SELECT sklad.id, sklad.nomer, sklad.dateb,sklad.kursp, sklad.pricez, sklad.koll, sklad.fio, sklad.description, sklad.prodavec,  ');
DataModule2.sklad_Query.SQL.Add ('sklad.garb, options.valuta, sklad.pricez*options.valuta as prisegrn, sklad.pricez*sklad.kursp as przak   FROM sklad, options where sklad.description like ''%'+edit1.text+'%''');
DataModule2.sklad_Query.open;
  end;

end;

end.

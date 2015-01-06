unit rzakaz;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  Tzakaz = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button5: TButton;
    DBGrid1: TDBGrid;
    oprihodovat: TButton;
    Button2: TButton;
    Button6: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure oprihodovatClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  zakaz: Tzakaz;

implementation

{$R *.dfm}

uses Unit2, dzakaztov, rezakaz, prtovskl;

procedure Tzakaz.Button1Click(Sender: TObject);
begin
DataModule2.zakaz_Query.SQL.Clear;
DataModule2.zakaz_Query.SQL.Add ('SELECT zakaz.id, zakaz.nomer, zakaz.datez, zakaz.pricez, zakaz.koll, zakaz.fio, zakaz.description, zakaz.prodavec, zakaz.garb, options.valuta, zakaz.pricez*options.valuta as prisegrn  FROM zakaz, options where zakaz.poluch =:poluch ');
DataModule2.zakaz_Query.ParamByName('poluch').Value:='���';
DataModule2.zakaz_Query.open;
DataModule2.sum_Query.SQL.Clear;
DataModule2.sum_Query.SQL.Add ('SELECT zakaz.pricez, zakaz.koll, options.valuta, SUM( zakaz.koll * zakaz.pricez * options.valuta ) AS sumzakaz, SUM(zakaz.pricez * zakaz.koll ) AS sumus  FROM zakaz, options WHERE zakaz.poluch=:poluch ');
DataModule2.sum_Query.ParamByName('poluch').Value:='���';
DataModule2.sum_Query.Open;
label5.Caption:=DataModule2.sum_Query.Fields[3].AsString;
label7.Caption:=DataModule2.sum_Query.Fields[4].AsString;
DataModule2.options_Query.SQL.Clear;
DataModule2.options_Query.SQL.Add ('SELECT valuta  FROM options ');
DataModule2.options_Query.open;
label2.Caption:=DataModule2.options_Query.Fields[0].AsString;
end;

procedure Tzakaz.Button2Click(Sender: TObject);
begin
if (not Assigned(redzakaz)) then redzakaz:=Tredzakaz.Create(Self);
redzakaz.id.text:=DBGrid1.Fields[0].AsString;
DataModule2.retovp_Query1.SQL.Clear;
DataModule2.retovp_Query1.SQL.Add ('SELECT *  FROM zakaz where id=:in4');
DataModule2.retovp_Query1.ParamByName('in4').AsString:=DBGrid1.Fields[0].AsString;
DataModule2.retovp_Query1.open;
redzakaz.nomer.Text:=DataModule2.retovp_Query1.Fields[2].AsString;
DataModule2.del_tov_Query.SQL.Clear;
DataModule2.del_tov_Query.SQL.Add ('select id,fio FROM clients where fio=:in3');
DataModule2.del_tov_Query.ParamByName('in3').AsString:=DBGrid1.Fields[8].AsString;
DataModule2.del_tov_Query.Open;
redzakaz.DBLookupComboBox3.KeyValue:= DataModule2.del_tov_Query.Fields[0].AsString;

redzakaz.garb.Text:=DataModule2.retovp_Query1.Fields[5].AsString;
redzakaz.description.Text:=DataModule2.retovp_Query1.Fields[3].AsString;
redzakaz.pricez.Text:=DataModule2.retovp_Query1.Fields[4].AsString;
redzakaz.koll.Text:=DataModule2.retovp_Query1.Fields[8].AsString;
redzakaz.datez.DateTime:=DataModule2.retovp_Query1.Fields[1].AsDateTime;
redzakaz.ComboBox1.Text:=DataModule2.retovp_Query1.Fields[6].AsString;
DataModule2.clients_Query.Refresh;
redzakaz.showmodal;
end;

procedure Tzakaz.Button5Click(Sender: TObject);
begin
if (not Assigned(dzakaz)) then dzakaz:=Tdzakaz.Create(Self) ;
DataModule2.clients_Query.Refresh;
dzakaz.show;
end;

procedure Tzakaz.Button6Click(Sender: TObject);
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


procedure Tzakaz.FormActivate(Sender: TObject);
begin
DataModule2.zakaz_Query.SQL.Clear;
DataModule2.zakaz_Query.SQL.Add ('SELECT zakaz.id, zakaz.nomer, zakaz.datez, zakaz.pricez, zakaz.koll, zakaz.fio, zakaz.description, zakaz.prodavec, zakaz.garb, options.valuta, zakaz.pricez*options.valuta as prisegrn  FROM zakaz, options where zakaz.poluch =:poluch ');
DataModule2.zakaz_Query.ParamByName('poluch').Value:='���';
DataModule2.zakaz_Query.open;
DataModule2.sum_Query.SQL.Clear;
DataModule2.sum_Query.SQL.Add ('SELECT zakaz.pricez, zakaz.koll, options.valuta, SUM( zakaz.koll * zakaz.pricez * options.valuta ) AS sumzakaz, SUM(zakaz.pricez * zakaz.koll ) AS sumus  FROM zakaz, options WHERE zakaz.poluch=:poluch ');
DataModule2.sum_Query.ParamByName('poluch').Value:='���';
DataModule2.sum_Query.Open;
label5.Caption:=DataModule2.sum_Query.Fields[3].AsString;
label7.Caption:=DataModule2.sum_Query.Fields[4].AsString;
DataModule2.options_Query.SQL.Clear;
DataModule2.options_Query.SQL.Add ('SELECT valuta  FROM options ');
DataModule2.options_Query.open;
label2.Caption:=DataModule2.options_Query.Fields[0].AsString;
end;





procedure Tzakaz.FormCreate(Sender: TObject);
begin
DataModule2.zakaz_Query.SQL.Clear;
DataModule2.zakaz_Query.SQL.Add ('SELECT zakaz.id, zakaz.nomer, zakaz.datez, zakaz.pricez, zakaz.koll, zakaz.fio, zakaz.description, zakaz.prodavec, zakaz.garb, options.valuta, zakaz.pricez*options.valuta as prisegrn  FROM zakaz, options where zakaz.poluch =:poluch ');
DataModule2.zakaz_Query.ParamByName('poluch').Value:='���';
DataModule2.zakaz_Query.open;
DataModule2.sum_Query.SQL.Clear;
DataModule2.sum_Query.SQL.Add ('SELECT zakaz.pricez, zakaz.koll, options.valuta, SUM( zakaz.koll * zakaz.pricez * options.valuta ) AS sumzakaz, SUM(zakaz.pricez * zakaz.koll ) AS sumus  FROM zakaz, options WHERE zakaz.poluch=:poluch ');
DataModule2.sum_Query.ParamByName('poluch').Value:='���';
DataModule2.sum_Query.Open;
label5.Caption:=DataModule2.sum_Query.Fields[3].AsString;
label7.Caption:=DataModule2.sum_Query.Fields[4].AsString;
DataModule2.options_Query.SQL.Clear;
DataModule2.options_Query.SQL.Add ('SELECT valuta  FROM options ');
DataModule2.options_Query.open;
label2.Caption:=DataModule2.options_Query.Fields[0].AsString;

end;

procedure Tzakaz.oprihodovatClick(Sender: TObject);
begin
if (not Assigned(opskladf)) then opskladf:=Topskladf.Create(Self);
opskladf.id.text:=DBGrid1.Fields[0].AsString;
DataModule2.retovp_Query1.SQL.Clear;
DataModule2.retovp_Query1.SQL.Add ('SELECT *  FROM zakaz where id=:in4');
DataModule2.retovp_Query1.ParamByName('in4').AsString:=DBGrid1.Fields[0].AsString;
DataModule2.retovp_Query1.open;
opskladf.nomer.Text:=DataModule2.retovp_Query1.Fields[2].AsString;
DataModule2.del_tov_Query.SQL.Clear;
DataModule2.del_tov_Query.SQL.Add ('select id,fio FROM clients where fio=:in3');
DataModule2.del_tov_Query.ParamByName('in3').AsString:=DataModule2.retovp_Query1.Fields[7].AsString;
DataModule2.del_tov_Query.Open;
opskladf.DBLookupComboBox1.KeyValue:= DataModule2.del_tov_Query.Fields[0].AsString;

opskladf.garb.Text:=DataModule2.retovp_Query1.Fields[5].AsString;
opskladf.description.Text:=DataModule2.retovp_Query1.Fields[3].AsString;
opskladf.pricez.Text:=DataModule2.retovp_Query1.Fields[4].AsString;
opskladf.koll.Text:=DataModule2.retovp_Query1.Fields[8].AsString;
opskladf.datez.DateTime:=DataModule2.retovp_Query1.Fields[1].AsDateTime;
opskladf.prodavec.Text:=DataModule2.retovp_Query1.Fields[6].AsString;
opskladf.snomer.Text:=DataModule2.retovp_Query1.Fields[9].AsString;
DataModule2.clients_Query.Refresh;
DataModule2.post_Query.Active:=true;
opskladf.showmodal;
end;


end.

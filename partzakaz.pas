unit partzakaz;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls;

type
  Tzakazpart = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button3: TButton;
    Button2: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  zakazpart: Tzakazpart;

implementation

{$R *.dfm}

uses data8_1, partndzakaz, partnrezakaz, otgruzdil;

procedure Tzakazpart.Button1Click(Sender: TObject);
begin
Data8.ins_Query.SQL.Clear;
Data8.ins_Query.SQL.Add ('INSERT INTO zakaz(datez,nomer,description,pricez,garb,fio,prodavec,koll,poluch)');
Data8.ins_Query.SQL.Add ('SELECT datez,nomer,description,pricez,garb,fio,prodavec,koll,poluch FROM pzakaz WHERE id=:id');
Data8.ins_Query.ParamByName('id').Value:=DBGrid1.Fields[0].AsString;
Data8.ins_Query.ExecSQL;
Data8.sel_Query.SQL.Clear;
Data8.sel_Query.SQL.Add ('Update pzakaz SET status =:status WHERE id=:id ');
Data8.sel_Query.ParamByName('status').AsString:='����������';
Data8.sel_Query.ParamByName('id').AsString:=DBGrid1.Fields[0].AsString;
Data8.sel_Query.ExecSQL;
Data8.zakaz_Query.Refresh;
end;

procedure Tzakazpart.Button2Click(Sender: TObject);
begin
Data8.ins_Query.SQL.Clear;
Data8.ins_Query.SQL.Add ('INSERT INTO zakaz(datez,nomer,description,pricez,garb,fio,prodavec,koll,poluch) ');
Data8.ins_Query.SQL.Add ('SELECT datez,nomer,description,pricez,garb,fio,prodavec,koll,poluch FROM pzakaz WHERE poluch=:poluch');
Data8.ins_Query.ParamByName('poluch').Value:='���';
Data8.ins_Query.ExecSQL;
Data8.sel_Query.SQL.Clear;
Data8.sel_Query.SQL.Add ('Update pzakaz SET status =:status WHERE poluch=:poluch ');
Data8.sel_Query.ParamByName('status').AsString:='����������';
Data8.sel_Query.ParamByName('poluch').Value:='���';
Data8.sel_Query.ExecSQL;
Data8.zakaz_Query.Refresh;
end;

procedure Tzakazpart.Button3Click(Sender: TObject);
begin
if (not Assigned(partdzakaz)) then partdzakaz:=Tpartdzakaz.Create(Self) ;
Data8.clients_Query.active:=true;
partdzakaz.show;
end;

procedure Tzakazpart.Button4Click(Sender: TObject);
var
  buttonSelected : Integer;
begin
  // ����������� ������� � ��������������
  buttonSelected := MessageDlg('�� ������������� ������ ������� ����� �� ������?',mtWarning, mbOKCancel, 0);
     // ����� ���� ��������� ������
  if buttonSelected = mrOK     then
  begin
Data8.del_Query.SQL.Clear;
Data8.del_Query.SQL.Add ('DELETE FROM pzakaz where id=:in3');
Data8.del_Query.ParamByName('in3').AsString:=DBGrid1.Fields[0].AsString;
Data8.del_Query.ExecSQL;
Data8.zakaz_Query.Refresh;
  end;
if buttonSelected = mrCancel then
begin
 Data8.zakaz_Query.Refresh;
  end;
    end;

procedure Tzakazpart.Button5Click(Sender: TObject);
begin
if (not Assigned(partnredzakaz)) then partnredzakaz:=Tpartnredzakaz.Create(Self);
partnredzakaz.id.text:=DBGrid1.Fields[0].AsString;
Data8.sel_Query.SQL.Clear;
Data8.sel_Query.SQL.Add ('SELECT *  FROM pzakaz where id=:in4');
Data8.sel_Query.ParamByName('in4').AsString:=DBGrid1.Fields[0].AsString;
Data8.sel_Query.open;
partnredzakaz.nomer.Text:=Data8.sel_Query.Fields[2].AsString;
Data8.sel2_Query.SQL.Clear;
Data8.sel2_Query.SQL.Add ('select id,fio FROM clients where fio=:in3');
Data8.sel2_Query.ParamByName('in3').AsString:=DBGrid1.Fields[8].AsString;
Data8.sel2_Query.Open;
partnredzakaz.DBLookupComboBox3.KeyValue:= Data8.sel2_Query.Fields[0].AsString;

partnredzakaz.garb.Text:=Data8.sel_Query.Fields[5].AsString;
partnredzakaz.description.Text:=Data8.sel_Query.Fields[3].AsString;
partnredzakaz.pricez.Text:=Data8.sel_Query.Fields[4].AsString;
partnredzakaz.koll.Text:=Data8.sel_Query.Fields[8].AsString;
partnredzakaz.datez.Date:=Data8.sel_Query.Fields[1].AsDateTime;
partnredzakaz.ComboBox1.Text:=Data8.sel_Query.Fields[6].AsString;
Data8.clients_Query.Refresh;
partnredzakaz.showmodal;
end;

procedure Tzakazpart.Button6Click(Sender: TObject);
begin
if (not Assigned(dilotgruz)) then dilotgruz:=Tdilotgruz.Create(Self);
dilotgruz.id.text:=DBGrid1.Fields[0].AsString;
Data8.sel_Query.SQL.Clear;
Data8.sel_Query.SQL.Add ('SELECT *  FROM pzakaz where id=:in4');
Data8.sel_Query.ParamByName('in4').AsString:=DBGrid1.Fields[0].AsString;
Data8.sel_Query.open;
dilotgruz.nomer.Text:=Data8.sel_Query.Fields[2].AsString;
Data8.sel2_Query.SQL.Clear;
Data8.sel2_Query.SQL.Add ('select id,fio FROM clients where fio=:in3');
Data8.sel2_Query.ParamByName('in3').AsString:=DBGrid1.Fields[8].AsString;
Data8.sel2_Query.Open;
dilotgruz.DBLookupComboBox1.KeyValue:= Data8.sel2_Query.Fields[0].AsString;

dilotgruz.garb.Text:=Data8.sel_Query.Fields[5].AsString;
dilotgruz.description.Text:=Data8.sel_Query.Fields[3].AsString;
dilotgruz.pricez.Text:=Data8.sel_Query.Fields[4].AsString;
dilotgruz.koll.Text:=Data8.sel_Query.Fields[8].AsString;
dilotgruz.datez.DateTime:=Data8.sel_Query.Fields[1].AsDateTime;
dilotgruz.prodavec.Text:=Data8.sel_Query.Fields[6].AsString;
dilotgruz.memo1.Text:=Data8.sel_Query.Fields[13].AsString;
dilotgruz.snomer.Text:=Data8.sel_Query.Fields[9].AsString;
Data8.clients_Query.Refresh;
Data8.shet_Query.Active:=true;
dilotgruz.showmodal;
end;

procedure Tzakazpart.Button7Click(Sender: TObject);
begin
Data8.sel_Query.SQL.Clear;
Data8.sel_Query.SQL.Add ('Update pzakaz SET status =:status WHERE id=:id ');
Data8.sel_Query.ParamByName('status').AsString:='��������� ����������';
Data8.sel_Query.ParamByName('id').AsString:=DBGrid1.Fields[0].AsString;;
Data8.sel_Query.ExecSQL;
Data8.zakaz_Query.Refresh;
end;

procedure Tzakazpart.Button8Click(Sender: TObject);
begin
Data8.zakaz_Query.SQL.Clear;
Data8.zakaz_Query.SQL.Add ('SELECT pzakaz.id, pzakaz.nomer,pzakaz.status,pzakaz.coments, pzakaz.datez, pzakaz.pricez, pzakaz.koll, pzakaz.fio, pzakaz.description, pzakaz.prodavec,');
Data8.zakaz_Query.SQL.Add (' pzakaz.garb, options.valuta, pzakaz.pricez*options.valuta as prisegrn  FROM pzakaz, options where pzakaz.poluch =:poluch');
Data8.zakaz_Query.ParamByName('poluch').Value:='���';
Data8.zakaz_Query.open;
Data8.sum_Query.SQL.Clear;
Data8.sum_Query.SQL.Add ('SELECT pzakaz.pricez, pzakaz.koll, options.valuta, SUM( pzakaz.koll * pzakaz.pricez * options.valuta ) AS sumzakaz, ');
Data8.sum_Query.SQL.Add ('SUM(pzakaz.pricez * pzakaz.koll ) AS sumus  FROM pzakaz, options WHERE pzakaz.poluch=:poluch ');
Data8.sum_Query.ParamByName('poluch').Value:='���';
Data8.sum_Query.Open;
label5.Caption:=Data8.sum_Query.Fields[3].AsString;
label7.Caption:=Data8.sum_Query.Fields[4].AsString;
Data8.options_Query.SQL.Clear;
Data8.options_Query.SQL.Add ('SELECT valuta  FROM options ');
Data8.options_Query.open;
label2.Caption:=Data8.options_Query.Fields[0].AsString;
Data8.clients_Query.active:=true;
end;

procedure Tzakazpart.FormActivate(Sender: TObject);
begin
Data8.zakaz_Query.SQL.Clear;
Data8.zakaz_Query.SQL.Add ('SELECT pzakaz.id, pzakaz.nomer,pzakaz.status,pzakaz.coments, pzakaz.datez, pzakaz.pricez, pzakaz.koll, pzakaz.fio, pzakaz.description, pzakaz.prodavec,');
Data8.zakaz_Query.SQL.Add (' pzakaz.garb, options.valuta, pzakaz.pricez*options.valuta as prisegrn  FROM pzakaz, options where pzakaz.poluch =:poluch');
Data8.zakaz_Query.ParamByName('poluch').Value:='���';
Data8.zakaz_Query.open;
Data8.sum_Query.SQL.Clear;
Data8.sum_Query.SQL.Add ('SELECT pzakaz.pricez, pzakaz.koll, options.valuta, SUM( pzakaz.koll * pzakaz.pricez * options.valuta ) AS sumzakaz, ');
Data8.sum_Query.SQL.Add ('SUM(pzakaz.pricez * pzakaz.koll ) AS sumus  FROM pzakaz, options WHERE pzakaz.poluch=:poluch ');
Data8.sum_Query.ParamByName('poluch').Value:='���';
Data8.sum_Query.Open;
label5.Caption:=Data8.sum_Query.Fields[3].AsString;
label7.Caption:=Data8.sum_Query.Fields[4].AsString;
Data8.options_Query.SQL.Clear;
Data8.options_Query.SQL.Add ('SELECT valuta  FROM options ');
Data8.options_Query.open;
label2.Caption:=Data8.options_Query.Fields[0].AsString;
Data8.clients_Query.active:=true;
end;

procedure Tzakazpart.FormCreate(Sender: TObject);
begin
Data8.zakaz_Query.SQL.Clear;
Data8.zakaz_Query.SQL.Add ('SELECT pzakaz.id, pzakaz.nomer,pzakaz.status,pzakaz.coments, pzakaz.datez, pzakaz.pricez, pzakaz.koll, pzakaz.fio, pzakaz.description, pzakaz.prodavec,');
Data8.zakaz_Query.SQL.Add (' pzakaz.garb, options.valuta, pzakaz.pricez*options.valuta as prisegrn  FROM pzakaz, options where pzakaz.poluch =:poluch');
Data8.zakaz_Query.ParamByName('poluch').Value:='���';
Data8.zakaz_Query.open;
Data8.sum_Query.SQL.Clear;
Data8.sum_Query.SQL.Add ('SELECT pzakaz.pricez, pzakaz.koll, options.valuta, SUM( pzakaz.koll * pzakaz.pricez * options.valuta ) AS sumzakaz, ');
Data8.sum_Query.SQL.Add ('SUM(pzakaz.pricez * pzakaz.koll ) AS sumus  FROM pzakaz, options WHERE pzakaz.poluch=:poluch ');
Data8.sum_Query.ParamByName('poluch').Value:='���';
Data8.sum_Query.Open;
label5.Caption:=Data8.sum_Query.Fields[3].AsString;
label7.Caption:=Data8.sum_Query.Fields[4].AsString;
Data8.options_Query.SQL.Clear;
Data8.options_Query.SQL.Add ('SELECT valuta  FROM options ');
Data8.options_Query.open;
label2.Caption:=Data8.options_Query.Fields[0].AsString;
Data8.clients_Query.active:=true;
end;

end.

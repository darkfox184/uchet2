unit addnakls;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  Taddnakl = class(TForm)
    panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  addnakl: Taddnakl;

implementation

{$R *.dfm}

uses Unit2, adnakl1, rednakl;

procedure Taddnakl.Button1Click(Sender: TObject);
begin
if (not Assigned(nakladd)) then nakladd:=Tnakladd.Create(Self);
nakladd.show;
end;

procedure Taddnakl.Button2Click(Sender: TObject);
begin

DataModule2.del_tov_Query.SQL.Clear;
DataModule2.del_tov_Query.SQL.Add ('select * FROM postavschiki where name=:in3');
DataModule2.del_tov_Query.ParamByName('in3').AsString:=DBGrid1.Fields[2].AsString;
DataModule2.del_tov_Query.Open;
if (not Assigned(rednakls)) then rednakls:=Trednakls.Create(Self);
DataModule2.post_Query1.Active:=true;
rednakls.DBLookupComboBox3.KeyValue:=DataModule2.del_tov_Query.Fields[0].AsString;
rednakls.edit1.text:=DBGrid1.Fields[1].AsString;
rednakls.Label4.Caption:=DBGrid1.Fields[0].AsString;

rednakls.showmodal;
end;

procedure Taddnakl.Button3Click(Sender: TObject);
var
  buttonSelected : Integer;
begin
  // ����������� ������� � ��������������
  buttonSelected := MessageDlg('�� ������������� ������ ������� ���������?',mtWarning, mbOKCancel, 0);
     // ����� ���� ��������� ������
  if buttonSelected = mrOK     then
  begin
  DataModule2.del_tov_Query.SQL.Clear;
DataModule2.del_tov_Query.SQL.Add ('DELETE FROM nakladnaya where id=:in3');
DataModule2.del_tov_Query.ParamByName('in3').AsString:=DBGrid1.Fields[0].AsString;
DataModule2.del_tov_Query.ExecSQL;
DataModule2.post_Query.Refresh;
  end;
if buttonSelected = mrCancel then
begin
DataModule2.post_Query.Refresh;
  end;
 end;

procedure Taddnakl.FormCreate(Sender: TObject);
begin
DataModule2.post_Query.Active:=true;

end;

end.

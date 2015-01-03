unit addclient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Taddclients = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  addclients: Taddclients;

implementation

{$R *.dfm}

uses Unit2;

procedure Taddclients.Button1Click(Sender: TObject);
begin
DataModule2.clients_Query2.SQL.Clear;
DataModule2.clients_Query2.SQL.Add ('INSERT INTO clients (fio, org, tel)VALUES(:fio,:org,:tel) ');
DataModule2.clients_Query2.ParamByName('fio').Value:=edit1.text;
DataModule2.clients_Query2.ParamByName('org').Value:=edit2.text;
DataModule2.clients_Query2.ParamByName('tel').Value:=edit3.text;
DataModule2.clients_Query2.ExecSQL;
DataModule2.clients_Query1.Refresh;
DataModule2.clients_Query.Refresh;
end;

end.

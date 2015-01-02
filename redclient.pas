unit redclient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tredclients = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  redclients: Tredclients;

implementation

{$R *.dfm}

uses Unit2;

procedure Tredclients.Button1Click(Sender: TObject);
begin
DataModule2.clients_Query2.SQL.Clear;
DataModule2.clients_Query2.SQL.Add ('UPDATE clients SET fio=:fio, org=:org, tel=:tel WHERE id=:id ');
DataModule2.clients_Query2.ParamByName('fio').Value:=edit1.text;
DataModule2.clients_Query2.ParamByName('org').Value:=edit2.text;
DataModule2.clients_Query2.ParamByName('tel').Value:=edit3.text;
DataModule2.clients_Query2.ParamByName('id').Value:=label5.Caption;
DataModule2.clients_Query2.ExecSQL;
DataModule2.clients_Query1.Refresh;
close;
end;

end.

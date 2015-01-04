unit reduslg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Treduslgf = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  reduslgf: Treduslgf;

implementation

{$R *.dfm}

uses Unit2;

procedure Treduslgf.Button1Click(Sender: TObject);
begin
DataModule2.clients_Query2.SQL.Clear;
DataModule2.clients_Query2.SQL.Add ('UPDATE uslugi SET name=:name  WHERE id=:id ');
DataModule2.clients_Query2.ParamByName('name').Value:=edit1.text;
DataModule2.clients_Query2.ParamByName('id').Value:=label4.Caption;
DataModule2.clients_Query2.ExecSQL;
DataModule2.ucluga_Query.Refresh;
end;

end.

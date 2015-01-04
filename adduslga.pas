unit adduslga;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tadduslgaf = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  adduslgaf: Tadduslgaf;

implementation

{$R *.dfm}

uses Unit2;

procedure Tadduslgaf.Button1Click(Sender: TObject);
begin
DataModule2.post_Query2.SQL.Clear;
DataModule2.post_Query2.SQL.Add ('INSERT INTO uslugi (name)VALUES(:name) ');
DataModule2.post_Query2.ParamByName('name').Value:=edit1.text;


DataModule2.post_Query2.ExecSQL;
DataModule2.ucluga_Query.Refresh;
end;


end.

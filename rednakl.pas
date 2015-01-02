unit rednakl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls;

type
  Trednakls = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBLookupComboBox3: TDBLookupComboBox;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rednakls: Trednakls;

implementation

{$R *.dfm}

uses Unit2;

procedure Trednakls.Button1Click(Sender: TObject);
begin
DataModule2.clients_Query2.SQL.Clear;
DataModule2.clients_Query2.SQL.Add ('UPDATE nakladnaya SET name=:name, post=:post WHERE id=:id ');
DataModule2.clients_Query2.ParamByName('name').Value:=edit1.text;
DataModule2.clients_Query2.ParamByName('post').Value:=DBLookupComboBox3.text;
DataModule2.clients_Query2.ParamByName('id').Value:=label4.Caption;
DataModule2.clients_Query2.ExecSQL;
DataModule2.post_Query.Refresh;
close;
end;

end.

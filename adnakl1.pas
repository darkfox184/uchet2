unit adnakl1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls;

type
  Tnakladd = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBLookupComboBox3: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  nakladd: Tnakladd;

implementation

{$R *.dfm}

uses Unit2;

procedure Tnakladd.Button1Click(Sender: TObject);
begin
DataModule2.post_Query2.SQL.Clear;
DataModule2.post_Query2.SQL.Add ('INSERT INTO nakladnaya (name, post)VALUES(:name,:post) ');
DataModule2.post_Query2.ParamByName('name').Value:=edit1.text;
DataModule2.post_Query2.ParamByName('post').Value:=DBLookupComboBox3.text;

DataModule2.post_Query2.ExecSQL;
DataModule2.post_Query.Refresh;
end;

procedure Tnakladd.FormCreate(Sender: TObject);
begin
DataModule2.post_Query1.Active:=true;
end;

end.

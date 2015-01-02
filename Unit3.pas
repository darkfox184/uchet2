unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Menus;

type
  Tmain = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    Af1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N10: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N20: TMenuItem;
    procedure N6Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  main: Tmain;

implementation

{$R *.dfm}

uses Unit4, Unit8, Unit9, Unit13, Unit2, Unit17, client, addnakls;

procedure Tmain.N12Click(Sender: TObject);
begin
prtovar.show;
end;

procedure Tmain.N13Click(Sender: TObject);
begin
clients.show;
end;

procedure Tmain.N15Click(Sender: TObject);
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


procedure Tmain.N16Click(Sender: TObject);
begin
dusluga.show;
end;

procedure Tmain.N19Click(Sender: TObject);
begin
options.show;
end;

procedure Tmain.N6Click(Sender: TObject);
begin
main.Close;
end;

procedure Tmain.N7Click(Sender: TObject);
begin
zakaz.show;
end;

procedure Tmain.N8Click(Sender: TObject);
begin
addnakl.show;
end;

procedure Tmain.N9Click(Sender: TObject);
begin
sklad.show;
end;

end.

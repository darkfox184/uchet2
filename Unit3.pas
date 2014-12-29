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
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N14: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    procedure N6Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  main: Tmain;

implementation

{$R *.dfm}

uses Unit4, Unit8, Unit9;

procedure Tmain.N12Click(Sender: TObject);
begin
prtovar.show;
end;

procedure Tmain.N19Click(Sender: TObject);
begin
options.show;
end;

procedure Tmain.N6Click(Sender: TObject);
begin
main.Close;
end;

procedure Tmain.N9Click(Sender: TObject);
begin
sklad.show;
end;

end.

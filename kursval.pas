unit kursval;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Toptions = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    edit1: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  options: Toptions;

implementation

{$R *.dfm}

uses Unit2, Unit7;

procedure Toptions.Button1Click(Sender: TObject);
begin
DataModule2.options_save_Query.SQL.Clear;
DataModule2.options_save_Query.SQL.Add ('update options SET valuta = :valuta  WHERE id =1');
DataModule2.options_save_Query.ParamByName('valuta').Value:=StringReplace(edit1.Text, ',', '.', [rfReplaceAll]);
DataModule2.options_save_Query.ExecSQL;
end;

procedure Toptions.FormCreate(Sender: TObject);
begin
DataModule2.options_Query.SQL.Clear;
DataModule2.options_Query.SQL.Add ('SELECT valuta  FROM options ');
DataModule2.options_Query.open;
edit1.Text:=DataModule2.options_Query.Fields[0].AsString;
end;

end.

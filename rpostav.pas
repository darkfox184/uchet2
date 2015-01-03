unit rpostav;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IPPeerClient, Data.Cloud.CloudAPI,
  Data.Cloud.AmazonAPI, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tpostav = class(TForm)
    panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  postav: Tpostav;

implementation

{$R *.dfm}

uses Unit2, rpostadd, rredpost;

procedure Tpostav.Button1Click(Sender: TObject);
begin
if (not Assigned(postadd)) then postadd:=Tpostadd.Create(Self);
postadd.show;
end;

procedure Tpostav.Button2Click(Sender: TObject);
begin
 if (not Assigned(redpost)) then redpost:=Tredpost.Create(Self);
redpost.edit1.text:=DBGrid1.Fields[1].AsString;
redpost.Label4.Caption:=DBGrid1.Fields[0].AsString;

redpost.show;
end;

procedure Tpostav.Button3Click(Sender: TObject);
var
  buttonSelected : Integer;
begin
  // Отображение диалога с подтверждением
  buttonSelected := MessageDlg('Вы действительно хотите удалить поставщика?',mtWarning, mbOKCancel, 0);
     // Показ типа выбранной кнопки
  if buttonSelected = mrOK     then
  begin
  DataModule2.del_tov_Query.SQL.Clear;
DataModule2.del_tov_Query.SQL.Add ('DELETE FROM postavschiki where id=:in3');
DataModule2.del_tov_Query.ParamByName('in3').AsString:=DBGrid1.Fields[0].AsString;
DataModule2.del_tov_Query.ExecSQL;
DataModule2.post_Query1.Refresh;
  end;
if buttonSelected = mrCancel then
begin
DataModule2.post_Query1.Refresh;
  end;
 end;

procedure Tpostav.FormCreate(Sender: TObject);
begin
DataModule2.post_Query1.Active:=true;
end;

end.

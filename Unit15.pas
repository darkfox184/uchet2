unit Unit15;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls;

type
  Tredzakaz = class(TForm)
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    description: TEdit;
    pricez: TEdit;
    koll: TEdit;
    fio: TEdit;
    nomer: TEdit;
    garb: TEdit;
    dskbtn: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    datez: TDateTimePicker;
    id: TEdit;
    Label1: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure dskbtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  redzakaz: Tredzakaz;

implementation

{$R *.dfm}

uses Unit2;

procedure Tredzakaz.Button2Click(Sender: TObject);
begin
close;
end;

procedure Tredzakaz.dskbtnClick(Sender: TObject);
begin
DataModule2.redtovp_save_Query1.SQL.Clear;
DataModule2.redtovp_save_Query1.SQL.Add ('Update zakaz SET datez=:datez, nomer=:nomer, description=:description, pricez=:pricez, garb =:garb, fio=:fio,prodavec=:prodavec, koll=:koll WHERE id=:id ');
DataModule2.redtovp_save_Query1.ParamByName('datez').AsDate:=datez.DateTime;
DataModule2.redtovp_save_Query1.ParamByName('nomer').AsString:=nomer.Text;
DataModule2.redtovp_save_Query1.ParamByName('description').AsString:=description.Text;
DataModule2.redtovp_save_Query1.ParamByName('pricez').Value:=StringReplace(pricez.Text, ',', '.', [rfReplaceAll]);
DataModule2.redtovp_save_Query1.ParamByName('garb').Value:=garb.Text;
DataModule2.redtovp_save_Query1.ParamByName('fio').AsString:=fio.Text;
DataModule2.redtovp_save_Query1.ParamByName('koll').Value:=koll.Text;
DataModule2.redtovp_save_Query1.ParamByName('prodavec').AsString:=combobox1.Text;
DataModule2.redtovp_save_Query1.ParamByName('id').AsString:=id.text;
DataModule2.redtovp_save_Query1.ExecSQL;
DataModule2.zakaz_Query.Refresh;
close;
end;

end.

unit otgruzdil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.StdCtrls;

type
  Tdilotgruz = class(TForm)
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    description: TEdit;
    pricez: TEdit;
    koll: TEdit;
    nomer: TEdit;
    garb: TEdit;
    dskbtn: TButton;
    prodavec: TComboBox;
    datez: TDateTimePicker;
    id: TEdit;
    snomer: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Memo1: TMemo;
    procedure dskbtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dilotgruz: Tdilotgruz;

implementation

{$R *.dfm}

uses data8_1;

procedure Tdilotgruz.dskbtnClick(Sender: TObject);
begin
Data8.sel_Query.SQL.Clear;
Data8.sel_Query.SQL.Add ('Update pzakaz SET poluch=:poluch,coments=:coments, status=:status, nakladnaya=:nakladnaya, snomer=:snomer, datez=:datez, nomer=:nomer, description=:description, pricez=:pricez, garb =:garb, fio=:fio,prodavec=:prodavec, koll=:koll WHERE id=:id ');
Data8.sel_Query.ParamByName('datez').AsDate:=datez.DateTime;
Data8.sel_Query.ParamByName('nomer').AsString:=nomer.Text;
Data8.sel_Query.ParamByName('description').AsString:=description.Text;
Data8.sel_Query.ParamByName('pricez').Value:=StringReplace(pricez.Text, ',', '.', [rfReplaceAll]);
Data8.sel_Query.ParamByName('garb').Value:=garb.Text;
Data8.sel_Query.ParamByName('fio').AsString:=DBLookupComboBox1.Text;
Data8.sel_Query.ParamByName('koll').Value:=koll.Text;
Data8.sel_Query.ParamByName('prodavec').AsString:=prodavec.Text;
Data8.sel_Query.ParamByName('id').AsString:=id.text;
Data8.sel_Query.ParamByName('snomer').AsString:=snomer.text;
Data8.sel_Query.ParamByName('nakladnaya').AsString:=DBLookupComboBox2.text;
Data8.sel_Query.ParamByName('poluch').AsString:='��';
Data8.sel_Query.ParamByName('status').AsString:='��������';
Data8.sel_Query.ParamByName('coments').AsString:=memo1.text;
Data8.sel_Query.ExecSQL;
Data8.zakaz_Query.Refresh;

end;

end.

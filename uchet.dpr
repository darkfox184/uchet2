program uchet;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {DataModule2: TDataModule},
  Unit3 in 'Unit3.pas' {main},
  Unit4 in 'Unit4.pas' {prtovar},
  Unit5 in 'Unit5.pas' {pgar},
  Unit6 in 'Unit6.pas' {pshet},
  Unit7 in 'Unit7.pas' {redtovpr},
  Unit8 in 'Unit8.pas' {sklad},
  Unit9 in 'Unit9.pas' {options},
  Unit10 in 'Unit10.pas' {prodaga},
  Unit11 in 'Unit11.pas' {redsklad};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tmain, main);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(Tprtovar, prtovar);
  Application.CreateForm(Tpgar, pgar);
  Application.CreateForm(Tpshet, pshet);
  Application.CreateForm(Tredtovpr, redtovpr);
  Application.CreateForm(Tsklad, sklad);
  Application.CreateForm(Toptions, options);
  Application.CreateForm(Tprodaga, prodaga);
  Application.CreateForm(Tredsklad, redsklad);
  Application.Run;
end.

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
  Unit11 in 'Unit11.pas' {redsklad},
  Unit12 in 'Unit12.pas' {dsklad},
  Unit13 in 'Unit13.pas' {zakaz},
  Unit14 in 'Unit14.pas' {dzakaz},
  Unit15 in 'Unit15.pas' {redzakaz},
  Unit16 in 'Unit16.pas' {opskladf},
  Unit17 in 'Unit17.pas' {dusluga},
  client in 'client.pas' {clients},
  addclient in 'addclient.pas' {addclients},
  redclient in 'redclient.pas' {redclients},
  addnakls in 'addnakls.pas' {addnakl},
  adnakl1 in 'adnakl1.pas' {nakladd},
  rednakl in 'rednakl.pas' {rednakls};

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
  Application.CreateForm(Tdsklad, dsklad);
  Application.CreateForm(Tzakaz, zakaz);
  Application.CreateForm(Tdzakaz, dzakaz);
  Application.CreateForm(Tredzakaz, redzakaz);
  Application.CreateForm(Topskladf, opskladf);
  Application.CreateForm(Tdusluga, dusluga);
  Application.CreateForm(Tclients, clients);
  Application.CreateForm(Taddclients, addclients);
  Application.CreateForm(Tredclients, redclients);
  Application.CreateForm(Taddnakl, addnakl);
  Application.CreateForm(Tnakladd, nakladd);
  Application.CreateForm(Trednakls, rednakls);
  Application.Run;
end.

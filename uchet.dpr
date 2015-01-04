program uchet;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {DataModule2: TDataModule},
  Unit3 in 'Unit3.pas' {main},
  prodagi in 'prodagi.pas' {prtovar},
  Unit5 in 'Unit5.pas' {pgar},
  Unit6 in 'Unit6.pas' {pshet},
  Unit7 in 'Unit7.pas' {redtovpr},
  rsklad in 'rsklad.pas' {sklad},
  kursval in 'kursval.pas' {options},
  rsklprod in 'rsklprod.pas' {prodaga},
  redtovskl in 'redtovskl.pas' {redsklad},
  dobavltov in 'dobavltov.pas' {dsklad},
  poiskzakaza in 'poiskzakaza.pas' {zakazpoisk},
  dzakaztov in 'dzakaztov.pas' {dzakaz},
  rezakaz in 'rezakaz.pas' {redzakaz},
  prtovskl in 'prtovskl.pas' {opskladf},
  Unit17 in 'Unit17.pas' {dusluga},
  client in 'client.pas' {clients},
  addclient in 'addclient.pas' {addclients},
  redclient in 'redclient.pas' {redclients},
  addnakls in 'addnakls.pas' {addnakl},
  adnakl1 in 'adnakl1.pas' {nakladd},
  rednakl in 'rednakl.pas' {rednakls},
  rpostav in 'rpostav.pas' {postav},
  rpostadd in 'rpostadd.pas' {postadd},
  rredpost in 'rredpost.pas' {redpost},
  ABOUT in 'ABOUT.pas' {AboutBox},
  adduslgu in 'adduslgu.pas' {adduslg},
  adduslga in 'adduslga.pas' {adduslgaf},
  reduslg in 'reduslg.pas' {reduslgf};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tmain, main);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(Tadduslg, adduslg);
  Application.CreateForm(Tadduslgaf, adduslgaf);
  Application.CreateForm(Treduslgf, reduslgf);
  Application.Run;
end.

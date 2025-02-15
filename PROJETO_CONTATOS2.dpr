program PROJETO_CONTATOS2;

uses
  Vcl.Forms,
  UNIT1_CONTATOS2 in 'UNIT1_CONTATOS2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.

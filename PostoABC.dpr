program PostoABC;

uses
  Vcl.Forms,
  Principal in 'Projeto\Principal.pas' {FPrincipal},
  Tanque in 'Projeto\Tanque.pas' {FTanque},
  Bomba in 'Projeto\Bomba.pas' {FBomba},
  Abastecimento in 'Projeto\Abastecimento.pas' {FAbastecimento},
  Relatorio in 'Projeto\Relatorio.pas' {FRelatorio};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TFTanque, FTanque);
  Application.CreateForm(TFBomba, FBomba);
  Application.CreateForm(TFAbastecimento, FAbastecimento);
  Application.CreateForm(TFRelatorio, FRelatorio);
  Application.Run;
end.

program ConsumoVeiculo;

uses
  Vcl.Forms,
  ConsumoVeiculo.frm.Principal in 'forms\ConsumoVeiculo.frm.Principal.pas' {frmPrincipal},
  Consumo.Classe in 'Classes\Consumo.Classe.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

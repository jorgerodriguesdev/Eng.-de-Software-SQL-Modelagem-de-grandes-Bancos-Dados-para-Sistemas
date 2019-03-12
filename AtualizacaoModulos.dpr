program AtualizacaoModulos;

uses
  Forms,
  AtualizaModulos in 'AtualizaModulos.pas' {FAtualizaModulos},
  Constantes in '..\MConfiguracoesSistema\Constantes.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFAtualizaModulos, FAtualizaModulos);
  FAtualizaModulos.Alias := ParamStr(1);
  FAtualizaModulos.Show;
  FAtualizaModulos.Refresh;
  application.run;
end.

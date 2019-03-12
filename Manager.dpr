program Manager;

uses
  Forms,
  Dialogs,
  APrincipal in 'APrincipal.pas' {FPrincipal},
  Abertura in '..\MaGerais\Abertura.pas' {FAbertura},
  Constantes in '..\MConfiguracoesSistema\Constantes.pas';


{$R *.RES}
var
  ParametroBase, ParametroNomeSistema : String;

begin
  Application.Initialize;
  ParametroBase := ParamStr(1);

  if ParamCount < 2 then
  begin
    VglParametroOficial := '1';
    if ParamCount < 1 Then
      ParametroBase := 'Sig';
  end;

  Application.Title := 'Gestor';
  Application.CreateForm(TFPrincipal, FPrincipal);
  if VglParametroOficial = '0' Then
    FPrincipal.MostraMenssagemDemostracao;

  ParametroNomeSistema := 'Gestor';
  Fprincipal.VplParametroBaseDados := ParametroBase;
  if not FPrincipal.ProgramaEmExecucao(ParametroNomeSistema + ' - ' + ParametroBase,ParametroNomeSistema) then
  begin
    FPrincipal.Caption := ParametroNomeSistema + ' - ' + ParametroBase;
    FPrincipal.ResetaIni;
    Application.Run
  end
  else
    FPrincipal.close;
end.

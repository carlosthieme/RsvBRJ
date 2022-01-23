program ConfigRvas;

uses
  Forms,
  ConfigMain in 'ConfigMain.pas' {ConfigForm},
  Funcion in 'Funcion.pas' {FuncionForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TConfigForm, ConfigForm);
  Application.CreateForm(TFuncionForm, FuncionForm);
  Application.Run;
end.

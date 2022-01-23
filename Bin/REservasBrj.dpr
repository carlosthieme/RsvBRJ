program REservasBrj;

uses
  Forms,
  MainOp in 'MainOp.pas' {MainForm},
  CajaVenta in 'CajaVenta.pas' {CajaVentaForm},
  Clave in 'Clave.pas' {ClaveForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TCajaVentaForm, CajaVentaForm);
  Application.CreateForm(TClaveForm, ClaveForm);
  Application.Run;
end.

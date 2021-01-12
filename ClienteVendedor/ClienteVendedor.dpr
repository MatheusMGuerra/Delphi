program ClienteVendedor;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FormPrincipal},
  Pessoa in 'Pessoa.pas',
  Cliente in 'Cliente.pas',
  Vendedor in 'Vendedor.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.

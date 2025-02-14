program EasyPedido;

uses
  Vcl.Forms,
  UnitLogin in 'UnitLogin.pas' {frmLogin},
  UnitPrincipal in 'UnitPrincipal.pas' {frmPrincipal},
  Vcl.Loading in 'Utils\Vcl.Loading.pas',
  Vcl.Session in 'Utils\Vcl.Session.pas',
  Vcl.Navigation in 'Utils\Vcl.Navigation.pas',
  UnitPedido in 'UnitPedido.pas' {FrmPedido},
  UnitCliente in 'UnitCliente.pas' {frmCliente},
  UnitClienteCad in 'UnitClienteCad.pas' {frmClienteCad};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.

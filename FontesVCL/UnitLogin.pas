unit UnitLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.Loading, Vcl.Session;

type
  TfrmLogin = class(TForm)
    Image1: TImage;
    pLogin: TPanel;
    lblSenha: TLabel;
    lblInforme: TLabel;
    lblAcessar: TLabel;
    Panel3: TPanel;
    lblEmail: TLabel;
    pnlEmail: TPanel;
    edtEmail: TEdit;
    pnlSenha: TPanel;
    edtSenha: TEdit;
    btnAcessar: TSpeedButton;
    procedure btnAcessarClick(Sender: TObject);
     private
    procedure TerminateLogin(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses UnitPrincipal;

procedure TfrmLogin.TerminateLogin(Sender: TObject);
begin
     TLoading.Hide;

     if Sender is TThread then
        if Assigned(TThread(Sender).FatalException) then
        begin
          showmessage(Exception(TThread(sender).FatalException).Message);
          exit;
        end;  // vai verificar se deu um erro na thread

     //  Dados de acesso...
     TSession.ID_USUARIO := 1;
     TSession.EMAIL := 'contatokaiiquecosta@gmail.com';
     TSession.NOME := 'Kaique Costa Da Silva';

    if NOT Assigned(FrmPrincipal) then
      Application.CreateForm(TfrmPrincipal, frmPrincipal);

   frmPrincipal.Show;
end;

procedure TfrmLogin.btnAcessarClick(Sender: TObject);
begin
  Tloading.Show(Self);

  Tloading.ExecuteThread(procedure
  begin
      // Criar a requisição para o servidor....
      Sleep(1000);
  end,
   TerminateLogin);

end;

end.

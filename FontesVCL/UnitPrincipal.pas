unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons, Vcl.WinXCtrls,
  Vcl.CategoryButtons, Vcl.StdCtrls, Vcl.Session, Vcl.Navigation;

type
  TfrmPrincipal = class(TForm)
    sMenu: TSplitView;
    pLogo: TPanel;
    btnMenu: TSpeedButton;
    Image1: TImage;
    imageList: TImageList;
    CategoryMenuButtons: TCategoryButtons;
    sSubMenu: TSplitView;
    Panel1: TPanel;
    CategorySubMenuButtons: TCategoryButtons;
    Label1: TLabel;
    btnCloseSub: TSpeedButton;
    pnlNavBar: TPanel;
    pnlTela: TPanel;
    pnlUsuario: TPanel;
    lblNome: TLabel;
    lblEmail: TLabel;
    img1: TImage;
    img2: TImage;
    pnlContainer: TPanel;
    procedure btnMenuClick(Sender: TObject);
    procedure btnCloseSubClick(Sender: TObject);
    procedure CategoryMenuButtonsCategories0Items2Click(Sender: TObject);
    procedure CategoryMenuButtonsCategories0Items5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CategoryMenuButtonsCategories0Items1Click(Sender: TObject);
    procedure CategorySubMenuButtonsCategories0Items0Click(Sender: TObject);
  private
    { Private declarations }
    procedure CloseSubMenu(Sender: TObject); // Move this inside the class declaration
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  UnitPedido, UnitCliente;

{$R *.dfm}

procedure TfrmPrincipal.btnCloseSubClick(Sender: TObject);
begin
  CloseSubMenu(Sender); // Pass the Sender parameter
end;

procedure TfrmPrincipal.btnMenuClick(Sender: TObject);
begin
  sMenu.Opened := not sMenu.Opened;
end;

procedure TfrmPrincipal.CloseSubMenu(Sender: TObject);
begin
  if sSubMenu.Opened then
   begin
      sSubMenu.Opened := False;
      CategorySubMenuButtons.SelectedItem := nil;
      sMenu.SetFocus;
   end;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  lblNome.Caption := TSession.NOME;
  lblEmail.Caption := TSession.EMAIL;
end;

procedure TfrmPrincipal.CategoryMenuButtonsCategories0Items1Click(
  Sender: TObject);
begin
  CloseSubMenu(Sender);
  TNavigation.Open(TfrmPedido, FrmPedido, pnlContainer);
end;

procedure TfrmPrincipal.CategorySubMenuButtonsCategories0Items0Click(
  Sender: TObject);
begin
  CloseSubMenu(Sender);
  TNavigation.Open(TfrmCliente, FrmCliente, pnlContainer)
end;

procedure TfrmPrincipal.CategoryMenuButtonsCategories0Items2Click(
  Sender: TObject);
begin
  sSubMenu.Opened := true;
end;

procedure TfrmPrincipal.CategoryMenuButtonsCategories0Items5Click(
  Sender: TObject);
begin
  Application.Terminate;
end;

end.


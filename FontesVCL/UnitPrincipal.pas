unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons, Vcl.WinXCtrls,
  Vcl.CategoryButtons, Vcl.StdCtrls;

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
    procedure btnMenuClick(Sender: TObject);
    procedure btnCloseSubClick(Sender: TObject);
    procedure CategoryMenuButtonsCategories0Items2Click(Sender: TObject);
  private
    { Private declarations }
  procedure CloseSubMenu(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnCloseSubClick(Sender: TObject);
begin
  CloseSubMenu;
end;

procedure TfrmPrincipal.btnMenuClick(Sender: TObject);
begin
  sMenu.Opened := not sMenu.Opened;
end;

procedure CloseSubMenu;
begin
  sSubMenu.Opened := not sSubMenu.Opened
end;

procedure TfrmPrincipal.CategoryMenuButtonsCategories0Items2Click(
  Sender: TObject);
begin
  sSubMenu.Opened := true;
end;

end.

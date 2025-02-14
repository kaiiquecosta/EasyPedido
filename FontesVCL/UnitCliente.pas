unit UnitCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Navigation;

type
  TfrmCliente = class(TForm)
    dbgrd1: TDBGrid;
    pnlHeader: TPanel;
    lbl1: TLabel;
    pnlInserir: TPanel;
    btnNovo: TSpeedButton;
    pnlEditar: TPanel;
    SpeedButton2: TSpeedButton;
    pnlExcluir: TPanel;
    SpeedButton3: TSpeedButton;
    pnlBusca: TPanel;
    Panel3: TPanel;
    btnBusca: TSpeedButton;
    edtBusca: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
  private
    procedure OpenCadCliente(id_cliente: Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCliente: TfrmCliente;

implementation

uses
  UnitClienteCad;

{$R *.dfm}

procedure TfrmCliente.OpenCadCliente(id_cliente: Integer);
begin
  TNavigation.OpenModal(TfrmClienteCad, frmClienteCad)
end;

procedure TfrmCliente.btnNovoClick(Sender: TObject);
begin
  OpenCadCliente(0);
end;

procedure TfrmCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=TCloseAction.caFree;
  frmCliente := nil;
end;

end.

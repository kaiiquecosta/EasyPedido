unit UnitPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFrmPedido = class(TForm)
    pnlHeader: TPanel;
    lbl1: TLabel;
    pnlInserir: TPanel;
    SpeedButton1: TSpeedButton;
    pnlEditar: TPanel;
    SpeedButton2: TSpeedButton;
    pnlExcluir: TPanel;
    SpeedButton3: TSpeedButton;
    dbgrd1: TDBGrid;
    pnlBusca: TPanel;
    Panel3: TPanel;
    btnBusca: TSpeedButton;
    edtBusca: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPedido: TFrmPedido;

implementation

{$R *.dfm}

procedure TFrmPedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
  FrmPedido := nil;
end;

end.

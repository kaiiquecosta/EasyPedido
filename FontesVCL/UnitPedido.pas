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
    pnlEditar: TPanel;
    SpeedButton1: TSpeedButton;
    pnlInserir: TPanel;
    SpeedButton2: TSpeedButton;
    pnlExcluir: TPanel;
    SpeedButton3: TSpeedButton;
    dbgrd1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPedido: TFrmPedido;

implementation

{$R *.dfm}

end.

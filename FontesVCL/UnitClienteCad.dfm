object frmClienteCad: TfrmClienteCad
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Cliente'
  ClientHeight = 391
  ClientWidth = 510
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  TextHeight = 15
  object lblTitulo: TLabel
    Left = 24
    Top = 24
    Width = 217
    Height = 33
    Caption = 'Novo Cliente'
    Color = 267911168
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 16744448
    Font.Height = -24
    Font.Name = 'Segoe UI Semibold'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    OnClick = lblTituloClick
  end
  object Label1: TLabel
    Left = 24
    Top = 80
    Width = 36
    Height = 15
    Caption = 'Nome:'
  end
  object pnlInserir: TPanel
    AlignWithMargins = True
    Left = 374
    Top = 335
    Width = 110
    Height = 40
    Margins.Left = 10
    Margins.Top = 15
    Margins.Right = 10
    Margins.Bottom = 15
    BevelOuter = bvNone
    Color = 12895941
    ParentBackground = False
    TabOrder = 0
    object btnCancelar: TSpeedButton
      Left = 0
      Top = 0
      Width = 110
      Height = 40
      Cursor = crHandPoint
      Align = alClient
      Caption = 'Cancelar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = 5585461
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnCancelarClick
      ExplicitLeft = -6
      ExplicitHeight = 50
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 245
    Top = 335
    Width = 110
    Height = 40
    Margins.Left = 10
    Margins.Top = 15
    Margins.Right = 10
    Margins.Bottom = 15
    BevelOuter = bvNone
    Color = 16475988
    ParentBackground = False
    TabOrder = 1
    object btnSalvar: TSpeedButton
      Left = 0
      Top = 0
      Width = 110
      Height = 40
      Cursor = crHandPoint
      Align = alClient
      Caption = 'Salvar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = -24
      ExplicitTop = 16
      ExplicitHeight = 50
    end
  end
  object Edit1: TEdit
    Left = 24
    Top = 101
    Width = 460
    Height = 28
    TabOrder = 2
  end
end

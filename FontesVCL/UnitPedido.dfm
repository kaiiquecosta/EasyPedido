object FrmPedido: TFrmPedido
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Pedidos'
  ClientHeight = 577
  ClientWidth = 934
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  WindowState = wsMaximized
  TextHeight = 15
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 934
    Height = 80
    Align = alTop
    BevelOuter = bvNone
    Color = 16051947
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 24
    ExplicitTop = -6
    object lbl1: TLabel
      Left = 0
      Top = 17
      Width = 108
      Height = 40
      Caption = 'Pedidos'
      Font.Charset = ANSI_CHARSET
      Font.Color = 5585461
      Font.Height = -29
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
    end
    object pnlEditar: TPanel
      Left = 524
      Top = 15
      Width = 110
      Height = 50
      Margins.Left = 0
      Margins.Top = 20
      Margins.Right = 0
      Margins.Bottom = 20
      BevelOuter = bvNone
      Color = 16475988
      ParentBackground = False
      TabOrder = 0
      object SpeedButton1: TSpeedButton
        Left = 0
        Top = 0
        Width = 110
        Height = 50
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Inserir'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitTop = 16
      end
    end
    object pnlInserir: TPanel
      Left = 667
      Top = 15
      Width = 110
      Height = 50
      Margins.Left = 0
      Margins.Top = 15
      Margins.Right = 0
      Margins.Bottom = 15
      BevelOuter = bvNone
      Color = 16475988
      ParentBackground = False
      TabOrder = 1
      object SpeedButton2: TSpeedButton
        Left = 0
        Top = 0
        Width = 110
        Height = 50
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Editar'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = -4
        ExplicitTop = 24
      end
    end
    object pnlExcluir: TPanel
      Left = 811
      Top = 15
      Width = 110
      Height = 50
      Margins.Left = 0
      Margins.Top = 15
      Margins.Right = 0
      Margins.Bottom = 15
      BevelOuter = bvNone
      Color = 6906591
      ParentBackground = False
      TabOrder = 2
      object SpeedButton3: TSpeedButton
        Left = 0
        Top = 0
        Width = 110
        Height = 50
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Excluir'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 40
        ExplicitTop = 9
      end
    end
  end
  object dbgrd1: TDBGrid
    Left = 0
    Top = 80
    Width = 934
    Height = 497
    Align = alClient
    BorderStyle = bsNone
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
end

object MainForm: TMainForm
  Left = 232
  Top = 156
  Width = 696
  Height = 480
  Caption = 'Restorán Las Brujas Ltda.    Reservas  Año Nuevo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 449
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object Bevel2: TBevel
      Left = 2
      Top = 2
      Width = 684
      Height = 35
      Align = alTop
      Shape = bsBottomLine
      Style = bsRaised
    end
    object Panel2: TPanel
      Left = 4
      Top = 4
      Width = 100
      Height = 25
      Alignment = taLeftJustify
      Caption = '  Nº BOLETA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 104
      Top = 4
      Width = 117
      Height = 25
      Caption = 'Panel3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Panel4: TPanel
      Left = 224
      Top = 6
      Width = 100
      Height = 25
      Alignment = taLeftJustify
      Caption = '  Nº RESERVA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Panel5: TPanel
      Left = 324
      Top = 6
      Width = 117
      Height = 25
      Caption = 'Panel3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Panel6: TPanel
      Left = 240
      Top = 64
      Width = 129
      Height = 25
      Caption = 'MESA PRINCIPAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Panel7: TPanel
      Left = 376
      Top = 64
      Width = 85
      Height = 25
      Caption = 'Panel6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBGrid1: TDBGrid
      Left = 4
      Top = 68
      Width = 216
      Height = 373
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
end

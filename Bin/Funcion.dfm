object FuncionForm: TFuncionForm
  Left = 263
  Top = 172
  BorderStyle = bsNone
  Caption = 'FuncionForm'
  ClientHeight = 482
  ClientWidth = 531
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
    Width = 531
    Height = 482
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object Bevel1: TBevel
      Left = 15
      Top = 68
      Width = 500
      Height = 93
      Shape = bsFrame
    end
    object Bevel2: TBevel
      Left = 16
      Top = 164
      Width = 500
      Height = 193
      Shape = bsFrame
    end
    object Bevel3: TBevel
      Left = 16
      Top = 360
      Width = 500
      Height = 65
      Shape = bsFrame
    end
    object SpeedButton1: TSpeedButton
      Left = 16
      Top = 432
      Width = 501
      Height = 37
      Caption = 'SALIR'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object Selector: TRadioGroup
      Left = 160
      Top = 8
      Width = 356
      Height = 53
      Caption = ' FUNCIÓN DEL TERMINAL '
      Columns = 3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Items.Strings = (
        'CAJA'
        'VENTA'
        'AMBAS')
      ParentFont = False
      TabOrder = 1
    end
    object Panel2: TPanel
      Left = 27
      Top = 76
      Width = 102
      Height = 25
      Alignment = taLeftJustify
      Caption = ' Dir. Respaldo Ppal.'
      TabOrder = 2
    end
    object Panel3: TPanel
      Left = 27
      Top = 101
      Width = 102
      Height = 25
      Alignment = taLeftJustify
      Caption = ' Dir. Respaldo Sec.'
      TabOrder = 3
    end
    object Panel4: TPanel
      Left = 27
      Top = 126
      Width = 102
      Height = 25
      Alignment = taLeftJustify
      Caption = ' Dir. Respaldo Movil'
      TabOrder = 4
    end
    object Edit1: TEdit
      Left = 131
      Top = 76
      Width = 373
      Height = 23
      CharCase = ecUpperCase
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Edit2: TEdit
      Left = 131
      Top = 102
      Width = 373
      Height = 23
      CharCase = ecUpperCase
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object Edit3: TEdit
      Left = 131
      Top = 128
      Width = 373
      Height = 23
      CharCase = ecUpperCase
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object Panel5: TPanel
      Left = 27
      Top = 172
      Width = 150
      Height = 25
      Alignment = taLeftJustify
      Caption = ' Impresora Boletas Terminal 1'
      TabOrder = 8
    end
    object Panel6: TPanel
      Left = 27
      Top = 197
      Width = 150
      Height = 25
      Alignment = taLeftJustify
      Caption = ' Impresora Boletas Terminal 2'
      TabOrder = 9
    end
    object Panel7: TPanel
      Left = 27
      Top = 222
      Width = 150
      Height = 25
      Alignment = taLeftJustify
      Caption = ' Impresora Tickets Terminal 1'
      TabOrder = 10
    end
    object Edit4: TEdit
      Left = 179
      Top = 172
      Width = 325
      Height = 23
      CharCase = ecUpperCase
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object Edit5: TEdit
      Left = 179
      Top = 198
      Width = 325
      Height = 23
      CharCase = ecUpperCase
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object Edit6: TEdit
      Left = 179
      Top = 224
      Width = 325
      Height = 23
      CharCase = ecUpperCase
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object Panel8: TPanel
      Left = 27
      Top = 248
      Width = 150
      Height = 25
      Alignment = taLeftJustify
      Caption = ' Impresora Tickets Terminal 2'
      TabOrder = 14
    end
    object Panel9: TPanel
      Left = 27
      Top = 273
      Width = 150
      Height = 25
      Alignment = taLeftJustify
      Caption = ' Impresora Respaldo Boletas'
      TabOrder = 15
    end
    object Panel10: TPanel
      Left = 27
      Top = 298
      Width = 150
      Height = 25
      Alignment = taLeftJustify
      Caption = ' Impresora Respaldo Tickets'
      TabOrder = 16
    end
    object Edit7: TEdit
      Left = 179
      Top = 248
      Width = 325
      Height = 23
      CharCase = ecUpperCase
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
    end
    object Edit8: TEdit
      Left = 179
      Top = 274
      Width = 325
      Height = 23
      CharCase = ecUpperCase
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
    end
    object Edit9: TEdit
      Left = 179
      Top = 300
      Width = 325
      Height = 23
      CharCase = ecUpperCase
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
    end
    object Panel11: TPanel
      Left = 16
      Top = 8
      Width = 129
      Height = 25
      Caption = 'NOMBRE TERMINAL'
      TabOrder = 20
    end
    object Edit10: TEdit
      Left = 16
      Top = 36
      Width = 129
      Height = 24
      CharCase = ecUpperCase
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Panel12: TPanel
      Left = 27
      Top = 323
      Width = 150
      Height = 25
      Alignment = taLeftJustify
      Caption = ' Impresora Informes'
      TabOrder = 21
    end
    object Edit11: TEdit
      Left = 179
      Top = 323
      Width = 325
      Height = 23
      CharCase = ecUpperCase
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 22
    end
    object Panel13: TPanel
      Left = 27
      Top = 366
      Width = 150
      Height = 25
      Alignment = taLeftJustify
      Caption = ' Archivo de Registro (LOG)'
      TabOrder = 23
    end
    object Edit12: TEdit
      Left = 179
      Top = 368
      Width = 325
      Height = 23
      CharCase = ecUpperCase
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 24
    end
    object Edit13: TEdit
      Left = 179
      Top = 391
      Width = 325
      Height = 23
      CharCase = ecUpperCase
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 25
    end
    object Panel14: TPanel
      Left = 27
      Top = 391
      Width = 150
      Height = 25
      Alignment = taLeftJustify
      Caption = ' Journal Diario'
      TabOrder = 26
    end
  end
end

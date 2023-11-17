object FRelatorio: TFRelatorio
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio'
  ClientHeight = 441
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDefault
  OnCreate = FormCreate
  TextHeight = 15
  object lblPeriodo: TLabel
    Left = 8
    Top = 22
    Width = 95
    Height = 15
    Caption = 'Filtrar Por Per'#237'odo'
  end
  object Label2: TLabel
    Left = 216
    Top = 24
    Width = 6
    Height = 15
    Caption = #224
  end
  object RLReport1: TRLReport
    Left = -17
    Top = 208
    Width = 794
    Height = 1123
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 67
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 168
        Top = 5
        Width = 373
        Height = 32
        Caption = 'Relat'#243'rio de Abastecimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblRelatorioGeradoHoraAtual: TRLSystemInfo
        Left = 144
        Top = 42
        Width = 37
        Height = 16
        Info = itNow
        Text = ''
      end
      object lblRelatorioGerado: TRLLabel
        Left = 16
        Top = 42
        Width = 127
        Height = 16
        Caption = 'Relat'#243'rio Gerado em:'
      end
      object RLDBText5: TRLDBText
        Left = 201
        Top = 43
        Width = 65
        Height = 16
        DataField = 'NR_LITRO'
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 105
      Width = 718
      Height = 120
      object RLLabel2: TRLLabel
        Left = 16
        Top = 24
        Width = 45
        Height = 16
        Caption = 'Bomba'
      end
      object RLLabel3: TRLLabel
        Left = 145
        Top = 24
        Width = 36
        Height = 16
        Caption = 'Litros'
      end
      object RLLabel4: TRLLabel
        Left = 496
        Top = 24
        Width = 66
        Height = 16
        Caption = 'Valor Total'
      end
      object RLLabel5: TRLLabel
        Left = 312
        Top = 24
        Width = 84
        Height = 16
        Caption = 'Valor Imposto'
      end
      object RLDBText1: TRLDBText
        Left = 3
        Top = 56
        Width = 77
        Height = 16
        DataField = 'DS_BOMBA'
        DataSource = FAbastecimento.TDataSource
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 145
        Top = 56
        Width = 65
        Height = 16
        DataField = 'NR_LITRO'
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 312
        Top = 56
        Width = 86
        Height = 16
        DataField = 'VL_IMPOSTO'
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 496
        Top = 56
        Width = 67
        Height = 16
        DataField = 'VL_TOTAL'
        Text = ''
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 80
    Width = 641
    Height = 122
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Caption = 'C'#243'digo'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_ABASTECIMENTO'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DS_BOMBA'
        Title.Caption = 'Bomba'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_BOMBA'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'VL_LITRO'
        Title.Caption = 'R$ Litro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NR_LITRO'
        Title.Caption = 'Qtd Litros'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_IMPOSTO'
        Title.Caption = 'Imposto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_TOTAL'
        Title.Caption = 'Total'
        Visible = True
      end>
  end
  object DataInicio: TDatePicker
    Left = 109
    Top = 18
    Width = 97
    Height = 25
    Date = 45246.000000000000000000
    DateFormat = 'dd/mm/yyyy'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    MaxYear = 2500
    MinYear = 1990
    TabOrder = 2
  end
  object DataFim: TDatePicker
    Left = 230
    Top = 18
    Width = 97
    Height = 25
    Date = 45246.000000000000000000
    DateFormat = 'dd/mm/yyyy'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    MaxYear = 2500
    MinYear = 1990
    TabOrder = 3
  end
  object btnGerar: TButton
    Left = 344
    Top = 18
    Width = 41
    Height = 25
    Caption = 'Gerar'
    TabOrder = 4
    OnClick = btnGerarClick
  end
  object QAbastecimento: TFDQuery
    SQL.Strings = (
      'SELECT * FROM ABASTECIMENTO')
    Left = 520
    Top = 88
  end
  object TConexao: TFDConnection
    Params.Strings = (
      'Database=C:\Users\Vilma\Desktop\PostoABC\posto.sqlite3'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    Left = 528
    Top = 256
  end
  object TTable: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = TConexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'BOMBA'
    Left = 528
    Top = 288
  end
  object TDataSource: TDataSource
    DataSet = TTable
    Left = 536
    Top = 224
  end
end

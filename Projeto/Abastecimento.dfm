object FAbastecimento: TFAbastecimento
  Left = 0
  Top = 0
  Caption = 'Abastecidas'
  ClientHeight = 441
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 96
    Top = 121
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 96
    Top = 91
    Width = 39
    Height = 15
    Caption = 'Codigo'
  end
  object Label3: TLabel
    Left = 97
    Top = 149
    Width = 11
    Height = 15
    Caption = 'ID'
  end
  object DBEdit1: TDBEdit
    Left = 160
    Top = 118
    Width = 121
    Height = 23
    DataSource = TDataSource
    TabOrder = 0
  end
  object DBNavigator1: TDBNavigator
    Left = 160
    Top = 309
    Width = 240
    Height = 25
    DataSource = TDataSource
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 112
    Top = 183
    Width = 353
    Height = 120
    DataSource = TDataSource
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBEdit2: TDBEdit
    Left = 160
    Top = 89
    Width = 121
    Height = 23
    DataField = 'ID'
    DataSource = TDataSource
    TabOrder = 3
  end
  object cbTanque: TDBComboBox
    Left = 160
    Top = 147
    Width = 145
    Height = 23
    DataSource = TDataSource
    TabOrder = 4
  end
  object DatePicker1: TDatePicker
    Left = 328
    Top = 145
    Date = 45239.000000000000000000
    DateFormat = 'dd/mm/yyyy'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    TabOrder = 5
  end
  object TDataSource: TDataSource
    DataSet = TTable
    Left = 432
    Top = 16
  end
  object TConexao: TFDConnection
    Params.Strings = (
      'Database=C:\Users\Vilma\Desktop\PostoABC\posto.sqlite3'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    Left = 392
    Top = 16
  end
  object TTable: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = TConexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'ABASTECIMENTO'
    Left = 352
    Top = 16
  end
end

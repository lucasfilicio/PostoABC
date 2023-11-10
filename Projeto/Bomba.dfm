object FBomba: TFBomba
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Bomba'
  ClientHeight = 424
  ClientWidth = 394
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object lblNome: TLabel
    Left = 43
    Top = 40
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object lblCodigo: TLabel
    Left = 37
    Top = 10
    Width = 39
    Height = 15
    Caption = 'Codigo'
  end
  object lblTanque: TLabel
    Left = 151
    Top = 10
    Width = 38
    Height = 15
    Caption = 'Tanque'
  end
  object DBEdit1: TDBEdit
    Left = 83
    Top = 37
    Width = 214
    Height = 23
    DataField = 'DS_BOMBA'
    DataSource = TDataSource
    MaxLength = 20
    TabOrder = 0
  end
  object DBNavigator1: TDBNavigator
    Left = 73
    Top = 66
    Width = 224
    Height = 25
    DataSource = TDataSource
    VisibleButtons = [nbFirst, nbNext, nbInsert, nbDelete, nbPost, nbCancel, nbRefresh]
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 97
    Width = 393
    Height = 330
    DataSource = TDataSource
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBEdit2: TDBEdit
    Left = 83
    Top = 8
    Width = 38
    Height = 23
    DataField = 'ID'
    DataSource = TDataSource
    TabOrder = 3
  end
  object cbTanque: TDBComboBox
    Left = 195
    Top = 8
    Width = 102
    Height = 23
    DataField = 'DS_TANQUE'
    DataSource = TDataSource
    Items.Strings = (
      'Gasolina'
      #211'leo Diesel')
    TabOrder = 4
    OnChange = cbTanqueChange
  end
  object TDataSource: TDataSource
    DataSet = TTable
    Left = 304
    Top = 144
  end
  object TConexao: TFDConnection
    Params.Strings = (
      'Database=C:\Users\Vilma\Desktop\PostoABC\posto.sqlite3'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    Left = 296
    Top = 176
  end
  object TTable: TFDTable
    Active = True
    BeforePost = TTableBeforePost
    IndexFieldNames = 'ID'
    Connection = TConexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'BOMBA'
    Left = 296
    Top = 208
  end
end

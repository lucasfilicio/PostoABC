object FTanque: TFTanque
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Tanque'
  ClientHeight = 441
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
    Left = 171
    Top = 20
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object lblTanque: TLabel
    Left = 14
    Top = 21
    Width = 38
    Height = 15
    Caption = 'Tanque'
  end
  object DS_TANQUE: TDBEdit
    Left = 210
    Top = 19
    Width = 168
    Height = 23
    DataField = 'DS_TANQUE'
    DataSource = TDataSource
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    Left = 73
    Top = 48
    Width = 210
    Height = 25
    DataSource = TDataSource
    VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbPost, nbCancel, nbRefresh]
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 83
    Width = 393
    Height = 349
    DataSource = TDataSource
    TabOrder = 3
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
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DS_TANQUE'
        Title.Caption = 'Descri'#231#227'o Tanque'
        Width = 222
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_TANQUE'
        Title.Caption = 'Combust'#237'vel'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'DS_COMBUSTIVEL'
        Title.Caption = 'Combust'#237'vel'
        Visible = True
      end>
  end
  object cbTanque: TDBComboBox
    Left = 58
    Top = 19
    Width = 102
    Height = 23
    DataField = 'DS_COMBUSTIVEL'
    DataSource = TDataSource
    Items.Strings = (
      'Gasolina'
      #211'leo Diesel')
    TabOrder = 0
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
    Left = 304
    Top = 192
  end
  object TTable: TFDTable
    Active = True
    BeforePost = TTableBeforePost
    IndexFieldNames = 'ID'
    Connection = TConexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'TANQUE'
    Left = 304
    Top = 240
  end
end

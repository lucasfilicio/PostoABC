object FBomba: TFBomba
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Bomba'
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
    Left = 43
    Top = 24
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object lblTanque: TLabel
    Left = 199
    Top = 23
    Width = 38
    Height = 15
    Caption = 'Tanque'
  end
  object DS_BOMBA: TDBEdit
    Left = 82
    Top = 21
    Width = 103
    Height = 23
    DataField = 'DS_BOMBA'
    DataSource = TDataSource
    MaxLength = 20
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    Left = 73
    Top = 50
    Width = 210
    Height = 25
    DataSource = TDataSource
    VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbPost, nbCancel, nbRefresh]
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 81
    Width = 393
    Height = 352
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
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DS_BOMBA'
        Title.Caption = 'Descri'#231#227'o Bomba'
        Width = 207
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_TANQUE'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'DS_TANQUE'
        Title.Caption = 'Combust'#237'vel'
        Width = 94
        Visible = True
      end>
  end
  object cbTanque: TDBComboBox
    Left = 243
    Top = 21
    Width = 102
    Height = 23
    DataField = 'DS_TANQUE'
    DataSource = TDataSource
    Items.Strings = (
      'Gasolina'
      #211'leo Diesel')
    TabOrder = 0
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

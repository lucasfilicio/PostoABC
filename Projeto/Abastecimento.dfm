object FAbastecimento: TFAbastecimento
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Abastecidas'
  ClientHeight = 441
  ClientWidth = 489
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object Label3: TLabel
    Left = 2
    Top = 20
    Width = 38
    Height = 15
    Caption = 'Bomba'
  end
  object Label4: TLabel
    Left = 155
    Top = 20
    Width = 29
    Height = 15
    Caption = 'Litros'
  end
  object Label5: TLabel
    Left = 364
    Top = 20
    Width = 41
    Height = 15
    Caption = 'Vl. Total'
  end
  object Label6: TLabel
    Left = 245
    Top = 20
    Width = 40
    Height = 15
    Caption = 'R$ Litro'
  end
  object DBNavigator1: TDBNavigator
    Left = 117
    Top = 46
    Width = 231
    Height = 25
    DataSource = TDataSource
    VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbPost, nbCancel, nbRefresh]
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 77
    Width = 488
    Height = 364
    DataSource = TDataSource
    TabOrder = 5
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
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DS_BOMBA'
        Title.Caption = 'Bomba'
        Width = 102
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
        Width = 53
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
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_TOTAL'
        Title.Caption = 'Total'
        Visible = True
      end>
  end
  object dbBomba: TDBComboBox
    Left = 46
    Top = 17
    Width = 102
    Height = 23
    DataField = 'DS_BOMBA'
    DataSource = TDataSource
    Items.Strings = (
      'Bomba 01'
      'Bomba 02')
    TabOrder = 0
  end
  object dbNR_LITROS: TDBEdit
    Left = 190
    Top = 17
    Width = 43
    Height = 23
    DataField = 'NR_LITRO'
    DataSource = TDataSource
    TabOrder = 1
    OnExit = dbNR_LITROSExit
  end
  object dbVL_TOTAL: TDBEdit
    Left = 411
    Top = 17
    Width = 70
    Height = 23
    DataField = 'VL_TOTAL'
    DataSource = TDataSource
    TabOrder = 3
  end
  object dbVL_LITRO: TDBEdit
    Left = 287
    Top = 17
    Width = 70
    Height = 23
    DataField = 'VL_LITRO'
    DataSource = TDataSource
    TabOrder = 2
    OnExit = dbVL_LITROExit
  end
  object TDataSource: TDataSource
    DataSet = TTable
    Left = 328
    Top = 288
  end
  object TConexao: TFDConnection
    Params.Strings = (
      'Database=C:\Users\Vilma\Desktop\PostoABC\posto.sqlite3'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    Left = 328
    Top = 176
  end
  object TTable: TFDTable
    Active = True
    BeforePost = TTableBeforePost
    AfterPost = TTableAfterPost
    IndexFieldNames = 'ID'
    Connection = TConexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'ABASTECIMENTO'
    Left = 328
    Top = 224
  end
end

object FRelatorio: TFRelatorio
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object RLReport1: TRLReport
    Left = -8
    Top = 0
    Width = 794
    Height = 1123
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
  end
  object TConexao: TFDConnection
    Params.Strings = (
      'Database=C:\Users\Vilma\Desktop\PostoABC\posto.sqlite3'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    Left = 416
    Top = 128
  end
  object TTable: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = TConexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'BOMBA'
    Left = 416
    Top = 160
  end
  object TDataSource: TDataSource
    DataSet = TTable
    Left = 424
    Top = 96
  end
end

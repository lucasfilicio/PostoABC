unit Tanque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Vcl.StdCtrls, Vcl.DBCtrls,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Mask, Datasnap.DBClient;

type
  TFTanque = class(TForm)
    lblNome: TLabel;
    lblTanque: TLabel;
    DS_TANQUE: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    cbTanque: TDBComboBox;
    TDataSource: TDataSource;
    TConexao: TFDConnection;
    TTable: TFDTable;
    procedure TTableBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTanque: TFTanque;
  MAX_ID : Integer;

implementation

{$R *.dfm}

procedure TFTanque.FormCreate(Sender: TObject);
begin
TTable.First;
while not TTable.Eof do
begin
    if MAX_ID < TTable.FieldByName('ID').Value  then
       MAX_ID :=    TTable.FieldByName('ID').Value;
    TTable.Next;
end;
end;

procedure TFTanque.TTableBeforePost(DataSet: TDataSet);
begin
if TTable.State in [dsInsert] then
  TTable.FieldByName('ID').Value := MAX_ID+1;
if TTable.FieldByName('DS_COMBUSTIVEL').Value = 'Gasolina' then
  TTable.FieldByName('TP_COMBUSTIVEL').Value := 1
else
  TTable.FieldByName('TP_COMBUSTIVEL').Value := 2;
end;

end.

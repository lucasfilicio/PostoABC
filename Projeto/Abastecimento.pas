unit Abastecimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Vcl.WinXPickers,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ComCtrls;

const
  IMPOSTO = 0.13;
type
  TFAbastecimento = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    TDataSource: TDataSource;
    TConexao: TFDConnection;
    TTable: TFDTable;
    dbBomba: TDBComboBox;
    Label3: TLabel;
    dbNR_LITROS: TDBEdit;
    Label4: TLabel;
    dbVL_TOTAL: TDBEdit;
    dbVL_LITRO: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    procedure TTableAfterPost(DataSet: TDataSet);
    procedure dbNR_LITROSExit(Sender: TObject);
    procedure dbVL_LITROExit(Sender: TObject);
    procedure TTableBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAbastecimento: TFAbastecimento;
  MAX_ID : Integer;

implementation

{$R *.dfm}
uses
    Bomba;
procedure TFAbastecimento.dbNR_LITROSExit(Sender: TObject);
begin
TTable.FieldByName('VL_TOTAL').Value := TTable.FieldByName('VL_LITRO').Value * TTable.FieldByName('NR_LITRO').Value;
TTable.FieldByName('VL_IMPOSTO').Value := TTable.FieldByName('VL_TOTAL').Value * IMPOSTO;
end;

procedure TFAbastecimento.dbVL_LITROExit(Sender: TObject);
begin
TTable.FieldByName('VL_TOTAL').Value := TTable.FieldByName('VL_LITRO').Value * TTable.FieldByName('NR_LITRO').Value;
TTable.FieldByName('VL_IMPOSTO').Value := TTable.FieldByName('VL_TOTAL').Value * IMPOSTO;

end;

procedure TFAbastecimento.FormCreate(Sender: TObject);
begin
TTable.First;
while not TTable.Eof do
begin
    if MAX_ID < TTable.FieldByName('ID').Value  then
       MAX_ID :=    TTable.FieldByName('ID').Value;
    TTable.Next;
end;
end;

procedure TFAbastecimento.TTableAfterPost(DataSet: TDataSet);
begin
if TTable.State in [dsInsert,dsEdit] then
begin
  if TTable.FieldByName('DS_BOMBA').Value = 'Gasolina' then
    TTable.FieldByName('ID_BOMBA').Value := 1
  else
    TTable.FieldByName('ID_BOMBA').Value := 2;
end;
end;

procedure TFAbastecimento.TTableBeforePost(DataSet: TDataSet);
begin
if TTable.State in [dsInsert] then
begin
  TTable.FieldByName('ID').Value := MAX_ID+1;
  TTable.FieldByName('DT_ABASTECIMENTO').Value := FormatDateTime('dd/mm/yyyy hh:nn:ss', Now);
end;
if TTable.FieldByName('DS_BOMBA').Value = 'Bomba 01' then
  TTable.FieldByName('ID_BOMBA').Value := 1
else
  TTable.FieldByName('ID_BOMBA').Value := 2;

end;



end.


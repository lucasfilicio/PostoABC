unit Bomba;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Mask, Datasnap.DBClient;


type
  TFBomba = class(TForm)
    lblNome: TLabel;
    lblTanque: TLabel;
    DS_BOMBA: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    cbTanque: TDBComboBox;
    TDataSource: TDataSource;
    TConexao: TFDConnection;
    TTable: TFDTable;
    procedure cbTanqueChange(Sender: TObject);

    procedure FormCreate(Sender: TObject);
    procedure TTableBeforePost(DataSet: TDataSet);  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBomba: TFBomba;
  MAX_ID : Integer;

implementation

{$R *.dfm}

procedure TFBomba.cbTanqueChange(Sender: TObject);
begin
if cbTanque.ItemIndex = 0 then
  TTable.FieldByName('ID_TANQUE').Value := 1
else
  TTable.FieldByName('ID_TANQUE').Value := 2;
end;

procedure TFBomba.FormCreate(Sender: TObject);
begin
TTable.First;
while not TTable.Eof do
begin
    if MAX_ID < TTable.FieldByName('ID').Value  then
       MAX_ID :=    TTable.FieldByName('ID').Value;
    TTable.Next;
end;
end;

procedure TFBomba.TTableBeforePost(DataSet: TDataSet);
begin
if TTable.State in [dsInsert] then
  TTable.FieldByName('ID').Value := MAX_ID+1;
end;

end.

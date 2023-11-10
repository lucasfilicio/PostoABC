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
    lblCodigo: TLabel;
    lblTanque: TLabel;
    DBEdit1: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBEdit2: TDBEdit;
    cbTanque: TDBComboBox;
    TDataSource: TDataSource;
    TConexao: TFDConnection;
    TTable: TFDTable;
    procedure FormCreate(Sender: TObject);
    procedure cbTanqueChange(Sender: TObject);
    procedure TTableBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBomba: TFBomba;

implementation

{$R *.dfm}

procedure TFBomba.cbTanqueChange(Sender: TObject);
begin
if cbTanque.ItemIndex = -1 then
  TTable.FieldByName('ID_TANQUE').Value :=  2
else
  TTable.FieldByName('ID_TANQUE').Value := 1;
end;

procedure TFBomba.FormCreate(Sender: TObject);
begin
TTable.FieldByName('ID_TANQUE').Visible      := False;
TTable.FieldByName('ID').DisplayLabel        := 'Código';
TTable.FieldByName('DS_BOMBA').DisplayLabel  := 'Descrição Bomba';
TTable.FieldByName('DS_BOMBA').DisplayWidth  := TTable.FieldByName('DS_BOMBA').DisplayWidth - 20;
TTable.FieldByName('DS_TANQUE').DisplayLabel := 'Tanque';
DBGrid1.Refresh;
end;

procedure TFBomba.TTableBeforePost(DataSet: TDataSet);
begin
DBGrid1.Refresh;
end;

end.

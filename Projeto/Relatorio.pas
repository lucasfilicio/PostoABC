unit Relatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RLReport, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.WinXPickers;

type
  TFRelatorio = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    lblRelatorioGeradoHoraAtual: TRLSystemInfo;
    lblRelatorioGerado: TRLLabel;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    QAbastecimento: TFDQuery;
    DBGrid1: TDBGrid;
    DataInicio: TDatePicker;
    lblPeriodo: TLabel;
    DataFim: TDatePicker;
    Label2: TLabel;
    btnGerar: TButton;
    TConexao: TFDConnection;
    TTable: TFDTable;
    TDataSource: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelatorio: TFRelatorio;

implementation

{$R *.dfm}

uses
  Bomba;

procedure TFRelatorio.btnGerarClick(Sender: TObject);
begin
if DataInicio.Date > DataFim.Date then
begin
  ShowMessage('A Data de Início não pode ser menor que a Data Fim');
  Abort;
end;
end;

procedure TFRelatorio.FormCreate(Sender: TObject);
begin
//
end;

end.

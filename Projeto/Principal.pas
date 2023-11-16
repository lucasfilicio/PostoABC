unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.SqlExpr, Vcl.Menus,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  TFPrincipal = class(TForm)
    Menus: TMainMenu;
    MCadastro: TMenuItem;
    MFaturamento: TMenuItem;
    MRelatorio: TMenuItem;
    mTanque: TMenuItem;
    mBomba: TMenuItem;
    mAbastecidas: TMenuItem;
    mAbastecimento: TMenuItem;
    Fundo: TImage;
    procedure mTanqueClick(Sender: TObject);
    procedure mBombaClick(Sender: TObject);
    procedure mAbastecidasClick(Sender: TObject);
    procedure mAbastecimentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

uses Tanque,Bomba,Abastecimento, Relatorio;

procedure TFPrincipal.mAbastecidasClick(Sender: TObject);
begin
  Application.CreateForm(TFAbastecimento, FAbastecimento);
  FAbastecimento.Show();
end;

procedure TFPrincipal.mAbastecimentoClick(Sender: TObject);
begin
  Application.CreateForm(TFRelatorio, FRelatorio);
  FRelatorio.Show();
end;

procedure TFPrincipal.mBombaClick(Sender: TObject);
begin
  Application.CreateForm(TFBomba, FBomba);
  FBomba.Show();
end;

procedure TFPrincipal.mTanqueClick(Sender: TObject);
begin
  Application.CreateForm(TFTanque, FTanque);
  FTanque.Show();
end;

end.

unit UfrmEntrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmModelo, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmEntrada = class(TfrmModelo)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBImage1: TDBImage;
    procedure btn_NovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEntrada: TfrmEntrada;

implementation

{$R *.dfm}

uses UDM, UfrmPrincipal;

procedure TfrmEntrada.btn_NovoClick(Sender: TObject);
begin
  inherited;
DBEdit3.setfocus;
DBEdit3.text:=datetostr(now());
end;

procedure TfrmEntrada.FormShow(Sender: TObject);
begin
  inherited;
datamodule1.fdQryEntrada.close;
datamodule1.fdQryEntrada.open;
datamodule1.fdQryProduto.close;
datamodule1.fdQryProduto.open;
datamodule1.fdQryFornecedor.close;
datamodule1.fdQryFornecedor.open;
end;

end.

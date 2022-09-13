unit UfrmFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmModelo, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmFornecedor = class(TfrmModelo)
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
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFornecedor: TfrmFornecedor;

implementation

{$R *.dfm}

uses UDM;

procedure TfrmFornecedor.FormCreate(Sender: TObject);
begin
  inherited;
KeyPreview:=true;
end;

procedure TfrmFornecedor.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key=#13 then begin
SelectNext(ActiveControl as TWinControl,True,True);
key:=#0;
end;
end;

procedure TfrmFornecedor.FormShow(Sender: TObject);
begin
  inherited;
datamodule1.fdQryFornecedor.close;
datamodule1.fdQryFornecedor.open;
datamodule1.fdQryCidade.close;
datamodule1.fdQryCidade.open;
end;

end.

unit UfrmConsultaCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmConsultaCliente = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    ds: TDataSource;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaCliente: TfrmConsultaCliente;

implementation

{$R *.dfm}

uses UDM, UfrmCliente, UfrmPrincipal, UfrmRelatorioCliente;

procedure TfrmConsultaCliente.BitBtn1Click(Sender: TObject);
begin
edit1.Clear;
end;

procedure TfrmConsultaCliente.BitBtn2Click(Sender: TObject);
begin
frmConsultaCliente.Close;
end;

procedure TfrmConsultaCliente.BitBtn3Click(Sender: TObject);
begin
if frmRelatorioCliente =nil then
frmRelatorioCliente := TfrmRelatorioCliente.create(self);
frmRelatorioCliente.rlRelCliente.preview();
end;

procedure TfrmConsultaCliente.Edit1Change(Sender: TObject);
begin
  Edit1.SetFocus;
  DataModule1.fdQryConsultaCliente.close;
  DataModule1.fdQryConsultaCliente.SQL.Clear;
  DataModule1.fdQryConsultaCliente.SQL.add('SELECT cli.*,cid.nm_cidade,est.nm_estado, est.uf FROM tb_cliente cli INNER JOIN tb_cidade cid ON cid.id_cidade=cli.fk_id_cidade INNER JOIN tb_estado est ON est.id_estado = cid.fk_id_estado where nm_cliente like ' + quotedstr ('%' + edit1.Text + '%'));
  DataModule1.fdQryConsultaCliente.Open;
end;

procedure TfrmConsultaCliente.FormShow(Sender: TObject);
begin
  edit1.SetFocus;
  datamodule1.fdQryConsultaCliente.close;
  datamodule1.fdQryConsultaCliente.open;
end;

end.

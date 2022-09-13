unit UfrmConsultaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmConsultaProduto = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    ds: TDataSource;
    DBGrid1: TDBGrid;
    BitBtn3: TBitBtn;
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaProduto: TfrmConsultaProduto;

implementation

{$R *.dfm}

uses UDM, UfrmRelatorioProduto;

procedure TfrmConsultaProduto.BitBtn1Click(Sender: TObject);
begin
edit1.Clear;
end;

procedure TfrmConsultaProduto.BitBtn2Click(Sender: TObject);
begin
frmConsultaProduto.Close;
end;

procedure TfrmConsultaProduto.BitBtn3Click(Sender: TObject);
begin
if frmRelatorioProduto =nil then
frmRelatorioProduto := TfrmRelatorioProduto.create(self);
frmRelatorioProduto.rlRelProduto.preview();
end;

procedure TfrmConsultaProduto.Edit1Change(Sender: TObject);
begin
Edit1.SetFocus;
DataModule1.fdQryConsultaProduto.close;
DataModule1.fdQryConsultaProduto.SQL.Clear;
DataModule1.fdQryConsultaProduto.SQL.add('SELECT prod.*, gru.nm_grupo,uni.nm_unidade FROM tb_produto prod INNER JOIN tb_grupo gru ON gru.id_grupo = prod.fk_id_grupo INNER JOIN tb_unidade uni ON uni.id_unidade = prod.fk_id_unidade where nm_produto like ' + quotedstr ('%' + edit1.Text + '%'));
DataModule1.fdQryConsultaProduto.Open;
end;

procedure TfrmConsultaProduto.FormShow(Sender: TObject);
begin
edit1.SetFocus;
datamodule1.fdQryConsultaProduto.close;
datamodule1.fdQryConsultaProduto.open;
end;

end.

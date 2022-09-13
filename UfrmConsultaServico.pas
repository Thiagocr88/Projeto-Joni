unit UfrmConsultaServico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmConsultaServico = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    ds: TDataSource;
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaServico: TfrmConsultaServico;

implementation

{$R *.dfm}

uses UDM;

procedure TfrmConsultaServico.BitBtn1Click(Sender: TObject);
begin
edit1.Clear;
end;

procedure TfrmConsultaServico.BitBtn2Click(Sender: TObject);
begin
frmConsultaServico.Close;
end;

procedure TfrmConsultaServico.Edit1Change(Sender: TObject);
begin
Edit1.SetFocus;
DataModule1.fdQryConsultaServico.close;
DataModule1.fdQryConsultaServico.SQL.Clear;
DataModule1.fdQryConsultaServico.SQL.add('SELECT prod.*, gru.nm_grupo,uni.nm_unidade FROM tb_produto prod INNER JOIN tb_grupo gru ON gru.id_grupo = prod.fk_id_grupo INNER JOIN tb_unidade uni ON uni.id_unidade = prod.fk_id_unidade where nm_produto like ' + quotedstr ('%' + edit1.Text + '%'));
DataModule1.fdQryConsultaServico.Open;
end;

procedure TfrmConsultaServico.FormShow(Sender: TObject);
begin
edit1.SetFocus;
end;

end.

unit UfrmConsultaAgenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons;

type
  TfrmConsultaAgenda = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    ds: TDataSource;
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
  frmConsultaAgenda: TfrmConsultaAgenda;

implementation

{$R *.dfm}

uses UDM, UfrmPrincipal, UfrmAgenda, UfrmRelatorioAgenda;

procedure TfrmConsultaAgenda.BitBtn1Click(Sender: TObject);
begin
edit1.Clear;
end;

procedure TfrmConsultaAgenda.BitBtn2Click(Sender: TObject);
begin
frmConsultaAgenda.Close;
end;

procedure TfrmConsultaAgenda.BitBtn3Click(Sender: TObject);
begin
if frmRelatorioAgenda =nil then
frmRelatorioAgenda := TfrmRelatorioAgenda.create(self);
frmRelatorioAgenda.rlRelAgenda.preview();
end;

procedure TfrmConsultaAgenda.Edit1Change(Sender: TObject);
begin
Edit1.SetFocus;
DataModule1.fdQryConsultaAgenda.close;
DataModule1.fdQryConsultaAgenda.SQL.Clear;
DataModule1.fdQryConsultaAgenda.SQL.add('SELECT age.*, prod.nm_produto,cli.nm_cliente FROM tb_agenda age INNER JOIN tb_produto prod ON prod.id_produto = age.fk_id_produto INNER JOIN tb_cliente cli ON cli.id_cliente = age.fk_id_cliente where nm_cliente like ' + quotedstr ('%' + edit1.Text + '%'));
DataModule1.fdQryConsultaAgenda.Open;
end;

procedure TfrmConsultaAgenda.FormShow(Sender: TObject);
begin
edit1.SetFocus;
datamodule1.fdQryConsultaAgenda.close;
datamodule1.fdQryConsultaAgenda.open;
end;

end.

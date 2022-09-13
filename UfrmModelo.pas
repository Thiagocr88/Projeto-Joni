unit UfrmModelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmModelo = class(TForm)
    Panel1: TPanel;
    btn_Novo: TBitBtn;
    btn_Editar: TBitBtn;
    btn_Cancelar: TBitBtn;
    btn_Excluir: TBitBtn;
    btn_Salvar: TBitBtn;
    btn_Voltar: TBitBtn;
    DBGrid1: TDBGrid;
    ds: TDataSource;
    procedure btn_NovoClick(Sender: TObject);
    procedure btn_EditarClick(Sender: TObject);
    procedure btn_CancelarClick(Sender: TObject);
    procedure btn_ExcluirClick(Sender: TObject);
    procedure btn_SalvarClick(Sender: TObject);
    procedure btn_VoltarClick(Sender: TObject);
    procedure dsStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModelo: TfrmModelo;

implementation

{$R *.dfm}

uses UDM;

procedure TfrmModelo.btn_CancelarClick(Sender: TObject);
begin
ds.dataset.cancel;
end;

procedure TfrmModelo.btn_EditarClick(Sender: TObject);
begin
ds.dataset.edit;
end;

procedure TfrmModelo.btn_ExcluirClick(Sender: TObject);
begin
if ds.dataset.RecordCount = 0 then begin
MessageBox(application.Handle, Pchar('NÃO EXISTE REGISTROS NA TABELA!'),Pchar('FALHA AO EXCLUIR REGISTRO'),mb_ok+MB_ICONERROR);
exit;
end;

if MessageBox(application.Handle,Pchar('DESEJA EXCLUIR ESSE REGISTRO?'),Pchar('CONFIRMAR EXCLUSÃO?'),MB_YESNO+MB_ICONQUESTION)=id_Yes then
ds.dataset.delete;
end;

procedure TfrmModelo.btn_NovoClick(Sender: TObject);
begin
ds.dataset.append;
end;

procedure TfrmModelo.btn_SalvarClick(Sender: TObject);
begin
ds.dataset.post;
ds.dataset.close;
ds.dataset.open;
ShowMessage('Serviço salvo com sucesso!');
end;

procedure TfrmModelo.btn_VoltarClick(Sender: TObject);
begin
ds.dataset.close;
self.close;
end;

procedure TfrmModelo.dsStateChange(Sender: TObject);
begin
if ds.state in[dsinsert,dsedit] then
begin
btn_Salvar.enabled:=true;
btn_Cancelar.enabled:=true;
end else
begin
btn_Salvar.enabled:=false;
btn_Cancelar.enabled:=false;
end;
end;

end.

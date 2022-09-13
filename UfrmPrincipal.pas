unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.WinXCalendars, Vcl.Menus, RLXLSFilter, RLHTMLFilter, RLFilters,
  RLPDFFilter, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.DBCtrls;

type
  TfrmPrincipal = class(TForm)
    Calendar: TCalendarView;
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Relatorio1: TMenuItem;
    Cliente1: TMenuItem;
    Fornecedor1: TMenuItem;
    Produto1: TMenuItem;
    Grupo1: TMenuItem;
    Cidade1: TMenuItem;
    Estado1: TMenuItem;
    Servicos1: TMenuItem;
    Cliente2: TMenuItem;
    RLPDFFilter1: TRLPDFFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLXLSFilter1: TRLXLSFilter;
    Consulta1: TMenuItem;
    Cliente3: TMenuItem;
    Produto2: TMenuItem;
    Sair1: TMenuItem;
    Agenda1: TMenuItem;
    Entrada1: TMenuItem;
    Panel2: TPanel;
    BitBtn5: TBitBtn;
    Sistema1: TMenuItem;
    Ajuda1: TMenuItem;
    Agendamento1: TMenuItem;
    Image1: TImage;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Estoque1: TMenuItem;
    BitBtn4: TBitBtn;
    Suporte1: TMenuItem;
    BitBtn6: TBitBtn;
    Usurio1: TMenuItem;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    Label1: TLabel;
    Memo: TDBMemo;
    Suporte2: TMenuItem;
    Produtos2: TMenuItem;
    Servico1: TMenuItem;
    BitBtn12: TBitBtn;
    BitBtn7: TBitBtn;
    Agendamentos1: TMenuItem;
    BitBtn2: TBitBtn;
    Imagens1: TMenuItem;
    Imagem1: TMenuItem;
    procedure Cliente1Click(Sender: TObject);
    procedure Estado1Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure Grupo1Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure Vendedor1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure Compras1Click(Sender: TObject);
    procedure Login1Click(Sender: TObject);
    procedure Servicos1Click(Sender: TObject);
    procedure Cliente2Click(Sender: TObject);
    procedure Vendas2Click(Sender: TObject);
    procedure Compras2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Comp1Click(Sender: TObject);
    procedure Agendamento1Click(Sender: TObject);
    procedure Cliente3Click(Sender: TObject);
    procedure Agenda1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Entrada1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Cidade1Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure Produto2Click(Sender: TObject);
    procedure Usurio1Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure Memo2Change(Sender: TObject);
    procedure MemoChange(Sender: TObject);
    procedure Suporte1Click(Sender: TObject);
    procedure Suporte2Click(Sender: TObject);
    procedure Produtos2Click(Sender: TObject);
    procedure Servico1Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Agendamentos1Click(Sender: TObject);
    procedure Imagens1Click(Sender: TObject);
    procedure Parcelas1Click(Sender: TObject);
    procedure Imagem1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UDM, UfrmCliente, UfrmCidade, UfrmEstado, UfrmProduto, UfrmGrupo,
  UfrmFornecedor, UfrmVendedor, UfrmVenda, UfrmCompra, UfrmLogin,
  UfrmRelatorioProduto, UfrmRelatorioCliente, UfrmRelatorioVenda,
  UfrmRelatorioCompra, UfrmAgenda, UfrmConsultaCliente, UfrmConsultaAgenda, UfrmEntrada,
  UfrmConsultaProduto, UfrmCadastroUsuario, UfrmAjuda,
  UfrmSuporte, UfrmRelatorioServico, UfrmConsultaServico, UfrmRelatorioAgenda,
  UfrmImagemCliente, UfrmParcela, UfrmConsultaImagemCliente;

procedure TfrmPrincipal.Cidade1Click(Sender: TObject);
begin
if frmCidade =nil then
frmCidade := TfrmCidade.create(self);
frmCidade.ShowModal;
end;

procedure TfrmPrincipal.Cliente1Click(Sender: TObject);
begin
if frmCliente =nil then
frmCliente := TfrmCliente.create(self);
frmCliente.ShowModal;
end;

procedure TfrmPrincipal.Cliente2Click(Sender: TObject);
begin
if frmRelatorioCliente =nil then
frmRelatorioCliente := TfrmRelatorioCliente.create(self);
frmRelatorioCliente.rlRelCliente.preview();
end;

procedure TfrmPrincipal.Cliente3Click(Sender: TObject);
begin
if frmConsultaCliente =nil then
frmConsultaCliente := TfrmConsultaCliente.create(self);
frmConsultaCliente.ShowModal;
end;

procedure TfrmPrincipal.Comp1Click(Sender: TObject);
begin
if frmRelatorioCompra =nil then
frmRelatorioCompra := TfrmRelatorioCompra.create(self);
frmRelatorioCompra.rlRelCompra.preview();
end;

procedure TfrmPrincipal.Compras1Click(Sender: TObject);
begin
if frmCompra =nil then
frmCompra := TfrmCompra.create(self);
frmCompra.ShowModal;
end;

procedure TfrmPrincipal.Compras2Click(Sender: TObject);
begin
if frmRelatorioCompra =nil then
frmRelatorioCompra := TfrmRelatorioCompra.create(self);
frmRelatorioCompra.rlRelCompra.preview();
end;

procedure TfrmPrincipal.Entrada1Click(Sender: TObject);
begin
if frmEntrada =nil then
frmEntrada := TfrmEntrada.create(self);
frmEntrada.ShowModal;
end;

procedure TfrmPrincipal.Estado1Click(Sender: TObject);
begin
if frmEstado =nil then
frmEstado := TfrmEstado.create(self);
frmEstado.ShowModal;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
application.terminate;
end;

procedure TfrmPrincipal.Fornecedor1Click(Sender: TObject);
begin
if frmFornecedor =nil then
frmFornecedor := TfrmFornecedor.create(self);
frmFornecedor.ShowModal;
end;

procedure TfrmPrincipal.Grupo1Click(Sender: TObject);
begin
if frmGrupo =nil then
frmGrupo := TfrmGrupo.create(self);
frmGrupo.ShowModal;
end;

procedure TfrmPrincipal.Imagem1Click(Sender: TObject);
begin
  if frmConsultaImagemCliente =nil then
frmConsultaImagemCliente:= TfrmConsultaImagemCliente.create(self);
frmConsultaImagemCliente.ShowModal;
end;

procedure TfrmPrincipal.Imagens1Click(Sender: TObject);
begin
if frmImagemCliente =nil then
frmImagemCliente := TfrmImagemCliente.create(self);
frmImagemCliente.ShowModal;
end;

procedure TfrmPrincipal.Login1Click(Sender: TObject);
begin
if frmLogin =nil then
frmLogin := TfrmLogin.create(self);
frmLogin.ShowModal;
end;

procedure TfrmPrincipal.Memo2Change(Sender: TObject);
begin
DataModule1.fdQryMemo.open;
end;

procedure TfrmPrincipal.MemoChange(Sender: TObject);
begin
bitbtn11.enabled:=true;
end;

procedure TfrmPrincipal.Parcelas1Click(Sender: TObject);
begin
if frmParcela =nil then
frmParcela := TfrmParcela.create(self);
frmParcela.ShowModal;
end;

procedure TfrmPrincipal.Produto1Click(Sender: TObject);
begin
if frmProduto =nil then
frmProduto := TfrmProduto.create(self);
frmProduto.ShowModal;
end;

procedure TfrmPrincipal.Produto2Click(Sender: TObject);
begin
if frmConsultaProduto =nil then
frmConsultaProduto := TfrmConsultaProduto.create(self);
frmConsultaProduto.ShowModal;
end;

procedure TfrmPrincipal.Servico1Click(Sender: TObject);
begin
if frmConsultaServico =nil then
frmConsultaServico := TfrmConsultaServico.create(self);
frmConsultaServico.ShowModal;
end;

procedure TfrmPrincipal.Servicos1Click(Sender: TObject);
begin
if frmRelatorioServico =nil then
frmRelatorioServico := TfrmRelatorioServico.create(self);
frmRelatorioServico.rlRelServico.preview();
end;

procedure TfrmPrincipal.Produtos2Click(Sender: TObject);
begin
if frmRelatorioProduto =nil then
frmRelatorioProduto := TfrmRelatorioProduto.create(self);
frmRelatorioProduto.rlRelProduto.preview();
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
frmPrincipal.close;
end;

procedure TfrmPrincipal.Suporte1Click(Sender: TObject);
begin
if frmAjuda =nil then
frmAjuda := TfrmAjuda.create(self);
frmAjuda.ShowModal;
end;

procedure TfrmPrincipal.Suporte2Click(Sender: TObject);
begin
if frmSuporte =nil then
frmSuporte := TfrmSuporte.create(self);
frmSuporte.ShowModal;
end;

procedure TfrmPrincipal.Usurio1Click(Sender: TObject);
begin
if frmCadastroUsuario =nil then
frmCadastroUsuario := TfrmCadastroUsuario.create(self);
frmCadastroUsuario.ShowModal;
end;

procedure TfrmPrincipal.Vendas1Click(Sender: TObject);
begin
if frmVenda =nil then
frmVenda := TfrmVenda.create(self);
frmVenda.ShowModal;
end;

procedure TfrmPrincipal.Vendas2Click(Sender: TObject);
begin
if frmRelatorioVenda =nil then
frmRelatorioVenda := TfrmRelatorioVenda.create(self);
frmRelatorioVenda.rlRelVenda.preview();
end;

procedure TfrmPrincipal.Vendedor1Click(Sender: TObject);
begin
if frmVendedor =nil then
frmVendedor := TfrmVendedor.create(self);
frmVendedor.ShowModal;
end;

procedure TfrmPrincipal.Agenda1Click(Sender: TObject);
begin
if frmConsultaAgenda =nil then
frmConsultaAgenda := TfrmConsultaAgenda.create(self);
frmConsultaAgenda.ShowModal;
end;

procedure TfrmPrincipal.Agendamento1Click(Sender: TObject);
begin
if frmAgenda =nil then
frmAgenda := TfrmAgenda.create(self);
frmAgenda.ShowModal;
end;

procedure TfrmPrincipal.Agendamentos1Click(Sender: TObject);
begin
if frmRelatorioAgenda =nil then
frmRelatorioAgenda := TfrmRelatorioAgenda.create(self);
frmRelatorioAgenda.rlRelAgenda.preview();
end;

procedure TfrmPrincipal.BitBtn10Click(Sender: TObject);
begin
DataModule1.fdQryMemo.cancel;
end;

procedure TfrmPrincipal.BitBtn11Click(Sender: TObject);
begin
DataModule1.fdQryMemo.post;
DataModule1.fdQryMemo.close;
DataModule1.fdQryMemo.open;
bitbtn11.enabled:=false;
end;

procedure TfrmPrincipal.BitBtn12Click(Sender: TObject);
begin
if frmConsultaProduto =nil then
frmConsultaProduto := TfrmConsultaProduto.create(self);
frmConsultaProduto.ShowModal;
end;

procedure TfrmPrincipal.BitBtn1Click(Sender: TObject);
begin
if frmAgenda =nil then
frmAgenda := TfrmAgenda.create(self);
frmAgenda.ShowModal;
end;

procedure TfrmPrincipal.BitBtn2Click(Sender: TObject);
begin
if frmRelatorioAgenda =nil then
frmRelatorioAgenda := TfrmRelatorioAgenda.create(self);
frmRelatorioAgenda.rlRelAgenda.preview();
end;

procedure TfrmPrincipal.BitBtn3Click(Sender: TObject);
begin
if frmConsultaCliente =nil then
frmConsultaCliente := TfrmConsultaCliente.create(self);
frmConsultaCliente.ShowModal;
end;

procedure TfrmPrincipal.BitBtn4Click(Sender: TObject);
begin
if frmCliente =nil then
frmCliente := TfrmCliente.create(self);
frmCliente.ShowModal;
end;

procedure TfrmPrincipal.BitBtn5Click(Sender: TObject);
begin
if frmProduto =nil then
frmProduto := TfrmProduto.create(self);
frmProduto.ShowModal;
end;

procedure TfrmPrincipal.BitBtn6Click(Sender: TObject);
begin
if frmRelatorioCliente =nil then
frmRelatorioCliente := TfrmRelatorioCliente.create(self);
frmRelatorioCliente.rlRelCliente.preview();
end;

procedure TfrmPrincipal.BitBtn7Click(Sender: TObject);
begin
if frmConsultaAgenda =nil then
frmConsultaAgenda := TfrmConsultaAgenda.create(self);
frmConsultaAgenda.ShowModal;
end;

procedure TfrmPrincipal.BitBtn8Click(Sender: TObject);
begin
if frmConsultaServico =nil then
frmConsultaServico := TfrmConsultaServico.create(self);
frmConsultaServico.ShowModal;
end;

procedure TfrmPrincipal.BitBtn9Click(Sender: TObject);
begin
memo.Clear;
end;

end.

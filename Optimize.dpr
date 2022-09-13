program Optimize;





uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  Vcl.Themes,
  Vcl.Styles,
  UDM in 'UDM.pas' {DataModule1: TDataModule},
  UfrmModelo in 'UfrmModelo.pas' {frmModelo},
  UfrmCliente in 'UfrmCliente.pas' {frmCliente},
  UfrmCidade in 'UfrmCidade.pas' {frmCidade},
  UfrmEstado in 'UfrmEstado.pas' {frmEstado},
  UfrmProduto in 'UfrmProduto.pas' {frmProduto},
  UfrmGrupo in 'UfrmGrupo.pas' {frmGrupo},
  UfrmFornecedor in 'UfrmFornecedor.pas' {frmFornecedor},
  UfrmVendedor in 'UfrmVendedor.pas' {frmVendedor},
  UfrmVenda in 'UfrmVenda.pas' {frmVenda},
  UfrmCompra in 'UfrmCompra.pas' {frmCompra},
  UfrmRelatorioProduto in 'UfrmRelatorioProduto.pas' {frmRelatorioProduto},
  UfrmLogin in 'UfrmLogin.pas' {frmLogin},
  UfrmRelatorioCliente in 'UfrmRelatorioCliente.pas' {frmRelatorioCliente},
  UfrmRelatorioVenda in 'UfrmRelatorioVenda.pas' {frmRelatorioVenda},
  UfrmRelatorioCompra in 'UfrmRelatorioCompra.pas' {frmRelatorioCompra},
  UfrmAgenda in 'UfrmAgenda.pas' {frmAgenda},
  UfrmConsultaCliente in 'UfrmConsultaCliente.pas' {frmConsultaCliente},
  UfrmConsultaAgenda in 'UfrmConsultaAgenda.pas' {frmConsultaAgenda},
  UfrmEntrada in 'UfrmEntrada.pas' {frmEntrada},
  UfrmConsultaProduto in 'UfrmConsultaProduto.pas' {frmConsultaProduto},
  UfrmCadastroUsuario in 'UfrmCadastroUsuario.pas' {frmCadastroUsuario},
  UfrmRelatorioServico in 'UfrmRelatorioServico.pas' {frmRelatorioServico},
  UfrmSuporte in 'UfrmSuporte.pas' {frmSuporte},
  UfrmAjuda in 'UfrmAjuda.pas' {frmAjuda},
  UfrmConsultaServico in 'UfrmConsultaServico.pas' {frmConsultaServico},
  UfrmRelatorioAgenda in 'UfrmRelatorioAgenda.pas' {frmRelatorioAgenda},
  UfrmImagemCliente in 'UfrmImagemCliente.pas' {frmImagemCliente},
  UfrmParcela in 'UfrmParcela.pas' {frmParcela},
  UfrmConsultaImagemCliente in 'UfrmConsultaImagemCliente.pas' {frmConsultaImagemCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmImagemCliente, frmImagemCliente);
  Application.CreateForm(TfrmParcela, frmParcela);
  Application.CreateForm(TfrmConsultaImagemCliente, frmConsultaImagemCliente);
  Application.Run;
end.

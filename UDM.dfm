object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 765
  Width = 957
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 320
    Top = 8
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 440
    Top = 8
  end
  object fdconecta: TFDConnection
    Params.Strings = (
      'Database=sisoptimize_joni'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 536
    Top = 8
  end
  object fdQryCliente: TFDQuery
    Active = True
    Connection = fdconecta
    SQL.Strings = (
      
        'SELECT cli.*,cid.nm_cidade,est.nm_estado, est.uf FROM tb_cliente' +
        ' cli'
      'INNER JOIN tb_cidade cid ON cid.id_cidade=cli.fk_id_cidade '
      'INNER JOIN tb_estado est ON est.id_estado = cid.fk_id_estado'
      'ORDER BY nm_cliente;')
    Left = 53
    Top = 114
    object fdQryClienteid_cliente: TFDAutoIncField
      Alignment = taLeftJustify
      DisplayLabel = 'ID'
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdQryClientenm_cliente: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'nm_cliente'
      Origin = 'nm_cliente'
      Size = 55
    end
    object fdQryClientecpf_cliente: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CPF'
      FieldName = 'cpf_cliente'
      Origin = 'cpf_cliente'
      EditMask = '!999.999.999-99;0;'
      Size = 11
    end
    object fdQryClientelimite_cliente: TFloatField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      DisplayLabel = 'Limite'
      FieldName = 'limite_cliente'
      Origin = 'limite_cliente'
      currency = True
    end
    object fdQryClientefk_id_cidade: TIntegerField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cidade'
      FieldName = 'fk_id_cidade'
      Origin = 'fk_id_cidade'
    end
    object fdQryClientenm_cidade: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cidade'
      FieldName = 'nm_cidade'
      Origin = 'nm_cidade'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
    object fdQryClientenm_estado: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Estado'
      FieldName = 'nm_estado'
      Origin = 'nm_estado'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
    object fdQryClienteuf: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UF'
      FieldName = 'uf'
      Origin = 'uf'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
    object fdQryClientetelefone: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Origin = 'telefone'
      EditMask = '0000\-0000;1;_'
      Size = 15
    end
    object fdQryClientecelular: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Celular'
      FieldName = 'celular'
      Origin = 'celular'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 15
    end
    object fdQryClientedata_nasc: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nasc.'
      FieldName = 'data_nasc'
      Origin = 'data_nasc'
      EditMask = '!99/99/0000;1;_'
    end
    object fdQryClientequeixa_cliente: TMemoField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Queixa do Cliente:'
      FieldName = 'queixa_cliente'
      Origin = 'queixa_cliente'
      BlobType = ftMemo
    end
    object fdQryClienteanalise_problema: TMemoField
      AutoGenerateValue = arDefault
      DisplayLabel = 'An'#225'lise do Problema:'
      FieldName = 'analise_problema'
      Origin = 'analise_problema'
      BlobType = ftMemo
    end
    object fdQryClientedescricao_tratamento: TMemoField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o do Tratamento e Cuidados:'
      FieldName = 'descricao_tratamento'
      Origin = 'descricao_tratamento'
      BlobType = ftMemo
    end
    object fdQryClienteobs: TMemoField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Observa'#231#245'es:'
      FieldName = 'obs'
      Origin = 'obs'
      BlobType = ftMemo
    end
    object fdQryClientefoto_cliente: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'foto_cliente'
      Origin = 'foto_cliente'
    end
  end
  object dsCliente: TDataSource
    DataSet = fdQryCliente
    Left = 157
    Top = 114
  end
  object fdQryCidade: TFDQuery
    Active = True
    Connection = fdconecta
    SQL.Strings = (
      'SELECT cid.*, est.nm_estado,est.uf FROM tb_cidade cid'
      'INNER JOIN tb_estado est ON est.id_estado = cid.fk_id_estado'
      'ORDER BY nm_cidade;')
    Left = 53
    Top = 219
    object fdQryCidadeid_cidade: TFDAutoIncField
      Alignment = taLeftJustify
      DisplayLabel = 'ID'
      FieldName = 'id_cidade'
      Origin = 'id_cidade'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdQryCidadenm_cidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'nm_cidade'
      Origin = 'nm_cidade'
      Required = True
      Size = 55
    end
    object fdQryCidadefk_id_estado: TIntegerField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      DisplayLabel = 'Estado'
      FieldName = 'fk_id_estado'
      Origin = 'fk_id_estado'
    end
    object fdQryCidadenm_estado: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Estado'
      FieldName = 'nm_estado'
      Origin = 'nm_estado'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
    object fdQryCidadeuf: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UF'
      FieldName = 'uf'
      Origin = 'uf'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
  end
  object dsCidade: TDataSource
    DataSet = fdQryCidade
    Left = 157
    Top = 219
  end
  object fdQryEstado: TFDQuery
    Active = True
    Connection = fdconecta
    SQL.Strings = (
      'SELECT * FROM tb_estado'
      'ORDER BY nm_estado;')
    Left = 53
    Top = 275
    object fdQryEstadoid_estado: TFDAutoIncField
      Alignment = taLeftJustify
      DisplayLabel = 'ID'
      FieldName = 'id_estado'
      Origin = 'id_estado'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdQryEstadonm_estado: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Estado'
      FieldName = 'nm_estado'
      Origin = 'nm_estado'
      Size = 55
    end
    object fdQryEstadouf: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UF'
      FieldName = 'uf'
      Origin = 'uf'
      Size = 55
    end
  end
  object dsEstado: TDataSource
    DataSet = fdQryEstado
    Left = 157
    Top = 275
  end
  object fdQryProduto: TFDQuery
    Active = True
    Connection = fdconecta
    SQL.Strings = (
      'SELECT prod.*, gru.nm_grupo,uni.nm_unidade FROM tb_produto prod'
      'INNER JOIN tb_grupo gru ON gru.id_grupo = prod.fk_id_grupo'
      'INNER JOIN tb_unidade uni ON uni.id_unidade = prod.fk_id_unidade'
      'ORDER BY nm_produto;')
    Left = 53
    Top = 331
    object fdQryProdutoid_produto: TFDAutoIncField
      Alignment = taLeftJustify
      DisplayLabel = 'ID'
      DisplayWidth = 4
      FieldName = 'id_produto'
      Origin = 'id_produto'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdQryProdutonm_produto: TStringField
      DisplayLabel = 'Servi'#231'o'
      DisplayWidth = 20
      FieldName = 'nm_produto'
      Origin = 'nm_produto'
      Required = True
      Size = 55
    end
    object fdQryProdutoprecocompra: TFloatField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      DisplayLabel = 'Pre'#231'o Compra'
      DisplayWidth = 11
      FieldName = 'precocompra'
      Origin = 'precocompra'
      currency = True
    end
    object fdQryProdutoprecovenda: TFloatField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor'
      DisplayWidth = 10
      FieldName = 'precovenda'
      Origin = 'precovenda'
      currency = True
    end
    object fdQryProdutonm_grupo: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Grupo'
      DisplayWidth = 55
      FieldName = 'nm_grupo'
      Origin = 'nm_grupo'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
    object fdQryProdutonm_unidade: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Unidade'
      DisplayWidth = 23
      FieldName = 'nm_unidade'
      Origin = 'nm_unidade'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
    object fdQryProdutoqti_estoque: TFloatField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      DisplayLabel = 'Estoque'
      DisplayWidth = 10
      FieldName = 'qti_estoque'
      Origin = 'qti_estoque'
    end
    object fdQryProdutofk_id_grupo: TIntegerField
      Alignment = taLeftJustify
      DisplayWidth = 10
      FieldName = 'fk_id_grupo'
      Origin = 'fk_id_grupo'
      Required = True
    end
    object fdQryProdutofk_id_unidade: TIntegerField
      Alignment = taLeftJustify
      DisplayWidth = 11
      FieldName = 'fk_id_unidade'
      Origin = 'fk_id_unidade'
      Required = True
    end
    object fdQryProdutofoto_produto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'foto_produto'
      Origin = 'foto_produto'
    end
  end
  object dsProduto: TDataSource
    DataSet = fdQryProduto
    Left = 157
    Top = 331
  end
  object fdQryGrupo: TFDQuery
    Active = True
    Connection = fdconecta
    SQL.Strings = (
      'SELECT * FROM tb_grupo'
      'ORDER BY nm_grupo;')
    Left = 53
    Top = 443
    object fdQryGrupoid_grupo: TFDAutoIncField
      Alignment = taLeftJustify
      DisplayLabel = 'ID'
      DisplayWidth = 10
      FieldName = 'id_grupo'
      Origin = 'id_grupo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdQryGruponm_grupo: TStringField
      DisplayLabel = 'Grupo'
      DisplayWidth = 38
      FieldName = 'nm_grupo'
      Origin = 'nm_grupo'
      Required = True
      Size = 55
    end
  end
  object dsGrupo: TDataSource
    DataSet = fdQryGrupo
    Left = 157
    Top = 443
  end
  object fdQryUnidade: TFDQuery
    Active = True
    Filtered = True
    Connection = fdconecta
    SQL.Strings = (
      'SELECT * FROM tb_unidade'
      'ORDER BY nm_unidade;')
    Left = 54
    Top = 499
    object fdQryUnidadeid_unidade: TFDAutoIncField
      Alignment = taLeftJustify
      DisplayLabel = 'Identificador'
      FieldName = 'id_unidade'
      Origin = 'id_unidade'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdQryUnidadenm_unidade: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nm_unidade'
      Origin = 'nm_unidade'
      Required = True
      Size = 55
    end
    object fdQryUnidadesigla: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'sigla'
      Origin = 'sigla'
      Required = True
      Size = 10
    end
  end
  object dsUnidade: TDataSource
    DataSet = fdQryUnidade
    Left = 157
    Top = 499
  end
  object fdQryFornecedor: TFDQuery
    Active = True
    Connection = fdconecta
    SQL.Strings = (
      'SELECT forn.*,cid.nm_cidade FROM tb_fornecedor forn'
      'INNER JOIN tb_cidade cid ON cid.id_cidade = forn.fk_id_cidade'
      'ORDER BY nm_fornecedor;')
    Left = 53
    Top = 387
    object fdQryFornecedorid_fornecedor: TFDAutoIncField
      Alignment = taLeftJustify
      DisplayLabel = 'ID'
      FieldName = 'id_fornecedor'
      Origin = 'id_fornecedor'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdQryFornecedornm_fornecedor: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fornecedor'
      FieldName = 'nm_fornecedor'
      Origin = 'nm_fornecedor'
      Size = 55
    end
    object fdQryFornecedorcnpj_fornecedor: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CNPJ'
      FieldName = 'cnpj_fornecedor'
      Origin = 'cnpj_fornecedor'
      EditMask = '!99.999.999./9999-99;0;'
      Size = 55
    end
    object fdQryFornecedorinsest_fornecedor: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      FieldName = 'insest_fornecedor'
      Origin = 'insest_fornecedor'
      Size = 55
    end
    object fdQryFornecedorfk_id_cidade: TIntegerField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cidade'
      FieldName = 'fk_id_cidade'
      Origin = 'fk_id_cidade'
    end
    object fdQryFornecedornm_cidade: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cidade'
      FieldName = 'nm_cidade'
      Origin = 'nm_cidade'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
  end
  object dsFornecedor: TDataSource
    DataSet = fdQryFornecedor
    Left = 157
    Top = 387
  end
  object fdQryVendedor: TFDQuery
    Connection = fdconecta
    SQL.Strings = (
      'SELECT * FROM tb_vendedor')
    Left = 281
    Top = 660
    object fdQryVendedorid_vendedor: TFDAutoIncField
      Alignment = taLeftJustify
      DisplayLabel = 'Identificador'
      FieldName = 'id_vendedor'
      Origin = 'id_vendedor'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdQryVendedornm_vendedor: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nm_vendedor'
      Origin = 'nm_vendedor'
      Required = True
      Size = 55
    end
    object fdQryVendedorpercentual: TFloatField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      DisplayLabel = 'Percentual'
      FieldName = 'percentual'
      Origin = 'percentual'
    end
  end
  object dsVendedor: TDataSource
    DataSet = fdQryVendedor
    Left = 281
    Top = 708
  end
  object fdQryVenda: TFDQuery
    Connection = fdconecta
    SQL.Strings = (
      'SELECT * FROM tb_pedido')
    Left = 200
    Top = 661
    object fdQryVendaid_pedido: TFDAutoIncField
      Alignment = taLeftJustify
      DisplayLabel = 'Identificador'
      FieldName = 'id_pedido'
      Origin = 'id_pedido'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdQryVendadt_pedido: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data'
      FieldName = 'dt_pedido'
      Origin = 'dt_pedido'
    end
    object fdQryVendafk_id_vendedor: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Vendedor'
      FieldName = 'fk_id_vendedor'
      Origin = 'fk_id_vendedor'
      Required = True
    end
    object fdQryVendafk_id_cliente: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Cliente'
      FieldName = 'fk_id_cliente'
      Origin = 'fk_id_cliente'
      Required = True
    end
  end
  object fdQryParcela: TFDQuery
    Active = True
    MasterSource = dsAgenda
    MasterFields = 'id_agenda'
    Connection = fdconecta
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM tb_parcela')
    Left = 689
    Top = 258
    object fdQryParcelaid_parcela: TFDAutoIncField
      FieldName = 'id_parcela'
      ReadOnly = True
    end
    object fdQryParcelanm_parcela: TStringField
      FieldName = 'nm_parcela'
      Size = 55
    end
    object fdQryParcelavalor_parcela: TFloatField
      FieldName = 'valor_parcela'
    end
  end
  object dsParcela: TDataSource
    DataSet = fdQryParcela
    Left = 769
    Top = 258
  end
  object fdQryItensVenda: TFDQuery
    IndexFieldNames = 'fk_id_pedido'
    MasterSource = frmVenda.ds
    MasterFields = 'id_pedido'
    DetailFields = 'fk_id_pedido'
    Connection = fdconecta
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM tb_itens_venda WHERE fk_id_pedido= :id_pedido;')
    Left = 35
    Top = 661
    ParamData = <
      item
        Name = 'ID_PEDIDO'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = Null
      end>
    object fdQryItensVendaid_itens_venda: TFDAutoIncField
      Alignment = taLeftJustify
      DisplayLabel = 'Identificador'
      FieldName = 'id_itens_venda'
      Origin = 'id_itens_venda'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdQryItensVendafk_id_pedido: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Pedido'
      FieldName = 'fk_id_pedido'
      Origin = 'fk_id_pedido'
      Required = True
    end
    object fdQryItensVendafk_id_produto: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Produto'
      FieldName = 'fk_id_produto'
      Origin = 'fk_id_produto'
      Required = True
    end
    object fdQryItensVendaqti_venda: TFloatField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      DisplayLabel = 'Qtd Venda'
      FieldName = 'qti_venda'
      Origin = 'qti_venda'
    end
    object fdQryItensVendaprecouni: TFloatField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      DisplayLabel = 'Preco Uni'
      FieldName = 'precouni'
      Origin = 'precouni'
      currency = True
    end
  end
  object dsItensVenda: TDataSource
    DataSet = fdQryItensVenda
    Left = 35
    Top = 709
  end
  object fdQryCompra: TFDQuery
    Active = True
    Connection = fdconecta
    SQL.Strings = (
      'SELECT * FROM tb_compra')
    Left = 695
    Top = 660
    object fdQryCompraid_compra: TFDAutoIncField
      Alignment = taLeftJustify
      DisplayLabel = 'Identificador'
      FieldName = 'id_compra'
      Origin = 'id_compra'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdQryCompradt_compra: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data'
      FieldName = 'dt_compra'
      Origin = 'dt_compra'
    end
    object fdQryComprafk_id_comprador: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Comprador'
      FieldName = 'fk_id_comprador'
      Origin = 'fk_id_comprador'
      Required = True
    end
    object fdQryComprafk_id_fornecedor: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Fornecedor'
      FieldName = 'fk_id_fornecedor'
      Origin = 'fk_id_fornecedor'
      Required = True
    end
  end
  object fdQryRelProduto: TFDQuery
    Active = True
    Connection = fdconecta
    SQL.Strings = (
      'SELECT prod.id_produto,'
      'prod.nm_produto, gru.nm_grupo,'
      'prod.precocompra,'
      'prod.precovenda FROM tb_produto prod INNER JOIN'
      'tb_grupo gru ON'
      'prod.fk_id_grupo=gru.id_grupo;')
    Left = 691
    Top = 423
    object fdQryRelProdutoid_produto: TFDAutoIncField
      FieldName = 'id_produto'
      Origin = 'id_produto'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdQryRelProdutonm_produto: TStringField
      FieldName = 'nm_produto'
      Origin = 'nm_produto'
      Required = True
      Size = 55
    end
    object fdQryRelProdutonm_grupo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nm_grupo'
      Origin = 'nm_grupo'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
    object fdQryRelProdutoprecocompra: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'precocompra'
      Origin = 'precocompra'
    end
    object fdQryRelProdutoprecovenda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'precovenda'
      Origin = 'precovenda'
      currency = True
    end
  end
  object dsRelProduto: TDataSource
    DataSet = fdQryRelProduto
    Left = 771
    Top = 423
  end
  object fdQryRelCliente: TFDQuery
    Active = True
    Connection = fdconecta
    SQL.Strings = (
      
        'SELECT cli.id_cliente, cli.nm_cliente, cli.celular, cid.nm_cidad' +
        'e,'
      'cli.cpf_cliente, cli.limite_cliente, cid.id_cidade, est.uf'
      'FROM tb_cliente cli'
      'INNER JOIN tb_cidade cid ON cid.id_cidade=cli.fk_id_cidade'
      'INNER JOIN tb_estado est ON est.id_estado=cid.fk_id_estado;')
    Left = 691
    Top = 367
  end
  object dsRelCliente: TDataSource
    DataSet = fdQryRelCliente
    Left = 771
    Top = 367
  end
  object dsVenda: TDataSource
    DataSet = fdQryVenda
    Left = 201
    Top = 709
  end
  object dsCompra: TDataSource
    DataSet = fdQryCompra
    Left = 695
    Top = 708
  end
  object fdQryRelVenda: TFDQuery
    Connection = fdconecta
    SQL.Strings = (
      
        'SELECT ped.id_pedido, ped.dt_pedido, cli.nm_cliente FROM tb_pedi' +
        'do ped'
      'INNER JOIN tb_cliente cli ON cli.id_cliente = ped.fk_id_cliente;')
    Left = 121
    Top = 661
  end
  object fdQryRelItensVenda: TFDQuery
    MasterSource = dsRelVenda
    MasterFields = 'id_pedido'
    Connection = fdconecta
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT itv.fk_id_produto,'
      'prod.nm_produto, itv.qti_venda,'
      'prod.precovenda, itv.qti_venda * prod.precovenda total'
      'FROM tb_itens_venda itv INNER JOIN tb_produto prod'
      'ON prod.id_produto = itv.fk_id_produto'
      'INNER JOIN tb_pedido ped ON'
      'itv.fk_id_pedido = :id_pedido;')
    Left = 383
    Top = 660
    ParamData = <
      item
        Name = 'ID_PEDIDO'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsRelVenda: TDataSource
    DataSet = fdQryRelVenda
    Left = 121
    Top = 709
  end
  object dsRelItensVenda: TDataSource
    DataSet = fdQryRelItensVenda
    Left = 383
    Top = 708
  end
  object fdQryLogin: TFDQuery
    Active = True
    Connection = fdconecta
    SQL.Strings = (
      'SELECT * FROM tb_login')
    Left = 689
    Top = 34
    object fdQryLoginlogin: TStringField
      FieldName = 'login'
      Size = 55
    end
    object fdQryLoginsenha: TStringField
      FieldName = 'senha'
      Size = 55
    end
  end
  object dsLogin: TDataSource
    DataSet = fdQryLogin
    Left = 769
    Top = 34
  end
  object fdQryRelCompra: TFDQuery
    Connection = fdconecta
    SQL.Strings = (
      
        'SELECT itc.id_itens_compra, cmp.id_compra, cmp.dt_compra, itc.qt' +
        'i_compra, fornec.nm_fornecedor '
      'FROM tb_itens_compra itc'
      'INNER JOIN tb_compra cmp ON cmp.id_compra = itc.fk_id_compra'
      
        'INNER JOIN tb_fornecedor fornec ON fornec.id_fornecedor= cmp.fk_' +
        'id_fornecedor;')
    Left = 490
    Top = 660
  end
  object dsRelCompra: TDataSource
    DataSet = fdQryRelCompra
    Left = 491
    Top = 709
  end
  object fdQryRelItensCompra: TFDQuery
    MasterSource = dsRelCompra
    MasterFields = 'id_compra'
    Connection = fdconecta
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT itc.fk_id_produto,'
      'prod.nm_produto, itc.qti_compra,'
      'prod.precocompra, itc.qti_compra * prod.precocompra total'
      'FROM tb_itens_compra itc INNER JOIN tb_produto prod'
      'ON prod.id_produto = itc.fk_id_produto'
      'INNER JOIN tb_compra cmp ON'
      'itc.fk_id_compra = :id_compra;')
    Left = 795
    Top = 660
    ParamData = <
      item
        Name = 'ID_COMPRA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsRelItensCompra: TDataSource
    DataSet = fdQryRelItensCompra
    Left = 796
    Top = 707
  end
  object fdQryItensCompra: TFDQuery
    MasterSource = frmCompra.ds
    MasterFields = 'id_compra'
    Connection = fdconecta
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM tb_itens_compra WHERE fk_id_compra= :id_compra;')
    Left = 596
    Top = 660
    ParamData = <
      item
        Name = 'ID_COMPRA'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = Null
      end>
    object fdQryItensCompraid_itens_compra: TFDAutoIncField
      Alignment = taLeftJustify
      FieldName = 'id_itens_compra'
      Origin = 'id_itens_compra'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdQryItensComprafk_id_compra: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'fk_id_compra'
      Origin = 'fk_id_compra'
      Required = True
    end
    object fdQryItensComprafk_id_produto: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'fk_id_produto'
      Origin = 'fk_id_produto'
      Required = True
    end
    object fdQryItensCompraqti_compra: TFloatField
      Alignment = taLeftJustify
      FieldName = 'qti_compra'
      Origin = 'qti_compra'
      Required = True
    end
    object fdQryItensCompraprecouni: TFloatField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      FieldName = 'precouni'
      Origin = 'precouni'
    end
  end
  object dsItensCompra: TDataSource
    DataSet = fdQryItensCompra
    Left = 596
    Top = 708
  end
  object fdQryAgenda: TFDQuery
    Active = True
    Connection = fdconecta
    SQL.Strings = (
      
        'SELECT age.*, prod.nm_produto, cli.nm_cliente, st.nm_status FROM' +
        ' tb_agenda age'
      
        'INNER JOIN tb_produto prod ON prod.id_produto = age.fk_id_produt' +
        'o'
      'INNER JOIN tb_cliente cli ON cli.id_cliente = age.fk_id_cliente'
      'INNER JOIN tb_status st ON st.id_status = age.fk_id_status'
      'order by dia_atendimento desc;')
    Left = 54
    Top = 555
    object fdQryAgendaid_agenda: TFDAutoIncField
      Alignment = taLeftJustify
      DisplayLabel = 'ID'
      FieldName = 'id_agenda'
      Origin = 'id_agenda'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdQryAgendadia_atendimento: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dia'
      FieldName = 'dia_atendimento'
      Origin = 'dia_atendimento'
      EditMask = '!99/99/9900;1;_'
    end
    object fdQryAgendahora_atendimento: TTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Hora'
      FieldName = 'hora_atendimento'
      Origin = 'hora_atendimento'
      EditMask = '!90:00;1;_'
    end
    object Agendamento: TSQLTimeStampField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Agendamento'
      FieldName = 'data_agendamento'
      Origin = 'data_agendamento'
    end
    object fdQryAgendanm_produto: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'nm_produto'
      Origin = 'nm_produto'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
    object fdQryAgendanm_cliente: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cliente'
      FieldName = 'nm_cliente'
      Origin = 'nm_cliente'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
    object fdQryAgendafk_id_status: TIntegerField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      FieldName = 'fk_id_status'
      Origin = 'fk_id_status'
    end
    object fdQryAgendaprecouni: TFloatField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor'
      FieldName = 'precouni'
      Origin = 'precouni'
      currency = True
    end
    object fdQryAgendafk_id_produto: TIntegerField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      FieldName = 'fk_id_produto'
      Origin = 'fk_id_produto'
    end
    object fdQryAgendafk_id_cliente: TIntegerField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      FieldName = 'fk_id_cliente'
      Origin = 'fk_id_cliente'
    end
    object fdQryAgendanm_status: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'nm_status'
      Origin = 'nm_status'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object fdQryAgendafk_id_parcela: TIntegerField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      FieldName = 'fk_id_parcela'
      Origin = 'fk_id_parcela'
    end
    object fdQryAgendavalor_parcela: TFloatField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      FieldName = 'valor_parcela'
      Origin = 'valor_parcela'
      currency = True
    end
    object fdQryAgendavalor_entrada: TFloatField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      FieldName = 'valor_entrada'
      Origin = 'valor_entrada'
      currency = True
    end
    object fdQryAgendadata_pagamento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_pagamento'
      Origin = 'data_pagamento'
      EditMask = '!99/99/0000;1;_'
    end
    object fdQryAgendadata_vencimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_vencimento'
      Origin = 'data_vencimento'
      EditMask = '!99/99/0000;1;_'
    end
  end
  object dsAgenda: TDataSource
    DataSet = fdQryAgenda
    Left = 157
    Top = 555
  end
  object fdQryRelAgenda: TFDQuery
    Active = True
    Connection = fdconecta
    SQL.Strings = (
      
        'SELECT age.*, prod.nm_produto,cli.nm_cliente, precouni*1 totserv' +
        ' FROM tb_agenda age'
      
        'INNER JOIN tb_produto prod ON prod.id_produto = age.fk_id_produt' +
        'o'
      'INNER JOIN tb_cliente cli ON cli.id_cliente = age.fk_id_cliente'
      'ORDER BY nm_cliente;')
    Left = 692
    Top = 535
    object fdQryRelAgendaid_agenda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_agenda'
      Origin = 'id_agenda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdQryRelAgendadia_atendimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dia_atendimento'
      Origin = 'dia_atendimento'
    end
    object fdQryRelAgendahora_atendimento: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'hora_atendimento'
      Origin = 'hora_atendimento'
    end
    object fdQryRelAgendafk_id_produto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'fk_id_produto'
      Origin = 'fk_id_produto'
    end
    object fdQryRelAgendafk_id_cliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'fk_id_cliente'
      Origin = 'fk_id_cliente'
    end
    object fdQryRelAgendadata_agendamento: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'data_agendamento'
      Origin = 'data_agendamento'
    end
    object fdQryRelAgendaprecouni: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'precouni'
      Origin = 'precouni'
      currency = True
    end
    object fdQryRelAgendafk_id_status: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'fk_id_status'
      Origin = 'fk_id_status'
    end
    object fdQryRelAgendanm_produto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nm_produto'
      Origin = 'nm_produto'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
    object fdQryRelAgendanm_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nm_cliente'
      Origin = 'nm_cliente'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
    object fdQryRelAgendatotserv: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'totserv'
      Origin = 'totserv'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
  end
  object dsRelAgenda: TDataSource
    DataSet = fdQryRelAgenda
    Left = 772
    Top = 535
  end
  object fdQryEntrada: TFDQuery
    Active = True
    Connection = fdconecta
    SQL.Strings = (
      
        'SELECT ent.*, forn.nm_fornecedor, prod.nm_produto FROM tb_entrad' +
        'a ent'
      
        'INNER JOIN tb_fornecedor forn ON forn.id_fornecedor = ent.fk_id_' +
        'fornecedor'
      
        'INNER JOIN tb_produto prod ON prod.id_produto = ent.fk_id_produt' +
        'o;')
    Left = 689
    Top = 202
    object fdQryEntradaid_entrada: TFDAutoIncField
      Alignment = taLeftJustify
      DisplayLabel = 'ID'
      FieldName = 'id_entrada'
      Origin = 'id_entrada'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdQryEntradaprecocomp: TFloatField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      DisplayLabel = 'Pre'#231'o Compra'
      FieldName = 'precocomp'
      Origin = 'precocomp'
      currency = True
    end
    object fdQryEntradadata: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data Entrada'
      FieldName = 'data'
      Origin = 'data'
      EditMask = '!99/99/9900;1;_'
    end
    object fdQryEntradaqti_entrada: TFloatField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      DisplayLabel = 'Quantidade'
      FieldName = 'qti_entrada'
      Origin = 'qti_entrada'
    end
    object fdQryEntradafk_id_fornecedor: TIntegerField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      FieldName = 'fk_id_fornecedor'
      Origin = 'fk_id_fornecedor'
    end
    object fdQryEntradafk_id_produto: TIntegerField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      FieldName = 'fk_id_produto'
      Origin = 'fk_id_produto'
    end
    object fdQryEntradanm_fornecedor: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fornecedor'
      FieldName = 'nm_fornecedor'
      Origin = 'nm_fornecedor'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
    object fdQryEntradanm_produto: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Produto'
      FieldName = 'nm_produto'
      Origin = 'nm_produto'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
  end
  object dsEntrada: TDataSource
    DataSet = fdQryEntrada
    Left = 769
    Top = 202
  end
  object fdQryItensAgenda: TFDQuery
    Active = True
    MasterSource = dsAgenda
    MasterFields = 'id_agenda'
    Connection = fdconecta
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM tb_itens_agenda WHERE fk_id_agenda = :id_agenda;')
    Left = 371
    Top = 331
    ParamData = <
      item
        Name = 'ID_AGENDA'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 9
      end>
    object fdQryItensAgendaid_itens_agenda: TFDAutoIncField
      Alignment = taLeftJustify
      DisplayLabel = 'Identificador'
      FieldName = 'id_itens_agenda'
      Origin = 'id_itens_agenda'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdQryItensAgendafk_id_produto: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Produto'
      FieldName = 'fk_id_produto'
      Origin = 'fk_id_produto'
      Required = True
    end
    object fdQryItensAgendaqti_venda: TFloatField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      DisplayLabel = 'Quantidade Venda'
      FieldName = 'qti_venda'
      Origin = 'qti_venda'
    end
    object fdQryItensAgendaprecouni: TFloatField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor'
      FieldName = 'precouni'
      Origin = 'precouni'
    end
    object fdQryItensAgendafk_id_agenda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'fk_id_agenda'
      Origin = 'fk_id_agenda'
    end
    object fdQryItensAgendanm_parcela: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nm_parcela'
      Origin = 'nm_parcela'
      Size = 55
    end
    object fdQryItensAgendavalor_parcela: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor_parcela'
      Origin = 'valor_parcela'
    end
    object fdQryItensAgendavalor_entrada: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor_entrada'
      Origin = 'valor_entrada'
    end
    object fdQryItensAgendadata_pagamento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_pagamento'
      Origin = 'data_pagamento'
    end
    object fdQryItensAgendadata_vencimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_vencimento'
      Origin = 'data_vencimento'
    end
  end
  object dsItensAgenda: TDataSource
    DataSet = fdQryItensAgenda
    Left = 483
    Top = 331
  end
  object fdQryProdutoAgenda: TFDQuery
    Active = True
    MasterSource = dsAgenda
    MasterFields = 'id_agenda'
    Connection = fdconecta
    SQL.Strings = (
      'SELECT prod.*, gru.nm_grupo,uni.nm_unidade FROM tb_produto prod'
      'INNER JOIN tb_grupo gru ON gru.id_grupo = prod.fk_id_grupo'
      
        'INNER JOIN tb_unidade uni ON uni.id_unidade = prod.fk_id_unidade' +
        ';')
    Left = 371
    Top = 387
    object fdQryProdutoAgendaid_produto: TFDAutoIncField
      Alignment = taLeftJustify
      DisplayLabel = 'ID'
      FieldName = 'id_produto'
      Origin = 'id_produto'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdQryProdutoAgendanm_produto: TStringField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'nm_produto'
      Origin = 'nm_produto'
      Required = True
      Size = 55
    end
    object fdQryProdutoAgendaprecovenda: TFloatField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor'
      FieldName = 'precovenda'
      Origin = 'precovenda'
      currency = True
    end
    object fdQryProdutoAgendaprecocompra: TFloatField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      DisplayLabel = 'Pre'#231'o Compra'
      FieldName = 'precocompra'
      Origin = 'precocompra'
      currency = True
    end
    object fdQryProdutoAgendaqti_estoque: TFloatField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      DisplayLabel = 'Estoque'
      FieldName = 'qti_estoque'
      Origin = 'qti_estoque'
    end
    object fdQryProdutoAgendanm_grupo: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Grupo'
      FieldName = 'nm_grupo'
      Origin = 'nm_grupo'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
    object fdQryProdutoAgendanm_unidade: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Unidade'
      FieldName = 'nm_unidade'
      Origin = 'nm_unidade'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
    object fdQryProdutoAgendafk_id_grupo: TIntegerField
      FieldName = 'fk_id_grupo'
      Origin = 'fk_id_grupo'
      Required = True
    end
    object fdQryProdutoAgendafk_id_unidade: TIntegerField
      FieldName = 'fk_id_unidade'
      Origin = 'fk_id_unidade'
      Required = True
    end
  end
  object dsProdutoAgenda: TDataSource
    DataSet = fdQryProdutoAgenda
    Left = 483
    Top = 387
  end
  object fdQryConsultaCliente: TFDQuery
    Active = True
    Connection = fdconecta
    SQL.Strings = (
      
        'SELECT cli.*,cid.nm_cidade,est.nm_estado, est.uf FROM tb_cliente' +
        ' cli'
      'INNER JOIN tb_cidade cid ON cid.id_cidade=cli.fk_id_cidade '
      'INNER JOIN tb_estado est ON est.id_estado = cid.fk_id_estado'
      'ORDER BY nm_cliente;')
    Left = 371
    Top = 83
    object fdQryConsultaClienteid_cliente: TFDAutoIncField
      Alignment = taLeftJustify
      DisplayLabel = 'ID'
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdQryConsultaClientenm_cliente: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'nm_cliente'
      Origin = 'nm_cliente'
      Size = 55
    end
    object fdQryConsultaClientecpf_cliente: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CPF'
      FieldName = 'cpf_cliente'
      Origin = 'cpf_cliente'
      EditMask = '!999.999.999-99;0;'
      Size = 11
    end
    object fdQryConsultaClientelimite_cliente: TFloatField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      DisplayLabel = 'Limite'
      FieldName = 'limite_cliente'
      Origin = 'limite_cliente'
      currency = True
    end
    object fdQryConsultaClientenm_cidade: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cidade'
      FieldName = 'nm_cidade'
      Origin = 'nm_cidade'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
    object fdQryConsultaClientenm_estado: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Estado'
      FieldName = 'nm_estado'
      Origin = 'nm_estado'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
    object fdQryConsultaClienteuf: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UF'
      FieldName = 'uf'
      Origin = 'uf'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
    object fdQryConsultaClientetelefone: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Origin = 'telefone'
      EditMask = '0000\-0000;1;_'
      Size = 15
    end
    object fdQryConsultaClientecelular: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Celular'
      FieldName = 'celular'
      Origin = 'celular'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 15
    end
  end
  object dsConsultaCliente: TDataSource
    DataSet = fdQryConsultaCliente
    Left = 483
    Top = 83
  end
  object fdQryConsultaProduto: TFDQuery
    Active = True
    Connection = fdconecta
    SQL.Strings = (
      'SELECT prod.*, gru.nm_grupo,uni.nm_unidade FROM tb_produto prod'
      'INNER JOIN tb_grupo gru ON gru.id_grupo = prod.fk_id_grupo'
      'INNER JOIN tb_unidade uni ON uni.id_unidade = prod.fk_id_unidade'
      'ORDER BY nm_produto;')
    Left = 371
    Top = 139
    object fdQryConsultaProdutoid_produto: TFDAutoIncField
      Alignment = taLeftJustify
      DisplayLabel = 'ID'
      FieldName = 'id_produto'
      Origin = 'id_produto'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdQryConsultaProdutonm_produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'nm_produto'
      Origin = 'nm_produto'
      Required = True
      Size = 55
    end
    object fdQryConsultaProdutoprecovenda: TFloatField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor'
      FieldName = 'precovenda'
      Origin = 'precovenda'
      currency = True
    end
    object fdQryConsultaProdutoqti_estoque: TFloatField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      DisplayLabel = 'Estoque'
      FieldName = 'qti_estoque'
      Origin = 'qti_estoque'
    end
    object fdQryConsultaProdutonm_grupo: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Grupo'
      FieldName = 'nm_grupo'
      Origin = 'nm_grupo'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
    object fdQryConsultaProdutonm_unidade: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Unidade'
      FieldName = 'nm_unidade'
      Origin = 'nm_unidade'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
  end
  object dsConsultaProduto: TDataSource
    DataSet = fdQryConsultaProduto
    Left = 483
    Top = 139
  end
  object fdQryConsultaAgenda: TFDQuery
    Active = True
    Connection = fdconecta
    SQL.Strings = (
      'SELECT age.*, prod.nm_produto,cli.nm_cliente FROM tb_agenda age'
      
        'INNER JOIN tb_produto prod ON prod.id_produto = age.fk_id_produt' +
        'o'
      'INNER JOIN tb_cliente cli ON cli.id_cliente = age.fk_id_cliente'
      'ORDER BY nm_cliente;')
    Left = 371
    Top = 259
    object fdQryConsultaAgendaid_agenda: TFDAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'id_agenda'
      Origin = 'id_agenda'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdQryConsultaAgendadata_agendamento: TSQLTimeStampField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data do Pedido'
      FieldName = 'data_agendamento'
      Origin = 'data_agendamento'
    end
    object fdQryConsultaAgendadia_atendimento: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dia'
      FieldName = 'dia_atendimento'
      Origin = 'dia_atendimento'
    end
    object fdQryConsultaAgendahora_atendimento: TTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Hora'
      FieldName = 'hora_atendimento'
      Origin = 'hora_atendimento'
    end
    object fdQryConsultaAgendafk_id_produto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'fk_id_produto'
      Origin = 'fk_id_produto'
    end
    object fdQryConsultaAgendafk_id_cliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'fk_id_cliente'
      Origin = 'fk_id_cliente'
    end
    object fdQryConsultaAgendanm_produto: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'nm_produto'
      Origin = 'nm_produto'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
    object fdQryConsultaAgendanm_cliente: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cliente'
      FieldName = 'nm_cliente'
      Origin = 'nm_cliente'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
  end
  object dsConsultaAgenda: TDataSource
    DataSet = fdQryConsultaAgenda
    Left = 483
    Top = 259
  end
  object fdQryStatus: TFDQuery
    Active = True
    Connection = fdconecta
    SQL.Strings = (
      'SELECT * FROM tb_status')
    Left = 689
    Top = 90
  end
  object dsStatus: TDataSource
    DataSet = fdQryStatus
    Left = 769
    Top = 90
  end
  object fdQryCadastroUsuario: TFDQuery
    Active = True
    Connection = fdconecta
    SQL.Strings = (
      'SELECT * FROM tb_login'
      'ORDER BY nm_usuario;')
    Left = 56
    Top = 58
    object fdQryCadastroUsuariologin: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Login'
      FieldName = 'login'
      Origin = 'login'
      Size = 55
    end
    object fdQryCadastroUsuariosenha: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Senha'
      FieldName = 'senha'
      Origin = 'senha'
      Size = 55
    end
    object fdQryCadastroUsuarioid_login: TFDAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'id_login'
      Origin = 'id_login'
      ReadOnly = True
    end
    object fdQryCadastroUsuarionm_usuario: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nm_usuario'
      Origin = 'nm_usuario'
      Required = True
      Size = 25
    end
  end
  object dsCadastroUsuario: TDataSource
    DataSet = fdQryCadastroUsuario
    Left = 160
    Top = 58
  end
  object fdQryiAgenda: TFDQuery
    Active = True
    MasterSource = dsAgenda
    MasterFields = 'id_agenda'
    Connection = fdconecta
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM tb_itens_agenda WHERE fk_id_agenda = :id_agenda;')
    Left = 371
    Top = 443
    ParamData = <
      item
        Name = 'ID_AGENDA'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 9
      end>
    object fdQryiAgendaid_itens_agenda: TFDAutoIncField
      FieldName = 'id_itens_agenda'
      Origin = 'id_itens_agenda'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdQryiAgendafk_id_produto: TIntegerField
      FieldName = 'fk_id_produto'
      Origin = 'fk_id_produto'
      Required = True
    end
    object fdQryiAgendaqti_venda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qti_venda'
      Origin = 'qti_venda'
    end
    object fdQryiAgendaprecouni: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor'
      FieldName = 'precouni'
      Origin = 'precouni'
      currency = True
    end
    object fdQryiAgendafk_id_agenda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'fk_id_agenda'
      Origin = 'fk_id_agenda'
    end
  end
  object dsiAgenda: TDataSource
    DataSet = fdQryiAgenda
    Left = 483
    Top = 443
  end
  object fdQryMemo: TFDQuery
    Active = True
    Connection = fdconecta
    SQL.Strings = (
      'SELECT * FROM tb_memo')
    Left = 689
    Top = 146
  end
  object dsMemo: TDataSource
    DataSet = fdQryMemo
    Left = 769
    Top = 146
  end
  object fdQryRelServico: TFDQuery
    Active = True
    Connection = fdconecta
    SQL.Strings = (
      
        'SELECT age.*, prod.nm_produto, sum(precouni) totserv FROM tb_age' +
        'nda age'
      
        'INNER JOIN tb_produto prod ON prod.id_produto = age.fk_id_produt' +
        'o'
      'GROUP BY id_produto;')
    Left = 691
    Top = 480
    object fdQryRelServicoid_agenda: TFDAutoIncField
      FieldName = 'id_agenda'
      Origin = 'id_agenda'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdQryRelServicodia_atendimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dia_atendimento'
      Origin = 'dia_atendimento'
    end
    object fdQryRelServicohora_atendimento: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'hora_atendimento'
      Origin = 'hora_atendimento'
    end
    object fdQryRelServicofk_id_produto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'fk_id_produto'
      Origin = 'fk_id_produto'
    end
    object fdQryRelServicofk_id_cliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'fk_id_cliente'
      Origin = 'fk_id_cliente'
    end
    object fdQryRelServicodata_agendamento: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'data_agendamento'
      Origin = 'data_agendamento'
    end
    object fdQryRelServicoprecouni: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'precouni'
      Origin = 'precouni'
      currency = True
    end
    object fdQryRelServicofk_id_status: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'fk_id_status'
      Origin = 'fk_id_status'
    end
    object fdQryRelServiconm_produto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nm_produto'
      Origin = 'nm_produto'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
    object fdQryRelServicototserv: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'totserv'
      Origin = 'totserv'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
  end
  object dsRelServico: TDataSource
    DataSet = fdQryRelServico
    Left = 771
    Top = 480
  end
  object fdQryConsultaServico: TFDQuery
    Active = True
    Connection = fdconecta
    SQL.Strings = (
      'SELECT prod.*, gru.nm_grupo,uni.nm_unidade FROM tb_produto prod'
      'INNER JOIN tb_grupo gru ON gru.id_grupo = prod.fk_id_grupo'
      'INNER JOIN tb_unidade uni ON uni.id_unidade = prod.fk_id_unidade'
      'ORDER BY nm_produto;')
    Left = 372
    Top = 201
    object fdQryConsultaServicoid_produto: TFDAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'id_produto'
      Origin = 'id_produto'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdQryConsultaServiconm_produto: TStringField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'nm_produto'
      Origin = 'nm_produto'
      Required = True
      Size = 55
    end
    object fdQryConsultaServicoprecovenda: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor'
      FieldName = 'precovenda'
      Origin = 'precovenda'
      currency = True
    end
    object fdQryConsultaServiconm_unidade: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Unidade'
      FieldName = 'nm_unidade'
      Origin = 'nm_unidade'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
  end
  object dsConsultaServico: TDataSource
    DataSet = fdQryConsultaServico
    Left = 483
    Top = 201
  end
  object fdQryImagemCliente: TFDQuery
    Active = True
    Connection = fdconecta
    SQL.Strings = (
      'SELECT img.*, cli.nm_cliente FROM tb_imagem img'
      'INNER JOIN tb_cliente cli ON cli.id_cliente = img.fk_id_cliente'
      'ORDER BY nm_cliente;')
    Left = 53
    Top = 166
    object fdQryImagemClienteid_imagem: TFDAutoIncField
      Alignment = taLeftJustify
      DisplayLabel = 'ID'
      FieldName = 'id_imagem'
      Origin = 'id_imagem'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdQryImagemClientenm_imagem: TStringField
      DisplayLabel = 'Nome da Imagem'
      FieldName = 'nm_imagem'
      Origin = 'nm_imagem'
      Required = True
      Size = 25
    end
    object fdQryImagemClienteimagem: TBlobField
      DisplayLabel = 'Imagem'
      FieldName = 'imagem'
      Origin = 'imagem'
      Required = True
    end
    object fdQryImagemClientedescricao: TMemoField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      BlobType = ftMemo
    end
    object fdQryImagemClientefk_id_cliente: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'fk_id_cliente'
      Origin = 'fk_id_cliente'
      Required = True
    end
    object fdQryImagemClientenm_cliente: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cliente'
      FieldName = 'nm_cliente'
      Origin = 'nm_cliente'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
  end
  object dsImagemCliente: TDataSource
    DataSet = fdQryImagemCliente
    Left = 157
    Top = 166
  end
  object fdQryConsultaImagem: TFDQuery
    Active = True
    Connection = fdconecta
    SQL.Strings = (
      'SELECT img.*, cli.nm_cliente FROM tb_imagem img '
      'INNER JOIN tb_cliente cli ON cli.id_cliente = img.fk_id_cliente'
      'ORDER BY nm_cliente;')
    Left = 352
    Top = 568
    object fdQryConsultaImagemid_imagem: TIntegerField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      FieldName = 'id_imagem'
      Origin = 'id_imagem'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdQryConsultaImagemnm_imagem: TStringField
      DisplayLabel = 'nome da imagem'
      FieldName = 'nm_imagem'
      Origin = 'nm_imagem'
      Required = True
      Size = 25
    end
    object fdQryConsultaImagemdescricao: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      BlobType = ftMemo
    end
    object fdQryConsultaImagemimagem: TBlobField
      FieldName = 'imagem'
      Origin = 'imagem'
      Required = True
    end
    object fdQryConsultaImagemfk_id_cliente: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'fk_id_cliente'
      Origin = 'fk_id_cliente'
      Required = True
    end
    object fdQryConsultaImagemnm_cliente: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cliente'
      FieldName = 'nm_cliente'
      Origin = 'nm_cliente'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
  end
  object dsConsultaImagem: TDataSource
    DataSet = fdQryConsultaImagem
    Left = 472
    Top = 568
  end
  object fdQryParametro: TFDQuery
    Active = True
    Connection = fdconecta
    SQL.Strings = (
      'select * from tb_parametro;')
    Left = 664
    Top = 600
  end
  object dsParametro: TDataSource
    DataSet = fdQryParametro
    Left = 768
    Top = 600
  end
  object fdQryCasos: TFDQuery
    Active = True
    Connection = fdconecta
    SQL.Strings = (
      'select * from tb_casos;')
    Left = 688
    Top = 320
    object fdQryCasosid_casos: TFDAutoIncField
      FieldName = 'id_casos'
      Origin = 'id_casos'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object fdQryCasosregistro: TIntegerField
      FieldName = 'registro'
      Origin = 'registro'
      Required = True
    end
    object fdQryCasosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 40
    end
    object fdQryCasosidade: TIntegerField
      FieldName = 'idade'
      Origin = 'idade'
      Required = True
    end
    object fdQryCasosmedico: TStringField
      FieldName = 'medico'
      Origin = 'medico'
      Required = True
      Size = 40
    end
    object fdQryCasosplano_saude: TStringField
      FieldName = 'plano_saude'
      Origin = 'plano_saude'
      Required = True
      Size = 30
    end
    object fdQryCasosfk_id_cliente: TIntegerField
      FieldName = 'fk_id_cliente'
      Origin = 'fk_id_cliente'
      Required = True
    end
    object fdQryCasoshemograma: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'hemograma'
      Origin = 'hemograma'
    end
    object fdQryCasosglicemia: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'glicemia'
      Origin = 'glicemia'
    end
    object fdQryCasoscolesterol: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'colesterol'
      Origin = 'colesterol'
    end
    object fdQryCasostrigliceridios: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'trigliceridios'
      Origin = 'trigliceridios'
    end
    object fdQryCasoshdl: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'hdl'
      Origin = 'hdl'
    end
  end
  object dsCasos: TDataSource
    DataSet = fdQryCasos
    Left = 760
    Top = 312
  end
end

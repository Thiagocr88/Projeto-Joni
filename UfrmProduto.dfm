inherited frmProduto: TfrmProduto
  Caption = 'Cadastro de Produtos'
  ClientHeight = 648
  ClientWidth = 827
  KeyPreview = True
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  ExplicitWidth = 833
  ExplicitHeight = 677
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 450
    ExplicitHeight = 450
  end
  inherited DBGrid1: TDBGrid
    Top = 450
    Width = 827
    DataSource = ds
    Columns = <
      item
        Expanded = False
        FieldName = 'id_produto'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nm_produto'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'precovenda'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'precocompra'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qti_estoque'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nm_grupo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nm_unidade'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox [2]
    Left = 153
    Top = 10
    Width = 657
    Height = 429
    Caption = 'Dados do Produto'
    TabOrder = 2
    object Label1: TLabel
      Left = 21
      Top = 32
      Width = 20
      Height = 25
      Caption = 'ID'
      FocusControl = DBEdit1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 289
      Top = 71
      Width = 54
      Height = 25
      Caption = 'Nome'
      FocusControl = DBEdit2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 21
      Top = 139
      Width = 112
      Height = 25
      Caption = 'Pre'#231'o Venda'
      FocusControl = DBEdit3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 21
      Top = 71
      Width = 127
      Height = 25
      Caption = 'Pre'#231'o Compra'
      FocusControl = DBEdit4
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 21
      Top = 208
      Width = 58
      Height = 25
      Caption = 'Grupo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 21
      Top = 278
      Width = 75
      Height = 25
      Caption = 'Unidade'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 21
      Top = 347
      Width = 71
      Height = 25
      Caption = 'Estoque'
      FocusControl = DBEdit7
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 56
      Top = 29
      Width = 99
      Height = 33
      Cursor = crNoDrop
      Color = clScrollBar
      DataField = 'id_produto'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit2: TDBEdit
      Left = 286
      Top = 100
      Width = 287
      Height = 33
      Cursor = crIBeam
      DataField = 'nm_produto'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 21
      Top = 168
      Width = 134
      Height = 33
      Cursor = crIBeam
      DataField = 'precovenda'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 21
      Top = 100
      Width = 134
      Height = 33
      Cursor = crIBeam
      DataField = 'precocompra'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit7: TDBEdit
      Left = 21
      Top = 376
      Width = 134
      Height = 33
      Cursor = crIBeam
      DataField = 'qti_estoque'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 21
      Top = 237
      Width = 134
      Height = 33
      Cursor = crHandPoint
      DataField = 'fk_id_grupo'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'id_grupo'
      ListField = 'nm_grupo'
      ListSource = DataModule1.dsGrupo
      ParentFont = False
      TabOrder = 3
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 21
      Top = 307
      Width = 76
      Height = 33
      Cursor = crHandPoint
      DataField = 'fk_id_unidade'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'id_unidade'
      ListField = 'sigla; nm_unidade'
      ListSource = DataModule1.dsUnidade
      ParentFont = False
      TabOrder = 4
    end
    object gbFotoProduto: TGroupBox
      Left = 321
      Top = 167
      Width = 216
      Height = 173
      Caption = 'Foto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      object FotoProduto: TImage
        Left = 2
        Top = 23
        Width = 212
        Height = 148
        Cursor = crHandPoint
        Align = alClient
        Center = True
        ParentShowHint = False
        Proportional = True
        ShowHint = True
        Stretch = True
        OnClick = FotoProdutoClick
        ExplicitTop = 22
      end
    end
  end
  inherited ds: TDataSource
    DataSet = DataModule1.fdQryProduto
    OnDataChange = dsDataChange
    Left = 832
    Top = 352
  end
  object opdFotoProduto: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Left = 619
    Top = 161
  end
end

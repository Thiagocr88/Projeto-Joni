inherited frmCompra: TfrmCompra
  Caption = 'Compra'
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    DataSource = ds
    Columns = <
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'id_compra'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dt_compra'
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'fk_id_comprador'
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'fk_id_fornecedor'
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox [2]
    Left = 163
    Top = 16
    Width = 678
    Height = 81
    Caption = 'Dados Compra'
    TabOrder = 2
    object Label1: TLabel
      Left = 13
      Top = 13
      Width = 106
      Height = 23
      Caption = 'Identificador'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 138
      Top = 13
      Width = 39
      Height = 23
      Caption = 'Data'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 263
      Top = 13
      Width = 93
      Height = 23
      Caption = 'Comprador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 463
      Top = 13
      Width = 95
      Height = 23
      Caption = 'Fornecedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 13
      Top = 38
      Width = 106
      Height = 31
      Color = clScrollBar
      DataField = 'id_compra'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 138
      Top = 38
      Width = 106
      Height = 31
      DataField = 'dt_compra'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 263
      Top = 38
      Width = 170
      Height = 31
      DataField = 'fk_id_comprador'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'id_cliente'
      ListField = 'nm_cliente'
      ListSource = DataModule1.dscliente
      ParentFont = False
      TabOrder = 2
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 463
      Top = 38
      Width = 182
      Height = 31
      DataField = 'fk_id_fornecedor'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'id_fornecedor'
      ListField = 'nm_fornecedor'
      ListSource = DataModule1.dsfornecedor
      ParentFont = False
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox [3]
    Left = 163
    Top = 103
    Width = 678
    Height = 125
    Caption = 'Dados Produto'
    TabOrder = 3
    object DBGrid2: TDBGrid
      Left = 15
      Top = 16
      Width = 650
      Height = 89
      DataSource = DataModule1.dsitensc
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object DBNavigator1: TDBNavigator [4]
    Left = 368
    Top = 214
    Width = 240
    Height = 25
    DataSource = DataModule1.dsproduto
    TabOrder = 4
  end
  object GroupBox3: TGroupBox [5]
    Left = 163
    Top = 245
    Width = 678
    Height = 124
    Caption = 'Dados Parcela'
    TabOrder = 5
  end
  object DBNavigator2: TDBNavigator [6]
    Left = 368
    Top = 353
    Width = 240
    Height = 25
    TabOrder = 6
  end
  object DBGrid3: TDBGrid [7]
    Left = 176
    Top = 260
    Width = 650
    Height = 88
    DataSource = DataModule1.dsparcela
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  inherited ds: TDataSource
    DataSet = DataModule1.fdQryCompra
    Left = 160
    Top = 360
  end
end

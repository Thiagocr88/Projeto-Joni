inherited frmEntrada: TfrmEntrada
  Caption = 'Entrada no Estoque'
  ClientWidth = 767
  OnShow = FormShow
  ExplicitTop = -99
  ExplicitWidth = 773
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    Width = 767
    DataSource = DataModule1.dsEntrada
    Columns = <
      item
        Expanded = False
        FieldName = 'id_entrada'
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
        FieldName = 'precocomp'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qti_entrada'
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
        FieldName = 'data'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nm_fornecedor'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox [2]
    Left = 163
    Top = 16
    Width = 566
    Height = 361
    Caption = 'Entrada no Estoque'
    TabOrder = 2
    object Label1: TLabel
      Left = 39
      Top = 38
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
      Left = 39
      Top = 192
      Width = 117
      Height = 23
      Caption = 'Pre'#231'o Compra'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 208
      Top = 38
      Width = 39
      Height = 23
      Caption = 'Data'
      FocusControl = DBEdit3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 39
      Top = 269
      Width = 97
      Height = 23
      Caption = 'Quantidade'
      FocusControl = DBEdit4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 367
      Top = 38
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
    object Label6: TLabel
      Left = 39
      Top = 113
      Width = 65
      Height = 23
      Caption = 'Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 39
      Top = 67
      Width = 106
      Height = 31
      Cursor = crNoDrop
      Color = clScrollBar
      DataField = 'id_entrada'
      DataSource = DataModule1.dsEntrada
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
      Left = 39
      Top = 221
      Width = 134
      Height = 31
      Cursor = crIBeam
      DataField = 'precocomp'
      DataSource = DataModule1.dsEntrada
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 208
      Top = 67
      Width = 102
      Height = 31
      Cursor = crIBeam
      DataField = 'data'
      DataSource = DataModule1.dsEntrada
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 39
      Top = 298
      Width = 134
      Height = 31
      Cursor = crIBeam
      DataField = 'qti_entrada'
      DataSource = DataModule1.dsEntrada
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 367
      Top = 67
      Width = 134
      Height = 31
      Cursor = crHandPoint
      DataField = 'fk_id_fornecedor'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'id_fornecedor'
      ListField = 'nm_fornecedor'
      ListSource = DataModule1.dsFornecedor
      ParentFont = False
      TabOrder = 4
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 39
      Top = 142
      Width = 178
      Height = 31
      Cursor = crHandPoint
      DataField = 'fk_id_produto'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'id_produto'
      ListField = 'nm_produto'
      ListSource = DataModule1.dsProduto
      ParentFont = False
      TabOrder = 5
    end
    object DBImage1: TDBImage
      Left = 352
      Top = 179
      Width = 150
      Height = 150
      TabOrder = 6
    end
  end
  inherited ds: TDataSource
    DataSet = DataModule1.fdQryEntrada
    Left = 144
    Top = 360
  end
end

inherited frmFornecedor: TfrmFornecedor
  Caption = 'Fornecedor'
  KeyPreview = True
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    DataSource = ds
    Columns = <
      item
        Expanded = False
        FieldName = 'id_fornecedor'
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
        FieldName = 'nm_fornecedor'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nm_cidade'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cnpj_fornecedor'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'insest_fornecedor'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox [2]
    Left = 163
    Top = 16
    Width = 449
    Height = 361
    Caption = 'Dados Fornecedor'
    TabOrder = 2
    object Label1: TLabel
      Left = 21
      Top = 24
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
      Left = 21
      Top = 90
      Width = 49
      Height = 23
      Caption = 'Nome'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 21
      Top = 156
      Width = 42
      Height = 23
      Caption = 'CNPJ'
      FocusControl = DBEdit3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 21
      Top = 222
      Width = 152
      Height = 23
      Caption = 'Inscri'#231#227'o Estadual'
      FocusControl = DBEdit4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 21
      Top = 288
      Width = 57
      Height = 23
      Caption = 'Cidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 21
      Top = 53
      Width = 106
      Height = 31
      Cursor = crNoDrop
      Color = clScrollBar
      DataField = 'id_fornecedor'
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
      Left = 21
      Top = 119
      Width = 188
      Height = 31
      Cursor = crIBeam
      DataField = 'nm_fornecedor'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 21
      Top = 185
      Width = 188
      Height = 31
      Cursor = crIBeam
      DataField = 'cnpj_fornecedor'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 19
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 21
      Top = 251
      Width = 188
      Height = 31
      Cursor = crIBeam
      DataField = 'insest_fornecedor'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 21
      Top = 317
      Width = 188
      Height = 31
      Cursor = crHandPoint
      DataField = 'fk_id_cidade'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'id_cidade'
      ListField = 'nm_cidade'
      ListSource = DataModule1.dsCidade
      ParentFont = False
      TabOrder = 4
    end
  end
  inherited ds: TDataSource
    DataSet = DataModule1.fdQryFornecedor
    Left = 712
    Top = 304
  end
end

inherited frmVendedor: TfrmVendedor
  Caption = 'Vendedor'
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    DataSource = ds
    Columns = <
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'id_vendedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nm_vendedor'
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'percentual'
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox [2]
    Left = 163
    Top = 16
    Width = 441
    Height = 337
    Caption = 'Dados Vendedor'
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
      Top = 103
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
      Top = 185
      Width = 88
      Height = 23
      Caption = 'Percentual'
      FocusControl = DBEdit3
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
      Color = clScrollBar
      DataField = 'id_vendedor'
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
      Top = 132
      Width = 239
      Height = 31
      DataField = 'nm_vendedor'
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
      Top = 214
      Width = 106
      Height = 31
      DataField = 'percentual'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  inherited ds: TDataSource
    DataSet = DataModule1.fdQryVendedor
    Left = 696
    Top = 264
  end
end

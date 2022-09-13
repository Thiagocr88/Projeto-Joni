inherited frmEstado: TfrmEstado
  Caption = 'Estado'
  KeyPreview = True
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    DataSource = ds
    Columns = <
      item
        Expanded = False
        FieldName = 'id_estado'
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
        FieldName = 'nm_estado'
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
        FieldName = 'uf'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 40
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox [2]
    Left = 162
    Top = 16
    Width = 393
    Height = 303
    Caption = 'Dados Estado'
    TabOrder = 2
    object Label1: TLabel
      Left = 24
      Top = 23
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
      Left = 24
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
      Left = 24
      Top = 183
      Width = 22
      Height = 23
      Caption = 'UF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 52
      Width = 106
      Height = 31
      Cursor = crNoDrop
      Color = clScrollBar
      DataField = 'id_estado'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 24
      Top = 132
      Width = 185
      Height = 31
      Cursor = crIBeam
      DataField = 'nm_estado'
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
      Left = 24
      Top = 212
      Width = 159
      Height = 31
      Cursor = crIBeam
      DataField = 'uf'
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
    DataSet = DataModule1.fdQryEstado
    Left = 584
    Top = 312
  end
end

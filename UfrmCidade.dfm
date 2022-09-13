inherited frmCidade: TfrmCidade
  Caption = 'Cidade'
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
        FieldName = 'id_cidade'
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
    Left = 170
    Top = 32
    Width = 393
    Height = 295
    Caption = 'Dados Cidade'
    TabOrder = 2
    object Label1: TLabel
      Left = 23
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
      Left = 23
      Top = 101
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
      Left = 23
      Top = 184
      Width = 56
      Height = 23
      Caption = 'Estado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 23
      Top = 52
      Width = 106
      Height = 31
      Cursor = crNoDrop
      BiDiMode = bdLeftToRight
      Color = clScrollBar
      DataField = 'id_cidade'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 23
      Top = 130
      Width = 170
      Height = 31
      Cursor = crIBeam
      BiDiMode = bdLeftToRight
      DataField = 'nm_cidade'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 23
      Top = 213
      Width = 170
      Height = 31
      Cursor = crHandPoint
      BiDiMode = bdLeftToRight
      DataField = 'fk_id_estado'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'id_estado'
      ListField = 'nm_estado'
      ListSource = DataModule1.dsEstado
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
    end
  end
  inherited ds: TDataSource
    DataSet = DataModule1.fdQryCidade
    Left = 640
    Top = 304
  end
end

inherited frmGrupo: TfrmGrupo
  Caption = 'Grupo'
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
        FieldName = 'id_grupo'
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
        FieldName = 'nm_grupo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox [2]
    Left = 163
    Top = 16
    Width = 361
    Height = 319
    Caption = 'Dados Grupo'
    TabOrder = 2
    object Label1: TLabel
      Left = 24
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
      Left = 24
      Top = 105
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
    object DBEdit1: TDBEdit
      Left = 24
      Top = 53
      Width = 106
      Height = 31
      Cursor = crNoDrop
      Color = clScrollBar
      DataField = 'id_grupo'
      DataSource = DataModule1.dsGrupo
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
      Left = 24
      Top = 134
      Width = 153
      Height = 31
      Cursor = crIBeam
      DataField = 'nm_grupo'
      DataSource = DataModule1.dsGrupo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  inherited ds: TDataSource
    DataSet = DataModule1.fdQryGrupo
    Left = 672
    Top = 304
  end
end

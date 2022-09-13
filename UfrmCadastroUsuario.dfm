inherited frmCadastroUsuario: TfrmCadastroUsuario
  Caption = 'Cadastro de Usu'#225'rio'
  ClientHeight = 543
  ClientWidth = 494
  OnShow = FormShow
  ExplicitWidth = 500
  ExplicitHeight = 572
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 399
    ExplicitHeight = 403
  end
  inherited DBGrid1: TDBGrid
    Top = 399
    Width = 494
    Height = 144
    DataSource = DataModule1.dsCadastroUsuario
    Columns = <
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'id_login'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
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
        FieldName = 'nm_usuario'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
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
        FieldName = 'login'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 200
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox [2]
    Left = 165
    Top = 13
    Width = 302
    Height = 369
    Caption = 'Cadastro de Usu'#225'rio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 37
      Top = 181
      Width = 51
      Height = 25
      Caption = 'Login'
      FocusControl = DBEdit1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 37
      Top = 255
      Width = 54
      Height = 25
      Caption = 'Senha'
      FocusControl = DBEdit2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 37
      Top = 64
      Width = 20
      Height = 25
      Caption = 'ID'
      FocusControl = DBEdit3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 37
      Top = 108
      Width = 54
      Height = 25
      Caption = 'Nome'
      FocusControl = DBEdit4
    end
    object DBEdit1: TDBEdit
      Left = 37
      Top = 212
      Width = 221
      Height = 33
      Cursor = crIBeam
      DataField = 'login'
      DataSource = DataModule1.dsCadastroUsuario
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 37
      Top = 282
      Width = 221
      Height = 33
      Cursor = crIBeam
      DataField = 'senha'
      DataSource = DataModule1.dsCadastroUsuario
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 71
      Top = 61
      Width = 45
      Height = 33
      Cursor = crNoDrop
      Color = clScrollBar
      DataField = 'id_login'
      DataSource = DataModule1.dsCadastroUsuario
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 37
      Top = 140
      Width = 221
      Height = 33
      DataField = 'nm_usuario'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  inherited ds: TDataSource
    DataSet = DataModule1.fdQryCadastroUsuario
    Left = 152
    Top = 344
  end
end

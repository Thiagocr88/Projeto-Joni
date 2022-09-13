inherited frmImagemCliente: TfrmImagemCliente
  Caption = 'Cadastro de Imagens'
  ClientHeight = 675
  ClientWidth = 1139
  OnShow = FormShow
  ExplicitLeft = -26
  ExplicitWidth = 1145
  ExplicitHeight = 704
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 489
    ExplicitHeight = 489
  end
  inherited DBGrid1: TDBGrid
    Top = 489
    Width = 1139
    Height = 186
    DataSource = ds
    Columns = <
      item
        Expanded = False
        FieldName = 'id_imagem'
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
        FieldName = 'nm_cliente'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 350
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nm_imagem'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 500
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
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
    Left = 148
    Top = 8
    Width = 973
    Height = 474
    Caption = 'Imagens do Cliente'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label2: TLabel
      Left = 23
      Top = 102
      Width = 158
      Height = 25
      Caption = 'Nome da Imagem'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 23
      Top = 339
      Width = 85
      Height = 25
      Caption = 'Descri'#231#227'o'
    end
    object Label5: TLabel
      Left = 23
      Top = 34
      Width = 61
      Height = 25
      Caption = 'Cliente'
    end
    object DBEdit2: TDBEdit
      Left = 23
      Top = 126
      Width = 290
      Height = 33
      Cursor = crIBeam
      DataField = 'nm_imagem'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object gbImagemCliente: TGroupBox
      Left = 336
      Top = 19
      Width = 617
      Height = 436
      Caption = 'Imagem'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object ImagemCliente: TImage
        Left = 2
        Top = 27
        Width = 613
        Height = 407
        Cursor = crHandPoint
        Hint = 'Clique sobre a Imagem'
        Align = alClient
        Center = True
        ParentShowHint = False
        Proportional = True
        ShowHint = True
        Stretch = True
        OnClick = ImagemClienteClick
        ExplicitLeft = 160
        ExplicitTop = 104
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 23
      Top = 63
      Width = 290
      Height = 33
      Cursor = crHandPoint
      DataField = 'fk_id_cliente'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'id_cliente'
      ListField = 'nm_cliente'
      ListSource = DataModule1.dsCliente
      ParentFont = False
      TabOrder = 2
    end
    object DBMemo1: TDBMemo
      Left = 23
      Top = 366
      Width = 290
      Height = 89
      Cursor = crIBeam
      DataField = 'descricao'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object GroupBox3: TGroupBox
      Left = 80
      Top = 165
      Width = 180
      Height = 160
      Caption = 'Foto'
      TabOrder = 4
      object DBImage1: TDBImage
        Left = 2
        Top = 27
        Width = 176
        Height = 131
        Align = alClient
        DataField = 'foto_cliente'
        DataSource = DataModule1.dsCliente
        ParentShowHint = False
        Proportional = True
        ReadOnly = True
        ShowHint = True
        Stretch = True
        TabOrder = 0
      end
    end
  end
  inherited ds: TDataSource
    DataSet = DataModule1.fdQryImagemCliente
    OnDataChange = dsDataChange
    Left = 144
    Top = 448
  end
  object opdImagemCliente: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Left = 932
    Top = 42
  end
end

inherited frmAgenda: TfrmAgenda
  Caption = 'Agenda'
  ClientHeight = 678
  ClientWidth = 944
  OnShow = FormShow
  ExplicitWidth = 950
  ExplicitHeight = 707
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 399
    ExplicitHeight = 399
  end
  inherited DBGrid1: TDBGrid
    Top = 399
    Width = 944
    Height = 279
    Color = clWhite
    DataSource = DataModule1.dsAgenda
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'id_agenda'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nm_status'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
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
        FieldName = 'dia_atendimento'
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
        FieldName = 'hora_atendimento'
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
        FieldName = 'nm_cliente'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 300
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
        FieldName = 'precouni'
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
        FieldName = 'data_agendamento'
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
    Left = 150
    Top = 3
    Width = 332
    Height = 388
    Caption = 'Dados do Agendamento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 17
      Top = 39
      Width = 17
      Height = 21
      Caption = 'ID'
      FocusControl = DBEdit1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 93
      Top = 297
      Width = 30
      Height = 21
      Caption = 'Dia:'
      FocusControl = DBEdit2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 82
      Top = 336
      Width = 41
      Height = 21
      Caption = 'Hora:'
      FocusControl = DBEdit3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 13
      Top = 132
      Width = 54
      Height = 21
      Caption = 'Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 89
      Top = 39
      Width = 60
      Height = 21
      Caption = 'Reserva'
      FocusControl = DBEdit6
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 70
      Top = 264
      Width = 192
      Height = 25
      Caption = 'Data do Atendimento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 46
      Top = 90
      Width = 66
      Height = 21
      Caption = 'Situa'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 13
      Top = 179
      Width = 57
      Height = 21
      Caption = 'Servi'#231'o'
    end
    object Label8: TLabel
      Left = 72
      Top = 222
      Width = 40
      Height = 21
      Caption = 'Valor'
      FocusControl = DBEdit4
    end
    object DBEdit1: TDBEdit
      Left = 43
      Top = 39
      Width = 38
      Height = 29
      Color = clScrollBar
      DataField = 'id_agenda'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 129
      Top = 297
      Width = 106
      Height = 29
      Cursor = crIBeam
      DataField = 'dia_atendimento'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 129
      Top = 333
      Width = 106
      Height = 29
      Cursor = crIBeam
      DataField = 'hora_atendimento'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 155
      Top = 39
      Width = 160
      Height = 29
      Color = clScrollBar
      DataField = 'data_agendamento'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 73
      Top = 132
      Width = 242
      Height = 29
      Cursor = crHandPoint
      DataField = 'fk_id_cliente'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'id_cliente'
      ListField = 'nm_cliente'
      ListSource = DataModule1.dsCliente
      ParentFont = False
      TabOrder = 5
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 125
      Top = 88
      Width = 98
      Height = 29
      Cursor = crHandPoint
      DataField = 'fk_id_status'
      DataSource = DataModule1.dsAgenda
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'id_status'
      ListField = 'nm_status'
      ListSource = DataModule1.dsStatus
      ParentFont = False
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 76
      Top = 178
      Width = 240
      Height = 29
      DataField = 'fk_id_produto'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'id_produto'
      ListField = 'nm_produto'
      ListSource = DataModule1.dsProduto
      ParentFont = False
      TabOrder = 6
    end
    object DBEdit4: TDBEdit
      Left = 125
      Top = 222
      Width = 127
      Height = 29
      Cursor = crIBeam
      DataField = 'precouni'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
  end
  object GroupBox2: TGroupBox [3]
    Left = 490
    Top = 3
    Width = 456
    Height = 390
    Caption = 'Lista de Servi'#231'os'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object DBGrid2: TDBGrid
      Left = 2
      Top = 23
      Width = 452
      Height = 365
      Cursor = crHandPoint
      Align = alClient
      DataSource = DataModule1.dsProdutoAgenda
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'nm_produto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          Width = 320
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'precovenda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox [4]
    Left = 956
    Top = 3
    Width = 251
    Height = 390
    Caption = 'Parcelamento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Visible = False
    object Label9: TLabel
      Left = 41
      Top = 26
      Width = 63
      Height = 21
      Caption = 'Parcelas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 41
      Top = 87
      Width = 137
      Height = 21
      Caption = 'Valor das Parcelas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 41
      Top = 147
      Width = 82
      Height = 21
      Caption = 'Valor Total'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 41
      Top = 208
      Width = 103
      Height = 21
      Caption = 'Valor Entrada'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 41
      Top = 268
      Width = 128
      Height = 21
      Caption = 'Data Pagamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 41
      Top = 326
      Width = 132
      Height = 21
      Caption = 'Data Vencimento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 41
      Top = 49
      Width = 177
      Height = 29
      Cursor = crHandPoint
      DataField = 'fk_id_parcela'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'id_parcela'
      ListField = 'nm_parcela'
      ListSource = DataModule1.dsParcela
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit7: TDBEdit
      Left = 41
      Top = 170
      Width = 177
      Height = 29
      DataField = 'precouni'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 41
      Top = 109
      Width = 177
      Height = 29
      DataField = 'valor_parcela'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit8: TDBEdit
      Left = 41
      Top = 231
      Width = 177
      Height = 29
      DataField = 'valor_entrada'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit9: TDBEdit
      Left = 41
      Top = 291
      Width = 177
      Height = 29
      DataField = 'data_pagamento'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit10: TDBEdit
      Left = 41
      Top = 349
      Width = 177
      Height = 29
      DataField = 'data_vencimento'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 5
    end
  end
  inherited ds: TDataSource
    DataSet = DataModule1.fdQryAgenda
    Left = 144
    Top = 360
  end
end

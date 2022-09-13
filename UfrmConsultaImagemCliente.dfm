object frmConsultaImagemCliente: TfrmConsultaImagemCliente
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Consulta imagem Cliente'
  ClientHeight = 596
  ClientWidth = 888
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 8
    Width = 297
    Height = 32
    Caption = 'Digite o Nome do Cliente:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 80
    Top = 105
    Width = 75
    Height = 25
    Caption = 'Limpar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 183
    Top = 105
    Width = 75
    Height = 25
    Caption = 'Voltar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 136
    Width = 273
    Height = 457
    DataSource = DataModule1.dsConsultaImagem
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nm_cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nm_imagem'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 200
        Visible = True
      end>
  end
  object Imagem: TGroupBox
    Left = 287
    Top = 56
    Width = 593
    Height = 521
    Caption = 'Imagem'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object DBImage1: TDBImage
      Left = 2
      Top = 15
      Width = 589
      Height = 504
      Align = alClient
      DataField = 'imagem'
      DataSource = DataModule1.dsConsultaImagem
      Proportional = True
      ReadOnly = True
      TabOrder = 0
      ExplicitLeft = 64
      ExplicitTop = 32
      ExplicitWidth = 398
      ExplicitHeight = 457
    end
  end
  object Edit1: TEdit
    Left = 8
    Top = 56
    Width = 273
    Height = 33
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnChange = Edit1Change
  end
  object ds: TDataSource
    DataSet = DataModule1.fdQryImagemCliente
    Left = 416
    Top = 480
  end
end

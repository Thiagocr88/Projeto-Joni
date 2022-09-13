object frmRelatorioCompra: TfrmRelatorioCompra
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de Compras'
  ClientHeight = 522
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rlRelCompra: TRLReport
    Left = 8
    Top = 0
    Width = 794
    Height = 1123
    AllowedBands = [btHeader, btColumnHeader, btDetail]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 75
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 222
        Top = 21
        Width = 273
        Height = 32
        Align = faCenter
        Caption = 'Relat'#243'rio de Compras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 3
        Width = 39
        Height = 16
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 684
        Top = 0
        Width = 87
        Height = 16
        Info = itPageNumber
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 113
      Width = 718
      Height = 72
      object RLLabel2: TRLLabel
        Left = 3
        Top = 6
        Width = 49
        Height = 16
        Caption = 'Compra'
      end
      object RLLabel4: TRLLabel
        Left = 152
        Top = 6
        Width = 69
        Height = 16
        Caption = 'Fornecedor'
      end
      object RLDBText3: TRLDBText
        Left = 227
        Top = 6
        Width = 89
        Height = 16
        DataField = 'nm_fornecedor'
        Text = ''
      end
      object RLLabel5: TRLLabel
        Left = 3
        Top = 53
        Width = 73
        Height = 16
        Caption = 'Identificador'
      end
      object RLLabel6: TRLLabel
        Left = 152
        Top = 53
        Width = 38
        Height = 16
        Caption = 'Nome'
      end
      object RLLabel7: TRLLabel
        Left = 354
        Top = 53
        Width = 39
        Height = 16
        Caption = 'QTDE'
      end
      object RLLabel8: TRLLabel
        Left = 501
        Top = 53
        Width = 38
        Height = 16
        Caption = 'Pre'#231'o'
      end
      object RLLabel9: TRLLabel
        Left = 624
        Top = 53
        Width = 44
        Height = 16
        Caption = 'TOTAL'
      end
      object RLDBText1: TRLDBText
        Left = 58
        Top = 6
        Width = 64
        Height = 16
        DataField = 'id_compra'
        Text = ''
      end
      object Data: TRLLabel
        Left = 354
        Top = 6
        Width = 31
        Height = 16
      end
      object RLDBText2: TRLDBText
        Left = 391
        Top = 6
        Width = 65
        Height = 16
        DataField = 'dt_compra'
        Text = ''
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 185
      Width = 718
      Height = 184
      AllowedBands = [btDetail, btSummary]
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 65
        object RLDBText4: TRLDBText
          Left = 3
          Top = 24
          Width = 81
          Height = 16
          DataField = 'fk_id_produto'
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 152
          Top = 24
          Width = 72
          Height = 16
          DataField = 'nm_produto'
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 354
          Top = 24
          Width = 68
          Height = 16
          DataField = 'qti_compra'
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 501
          Top = 24
          Width = 79
          Height = 16
          DataField = 'precocompra'
          DisplayMask = '#,###,##0.00'
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 624
          Top = 24
          Width = 29
          Height = 16
          DataField = 'total'
          DisplayMask = '#,###,##0.00'
          Text = ''
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 65
        Width = 718
        Height = 48
        BandType = btSummary
        object RLLabel10: TRLLabel
          Left = 501
          Top = 29
          Width = 110
          Height = 16
          Caption = 'Total de Compras:'
        end
        object RLDBResult1: TRLDBResult
          Left = 624
          Top = 29
          Width = 68
          Height = 16
          DataField = 'total'
          DisplayMask = '#,###,##0.00'
          Info = riSum
          Text = ''
        end
      end
    end
  end
end

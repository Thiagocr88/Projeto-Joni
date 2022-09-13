inherited frmParcela: TfrmParcela
  Caption = 'Parcela'
  ClientHeight = 643
  ClientWidth = 933
  ExplicitWidth = 939
  ExplicitHeight = 672
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 399
    ExplicitHeight = 399
  end
  inherited DBGrid1: TDBGrid
    Top = 399
    Width = 933
    Height = 244
    DataSource = ds
  end
  inherited ds: TDataSource
    DataSet = DataModule1.fdQryParcela
    Left = 144
    Top = 360
  end
end

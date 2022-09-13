unit UfrmRelatorioProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  TfrmRelatorioProduto = class(TForm)
    rlRelProduto: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText5: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioProduto: TfrmRelatorioProduto;

implementation

{$R *.dfm}

uses UDM;

end.

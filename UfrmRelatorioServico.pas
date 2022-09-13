unit UfrmRelatorioServico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  TfrmRelatorioServico = class(TForm)
    rlRelServico: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLBand5: TRLBand;
    RLLabel8: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel5: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioServico: TfrmRelatorioServico;

implementation

{$R *.dfm}

uses UDM, UfrmPrincipal;

end.

unit UfrmRelatorioCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Vcl.StdCtrls;

type
  TfrmRelatorioCompra = class(TForm)
    rlRelCompra: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLBand2: TRLBand;
    RLSubDetail1: TRLSubDetail;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBText1: TRLDBText;
    Data: TRLLabel;
    RLDBText2: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioCompra: TfrmRelatorioCompra;

implementation

{$R *.dfm}

uses UDM;

end.

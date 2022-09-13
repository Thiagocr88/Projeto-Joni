unit UfrmRelatorioAgenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  TfrmRelatorioAgenda = class(TForm)
    rlRelAgenda: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLBand2: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLBand4: TRLBand;
    RLBand5: TRLBand;
    RLLabel10: TRLLabel;
    RLDBResult1: TRLDBResult;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioAgenda: TfrmRelatorioAgenda;

implementation

{$R *.dfm}

uses UDM;

end.

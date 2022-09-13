unit UfrmRelatorioCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  TfrmRelatorioCliente = class(TForm)
    rlRelCliente: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText7: TRLDBText;
    RLBand3: TRLBand;
    RLLabel8: TRLLabel;
    RLBand4: TRLBand;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel5: TRLLabel;
    RLDBText5: TRLDBText;
    procedure rlRelClienteAfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioCliente: TfrmRelatorioCliente;

implementation

{$R *.dfm}

uses UDM, UfrmPrincipal;

procedure TfrmRelatorioCliente.rlRelClienteAfterPrint(Sender: TObject);
begin
DataModule1.fdQryRelCliente.close;
DataModule1.fdQryRelCliente.open;
end;

end.

unit UfrmVendedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmModelo, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmVendedor = class(TfrmModelo)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendedor: TfrmVendedor;

implementation

{$R *.dfm}

uses UDM;

end.

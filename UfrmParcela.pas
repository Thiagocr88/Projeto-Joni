unit UfrmParcela;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmModelo, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TfrmParcela = class(TfrmModelo)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParcela: TfrmParcela;

implementation

{$R *.dfm}

uses UDM;

end.

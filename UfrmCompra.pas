unit UfrmCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmModelo, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TfrmCompra = class(TfrmModelo)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    GroupBox3: TGroupBox;
    DBNavigator2: TDBNavigator;
    DBGrid3: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompra: TfrmCompra;

implementation

{$R *.dfm}

uses UDM;

end.

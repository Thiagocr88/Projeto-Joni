unit UfrmVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmModelo, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmVenda = class(TfrmModelo)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    GroupBox3: TGroupBox;
    DBGrid3: TDBGrid;
    DBNavigator2: TDBNavigator;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVenda: TfrmVenda;

implementation

{$R *.dfm}

uses UDM;

end.

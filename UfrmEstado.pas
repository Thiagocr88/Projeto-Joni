unit UfrmEstado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmModelo, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TfrmEstado = class(TfrmModelo)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstado: TfrmEstado;

implementation

{$R *.dfm}

uses UDM;

procedure TfrmEstado.FormCreate(Sender: TObject);
begin
  inherited;
KeyPreview:=true;
end;

procedure TfrmEstado.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key=#13 then begin
SelectNext(ActiveControl as TWinControl,True,True);
key:=#0;
end;
end;

end.

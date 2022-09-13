unit UfrmCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmModelo, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCidade = class(TfrmModelo)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCidade: TfrmCidade;

implementation

{$R *.dfm}

uses UDM;

procedure TfrmCidade.FormCreate(Sender: TObject);
begin
  inherited;
KeyPreview:=true;
end;

procedure TfrmCidade.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key=#13 then begin
SelectNext(ActiveControl as TWinControl,True,True);
key:=#0;
end;
end;

procedure TfrmCidade.FormShow(Sender: TObject);
begin
  inherited;
datamodule1.fdQryCidade.close;
datamodule1.fdQryCidade.open;
datamodule1.fdQryEstado.close;
datamodule1.fdQryEstado.open;
end;

end.

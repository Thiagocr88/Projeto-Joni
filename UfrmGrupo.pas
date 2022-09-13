unit UfrmGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmModelo, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmGrupo = class(TfrmModelo)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrupo: TfrmGrupo;

implementation

{$R *.dfm}

uses UDM;

procedure TfrmGrupo.FormCreate(Sender: TObject);
begin
  inherited;
KeyPreview:=true;
end;

procedure TfrmGrupo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key=#13 then begin
SelectNext(ActiveControl as TWinControl,True,True);
key:=#0;
end;
end;

procedure TfrmGrupo.FormShow(Sender: TObject);
begin
  inherited;
datamodule1.fdQryGrupo.close;
datamodule1.fdQryGrupo.open;
end;

end.

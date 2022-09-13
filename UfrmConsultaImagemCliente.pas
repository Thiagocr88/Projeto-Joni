unit UfrmConsultaImagemCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls, RLFilters, RLPDFFilter;

type
  TfrmConsultaImagemCliente = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    ds: TDataSource;
    Imagem: TGroupBox;
    DBImage1: TDBImage;
    Edit1: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaImagemCliente: TfrmConsultaImagemCliente;

implementation

{$R *.dfm}

uses UDM;

procedure TfrmConsultaImagemCliente.BitBtn1Click(Sender: TObject);
begin
edit1.Clear;
end;

procedure TfrmConsultaImagemCliente.BitBtn2Click(Sender: TObject);
begin
frmConsultaimagemCliente.Close;
end;

procedure TfrmConsultaImagemCliente.Edit1Change(Sender: TObject);
begin
Edit1.SetFocus;
DataModule1.fdQryConsultaImagem.close;
DataModule1.fdQryConsultaImagem.SQL.Clear;
DataModule1.fdQryConsultaImagem.SQL.add('SELECT img.*, cli.nm_cliente FROM tb_imagem img INNER JOIN tb_cliente cli ON cli.id_cliente = img.fk_id_cliente where nm_cliente like ' + quotedstr ('%' + edit1.Text + '%'));
DataModule1.fdQryConsultaImagem.Open;

end;

procedure TfrmConsultaImagemCliente.FormShow(Sender: TObject);
begin
Edit1.SetFocus;
DataModule1.fdQryConsultaImagem.close;
DataModule1.fdQryConsultaImagem.open;
DataModule1.fdQryImagemCliente.close;
DataModule1.fdQryImagemcliente.Open;
end;

end.

unit UfrmImagemCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmModelo, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtDlgs;

type
  TfrmImagemCliente = class(TfrmModelo)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    gbImagemCliente: TGroupBox;
    ImagemCliente: TImage;
    DBLookupComboBox1: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    DBImage1: TDBImage;
    GroupBox3: TGroupBox;
    opdImagemCliente: TOpenPictureDialog;
    procedure FormShow(Sender: TObject);
    procedure ImagemClienteClick(Sender: TObject);
    procedure dsDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImagemCliente: TfrmImagemCliente;

implementation

{$R *.dfm}

uses UDM, JPEG, UfrmCliente;

procedure TfrmImagemCliente.dsDataChange(Sender: TObject; Field: TField);
var
jpg: TJPEGIMAGE;
stream: TMemoryStream;
begin
  inherited;
if not (DataModule1.fdQryImagemClienteimagem.ISNULL) then
begin
  jpg:=TJPEGIMAGE.create;
  stream:=TMemoryStream.create;
  DataModule1.fdQryImagemClienteimagem.saveToStream(Stream);
  stream.seek(0,soFromBeginning);
  jpg.LoadFromStream(stream);
  ImagemCliente.Picture.Assign(jpg);
  jpg.free;
  stream.free;
  end
  else begin
  ImagemCliente.Picture.Assign(nil);
end;
end;

procedure TfrmImagemCliente.FormShow(Sender: TObject);
begin
  inherited;
DataModule1.fdQryImagemCliente.close;
DataModule1.fdQryImagemCliente.open;
DataModule1.fdQryCliente.close;
DataModule1.fdQryCliente.open;
end;

procedure TfrmImagemCliente.ImagemClienteClick(Sender: TObject);
var
jpg: TJPEGIMAGE;
begin
  inherited;
if opdImagemCliente.Execute then
ds.dataset.Edit;
jpg:=TJPEGIMAGE.create;
DataModule1.fdQryImagemClienteimagem.loadfromfile(opdImagemCliente.filename);
jpg.loadfromfile(opdImagemCliente.filename);
ImagemCliente.Picture.Assign(jpg);
jpg.free;
end;

end.

unit UfrmProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmModelo, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtDlgs;

type
  TfrmProduto = class(TfrmModelo)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    gbFotoProduto: TGroupBox;
    FotoProduto: TImage;
    opdFotoProduto: TOpenPictureDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure FotoProdutoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProduto: TfrmProduto;

implementation

{$R *.dfm}

uses UDM, JPEG;

procedure TfrmProduto.dsDataChange(Sender: TObject; Field: TField);
var
jpg: TJPEGIMAGE;
stream: TMemoryStream;
begin
  inherited;
if not (DataModule1.fdQryProdutofoto_produto.ISNULL) then
begin
  jpg:=TJPEGIMAGE.create;
  stream:=TMemoryStream.create;
  DataModule1.fdQryProdutofoto_produto.saveToStream(Stream);
  stream.seek(0,soFromBeginning);
  jpg.LoadFromStream(stream);
  FotoProduto.Picture.Assign(jpg);
  jpg.free;
  stream.free;
  end
  else begin
  FotoProduto.Picture.Assign(nil);
end;

end;

procedure TfrmProduto.FormCreate(Sender: TObject);
begin
  inherited;
KeyPreview:=true;
end;

procedure TfrmProduto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key=#13 then begin
SelectNext(ActiveControl as TWinControl,True,True);
key:=#0;
end;
end;

procedure TfrmProduto.FormShow(Sender: TObject);
begin
  inherited;
datamodule1.fdQryProduto.close;
datamodule1.fdQryProduto.open;
datamodule1.fdQryGrupo.close;
datamodule1.fdQryGrupo.open;
datamodule1.fdQryUnidade.close;
datamodule1.fdQryUnidade.open;
end;

procedure TfrmProduto.FotoProdutoClick(Sender: TObject);
var
jpg: TJPEGIMAGE;
begin
  inherited;
if opdFotoProduto.Execute then
ds.dataset.Edit;
jpg:=TJPEGIMAGE.create;
DataModule1.fdQryProdutofoto_produto.loadfromfile(opdFotoProduto.filename);
jpg.loadfromfile(opdFotoProduto.filename);
FotoProduto.Picture.Assign(jpg);
jpg.free;
end;

end.

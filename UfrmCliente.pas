unit UfrmCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmModelo, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtDlgs, Vcl.CheckLst;

type
  TfrmCliente = class(TfrmModelo)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemo4: TDBMemo;
    gbFotoCliente: TGroupBox;
    FotoCliente: TImage;
    opdFotoCliente: TOpenPictureDialog;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    btn_Parcelas: TBitBtn;
    btn_Imagens: TBitBtn;
    BitBtn3: TBitBtn;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FotoClienteClick(Sender: TObject);
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure DBMemo1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBMemo2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBMemo3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBMemo4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBMemo1MouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure DiabetesClick(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure DepressaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCliente: TfrmCliente;

implementation

{$R *.dfm}

uses UDM, JPEG, UfrmPrincipal;

procedure TfrmCliente.DBCheckBox1Click(Sender: TObject);
begin
  inherited;

  begin

  if DBCheckBox1.Checked then
  Datamodule1.fdQryCasos.FieldByName ('hemograma').AsInteger :=1

  else
  DataModule1.fdQryCasos.FieldByName ('hemograma').AsInteger :=0;
  end;
  DataModule1.fdQryCasos.close;
  DataModule1.fdQryCasos.open;
end;

procedure TfrmCliente.DBMemo1MouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  inherited;
//Para mostrar uma janela de menssagem ao clicar//
//showmessage('Para descer uma linha Segure o Ctrl + Enter');
end;

procedure TfrmCliente.DBMemo1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
//Para incluir mais de uma linha no Hint, utilizar o evento OnMouseMove de cada componente//
//Obs. Não esquecer de mudar para TRUE o evento ShowHint//
DBMemo1.hint := 'Primeira Linha'+#13+'Segunda Linha'+#13+ 'Terceira Linha'+#13+'Quarta Linha';
end;

procedure TfrmCliente.DBMemo2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
DBMemo2.hint := 'Primeira Linha'+#13+'Segunda Linha'+#13+ 'Terceira Linha'+#13+'Quarta Linha';
end;

procedure TfrmCliente.DBMemo3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
DBMemo3.hint := 'Primeira Linha'+#13+'Segunda Linha'+#13+ 'Terceira Linha'+#13+'Quarta Linha';
end;

procedure TfrmCliente.DBMemo4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
DBMemo4.hint := 'Primeira Linha'+#13+'Segunda Linha'+#13+ 'Terceira Linha'+#13+'Quarta Linha';
end;

//procedure TfrmCliente.DepressaoClick(Sender: TObject);
//begin
  //inherited;
    //begin
  //if depressao.Checked  then
  //dsDoenca.FieldByname ('Depressão').AsInteger :=1

  //else
  //dsDoenca.FieldByname ('Depressão').AsInteger :=0

 // end;

//end;

//procedure TfrmCliente.DiabetesClick(Sender: TObject);
//begin
 // inherited;
  //  begin
  //if depressao.Checked  then
  //dsDoenca.FieldByname ('Depressão').AsInteger :=1

  //else
  //dsDoenca.FieldByname ('Depressão').AsInteger :=0

  //end;


//end;

procedure TfrmCliente.dsDataChange(Sender: TObject; Field: TField);
var
jpg: TJPEGIMAGE;
stream: TMemoryStream;
begin
  inherited;
if not (DataModule1.fdQryClientefoto_cliente.ISNULL) then
begin
  jpg:=TJPEGIMAGE.create;
  stream:=TMemoryStream.create;
  DataModule1.fdQryClientefoto_cliente.saveToStream(Stream);
  stream.seek(0,soFromBeginning);
  jpg.LoadFromStream(stream);
  FotoCliente.Picture.Assign(jpg);
  jpg.free;
  stream.free;
  end
  else begin
  FotoCliente.Picture.Assign(nil);
end;

end;

procedure TfrmCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
frmCliente:=nil;
frmCliente.free;
end;

procedure TfrmCliente.FormCreate(Sender: TObject);
begin
  inherited;
KeyPreview:=true;
end;

procedure TfrmCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key=#13 then begin
SelectNext(ActiveControl as TWinControl,True,True);
key:=#0;
end;
end;

procedure TfrmCliente.FormShow(Sender: TObject);
begin
  inherited;
DataModule1.fdQryCliente.close;
DataModule1.fdQryCliente.open;
DataModule1.fdQryCidade.close;
DataModule1.fdQryCidade.open;
end;

procedure TfrmCliente.FotoClienteClick(Sender: TObject);
var
jpg: TJPEGIMAGE;
begin
  inherited;
if opdFotoCliente.Execute then
ds.dataset.Edit;
jpg:=TJPEGIMAGE.create;
DataModule1.fdQryClientefoto_cliente.loadfromfile(opdFotoCliente.filename);
jpg.loadfromfile(opdFotoCliente.filename);
FotoCliente.Picture.Assign(jpg);
jpg.free;
end;

end.

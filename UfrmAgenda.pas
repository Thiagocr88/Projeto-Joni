unit UfrmAgenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmModelo, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmAgenda = class(TfrmModelo)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Label7: TLabel;
    DBGrid2: TDBGrid;
    Label10: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit7: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btn_SalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAgenda: TfrmAgenda;

implementation

{$R *.dfm}

uses UDM, UfrmProduto, UfrmCliente, UfrmParcela;

procedure TfrmAgenda.btn_SalvarClick(Sender: TObject);
begin
  //inherited;
  DataModule1.fdQryAgenda.post;
  datamodule1.fdQryAgenda.close;
  datamodule1.fdQryAgenda.open;
  datamodule1.fdQryAgenda.first;
  showMessage('Agendamento salvo com sucesso!');
end;

procedure TfrmAgenda.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);

begin
  inherited;
if Column.Field = DataModule1.fdQryAgendanm_status then
if DataModule1.fdQryAgendafk_id_status.value = 1 then
begin
  DBGrid1.Canvas.Font.Style :=
  DBGrid1.Canvas.Font.Style + [fsBold];
  DBGrid1.Canvas.Font.Color := clGreen;
  DBGrid1.DefaultDrawDataCell(rect,Column.Field,State);
  end else
  begin
    DBGrid1.Canvas.Font.Style :=
    DBGrid1.Canvas.Font.Style + [fsBold];
    DBGrid1.Canvas.Font.Color := clRed;
    DBGrid1.DefaultDrawDataCell(rect,Column.Field,State);
  end;
end;

procedure TfrmAgenda.Edit1Change(Sender: TObject);
begin
  inherited;
DataModule1.fdQryProdutoAgenda.close;
DataModule1.fdQryProdutoAgenda.SQL.Clear;
DataModule1.fdQryProdutoAgenda.Open;
end;

procedure TfrmAgenda.FormShow(Sender: TObject);
begin
  inherited;
DataModule1.fdQryAgenda.close;
DataModule1.fdQryAgenda.open;
DataModule1.fdQryCliente.close;
DataModule1.fdQryCliente.open;
DataModule1.fdQryProduto.close;
DataModule1.fdQryProduto.open;
ds.dataset.close;
ds.dataset.open;
DataModule1.fdQryProdutoAgenda.close;
DataModule1.fdQryProdutoAgenda.open;
DataModule1.fdQryParcela.close;
DataModule1.fdQryParcela.open;
DataModule1.fdQryItensAgenda.close;
DataModule1.fdQryItensAgenda.open;
end;

end.

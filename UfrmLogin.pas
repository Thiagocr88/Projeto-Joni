unit UfrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  TfrmLogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    edt_Login: TEdit;
    edt_Senha: TEdit;
    Image1: TImage;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edt_LoginKeyPress(Sender: TObject; var Key: Char);
    procedure edt_SenhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses UfrmPrincipal, UDM, UfrmCadastroUsuario;

function getDatalimite(): TDateTime;
 var
   valorParametro: String;
 begin

  DataModule1.fdQryParametro.close;
  DataModule1.fdQryParametro.sql.clear;
  DataModule1.fdQryParametro.sql.add('SELECT valor FROM tb_parametro WHERE nm_parametro = :pnm_parametro ');
  DataModule1.fdQryParametro.parambyname('pnm_parametro').value := 'data_limite';
  DataModule1.fdQryParametro.open;

  valorParametro := DataModule1.fdQryParametro.FieldByName('valor').AsString;
  getDatalimite := StrToDate(valorParametro);

 end;

procedure TfrmLogin.BitBtn1Click(Sender: TObject);
var
  dataLimite: TDateTime;
begin

  dataLimite := getDatalimite();

  //showMessage('dateLimite = ' + DateToStr(dataLimite) + ' e data atual = ' + DateToStr(Now));

  if (Now >= dataLimite) then
  begin
    showMessage('Atingiu data limite, necessário desbloquear');
    Halt(4);
  end;

  DataModule1.fdQryLogin.close;
  DataModule1.fdQryLogin.sql.clear;
  DataModule1.fdQryLogin.sql.add('SELECT login, senha FROM tb_login WHERE login= :plogin AND senha= :psenha');
  DataModule1.fdQryLogin.parambyname('plogin').
  VALUE:=edt_Login.text;
  DataModule1.fdQryLogin.parambyname('psenha').
  value:=edt_Senha.text;
  DataModule1.fdQryLogin.open;
  if  (DataModule1.fdQryLogin.recordcount<>0) THEN
  begin

    if frmPrincipal = nil then
    frmPrincipal:= TfrmPrincipal.Create(Self);
          frmLogin.Hide;
          frmPrincipal.ShowModal;
  end
  else
    showMessage('Login ou senha incorretos!');
end;

procedure TfrmLogin.BitBtn2Click(Sender: TObject);
begin
application.terminate;
end;

procedure TfrmLogin.edt_LoginKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #13 Then
BEGIN
edt_Senha.SetFocus;
END;
end;

procedure TfrmLogin.edt_SenhaKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #13 Then
begin
BitBtn1.SetFocus;
end;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
KeyPreview:=true;
end;

procedure TfrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
SelectNext(ActiveControl as TWinControl,True,True);
key:=#0;
end;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
edt_Login.SetFocus;
end;

procedure TfrmLogin.Label3Click(Sender: TObject);
begin
if frmCadastroUsuario =nil then
frmCadastroUsuario := TfrmCadastroUsuario.create(self);
frmCadastroUsuario.ShowModal;
end;

end.

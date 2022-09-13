unit UfrmSuporte;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, ShellAPI;

type
  TfrmSuporte = class(TForm)
    Image0: TImage;
    Label1: TLabel;
    LinkLabel1: TLinkLabel;
    LinkLabel2: TLinkLabel;
    Image1: TImage;
    Image2: TImage;
    Label3: TLabel;
    Image3: TImage;
    Image4: TImage;
    LinkLabel3: TLinkLabel;
    LinkLabel4: TLinkLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure LinkLabel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure LinkLabel1MouseLeave(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSuporte: TfrmSuporte;

implementation

{$R *.dfm}

uses UDM;

procedure TfrmSuporte.LinkLabel1MouseLeave(Sender: TObject);
begin
  TLabel(Sender).Font.Color := clBlack;
  TLabel(Sender).Font.Style := [];
  Cursor := crDefault;
end;

procedure TfrmSuporte.LinkLabel1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  TLabel(Sender).Font.Color := clBlue;
  TLabel(Sender).Font.Style := [fsUnderline];
  Cursor := crHandPoint;
end;

end.

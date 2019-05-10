unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMeuRegistro = record
    Id: Integer;
    Nome: String;
    procedure Reset;
    constructor Create(ANome: String);
  end;

  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  LRec: TMeuRegistro;
begin
  LRec.Create('Fabio');
  LRec.Reset;
  LRec.Id   := 1;
  LRec.Nome := 'Teste';

end;

{ TMeuRegistro }

constructor TMeuRegistro.Create(ANome: String);
begin
  Self.Nome := ANome;
end;

procedure TMeuRegistro.Reset;
begin
  Self.Id   := 0;
  Self.Nome := EmptyStr;
end;

end.

unit Phall;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel;

type
  TForm1 = class(TForm)
    RzPanel1: TRzPanel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

USES Proom;

procedure TForm1.FormShow(Sender: TObject);
begin
FORm2.Show;
end;

end.

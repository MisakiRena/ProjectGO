unit Proom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TForm2 = class(TForm)
    RzPanel1: TRzPanel;
    Button1: TButton;
    TRZPL: TRzPanel;
    image1: TImage;
    procedure Draw(ti:TImage);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin
  Draw(Image1);  
end;

procedure TForm2.Draw(ti:TImage);
Var
I:Integer;
begin
ti.Picture.Bitmap.LoadFromFile('D:\200772095941245_2.bmp');

For I := 0 to 18 do
  begin
  if (I=0)or(I=18) then ti.Canvas.Pen.Width:=2 else ti.Canvas.Pen.Width:=1;
  ti.Canvas.MoveTo(20,I*32+20); //20.20  �_,148 I320
  ti.Canvas.LineTo(596,I*32+20);//596.20 ��,148
  ti.Canvas.MoveTo(I*32+20,20); //20.20  148,�_
  ti.Canvas.LineTo(I*32+20,596);//20.596 148,��
  end;

end;

end.

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
    procedure DrawBoardFrame(ti:TImage);
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
  DrawBoardFrame(Image1);
end;

procedure TForm2.DrawBoardFrame(ti:TImage);
Var
I,Bh,Bm,Bn,Bp:Integer;
trz:TRzPanel;
begin
ti.Picture.Bitmap.LoadFromFile('D:\200772095941245_2.bmp');
trz:=TRzPanel(ti.Parent);
Bh:=trz.Height;     //取得父元件大小
Bp:=19*Bh div 20;   //繪製棋盤大小(19格+1格預留邊框)
Bm:=Bp div 19;
Bn:=Bh-Bm;
For I := 0 to 18 do
  begin
  if (I=0)or(I=18) then ti.Canvas.Pen.Width:=3 else
    if (I=3)or(I=9)or(I=15)  then  ti.Canvas.Pen.Width:=2
    else  ti.Canvas.Pen.Width:=1;
  ti.Canvas.MoveTo(Bm,Bm+I*Bm);        //20.20  起,148 I320
  ti.Canvas.LineTo(Bn,Bm+I*Bm);     //596.20 終,148
  ti.Canvas.MoveTo(Bm+I*Bm,Bm);     //20.20  148,起
  ti.Canvas.LineTo(Bm+I*Bm,Bn);     //20.596 148,終
  end;

end;

end.

unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Image1: TImage;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Button1: TButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit1, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10, Unit11;

procedure TForm2.FormCreate(Sender: TObject);
begin
self.Width:= image1.Width;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
form6.Show;
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
form5.Show;

end;

procedure TForm2.SpeedButton3Click(Sender: TObject);
begin
form10.Show;
end;

procedure TForm2.SpeedButton4Click(Sender: TObject);
begin
form8.show;
end;

procedure TForm2.SpeedButton5Click(Sender: TObject);
begin
form11.Show;
end;

procedure TForm2.SpeedButton6Click(Sender: TObject);
begin
form9.Show;
end;

end.

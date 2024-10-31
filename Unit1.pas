unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.MPlayer;

type
  TForm1 = class(TForm)
    MediaPlayer1: TMediaPlayer;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm1.Button1Click(Sender: TObject);
begin
form2.showmodal;
Button1.Parent := Panel1;
Button1.BringToFront;
form1.Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
MediaPlayer1.FileName :=  '3851641-hd_1920_1080_30fps';
  MediaPlayer1.AutoOpen := True;
  MediaPlayer1.Notify := True;
  MediaPlayer1.Play;
  Label1.Visible := True;
end;

procedure TForm1.Label1Click(Sender: TObject);
begin
Label1.bringtofront;
end;

end.

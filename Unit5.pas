unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.OleCtrls, SHDocVw;

type
  TForm5 = class(TForm)
    ListBox1: TListBox;
    Image1: TImage;
    Button1: TButton;
    procedure ListBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit2, Unit7;

procedure TForm5.Button1Click(Sender: TObject);
begin
form2.showmodal;
form2.show;
end;

procedure TForm5.ListBox1Click(Sender: TObject);
begin
if listbox1.ItemIndex = 0 then begin
  form5.Hide;
  form7.show;
  form7.WebBrowser1.navigate(ExtractFilePath(paramstr(0))+'драм театр.htm');
end;
if listbox1.ItemIndex = 1 then begin
   form5.Hide;
   form7.show;
   form7.WebBrowser1.navigate(ExtractFilePath(paramstr(0))+'театр кукол.htm');
end;
  if listbox1.ItemIndex = 2 then begin
   form5.Hide;
   form7.show;
   form7.WebBrowser1.navigate(ExtractFilePath(paramstr(0))+'площадь советская.htm');
  end;
   if listbox1.ItemIndex = 3 then begin
    form5.Hide;
   form7.show;
   form7.WebBrowser1.navigate(ExtractFilePath(paramstr(0))+'коложская церковь.htm');
   end;
    if listbox1.ItemIndex = 4 then begin
    form5.Hide;
   form7.show;
   form7.WebBrowser1.navigate(ExtractFilePath(paramstr(0))+'дом масонов.htm');
   end;
end;

end.

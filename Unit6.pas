unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TForm6 = class(TForm)
    Image1: TImage;
    ListBox1: TListBox;
    Button1: TButton;
    procedure ListBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit7, Unit2;

procedure TForm6.Button1Click(Sender: TObject);
begin
form2.show;
form6.Hide;
end;

procedure TForm6.ListBox1Click(Sender: TObject);
begin
if listbox1.ItemIndex = 0 then begin
  form6.Hide;
  form7.show;
  form7.WebBrowser1.navigate(ExtractFilePath(paramstr(0))+'минские ворота.htm');
end;
if listbox1.ItemIndex = 1 then begin
  form6.Hide;
  form7.show;
  form7.WebBrowser1.navigate(ExtractFilePath(paramstr(0))+'площадь победы.htm');
end;
if listbox1.ItemIndex = 2 then begin
  form6.Hide;
  form7.show;
  form7.WebBrowser1.navigate(ExtractFilePath(paramstr(0))+'Троицкое предместье.htm');
end;
if listbox1.ItemIndex = 3  then begin
  form6.Hide;
  form7.show;
  form7.WebBrowser1.navigate(ExtractFilePath(paramstr(0))+'Лошицкий парк.htm');
end;
if listbox1.ItemIndex = 4 then begin
  form6.Hide;
  form7.show;
  form7.WebBrowser1.navigate(ExtractFilePath(paramstr(0))+'кафедральный собор.htm');
end;
end;

end.

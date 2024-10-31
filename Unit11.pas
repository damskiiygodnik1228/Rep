unit Unit11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TForm11 = class(TForm)
    Image1: TImage;
    ListBox1: TListBox;
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

uses Unit7, Unit2;

procedure TForm11.ListBox1Click(Sender: TObject);
begin
if listbox1.ItemIndex = 0 then begin
  form11.Hide;
  form7.show;
  form7.WebBrowser1.navigate(ExtractFilePath(paramstr(0))+'Башня обозрения.htm');
end;
if listbox1.ItemIndex = 1 then begin
  form11.Hide;
  form7.show;
  form7.WebBrowser1.navigate(ExtractFilePath(paramstr(0))+'гомельский ансамбль.htm');
end;
if listbox1.ItemIndex = 2 then begin
  form11.Hide;
  form7.show;
  form7.WebBrowser1.navigate(ExtractFilePath(paramstr(0))+'часовая усыпальница.htm');
end;
if listbox1.ItemIndex = 3 then begin
  form11.Hide;
  form7.show;
  form7.WebBrowser1.navigate(ExtractFilePath(paramstr(0))+'памятник гулливеру.htm');
end;
end;

end.

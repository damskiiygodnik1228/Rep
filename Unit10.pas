unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TForm10 = class(TForm)
    Image1: TImage;
    ListBox1: TListBox;
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

uses Unit2, Unit7;

procedure TForm10.ListBox1Click(Sender: TObject);
begin
if listbox1.ItemIndex = 0 then begin
  form10.Hide;
  form7.show;
  form7.WebBrowser1.navigate(ExtractFilePath(paramstr(0))+'����������� ������.htm');
end;
if listbox1.ItemIndex = 1 then begin
  form10.Hide;
  form7.show;
  form7.WebBrowser1.navigate(ExtractFilePath(paramstr(0))+'������� �����.htm');
end;
  if listbox1.ItemIndex = 2 then begin
  form10.Hide;
  form7.show;
  form7.WebBrowser1.navigate(ExtractFilePath(paramstr(0))+'������ ����������.htm');
end;
if listbox1.ItemIndex = 3 then begin
  form10.Hide;
  form7.show;
  form7.WebBrowser1.navigate(ExtractFilePath(paramstr(0))+'����������� ���� �����.htm');
end;
end;

end.

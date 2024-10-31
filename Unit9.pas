unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TForm9 = class(TForm)
    Image1: TImage;
    ListBox1: TListBox;
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

uses Unit2, Unit7;

procedure TForm9.ListBox1Click(Sender: TObject);
begin
if listbox1.ItemIndex = 0 then begin
  form9.Hide;
  form7.show;
  form7.WebBrowser1.navigate(ExtractFilePath(paramstr(0))+'славнский базар.htm');
end;
if listbox1.ItemIndex = 1 then begin
  form9.Hide;
  form7.show;
  form7.WebBrowser1.navigate(ExtractFilePath(paramstr(0))+'три штыка.htm');
end;
 if listbox1.ItemIndex = 2 then begin
  form9.Hide;
  form7.show;
  form7.WebBrowser1.navigate(ExtractFilePath(paramstr(0))+'Пушкинский мост .htm');
end;
  if listbox1.ItemIndex = 3 then begin
  form9.Hide;
  form7.show;
  form7.WebBrowser1.navigate(ExtractFilePath(paramstr(0))+'кировский мост.htm');
end;
end;

end.

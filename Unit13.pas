unit Unit13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TForm13 = class(TForm)
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;
   f: Text;
  s: string;
  Nvern, ball, TotalQuestions, percentage: integer;

implementation

{$R *.dfm}

procedure TForm13.Button1Click(Sender: TObject);
begin
if (RadioGroup2.ItemIndex > -1) and (not Eof(f)) then
  begin
    totalQuestions := totalQuestions + 1; // ����������� ����� ���������� ��������
    // ���� ��������� ������� ������������� ������ ������� ������, �� ���� ������������
    if RadioGroup2.ItemIndex = Nvern - 1 then
    begin
      ball := ball + 1;
      Label1.Caption := '�����!';
    end
    else
    begin
      Label1.Caption := '�������';
    end;
    RadioGroup2.Items.Clear; // ��������� ���� ��� ���������� �������
    repeat
      if (s[1] = '-') then
      begin
        delete(s, 1, 1);
        RadioGroup2.Caption := s;
      end
      else if s[1] = '*' then
      begin
        delete(s, 1, 1);
        Nvern := StrToInt(s);
      end
      else
        RadioGroup2.Items.Add(s);
      readln(f, s);
    until (s[1] = '-') or Eof(f);
  end
  // ���� ����� ����� ���������, ������ ������� �����������
  else if Eof(f) then
  begin
    delete(s, 1, 1);
    Nvern := StrToInt(s);
    totalQuestions := totalQuestions + 1; // ����������� ����� ���������� ��������
    if RadioGroup2.ItemIndex = Nvern - 1 then
    begin
      ball := ball + 1;
      Label1.Caption := '�����!';
    end
    else
    begin
      Label1.Caption := '�������';
    end;
    // ��������� ������� ���������� �������
    Label2.Caption := Label2.Caption + Format('. ��� ���������: %d%% ���������� �������', [Round(ball / totalQuestions * 100)]);
    CloseFile(f);
end;


end;

procedure TForm13.Button2Click(Sender: TObject);
begin
RadioGroup1.ItemIndex:=-1;
RadioGroup1.Enabled:=true;
RadioGroup2.Enabled:=false;
RadioGroup2.Items.Clear;
label1.Caption:='';
RadioGroup2.Caption:='�������';
end;

procedure TForm13.RadioGroup1Click(Sender: TObject);
begin
 RadioGroup1.Enabled := false; // ����� �������� ���������� ����������
  RadioGroup2.Enabled := true; // ��������� ���������� ���� � ��������
  Button1.Enabled := true; // ������ �����
  case RadioGroup1.ItemIndex of
    // � ����������� �� ���������� �������� ���������� f
    0: AssignFile(f, '������.txt'); // ����������� � ������� �������
    1: AssignFile(f, '�����.txt');
    2: AssignFile(f, '�����.txt');
    3: AssignFile(f, '�������.txt');
    4: AssignFile(f, '�������.txt');
    5: AssignFile(f, '������.txt');
  end;
  reset(f); // ��������� ���� ��� ������
  readln(f, s); // ��������� ������ ������ �� �����
  ball := 0; // ���������� ���������� ������ 0
  totalQuestions := 0; // ���������� ���������� �������� 0
  repeat
    if (s[1] = '-') then
    begin
      // ���� ������ ������ ������ �-� ������ ��� ������
      delete(s, 1, 1);
      RadioGroup2.Caption := s;
    end
    else if s[1] = '*' then
    begin
      // ���� ������ ������ �*� ������ ��� ����� ������� ������
      delete(s, 1, 1);
      Nvern := StrToInt(s);
    end
    else
      RadioGroup2.Items.Add(s); // ����� ��� ������� ������
    readln(f, s); // ��������� ��������� ������ �� �����
  until (s[1] = '-') or Eof(f); // ���������� � ����������� ��������� ������� � RadiGroup �� ��� ���
  // ���� �� ��������� ��������� ������ ��� ����� �����
end;

end.

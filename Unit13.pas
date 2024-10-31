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
    totalQuestions := totalQuestions + 1; // Увеличиваем общее количество вопросов
    // Если выбранный вариант соответствует номеру верного ответа, то балл прибавляется
    if RadioGroup2.ItemIndex = Nvern - 1 then
    begin
      ball := ball + 1;
      Label1.Caption := 'Верно!';
    end
    else
    begin
      Label1.Caption := 'Неверно';
    end;
    RadioGroup2.Items.Clear; // Очищается поле для следующего вопроса
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
  // Если конец файла достигнут, значит вопросы закончились
  else if Eof(f) then
  begin
    delete(s, 1, 1);
    Nvern := StrToInt(s);
    totalQuestions := totalQuestions + 1; // Увеличиваем общее количество вопросов
    if RadioGroup2.ItemIndex = Nvern - 1 then
    begin
      ball := ball + 1;
      Label1.Caption := 'Верно!';
    end
    else
    begin
      Label1.Caption := 'Неверно';
    end;
    // Вычисляем процент правильных ответов
    Label2.Caption := Label2.Caption + Format('. Ваш результат: %d%% правильных ответов', [Round(ball / totalQuestions * 100)]);
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
RadioGroup2.Caption:='Вопросы';
end;

procedure TForm13.RadioGroup1Click(Sender: TObject);
begin
 RadioGroup1.Enabled := false; // Выбор варианта становится недоступен
  RadioGroup2.Enabled := true; // Доступным становится поле с вопросом
  Button1.Enabled := true; // Кнопка Далее
  case RadioGroup1.ItemIndex of
    // В зависимости от выбранного варианта переменная f
    0: AssignFile(f, 'гродно.txt'); // связывается с разными файлами
    1: AssignFile(f, 'брест.txt');
    2: AssignFile(f, 'минск.txt');
    3: AssignFile(f, 'витебск.txt');
    4: AssignFile(f, 'могилев.txt');
    5: AssignFile(f, 'гомель.txt');
  end;
  reset(f); // Открываем файл для чтения
  readln(f, s); // Считываем первую строку из файла
  ball := 0; // изначально количество баллов 0
  totalQuestions := 0; // изначально количество вопросов 0
  repeat
    if (s[1] = '-') then
    begin
      // Если первый символ строки ‘-’ значит это вопрос
      delete(s, 1, 1);
      RadioGroup2.Caption := s;
    end
    else if s[1] = '*' then
    begin
      // Если первый символ ‘*’ значит это номер верного ответа
      delete(s, 1, 1);
      Nvern := StrToInt(s);
    end
    else
      RadioGroup2.Items.Add(s); // Иначе это вариант ответа
    readln(f, s); // Считываем следующую строку из файла
  until (s[1] = '-') or Eof(f); // Считывание и отправление вариантов ответов в RadiGroup до тех пор
  // пока не достигнут следующий вопрос или конец файла
end;

end.

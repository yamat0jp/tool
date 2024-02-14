unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Button3: TButton;
    ComboBox1: TComboBox;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private êÈåæ }
  public
    { Public êÈåæ }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  s: string;
begin
  for var i := 0 to ListBox1.Count - 1 do
  begin
    if i < 10 then
      s := '0' + i.ToString
    else
      s := i.ToString;
    ReNameFile(Edit1.Text + '\' + ListBox1.Items[i], Edit1.Text + '\' + s +
      ComboBox1.Text);
  end;
  if ListBox1.Count > 0 then
    Button3Click(Sender);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  list: TStringList;
begin
  list := TStringList.Create;
  try
    for var name in ListBox1.Items do
    begin
      list.Add('file ' + name);
      list.SaveToFile(Edit1.Text + '\video-list.txt');
    end;
  finally
    list.Free;
  end;
  if ListBox1.Count > 0 then
    Showmessage('çÏê¨äÆóπ.');
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  num: integer;
  rec: TSearchRec;
begin
  ListBox1.Items.Clear;
  num := FindFirst(Edit1.Text + '\*' + ComboBox1.Text, faNormal, rec);
  while num = 0 do
  begin
    ListBox1.Items.Add(rec.Name);
    num := FindNext(rec);
  end;
  FindClose(rec);
end;

end.

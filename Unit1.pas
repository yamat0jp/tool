unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DdeMan, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Edit1: TEdit;
    Button3: TButton;
    ComboBox1: TComboBox;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    procedure Button3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private êÈåæ }
  public
    { Public êÈåæ }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses ShellAPI;

procedure TForm1.Button3Click(Sender: TObject);
var
  num: integer;
  rec: TSearchRec;
  s: string;
begin
  ListBox1.Items.Clear;
  num := FindFirst(Edit1.Text + '\*' + ComboBox1.Text, faNormal, rec);
  while num = 0 do
  begin
    if rec.Name <> 'output' + ComboBox1.Text then
      ListBox1.Items.Add(Format('''%s''', [rec.Name]));
    num := FindNext(rec);
  end;
  FindClose(rec);
  var
  list := TStringList.Create;
  try
    for var name in ListBox1.Items do
      list.Add('file ' + name);
    list.SaveToFile(Edit1.Text + '\video-list.txt');
  finally
    list.Free;
  end;
  if ListBox1.Count > 0 then
  begin
    SetCurrentDir(Edit1.Text);
    s := ' -safe 0 -f concat -i video-list.txt -c copy output' + ComboBox1.Text;
    ShellExecute(Handle, 'open', 'ffmpeg', PChar(s), nil, SW_SHOWNORMAL);
  end;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    Edit1.Text := ExtractFileDir(OpenDialog1.FileName);
end;

end.

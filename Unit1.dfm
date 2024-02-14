object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 180
    Top = 27
    Width = 38
    Height = 15
    Caption = 'dirPath'
  end
  object ListBox1: TListBox
    Left = 0
    Top = 0
    Width = 161
    Height = 441
    Align = alLeft
    ItemHeight = 15
    TabOrder = 0
    ExplicitHeight = 440
  end
  object Button1: TButton
    Left = 441
    Top = 104
    Width = 75
    Height = 25
    Caption = 'ReName'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 441
    Top = 152
    Width = 75
    Height = 25
    Caption = 'makeList'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 224
    Top = 24
    Width = 377
    Height = 23
    TabOrder = 3
  end
  object Button3: TButton
    Left = 248
    Top = 104
    Width = 75
    Height = 25
    Caption = 'getfiles'
    Default = True
    TabOrder = 4
    OnClick = Button3Click
  end
  object ComboBox1: TComboBox
    Left = 248
    Top = 232
    Width = 145
    Height = 23
    ItemIndex = 0
    TabOrder = 5
    Text = '.mp4'
    Items.Strings = (
      '.mp4'
      '.wmv')
  end
end

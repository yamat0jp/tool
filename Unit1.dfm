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
  object SpeedButton1: TSpeedButton
    Left = 562
    Top = 53
    Width = 23
    Height = 22
    OnClick = SpeedButton1Click
  end
  object ListBox1: TListBox
    Left = 0
    Top = 0
    Width = 161
    Height = 441
    Align = alLeft
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 15
    TabOrder = 0
    ExplicitWidth = 157
    ExplicitHeight = 440
  end
  object Edit1: TEdit
    Left = 224
    Top = 24
    Width = 377
    Height = 23
    TabOrder = 1
    Text = 'C:\Users\yamat\Downloads'
  end
  object Button3: TButton
    Left = 248
    Top = 104
    Width = 75
    Height = 25
    Caption = 'execute'
    Default = True
    TabOrder = 2
    OnClick = Button3Click
  end
  object ComboBox1: TComboBox
    Left = 248
    Top = 203
    Width = 145
    Height = 23
    ItemIndex = 0
    TabOrder = 3
    Text = '.mp4'
    Items.Strings = (
      '.mp4'
      '.wmv')
  end
  object OpenDialog1: TOpenDialog
    Left = 472
    Top = 224
  end
end

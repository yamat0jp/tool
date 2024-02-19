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
  object Panel1: TPanel
    Left = 161
    Top = 0
    Width = 463
    Height = 441
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 224
    ExplicitTop = 216
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 6
      Top = 50
      Width = 38
      Height = 15
      Caption = 'dirPath'
    end
    object SpeedButton1: TSpeedButton
      Left = 391
      Top = 92
      Width = 23
      Height = 22
      OnClick = SpeedButton1Click
    end
    object Button3: TButton
      Left = 78
      Top = 139
      Width = 75
      Height = 25
      Caption = 'execute'
      Default = True
      TabOrder = 0
      OnClick = Button3Click
    end
    object Edit1: TEdit
      Left = 50
      Top = 47
      Width = 377
      Height = 23
      TabOrder = 1
      Text = 'C:\Users\yamat\Downloads'
    end
    object ComboBox1: TComboBox
      Left = 78
      Top = 210
      Width = 145
      Height = 23
      ItemIndex = 0
      TabOrder = 2
      Text = '.mp4'
      Items.Strings = (
        '.mp4'
        '.wmv')
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 472
    Top = 224
  end
end

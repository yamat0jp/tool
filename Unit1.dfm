object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'ffmpeg tool'
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
    Height = 422
    Align = alClient
    ItemHeight = 15
    TabOrder = 0
    ExplicitWidth = 157
    ExplicitHeight = 421
  end
  object Panel1: TPanel
    Left = 161
    Top = 0
    Width = 463
    Height = 422
    Align = alRight
    TabOrder = 1
    ExplicitLeft = 157
    ExplicitHeight = 421
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 422
    Width = 624
    Height = 19
    Panels = <
      item
        Text = #12501#12449#12452#12523#21517#12399#33521#25968#23383#12391#12394#12356#12392#32080#21512#12501#12449#12452#12523#12364#30772#25613#12375#12414#12377
        Width = 50
      end>
    ExplicitTop = 421
    ExplicitWidth = 620
  end
  object OpenDialog1: TOpenDialog
    Left = 472
    Top = 224
  end
end

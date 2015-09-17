object AddImageForm: TAddImageForm
  Left = 370
  Top = 245
  Width = 533
  Height = 293
  Caption = 'Add Image'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image: TLabel
    Left = 16
    Top = 40
    Width = 59
    Height = 24
    Caption = 'Adress'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Image1: TImage
    Left = 8
    Top = 80
    Width = 193
    Height = 153
  end
  object Label1: TLabel
    Left = 232
    Top = 96
    Width = 41
    Height = 20
    Caption = 'Width'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 224
    Top = 145
    Width = 47
    Height = 20
    Caption = 'Height'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 88
    Top = 40
    Width = 329
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 424
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Browse'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 280
    Top = 96
    Width = 129
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = '0'
  end
  object Edit3: TEdit
    Left = 280
    Top = 144
    Width = 129
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = '0'
  end
  object Button2: TButton
    Left = 416
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Add Image'
    TabOrder = 4
    OnClick = Button2Click
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 472
    Top = 8
  end
end

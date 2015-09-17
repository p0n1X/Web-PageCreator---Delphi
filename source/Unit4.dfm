object AddTableForm: TAddTableForm
  Left = 342
  Top = 201
  Width = 483
  Height = 254
  Caption = 'Add Table'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Row: TLabel
    Left = 24
    Top = 8
    Width = 32
    Height = 20
    Caption = 'Row'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Column: TLabel
    Left = 24
    Top = 48
    Width = 54
    Height = 20
    Caption = 'Column'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Border: TLabel
    Left = 24
    Top = 104
    Width = 48
    Height = 20
    Caption = 'Border'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object CELLSPACING: TLabel
    Left = 192
    Top = 8
    Width = 112
    Height = 20
    Caption = 'CELLSPACING'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object CELLPADDING: TLabel
    Left = 184
    Top = 56
    Width = 114
    Height = 20
    Caption = 'CELLPADDING'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Width: TLabel
    Left = 200
    Top = 104
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
  object Edit1: TEdit
    Left = 88
    Top = 8
    Width = 49
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = '0'
  end
  object Edit2: TEdit
    Left = 88
    Top = 48
    Width = 49
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = '0'
  end
  object Edit3: TEdit
    Left = 88
    Top = 104
    Width = 49
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
  object Edit4: TEdit
    Left = 320
    Top = 8
    Width = 49
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
  object Edit5: TEdit
    Left = 320
    Top = 56
    Width = 49
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = '0'
  end
  object Edit6: TEdit
    Left = 256
    Top = 104
    Width = 49
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Text = '100'
  end
  object Button1: TButton
    Left = 232
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Add Table'
    TabOrder = 6
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 320
    Top = 104
    Width = 65
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 20
    ParentFont = False
    TabOrder = 7
    Text = '%'
    Items.Strings = (
      '%'
      'px')
  end
end

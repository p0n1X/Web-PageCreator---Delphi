object AddForm: TAddForm
  Left = 286
  Top = 136
  Width = 899
  Height = 316
  Caption = 'Add Form'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Action: TLabel
    Left = 40
    Top = 32
    Width = 45
    Height = 20
    Caption = 'Action'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Method: TLabel
    Left = 40
    Top = 120
    Width = 54
    Height = 20
    Caption = 'Method'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Name: TLabel
    Left = 16
    Top = 80
    Width = 83
    Height = 20
    Caption = 'Form Name'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Input: TLabel
    Left = 16
    Top = 168
    Width = 97
    Height = 20
    Caption = 'Number Input'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 96
    Top = 32
    Width = 121
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = '#'
  end
  object ComboBox1: TComboBox
    Left = 112
    Top = 120
    Width = 65
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 20
    ParentFont = False
    TabOrder = 1
    Text = 'POST'
    Items.Strings = (
      'POST'
      'GET')
  end
  object Edit2: TEdit
    Left = 104
    Top = 80
    Width = 121
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 128
    Top = 168
    Width = 49
    Height = 28
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = '1'
    OnChange = Edit3Change
  end
  object StringGrid1: TStringGrid
    Left = 256
    Top = 16
    Width = 569
    Height = 169
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    ColWidths = (
      110
      103
      93
      64
      110)
  end
  object Button1: TButton
    Left = 600
    Top = 232
    Width = 129
    Height = 33
    Caption = 'Create Form'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button1Click
  end
  object UpDown1: TUpDown
    Left = 184
    Top = 168
    Width = 17
    Height = 25
    Min = 1
    Position = 1
    TabOrder = 6
    OnClick = UpDown1Click
  end
end

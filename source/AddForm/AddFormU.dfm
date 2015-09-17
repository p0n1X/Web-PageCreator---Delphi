object AddForm: TAddForm
  Left = 245
  Top = 189
  Width = 899
  Height = 316
  Caption = #1044#1086#1073#1072#1074#1080' '#1092#1086#1088#1084#1072
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
    Left = 16
    Top = 32
    Width = 74
    Height = 20
    Caption = #1044#1077#1081#1089#1090#1074#1080#1077
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
    Width = 51
    Height = 20
    Caption = #1052#1077#1090#1086#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Name: TLabel
    Left = 48
    Top = 80
    Width = 31
    Height = 20
    Caption = #1048#1084#1077
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
    Width = 131
    Height = 20
    Caption = #1053#1086#1084#1077#1088' '#1085#1072' '#1087#1086#1083#1077#1090#1072
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
    Left = 160
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
      106
      64
      110)
  end
  object Button1: TButton
    Left = 600
    Top = 232
    Width = 129
    Height = 33
    Caption = #1044#1086#1073#1072#1074#1080
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
    Left = 216
    Top = 168
    Width = 17
    Height = 25
    Min = 1
    Position = 1
    TabOrder = 6
    OnClick = UpDown1Click
  end
end

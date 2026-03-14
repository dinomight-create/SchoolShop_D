object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 16
    Top = 48
    Width = 585
    Height = 241
    DataSource = DataModule5.dscQuery
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btnRun: TButton
    Left = 216
    Top = 304
    Width = 81
    Height = 25
    Caption = 'Concatenate'
    TabOrder = 1
    OnClick = btnRunClick
  end
  object btnMid: TButton
    Left = 328
    Top = 304
    Width = 75
    Height = 25
    Caption = 'MID'
    TabOrder = 2
    OnClick = btnMidClick
  end
  object btnLeft: TButton
    Left = 16
    Top = 304
    Width = 75
    Height = 25
    Caption = 'LEFT'
    TabOrder = 3
  end
  object btnRight: TButton
    Left = 112
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Right'
    TabOrder = 4
  end
  object btnDescriptionsStartingWithS: TButton
    Left = 16
    Top = 384
    Width = 152
    Height = 25
    Caption = 'DescriptionsStartingWithS'
    TabOrder = 5
    OnClick = btnDescriptionsStartingWithSClick
  end
  object btnDescriptionsEndingWithS: TButton
    Left = 200
    Top = 384
    Width = 145
    Height = 25
    Caption = 'DescriptionsEndingWithS'
    TabOrder = 6
    OnClick = btnDescriptionsEndingWithSClick
  end
  object edtSearch: TLabeledEdit
    Left = 424
    Top = 386
    Width = 121
    Height = 23
    EditLabel.Width = 35
    EditLabel.Height = 15
    EditLabel.Caption = 'Search'
    TabOrder = 7
    Text = ''
    OnChange = edtSearchChange
  end
end

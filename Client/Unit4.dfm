object Form4: TForm4
  Left = 471
  Top = 242
  BorderStyle = bsSingle
  Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080
  ClientHeight = 215
  ClientWidth = 288
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 104
    Height = 13
    Caption = #1057#1087#1080#1089#1086#1082' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
  end
  object Label2: TLabel
    Left = 152
    Top = 120
    Width = 49
    Height = 13
    Caption = #1060#1072#1084#1080#1083#1080#1103
  end
  object Label3: TLabel
    Left = 152
    Top = 144
    Width = 22
    Height = 13
    Caption = #1048#1084#1103
  end
  object Label4: TLabel
    Left = 152
    Top = 168
    Width = 47
    Height = 13
    Caption = #1054#1090#1095#1077#1089#1090#1074#1086
  end
  object Label5: TLabel
    Left = 152
    Top = 192
    Width = 71
    Height = 13
    Caption = #1043#1086#1076' '#1088#1086#1078#1076#1077#1085#1080#1103
  end
  object DBText1: TDBText
    Left = 216
    Top = 120
    Width = 65
    Height = 17
    DataField = 'fam'
    DataSource = DataModule2.DataSourcePers
  end
  object DBText2: TDBText
    Left = 184
    Top = 144
    Width = 65
    Height = 17
    DataField = 'nam'
    DataSource = DataModule2.DataSourcePers
  end
  object DBText3: TDBText
    Left = 208
    Top = 168
    Width = 65
    Height = 17
    DataField = 'par'
    DataSource = DataModule2.DataSourcePers
  end
  object DBText4: TDBText
    Left = 232
    Top = 192
    Width = 65
    Height = 17
    DataField = 'year_b'
    DataSource = DataModule2.DataSourcePers
  end
  object Image1: TImage
    Left = 152
    Top = 8
    Width = 129
    Height = 105
    Stretch = True
  end
  object Label6: TLabel
    Left = 8
    Top = 128
    Width = 48
    Height = 13
    Caption = #1061#1072#1088#1072#1082#1090#1077#1088
  end
  object DBMemo1: TDBMemo
    Left = 8
    Top = 144
    Width = 129
    Height = 57
    DataField = 'charact'
    DataSource = DataModule2.DataSourcePers
    TabOrder = 0
  end
  object DBLookupListBox1: TDBLookupListBox
    Left = 8
    Top = 24
    Width = 129
    Height = 95
    KeyField = 'id_pers'
    ListField = 'fam'
    ListSource = DataModule2.DataSourcePers
    TabOrder = 1
    OnClick = DBLookupListBox1Click
  end
end

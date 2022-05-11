object Form5: TForm5
  Left = 0
  Top = 0
  AutoSize = True
  Caption = #1057#1086#1079#1076#1072#1085#1080#1077'/'#1048#1079#1084#1077#1085#1077#1085#1080#1077
  ClientHeight = 343
  ClientWidth = 716
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 8
    Top = 72
    Width = 39
    Height = 13
    Caption = #1057#1090#1072#1090#1091#1089' '
  end
  object Label4: TLabel
    Left = 313
    Top = 40
    Width = 86
    Height = 13
    Caption = #1044#1072#1095#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '
  end
  object Label3: TLabel
    Left = 8
    Top = 40
    Width = 68
    Height = 13
    Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '
  end
  object Label2: TLabel
    Left = 313
    Top = 3
    Width = 105
    Height = 13
    Caption = #1062#1077#1093'-'#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100' '
  end
  object Label1: TLabel
    Left = 8
    Top = 0
    Width = 68
    Height = 13
    Caption = #1053#1086#1084#1077#1088' '#1079#1072#1082#1072#1079#1072
  end
  object DBText1: TDBText
    Left = 120
    Top = 0
    Width = 65
    Height = 17
    DataField = 'id_order'
    DataSource = DataModule2.DataSource1
  end
  object DBEdit1: TDBEdit
    Left = 424
    Top = 0
    Width = 121
    Height = 21
    DataField = 'workshop'
    DataSource = DataModule2.DataSource1
    TabOrder = 0
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 96
    Width = 228
    Height = 25
    DataSource = DataModule2.DataSource2
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    TabOrder = 1
    OnClick = DBNavigator1Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 127
    Width = 716
    Height = 185
    DataSource = DataModule2.DataSource2
    PopupMenu = PopupMenu1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit3: TDBEdit
    Left = 424
    Top = 37
    Width = 121
    Height = 21
    DataField = 'date_end'
    DataSource = DataModule2.DataSource1
    MaxLength = 10
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 120
    Top = 37
    Width = 121
    Height = 21
    DataField = 'date_begin'
    DataSource = DataModule2.DataSource1
    MaxLength = 10
    TabOrder = 4
  end
  object DBComboBox1: TDBComboBox
    Left = 120
    Top = 69
    Width = 145
    Height = 21
    DataField = 'status'
    DataSource = DataModule2.DataSource1
    Items.Strings = (
      #1085#1086#1074#1099#1081
      #1074' '#1088#1072#1073#1086#1090#1077
      #1074#1099#1087#1086#1083#1085#1077#1085)
    TabOrder = 5
  end
  object Button1: TButton
    Left = 560
    Top = 318
    Width = 75
    Height = 25
    Caption = #1054#1082
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 641
    Top = 318
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 7
    OnClick = Button2Click
  end
  object PopupMenu1: TPopupMenu
    Left = 672
    Top = 16
    object N9: TMenuItem
      Caption = #1076#1086#1073#1072#1074#1080#1090#1100
      OnClick = N9Click
    end
    object N10: TMenuItem
      Caption = #1080#1079#1084#1077#1085#1080#1090#1100
      OnClick = N10Click
    end
    object N11: TMenuItem
      Caption = #1091#1076#1072#1083#1080#1090#1100
      OnClick = N11Click
    end
  end
end

object Form1: TForm1
  Left = 0
  Top = 0
  Width = 773
  Height = 371
  AutoScroll = True
  AutoSize = True
  Caption = #1047#1072#1082#1072#1079#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 757
    Height = 279
    Align = alClient
    TabOrder = 0
    object Label3: TLabel
      Left = 288
      Top = 129
      Width = 73
      Height = 13
      Caption = #1057#1086#1089#1090#1072#1074' '#1079#1072#1082#1072#1079#1072
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 6
      Width = 742
      Height = 123
      DataSource = DataModule2.DataSource1
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id_order'
          Title.Caption = #1053#1086#1084#1077#1088' '#1079#1072#1082#1072#1079#1072
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'workshop'
          Title.Caption = #1062#1077#1093'-'#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'date_begin'
          Title.Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'date_end'
          Title.Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'status'
          Title.Caption = #1057#1090#1072#1090#1091#1089
          Width = 150
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 0
      Top = 143
      Width = 742
      Height = 120
      DataSource = DataModule2.DataSource2
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'number_pos'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'steel'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'diametr'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'wall'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'volume'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'uom_1'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'status'
          Width = 100
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 757
    Height = 33
    Align = alTop
    TabOrder = 1
    Visible = False
    object Label1: TLabel
      Left = 16
      Top = 10
      Width = 102
      Height = 13
      Caption = #1062#1077#1093'-'#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100
    end
    object Label2: TLabel
      Left = 251
      Top = 9
      Width = 132
      Height = 13
      Caption = #1062#1077#1083#1077#1074#1099#1077' '#1093#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080
    end
    object ComboBox1: TComboBox
      Left = 389
      Top = 6
      Width = 87
      Height = 21
      TabOrder = 0
      Text = #1074#1099#1073#1077#1088#1080#1090#1077'...'
      Items.Strings = (
        #1044#1080#1072#1084#1077#1090#1088
        #1057#1090#1077#1085#1082#1072)
    end
    object Edit1: TEdit
      Left = 124
      Top = 6
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 482
      Top = 6
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Button1: TButton
      Left = 609
      Top = 6
      Width = 64
      Height = 21
      Caption = #1053#1072#1081#1090#1080
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 679
      Top = 6
      Width = 63
      Height = 21
      Caption = #1057#1073#1088#1086#1089
      TabOrder = 4
      OnClick = Button2Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 552
    Top = 72
    object N1: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      object N2: TMenuItem
        Caption = #1052#1072#1088#1082#1072' '#1089#1090#1072#1083#1080
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1045#1076#1080#1085#1080#1094#1072' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
        OnClick = N3Click
      end
    end
    object N4: TMenuItem
      Caption = #1054#1087#1077#1088#1072#1094#1080#1080
      object N5: TMenuItem
        Caption = #1057#1086#1079#1076#1072#1085#1080#1077
        OnClick = N5Click
      end
      object N6: TMenuItem
        Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = #1059#1076#1072#1083#1077#1085#1080#1077
        OnClick = N7Click
      end
    end
    object N8: TMenuItem
      Caption = #1055#1086#1080#1089#1082
      OnClick = N8Click
    end
  end
end

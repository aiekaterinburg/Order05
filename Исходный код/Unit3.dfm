object Form3: TForm3
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = #1052#1072#1088#1082#1072' '#1089#1090#1072#1083#1080
  ClientHeight = 225
  ClientWidth = 184
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 184
    Height = 185
    DataSource = DataModule2.DataSource3
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'stell_grade'
        Title.Caption = #1052#1072#1088#1082#1072' '#1089#1090#1072#1083#1080
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 200
    Width = 184
    Height = 25
    DataSource = DataModule2.DataSource3
    VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    TabOrder = 1
  end
end

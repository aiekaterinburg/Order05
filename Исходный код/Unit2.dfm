object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 345
  Width = 381
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 176
    Top = 24
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\'#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077 +
      #1083#1100'\Desktop\'#1058#1077#1089#1090#1086#1074#1086#1077' '#1079#1072#1076#1072#1085#1080#1077'\task_2\'#1087#1088#1086#1077#1082#1090'\Database.mdb;Persist S' +
      'ecurity Info=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 24
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'id_order'
    MasterFields = 'id_order'
    MasterSource = DataSource1
    TableName = 'positions'
    Left = 96
    Top = 80
    object ADOTable2id_pos: TAutoIncField
      FieldName = 'id_pos'
      ReadOnly = True
      Visible = False
    end
    object ADOTable2id_order: TIntegerField
      FieldName = 'id_order'
      Visible = False
    end
    object ADOTable2number_pos: TIntegerField
      DisplayLabel = #1053#1086#1084#1077#1088' '#1087#1086#1079#1080#1094#1080#1080
      DisplayWidth = 12
      FieldName = 'number_pos'
    end
    object ADOTable2steel: TStringField
      DisplayLabel = #1052#1072#1088#1082#1072' '#1089#1090#1072#1083#1080
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'steel'
      LookupDataSet = ADOTable3
      LookupKeyFields = 'id_sg'
      LookupResultField = 'stell_grade'
      KeyFields = 'steel_grade'
      Lookup = True
    end
    object ADOTable2steel_grade: TIntegerField
      FieldName = 'steel_grade'
      Visible = False
    end
    object ADOTable2diametr: TFloatField
      DisplayLabel = #1044#1080#1072#1084#1077#1090#1088
      DisplayWidth = 10
      FieldName = 'diametr'
    end
    object ADOTable2wall: TWideStringField
      DisplayLabel = #1057#1090#1077#1085#1082#1072
      DisplayWidth = 11
      FieldName = 'wall'
      Size = 100
    end
    object ADOTable2volume: TIntegerField
      DisplayLabel = #1054#1073#1098#1077#1084
      DisplayWidth = 10
      FieldName = 'volume'
    end
    object ADOTable2uom_1: TStringField
      DisplayLabel = #1045#1076#1080#1085#1080#1094#1072' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'uom_1'
      LookupDataSet = ADOTable4
      LookupKeyFields = #1050#1086#1076
      LookupResultField = 'uom'
      KeyFields = 'uom'
      Lookup = True
    end
    object ADOTable2uom: TIntegerField
      DisplayLabel = #1045#1076#1080#1085#1080#1094#1072' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
      FieldName = 'uom'
      Visible = False
    end
    object ADOTable2status: TWideStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      DisplayWidth = 40
      FieldName = 'status'
      Size = 100
    end
  end
  object ADOTable3: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'stell_grade'
    Left = 96
    Top = 144
    object ADOTable3id_sg: TAutoIncField
      FieldName = 'id_sg'
      ReadOnly = True
    end
    object ADOTable3stell_grade: TWideStringField
      FieldName = 'stell_grade'
      Size = 255
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 176
    Top = 80
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    Left = 176
    Top = 144
  end
  object ADOTable4: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'uom'
    Left = 96
    Top = 200
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'id_order'
    TableName = 'order_table'
    Left = 104
    Top = 16
    object ADOTable1id_order: TAutoIncField
      FieldName = 'id_order'
      ReadOnly = True
    end
    object ADOTable1workshop: TWideStringField
      DisplayWidth = 40
      FieldName = 'workshop'
      Size = 255
    end
    object ADOTable1date_begin: TDateTimeField
      FieldName = 'date_begin'
      DisplayFormat = 'dd.mm.yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object ADOTable1date_end: TDateTimeField
      FieldName = 'date_end'
      DisplayFormat = 'dd.mm.yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object ADOTable1status: TWideStringField
      FieldName = 'status'
      Size = 255
    end
  end
  object DataSource4: TDataSource
    DataSet = ADOTable4
    Left = 176
    Top = 200
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = DataSource1
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM order_table, positions'
      'Where  positions.id_order=order_table.id_order')
    Left = 296
    Top = 72
    object ADOQuery1order_tableid_order: TAutoIncField
      FieldName = 'order_table.id_order'
      ReadOnly = True
      Visible = False
    end
    object ADOQuery1workshop: TWideStringField
      DisplayLabel = #1062#1077#1093'-'#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100
      FieldName = 'workshop'
      Size = 255
    end
    object ADOQuery1date_begin: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
      FieldName = 'date_begin'
    end
    object ADOQuery1date_end: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
      FieldName = 'date_end'
    end
    object ADOQuery1order_tablestatus: TWideStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1079#1072#1082#1072#1079#1072
      FieldName = 'order_table.status'
      Size = 255
    end
    object ADOQuery1id_pos: TAutoIncField
      FieldName = 'id_pos'
      ReadOnly = True
      Visible = False
    end
    object ADOQuery1positionsid_order: TIntegerField
      FieldName = 'positions.id_order'
      Visible = False
    end
    object ADOQuery1number_pos: TIntegerField
      DisplayLabel = #1053#1086#1084#1077#1088' '#1087#1086#1079#1080#1094#1080#1080
      FieldName = 'number_pos'
    end
    object ADOQuery1steel_grade: TIntegerField
      FieldName = 'steel_grade'
      Visible = False
    end
    object ADOQuery1diametr: TFloatField
      DisplayLabel = #1044#1080#1072#1084#1077#1090#1088
      FieldName = 'diametr'
    end
    object ADOQuery1wall: TWideStringField
      DisplayLabel = #1057#1090#1077#1085#1082#1072
      FieldName = 'wall'
      Size = 255
    end
    object ADOQuery1volume: TIntegerField
      DisplayLabel = #1054#1073#1098#1077#1084
      FieldName = 'volume'
    end
    object ADOQuery1uom: TIntegerField
      FieldName = 'uom'
      Visible = False
    end
    object ADOQuery1positionsstatus: TWideStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1087#1086#1079#1080#1094#1080#1080
      FieldName = 'positions.status'
      Size = 255
    end
    object ADOQuery1Маркастали: TStringField
      FieldKind = fkLookup
      FieldName = #1052#1072#1088#1082#1072#1089#1090#1072#1083#1080
      LookupDataSet = ADOTable3
      LookupKeyFields = 'id_sg'
      LookupResultField = 'stell_grade'
      KeyFields = 'steel_grade'
      Lookup = True
    end
    object ADOQuery1Едизмерения: TStringField
      FieldKind = fkLookup
      FieldName = #1045#1076'.'#1080#1079#1084#1077#1088#1077#1085#1080#1103
      LookupDataSet = ADOTable4
      LookupKeyFields = #1050#1086#1076
      LookupResultField = 'uom'
      KeyFields = 'uom'
      Lookup = True
    end
  end
  object DataSource5: TDataSource
    DataSet = ADOQuery1
    Left = 296
    Top = 136
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM order_table')
    Left = 296
    Top = 184
    object ADOQuery2id_order: TAutoIncField
      DisplayLabel = #1053#1086#1084#1077#1088' '#1079#1072#1082#1072#1079#1072
      FieldName = 'id_order'
      ReadOnly = True
    end
    object ADOQuery2workshop: TWideStringField
      DisplayLabel = #1062#1077#1093'-'#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100
      FieldName = 'workshop'
      Size = 255
    end
    object ADOQuery2date_begin: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
      FieldName = 'date_begin'
    end
    object ADOQuery2date_end: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
      FieldName = 'date_end'
    end
    object ADOQuery2status: TWideStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'status'
      Size = 255
    end
  end
  object DataSource6: TDataSource
    DataSet = ADOQuery2
    Left = 296
    Top = 232
  end
end

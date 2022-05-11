unit Unit2;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule2 = class(TDataModule)
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOTable2: TADOTable;
    ADOTable3: TADOTable;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    ADOTable4: TADOTable;
    ADOTable1: TADOTable;
    DataSource4: TDataSource;
    ADOTable1id_order: TAutoIncField;
    ADOTable1workshop: TWideStringField;
    ADOTable1date_begin: TDateTimeField;
    ADOTable1date_end: TDateTimeField;
    ADOTable1status: TWideStringField;
    ADOTable2id_pos: TAutoIncField;
    ADOTable2id_order: TIntegerField;
    ADOTable2number_pos: TIntegerField;
    ADOTable2steel_grade: TIntegerField;
    ADOTable2diametr: TFloatField;
    ADOTable2wall: TWideStringField;
    ADOTable2volume: TIntegerField;
    ADOTable2uom: TIntegerField;
    ADOTable2status: TWideStringField;
    ADOTable2steel: TStringField;
    ADOTable2uom_1: TStringField;
    ADOQuery1: TADOQuery;
    DataSource5: TDataSource;
    ADOQuery1order_tableid_order: TAutoIncField;
    ADOQuery1workshop: TWideStringField;
    ADOQuery1date_begin: TDateTimeField;
    ADOQuery1date_end: TDateTimeField;
    ADOQuery1order_tablestatus: TWideStringField;
    ADOQuery1id_pos: TAutoIncField;
    ADOQuery1positionsid_order: TIntegerField;
    ADOQuery1number_pos: TIntegerField;
    ADOQuery1steel_grade: TIntegerField;
    ADOQuery1diametr: TFloatField;
    ADOQuery1wall: TWideStringField;
    ADOQuery1volume: TIntegerField;
    ADOQuery1uom: TIntegerField;
    ADOQuery1positionsstatus: TWideStringField;
    ADOQuery1Маркастали: TStringField;
    ADOQuery1Едизмерения: TStringField;
    ADOTable3id_sg: TAutoIncField;
    ADOTable3stell_grade: TWideStringField;
    ADOQuery2: TADOQuery;
    DataSource6: TDataSource;
    ADOQuery2id_order: TAutoIncField;
    ADOQuery2workshop: TWideStringField;
    ADOQuery2date_begin: TDateTimeField;
    ADOQuery2date_end: TDateTimeField;
    ADOQuery2status: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

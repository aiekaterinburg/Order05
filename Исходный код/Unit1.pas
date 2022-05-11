unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Data.DB,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit3, Unit4, Unit2, Unit5, Unit6;

procedure TForm1.Button1Click(Sender: TObject);
begin
   if Combobox1.Text='выберите...' then
   begin
datamodule2.ADOQuery2.Active:=false;
datamodule2.ADOQuery2.SQL.Clear;
datamodule2.ADOQuery2.sql.add('SELECT *');
datamodule2.ADOQuery2.sql.add('FROM order_table');
datamodule2.ADOQuery2.sql.add('WHERE workshop LIKE '''+edit1.text+'''');
//datamodule2.ADOQuery1.sql.add('AND positions.id_order=order_table.id_order');
datamodule2.ADOQuery2.Active:=true ;
form6.DBGrid1.DataSource:=datamodule2.DataSource6
end;
 if Combobox1.Text='Диаметр' then
   begin
   if edit1.Text<>'' then
             begin
     datamodule2.ADOQuery1.Active:=false;
datamodule2.ADOQuery1.SQL.Clear;
datamodule2.ADOQuery1.sql.add('SELECT *');
datamodule2.ADOQuery1.sql.add('FROM order_table, positions');
datamodule2.ADOQuery1.sql.add('WHERE workshop LIKE '''+edit1.text+'''');
datamodule2.ADOQuery1.sql.add('AND diametr LIKE '''+edit2.text+'''');
datamodule2.ADOQuery1.sql.add('AND positions.id_order=order_table.id_order');
datamodule2.ADOQuery1.Active:=true ;
form6.DBGrid1.DataSource:=datamodule2.DataSource5
             end
             else
              begin
                datamodule2.ADOQuery1.Active:=false;
datamodule2.ADOQuery1.SQL.Clear;
datamodule2.ADOQuery1.sql.add('SELECT *');
datamodule2.ADOQuery1.sql.add('FROM order_table, positions');
datamodule2.ADOQuery1.sql.add('WHERE diametr LIKE '''+edit2.text+'''');
datamodule2.ADOQuery1.sql.add('AND positions.id_order=order_table.id_order');
datamodule2.ADOQuery1.Active:=true ;
form6.DBGrid1.DataSource:=datamodule2.DataSource5
              end;
   end;
  if Combobox1.Text='Стенка' then
    begin
   if edit1.Text<>'' then
             begin
     datamodule2.ADOQuery1.Active:=false;
datamodule2.ADOQuery1.SQL.Clear;
datamodule2.ADOQuery1.sql.add('SELECT *');
datamodule2.ADOQuery1.sql.add('FROM order_table, positions');
datamodule2.ADOQuery1.sql.add('WHERE workshop LIKE '''+edit1.text+'''');
datamodule2.ADOQuery1.sql.add('AND wall LIKE '''+edit2.text+'''');
datamodule2.ADOQuery1.sql.add('AND positions.id_order=order_table.id_order');
datamodule2.ADOQuery1.Active:=true ;
form6.DBGrid1.DataSource:=datamodule2.DataSource5
             end
              else
              begin
                datamodule2.ADOQuery1.Active:=false;
datamodule2.ADOQuery1.SQL.Clear;
datamodule2.ADOQuery1.sql.add('SELECT *');
datamodule2.ADOQuery1.sql.add('FROM order_table, positions');
datamodule2.ADOQuery1.sql.add('WHERE wall LIKE '''+edit2.text+'''');
datamodule2.ADOQuery1.sql.add('AND positions.id_order=order_table.id_order');
datamodule2.ADOQuery1.Active:=true ;
form6.DBGrid1.DataSource:=datamodule2.DataSource5
              end;
   end;
   
form6.showmodal;


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 combobox1.Text:='выберите...';
 edit1.Text:=''  ;
  edit2.Text:='' ;
 DataModule2.Adotable1.Filtered:=false;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  DataModule2.ADOConnection1.Connected:=false;
    DataModule2.ADOConnection1.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;' +

      'Data Source='+ExtractFilePath(Application.ExeName)+'Database.mdb' +
      ';Persist Security Info=False';


         DataModule2.ADOConnection1.Connected:=true;
         DataModule2.ADOtable1.Active:=true;
          DataModule2.ADOtable2.Active:=true;
          DataModule2.ADOtable3.Active:=true;
          DataModule2.ADOtable4.Active:=true;
          DataModule2.ADOQuery1.Active:=true;
          DataModule2.ADOQuery2.Active:=true;


end;

procedure TForm1.N2Click(Sender: TObject);
begin
form3.showmodal
end;

procedure TForm1.N3Click(Sender: TObject);
begin
 form4.showmodal
end;

procedure TForm1.N5Click(Sender: TObject);
begin
datamodule2.adotable1.insert;

form5.showmodal
end;

procedure TForm1.N6Click(Sender: TObject);
begin
datamodule2.adotable1.edit;

form5.showmodal
end;

procedure TForm1.N7Click(Sender: TObject);
begin
 if application.MessageBox(PChar('Вы действительно хотите удалить заказ № '+datamodule2.ADOTable1id_order.asstring),'Внимание!!!', MB_OKCANCEL)=id_Ok then  datamodule2.adotable1.delete;

end;

procedure TForm1.N8Click(Sender: TObject);
begin
 if panel2.Visible=false then panel2.Visible:=true else panel2.Visible:=false;
end;

end.

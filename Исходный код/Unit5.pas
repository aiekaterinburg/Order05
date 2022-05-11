unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Mask;

type
  TForm5 = class(TForm)
    DBEdit1: TDBEdit;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    DBText1: TDBText;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    DBComboBox1: TDBComboBox;
    PopupMenu1: TPopupMenu;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm5.Button1Click(Sender: TObject);
begin
if datamodule2.adotable1.modified then
     datamodule2.adotable1.POSt;
       if datamodule2.adotable2.modified then
     datamodule2.adotable2.POSt;
      close
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
 datamodule2.adotable1.Cancel;
  datamodule2.adotable2.Cancel;
 close;
end;

procedure TForm5.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  if datamodule2.adotable1.modified then
     datamodule2.adotable1.POSt;
end;

procedure TForm5.N10Click(Sender: TObject);
begin
 datamodule2.adotable2.edit;
end;

procedure TForm5.N11Click(Sender: TObject);
begin
  if application.MessageBox(PChar('Вы действительно хотите удалить позицию № '+datamodule2.ADOTable2number_pos.asstring),'Внимание!!!', MB_OKCANCEL)=id_Ok then  datamodule2.adotable2.delete;

end;

procedure TForm5.N9Click(Sender: TObject);
begin
    datamodule2.adotable2.insert;
    dbgrid1.SetFocus
end;

end.

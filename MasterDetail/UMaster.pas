unit UMaster;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    btnConec: TBitBtn;
    btnDesconec: TBitBtn;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    FDQuery2: TFDQuery;
    DBGrid2: TDBGrid;
    Label2: TLabel;
    DataSource2: TDataSource;
    procedure btnConecClick(Sender: TObject);
    procedure btnDesconecClick(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnConecClick(Sender: TObject);
begin
  FDQuery2.Open;
  FDQuery1.Open;
end;

procedure TForm1.btnDesconecClick(Sender: TObject);
begin
  FDQuery2.Active := false;
  FDQuery1.Active := false;
end;

procedure TForm1.DataSource1DataChange(Sender: TObject; Field: TField);

begin
   FDQuery2.Filtered := false;
   FDQuery2.Filter := 'codigoProduto = ' +  FDQuery1.FieldByName('codigoProduto').AsString;
   FDQuery2.Filtered := true;
end;

end.

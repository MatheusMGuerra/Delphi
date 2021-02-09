unit UAssincDetail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Vcl.StdCtrls, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    FDMemTable1: TFDMemTable;
    FDMemTable2: TFDMemTable;
    Button1: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
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

procedure TForm1.Button1Click(Sender: TObject);
begin
  FDQuery1.Open('select * from Produto');
  FDMemTable1.CopyDataSet(FDQuery1,[coStructure, coAppend, coRestart]);
  FDQuery1.Close;
  FDQuery2.Open('select * from LoteProduto');
  FDMemTable2.CopyDataSet(FDQuery2,[coStructure, coAppend, coRestart]);
  FDQuery2.Close;
end;

procedure TForm1.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  FDMemTable2.Filtered := false;
  FDMemTable2.Filter := 'codigoProduto = ' +  FDMemTable1.FieldByName('codigoProduto').AsString;
  FDMemTable2.Filtered := true;
end;

end.

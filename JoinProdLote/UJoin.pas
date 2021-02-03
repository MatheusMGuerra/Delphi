unit UJoin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    ConecJoin: TFDConnection;
    MinhaQuery: TFDQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    btnconec: TButton;
    btndescnt: TButton;
    Label1: TLabel;
    procedure btnconecClick(Sender: TObject);
    procedure btndescntClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnconecClick(Sender: TObject);
begin
 MinhaQuery.Active := true;
end;

procedure TForm1.btndescntClick(Sender: TObject);
begin
  MinhaQuery.Active := false;
end;

end.

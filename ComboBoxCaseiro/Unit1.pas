unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UCustomCombo;

type
  TForm1 = class(TForm)
    combo1: TComboBoxCustom;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtItem: TEdit;
    edtCod: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtConsulta: TEdit;
    btnSave: TButton;
    procedure btnSaveClick(Sender: TObject);
    procedure combo1Change(Sender: TObject);
  private
    { Private declarations }
  public
    produtos, codProd : String;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.btnSaveClick(Sender: TObject);
begin
  combo1.Items.Add(edtitem.Text);
  combo1.Codigo.Add(edtCod.Text);
  showmessage('Produto cadastrado com sucesso!');
  edtItem.Clear;
  edtCod.Clear;
end;

procedure TForm1.combo1Change(Sender: TObject);
var
i : integer;
begin
  i := 0;
  i := combo1.ItemIndex;
  edtConsulta.Text := combo1.Codigo[i];
end;

end.

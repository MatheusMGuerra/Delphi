unit Cliente;

interface

uses system.classes, system.SysUtils, Pessoa;

type
  TCliente = class(TPessoa)
    protected
      function validacao: boolean; override;
      function acaoLista(lista:TStringList): boolean; override;
    public
      endereco : String;
      vencimento : integer;
  end;

implementation

{ TCliente }

function TCliente.acaoLista(lista: TStringList): boolean;
begin
  Result := False;
  auxiliar := (' | Vencimento: ' + (IntToStr(vencimento)) + ' | Endereço: ' + endereco);
  inherited;
  Result := True;
end;

function TCliente.validacao: boolean;
var
v : double;
begin
  if inherited then
  begin
    if (IntToStr(vencimento) <> '') AND (vencimento >= 1) AND (vencimento <= 31)
      AND (endereco <> '') AND (length(endereco) <= 200) then
    begin
      if (trystrtofloat(endereco, v) = false) then
      begin
        result := true;
      end
      else
      begin
        result := false
      end;
    end
    else
    begin
      result := false;
    end;
  end
  else
  begin
    result := false;
  end;
end;

end.

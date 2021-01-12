unit Vendedor;

interface

uses system.classes, system.SysUtils, Pessoa;

type
  TVendedor = class(TPessoa)
  protected
    function validacao: boolean; override;
    function acaoLista(lista: TStringList): boolean; override;
  public
    comissao: double;
    tipo: string;
  end;

implementation

{ TVendedor }

function TVendedor.acaoLista(lista: TStringList): boolean;
begin
  Result := False;
  auxiliar := (' | Comissão: ' + (floatToStr(comissao)) +
    ' | Tipo do vendedor: ' + tipo);
  inherited;
  Result := True;
end;

function TVendedor.validacao: boolean;
var
v : double;
begin
  if inherited then
  begin
    if (comissao > 0) AND ((tipo = 'I') OR (tipo = 'E')) then
    begin
      if (trystrtofloat(tipo, v) = False) then
      begin
        Result := True;
      end
      else
      begin
        Result := False
      end;
    end
    else
    begin
      Result := False;
    end;
  end
  else
  begin
    Result := False;
  end;
end;

end.

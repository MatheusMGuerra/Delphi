unit Pessoa;

interface

uses system.classes, system.SysUtils;

type
  TPessoa = class
    protected
      function validacao : boolean; virtual;
      function acaoLista (lista:TStringList) : boolean; virtual;
    public
      nome, auxiliar : string;
      idade : integer;
      function salvar (lista:TStringList): boolean;
  end;
implementation

{ TPessoa }

function TPessoa.acaoLista(lista: TStringList): boolean;
begin
  result := false;
  auxiliar := (nome + ' | ' + IntToStr(idade) + ' anos ') + auxiliar;
  lista.Add(auxiliar);
  result := true;
end;

function TPessoa.salvar(lista: TStringList): boolean;
begin
  result := false;
  if validacao then
  begin
    if acaoLista(lista) then
    begin
      result := true;
    end;
  end;
end;

function TPessoa.validacao: boolean;
var
v : double;
begin
  if (nome <> '') and (INTTOSTR(idade) <> '') and (length(nome) <= 50) then
  begin
    if (trystrtofloat(nome, v) = false) then
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
end;

end.

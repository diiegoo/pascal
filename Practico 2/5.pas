program ej5;
{Este programa invierte el orden de una fila
dada utilizando una pila auxiliar}
uses Estructu;
var
	dada: fila;
	auxiliar: pila;
begin
	readfila (dada);
	inicpila (auxiliar, ' ');
	while not filavacia (dada) do
	begin
		apilar (auxiliar, extraer (dada));
	end;
	while not pilavacia (auxiliar) do
	begin
		agregar (dada, desapilar (auxiliar))
	end;
	write ('la fila dada queda con:');
	write (' ');
	writefila (dada);
	readln ();
end.

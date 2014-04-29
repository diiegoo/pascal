program ej10;
{Este programa compara los elementos de una fila con
el elemento de una pila modelo, y si es igual
lo ubica primero en su fila original}
uses Estructu;
var
	modelo, aux, aux2, primer: pila;
	origen: fila;
begin
	readfila (origen);
	inicpila (modelo, '3');
	inicpila (aux, ' ');
	inicpila (aux2, ' ');
	inicpila (primer, ' ');
	while not filavacia (origen) do
	begin
		if (primero (origen)) = (tope (modelo)) then
		begin
			apilar (primer, extraer (origen));
		end
		else
		begin
			apilar (aux, extraer (origen));
		end;
	end;
	while not pilavacia (primer) do
	begin
		agregar (origen, desapilar (primer));
	end;
	while not pilavacia (aux) do
	begin
		apilar (aux2, desapilar (aux));
	end;
	while not pilavacia (aux2) do
	begin
		agregar (origen, desapilar (aux2));
	end;
	write ('La fila origen quedo con:');
	write (' ');
	writefila (origen);
	readln ();
end.

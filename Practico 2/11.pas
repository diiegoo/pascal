program ej11;
{Este programa pasa el primer elemento de una
fila o pila debajo del primer elemento que sea 12.
En el caso de que el primer elemento sea 12, deja todo igual}
uses Estructu;
var
	origen, aux, aux2, aux3: pila;
begin
	readpila (origen);
	if (tope (origen)) <> 12 then
	begin
		apilar (aux, desapilar (origen));
		while (tope (origen)) <> 12 do
		begin
			apilar (aux2, desapilar (origen));
		end;
		apilar (aux3, desapilar (origen));
		apilar (origen, desapilar (aux));
		apilar (origen, desapilar (aux3));
		while not pilavacia (aux2) do
		begin
			apilar (origen, desapilar (aux2));
		end;
	end;
	write ('La pila origen queda con:');
	write (' ');
	writepila (origen);
	readln ();
end.

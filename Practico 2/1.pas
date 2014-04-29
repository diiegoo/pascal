program ej1;
{Este programa pasa todos los elementos de la pila
origen a la pila destino}
uses Estructu;
var
	origen, destino: fila;
begin
	readfila (origen);
	inicfila (destino, ' ');
	while not filavacia (origen) do
	begin
		agregar (destino, extraer(origen));
	end;
	write ('La fila destino quedo:');
	write (' ');
        writefila (destino);
        readln ();
end.

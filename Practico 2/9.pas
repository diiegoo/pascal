program ej9;
{Este programa pasa todos los elementos
distintos de 0 de origen a destino}
uses Estructu;
var
	origen, destino: fila;
	basura: pila;
begin
	readfila (origen);
    inicfila (destino, ' ');
	while not filavacia (origen) do
		begin
			if (primero (origen) <> 0) then
				agregar (destino, extraer (origen))
			else
				apilar (basura, extraer (origen));
        end;
    while not pilavacia (basura) do
    	begin
    		agregar (origen, desapilar (basura));
    	end;
	write ('La fila destino quedo con:');
	write (' ');
	writefila (destino);
	write ('La fila origen quedo con:');
    write (' ');
	writefila (origen);
	readln ();
end.

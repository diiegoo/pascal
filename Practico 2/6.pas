program ej6;
{Este programa carga los datos de una fila, y pasa
su primer elemento al ultimo}
uses Estructu;
var
	datos, aux: fila;
begin
	readfila (datos);
	inicfila (aux, ' ');
	if not filavacia (datos) then
	begin
	agregar (aux, extraer (datos));
	agregar (datos, extraer(aux));
	end;
	write ('la fila datos queda:');
	write (' ');
	writefila (datos);
	readln ();
end.

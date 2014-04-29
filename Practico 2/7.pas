program ej7;
{Este programa pasa el ultimo elemento de la fila datos
a primera posicion}
uses Estructu;
var
	datos: fila;
	aux, aux2: pila;
begin
	readfila (datos);
	inicpila (aux, ' ');
	inicpila (aux2, ' ');
	while not filavacia (datos) do
	begin
		apilar (aux, extraer (datos));
	end;
	agregar (datos, desapilar (aux));
	while not pilavacia (aux) do
	begin
		apilar (aux2, desapilar (aux));
	end;
	while not pilavacia (aux2) do
	begin
		agregar (datos, desapilar (aux2));
	end;
	write ('La fila datos quedo:');
	write (' ');
	writefila (datos);
	readln ();
end.
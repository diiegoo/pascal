program ejercicio15;
uses Estructu;
var
	dada, aux: fila;
	elemento: pila;
begin
	readfila (dada);
	readpila (elemento);
	inicfila (aux, ' ');
	while (not filavacia (dada)) and (not pilavacia (elemento)) and
			((primero (dada)) < (tope (elemento))) do
	begin
		agregar (aux, extraer (dada));
	end;
	if not pilavacia (elemento) then
	begin
		agregar (aux, desapilar (elemento));
	end;
	while not filavacia (dada) do
	begin
		agregar (aux, extraer (dada));
	end;
	while not filavacia (aux) do
	begin
		agregar (dada, extraer (aux));
	end;
	write ('dada');
	write (' ');
	writefila (dada);
	readln ();
end.

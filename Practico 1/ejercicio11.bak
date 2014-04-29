program ejercicio11;
uses Estructu
var
	POZO, JUGADOR1, JUGADOR2: pila;
begin
	Readpila (POZO);
	Inicpila (JUGADOR1, ' ');
	Inicpila (JUGADOR2, ' ');
	while not pilavacia (POZO) do
	begin
		apilar (JUGADOR1, desapilar (POZO));
		if not pilavacia (POZO) THEN
			apilar (JUGADOR2, desapilar (POZO));
	end;
	Writepila (POZO);
	Writepila (JUGADOR1);
	Writepila (JUGADOR2);
	Readln ();
end.

program ej13;
uses Estructu;
var
	original, copia, orden, descarte, num: pila;
begin
	readpila (original);
	readpila (copia);
	inicpila (num, ' ');
	inicpila (descarte, ' ');
	inicpila (orden, ' ');
	while not pilavacia (original) do
	begin
		apilar (num, desapilar (original));
		while not pilavacia (copia) do
		begin
			if (tope (copia)) = (tope (num)) then
				apilar (orden, desapilar (copia))
			else
				apilar (descarte, desapilar (copia));
		end;
		while not pilavacia (descarte) do
		begin
			if (tope (descarte)) = (tope (num)) then
				apilar (orden, desapilar (descarte))
			else
				apilar (copia, desapilar (descarte));
		end;
	end;
	while not pilavacia (num) do
	begin
		apilar (original, desapilar (num));
	end;
	while not pilavacia (orden) do
	begin
		apilar (copia, desapilar (orden));
	end;
	write ('original');
	write (' ');
	writepila (original);
	write ('copia');
	write (' ');
	writepila (copia);
	readln ();
end.

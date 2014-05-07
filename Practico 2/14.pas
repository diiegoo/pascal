program ejercicio14;
uses Estructu;
var grande, parte, aux, aux2, parte2: pila;
begin
	readpila (grande);
	readpila (parte);
	inicpila (aux, ' ');
	inicpila (aux2, ' ');
	inicpila (parte2, ' ');
	while not pilavacia (grande) do
	begin
		apilar (aux, desapilar (grande));
		while not pilavacia (parte) do
		begin
			if (tope (aux)) = (tope (parte)) then
				apilar (aux2, desapilar (parte))
			else
				apilar (parte2, desapilar (parte));
		end;
		while not pilavacia (parte2) do
		begin
			if (tope (aux)) = (tope (parte2)) then
				apilar (aux2, desapilar (parte2))
			else
				apilar (parte, desapilar (parte2));
		end;
	end;
	while not pilavacia (aux) do
	begin
		apilar (grande, desapilar (aux));
	end;
	write ('grande');
	write (' ');
	writepila (grande);
	write ('parte');
	write (' ');
	writepila (parte);
	readln ();
end.

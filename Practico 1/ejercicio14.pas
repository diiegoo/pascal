program ejercicio14;
uses Estructu;
var
	modelo, dada, dad, basura: pila;
begin
	Inicpila (modelo, '5');
	Readpila (dada);
	Inicpila (dad, ' ');
	Inicpila (basura, ' ');
	while not pilavacia (dada) do
	begin
		if tope (dada) = tope (modelo) then
			apilar(basura, desapilar (dada))
		else
			apilar (dad, desapilar (dada));
	while not pilavacia (dad) do
		apilar (dada, desapilar (dad));
	end;
	Writepila (dada);
	Readln ();
end.

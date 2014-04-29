program ejercicio16;
uses Estructu;
var
	dada, modelo, da, mo, basura: pila;
begin
	readpila (dada);
	readpila (modelo);
	inicpila (da, ' ');
	inicpila (mo, ' ');
	inicpila (basura, ' ');
	while not pilavacia (modelo) do
	begin
		apilar (mo, desapilar(modelo));
		while not pilavacia (dada) or pilavacia (da) do
		begin
			if tope (dada) = tope (mo) then
				apilar (basura, desapilar (dada))
			else
				apilar (dada, desapilar (da));
			if tope (da) = tope (mo) then
				apilar (basura, desapilar (da))
			else
				apilar (dada, desapilar (da));
		end;
    end;
	write ('La pila dada quedo con los siguientes elementos:');
	writepila (dada);
	write ('Se eliminaron de la pila dada los siguientes elementos:');
	writepila (basura);
        readln ();
end.

program Reemplazar;
uses Estructu;
var
	ORIGEN, MODELO, REEMPLAZO: pila;
begin
	Readpila (ORIGEN);
	Readpila (MODELO);
	Readpila (REEMPLAZO);
	while not pilavacia (ORIGEN) do
	begin
		if tope (ORIGEN) = tope (MODELO) then
			apilar(V, desapilar (ORIGEN))
			apilar (PASE, desapilar (REEMPLAZO));
		else
			apilar (F, desapilar (ORIGEN));
	end;
	while not pilavacia (PASE) do
	begin
		apilar (ORIGEN, desapilar(PASE));
	end;
	while not pilavacia (F) do
	begin
		apilar (ORIGEN, desapilar(F));
	end;
	writepila (ORIGEN);
	writepila (MODELO);
	writepila (REEMPLAZO);
	readln ();
end.
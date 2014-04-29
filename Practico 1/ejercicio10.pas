Program ej10;
uses Estructu;
var
	DADA, AUX, AUX2: pila;
begin
	Readpila (DADA);
	Inicpila (AUX,' ');
	Inicpila (AUX2,' ');
	while not pilavacia (DADA) do
	begin
		apilar (AUX, desapilar (DADA));
	end;
	apilar (AUX2, desapilar (AUX));
	while not pilavacia (AUX) do
	begin
		apilar (DADA, desapilar (AUX));
	end;
	apilar (DADA, desapilar (AUX2));
	Writepila (DADA);
	Readln ();
end.
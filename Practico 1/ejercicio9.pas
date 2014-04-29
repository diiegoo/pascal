program ejercicio9;
uses Estructu;
var
	DADA, AUX, AUX2: pila;
begin
	Readpila (DADA);
	Inicpila (AUX, ' ');
	apilar (AUX, desapilar (DADA));
	While not pilavacia (DADA) do
		begin
			apilar (AUX2, desapilar (DADA));
		end;
	apilar (DADA, desapilar (AUX));
	While not pilavacia (AUX2) do
	begin
		apilar (DADA, desapilar (AUX2));
	end;
        Writepila (DADA);
        Readln ();
end.

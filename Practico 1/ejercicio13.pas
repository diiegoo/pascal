program ProgramName;
{Este programa compara las pilas. Si tienen los mismos elementos,
pasa el tope de la pila AUX a la pila VERDADERO, sino lo pasa a FALSO}
uses Estructu;
var
	a, b, aux, descarte, verdadero, falso: pila;
begin
	readpila (a);
	readpila (b);
	inicpila (aux, '1');
	inicpila (descarte, ' ');
	inicpila (verdadero, ' ');
	inicpila (falso, ' ');
	while not pilavacia (a) and
		not pilavacia (b) do
	begin
		apilar (descarte, desapilar (a));
		apilar (descarte, desapilar (b));
	end;
	if pilavacia (a) and
		pilavacia (b) then 
	begin
		apilar (verdadero, desapilar (aux))
	end
	else
	begin
		apilar (falso, desapilar (aux));
	end;
	write ('verdadero:');
	writepila (verdadero);
	write ('falso');
	writepila (falso);
	readln ();
end.

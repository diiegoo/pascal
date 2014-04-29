Program ej8;
{Este programa carga elementos a la pila DADA por teclado, e invierte
los elementos que tenia DADA, de manera que queda con los mismos elementos,
pero invertidos}
uses Estructu;
var
    DADA, AUXILIAR, ORDEN: pila;
begin
    Readpila (DADA);
    Inicpila (AUXILIAR, ' ');
    Inicpila (ORDEN, ' ');
    While not pilavacia (DADA) do
       begin
       apilar (AUXILIAR, desapilar (DADA));
       end;
    While not pilavacia (AUXILIAR) do
       begin
       apilar (ORDEN, desapilar (AUXILIAR));
       end;
    While not pilavacia (ORDEN) do
       begin
       apilar (DADA, desapilar (ORDEN));
       end;
    Writepila (DADA);
    Readln ();
end.
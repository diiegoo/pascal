program ej1;
{Este ejercicio pasa 5 elementos de una pila DADA. Los primeros 3 elementos
los pasa a la pila CJTO1 y los restantes 2 a la pila CJTO2}
uses Estructu;
var
    DADA, CJTO1, CJTO2: pila;
begin
    Readpila (DADA);
    Inicpila (CJTO1, ' ');
    Inicpila (CJTO2, ' ');
    if not pilavacia (DADA) then
      apilar (CJTO1, desapilar (DADA));
    if not pilavacia (DADA) then
      apilar (CJTO1, desapilar (DADA));
    if not pilavacia (DADA) then
      apilar (CJTO1, desapilar (DADA));
    if not pilavacia (DADA) then
      apilar (CJTO2, desapilar (DADA));
    if not pilavacia (DADA) then
      apilar (CJTO2, desapilar (DADA));
    Writepila (DADA);
    Writepila (CJTO1);
    Writepila (CJTO2);
    Readln ();
end.
Program ej7;
{Este programa pasa los elementos de la pila ORIGEN a DESTINO, pero
los deja en el mismo orden que fueron cargados a ORIGEN}
uses Estructu;
var
    ORIGEN, DESTINO, AUXILIAR: pila;
begin
    Readpila (ORIGEN);
    Inicpila (DESTINO, ' ');
    Inicpila (AUXILIAR, ' ');
    While not pilavacia (ORIGEN) do
      begin
        apilar (AUXILIAR, desapilar (ORIGEN));
      end;
    While not pilavacia (AUXILIAR) do
      begin
        apilar (DESTINO, desapilar (AUXILIAR));
      end;
    Writepila (ORIGEN);
    Writepila (DESTINO);
    Readln ();
end.
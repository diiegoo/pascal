program ej2;
{Este programa programa pasa todos los elementos distintos de 8 cargados
por el usuario en la pila DADA a la pila DISTINTOS}
uses Estructu;
var
    DADA, DISTINTOS, BASURA: pila;
begin
    Readpila (DADA);
    Inicpila (DISTINTOS, ' ');
    While not pilavacia (DADA) do
      begin
        if tope (DADA) = 8 then
          apilar (DISTINTOS, desapilar (DADA))
        else
          apilar (BASURA, desapilar (DADA));
      end;
    Writepila (DADA);
    Writepila (DISTINTOS);
    Writepila (BASURA);
    Readln ();
end.
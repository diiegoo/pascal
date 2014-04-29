program ej12;
uses Estructu;
var
	A, B, A2, B2 AUX, VERDADERO, FALSO: Integer;
begin
	Readpila (AUX);
	Inicpila (A2);
	Readpila (A);
	Readpila (B);
	Inicpila (B2);
	Inicpila (VERDADERO);
	Inicpila (FALSO);
	While not pilavacia (A) and not pilavacia (B) do
		begin
			apilar (A2, desapilar (A));
			if not pilavacia (B) then
			begin
				apilar (B2, desapilar (B));
				apilar (VERDADERO, desapilar (AUX));
			else
				apilar (FALSO, desapilar (AUX)); 
			end;	
		end;
	Writepila (AUX);
	Writepila (A2);
	Writepila (A);
	Writepila (B);
	Writepila (B2);
	Writepila (VERDADERO);
	Writepila (FALSO);
end.

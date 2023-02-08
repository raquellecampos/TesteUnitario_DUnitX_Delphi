unit Consumo.Classe;

interface

type
  TConsumo = class
    private
    public
      function Calcular(lKMInicial, lKMFinal,lMediaConsumo, lValorCombustivel: Double): Double;
  end;

implementation

{ TConsumo }

function TConsumo.Calcular(lKMInicial, lKMFinal, lMediaConsumo,
  lValorCombustivel: Double): Double;
begin
  Result := (lKMFinal - lKMInicial) / lMediaConsumo * lValorCombustivel;
end;

end.

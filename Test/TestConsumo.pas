unit TestConsumo;


interface

uses
  TestFramework, Consumo.Classe;

type
  // Test methods for class TConsumo

  TestTConsumo = class(TTestCase)
  strict private
    FConsumo: TConsumo;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestCalcular;
  end;

implementation

procedure TestTConsumo.SetUp;
begin
  FConsumo := TConsumo.Create;
end;

procedure TestTConsumo.TearDown;
begin
  FConsumo.Free;
  FConsumo := nil;
end;

procedure TestTConsumo.TestCalcular;
{$J+}
const
  lValorEsperado: Double = 400;
  lValorCombustivel: Double = 4;
  lMediaConsumo: Double = 10;
  lKMFinal: Double = 11000;
  lKMInicial: Double = 10000;
var
  ReturnValue: Double;
begin

  ReturnValue := FConsumo.Calcular(lKMInicial, lKMFinal, lMediaConsumo, lValorCombustivel);

  Check(ReturnValue = lValorEsperado, 'Valor esperado R$ 400,00');
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTConsumo.Suite);
end.


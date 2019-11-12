import 'package:flutter_test_demo/counter/counter_extended.dart';
import 'package:flutter_test_demo/counter/increment_factor.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

///Testes Unitários sem dependências

class _MockIncrementFactor extends Mock implements IncrementFactor {}

void main() {
  test('Deve adicionar 17 ao valor', () {
    ///Instanciando Mock
    final factor = _MockIncrementFactor();

    ///Configurando o retorno esperado para o mock
    when(factor.getFactor()).thenReturn(17);

    ///Utilizando o mock para suprir a dependência da nossa classe
    final counter = CounterExtended(factor);

    counter.increment();

    expect(counter.value, 17);
  });

  test('Deve subtrair 9 do valor', () {
    ///Instanciando Mock
    final factor = _MockIncrementFactor();

    ///Configurando o retorno esperado para o mock
    when(factor.getFactor()).thenReturn(9);

    ///Utilizando o mock para suprir a dependência da nossa classe
    final counter = CounterExtended(factor);

    counter.decrement();

    expect(counter.value, -9);
  });
}

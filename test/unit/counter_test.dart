import 'package:flutter_test_demo/counter/counter.dart';
import 'package:test/test.dart';

///Testes Unitários sem dependências
void main() {
  group('Counter Test', () {
    test('Valor deve ser incrementado', () {
      final counter = Counter();

      counter.increment();

      expect(counter.value, 1);
    });

    test('Valor deve ser decrementado', () {
      final counter = Counter();

      counter.decrement();

      expect(counter.value, -1);
    });
  });
}

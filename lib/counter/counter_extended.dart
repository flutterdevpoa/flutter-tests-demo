import 'package:flutter_test_demo/counter/counter.dart';
import 'package:flutter_test_demo/counter/increment_factor.dart';

class CounterExtended implements Counter {
  final IncrementFactor _incrementFactor;
  var value = 0;

  CounterExtended(this._incrementFactor);

  @override
  void increment() =>
      value += _incrementFactor.getFactor();

  @override
  void decrement() =>
      value -= _incrementFactor.getFactor();
}

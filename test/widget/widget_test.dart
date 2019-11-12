import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_demo/counter/counter.dart';
import 'package:flutter_test_demo/main.dart';
import 'package:mockito/mockito.dart';

void main() {
  testWidgets('Tela deve ler valor do contador', (WidgetTester tester) async {
    ///Configurando nosso Mock
    final counter = _MockCounter();
    when(counter.value).thenReturn(37);

    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: MyHomePage(title: 'Title Test', counter: counter),
      ),
    );

    // Verify that our counter starts at 0.
    expect(find.text('37'), findsOneWidget);
  });
}

class _MockCounter extends Mock implements Counter {}

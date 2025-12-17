import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab15_testing/main.dart';

void main() {

  group('FunctionCalculator Tests', () {
    final calculator = FunctionCalculator();

    test('Calculate function for x = 0', () {

      expect(calculator.calculate(0), 13.0);
    });

    test('Calculate function for x = 1', () {

      expect(calculator.calculate(1), 9.0);
    });

    test('Calculate function for x = 3', () {

      expect(calculator.calculate(3), 7.0);
    });
  });

  testWidgets('15 laba', (WidgetTester tester) async {

    await tester.pumpWidget(const MyApp());


    expect(find.text("15 labka-test"), findsOneWidget);


    final fabFinder = find.byType(FloatingActionButton);
    expect(fabFinder, findsOneWidget);


    final fab = tester.widget<FloatingActionButton>(fabFinder);

    final icon = fab.child as Icon;


    expect(icon.icon, Icons.electric_car);


    expect(find.text('0'), findsOneWidget);
    expect(find.text('3'), findsNothing);


    await tester.tap(fabFinder);

    await tester.pump();


    expect(find.text('0'), findsNothing);
    expect(find.text('3'), findsOneWidget);


    await tester.tap(fabFinder);
    await tester.pump();


    expect(find.text('6'), findsOneWidget);
  });
}
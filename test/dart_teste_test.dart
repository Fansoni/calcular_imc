import 'dart:js_util';

import 'package:dart_teste/dart_teste.dart' as app;
import 'package:test/test.dart';

void main() {
  test('Calcula o desconto do produto sem percentagem', () {
    expect(app.calcularDesconto(1000, 150, false), equals(850));
  });

  test('Verifica se o divisor é nulo', () {
    expect(() => app.dividir(1000, 0), throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Calcular imc', () {
    expect(double.parse(app.calcularIMC(80, 1.8).toStringAsFixed(2)),
        equals(24.69));
  });

  test('Classificar imc', () {
    expect(
        app.classificarIMC(
            double.parse(app.calcularIMC(80, 1.8).toStringAsFixed(2))),
        equals("Saudável"));
  });
}

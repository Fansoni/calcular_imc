import 'package:dart_teste/dart_teste.dart' as dart_teste;

void main(List<String> arguments) {
  print(
      'Resultado IMC: ${dart_teste.classificarIMC(dart_teste.calcularIMC(80, 1.8))}!');
}

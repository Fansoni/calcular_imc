double calcularDesconto(double valor, double desconto, bool percentual) {
  if (percentual) {
    return valor - ((valor - desconto) / 100);
  }

  return valor - desconto;
}

double dividir(int a, int b) {
  if (b == 0) {
    throw ArgumentError("O primeiro argumento não pode ser zero");
  }
  return a / b;
}

double calcularIMC(double peso, double altura) {
  return peso / (altura * altura);
}

String classificarIMC(double imc) {
  if (imc < 16) {
    return "Magreza grave";
  } else if (imc >= 16 && imc < 17) {
    return "Magreza moderada";
  } else if (imc >= 17 && imc < 18.5) {
    return "Magreza leve";
  } else if (imc >= 18.5 && imc < 25) {
    return "Saudável";
  } else if (imc >= 25 && imc < 30) {
    return "Sobrepeso";
  } else if (imc >= 30 && imc < 35) {
    return "Obesidade Grau I";
  } else if (imc >= 35 && imc < 40) {
    return "Obesidade Grau II (severa)";
  }
  return "Obesidade Grau III (mórbida)";
}

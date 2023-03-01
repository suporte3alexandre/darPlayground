import 'dart:io';

principal() {
  double peso = pegarPeso();
  double altura = pegarAltura();
  double imc = peso / (altura * altura);

  if (imc < 18.5) {
    print("Abaixo do peso");
  } else if (imc >= 18.5 && imc <= 24.9) {
    print("Peso normal");
  } else if (imc >= 25 && imc <= 29.9) {
    print("Sobrepeso");
  } else if (imc >= 30 && imc <= 34.9) {
    print("Obesidade grau 1");
  } else if (imc >= 35 && imc <= 39.9) {
    print("Obesidade grau 2");
  } else {
    print("Obesidade grau 3 (mórbida)");
  }
}

double pegarPeso() {
  stdout.write('Digite o seu peso\n');
  final double? peso = double.parse(stdin.readLineSync()!);
  if (peso == null) {
    return 0.0;
  } else {
    return peso;
  }
}

double pegarAltura() {
  stdout.write('Digite o seu altura\n');
  final double? altura = double.parse(stdin.readLineSync()!);
  if (altura == null) {
    return 0.0;
  } else {
    return altura;
  }
}

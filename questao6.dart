import 'dart:io';

void main() {
  stdout.write("Informe seu peso (kg): ");
  double peso = double.parse(stdin.readLineSync()!);

  stdout.write("Informe sua altura (m): ");
  double altura = double.parse(stdin.readLineSync()!);

  double imc = peso / (altura * altura);
  String status = imc < 18.5 ? "Abaixo do peso" : imc < 24.9 ? "Peso normal" : imc < 29.9 ? "Sobrepeso" : "Obesidade";

  print("Seu IMC é ${imc.toStringAsFixed(2)}. Categoria: $status");
}

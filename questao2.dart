import 'dart:io';

const taxas = {
  'BRL': {'USD': 0.19, 'EUR': 0.16},
  'USD': {'BRL': 5.25, 'EUR': 0.85},
  'EUR': {'BRL': 6.10, 'USD': 1.18},
};

void main() {
  while (true) {
    print("\n1 - BRL | 2 - USD | 3 - EUR | 4 - Sair");
    stdout.write("Escolha a moeda de origem: ");
    int? origem = int.tryParse(stdin.readLineSync()!);
    if (origem == 4) break;

    stdout.write("Escolha a moeda de destino: ");
    int? destino = int.tryParse(stdin.readLineSync()!);

    if (origem == null || destino == null || origem == destino) {
      print("Entrada inválida. Tente novamente.");
      continue;
    }

    stdout.write("Digite o valor: ");
    double? valor = double.tryParse(stdin.readLineSync()!);
    if (valor == null || valor <= 0) {
      print("Valor inválido.");
      continue;
    }

    var moedas = {1: 'BRL', 2: 'USD', 3: 'EUR'};
    double convertido = valor * taxas[moedas[origem]]![moedas[destino]]!;
    print("$valor ${moedas[origem]} equivale a ${convertido.toStringAsFixed(2)} ${moedas[destino]}.");
  }
}

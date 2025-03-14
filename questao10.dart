import 'dart:io';
import 'dart:math';

void main() {
  var opcoes = ['pedra', 'papel', 'tesoura'];
  var computador = Random();

  while (true) {
    stdout.write("Escolha (pedra, papel, tesoura): ");
    String escolha = stdin.readLineSync()!.toLowerCase();
    String escolhaComputador = opcoes[computador.nextInt(3)];

    print("Computador escolheu: $escolhaComputador");
    print(escolha == escolhaComputador ? "Empate!" : (escolha == "pedra" && escolhaComputador == "tesoura") || (escolha == "papel" && escolhaComputador == "pedra") || (escolha == "tesoura" && escolhaComputador == "papel") ? "Você ganhou!" : "Computador venceu!");
  }
}

import 'dart:io';
import 'dart:math';

void main() {
  var numeroSorteado = Random().nextInt(100) + 1;
  int tentativa, contador = 0;

  print("Descubra o número entre 1 e 100.");

  do {
    stdout.write("Digite um número: ");
    tentativa = int.tryParse(stdin.readLineSync()!) ?? -1;
    contador++;

    if (tentativa < numeroSorteado) {
      print("Tente um número maior.");
    } else if (tentativa > numeroSorteado) {
      print("Tente um número menor.");
    } else {
      print("Parabéns! O número correto era $numeroSorteado. Você acertou em $contador tentativas.");
    }
  } while (tentativa != numeroSorteado);
}

import 'dart:math';
import 'dart:io';

void main() {
  List<String> nomes = [];
  String continuar;

  do {
    stdout.write("Informe um nome: ");
    String? nome = stdin.readLineSync();
    if (nome != null && nome.isNotEmpty) nomes.add(nome);

    stdout.write("Adicionar mais nomes? (s/n): ");
    continuar = stdin.readLineSync()!.toLowerCase();
  } while (continuar == 's');

  if (nomes.isNotEmpty) {
    print("Sorteado: ${nomes[Random().nextInt(nomes.length)]}");
  } else {
    print("Nenhum nome foi informado.");
  }
}

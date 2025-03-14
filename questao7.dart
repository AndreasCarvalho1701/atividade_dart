import 'dart:io';

void main() {
  stdout.write("Digite uma frase: ");
  String frase = stdin.readLineSync()!;
  String acronimo = frase.split(' ').map((palavra) => palavra[0].toUpperCase()).join();
  print("Acrônimo: $acronimo");
}

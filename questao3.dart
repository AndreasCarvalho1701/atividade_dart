import 'dart:math';
import 'dart:io';

void main() {
  const caracteres = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*()_+";
  var aleatorio = Random();

  stdout.write("Informe o tamanho da senha: ");
  int? tamanho = int.tryParse(stdin.readLineSync()!);

  if (tamanho != null && tamanho > 0) {
    String senha = List.generate(tamanho, (_) => caracteres[aleatorio.nextInt(caracteres.length)]).join();
    print("Senha gerada: $senha");
  } else {
    print("Tamanho inválido.");
  }
}

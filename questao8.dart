import 'dart:io';

class Conta {
  double saldo = 0.0;

  void depositar(double valor) => saldo += valor;
  void sacar(double valor) => saldo = (valor <= saldo) ? saldo - valor : saldo;
  void mostrarSaldo() => print("Saldo atual: R\$ $saldo");
}

void main() {
  var conta = Conta();
  while (true) {
    print("\n1 - Depositar | 2 - Sacar | 3 - Saldo | 4 - Sair");
    String? opcao = stdin.readLineSync();
    if (opcao == '4') break;

    stdout.write("Valor: ");
    double valor = double.parse(stdin.readLineSync()!);
    switch (opcao) {
      case '1': conta.depositar(valor); break;
      case '2': conta.sacar(valor); break;
      case '3': conta.mostrarSaldo(); break;
      default: print("Opção inválida.");
    }
  }
}

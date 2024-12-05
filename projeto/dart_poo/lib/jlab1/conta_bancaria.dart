import 'dart:ffi';
import 'dart:io';

class ContaBancaria {
  String nomeCliente;
  int numero;
  double saldo;

  
  //construtor
  ContaBancaria({ 
    required this.nomeCliente,
    required this.numero,
    required this.saldo,
  });

  

  // funções (métodos)
  void exibirDados(){
    stdout.writeln("Titular: ${nomeCliente}\nNúmero: ${numero}\nSaldo: ${saldo}");
  }

  void incrementarSaldo(double valor){
    saldo += valor;
  }

  String toString(){
    return "Cliente: ${nomeCliente}\nNumero da conta: ${numero}\nSaldo: ${saldo}";
  }
}
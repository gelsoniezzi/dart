import 'package:dart_poo/jlab1/carro.dart';
import 'package:dart_poo/jlab1/conta_bancaria.dart';
import 'package:dart_poo/e1_imc/imc.dart';
import 'package:dart_poo/jlab1/jogo.dart';
import 'package:dart_poo/e7_repeticao/repeticao.dart';

void main(List<String> arguments) {

  /*
  Carro corsa = Carro(
    modelo: "Corsa",
    marca: "Chevrolet",
    chassi: "0123212",
    estaLigado: false,

  );

    corsa.acelerar();
    print(corsa.marca);
    print(corsa.modeloCarro());

    // Agora vou brincar com a classe contaBancaria

  ContaBancaria c1 = ContaBancaria(
    nomeCliente: "Gelson Iezzi", 
    numero: 50000, 
    saldo: 0.0
  );

  c1.incrementarSaldo(50);
  print(c1.toString());
  c1.incrementarSaldo(2.50);

  print(c1.toString());
  
  ContaBancaria c2 = ContaBancaria(nomeCliente: "Fernando", numero: 50001, saldo: 100.00);
  print(c2.toString());

  //Imc
  Imc imc1 = Imc(nome: "Gelson", peso: 78, altura: 161);
  print("O Imc de ${imc1.nome} é ${imc1.calculaImc()}.");


  Jogo nfsUnderground = Jogo.comprar('Need for Speed - Underground', 99.00);

  print(nfsUnderground.toString());

  nfsUnderground.jogar(10);
  print(nfsUnderground.toString());

  Jogo j2 = Jogo();

  j2.comprar("Super Mario", 99.00);
  print(j2.toString());
  */

  Repetir r1 = Repetir(nInicial: 10,nFinal: 50);

  print(r1.funcaoWhile());

  

}

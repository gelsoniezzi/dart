import 'dart:math';

class Imc{
  String nome;
  int peso; //kg
  int altura; //(cm)
  

  //construtor
  Imc({
    required this.nome,
    required this.peso,
    required this.altura,
  });

  double calculaImc(){
    double imc = peso / (pow(altura,2)/10000);
    return imc;
  }

  String toString(){
    return "O imc de ${nome} é ${calculaImc()}";
  }
}